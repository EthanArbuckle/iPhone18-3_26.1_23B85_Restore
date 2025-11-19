uint64_t sub_1B7CA1518(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v45 = a2[1];
  v46 = a1[1];
  v44 = a2[2];
  v48 = a2[3];

  result = MEMORY[0x1B8CADCA0](0x657A695320, 0xE500000000000000);
  if (v6 == v9)
  {
    v11 = 0;
    v43 = 0xE200000000000000;
    v12 = 15677;
    goto LABEL_8;
  }

  v11 = v9 - v6;
  if (v9 < v6)
  {
    v11 = v6 - v9;
    if ((v6 - v9) >= 0)
    {
      v43 = 0xE100000000000000;
      v12 = 62;
      goto LABEL_8;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v9 - v6) < 0)
  {
    goto LABEL_47;
  }

  v43 = 0xE100000000000000;
  v12 = 60;
LABEL_8:
  swift_beginAccess();
  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v13;
  v47 = v8;
  v42 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1B7CA208C(0, *(v13 + 2) + 1, 1, v13);
    *(v5 + 16) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA208C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[64 * v16];
  *(v17 + 4) = v6;
  *(v17 + 5) = v9;
  *(v17 + 6) = v11;
  *(v17 + 7) = v12;
  *(v17 + 8) = v43;
  v17[72] = 0;
  *(v17 + 73) = *v56;
  *(v17 + 19) = *&v56[3];
  *(v17 + 10) = a3;
  *(v17 + 11) = a4;
  *(v5 + 16) = v13;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x65746E6572615020, 0xEE00657A69532064);
  if (v47 == v48)
  {
    v18 = 0;
    v19 = 0xE200000000000000;
    v20 = 15677;
    goto LABEL_19;
  }

  v18 = v48 - v47;
  if (v48 < v47)
  {
    v18 = v47 - v48;
    if ((v47 - v48) >= 0)
    {
      v19 = 0xE100000000000000;
      v20 = 62;
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if ((v48 - v47) < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = 0xE100000000000000;
  v20 = 60;
LABEL_19:
  swift_beginAccess();
  v21 = *(v5 + 16);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v21;
  if ((v22 & 1) == 0)
  {
    v21 = sub_1B7CA208C(0, *(v21 + 2) + 1, 1, v21);
    *(v5 + 16) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1B7CA208C((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[64 * v24];
  *(v25 + 4) = v47;
  *(v25 + 5) = v48;
  *(v25 + 6) = v18;
  *(v25 + 7) = v20;
  *(v25 + 8) = v19;
  v25[72] = 0;
  *(v25 + 73) = *v53;
  *(v25 + 19) = *&v53[3];
  *(v25 + 10) = a3;
  *(v25 + 11) = a4;
  *(v5 + 16) = v21;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x656E616870724F20, 0xEE00657A69532064);
  if (v46 == v45)
  {
    v26 = 0;
    v27 = 0xE200000000000000;
    v28 = 15677;
    goto LABEL_30;
  }

  v26 = v45 - v46;
  if (v45 < v46)
  {
    v26 = v46 - v45;
    if ((v46 - v45) >= 0)
    {
      v27 = 0xE100000000000000;
      v28 = 62;
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  if ((v45 - v46) < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = 0xE100000000000000;
  v28 = 60;
LABEL_30:
  swift_beginAccess();
  v29 = *(v5 + 16);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_1B7CA208C(0, *(v29 + 2) + 1, 1, v29);
    *(v5 + 16) = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1B7CA208C((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[64 * v32];
  *(v33 + 4) = v46;
  *(v33 + 5) = v45;
  *(v33 + 6) = v26;
  *(v33 + 7) = v28;
  *(v33 + 8) = v27;
  v33[72] = 0;
  *(v33 + 73) = *v52;
  *(v33 + 19) = *&v52[3];
  *(v33 + 10) = a3;
  *(v33 + 11) = a4;
  *(v5 + 16) = v29;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D57EC0);
  if (v7 != v44)
  {
    v34 = v44 - v7;
    if (v44 >= v42)
    {
      if ((v44 - v42) >= 0)
      {
        v35 = 0xE100000000000000;
        v36 = 60;
        goto LABEL_41;
      }

LABEL_53:
      __break(1u);
      return result;
    }

    v34 = v42 - v44;
    if ((v42 - v44) >= 0)
    {
      v35 = 0xE100000000000000;
      v36 = 62;
      goto LABEL_41;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 15677;
LABEL_41:
  swift_beginAccess();
  v37 = *(v5 + 16);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_1B7CA208C(0, *(v37 + 2) + 1, 1, v37);
    *(v5 + 16) = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B7CA208C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[64 * v40];
  *(v41 + 4) = v42;
  *(v41 + 5) = v44;
  *(v41 + 6) = v34;
  *(v41 + 7) = v36;
  *(v41 + 8) = v35;
  v41[72] = 0;
  *(v41 + 73) = *v51;
  *(v41 + 19) = *&v51[3];
  *(v41 + 10) = a3;
  *(v41 + 11) = a4;
  *(v5 + 16) = v37;
  return swift_endAccess();
}

uint64_t sub_1B7CA1B14(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA53268, &unk_1B7D10E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7CA1B8C()
{
  result = qword_1EBA53290;
  if (!qword_1EBA53290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53290);
  }

  return result;
}

uint64_t sub_1B7CA1BE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B7CFDFF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B7CA1C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53328, &qword_1B7D113A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA1DEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B7CA1F58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53360, &qword_1B7D113E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA208C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53350, &qword_1B7D113D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA21D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1B7CA22F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53390, &unk_1B7D11440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B7CA23F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA2518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53398, &qword_1B7D11450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_1B7CA2634(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA533A0, &qword_1B7D11458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA533A8, &unk_1B7D11460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA27B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1B7C107FC(a5, a6);
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
    v16 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B7CA28E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533E0, &qword_1B7D114A8);
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

char *sub_1B7CA2A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53388, &qword_1B7D11438);
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

char *sub_1B7CA2B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53308, &qword_1B7D11378);
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

char *sub_1B7CA2C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533F8, &qword_1B7D114D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B7CA2D58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53378, &unk_1B7D11418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA2EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52468, &qword_1B7D0CA58);
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

char *sub_1B7CA2FC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1B7CA30C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533E8, &unk_1B7D114B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B7CA31C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533D8, &qword_1B7D114A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA32D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53400, &qword_1B7D114D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA3478(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53370, &qword_1B7D11408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA35AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53368, &unk_1B7D113F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA3704(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53320, &unk_1B7D11390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B7CA384C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B7C107FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s14IMDPersistence33StorageInspectionCrossCheckReportC10ComparisonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (v5 == *(a2 + 48) && v6 == *(a2 + 56))
    {
      return 1;
    }

    else
    {
      return sub_1B7CFF590();
    }
  }

  return result;
}

unint64_t sub_1B7CA3A7C()
{
  result = qword_1EBA532A0;
  if (!qword_1EBA532A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532A0);
  }

  return result;
}

unint64_t sub_1B7CA3AD0()
{
  result = qword_1EBA532A8;
  if (!qword_1EBA532A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532A8);
  }

  return result;
}

unint64_t sub_1B7CA3B24()
{
  result = qword_1EBA532B8;
  if (!qword_1EBA532B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532B8);
  }

  return result;
}

unint64_t sub_1B7CA3B7C()
{
  result = qword_1EBA532C0;
  if (!qword_1EBA532C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532C0);
  }

  return result;
}

uint64_t sub_1B7CA3CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CA3D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7CA3DB4()
{
  result = qword_1EBA532C8;
  if (!qword_1EBA532C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532C8);
  }

  return result;
}

unint64_t sub_1B7CA3E0C()
{
  result = qword_1EBA532D0;
  if (!qword_1EBA532D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532D0);
  }

  return result;
}

unint64_t sub_1B7CA3E64()
{
  result = qword_1EBA532D8;
  if (!qword_1EBA532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532D8);
  }

  return result;
}

unint64_t sub_1B7CA3EBC()
{
  result = qword_1EBA532E0;
  if (!qword_1EBA532E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532E0);
  }

  return result;
}

unint64_t sub_1B7CA3F14()
{
  result = qword_1EBA532E8;
  if (!qword_1EBA532E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532E8);
  }

  return result;
}

unint64_t sub_1B7CA3F6C()
{
  result = qword_1EBA532F0;
  if (!qword_1EBA532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532F0);
  }

  return result;
}

uint64_t sub_1B7CA3FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65726566666964 && a2 == 0xEA00000000006563 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73697261706D6F63 && a2 == 0xEE00657079546E6FLL || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D57D70 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1B7CA41D0()
{
  result = qword_1EBA533C0;
  if (!qword_1EBA533C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA533C0);
  }

  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.rowCount(forTable:)(Swift::String forTable)
{
  v3 = v2;
  v4 = v1;
  object = forTable._object;
  countAndFlagsBits = forTable._countAndFlagsBits;
  v19 = *MEMORY[0x1E69E9840];
  sub_1B7CFF210();

  v17 = 0xD000000000000015;
  v18 = 0x80000001B7D57F20;
  MEMORY[0x1B8CADCA0](countAndFlagsBits, object);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v4 + 16, v8);
  swift_endAccess();

  swift_beginAccess();
  v16 = 0;
  IMDSqlOperationGetError(v4 + 16, &v16);
  v9 = v16;
  swift_endAccess();
  if (v9)
  {
    swift_willThrow();
    v9;
LABEL_8:
    objc_autoreleasePoolPop(v7);

    goto LABEL_9;
  }

  sub_1B7CA4484(v4, &v17);
  if (v2)
  {
LABEL_6:
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v4 + 16);
    v16 = 0;
    IMDSqlOperationGetError(v4 + 16, &v16);
    v13 = v16;
    swift_endAccess();
    swift_willThrow();
    if (v13)
    {
      v13;
    }

    goto LABEL_8;
  }

  v10 = v17;
  v11 = v18;
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v4 + 16);
  v16 = 0;
  IMDSqlOperationGetError(v4 + 16, &v16);
  v12 = v16;
  swift_endAccess();
  if (v12)
  {
    swift_willThrow();
    v3 = v12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);

  if (v11)
  {
    result = 0;
  }

  else
  {
    result = v10;
  }

LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7CA4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    v15 = 0;
    v17 = 1;
    goto LABEL_9;
  }

  type metadata accessor for SqlOperation.Row();
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = v5;
    swift_beginAccess();
    v8 = IMDSqlStatementColumnCount((a1 + 48));
    swift_endAccess();
    if (v8)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((a1 + 48), 0, &v18);
      v9 = v18;
      v10 = v19;
      v11 = v20;
      swift_endAccess();
      v21 = v9;
      v22 = v10;
      v23 = v11;
      if (IMDSqlColumnGetType(&v21) == 1)
      {
        break;
      }
    }

    swift_beginAccess();

    v6 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((a1 + 48), 0, &v18);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  swift_endAccess();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = IMDInt64FromSqlColumn(&v21);

  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
LABEL_9:
    *a2 = v15;
    *(a2 + 8) = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CA4670()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CA46D8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  sub_1B7AE3B2C(a1, a2, a4);
  if (!v4)
  {
    sub_1B7AF3FE4(a3);
  }
}

uint64_t sub_1B7CA47E0(char a1, uint64_t a2, uint64_t a3)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x54414944454D4D49;
    }

    else
    {
      v5 = 0x564953554C435845;
    }

    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x4445525245464544;
  }

  MEMORY[0x1B8CADCA0](v5, v6);

  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  if (v3)
  {
  }

  else
  {
    sub_1B7AF3FE4(v8);

    sub_1B7C49AEC(a3);
    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B7CA4B58(char a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x54414944454D4D49;
    }

    else
    {
      v2 = 0x564953554C435845;
    }

    v3 = 0xE900000000000045;
  }

  else
  {
    v3 = 0xE800000000000000;
    v2 = 0x4445525245464544;
  }

  MEMORY[0x1B8CADCA0](v2, v3);

  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  if (v1)
  {
  }

  else
  {
    sub_1B7AF3FE4(v5);

    sub_1B7CD3FA4();
    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B7CA4ED8()
{
  result = type metadata accessor for SQLConnectionConfiguration();
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

uint64_t sub_1B7CA4FAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for SQLConnectionConfiguration();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7CFE420();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AE3EA4(v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, v15);
  sub_1B7CA6CD4(&v15[*(v12 + 36)], v10);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_1B7AEE190(v10, &qword_1EBA53418, &unk_1B7D11640);
  }

  (*(v17 + 32))(v20, v10, v16);
  v74 = 0xD000000000000013;
  v75 = 0x80000001B7D58080;

  MEMORY[0x1B8CADCA0](a1, a2);
  v22 = sub_1B7AE3B2C(v74, v75, 1);
  v71 = v17;

  v74 = MEMORY[0x1E69E7CC0];

  v23 = sub_1B7C95008(a3, v22, &v74, v22);
  v68 = v22;
  v69 = v16;
  v67 = v74;
  v74 = 10;
  v75 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v23);
  *(&v66 - 2) = &v74;
  v70 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C1A1B0, (&v66 - 4), a1, a2, &v66);
  v24 = sub_1B7CFE400();
  v25 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1B7AD5000, v24, v25, "EXPLAIN QUERY PLAN FOR:", v26, 2u);
    MEMORY[0x1B8CB0E70](v26, -1, -1);
  }

  v28 = *(v70 + 16);
  v73 = v20;
  if (v28)
  {
    v29 = (v70 + 56);
    *&v27 = 136315138;
    v72 = v27;
    do
    {
      v37 = *(v29 - 3);
      v38 = *(v29 - 2);
      v40 = *(v29 - 1);
      v39 = *v29;

      v41 = sub_1B7CFE400();
      v42 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v41, v42))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v74 = v31;
        *v30 = v72;
        v32 = MEMORY[0x1B8CADC20](v37, v38, v40, v39);
        v34 = v33;

        v35 = sub_1B7AED1B8(v32, v34, &v74);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1B7AD5000, v41, v42, "  %s", v30, 0xCu);
        sub_1B7AE9168(v31);
        MEMORY[0x1B8CB0E70](v31, -1, -1);
        v36 = v30;
        v20 = v73;
        MEMORY[0x1B8CB0E70](v36, -1, -1);
      }

      else
      {
      }

      v29 += 4;
      --v28;
    }

    while (v28);
  }

  v43 = sub_1B7CFE400();
  v44 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1B7AD5000, v43, v44, "PLAN:", v45, 2u);
    MEMORY[0x1B8CB0E70](v45, -1, -1);
  }

  v46 = v67;
  v47 = *(v67 + 16);
  if (v47)
  {
    v74 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v47, 0);
    v48 = v74;
    v49 = (v46 + 64);
    do
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v74 = v48;
      v53 = *(v48 + 16);
      v52 = *(v48 + 24);

      if (v53 >= v52 >> 1)
      {
        sub_1B7AECEEC((v52 > 1), v53 + 1, 1);
        v48 = v74;
      }

      *(v48 + 16) = v53 + 1;
      v54 = v48 + 16 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v51;
      v49 += 5;
      --v47;
    }

    while (v47);

    v56 = *(v48 + 16);
    if (!v56)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v56 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v56)
  {
LABEL_21:
    v57 = (v48 + 40);
    *&v55 = 136315138;
    v72 = v55;
    do
    {
      v62 = *(v57 - 1);
      v63 = *v57;

      v64 = sub_1B7CFE400();
      v65 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v64, v65))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v74 = v59;
        *v58 = v72;
        v60 = sub_1B7AED1B8(v62, v63, &v74);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_1B7AD5000, v64, v65, "  %s", v58, 0xCu);
        sub_1B7AE9168(v59);
        MEMORY[0x1B8CB0E70](v59, -1, -1);
        v61 = v58;
        v20 = v73;
        MEMORY[0x1B8CB0E70](v61, -1, -1);
      }

      else
      {
      }

      v57 += 2;
      --v56;
    }

    while (v56);
  }

LABEL_26:

  return (*(v71 + 8))(v20, v69);
}

unint64_t sub_1B7CA57D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B7CFEC40();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B7CA1C24(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B7CA1C24((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B7CFEC20();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B7CFEB30();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B7CFEB30();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B7CFEC40();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B7CA1C24(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B7CFEC40();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B7CA1C24(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B7CA1C24((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B7CFEB30();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7CA5B98(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B7AE1160(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B7CE3244(v14, a3 & 1);
      v18 = *v4;
      result = sub_1B7AE1160(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B7CE7BE8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v22 = (v20[7] + (result << 6));
    v23 = *a1;
    v24 = a1[1];
    v25 = a1[3];
    v22[2] = a1[2];
    v22[3] = v25;
    *v22 = v23;
    v22[1] = v24;
    v26 = v20[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v20[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + (result << 6);

  return sub_1B7CA6D44(a1, v21);
}

uint64_t sub_1B7CA5D1C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B7AE11D0(a2, a3);
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
      sub_1B7CE8638();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B7CE42D8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B7AE11D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B7CFF740();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_1B7AE9168(v23);

    return sub_1B7AE910C(a1, v23);
  }

  else
  {
    sub_1B7CA65A0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1B7CA5E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_1B7CFDD90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1B7C40208(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_1B7CE87E0();
      goto LABEL_9;
    }

    sub_1B7CE459C(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_1B7C40208(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v30 = v28[1];
    v29 = v28[2];
    *v28 = v32;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_1B7CA6610(v17, v14, v32, v26, a3, v27);
  }
}

_OWORD *sub_1B7CA6064(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7C40388(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B7CE91A4();
      goto LABEL_7;
    }

    sub_1B7CE5934(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1B7C40388(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B7C41078(a2, v22);
      return sub_1B7CA6778(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1B7AE9168(v17);

  return sub_1B7C255E0(a1, v17);
}

uint64_t sub_1B7CA61DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B7CFE7C0();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B7C40430(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B7CE97C8();
      goto LABEL_9;
    }

    sub_1B7CE6164(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_1B7C40430(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_1B7CA67F4(v14, v11, a1, v23);
  }
}

uint64_t sub_1B7CA63EC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_1B7CFE7C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1B7C40430(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v23 = *v6;
    if (v21)
    {
LABEL_8:
      *(v23[7] + 8 * v17) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v22 >= result && (a3 & 1) == 0)
  {
    result = v26();
    goto LABEL_7;
  }

  v27();
  v24 = *v6;
  result = sub_1B7C40430(a2);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

  v17 = result;
  v23 = *v6;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v14, a2, v10);
  return sub_1B7CA68D0(v17, v14, a1, v23);
}

uint64_t sub_1B7CA65A0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B7AE910C(a4, a5[7] + 40 * a1);
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

uint64_t sub_1B7CA6610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1B7CFDD90();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_1B7CA66E4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1B7CA6728(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1B7CA6778(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B7C255E0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1B7CA67F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B7CFE7C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1B7CA68D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B7CFE7C0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

uint64_t sub_1B7CA6988(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590() & 1;
  }
}

uint64_t sub_1B7CA69E0(uint64_t a1, _BYTE *a2)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for SQLConnectionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (ppDb - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  ppDb[0] = 0;
  sub_1B7CFDFD0();
  if (*a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1B7CFEAD0();

  v10 = sqlite3_open_v2((v9 + 32), ppDb, v8, 0);

  if (!v10)
  {
    v15 = ppDb[0];
    if (ppDb[0])
    {
      sub_1B7AE3EA4(a2, v7);
      v16 = type metadata accessor for SQLConnection(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v12 = swift_allocObject();
      v19 = (v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
      v20 = MEMORY[0x1E69E7CC8];
      *v19 = MEMORY[0x1E69E7CC8];
      v19[1] = v20;
      v19[2] = 32;
      *(v12 + 16) = v15;
      *(v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 1;
      sub_1B7AE3EA4(v7, v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      if (v7[2])
      {
LABEL_12:
        sub_1B7AE3F08(v7);
        sub_1B7AE3F08(a2);
        v22 = sub_1B7CFDFF0();
        (*(*(v22 - 8) + 8))(a1, v22);
        goto LABEL_13;
      }

      v21 = v7[1] * 1000.0;
      if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v21 > -2147483650.0)
      {
        if (v21 < 2147483650.0)
        {
          sqlite3_busy_timeout(v15, v21);
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  type metadata accessor for SQLConnectionError(0);
  sub_1B7C14C5C();
  swift_allocError();
  v12 = v11;
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B7AE3F08(a2);
  (*(v14 + 8))(a1, v13);
LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1B7CA6CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7CA6DF0()
{
  sub_1B7CA6E64();
  if (v0 <= 0x3F)
  {
    sub_1B7CA6EAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B7CA6E64()
{
  if (!qword_1EBA50FB0)
  {
    v0 = sub_1B7CFDFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50FB0);
    }
  }
}

void sub_1B7CA6EAC()
{
  if (!qword_1EBA50E70)
  {
    sub_1B7C1091C(&qword_1EBA53420, &qword_1B7D115F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA50E70);
    }
  }
}

void sub_1B7CA6F4C()
{
  sub_1B7CA6FE8();
  if (v0 <= 0x3F)
  {
    sub_1B7CA7038();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7CA6FE8()
{
  if (!qword_1EBA50E48)
  {
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50E48);
    }
  }
}

void sub_1B7CA7038()
{
  if (!qword_1EBA50E98)
  {
    sub_1B7CFE420();
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50E98);
    }
  }
}

unint64_t sub_1B7CA70A4()
{
  result = qword_1EBA53428;
  if (!qword_1EBA53428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53428);
  }

  return result;
}

uint64_t sub_1B7CA70F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B7CFEE40();
  if (!v26)
  {
    return sub_1B7CFED10();
  }

  v48 = v26;
  v52 = sub_1B7CFF300();
  v39 = sub_1B7CFF310();
  sub_1B7CFF2B0();
  result = sub_1B7CFEE30();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B7CFEE70();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B7CFF2F0();
      result = sub_1B7CFEE50();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CA7518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  sub_1B7CFDD30();
  v4 = sub_1B7CFED70();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1B7CA70F8(sub_1B7CA7634, v10, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  v11 = v7;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v8 = sub_1B7CFEA10();

  return v8;
}

uint64_t sub_1B7CA7634@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1B7CFDD30();
  result = sub_1B7CA7698(v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_1B7CA7698(uint64_t a1)
{
  if (!sub_1B7CFDD20())
  {
    goto LABEL_12;
  }

  v2 = sub_1B7C4BE8C();
  v4 = v3;

  v5 = *(a1 + 48);
  if (!*(v5 + 16) || (v6 = sub_1B7AE11D0(v2, v4), (v7 & 1) == 0))
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](v2, v4);
LABEL_12:
    result = sub_1B7CFF340();
    __break(1u);
    return result;
  }

  v8 = v6;

  v9 = (*(v5 + 56) + 16 * v8);
  v11 = *v9;
  v10 = v9[1];

  sub_1B7CFDD10();
  v12 = sub_1B7CFE1C0();
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  if (v12)
  {
    v13 = 4412225;
  }

  else
  {
    v13 = 1129530692;
  }

  if (v12)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1B8CADCA0](v13, v14);

  return v11;
}

uint64_t sub_1B7CA78C8(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7C219E4(0xD000000000000021, 0x80000001B7D58160);
  v9 = *(a1 + 24);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + 24) = v11;
  sub_1B7C6A6CC(a1);
  result = sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v12 = *(a1 + 24);
  v10 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v13;
  swift_beginAccess();
  result = *(v1 + 344);
  v14 = *(result + 16);
  if (v14)
  {
    v15 = v4 + 16;
    v36 = *(v4 + 16);
    v37 = v4 + 16;
    v16 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v15 + 56);
    v33[1] = result;
    v34 = v17;
    v18 = (v15 - 8);

    v35 = v3;
    while (1)
    {
      v36(v7, v16, v3);
      result = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v20 = result;
      v21 = v19;
      v38 = sub_1B7CFEC10();
      v39 = v22;
      MEMORY[0x1B8CADCA0](v20, v21);

      v23 = v38;
      v24 = v39;
      swift_beginAccess();
      v25 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1B7AF182C(0, *(v25 + 2) + 1, 1, v25);
        *(a1 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v23;
      *(v29 + 5) = v24;
      *(a1 + 16) = v25;
      swift_endAccess();
      v3 = v35;
      (*v18)(v7, v35);
      v16 += v34;
      if (!--v14)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v30 = *(a1 + 24);
  v10 = __OFSUB__(v30, 1);
  v31 = v30 - 1;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (!v10)
  {
    *(a1 + 24) = v32;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t AttachmentStorageInspectorReport.__allocating_init(from:)(uint64_t *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t AttachmentStorageInspectorReport.init(from:)(uint64_t *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t AttachmentStorageInspectorReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return v0;
}

uint64_t AttachmentStorageInspectorReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return swift_deallocClassInstance();
}

void SqlOperation.execute(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v4;
  v13[4] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v3 + 16, v8);
  swift_endAccess();

  swift_beginAccess();
  v13[0] = 0;
  IMDSqlOperationGetError(v3 + 16, v13);
  v9 = v13[0];
  swift_endAccess();
  if (v9)
  {
    swift_willThrow();
    v9;
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  sub_1B7AD8F38(a3);
  a3(v3);
  if (!v4)
  {
    sub_1B7AE15D4(a3);
LABEL_7:
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v3 + 16);
    v13[0] = 0;
    IMDSqlOperationGetError(v3 + 16, v13);
    v10 = v13[0];
    swift_endAccess();
    if (!v10)
    {
      goto LABEL_11;
    }

    swift_willThrow();
    v5 = v10;
    goto LABEL_9;
  }

  sub_1B7AE15D4(a3);
LABEL_9:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v3 + 16);
  v13[0] = 0;
  IMDSqlOperationGetError(v3 + 16, v13);
  v11 = v13[0];
  swift_endAccess();
  swift_willThrow();
  if (v11)
  {
    v11;
  }

LABEL_11:
  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::UInt64_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (a1.is_nil)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(v1 + 48);
  }

  else
  {
    value = a1.value;
    if ((a1.value & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    swift_beginAccess();
    IMDSqlStatementBindInt64(v1 + 48, value);
  }

  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (v3)
  {
    v3;
    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void SqlOperation.select<A>(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  v15 = objc_autoreleasePoolPush();
  sub_1B7CA8F5C(v8, a1, a2, a3, a4, a6, a5, &v17);
  objc_autoreleasePoolPop(v15);
  if (v7)
  {
    v16 = sub_1B7CFEFF0();
    (*(*(v16 - 8) + 8))(a6, v16);
  }
}

uint64_t static SqlOperation.placeholders(forColumnCount:)(uint64_t a1)
{
  sub_1B7AF7F10(0x3F, 0xE100000000000000, a1);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v1 = sub_1B7CFEA10();

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::OpaquePointer a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        __break(1u);
      }

      IMDSqlStatementBindInt64(v1 + 48, v5);
      v11[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v11);
      v7 = v11[0];
      if (v11[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v9 = v7;
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_6:
    swift_endAccess();
    v8 = *MEMORY[0x1E69E9840];
  }
}

{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = (a1._rawValue + 40);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = sub_1B7CFEA30();
      swift_beginAccess();
      IMDSqlStatementBindTextFromCFString(v1 + 48, v6);
      swift_endAccess();

      swift_beginAccess();
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v7 = v9[0];
      swift_endAccess();
      if (v7)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    swift_willThrow();
    v7;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
}

{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_10:
        __break(1u);
      }

      if (v5 > 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      IMDSqlStatementBindInt(v1 + 48, v5);
      v11[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v11);
      v7 = v11[0];
      if (v11[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v9 = v7;
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_7:
    swift_endAccess();
    v8 = *MEMORY[0x1E69E9840];
  }
}

{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v5 = *v4++;
      IMDSqlStatementBindInt(v1 + 48, v5);
      v10[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v10);
      v6 = v10[0];
      if (v10[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v8 = v6;
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_5:
    swift_endAccess();
    v7 = *MEMORY[0x1E69E9840];
  }
}

{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        __break(1u);
      }

      IMDSqlStatementBindInt(v1 + 48, v5);
      v11[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v11);
      v7 = v11[0];
      if (v11[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v9 = v7;
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_6:
    swift_endAccess();
    v8 = *MEMORY[0x1E69E9840];
  }
}

{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v5 = *v4++;
      IMDSqlStatementBindInt64(v1 + 48, v5);
      v10[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v10);
      v6 = v10[0];
      if (v10[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v8 = v6;
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_5:
    swift_endAccess();
    v7 = *MEMORY[0x1E69E9840];
  }
}

{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      IMDSqlStatementBindDouble(v1 + 48, *v4);
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v5 = v9[0];
      if (v9[0])
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v7 = v5;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_5:
    swift_endAccess();
    v6 = *MEMORY[0x1E69E9840];
  }
}

{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = (a1._rawValue + 40);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_1B7C1A208(v4, *v3);
      sub_1B7C1A208(v4, v5);
      v6 = sub_1B7CFE010();
      swift_beginAccess();
      IMDSqlStatementBindBlob(v1 + 48, v6);
      swift_endAccess();

      sub_1B7C204B0(v4, v5);
      swift_beginAccess();
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v7 = v9[0];
      swift_endAccess();
      if (v7)
      {
        break;
      }

      v3 += 2;
      sub_1B7C204B0(v4, v5);
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    swift_willThrow();
    v7;
    sub_1B7C204B0(v4, v5);
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t SqlOperation.RowIterator.next()()
{
  v1 = *v0;
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  result = 0;
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = swift_allocObject();
    v5 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
    *(v4 + 16) = v1;
    *(v4 + 24) = v5;

    return v4;
  }

  return result;
}

Swift::UInt64_optional __swiftcall SqlOperation.firstUInt64(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_12;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
          v10 = v17;
          v11 = v18;
          v12 = v19;
          swift_endAccess();
          v20 = v10;
          v21 = v11;
          v22 = v12;
          if (IMDSqlColumnGetType(&v20) == 1)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    swift_endAccess();
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v16 = IMDInt64FromSqlColumn(&v20);

    if ((v16 & 0x8000000000000000) == 0)
    {
      v8 = v16;
      v9 = 0;
      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:

    v8 = 0;
    v9 = 1;
  }

LABEL_13:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::String_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (a1.value._object)
  {
    v2 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlStatementBindTextFromCFString(v1 + 48, v2);
    swift_endAccess();

    goto LABEL_3;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull(v1 + 48);
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (!v3)
  {
LABEL_3:
    swift_beginAccess();
    v5[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v5);
    v3 = v5[0];
    swift_endAccess();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v3;
  swift_willThrow();
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (!a1.is_nil)
  {
    value = a1.value;
    if (a1.value < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1.value <= 0x7FFFFFFF)
    {
      swift_beginAccess();
      IMDSqlStatementBindInt(v1 + 48, value);
      swift_endAccess();
      goto LABEL_7;
    }

    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindNull(v1 + 48);
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v2 = v5[0];
  swift_endAccess();
  if (v2)
  {
LABEL_8:
    v2;
    swift_willThrow();
    goto LABEL_9;
  }

LABEL_7:
  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v2 = v5[0];
  swift_endAccess();
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
}

void SqlOperation.transact(_:)(void (*a1)(uint64_t))
{
  v3 = v1;
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction((v1 + 16));
  v11[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v11);
  v6 = v11[0];
  swift_endAccess();
  if (!v6)
  {
    a1(v1);
    v7 = v2;
    if (v2)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction((v3 + 16));
      v11[0] = 0;
      IMDSqlOperationGetError(v3 + 16, v11);
      v8 = v11[0];
      swift_endAccess();
      if (!v8)
      {
        goto LABEL_11;
      }

      swift_willThrow();
      v7 = v8;
      if (!*(v3 + 32))
      {
LABEL_10:
        swift_willThrow();
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction((v3 + 16));
    v11[0] = 0;
    IMDSqlOperationGetError(v3 + 16, v11);
    v9 = v11[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  swift_willThrow();
  v6;
LABEL_11:
  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x1E69E9840];
}

Swift::UInt64_optional __swiftcall SqlOperation.firstUInt64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.uint64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

_OWORD *SqlOperation.__allocating_init()()
{
  v0 = swift_allocObject();
  IMDSqlOperationInitWithSharedCSDBDatabase(v7);
  v1 = v7[9];
  v0[9] = v7[8];
  v0[10] = v1;
  v0[11] = v7[10];
  v2 = v7[5];
  v0[5] = v7[4];
  v0[6] = v2;
  v3 = v7[7];
  v0[7] = v7[6];
  v0[8] = v3;
  v4 = v7[1];
  v0[1] = v7[0];
  v0[2] = v4;
  v5 = v7[3];
  v0[3] = v7[2];
  v0[4] = v5;
  return v0;
}

void *SqlOperation.error.getter()
{
  v5[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v5);
  v1 = v5[0];
  swift_endAccess();
  v2 = v1;
  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

_OWORD *SqlOperation.init()()
{
  IMDSqlOperationInitWithSharedCSDBDatabase(v7);
  v1 = v7[9];
  v0[9] = v7[8];
  v0[10] = v1;
  v0[11] = v7[10];
  v2 = v7[5];
  v0[5] = v7[4];
  v0[6] = v2;
  v3 = v7[7];
  v0[7] = v7[6];
  v0[8] = v3;
  v4 = v7[1];
  v0[1] = v7[0];
  v0[2] = v4;
  v5 = v7[3];
  v0[3] = v7[2];
  v0[4] = v5;
  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.throwIfError()()
{
  v4[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v4);
  v1 = v4[0];
  swift_endAccess();
  if (v1)
  {
    swift_willThrow();
    v2 = v1;
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t SqlOperation.deinit()
{
  v3[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3[0] = 0;
  IMDSqlOperationRelease(v0 + 16, v3);
  swift_endAccess();
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t SqlOperation.__deallocating_deinit()
{
  v3[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3[0] = 0;
  IMDSqlOperationRelease(v0 + 16, v3);
  swift_endAccess();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.beginQuery(_:)(Swift::String a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v1 + 16, v2);
  swift_endAccess();

  swift_beginAccess();
  v6[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v6);
  v3 = v6[0];
  swift_endAccess();
  if (v3)
  {
    swift_willThrow();
    v4 = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.finishQuery()()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B7CA9350(IMDSqlOperationFinishQuery);
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1B7CA8F5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = v8;
  v26[1] = a5;
  v27 = a6;
  v28[4] = *MEMORY[0x1E69E9840];
  v13 = sub_1B7CFEFF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - v16;
  v18 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(a1 + 16, v18);
  swift_endAccess();

  swift_beginAccess();
  v28[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v28);
  v19 = v28[0];
  swift_endAccess();
  if (v19)
  {
    swift_willThrow();
    *a8 = v19;
    v20 = v19;
    goto LABEL_12;
  }

  v21 = v27;
  if (!a4)
  {
    goto LABEL_7;
  }

  sub_1B7AD8F38(a4);
  a4(a1);
  if (!v8)
  {
    sub_1B7AE15D4(a4);
    (*(v14 + 40))(v21, v17, v13);
LABEL_7:
    swift_beginAccess();
    IMDSqlOperationFinishQuery(a1 + 16);
    v28[0] = 0;
    IMDSqlOperationGetError(a1 + 16, v28);
    v22 = v28[0];
    swift_endAccess();
    if (!v22)
    {
      goto LABEL_12;
    }

    swift_willThrow();
    v10 = v22;
    goto LABEL_9;
  }

  sub_1B7AE15D4(a4);
LABEL_9:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(a1 + 16);
  v28[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v28);
  v23 = v28[0];
  swift_endAccess();
  swift_willThrow();
  if (v23)
  {
    v24 = v23;

    *a8 = v24;
  }

  else
  {
    *a8 = v10;
  }

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
}

BOOL SqlOperation.hasRows.getter()
{
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  return HasRows;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.beginTransaction()()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B7CA9350(IMDSqlOperationBeginTransaction);
  v0 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.commitTransaction()()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B7CA9350(IMDSqlOperationCommitTransaction);
  v0 = *MEMORY[0x1E69E9840];
}

id sub_1B7CA9350(void (*a1)(uint64_t))
{
  v6[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  a1(v1 + 16);
  v6[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v6);
  v3 = v6[0];
  result = swift_endAccess();
  if (v3)
  {
    swift_willThrow();
    result = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.revertTransaction()()
{
  v5[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (*(v0 + 32) && (swift_beginAccess(), IMDSqlOperationRevertTransaction((v0 + 16)), v5[0] = 0, IMDSqlOperationGetError(v0 + 16, v5), v1 = v5[0], swift_endAccess(), v1))
  {
    swift_willThrow();
    v2 = v1;
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.commitOrRevertTransaction()()
{
  v7[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (*(v0 + 32))
  {
    swift_beginAccess();
    v7[0] = 0;
    IMDSqlOperationGetError(v0 + 16, v7);
    v1 = v7[0];
    swift_endAccess();
    if (v1)
    {
      if (*(v0 + 32))
      {
        swift_beginAccess();
        v2 = v1;
        IMDSqlOperationRevertTransaction((v0 + 16));
        v7[0] = 0;
        IMDSqlOperationGetError(v0 + 16, v7);
        v3 = v7[0];
        swift_endAccess();
        if (v3)
        {
          swift_willThrow();
          v3;

          goto LABEL_10;
        }
      }

      else
      {
        v5 = v1;
      }

      swift_willThrow();
      goto LABEL_10;
    }

    swift_beginAccess();
    IMDSqlOperationCommitTransaction((v0 + 16));
    v7[0] = 0;
    IMDSqlOperationGetError(v0 + 16, v7);
    v4 = v7[0];
    swift_endAccess();
    if (v4)
    {
      swift_willThrow();
      v4;
    }
  }

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bindNull()()
{
  v4[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  IMDSqlStatementBindNull(v0 + 48);
  v4[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v4);
  v1 = v4[0];
  swift_endAccess();
  if (v1)
  {
    swift_willThrow();
    v2 = v1;
  }

  v3 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int32_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if ((*&a1.value & 0x100000000) != 0)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(v1 + 48);
    v5[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v5);
    v3 = v5[0];
    swift_endAccess();
    if (v3)
    {
LABEL_5:
      v3;
      swift_willThrow();
      goto LABEL_6;
    }
  }

  else
  {
    value = a1.value;
    swift_beginAccess();
    IMDSqlStatementBindInt(v1 + 48, value);
    swift_endAccess();
  }

  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::UInt32_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if ((*&a1.value & 0x100000000) != 0)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(v1 + 48);
    v5[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v5);
    v3 = v5[0];
    swift_endAccess();
    if (v3)
    {
LABEL_6:
      v3;
      swift_willThrow();
      goto LABEL_7;
    }
  }

  else
  {
    value = a1.value;
    if ((a1.value & 0x80000000) != 0)
    {
      __break(1u);
    }

    swift_beginAccess();
    IMDSqlStatementBindInt(v1 + 48, value);
    swift_endAccess();
  }

  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int64_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (a1.is_nil)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(v1 + 48);
    v5[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v5);
    v2 = v5[0];
    swift_endAccess();
    if (v2)
    {
LABEL_6:
      v2;
      swift_willThrow();
      goto LABEL_7;
    }
  }

  else
  {
    value = a1.value;
    swift_beginAccess();
    IMDSqlStatementBindInt64(v1 + 48, value);
    swift_endAccess();
  }

  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v2 = v5[0];
  swift_endAccess();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SqlOperation.bind(_:)(uint64_t a1, unint64_t a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(v2 + 48);
    v9[0] = 0;
    IMDSqlOperationGetError(v2 + 16, v9);
    v3 = v9[0];
    swift_endAccess();
    if (v3)
    {
LABEL_6:
      v3;
      result = swift_willThrow();
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B7C1A208(a1, a2);
    v6 = sub_1B7CFE010();
    swift_beginAccess();
    IMDSqlStatementBindBlob(v2 + 48, v6);
    swift_endAccess();

    sub_1B7C2049C(a1, a2);
  }

  swift_beginAccess();
  v9[0] = 0;
  IMDSqlOperationGetError(v2 + 16, v9);
  v3 = v9[0];
  result = swift_endAccess();
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bindNulls(count:)(Swift::Int count)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (count < 0)
  {
    __break(1u);
  }

  v2 = count;
  swift_beginAccess();
  if (v2)
  {
    while (1)
    {
      IMDSqlStatementBindNull(v1 + 48);
      v7[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v7);
      v3 = v7[0];
      if (v7[0])
      {
        break;
      }

      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v5 = v3;
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_5:
    swift_endAccess();
    v4 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B7CAA3B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v3 + 16);
  result = swift_endAccess();
  v6 = 0;
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v6 = swift_allocObject();
    v7 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
    *(v6 + 16) = v3;
    *(v6 + 24) = v7;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1B7CAA448()
{
  v1 = sub_1B7CEA39C(*v0);

  return v1;
}

uint64_t SqlOperation.description.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1B7CFF210();
  v1 = *v0;
  v2 = sub_1B7CFF8D0();
  v4 = v3;

  v14 = v2;
  v15 = v4;
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D581D0);
  swift_beginAccess();
  v5 = v0[4];
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1B8CADCA0](v6, v7);

  MEMORY[0x1B8CADCA0](0x726520736168202CLL, 0xED0000203A726F72);
  swift_beginAccess();
  v13 = 0;
  IMDSqlOperationGetError((v0 + 2), &v13);
  v8 = v13;
  swift_endAccess();
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1B8CADCA0](v9, v10);

  result = v14;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SqlOperation.SqlOperationError.hashValue.getter()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

Swift::Int64_optional __swiftcall SqlOperation.firstInt64(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
          v10 = v17;
          v11 = v18;
          v12 = v19;
          swift_endAccess();
          v20 = v10;
          v21 = v11;
          v22 = v12;
          if (IMDSqlColumnGetType(&v20) == 1)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
            v13 = v17;
            v14 = v18;
            v15 = v19;
            swift_endAccess();
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v16 = IMDInt64FromSqlColumn(&v20);

            v8 = v16;
            v9 = 0;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
  v9 = 1;
LABEL_11:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Int_optional __swiftcall SqlOperation.firstInt(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
          v10 = v16;
          v11 = v17;
          v12 = v18;
          swift_endAccess();
          v19 = v10;
          v20 = v11;
          v21 = v12;
          if (IMDSqlColumnGetType(&v19) == 1)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
            v13 = v16;
            v14 = v17;
            v15 = v18;
            swift_endAccess();
            v19 = v13;
            v20 = v14;
            v21 = v15;
            LODWORD(v13) = IMDIntFromSqlColumn(&v19);

            v9 = 0;
            v8 = v13;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
  v9 = 1;
LABEL_11:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.firstString(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_13;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v21);
          v10 = v21;
          v11 = v22;
          v12 = v23;
          swift_endAccess();
          v24 = v10;
          v25 = v11;
          v26 = v12;
          if (IMDSqlColumnGetType(&v24) == 3)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v21);
    v13 = v21;
    v14 = v22;
    v15 = v23;
    swift_endAccess();
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v8 = IMDStringFromSqlColumn(&v24);
    if (v8)
    {
      v16 = v8;
      v17 = sub_1B7CFEA60();
      v19 = v18;

      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    v17 = 0;
    v19 = 0;
LABEL_11:

    v8 = v17;
    v9 = v19;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.firstDouble(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
          v10 = v16;
          v11 = v17;
          v12 = v18;
          swift_endAccess();
          v19 = v10;
          v20 = v11;
          v21 = v12;
          if (IMDSqlColumnGetType(&v19) == 2)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
            v13 = v16;
            v14 = v17;
            v15 = v18;
            swift_endAccess();
            v19 = v13;
            v20 = v14;
            v21 = v15;
            LOBYTE(v15) = COERCE_UNSIGNED_INT64(IMDDoubleFromSqlColumn(&v19));

            v8 = v15;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
LABEL_11:
  result.value = v9;
  result.is_nil = v8;
  return result;
}

uint64_t SqlOperation.firstBlob(forColumnIndex:)(unint64_t a1)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((a1 & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        result = swift_endAccess();
        if (v7 > a1)
        {
          if (a1 >> 31)
          {
            __break(1u);
            goto LABEL_12;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), a1, &v17);
          v9 = v17;
          v10 = v18;
          v11 = v19;
          swift_endAccess();
          v20 = v9;
          v21 = v10;
          v22 = v11;
          if (IMDSqlColumnGetType(&v20) == 4)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), a1, &v17);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    swift_endAccess();
    v20 = v12;
    v21 = v13;
    v22 = v14;
    result = IMDBlobFromSqlColumn(&v20);
    if (result)
    {
      v15 = result;
      v16 = sub_1B7CFE020();

      return v16;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

_OWORD *SqlOperation.firstObject(forColumnIndex:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (!HasRows)
  {
  }

  type metadata accessor for SqlOperation.Row();
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    *(inited + 24) = v5;
    if ((a1 & 0x8000000000000000) != 0 || (swift_beginAccess(), v7 = IMDSqlStatementColumnCount((v2 + 48)), result = swift_endAccess(), v7 <= a1))
    {
      v17 = 0u;
      v18 = 0u;
      goto LABEL_11;
    }

    if (a1 >> 31)
    {
      break;
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v2 + 48), a1, v16);
    v10 = v16[0];
    v9 = v16[1];
    v11 = v16[2];
    swift_endAccess();
    *&v14 = v10;
    *(&v14 + 1) = v9;
    *&v15 = v11;
    if (IMDSqlColumnGetObject(&v14))
    {
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
LABEL_11:

    if (*(&v18 + 1))
    {
      sub_1B7AEE190(a2, &qword_1EBA51FA8, qword_1B7D0B230);

      return sub_1B7C255E0(&v17, a2);
    }

    sub_1B7AEE190(&v17, &qword_1EBA51FA8, qword_1B7D0B230);
    swift_beginAccess();

    v12 = IMDSqlOperationHasRows(v2 + 16);
    swift_endAccess();
    if (!v12)
    {
    }
  }

  __break(1u);
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.firstInt64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B7CAB338(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v3 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    return 0;
  }

  type metadata accessor for SqlOperation.Row();
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v14 = sub_1B7C23650(v9);
    *(inited + 16) = v5;
    *(inited + 24) = v14;
    SqlOperation.Row.column(forColumnName:)(a1, a2, &v22);
    if (*(&v22 + 1))
    {
      break;
    }

    swift_setDeallocating();
    v10 = *(inited + 16);

    v11 = *(inited + 24);

    sub_1B7AEE190(&v22, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v12 = IMDSqlOperationHasRows(v5 + 16);
    swift_endAccess();
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  v15 = v23;
  sub_1B7C26C78(v26);
  v16 = a3(v15);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);

  v20 = *(inited + 24);

  if (v18)
  {
    goto LABEL_4;
  }

  return v16;
}

Swift::Int_optional __swiftcall SqlOperation.firstInt(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.firstString(forColumnName:)(Swift::String forColumnName)
{
  v2 = v1;
  object = forColumnName._object;
  countAndFlagsBits = forColumnName._countAndFlagsBits;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    v14 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  type metadata accessor for SqlOperation.Row();
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v11 = sub_1B7C23650(v6);
    *(inited + 16) = v2;
    *(inited + 24) = v11;
    SqlOperation.Row.column(forColumnName:)(countAndFlagsBits, object, &v21);
    if (*(&v21 + 1))
    {
      break;
    }

    swift_setDeallocating();
    v7 = *(inited + 16);

    v8 = *(inited + 24);

    sub_1B7AEE190(&v21, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v9 = IMDSqlOperationHasRows(v2 + 16);
    swift_endAccess();
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  v25[3] = v24;
  v12 = v22;
  sub_1B7C26C78(v25);
  v13 = SqlOperation.Row.string(forColumnIndex:)(v12);
  v14 = v13.value._countAndFlagsBits;
  v15 = v13.value._object;
  swift_setDeallocating();
  v16 = *(inited + 16);

  v17 = *(inited + 24);

  if (!v13.value._object)
  {
    goto LABEL_4;
  }

LABEL_9:
  v18 = v14;
  v19 = v15;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.firstDouble(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.double(forColumnIndex:));
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t SqlOperation.firstBlob(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    return 0;
  }

  type metadata accessor for SqlOperation.Row();
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v12 = sub_1B7C23650(v7);
    *(inited + 16) = v3;
    *(inited + 24) = v12;
    SqlOperation.Row.column(forColumnName:)(a1, a2, &v20);
    if (*(&v20 + 1))
    {
      break;
    }

    swift_setDeallocating();
    v8 = *(inited + 16);

    v9 = *(inited + 24);

    sub_1B7AEE190(&v20, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v10 = IMDSqlOperationHasRows(v3 + 16);
    swift_endAccess();
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  v13 = v21;
  sub_1B7C26C78(v24);
  v14 = SqlOperation.Row.blob(forColumnIndex:)(v13);
  v16 = v15;
  swift_setDeallocating();
  v17 = *(inited + 16);

  v18 = *(inited + 24);

  if (v16 >> 60 == 15)
  {
    goto LABEL_4;
  }

  return v14;
}

_OWORD *SqlOperation.firstObject(forColumnName:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  *a3 = 0u;
  a3[1] = 0u;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v3 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v12 = sub_1B7C23650(v9);
      *(inited + 16) = v4;
      *(inited + 24) = v12;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v15);
      if (*(&v15 + 1))
      {
        v19[0] = v15;
        v19[1] = v16;
        v19[2] = v17;
        v19[3] = v18;
        v13 = v16;
        sub_1B7C26C78(v19);
        SqlOperation.Row.object(forColumnIndex:)(v13, &v20);

        if (*(&v21 + 1))
        {

          sub_1B7AEE190(a3, &qword_1EBA51FA8, qword_1B7D0B230);
          return sub_1B7C255E0(&v20, a3);
        }
      }

      else
      {

        sub_1B7AEE190(&v15, &qword_1EBA52298, &unk_1B7D10570);
        v20 = 0u;
        v21 = 0u;
      }

      sub_1B7AEE190(&v20, &qword_1EBA51FA8, qword_1B7D0B230);
      swift_beginAccess();

      v10 = IMDSqlOperationHasRows(v4 + 16);
      swift_endAccess();
    }

    while (v10);
  }
}

char *SqlOperation.int64s(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
      v6 = v17;
      v7 = v18;
      v8 = v19;
      swift_endAccess();
      v20 = v6;
      v21 = v7;
      v22 = v8;
      if (IMDSqlColumnGetType(&v20) == 1)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDInt64FromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA1DB4(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7CA1DB4((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *SqlOperation.ints(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
      v6 = v17;
      v7 = v18;
      v8 = v19;
      swift_endAccess();
      v20 = v6;
      v21 = v7;
      v22 = v8;
      if (IMDSqlColumnGetType(&v20) == 1)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDIntFromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7AF2DCC(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7AF2DCC((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *SqlOperation.doubles(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
      v6 = v17;
      v7 = v18;
      v8 = v19;
      swift_endAccess();
      v20 = v6;
      v21 = v7;
      v22 = v8;
      if (IMDSqlColumnGetType(&v20) == 2)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDDoubleFromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA30C4(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7CA30C4((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

const unsigned __int8 *SqlOperation.strings(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
      v6 = v21;
      v7 = v22;
      v8 = v23;
      swift_endAccess();
      v24 = v6;
      v25 = v7;
      v26 = v8;
      if (IMDSqlColumnGetType(&v24) == 3)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
        v10 = v21;
        v11 = v22;
        v12 = v23;
        swift_endAccess();
        v24 = v10;
        v25 = v11;
        v26 = v12;
        result = IMDStringFromSqlColumn(&v24);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v15 = sub_1B7CFEA60();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7AF182C(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1B7AF182C((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

CFDataRef SqlOperation.blobs(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
      v6 = v21;
      v7 = v22;
      v8 = v23;
      swift_endAccess();
      v24 = v6;
      v25 = v7;
      v26 = v8;
      if (IMDSqlColumnGetType(&v24) == 4)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
        v10 = v21;
        v11 = v22;
        v12 = v23;
        swift_endAccess();
        v24 = v10;
        v25 = v11;
        v26 = v12;
        result = IMDBlobFromSqlColumn(&v24);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v15 = sub_1B7CFE020();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA28E4(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1B7CA28E4((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

char *SqlOperation.objects(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, v15);
        v6 = v15[0];
        v7 = v15[1];
        v8 = v15[2];
        swift_endAccess();
        *&v13 = v6;
        *(&v13 + 1) = v7;
        *&v14 = v8;
        if (IMDSqlColumnGetObject(&v13))
        {
          sub_1B7CFF0A0();
          swift_unknownObjectRelease();
        }

        else
        {
          v13 = 0u;
          v14 = 0u;
        }

        v16 = v13;
        v17 = v14;
        if (*(&v14 + 1))
        {
          sub_1B7C255E0(&v16, v18);
          sub_1B7AED284(v18, &v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1B7CA31C8(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1B7CA31C8((v10 > 1), v11 + 1, 1, v2);
          }

          sub_1B7AE9168(v18);
          *(v2 + 2) = v11 + 1;
          sub_1B7C255E0(&v16, &v2[32 * v11 + 32]);
          goto LABEL_10;
        }
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      sub_1B7AEE190(&v16, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_10:
      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_18;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v2;
}

uint64_t sub_1B7CAC880(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v7 = v4;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v4 + 16);
  swift_endAccess();
  if (HasRows)
  {
    v28 = a4;
    type metadata accessor for SqlOperation.Row();
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        inited = swift_initStackObject();
        v17 = sub_1B7C23650(v11);
        *(inited + 16) = v7;
        *(inited + 24) = v17;
        SqlOperation.Row.column(forColumnName:)(a1, a2, &v29);
        if (*(&v29 + 1))
        {
          break;
        }

        swift_setDeallocating();
        v13 = *(inited + 16);

        v14 = *(inited + 24);

        sub_1B7AEE190(&v29, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
        swift_beginAccess();

        v15 = IMDSqlOperationHasRows(v7 + 16);
        swift_endAccess();
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v33[0] = v29;
      v33[1] = v30;
      v33[2] = v31;
      v33[3] = v32;
      v18 = v30;
      sub_1B7C26C78(v33);
      v19 = a3(v18);
      if (v20)
      {
        swift_setDeallocating();
        v21 = *(inited + 16);

        v22 = *(inited + 24);

        goto LABEL_4;
      }

      v23 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = (v28)(0, *(v12 + 16) + 1, 1, v12);
      }

      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        v12 = v28(v24 > 1);
      }

      *(v12 + 16) = v25 + 1;
      *(v12 + 8 * v25 + 32) = v23;
      swift_beginAccess();

      v26 = IMDSqlOperationHasRows(v7 + 16);
      swift_endAccess();
      if (!v26)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v12;
}

char *SqlOperation.strings(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v13 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v13;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v21);
      if (*(&v21 + 1))
      {
        v25[0] = v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
        v14 = v22;
        sub_1B7C26C78(v25);
        v15 = SqlOperation.Row.string(forColumnIndex:)(v14);
        if (v15.value._object)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7AF182C(0, *(v8 + 2) + 1, 1, v8);
          }

          v19 = *(v8 + 2);
          v18 = *(v8 + 3);
          if (v19 >= v18 >> 1)
          {
            v8 = sub_1B7AF182C((v18 > 1), v19 + 1, 1, v8);
          }

          *(v8 + 2) = v19 + 1;
          *&v8[16 * v19 + 32] = v15;
        }

        else
        {
          swift_setDeallocating();
          v16 = *(inited + 16);

          v17 = *(inited + 24);
        }
      }

      else
      {
        swift_setDeallocating();
        v9 = *(inited + 16);

        v10 = *(inited + 24);

        sub_1B7AEE190(&v21, &qword_1EBA52298, &unk_1B7D10570);
      }

      swift_beginAccess();

      v11 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
    }

    while (v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *SqlOperation.blobs(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v13 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v13;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v25);
      if (*(&v25 + 1))
      {
        v29[0] = v25;
        v29[1] = v26;
        v29[2] = v27;
        v29[3] = v28;
        v14 = v26;
        sub_1B7C26C78(v29);
        v15 = SqlOperation.Row.blob(forColumnIndex:)(v14);
        if (v16 >> 60 == 15)
        {
          swift_setDeallocating();
          v17 = *(inited + 16);

          v18 = *(inited + 24);
        }

        else
        {
          v23 = v15;
          v24 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7CA28E4(0, *(v8 + 2) + 1, 1, v8);
          }

          v20 = *(v8 + 2);
          v19 = *(v8 + 3);
          if (v20 >= v19 >> 1)
          {
            v8 = sub_1B7CA28E4((v19 > 1), v20 + 1, 1, v8);
          }

          *(v8 + 2) = v20 + 1;
          v21 = &v8[16 * v20];
          *(v21 + 4) = v23;
          *(v21 + 5) = v24;
        }
      }

      else
      {
        swift_setDeallocating();
        v9 = *(inited + 16);

        v10 = *(inited + 24);

        sub_1B7AEE190(&v25, &qword_1EBA52298, &unk_1B7D10570);
      }

      swift_beginAccess();

      v11 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
    }

    while (v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *SqlOperation.objects(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      inited = swift_initStackObject();
      v10 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v10;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v16);
      if (*(&v16 + 1))
      {
        v20[0] = v16;
        v20[1] = v17;
        v20[2] = v18;
        v20[3] = v19;
        v11 = v17;
        sub_1B7C26C78(v20);
        SqlOperation.Row.object(forColumnIndex:)(v11, &v21);
        if (*(&v22 + 1))
        {
          sub_1B7C255E0(&v21, v23);
          sub_1B7AED284(v23, v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7CA31C8(0, *(v8 + 2) + 1, 1, v8);
          }

          v14 = *(v8 + 2);
          v13 = *(v8 + 3);
          if (v14 >= v13 >> 1)
          {
            v8 = sub_1B7CA31C8((v13 > 1), v14 + 1, 1, v8);
          }

          sub_1B7AE9168(v23);
          *(v8 + 2) = v14 + 1;
          sub_1B7C255E0(v20, &v8[32 * v14 + 32]);
          goto LABEL_8;
        }
      }

      else
      {

        sub_1B7AEE190(&v16, &qword_1EBA52298, &unk_1B7D10570);
        v21 = 0u;
        v22 = 0u;
      }

      sub_1B7AEE190(&v21, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_8:
      swift_beginAccess();

      v12 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
      if (!v12)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

  return v8;
}

sqlite3_int64 _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
      v6 = v17;
      v7 = v18;
      v8 = v19;
      swift_endAccess();
      v20 = v6;
      v21 = v7;
      v22 = v8;
      if (IMDSqlColumnGetType(&v20) == 1)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        result = IMDInt64FromSqlColumn(&v20);
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA21C0(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_1B7CA21C0((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        *&v2[8 * v16 + 32] = v14;
      }

      else
      {
LABEL_5:
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

unint64_t sub_1B7CAD628()
{
  result = qword_1EBA53430;
  if (!qword_1EBA53430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53430);
  }

  return result;
}

unint64_t sub_1B7CAD680()
{
  result = qword_1EBA53438;
  if (!qword_1EBA53438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53438);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SqlOperation.RowIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for SqlOperation.RowIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for SqlOperation.RowIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B7CAD7EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B7CAD834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CAD88C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B7CFEB10();
  if (v0[3])
  {
    v4 = v0[3];
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CADCA8(&qword_1EBA53458, MEMORY[0x1E697BD38]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  MEMORY[0x1B8CAE910](*(v0[4] + 16));
  return MEMORY[0x1B8CAE910](v0[2]);
}

uint64_t sub_1B7CAD964(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B7CAD9C8()
{
  sub_1B7CFF7C0();
  sub_1B7CAD88C();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CADA0C()
{
  sub_1B7CFF7C0();
  sub_1B7CAD88C();
  return sub_1B7CFF800();
}

BOOL sub_1B7CADA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B7CADB8C(v5, v7);
}

unint64_t sub_1B7CADA98()
{
  result = qword_1EBA53440;
  if (!qword_1EBA53440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53440);
  }

  return result;
}

unint64_t sub_1B7CADAF0()
{
  result = qword_1EBA53448;
  if (!qword_1EBA53448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53448);
  }

  return result;
}

BOOL sub_1B7CADB8C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B7CFF590() & 1) == 0)
  {
    return 0;
  }

  v5 = a2[3];
  if (a1[3])
  {
    v9 = a1[3];
    if (!v5)
    {
      return 0;
    }

    v8 = a2[3];
    sub_1B7CFE960();
    sub_1B7CADCA8(qword_1EBA53460, MEMORY[0x1E697BD38]);

    v6 = sub_1B7CFEA20();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_1B7CADCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7CADCF0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CADD28()
{
  type metadata accessor for SQLEntitySnapshotEncoder.KeyedRecordEncoder();

  swift_getWitnessTable();
  return sub_1B7CFF530();
}

uint64_t sub_1B7CADDE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1B7CADD28();
}

uint64_t sub_1B7CADEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 48);
  if (*(v5 + 16) && (v8 = sub_1B7AE11D0(a2, a3), (v9 & 1) != 0))
  {
    v19 = *(*(v5 + 56) + 16 * v8);
    sub_1B7AE90A8(a1, v20);
    swift_beginAccess();
    v10 = *(a5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B7CA32D8(0, v10[2] + 1, 1, v10);
      *(a5 + 16) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B7CA32D8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[7 * v13];
    v15 = v20[0];
    v16 = v20[1];
    v14[10] = v21;
    *(v14 + 3) = v15;
    *(v14 + 4) = v16;
    *(v14 + 2) = v19;
    *(a5 + 16) = v10;
    return swift_endAccess();
  }

  else
  {
    sub_1B7CAEED8();
    swift_allocError();
    *v18 = xmmword_1B7D09AC0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B7CAE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = a5;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v18[3] = a4;
  v12 = sub_1B7C1A14C(v18);
  (*(*(a4 - 8) + 16))(v12, a1, a4);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = sub_1B7CFF890();
  sub_1B7CADEB4(v18, v15, v16, v9, v10);

  return sub_1B7AE9168(v18);
}

uint64_t sub_1B7CAE120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v35 = *(a4 - 8);
  v36 = a1;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFE5C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v37 = *(a3 + 24);
  v38 = a2;
  v15 = sub_1B7CFF890();
  v17 = v16;
  (*(v10 + 104))(v13, *MEMORY[0x1E697BB70], v9);
  v18 = sub_1B7CFE5B0();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  if (v15 == v18 && v17 == v20)
  {
  }

  else
  {
    v22 = sub_1B7CFF590();

    if ((v22 & 1) == 0)
    {
      v24 = v39;
      (*(v35 + 16))(v8, v36, v39);
      sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
      if (swift_dynamicCast())
      {
        sub_1B7AE910C(v40, v42);
        v25 = *v34;
        v26 = v34[1];
        v27 = v34[2];
        v28 = sub_1B7CFF890();
        sub_1B7CADEB4(v42, v28, v29, v25, v26);
        sub_1B7AE9168(v42);
      }

      else
      {
        v41 = 0;
        memset(v40, 0, sizeof(v40));
        sub_1B7C1A0C8(v40);
        v30 = sub_1B7CFF890();
        v32 = v31;
        sub_1B7CAEED8();
        swift_allocError();
        *v33 = v30;
        v33[1] = v32;
        v33[2] = v24;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1B7CAE438(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
  v5 = sub_1B7AF6C94(&qword_1EBA50E68);
  sub_1B7AF6C94(&qword_1EBA523D8);
  return sub_1B7CAE028(&v7, a1, a2, v4, v5);
}

uint64_t sub_1B7CAE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_1B7CAE028(v5, a3, a4, MEMORY[0x1E69E6158], &off_1F2FA8B58);
}

uint64_t sub_1B7CAEDE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B7CAEE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CAEE94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B7CAEED8()
{
  result = qword_1EBA534E8;
  if (!qword_1EBA534E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA534E8);
  }

  return result;
}

uint64_t sub_1B7CAEF2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7CAEF44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7CAEF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B7CAEFF8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7CAF02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v59 = a1;
  v10 = sub_1B7CFE710();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v47 - v12;
  v14 = *(v4 + 32);

  v15 = sub_1B7CFE8A0();

  if (!v15)
  {
    goto LABEL_9;
  }

  v58 = v6;
  v16 = *(*(v6 + 56) + 32);

  v17 = sub_1B7CFE880();
  if (!*(v16 + 16))
  {

    goto LABEL_8;
  }

  v56 = v13;
  v57 = a4;
  v19 = sub_1B7AE11D0(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = *(*(v16 + 56) + 8 * v19);

  v23 = *(v58 + 72);

  v24 = sub_1B7CB2974(v59, v22, 1, a2, a3);
  if (v5)
  {
  }

  v50 = v24;
  v51 = v25;
  v52 = v26;
  v53 = 0;
  v54 = v22;
  v55 = v23;
  v47[0] = a2;
  v28 = v22[4];
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v47[2] = a3;
    v48 = v15;
    v77 = MEMORY[0x1E69E7CC0];

    v49 = v29;
    sub_1B7C31430(0, v29, 0);
    v31 = v49;
    v32 = 0;
    v30 = v77;
    v33 = v28 + 32;
    v47[1] = v28;
    v60 = *(v28 + 16);
    while (v60 != v32)
    {
      sub_1B7AEBEFC(v33, v75);
      v64 = v32;
      v70 = v75[5];
      v71 = v75[6];
      v72 = v75[7];
      v73 = v76;
      v66 = v75[1];
      v67 = v75[2];
      v68 = v75[3];
      v69 = v75[4];
      v65 = v75[0];
      sub_1B7C2569C(&v64, &v62, &qword_1EBA53540, &qword_1B7D11EE8);
      v34 = v63[1];
      v61 = v63[0];

      sub_1B7AEBF70(v63);
      sub_1B7AEE190(&v64, &qword_1EBA53540, &qword_1B7D11EE8);
      v77 = v30;
      v36 = v30[2];
      v35 = v30[3];
      if (v36 >= v35 >> 1)
      {
        sub_1B7C31430((v35 > 1), v36 + 1, 1);
        v31 = v49;
        v30 = v77;
      }

      ++v32;
      v30[2] = v36 + 1;
      v37 = &v30[3 * v36];
      v37[4] = v61;
      v37[5] = v34;
      v37[6] = v32;
      v33 += 136;
      if (v31 == v32)
      {

        v15 = v48;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v74 = &unk_1F2FA23A8;
    sub_1B7C50F30(v30);
    if (*(v74 + 16))
    {
      sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
      v38 = sub_1B7CFF380();
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC8];
    }

    v74 = v38;

    v40 = v53;
    sub_1B7CB2264(v39, 1, &v74);
    if (!v40)
    {

      v41 = v74;
      v74 = MEMORY[0x1E69E7CC0];
      v42 = sub_1B7AE3B2C(v50, v51, 0);

      v43 = v54;

      v44 = v58;

      sub_1B7C9523C(v52, v42, v43, v15, v41, v44, &v74);

      v45 = v47[0];
      sub_1B7CFE580();
      sub_1B7CFE570();
      v46 = sub_1B7CFE6C0();
      sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08]);

      sub_1B7CAF634(v45, v46);
      sub_1B7CFE560();
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B7CAF634(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFE7C0();
  swift_getTupleTypeMetadata2();
  v4 = sub_1B7CFED10();
  v5 = sub_1B7CB3434(&qword_1EBA52048, MEMORY[0x1E697BC90]);
  v6 = sub_1B7CB2688(v4, v3, a2, v5);

  return v6;
}

uint64_t sub_1B7CAF6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v3 + 32);

  v10 = sub_1B7CFE8A0();

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(*(v5 + 56) + 32);

  v12 = sub_1B7CFE880();
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_1B7AE11D0(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return a3;
  }

  v17 = *(*(v11 + 56) + 8 * v14);

  v18 = *(v5 + 72);

  v19 = sub_1B7CB2974(a1, v17, 0, a2, a3);
  if (v4)
  {
  }

  else
  {
    v23 = v21;
    v24 = sub_1B7AE3B2C(v19, v20, 0);

    v25 = MEMORY[0x1E69E7CC0];

    sub_1B7AF2C24(v23, v24, &v25, v24);

    if (*(v25 + 16))
    {
      a3 = *(v25 + 32);
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

size_t sub_1B7CAF964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v3[4];

  v10 = sub_1B7CFE8A0();

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(v5[7] + 32);

  v12 = sub_1B7CFE880();
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_1B7AE11D0(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v17 = *(*(v11 + 56) + 8 * v14);

  v18 = v5[9];

  v19 = sub_1B7CB2974(a1, v17, 2, a2, a3);
  if (v4)
  {
  }

  else
  {
    v23 = v21;
    v25 = MEMORY[0x1E69E7CC0];
    v24 = sub_1B7AE3B2C(v19, v20, 0);

    sub_1B7C958A4(v23, v24, v5, v10, &v25);

    return v25;
  }
}

uint64_t sub_1B7CAFBE0(size_t *a1, void *a2, void *a3, size_t *a4)
{
  v10 = sub_1B7CFE7C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if (!a1[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = a1[5];
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    a3 = sub_1B7CA3450(0, a3[2] + 1, 1, a3);
    *a1 = a3;
    goto LABEL_7;
  }

  v29 = v14;
  v30 = a4;
  v18 = sqlite3_column_int64(a1[4], v17);
  v19 = a2[2];
  v20 = a2[3];

  sub_1B7CFE880();
  v31 = v18;
  sub_1B7CFE7B0();
  if (v4)
  {
  }

  swift_beginAccess();
  v22 = a2[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = a2[10];
  a2[10] = 0x8000000000000000;
  sub_1B7CA61B0(v18, v16, isUniquelyReferenced_nonNull_native);
  a2[10] = v32;
  swift_endAccess();
  v5 = v29;
  (*(v11 + 16))(v29, v16, v10);
  a1 = v30;
  a3 = *v30;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = a3;
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v26 = a3[2];
  v25 = a3[3];
  if (v26 >= v25 >> 1)
  {
    *a1 = sub_1B7CA3450(v25 > 1, v26 + 1, 1, a3);
  }

  (*(v11 + 8))(v16, v10);
  v27 = *a1;
  *(v27 + 16) = v26 + 1;
  return (*(v11 + 32))(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v5, v10);
}

uint64_t sub_1B7CAFEE8(uint64_t a1)
{
  if (*(v1[9] + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration) == 1)
  {
    v11 = MEMORY[0x1E69E7CC8];
    sub_1B7CB0004(a1, v1, &v11);
    if (v2)
    {
    }

    else
    {
      v6 = v1[2];
      v5 = v1[3];

      sub_1B7C24BE0(MEMORY[0x1E69E7CC0]);
      v7 = sub_1B7C107FC(&qword_1EBA53510, &unk_1B7D134C0);
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      v10 = sub_1B7CFE5A0();

      return v10;
    }
  }

  else
  {
    sub_1B7CB202C();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B7CB0004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v59 = a2;
  v6 = sub_1B7C107FC(&qword_1EBA53518, &qword_1B7D11ED8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v44 - v8;
  v51 = sub_1B7CFE7C0();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v15 = sub_1B7CFE6C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = sub_1B7C107FC(&qword_1EBA53520, &qword_1B7D11EE0);
  v44[1] = a1;
  result = sub_1B7CFE5F0();
  v21 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v22 = 0;
    v47 = (v9 + 16);
    v48 = v16 + 16;
    v45 = (v9 + 8);
    v46 = (v9 + 56);
    v49 = (v16 + 8);
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v23 = *(v16 + 16);
      v23(v19, v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, v15);
      v57 = v15;
      v58 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08]);
      v24 = sub_1B7C1A14C(v56);
      v23(v24, v19, v15);
      sub_1B7CB0598(v56, v14);
      if (v4)
      {
        break;
      }

      ++v22;
      sub_1B7AE9168(v56);
      v55 = 0;
      v25 = v16;
      v26 = v15;
      v27 = v21;
      v28 = v52;
      sub_1B7CFE6B0();
      v29 = v53;
      v30 = v19;
      v31 = v51;
      (*v47)(v53, v14, v51);
      (*v46)(v29, 0, 1, v31);
      v32 = v28;
      v21 = v27;
      v15 = v26;
      v16 = v25;
      v4 = v55;
      sub_1B7CE0D14(v29, v32);
      v33 = v31;
      v19 = v30;
      (*v45)(v14, v33);
      result = (*v49)(v30, v15);
      if (v50 == v22)
      {
        goto LABEL_6;
      }
    }

    (*v49)(v19, v15);
LABEL_19:

    return sub_1B7AE9168(v56);
  }

  else
  {
LABEL_6:

    result = sub_1B7CFE5E0();
    v34 = result;
    v35 = *(result + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        v37 = v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v36;
        v57 = v15;
        v58 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08]);
        v38 = sub_1B7C1A14C(v56);
        (*(v16 + 16))(v38, v37, v15);
        sub_1B7CB0FB8(v56);
        if (v4)
        {
          goto LABEL_19;
        }

        ++v36;
        result = sub_1B7AE9168(v56);
        if (v35 == v36)
        {
          goto LABEL_11;
        }
      }

LABEL_21:
      __break(1u);
    }

    else
    {
LABEL_11:

      result = sub_1B7CFE5D0();
      v39 = result;
      v40 = *(result + 16);
      if (!v40)
      {
      }

      v41 = 0;
      while (v41 < *(v39 + 16))
      {
        v42 = v39 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v41;
        v57 = v15;
        v58 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08]);
        v43 = sub_1B7C1A14C(v56);
        (*(v16 + 16))(v43, v42, v15);
        sub_1B7CB16D0(v56);
        if (v4)
        {
          goto LABEL_19;
        }

        ++v41;
        result = sub_1B7AE9168(v56);
        if (v40 == v41)
        {
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CB0598@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v80 = a2;
  v6 = sub_1B7CFE7C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v2;
  v11 = v2[4];

  v12 = sub_1B7CFE820();

  v13 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v14 = sub_1B7CFE7A0();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  if (!*(v12 + 16))
  {

    goto LABEL_8;
  }

  v17 = sub_1B7AE11D0(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_8:

LABEL_11:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v20 = *(*(v12 + 56) + 8 * v17);

  v21 = v81;
  v22 = *(v81[7] + 32);

  v23 = sub_1B7CFE880();
  if (!*(v22 + 16))
  {

    goto LABEL_10;
  }

  v25 = sub_1B7AE11D0(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v79 = v20;
  v28 = *(*(v22 + 56) + 8 * v25);

  v29 = v21[9];
  type metadata accessor for SQLEntitySnapshotEncoder.SQLStatementBuilder();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E7CC0];
  *(v30 + 16) = MEMORY[0x1E69E7CC0];
  v78 = v29;

  v32 = sub_1B7C249D0(v31);
  v33 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v94 = &type metadata for SQLEntitySnapshotEncoder.UpdateStatementEncoder;
  v95 = sub_1B7CB2634();
  v34 = swift_allocObject();
  v91 = v34;
  v34[2] = v28;
  v34[3] = v30;
  v34[4] = MEMORY[0x1E69E7CC0];
  v34[5] = v32;
  v35 = *(v33 + 16);

  sub_1B7CFE9A0();
  v36 = v4;
  if (v4)
  {

    return sub_1B7AE9168(&v91);
  }

  else
  {

    sub_1B7AE9168(&v91);
    swift_beginAccess();
    v38 = *(v30 + 16);

    v40 = *(v28 + 16);
    v39 = *(v28 + 24);
    v41 = *(v38 + 16);
    v77 = v28;
    if (v41)
    {
      v74 = v40;
      v76 = 0;
      v82[0] = MEMORY[0x1E69E7CC0];
      v75 = v39;

      sub_1B7AE70B4(0, v41, 0);
      v73[1] = v38;
      v42 = v38 + 32;
      v43 = v82[0];
      v44 = v38 + 32;
      v45 = v41;
      do
      {
        sub_1B7C2569C(v44, &v91, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7C2569C(&v91, &v88, &qword_1EBA53408, &unk_1B7D114E0);
        v46 = v88;
        v47 = v89;
        v85 = v88;
        v86 = v89;
        sub_1B7AE910C(v90, v87);

        sub_1B7AEE190(&v85, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7AEE190(&v91, &qword_1EBA53408, &unk_1B7D114E0);
        v82[0] = v43;
        v49 = *(v43 + 16);
        v48 = *(v43 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1B7AE70B4((v48 > 1), v49 + 1, 1);
          v43 = v82[0];
        }

        *(v43 + 16) = v49 + 1;
        v50 = v43 + 16 * v49;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        v44 += 56;
        --v45;
      }

      while (v45);
      v73[0] = v43;
      v96 = MEMORY[0x1E69E7CC0];
      sub_1B7AF5760(0, v41, 0);
      v51 = v96;
      do
      {
        sub_1B7C2569C(v42, &v91, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7C2569C(&v91, &v88, &qword_1EBA53408, &unk_1B7D114E0);
        v85 = v88;
        v86 = v89;
        sub_1B7AE910C(v90, v87);
        sub_1B7AE90A8(v87, v82);
        sub_1B7AEE190(&v85, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7AEE190(&v91, &qword_1EBA53408, &unk_1B7D114E0);
        v96 = v51;
        v53 = *(v51 + 16);
        v52 = *(v51 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B7AF5760((v52 > 1), v53 + 1, 1);
        }

        v54 = v83;
        v55 = v84;
        v56 = sub_1B7C1542C(v82, v83);
        v57 = *(*(v54 - 8) + 64);
        v58 = MEMORY[0x1EEE9AC00](v56);
        v60 = v73 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v61 + 16))(v60, v58);
        sub_1B7CB5BB0(v53, v60, &v96, v54, v55);
        sub_1B7AE9168(v82);
        v51 = v96;
        v42 += 56;
        --v41;
      }

      while (v41);

      v36 = v76;
      v62 = MEMORY[0x1E69E7CC0];
      v39 = v75;
      v40 = v74;
      v63 = v73[0];
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
      v63 = MEMORY[0x1E69E7CC0];
      v62 = MEMORY[0x1E69E7CC0];
    }

    v91 = 0;
    v92 = 0xE000000000000000;
    v93 = v62;
    MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
    MEMORY[0x1B8CADCA0](v40, v39);

    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    sub_1B7CB5600(v63);

    MEMORY[0x1B8CADCA0](0x5345554C41562029, 0xE900000000000020);
    sub_1B7AF57A0(v51);

    v64 = v93;
    v65 = v78;
    sub_1B7AE3B2C(v91, v92, 0);
    v66 = v81;
    v67 = v80;
    if (v36)
    {
    }

    else
    {
      sub_1B7AF3FE4(v64);

      insert_rowid = sqlite3_last_insert_rowid(*(v65 + 16));
      v69 = v66[2];
      v70 = v66[3];

      sub_1B7CFE880();
      v91 = insert_rowid;
      sub_1B7CFE7B0();

      swift_beginAccess();
      v71 = v66[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v66[10];
      v66[10] = 0x8000000000000000;
      sub_1B7CA61B0(insert_rowid, v67, isUniquelyReferenced_nonNull_native);
      v66[10] = v88;
      swift_endAccess();
    }
  }
}

uint64_t sub_1B7CB0FB8(void *a1)
{
  v3 = sub_1B7CFE7C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v65 = v1;
  v10 = *(v1 + 32);

  v11 = sub_1B7CFE820();

  v12 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v56 = v12;
  sub_1B7CFE550();
  v13 = sub_1B7CFE7A0();
  v15 = v14;
  v16 = *(v4 + 8);
  v58 = v3;
  v17 = v3;
  v18 = v16;
  v16(v9, v17);
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v19 = sub_1B7AE11D0(v13, v15);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

LABEL_14:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = *(*(v11 + 56) + 8 * v19);

  v23 = *(*(v65 + 56) + 32);

  v24 = sub_1B7CFE880();
  if (!*(v23 + 16))
  {

LABEL_13:

    goto LABEL_14;
  }

  v54 = v22;
  v26 = sub_1B7AE11D0(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {

    goto LABEL_13;
  }

  v53 = *(*(v23 + 56) + 8 * v26);

  v29 = v65;
  v30 = *(v65 + 72);

  v31 = v57;
  sub_1B7CFE550();
  swift_beginAccess();
  v32 = *(v29 + 80);
  if (*(v32 + 16) && (v33 = sub_1B7C40430(v31), (v34 & 1) != 0))
  {
    v65 = v30;
    v56 = *(*(v32 + 56) + 8 * v33);
    swift_endAccess();
    v18(v31, v58);
    type metadata accessor for SQLEntitySnapshotEncoder.SQLStatementBuilder();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E7CC0];
    *(v35 + 16) = MEMORY[0x1E69E7CC0];

    v37 = sub_1B7C249D0(v36);
    v38 = a1[4];
    v39 = v53;
    sub_1B7AE9124(a1, a1[3]);
    v63 = &type metadata for SQLEntitySnapshotEncoder.UpdateStatementEncoder;
    v64 = sub_1B7CB2634();
    v40 = swift_allocObject();
    *&v62 = v40;
    v40[2] = v39;
    v40[3] = v35;
    v40[4] = v36;
    v40[5] = v37;
    v41 = *(v38 + 16);

    v42 = v55;
    sub_1B7CFE9A0();
    if (v42)
    {

      return sub_1B7AE9168(&v62);
    }

    else
    {
      v45 = v56;

      sub_1B7AE9168(&v62);
      swift_beginAccess();
      v46 = *(v35 + 16);

      v47 = *(v39 + 16);
      v48 = *(v39 + 24);
      v59 = 0;
      v60 = 0xE000000000000000;
      v61 = v36;

      MEMORY[0x1B8CADCA0](0x20455441445055, 0xE700000000000000);
      MEMORY[0x1B8CADCA0](v47, v48);

      MEMORY[0x1B8CADCA0](0x2054455320, 0xE500000000000000);
      sub_1B7CB573C(v46);

      MEMORY[0x1B8CADCA0](0x5220455245485720, 0xEF203D204449574FLL);
      v49 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1B7AE3A9C(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1B7AE3A9C((v50 > 1), v51 + 1, 1, v49);
      }

      v63 = MEMORY[0x1E69E7360];
      v64 = &off_1F2FA8A78;
      *&v62 = v45;
      v49[2] = v51 + 1;
      sub_1B7AE910C(&v62, &v49[5 * v51 + 4]);
      v61 = v49;
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      sub_1B7AE3B2C(v59, v60, 0);
      sub_1B7AF3FE4(v49);
    }
  }

  else
  {
    swift_endAccess();
    v18(v31, v58);
    sub_1B7CB202C();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B7CB16D0(void *a1)
{
  v3 = sub_1B7CFE7C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v42 - v8;
  v49 = v1;
  v10 = *(v1 + 32);

  v11 = sub_1B7CFE820();

  v12 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v13 = sub_1B7CFE7A0();
  v15 = v14;
  v43 = *(v4 + 8);
  v43(v9, v3);
  if (!*(v11 + 16))
  {

    goto LABEL_12;
  }

  v16 = sub_1B7AE11D0(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:

LABEL_16:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v19 = *(*(v11 + 56) + 8 * v16);

  v20 = *(*(v49 + 56) + 32);

  v21 = sub_1B7CFE880();
  if (!*(v20 + 16))
  {

LABEL_15:

    goto LABEL_16;
  }

  v42[1] = v19;
  v23 = sub_1B7AE11D0(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {

    goto LABEL_15;
  }

  v26 = *(*(v20 + 56) + 8 * v23);

  v27 = v49;
  v42[0] = *(v49 + 72);

  v28 = v44;
  sub_1B7CFE550();
  swift_beginAccess();
  v29 = *(v27 + 80);
  if (!*(v29 + 16) || (v30 = sub_1B7C40430(v28), (v31 & 1) == 0))
  {
    swift_endAccess();
    v43(v28, v3);
    sub_1B7CB202C();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
  }

  v32 = v28;
  v33 = *(*(v29 + 56) + 8 * v30);
  swift_endAccess();
  v43(v32, v3);
  v35 = *(v26 + 16);
  v34 = *(v26 + 24);
  strcpy(v48, "DELETE FROM ");
  BYTE5(v48[1]) = 0;
  HIWORD(v48[1]) = -5120;

  MEMORY[0x1B8CADCA0](v35, v34);

  MEMORY[0x1B8CADCA0](0x5220455245485720, 0xEF203D204449574FLL);
  v36 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v38 = v36[2];
  v37 = v36[3];
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1B7AE3A9C((v37 > 1), v38 + 1, 1, v36);
  }

  v46 = MEMORY[0x1E69E7360];
  v47 = &off_1F2FA8A78;
  *&v45 = v33;
  v36[2] = v38 + 1;
  sub_1B7AE910C(&v45, &v36[5 * v38 + 4]);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  v39 = v42[2];
  sub_1B7AE3B2C(v48[0], v48[1], 0);
  if (v39)
  {
  }

  sub_1B7AF3FE4(v36);
}

uint64_t sub_1B7CB1C78()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[10];

  return swift_deallocClassInstance();
}

unint64_t sub_1B7CB1D1C()
{
  result = qword_1EBA534F8;
  if (!qword_1EBA534F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA534F8);
  }

  return result;
}

uint64_t sub_1B7CB1DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1B7CB1DF0@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
}

unint64_t sub_1B7CB1E54(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = swift_allocObject();
  result = sub_1B7C24BBC(MEMORY[0x1E69E7CC0]);
  *(v5 + 72) = v4;
  *(v5 + 80) = result;
  *(v5 + 40) = v2;
  v7 = *(a1 + 1);
  *(v5 + 48) = v7;
  *(v5 + 64) = v3;
  if (v3)
  {
    *(v5 + 32) = v3;
    *(v5 + 16) = v2;
    *(v5 + 24) = v7;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CB202C()
{
  result = qword_1EBA53508;
  if (!qword_1EBA53508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53508);
  }

  return result;
}

unint64_t sub_1B7CB2080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B7CFE9B0();

  return sub_1B7CB20DC(a1, v9, a2, a3);
}

unint64_t sub_1B7CB20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_1B7CFEA20();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void sub_1B7CB2264(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7AEE574(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1B7AE11D0(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1B7CE8360();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_1B7AE11D0(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1B7AEE574(v32, 1);
        v33 = *a3;
        v28 = sub_1B7AE11D0(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_1B7CB25E0()
{
  result = qword_1EBA53528;
  if (!qword_1EBA53528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53528);
  }

  return result;
}

unint64_t sub_1B7CB2634()
{
  result = qword_1EBA53530;
  if (!qword_1EBA53530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53530);
  }

  return result;
}

uint64_t sub_1B7CB2688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B7CFED50())
  {
    sub_1B7CFF390();
    v13 = sub_1B7CFF380();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B7CFED50();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B7CFED30())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B7CFF230();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B7CB2080(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B7CB2974(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v91 = a3;
  v107 = a4;
  v9 = sub_1B7CFE1B0();
  v86 = sub_1B7CFEFF0();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v81 - v11;
  v98 = a4;
  v97 = a5;
  v12 = sub_1B7CFE710();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  v95 = v9;
  v94 = *(v9 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v81 - v27;
  v28 = a2[3];
  v96 = a2[2];
  v92 = v28;
  v90 = a2;
  v29 = a2[4];
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v99 = a1;
  if (v30)
  {
    v100 = v13;
    v82 = v12;
    *&v102 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v30, 0);
    v32 = v102;
    v33 = v29 + 32;
    do
    {
      sub_1B7AEBEFC(v33, &v103);
      v34 = v104;
      v35 = v105;

      sub_1B7AEBF70(&v103);
      *&v102 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B7AECEEC((v36 > 1), v37 + 1, 1);
        v32 = v102;
      }

      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v33 += 136;
      --v30;
    }

    while (v30);
    v12 = v82;
    v13 = v100;
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  if (v91)
  {
    if (v91 == 1)
    {
      *&v103 = v32;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v39 = sub_1B7CFEA10();
      v40 = v13;
      v42 = v41;

      *&v103 = 0x202C4449574F52;
      *(&v103 + 1) = 0xE700000000000000;
      MEMORY[0x1B8CADCA0](v39, v42);
      v13 = v40;

      v43 = *(&v103 + 1);
      v44 = v103;
    }

    else
    {

      v43 = 0xE500000000000000;
      v44 = 0x4449574F52;
    }
  }

  else
  {

    v43 = 0xE800000000000000;
    v44 = 0x292A28544E554F43;
  }

  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_1B7CFF210();

  *&v103 = 0x205443454C4553;
  *(&v103 + 1) = 0xE700000000000000;
  MEMORY[0x1B8CADCA0](v44, v43);

  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](v96, v92);
  v102 = v103;
  v101 = v31;
  v45 = v98;
  v92 = sub_1B7CFE580();
  sub_1B7CFE570();
  v46 = v93;
  sub_1B7CFE700();
  v48 = *(v13 + 8);
  v47 = v13 + 8;
  v96 = v48;
  v48(v22, v12);
  v49 = v94;
  v50 = v95;
  if ((*(v94 + 48))(v46, 1, v95) == 1)
  {
    (*(v85 + 8))(v46, v86);
    v100 = v47;
  }

  else
  {
    v51 = v46;
    v52 = v87;
    (*(v49 + 32))(v87, v51, v50);
    v53 = v84;
    (*(v49 + 16))(v84, v52, v50);
    v54 = v90;

    v55 = sub_1B7C1A3BC(v53, v54, v45);
    if (!v56)
    {

      sub_1B7CB33E0();
      swift_allocError();
      swift_willThrow();
      return (*(v49 + 8))(v52, v50);
    }

    *&v103 = 0x20455245485720;
    *(&v103 + 1) = 0xE700000000000000;
    MEMORY[0x1B8CADCA0](v55);
    v100 = v47;
    MEMORY[0x1B8CADCA0](v103, *(&v103 + 1));

    sub_1B7AF3098(v57);

    (*(v49 + 8))(v52, v50);
  }

  v58 = v88;
  sub_1B7CFE570();
  v59 = sub_1B7CFE6F0();
  v60 = v96;
  v96(v58, v12);
  *&v103 = v59;
  v61 = v98;
  sub_1B7CFDD30();
  sub_1B7CFED70();
  swift_getWitnessTable();
  v62 = sub_1B7CFEE60();

  if ((v62 & 1) == 0)
  {
    sub_1B7CFE570();
    v63 = sub_1B7CFE6F0();
    v60(v58, v12);
    v64 = v90;

    v65 = sub_1B7CA7518(v63, v64, v61, v97);
    *&v103 = 0x4220524544524F20;
    *(&v103 + 1) = 0xEA00000000002059;
    MEMORY[0x1B8CADCA0](v65);

    MEMORY[0x1B8CADCA0](v103, *(&v103 + 1));
  }

  v66 = v89;
  sub_1B7CFE570();
  v67 = sub_1B7CFE6D0();
  v69 = v68;
  v60(v66, v12);
  if ((v69 & 1) == 0)
  {
    MEMORY[0x1B8CADCA0](0x3F2054494D494C20, 0xE800000000000000);
    v70 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1B7AE3A9C(0, v70[2] + 1, 1, v70);
    }

    v72 = v70[2];
    v71 = v70[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_1B7AE3A9C((v71 > 1), v72 + 1, 1, v70);
    }

    v73 = MEMORY[0x1E69E6530];
    v105 = MEMORY[0x1E69E6530];
    v106 = &off_1F2FA89F8;
    *&v103 = v67;
    v70[2] = v72 + 1;
    sub_1B7AE910C(&v103, &v70[5 * v72 + 4]);
    v101 = v70;
    v74 = v83;
    sub_1B7CFE570();
    v75 = sub_1B7CFE6E0();
    v77 = v76;
    v96(v74, v12);
    if ((v77 & 1) == 0 && v75 >= 1)
    {
      MEMORY[0x1B8CADCA0](0x2054455346464F20, 0xE90000000000003FLL);
      v79 = v70[2];
      v78 = v70[3];
      if (v79 >= v78 >> 1)
      {
        v70 = sub_1B7AE3A9C((v78 > 1), v79 + 1, 1, v70);
      }

      v105 = v73;
      v106 = &off_1F2FA89F8;
      *&v103 = v75;
      v70[2] = v79 + 1;
      sub_1B7AE910C(&v103, &v70[5 * v79 + 4]);
      v101 = v70;
    }
  }

  return v102;
}

unint64_t sub_1B7CB33E0()
{
  result = qword_1EBA53538;
  if (!qword_1EBA53538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53538);
  }

  return result;
}

uint64_t sub_1B7CB3434(unint64_t *a1, void (*a2)(uint64_t))
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