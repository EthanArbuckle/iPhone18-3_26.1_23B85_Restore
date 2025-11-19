char *sub_1E6406778(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B8, &qword_1E6601448);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D7D18() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0792B8, &qword_1E6601448);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F6E5C(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F6E5C(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

uint64_t sub_1E6406AB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1E65DA838();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v22;
      if (v22)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v23;
    v19 = v21;
    v20 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1E64F6EF8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v16 = v8[2];
    v15 = v8[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1E64F6EF8((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v8[2] = v17;
    v18 = &v8[4 * v16];
    v18[4] = v19;
    v18[5] = v13;
    v18[6] = v25;
    v18[7] = v20;
  }

  while (v7 != v4);
  return v8;
}

char *sub_1E6406C60(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079608, &qword_1E6601738);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65DC818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D9E18() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED079608, &qword_1E6601738);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F702C(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F702C(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

char *sub_1E6406F8C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B0, &qword_1E6601440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65D8258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D88D8() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0792B0, &qword_1E6601440);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F66F0(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F66F0(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

char *sub_1E64072E4(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v12 = a4(0);
      v14 = *(v12 - 8);
      result = (v12 - 8);
      v13 = v14;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v26, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i);
      if (v4)
      {
        v24 = v28;

        return v24;
      }

      v15 = v27;
      if (v27)
      {
        break;
      }

      if (v9 == v5)
      {
        return v28;
      }
    }

    v25 = v26;
    v16 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1E64F6718(0, *(v16 + 2) + 1, 1, v16);
    }

    v17 = v16;
    v18 = *(v16 + 2);
    v19 = v17;
    v20 = *(v17 + 3);
    v21 = (v18 + 1);
    if (v18 >= v20 >> 1)
    {
      v28 = (v18 + 1);
      v23 = sub_1E64F6718((v20 > 1), v18 + 1, 1, v19);
      v21 = v28;
      v19 = v23;
    }

    *(v19 + 2) = v21;
    v22 = &v19[16 * v18];
    result = v19;
    *(v22 + 4) = v25;
    *(v22 + 5) = v15;
  }

  while (v9 != v5);
  return result;
}

uint64_t sub_1E64074A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1E6420774(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1E6215038(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1E64237E4();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1E641EF5C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

unint64_t sub_1E64075B0(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    v21 = *a1;
    v22 = v5;
    v23 = *(a1 + 32);
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = sub_1E6420AC4(&v21, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
  }

  else
  {
    sub_1E5DFE50C(a1, &qword_1ED0792A0, &qword_1E6601430);
    v9 = *v2;
    v10 = sub_1E5E008AC(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!v14)
      {
        sub_1E6423E9C();
        v15 = v20;
      }

      v16 = (*(v15 + 56) + 48 * v12);
      v18 = v16[1];
      v17 = v16[2];
      v21 = *v16;
      v22 = v18;
      v23 = v17;
      sub_1E641F3F4(v12, v15);
      *v3 = v15;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    return sub_1E5DFE50C(&v21, &qword_1ED0792A0, &qword_1E6601430);
  }

  return result;
}

uint64_t sub_1E64076CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  if ((*(v14 + 48))(a1, 1, v13) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072AB0, &qword_1E65EC480);
    sub_1E64183B8(a2, a3, a4, v12);
    sub_1E6001C2C(a2, a3, a4);
    return sub_1E5DFE50C(v12, &qword_1ED072AB0, &qword_1E65EC480);
  }

  else
  {
    (*(v14 + 32))(v17, a1, v13);
    v19 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_1E6420C24(v17, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = sub_1E6001C2C(a2, a3, a4);
    *v4 = v22;
  }

  return result;
}

uint64_t sub_1E64078D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    sub_1E5DFE50C(a1, &qword_1ED079340, &qword_1E66014A8);
    sub_1E6418548(a2, &v9);
    sub_1E608E17C(a2);
    return sub_1E5DFE50C(&v9, &qword_1ED079340, &qword_1E66014A8);
  }

  else
  {
    v4 = *(a1 + 16);
    v9 = *a1;
    v10[0] = v4;
    *(v10 + 9) = *(a1 + 25);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1E6420F24(&v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E608E17C(a2);
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1E6407998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1E65DF438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0743C0, &qword_1E65F0988);
    v15 = *v3;
    v16 = sub_1E64170B8(a2, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E642491C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1E641FA14(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1E5DFE50C(v9, &qword_1ED0743C0, &qword_1E65F0988);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1E64210BC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1E6407C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0758B0, &qword_1E65F1FB0);
    sub_1E64187B8(a2, a3, &qword_1ED072810, &qword_1E65EBE08, &qword_1ED079480, &qword_1E66015C8, v10);

    return sub_1E5DFE50C(v10, &qword_1ED0758B0, &qword_1E65F1FB0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64217FC(v15, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED072810, &qword_1E65EBE08, &qword_1ED079480, &qword_1E66015C8);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E6407E30(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1E65DAFD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED075F00, &qword_1E65F45F8);
    sub_1E641860C(a2, v8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1E5DFE50C(v8, &qword_1ED075F00, &qword_1E65F45F8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1E642148C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1E6408074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072AB0, &qword_1E65EC480);
    sub_1E64187B8(a2, a3, &qword_1ED072AE0, &qword_1E65F9E00, &qword_1ED0792E8, &qword_1E6601468, v10);

    return sub_1E5DFE50C(v10, &qword_1ED072AB0, &qword_1E65EC480);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64217FC(v15, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED072AE0, &qword_1E65F9E00, &qword_1ED0792E8, &qword_1E6601468);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E6408294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EF0, &qword_1E65FAE38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EF0, &qword_1E65FAE38);
    sub_1E64187B8(a2, a3, &qword_1ED0762E8, &qword_1E65F53C8, &qword_1ED0792E0, &qword_1E6601460, v10);

    return sub_1E5DFE50C(v10, &qword_1ED077EF0, &qword_1E65FAE38);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64217FC(v15, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED0762E8, &qword_1E65F53C8, &qword_1ED0792E0, &qword_1E6601460);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64084B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EE8, &qword_1E65FAE30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EE8, &qword_1E65FAE30);
    sub_1E64187B8(a2, a3, &qword_1ED076308, &qword_1E65F53D8, &qword_1ED0792D8, &qword_1E6601458, v10);

    return sub_1E5DFE50C(v10, &qword_1ED077EE8, &qword_1E65FAE30);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64217FC(v15, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED076308, &qword_1E65F53D8, &qword_1ED0792D8, &qword_1E6601458);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64086D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EE0, &qword_1E65FAE28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EE0, &qword_1E65FAE28);
    sub_1E64187B8(a2, a3, &qword_1ED0762C8, &qword_1E65F53B8, &qword_1ED0792D0, &qword_1E6601450, v10);

    return sub_1E5DFE50C(v10, &qword_1ED077EE0, &qword_1E65FAE28);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64217FC(v15, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED0762C8, &qword_1E65F53B8, &qword_1ED0792D0, &qword_1E6601450);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64088F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788A0, &qword_1E65FDE20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65DBD88();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0788A0, &qword_1E65FDE20);
    sub_1E6418960(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED0788A0, &qword_1E65FDE20);
  }

  else
  {
    sub_1E5E24EEC(a1, v14, MEMORY[0x1E699D2D0]);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64219C4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E6408AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C08, &qword_1E65FF540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65E3468();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED078C08, &qword_1E65FF540);
    sub_1E6418AE0(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED078C08, &qword_1E65FF540);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E6421B30(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E6408CA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079048, &qword_1E6600A10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1E65E0D48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079048, &qword_1E6600A10);
    sub_1E6418C88(a2, v8);
    sub_1E6428F80(a2, MEMORY[0x1E699DD40]);
    return sub_1E5DFE50C(v8, &qword_1ED079048, &qword_1E6600A10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E6421D0C(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E6428F80(a2, MEMORY[0x1E699DD40]);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E6408E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079270, &qword_1E6601400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65DBED8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079270, &qword_1E6601400);
    sub_1E6418E24(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED079270, &qword_1E6601400);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E6421EE8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E640906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079330, &qword_1E6601498);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65E3508();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079330, &qword_1E6601498);
    sub_1E6418FCC(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED079330, &qword_1E6601498);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64220C4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E6409244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D0, &qword_1E6601538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65E2F28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0793D0, &qword_1E6601538);
    sub_1E6419174(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED0793D0, &qword_1E6601538);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E6422490(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E640941C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079510, &qword_1E6601648);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65E31D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079510, &qword_1E6601648);
    sub_1E641931C(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED079510, &qword_1E6601648);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64227E8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64095F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079348, &qword_1E66014B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65E2498();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079348, &qword_1E66014B0);
    sub_1E64194C4(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED079348, &qword_1E66014B0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E64229C4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64097CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079378, &qword_1E66014E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E65DFA08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079378, &qword_1E66014E0);
    sub_1E641966C(a2, a3, v10);

    return sub_1E5DFE50C(v10, &qword_1ED079378, &qword_1E66014E0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E6422BA0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E64099A4(uint64_t result, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1E6409A24(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_1E65D9D28();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v7 + 16;
  v22 = (v7 + 8);
  v24 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v23;
LABEL_9:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v21(&v25, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v22)(v10, v19);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v10, v19);
  }

  else
  {
LABEL_5:
    v19 = v23;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6409C44()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7];
  v9 = sub_1E65D92D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v10 + 32))(v13, v8, v9);
LABEL_7:
    sub_1E65D7698();
    v17 = sub_1E65D92A8();
    (*(v1 + 8))(v4, v0);
    (*(v10 + 8))(v13, v9);
    if (v17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v10 + 32))(v13, v8, v9);
    (*(v1 + 8))(&v8[v15], v0);
    goto LABEL_7;
  }

  v18 = *v8;
  v19 = *(v8 + 1);
  v20 = *(v8 + 2);
  v21 = *(v8 + 4);

  v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v23 = sub_1E65E5C48();

  v24 = [v22 initWithDomain:v23 code:v20 userInfo:0];

  v26[15] = 4;
  sub_1E5FFF464();
  v25 = v24;
  LOBYTE(v23) = sub_1E65D97C8();

  if (v23)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6409F80@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RouteSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DC7D8();
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 != 2 || sub_1E65DC7A8() == 2)
      {
        goto LABEL_4;
      }
    }

    else if (!v6)
    {
      v10 = sub_1E65DC7E8();
      v12 = v11;
      swift_storeEnumTagMultiPayload();
      *a1 = v10;
      a1[1] = v12;
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      v13 = type metadata accessor for RouteDestination();
      sub_1E5E24EEC(v5, a1 + *(v13 + 20), type metadata accessor for RouteSource);
      *(a1 + *(v13 + 24)) = MEMORY[0x1E69E7CD0];
      return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v17 = sub_1E65DC7E8();
        v19 = v18;
        swift_storeEnumTagMultiPayload();
        *a1 = v17;
        a1[1] = v19;
        type metadata accessor for PlaylistType();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v20 = sub_1E65DC7E8();
        v22 = v21;
        swift_storeEnumTagMultiPayload();
        *a1 = v20;
        a1[1] = v22;
      }

      type metadata accessor for RouteResource();
      goto LABEL_18;
    }

    if (v6 != 6)
    {
LABEL_4:
      v7 = sub_1E65DC7E8();
      v9 = v8;
      swift_storeEnumTagMultiPayload();
      *a1 = v7;
      a1[1] = v9;
      type metadata accessor for RouteResource();
LABEL_18:
      swift_storeEnumTagMultiPayload();
      v13 = type metadata accessor for RouteDestination();
      sub_1E6429004(v5, a1 + *(v13 + 20), type metadata accessor for RouteSource);
      *(a1 + *(v13 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E6428F80(v5, type metadata accessor for RouteSource);
      return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }
  }

  v14 = type metadata accessor for RouteDestination();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, 1, 1, v14);
}

uint64_t sub_1E640A330@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v149 = a3;
  v163 = sub_1E65D8F28();
  v150 = *(v163 - 8);
  v5 = *(v150 + 64);
  v6 = MEMORY[0x1EEE9AC00](v163);
  v145 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v148 = v144 - v8;
  v179 = sub_1E65E03F8();
  v9 = *(*(v179 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v179);
  v169 = v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v168 = v144 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v167 = v144 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v166 = v144 - v16;
  v162 = sub_1E65D7048();
  v176 = *(v162 - 8);
  v17 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v161 = v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v160 = (v144 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v178 = v144 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v25 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v177 = (v144 - v26);
  v192 = type metadata accessor for ItemContext();
  v27 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v191 = (v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079638, &qword_1E6601768);
  v29 = *(*(v189 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v189);
  v32 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v188 = v144 - v33;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v186 = *(v187 - 8);
  v34 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v190 = v144 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v147 = (v144 - v38);
  v39 = sub_1E65E0438();
  v195 = *(v39 - 8);
  v196 = v39;
  v40 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v151 = v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v144 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = v144 - v48;
  v144[2] = sub_1E65DC8B8();
  v144[1] = v50;
  v51 = sub_1E65DC8C8();
  LODWORD(v194) = sub_1E640BB10(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v53 = v197;
  v165 = v52;
  v170 = a1;
  LOBYTE(a1) = sub_1E65E0678();
  v54 = sub_1E65DC8F8();
  v56 = v55;
  v57 = sub_1E65DC928();
  v144[3] = v49;
  sub_1E60930E0(v53, a1, v54, v56, v57, v58, v194, v49);

  v146 = v45;
  sub_1E6412180(v45);
  (*(v195 + 104))(v151, *MEMORY[0x1E699D7D8], v196);
  v195 = v3;
  v59 = sub_1E65DC8E8();
  v60 = *(v59 + 16);
  if (!v60)
  {

    v61 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v119 = v150;
    v120 = sub_1E65DC8C8();
    v121 = sub_1E640BB10(v120);
    v196 = v61;
    if (v121 == 44)
    {
      v122 = sub_1E65E28E8();
    }

    else
    {
      v122 = sub_1E65DC8B8();
    }

    v193 = v123;
    v194 = v122;
    v124 = sub_1E65DC8F8();
    v126 = v125;
    v127 = sub_1E65DC8C8();
    v128 = sub_1E640BB10(v127);
    v129 = v145;
    v130 = v163;
    (*(v119 + 104))(v145, **(&unk_1E8797590 + v128 - 2), v163);
    if (v126)
    {
      v131 = v126;
    }

    else
    {
      v131 = 0xE600000000000000;
    }

    v191 = v131;
    if (v126)
    {
      v132 = v124;
    }

    else
    {
      v132 = 0x756F59726F46;
    }

    v133 = *(v119 + 32);
    v134 = v148;
    v133(v148, v129, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = 0x64496F636572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_1E65DC918();
    *(inited + 56) = v136;
    v137 = sub_1E6427498(inited);
    swift_setDeallocating();
    sub_1E5DFE50C(inited + 32, &qword_1ED072378, &qword_1E65EABA8);
    v138 = v147;
    v139 = v193;
    *v147 = v194;
    v138[1] = v139;
    v140 = v191;
    v138[2] = v132;
    v138[3] = v140;
    v141 = type metadata accessor for SectionMetrics();
    v133(v138 + *(v141 + 24), v134, v130);
    *(v138 + *(v141 + 32)) = v137;
    (*(*(v141 - 8) + 56))(v138, 0, 1, v141);
    v195 = type metadata accessor for ActionButtonDescriptor(0);
    v194 = type metadata accessor for ArtworkDescriptor();
    v193 = type metadata accessor for ContextMenu(0);
    v191 = type metadata accessor for ItemMetrics();
    v190 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    v189 = type metadata accessor for ViewDescriptor();
    v188 = sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v187 = sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E642906C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E642906C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v142 = v149;
    sub_1E65E0418();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
    return (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
  }

  v199 = MEMORY[0x1E69E7CC0];
  sub_1E601BE24(0, v60, 0);
  v61 = v199;
  v185 = *(v59 + 16);
  result = sub_1E65DC818();
  v63 = 0;
  v194 = result;
  v64 = *(result - 8);
  v181 = v59 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v193 = v64 + 16;
  v182 = v64;
  v180 = v64 + 32;
  v158 = (v176 + 8);
  v164 = *MEMORY[0x1E699E0A0];
  v157 = *MEMORY[0x1E699E0A8];
  v156 = *MEMORY[0x1E69CBAA0];
  v155 = *MEMORY[0x1E69CC468];
  v154 = *MEMORY[0x1E69CBCD8];
  v153 = (v150 + 104);
  v152 = *MEMORY[0x1E69CCA80];
  v184 = v59;
  v183 = v60;
  while (v185 != v63)
  {
    if (v63 >= *(v59 + 16))
    {
      goto LABEL_34;
    }

    v66 = v188;
    v65 = v189;
    v67 = *(v189 + 48);
    v68 = v182;
    v69 = *(v182 + 16);
    v70 = v194;
    v69(&v188[v67], v181 + *(v182 + 72) * v63, v194);
    *v32 = v63;
    v71 = *(v65 + 48);
    (*(v68 + 32))(&v32[v71], &v66[v67], v70);
    v72 = sub_1E65DC8C8();
    v196 = v61;
    if (v72)
    {
      v73 = sub_1E65DC8C8();
      sub_1E65E0678();
      sub_1E65E0708();
      v74 = byte_1E6601772[v73];
      v75 = v166;
      sub_1E6093784(v197, v74, v166);
      v76 = v168;
      sub_1E6429004(v75, v168, MEMORY[0x1E699D780]);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1E6428F80(v76, MEMORY[0x1E699D780]);
        v77 = v167;
        sub_1E6429004(v75, v167, MEMORY[0x1E699D780]);
LABEL_14:
        v110 = v75;
        v111 = &v32[v71];
        v100 = v32;
        v112 = v191;
        v69(v191, v111, v194);
        v113 = sub_1E65DC508();
        (*(*(v113 - 8) + 104))(v112, v164, v113);
        swift_storeEnumTagMultiPayload();
        sub_1E6429004(v77, v169, MEMORY[0x1E699D780]);
        v114 = v77;
        sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext);
        v107 = v190;
        sub_1E65E04D8();
        v115 = MEMORY[0x1E699D780];
        sub_1E6428F80(v114, MEMORY[0x1E699D780]);
        sub_1E6428F80(v110, v115);
        goto LABEL_15;
      }

      v108 = sub_1E65E0908();
      (*(*(v108 - 8) + 8))(v76, v108);
      if (sub_1E65DC7A8() == 2)
      {
        v109 = sub_1E65DC7D8();
        v77 = v167;
        if (((1 << v109) & 0xEF) != 0)
        {
          goto LABEL_11;
        }

        sub_1E65DC7F8();
        if (v118)
        {

LABEL_11:
          sub_1E65E08C8();
        }

        else
        {
          sub_1E65E08E8();
        }
      }

      else
      {
        v77 = v167;
        sub_1E65E08D8();
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    v78 = sub_1E65DC798();
    v80 = v79;
    v81 = sub_1E65DC7F8();
    v83 = v82;
    v84 = sub_1E65DC7B8();
    v85 = v191;
    *v191 = v78;
    v85[1] = v80;
    v85[2] = v81;
    v85[3] = v83;
    *(v85 + 32) = v84;
    v86 = v85;
    v87 = sub_1E65DC508();
    (*(*(v87 - 8) + 104))(v86, v157, v87);
    swift_storeEnumTagMultiPayload();
    v88 = sub_1E65DC7E8();
    v89 = v177;
    *v177 = v88;
    v89[1] = v90;
    v176 = type metadata accessor for ViewDescriptor();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v175 = type metadata accessor for ContextMenu(0);
    (*(*(v175 - 8) + 56))(v178, 1, 1, v175);
    v197 = sub_1E65DC7E8();
    v198 = v91;
    v92 = v161;
    sub_1E65D7038();
    sub_1E5F9AEA8();
    v93 = sub_1E65E6698();
    (*v158)(v92, v162);

    v197 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150);
    v94 = sub_1E65E5B68();
    v96 = v95;

    v97 = type metadata accessor for ItemMetrics();
    v98 = v97[5];
    v99 = sub_1E65D8C68();
    v100 = v32;
    v101 = v160;
    (*(*(v99 - 8) + 104))(v160 + v98, v156, v99);
    v102 = v97[7];
    v103 = sub_1E65D9908();
    (*(*(v103 - 8) + 104))(v101 + v102, v155, v103);
    (*v153)(v101 + v97[8], v154, v163);
    v104 = v97[10];
    v105 = sub_1E65D9F88();
    (*(*(v105 - 8) + 104))(v101 + v104, v152, v105);
    *v101 = v94;
    v101[1] = v96;
    v106 = (v101 + v97[6]);
    *v106 = 0;
    v106[1] = 0;
    (*(*(v97 - 1) + 56))(v101, 0, 1, v97);
    v174 = type metadata accessor for ActionButtonDescriptor(0);
    v173 = type metadata accessor for ArtworkDescriptor();
    v172 = sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v107 = v190;
    sub_1E65E0488();
LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1E5DFE50C(v100, &qword_1ED079638, &qword_1E6601768);
    v61 = v196;
    v199 = v196;
    v117 = *(v196 + 16);
    v116 = *(v196 + 24);
    v32 = v100;
    if (v117 >= v116 >> 1)
    {
      sub_1E601BE24(v116 > 1, v117 + 1, 1);
      v61 = v199;
    }

    ++v63;
    *(v61 + 16) = v117 + 1;
    result = sub_1E5FAB460(v107, v61 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v117, &qword_1ED0720A8, &qword_1E65EA790);
    v59 = v184;
    if (v183 == v63)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E640BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v259 = a5;
  v278 = a4;
  LODWORD(v287) = a3;
  v271 = a2;
  v276 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v275 = &v240 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v272 = &v240 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v273 = &v240 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v274 = &v240 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v286 = &v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v285 = &v240 - v22;
  v23 = sub_1E65E03F8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v284 = &v240 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v288 = &v240 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v295 = &v240 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v257 = &v240 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v254 = &v240 - v36;
  v255 = sub_1E65DAC98();
  v252 = *(v255 - 8);
  v37 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v249 = &v240 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1E65DB268();
  v39 = *(*(v256 - 8) + 64);
  MEMORY[0x1EEE9AC00](v256);
  v250 = &v240 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_1E65DA0B8();
  v251 = *(v253 - 8);
  v41 = *(v251 + 64);
  v42 = MEMORY[0x1EEE9AC00](v253);
  v248 = &v240 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v247 = &v240 - v44;
  v246 = sub_1E65D9D58();
  v245 = *(v246 - 8);
  v45 = *(v245 + 64);
  v46 = MEMORY[0x1EEE9AC00](v246);
  v244 = &v240 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v243 = &v240 - v48;
  v260 = sub_1E65D8BB8();
  v49 = *(*(v260 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v260);
  v261 = &v240 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v264 = &v240 - v52;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v53 = *(*(v263 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v263);
  v262 = &v240 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v294 = (&v240 - v56);
  v277 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v57 = *(*(v277 - 8) + 64);
  MEMORY[0x1EEE9AC00](v277);
  v241 = &v240 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65DC758();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v258 = &v240 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v265 = &v240 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v281 = &v240 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v242 = &v240 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v240 = &v240 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v293 = &v240 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v290 = &v240 - v74;
  v75 = sub_1E65D7348();
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v77 - 8);
  v279 = &v240 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v83 = &v240 - v82;
  v84 = MEMORY[0x1EEE9AC00](v81);
  v292 = &v240 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v291 = &v240 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v296 = &v240 - v88;
  v283 = sub_1E65DC818();
  v89 = *(v283 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v298 = &v240 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ItemContext();
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v282 = &v240 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v240 - v96;
  v98 = sub_1E65DC508();
  v99 = *(v98 - 8);
  v100 = *(v99 + 64);
  v101 = MEMORY[0x1EEE9AC00](v98);
  v103 = &v240 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v240 - v104;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v289 = a1;
  sub_1E65E04E8();
  v269 = v92;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1E6428F80(v97, type metadata accessor for ItemContext);
LABEL_63:
    v300 = 0;
    v301 = 0xE000000000000000;
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6617030);
    v236 = v282;
    sub_1E65E04E8();
    sub_1E65E69B8();
    sub_1E6428F80(v236, type metadata accessor for ItemContext);
    result = sub_1E65E69D8();
    __break(1u);
    return result;
  }

  (*(v99 + 32))(v105, v97, v98);
  (*(v99 + 16))(v103, v105, v98);
  if ((*(v99 + 88))(v103, v98) != *MEMORY[0x1E699E0A0])
  {
    v235 = *(v99 + 8);
    v235(v105, v98);
    v235(v103, v98);
    goto LABEL_63;
  }

  v267 = v99;
  v106 = *(v99 + 96);
  v268 = v98;
  v106(v103, v98);
  (*(v89 + 32))(v298, v103, v283);
  v107 = *(sub_1E65D8248() + 16);

  v108 = v296;
  v109 = v259;
  v270 = v89;
  v266 = v105;
  if (v107)
  {
    v110 = sub_1E65D8248();
    sub_1E63C4134(v278, v109, v110, v108);

    v111 = 0;
  }

  else
  {
    v111 = 1;
  }

  v112 = sub_1E65D72D8();
  v113 = *(*(v112 - 8) + 56);
  v114 = 1;
  v113(v108, v111, 1, v112);
  v115 = *(sub_1E65D80A8() + 16);

  if (v115)
  {
    v116 = sub_1E65D80A8();
    v117 = v291;
    sub_1E63C4134(v278, v109, v116, v291);

    v114 = 0;
  }

  else
  {
    v117 = v291;
  }

  v113(v117, v114, 1, v112);
  sub_1E65DC808();
  if (v118)
  {
    sub_1E65D7338();
    v119 = v292;
    sub_1E65D72E8();
    v113(v119, 0, 1, v112);
  }

  else
  {
    v120 = *(sub_1E65D8068() + 16);

    if (v120)
    {
      v121 = sub_1E65D8068();
      sub_1E63C4134(v278, v109, v121, v83);

      v122 = 0;
    }

    else
    {
      v122 = 1;
    }

    v113(v83, v122, 1, v112);
    sub_1E5FAB460(v83, v292, &qword_1ED072D90, &qword_1E66040F0);
  }

  v123 = sub_1E65DAE38();
  v124 = sub_1E65DAE38();
  v125 = sub_1E65D80C8();
  v127 = v126;
  v300 = v125;
  v301 = v126;
  v129 = v128 & 1;
  v302 = v128 & 1;
  v299 = 8;
  sub_1E6018A94();
  sub_1E6018AE8();
  v130 = sub_1E65D7FE8();
  sub_1E5F87058(v125, v127, v129);
  if ((v130 & 1) == 0)
  {
    v144 = sub_1E65DC7A8();
    v134 = v290;
    if (v144 != 2)
    {
      v163 = sub_1E65DC848();
      v165 = v164;
      if (v163 == sub_1E65DC848() && v165 == v166)
      {
        goto LABEL_34;
      }

      v167 = sub_1E65E6C18();

      if (v167)
      {
        goto LABEL_35;
      }
    }

    if (sub_1E65DC7A8() == 2)
    {
      goto LABEL_23;
    }

    v168 = sub_1E65DC848();
    v170 = v169;
    if (v168 != sub_1E65DC848() || v170 != v171)
    {
      v234 = sub_1E65E6C18();

      if ((v234 & 1) == 0)
      {
LABEL_23:
        v145 = sub_1E65D80C8();
        v147 = v146;
        v300 = v145;
        v301 = v146;
        v149 = v148 & 1;
        v302 = v148 & 1;
        v299 = 1;
        v150 = sub_1E65D7FE8();
        sub_1E5F87058(v145, v147, v149);
        if ((v150 & 1) != 0 && v123 == v124)
        {
          v151 = type metadata accessor for ActionButtonDescriptor(0);
          v152 = v134 + *(v151 + 20);
          *v152 = sub_1E65D8078();
          *(v152 + 8) = v153;
          v154 = 1;
        }

        else
        {
          v176 = sub_1E65D80C8();
          v178 = v177;
          v300 = v176;
          v301 = v177;
          v180 = v179 & 1;
          v302 = v179 & 1;
          v299 = 4;
          v181 = sub_1E65D7FE8();
          sub_1E5F87058(v176, v178, v180);
          v182 = type metadata accessor for ActionButtonDescriptor(0);
          v151 = v182;
          if ((v181 & 1) == 0 || v123 != v124)
          {
            v184 = *(*(v182 - 8) + 56);
            v184(v134, 1, 1, v182);
            goto LABEL_43;
          }

          v152 = v134 + *(v182 + 20);
          *v152 = sub_1E65D8078();
          *(v152 + 8) = v183;
          v154 = 4;
        }

        *(v152 + 16) = v154;
LABEL_42:
        swift_storeEnumTagMultiPayload();
        sub_1E65D76E8();
        v184 = *(*(v151 - 8) + 56);
        v184(v134, 0, 1, v151);
LABEL_43:
        v184(v293, 1, 1, v151);
        goto LABEL_44;
      }

LABEL_35:
      v151 = type metadata accessor for ActionButtonDescriptor(0);
      v172 = v134 + *(v151 + 20);
      *v172 = 1;
      *(v172 + 8) = 0;
      *(v172 + 16) = 0;
      goto LABEL_42;
    }

LABEL_34:

    goto LABEL_35;
  }

  v131 = v258;
  sub_1E65DC7C8();
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
  v133 = (*(*(v132 - 8) + 48))(v131, 1, v132);
  v134 = v290;
  if (v133 != 1)
  {
    v155 = v131[*(v132 + 48)];
    v156 = type metadata accessor for ActionButtonDescriptor(0);
    v157 = v134 + *(v156 + 20);
    if (v155 == 1)
    {
      v158 = v123 != v124;
      *v157 = sub_1E65D8078();
      *(v157 + 8) = v159;
      *(v157 + 16) = 12;
      swift_storeEnumTagMultiPayload();
      sub_1E65D76E8();
      v160 = *(*(v156 - 8) + 56);
      v160(v134, 0, 1, v156);
      v161 = v241;
      *v241 = v158;
      v131 = v258;
      swift_storeEnumTagMultiPayload();
      v162 = v240;
      sub_1E65D76E8();
      sub_1E5E24EEC(v161, v162 + *(v156 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
      v160(v162, 0, 1, v156);
      sub_1E5FAB460(v162, v293, &qword_1ED072638, &qword_1E65EB950);
    }

    else
    {
      *v157 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1E65D76E8();
      v173 = *(*(v156 - 8) + 56);
      v173(v134, 0, 1, v156);
      v173(v293, 1, 1, v156);
    }

    v174 = v264;
    v175 = sub_1E65D76F8();
    (*(*(v175 - 8) + 8))(v131, v175);
    goto LABEL_45;
  }

  v135 = type metadata accessor for ActionButtonDescriptor(0);
  v136 = v134 + *(v135 + 20);
  *v136 = sub_1E65D8078();
  *(v136 + 8) = v137;
  *(v136 + 16) = 12;
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  v138 = *(*(v135 - 8) + 56);
  v139 = 1;
  v138(v134, 0, 1, v135);
  v140 = v123 == v124;
  v141 = v242;
  if (v140)
  {
    v142 = &v242[*(v135 + 20)];
    *v142 = sub_1E65D8078();
    *(v142 + 1) = v143;
    v142[16] = 8;
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v139 = 0;
  }

  v138(v141, v139, 1, v135);
  sub_1E5FAB460(v141, v293, &qword_1ED072638, &qword_1E65EB950);
LABEL_44:
  v174 = v264;
LABEL_45:
  v185 = v261;
  sub_1E65D8128();
  sub_1E6429004(v174, v185, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v186 = v251;
    v187 = v247;
    v188 = v253;
    (*(v251 + 32))(v247, v185, v253);
    v189 = v248;
    (*(v186 + 16))(v248, v187, v188);
    v190 = v249;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v252 + 8))(v190, v255);
    sub_1E65DA0A8();
    sub_1E642906C(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v191 = v262;
    sub_1E65DC438();
    v192 = *(v186 + 8);
    v192(v189, v188);
    v193 = v187;
    v134 = v290;
    v192(v193, v188);
  }

  else
  {
    v194 = v245;
    v195 = v243;
    v196 = v185;
    v197 = v246;
    (*(v245 + 32))(v243, v196, v246);
    v198 = v244;
    (*(v194 + 16))(v244, v195, v197);
    v191 = v262;
    sub_1E6134678(v198, v262);
    (*(v194 + 8))(v195, v197);
  }

  sub_1E6428F80(v174, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v191, v294, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E65E04F8();
  v278 = sub_1E63B0584();
  v199 = sub_1E65D81E8();
  if (v201 == -1)
  {
    v205 = 4;
  }

  else
  {
    v300 = v199;
    v301 = v200;
    v302 = v201 & 1;
    v202 = v199;
    v203 = v200;
    v204 = v201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v202, v203, v204);
    v205 = v299;
  }

  LODWORD(v277) = v205;
  sub_1E65D8158();
  sub_1E65D8178();
  v206 = v279;
  sub_1E5DFD1CC(v292, v279, &qword_1ED072D90, &qword_1E66040F0);
  v207 = v281;
  sub_1E5DFD1CC(v134, v281, &qword_1ED072638, &qword_1E65EB950);
  v208 = v265;
  sub_1E5DFD1CC(v293, v265, &qword_1ED072638, &qword_1E65EB950);
  v264 = sub_1E65D8088();
  v210 = v209;
  v263 = v209;
  v211 = sub_1E65D80C8();
  v213 = v212;
  v215 = v214;
  v216 = sub_1E65D81B8();
  v218 = v217;
  v219 = sub_1E65DC7A8();
  if (v219)
  {
    v220 = 2;
  }

  else
  {
    v220 = 1;
  }

  if (v219 == 2)
  {
    v221 = 7;
  }

  else
  {
    v221 = v220;
  }

  v222 = v215 & 1;
  v239 = v210;
  v238 = v207;
  v237 = v206;
  v224 = v285;
  v223 = v286;
  v225 = v284;
  sub_1E63A0574(v271, v294, v278, v277, v296, v285, v291, v286, v295, v237, v287, v238, v208, v264, v239, v211, v213, v222, v216, v218, v221);

  sub_1E5F87058(v211, v213, v222);

  sub_1E5DFE50C(v208, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v281, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v279, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v223, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v224, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E6428F80(v225, MEMORY[0x1E699D780]);
  v226 = sub_1E65D80C8();
  v228 = v227;
  LOBYTE(v223) = v229;
  v230 = v272;
  sub_1E60E5944(v226, v227, v229 & 1, v272);
  v231 = sub_1E5F87058(v226, v228, v223 & 1);
  MEMORY[0x1EEE9AC00](v231);
  v232 = v274;
  sub_1E622B948(sub_1E6428FE0, v274);
  sub_1E5DFE50C(v230, &qword_1ED072330, &qword_1E65EAB70);
  sub_1E65E04E8();
  sub_1E5DFD1CC(v295, v288, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v275);
  sub_1E5DFD1CC(v232, v273, &qword_1ED072668, &qword_1E65EB978);
  v297 = type metadata accessor for ActionButtonDescriptor(0);
  v289 = type metadata accessor for ArtworkDescriptor();
  v287 = type metadata accessor for ContextMenu(0);
  v286 = type metadata accessor for ItemMetrics();
  v285 = type metadata accessor for ViewDescriptor();
  sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65E0488();
  sub_1E5DFE50C(v232, &qword_1ED072668, &qword_1E65EB978);
  sub_1E5DFE50C(v295, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v294, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v293, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v290, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v292, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v291, &qword_1ED072D90, &qword_1E66040F0);
  (*(v267 + 8))(v266, v268);
  sub_1E5DFE50C(v296, &qword_1ED072D90, &qword_1E66040F0);
  return (*(v270 + 8))(v298, v283);
}

uint64_t PersonalizationInferenceResponse.makeSectionDescriptors(environment:locale:configuration:bodyFocuses:themes:musicGenres:skillLevels:trainers:modalities:isPlanCreationSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v273 = a8;
  v275 = a7;
  v276 = a6;
  v274 = a5;
  v261 = a3;
  v259 = a2;
  v260 = a10;
  v277 = a9;
  v292 = sub_1E65DA708();
  v290 = *(v292 - 1);
  v11 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v291 = &v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_1E65D8B68();
  v267 = *(v279 - 8);
  v13 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v278 = &v259 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_1E65D7F08();
  v268 = *(v281 - 8);
  v15 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v280 = &v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_1E65D7B18();
  v269 = *(v285 - 8);
  v17 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v285);
  v282 = &v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_1E65D7A68();
  v270 = *(v287 - 8);
  v19 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v286 = &v259 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_1E65D9D28();
  v271 = *(v289 - 8);
  v21 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v289);
  v288 = &v259 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65DAEF8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v259 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v29 = a4 + 56;
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 56);
  v33 = (v30 + 63) >> 6;
  v265 = v24 + 16;
  v266 = v24;
  v263 = (v24 + 8);
  v272 = a4;

  v34 = 0;
  v262 = a4 + 56;
  v264 = v23;
  while (v32)
  {
    v38 = v34;
LABEL_11:
    (v266[2])(v27, v272[6] + v266[9] * (__clz(__rbit64(v32)) | (v38 << 6)), v23);
    v39 = sub_1E65DAED8();
    v41 = v40;
    v283 = sub_1E65DAEE8();
    v284 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v293 = v28;
    v45 = sub_1E6215038(v39, v41);
    v46 = v28;
    v47 = v28[2];
    v48 = (v44 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_149;
    }

    v50 = v44;
    if (v46[3] >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E64237E4();
      }
    }

    else
    {
      sub_1E6419E3C(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_1E6215038(v39, v41);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_161;
      }

      v45 = v51;
    }

    v32 &= v32 - 1;
    if (v50)
    {

      v28 = v293;
      v35 = (v293[7] + 16 * v45);
      v36 = v35[1];
      v37 = v284;
      *v35 = v283;
      v35[1] = v37;

      v23 = v264;
      (*v263)(v27, v264);
    }

    else
    {
      v28 = v293;
      v293[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v28[6] + 16 * v45);
      *v53 = v39;
      v53[1] = v41;
      v54 = (v28[7] + 16 * v45);
      v55 = v284;
      *v54 = v283;
      v54[1] = v55;
      v23 = v264;
      (*v263)(v27, v264);
      v56 = v28[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_154;
      }

      v28[2] = v58;
    }

    v34 = v38;
    v29 = v262;
  }

  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_141:
      __break(1u);
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
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (v38 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v38);
    ++v34;
    if (v32)
    {
      goto LABEL_11;
    }
  }

  v266 = v28;

  v265 = sub_1E65D82A8();
  v59 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v60 = (v277 + 56);
  v61 = 1 << *(v277 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v277 + 56);
  v64 = (v61 + 63) >> 6;
  v283 = (v271 + 8);
  v284 = v271 + 16;

  v65 = 0;
  v272 = v60;
  while (v63)
  {
    v69 = v65;
LABEL_30:
    (*(v271 + 16))(v288, *(v277 + 48) + *(v271 + 72) * (__clz(__rbit64(v63)) | (v69 << 6)), v289);
    v70 = sub_1E65D9CD8();
    v72 = v71;
    v73 = sub_1E65D9D18();
    v75 = v74;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v293 = v59;
    v77 = sub_1E6215038(v70, v72);
    v79 = v59;
    v80 = v59[2];
    v81 = (v78 & 1) == 0;
    v57 = __OFADD__(v80, v81);
    v82 = v80 + v81;
    if (v57)
    {
      goto LABEL_150;
    }

    v83 = v78;
    if (v79[3] >= v82)
    {
      if ((v76 & 1) == 0)
      {
        v89 = v77;
        sub_1E64237E4();
        v77 = v89;
      }
    }

    else
    {
      sub_1E6419E3C(v82, v76);
      v77 = sub_1E6215038(v70, v72);
      if ((v83 & 1) != (v84 & 1))
      {
        goto LABEL_161;
      }
    }

    v63 &= v63 - 1;
    if (v83)
    {
      v66 = v77;

      v59 = v293;
      v67 = (v293[7] + 16 * v66);
      v68 = v67[1];
      *v67 = v73;
      v67[1] = v75;

      (*v283)(v288, v289);
    }

    else
    {
      v59 = v293;
      v293[(v77 >> 6) + 8] |= 1 << v77;
      v85 = (v59[6] + 16 * v77);
      *v85 = v70;
      v85[1] = v72;
      v86 = (v59[7] + 16 * v77);
      *v86 = v73;
      v86[1] = v75;
      (*v283)(v288, v289);
      v87 = v59[2];
      v57 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v57)
      {
        goto LABEL_155;
      }

      v59[2] = v88;
    }

    v65 = v69;
    v60 = v272;
  }

  while (1)
  {
    v69 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_141;
    }

    if (v69 >= v64)
    {
      break;
    }

    v63 = v60[v69];
    ++v65;
    if (v63)
    {
      goto LABEL_30;
    }
  }

  v272 = v59;

  v284 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v90 = v276 + 56;
  v91 = 1 << *(v276 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v276 + 56);
  v94 = (v91 + 63) >> 6;
  v288 = (v270 + 16);
  v283 = (v270 + 8);

  v95 = 0;
  if (v93)
  {
    goto LABEL_44;
  }

  while (1)
  {
LABEL_45:
    v100 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      goto LABEL_142;
    }

    if (v100 >= v94)
    {
      break;
    }

    v93 = *(v90 + 8 * v100);
    ++v95;
    if (v93)
    {
      while (1)
      {
        (*(v270 + 16))(v286, *(v276 + 48) + *(v270 + 72) * (__clz(__rbit64(v93)) | (v100 << 6)), v287);
        v101 = sub_1E65D7A48();
        v103 = v102;
        v104 = sub_1E65D7A58();
        v289 = v105;
        v106 = v284;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v106;
        v108 = sub_1E6215038(v101, v103);
        v110 = *(v106 + 16);
        v111 = (v109 & 1) == 0;
        v57 = __OFADD__(v110, v111);
        v112 = v110 + v111;
        if (v57)
        {
          goto LABEL_151;
        }

        v113 = v109;
        if (*(v106 + 24) >= v112)
        {
          if ((v107 & 1) == 0)
          {
            v121 = v108;
            sub_1E64237E4();
            v108 = v121;
          }
        }

        else
        {
          sub_1E6419E3C(v112, v107);
          v108 = sub_1E6215038(v101, v103);
          if ((v113 & 1) != (v114 & 1))
          {
            goto LABEL_161;
          }
        }

        v93 &= v93 - 1;
        if (v113)
        {
          v96 = v108;

          v284 = v293;
          v97 = (v293[7] + 16 * v96);
          v98 = v97[1];
          v99 = v289;
          *v97 = v104;
          v97[1] = v99;

          (*v283)(v286, v287);
          v95 = v100;
          if (!v93)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v115 = v293;
          v293[(v108 >> 6) + 8] |= 1 << v108;
          v116 = (v115[6] + 16 * v108);
          *v116 = v101;
          v116[1] = v103;
          v117 = (v115[7] + 16 * v108);
          v118 = v289;
          *v117 = v104;
          v117[1] = v118;
          (*v283)(v286, v287);
          v119 = v115[2];
          v57 = __OFADD__(v119, 1);
          v120 = v119 + 1;
          if (v57)
          {
            goto LABEL_156;
          }

          v284 = v115;
          v115[2] = v120;
          v95 = v100;
          if (!v93)
          {
            goto LABEL_45;
          }
        }

LABEL_44:
        v100 = v95;
      }
    }
  }

  v283 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v122 = v275 + 56;
  v123 = 1 << *(v275 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v275 + 56);
  v126 = (v123 + 63) >> 6;
  v287 = v269 + 8;
  v288 = (v269 + 16);

  v127 = 0;
  if (v125)
  {
    goto LABEL_63;
  }

  while (1)
  {
LABEL_64:
    v132 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_143;
    }

    if (v132 >= v126)
    {
      break;
    }

    v125 = *(v122 + 8 * v132);
    ++v127;
    if (v125)
    {
      while (1)
      {
        (*(v269 + 16))(v282, *(v275 + 48) + *(v269 + 72) * (__clz(__rbit64(v125)) | (v132 << 6)), v285);
        v133 = sub_1E65D7AE8();
        v135 = v134;
        v136 = sub_1E65D7B08();
        v289 = v137;
        v138 = v283;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v138;
        v140 = sub_1E6215038(v133, v135);
        v142 = v138[2];
        v143 = (v141 & 1) == 0;
        v57 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v57)
        {
          goto LABEL_152;
        }

        v145 = v141;
        if (v138[3] >= v144)
        {
          if ((v139 & 1) == 0)
          {
            v153 = v140;
            sub_1E64237E4();
            v140 = v153;
          }
        }

        else
        {
          sub_1E6419E3C(v144, v139);
          v140 = sub_1E6215038(v133, v135);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_161;
          }
        }

        v125 &= v125 - 1;
        if (v145)
        {
          v128 = v140;

          v283 = v293;
          v129 = (v293[7] + 16 * v128);
          v130 = v129[1];
          v131 = v289;
          *v129 = v136;
          v129[1] = v131;

          (*v287)(v282, v285);
          v127 = v132;
          if (!v125)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v147 = v293;
          v293[(v140 >> 6) + 8] |= 1 << v140;
          v148 = (v147[6] + 16 * v140);
          *v148 = v133;
          v148[1] = v135;
          v149 = (v147[7] + 16 * v140);
          v150 = v289;
          *v149 = v136;
          v149[1] = v150;
          (*v287)(v282, v285);
          v151 = v147[2];
          v57 = __OFADD__(v151, 1);
          v152 = v151 + 1;
          if (v57)
          {
            goto LABEL_157;
          }

          v283 = v147;
          v147[2] = v152;
          v127 = v132;
          if (!v125)
          {
            goto LABEL_64;
          }
        }

LABEL_63:
        v132 = v127;
      }
    }
  }

  v154 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v155 = v274 + 56;
  v156 = 1 << *(v274 + 32);
  v157 = -1;
  if (v156 < 64)
  {
    v157 = ~(-1 << v156);
  }

  v158 = v157 & *(v274 + 56);
  v159 = (v156 + 63) >> 6;
  v287 = v268 + 8;
  v288 = (v268 + 16);

  v160 = 0;
  if (v158)
  {
    goto LABEL_82;
  }

LABEL_83:
  while (2)
  {
    v165 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      goto LABEL_144;
    }

    if (v165 >= v159)
    {
      v281 = v154;

      v186 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      v187 = v273 + 56;
      v188 = 1 << *(v273 + 32);
      v189 = -1;
      if (v188 < 64)
      {
        v189 = ~(-1 << v188);
      }

      v190 = v189 & *(v273 + 56);
      v191 = (v188 + 63) >> 6;
      v192 = (v267 + 8);

      v193 = 0;
      while (2)
      {
        while (2)
        {
          v282 = v186;
          v194 = v193;
          if (!v190)
          {
            goto LABEL_101;
          }

          while (1)
          {
            v193 = v194;
LABEL_104:
            v195 = __clz(__rbit64(v190));
            v190 &= v190 - 1;
            (*(v267 + 16))(v278, *(v273 + 48) + *(v267 + 72) * (v195 | (v193 << 6)), v279);
            v196 = sub_1E65D8B28();
            v198 = v197;
            v199 = sub_1E65D8B38();
            if (v200)
            {
              break;
            }

            v186 = v282;
            v201 = sub_1E6215038(v196, v198);
            v203 = v202;

            if (v203)
            {
              v212 = swift_isUniquelyReferenced_nonNull_native();
              v293 = v186;
              if (!v212)
              {
                sub_1E64237E4();
                v186 = v293;
              }

              v213 = *(*(v186 + 6) + 16 * v201 + 8);

              v214 = *(*(v186 + 7) + 16 * v201 + 8);

              sub_1E641EF5C(v201, v186);
              goto LABEL_118;
            }

            (*v192)(v278, v279);
            v194 = v193;
            if (!v190)
            {
              while (1)
              {
LABEL_101:
                v193 = v194 + 1;
                if (__OFADD__(v194, 1))
                {
                  goto LABEL_145;
                }

                if (v193 >= v191)
                {
                  break;
                }

                v190 = *(v187 + 8 * v193);
                ++v194;
                if (v190)
                {
                  goto LABEL_104;
                }
              }

              v225 = sub_1E65DA8E8();
              v289 = *(v225 + 16);
              if (!v289)
              {
                v227 = MEMORY[0x1E69E7CC8];
LABEL_139:

                v249 = sub_1E65DA918();
                v292 = &v259;
                MEMORY[0x1EEE9AC00](v249);
                v250 = v277;
                *(&v259 - 12) = v261;
                *(&v259 - 11) = v250;
                v251 = v259;
                *(&v259 - 10) = v266;
                *(&v259 - 9) = v251;
                v253 = v283;
                v252 = v284;
                *(&v259 - 8) = v272;
                *(&v259 - 7) = v252;
                v255 = v281;
                v254 = v282;
                *(&v259 - 6) = v253;
                *(&v259 - 5) = v255;
                v256 = v265;
                *(&v259 - 4) = v254;
                *(&v259 - 3) = v256;
                *(&v259 - 16) = v260 & 1;
                *(&v259 - 1) = v227;
                v257 = sub_1E64032DC(sub_1E64275AC, (&v259 - 14), v249);

                return v257;
              }

              v226 = 0;
              v288 = (v225 + ((*(v290 + 80) + 32) & ~*(v290 + 80)));
              v286 = (v290 + 8);
              v287 = v290 + 16;
              v227 = MEMORY[0x1E69E7CC8];
              v285 = v225;
              while (2)
              {
                if (v226 >= *(v225 + 16))
                {
                  goto LABEL_146;
                }

                (*(v290 + 16))(v291, &v288[*(v290 + 72) * v226], v292);
                v230 = sub_1E65DA6E8();
                v232 = v231;
                v233 = sub_1E65DA6F8();
                v235 = v234;
                v236 = swift_isUniquelyReferenced_nonNull_native();
                v293 = v227;
                v238 = sub_1E6215038(v230, v232);
                v239 = v227[2];
                v240 = (v237 & 1) == 0;
                v241 = v239 + v240;
                if (__OFADD__(v239, v240))
                {
                  goto LABEL_147;
                }

                v242 = v237;
                if (v227[3] >= v241)
                {
                  if (v236)
                  {
                    if ((v237 & 1) == 0)
                    {
                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    sub_1E64237E4();
                    if ((v242 & 1) == 0)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                else
                {
                  sub_1E6419E3C(v241, v236);
                  v243 = sub_1E6215038(v230, v232);
                  if ((v242 & 1) != (v244 & 1))
                  {
                    goto LABEL_161;
                  }

                  v238 = v243;
                  if ((v242 & 1) == 0)
                  {
LABEL_134:
                    v227 = v293;
                    v293[(v238 >> 6) + 8] |= 1 << v238;
                    v245 = (v227[6] + 16 * v238);
                    *v245 = v230;
                    v245[1] = v232;
                    v246 = (v227[7] + 16 * v238);
                    *v246 = v233;
                    v246[1] = v235;
                    (*v286)(v291, v292);
                    v247 = v227[2];
                    v57 = __OFADD__(v247, 1);
                    v248 = v247 + 1;
                    if (v57)
                    {
                      goto LABEL_148;
                    }

                    v227[2] = v248;
                    goto LABEL_125;
                  }
                }

                v227 = v293;
                v228 = (v293[7] + 16 * v238);
                v229 = v228[1];
                *v228 = v233;
                v228[1] = v235;

                (*v286)(v291, v292);
LABEL_125:
                ++v226;
                v225 = v285;
                if (v289 == v226)
                {
                  goto LABEL_139;
                }

                continue;
              }
            }
          }

          v288 = v199;
          v289 = v200;
          v204 = v282;
          v205 = swift_isUniquelyReferenced_nonNull_native();
          v293 = v204;
          v206 = sub_1E6215038(v196, v198);
          v208 = *(v204 + 2);
          v209 = (v207 & 1) == 0;
          v57 = __OFADD__(v208, v209);
          v210 = v208 + v209;
          if (v57)
          {
            goto LABEL_159;
          }

          if (*(v204 + 3) >= v210)
          {
            if ((v205 & 1) == 0)
            {
              v287 = v206;
              v219 = v207;
              sub_1E64237E4();
              v206 = v287;
              if (v219)
              {
LABEL_117:
                v215 = v206;

                v186 = v293;
                v216 = (v293[7] + 16 * v215);
                v217 = v216[1];
                v218 = v289;
                *v216 = v288;
                v216[1] = v218;

LABEL_118:
                (*v192)(v278, v279);
                continue;
              }

              goto LABEL_120;
            }
          }

          else
          {
            LODWORD(v287) = v207;
            sub_1E6419E3C(v210, v205);
            v206 = sub_1E6215038(v196, v198);
            v211 = v207 & 1;
            LOBYTE(v207) = v287;
            if ((v287 & 1) != v211)
            {
              goto LABEL_161;
            }
          }

          break;
        }

        if (v207)
        {
          goto LABEL_117;
        }

LABEL_120:
        v186 = v293;
        v293[(v206 >> 6) + 8] |= 1 << v206;
        v220 = (*(v186 + 6) + 16 * v206);
        *v220 = v196;
        v220[1] = v198;
        v221 = (*(v186 + 7) + 16 * v206);
        v222 = v289;
        *v221 = v288;
        v221[1] = v222;
        (*v192)(v278, v279);
        v223 = *(v186 + 2);
        v57 = __OFADD__(v223, 1);
        v224 = v223 + 1;
        if (v57)
        {
          goto LABEL_160;
        }

        *(v186 + 2) = v224;
        continue;
      }
    }

    v158 = *(v155 + 8 * v165);
    ++v160;
    if (!v158)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    (*(v268 + 16))(v280, *(v274 + 48) + *(v268 + 72) * (__clz(__rbit64(v158)) | (v165 << 6)), v281);
    v166 = sub_1E65D7ED8();
    v168 = v167;
    v169 = sub_1E65D7EE8();
    v289 = v170;
    v171 = v154;
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v293 = v171;
    v173 = sub_1E6215038(v166, v168);
    v175 = v171[2];
    v176 = (v174 & 1) == 0;
    v57 = __OFADD__(v175, v176);
    v177 = v175 + v176;
    if (v57)
    {
      break;
    }

    v178 = v174;
    if (v171[3] >= v177)
    {
      if ((v172 & 1) == 0)
      {
        v185 = v173;
        sub_1E64237E4();
        v173 = v185;
      }
    }

    else
    {
      sub_1E6419E3C(v177, v172);
      v173 = sub_1E6215038(v166, v168);
      if ((v178 & 1) != (v179 & 1))
      {
        goto LABEL_161;
      }
    }

    v158 &= v158 - 1;
    if (v178)
    {
      v161 = v173;

      v154 = v293;
      v162 = (v293[7] + 16 * v161);
      v163 = v162[1];
      v164 = v289;
      *v162 = v169;
      v162[1] = v164;

      (*v287)(v280, v281);
      v160 = v165;
      if (!v158)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v154 = v293;
      v293[(v173 >> 6) + 8] |= 1 << v173;
      v180 = (v154[6] + 16 * v173);
      *v180 = v166;
      v180[1] = v168;
      v181 = (v154[7] + 16 * v173);
      v182 = v289;
      *v181 = v169;
      v181[1] = v182;
      (*v287)(v280, v281);
      v183 = v154[2];
      v57 = __OFADD__(v183, 1);
      v184 = v183 + 1;
      if (v57)
      {
        goto LABEL_158;
      }

      v154[2] = v184;
      v160 = v165;
      if (!v158)
      {
        goto LABEL_83;
      }
    }

LABEL_82:
    v165 = v160;
  }

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
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E640F12C(uint64_t a1)
{
  v109 = sub_1E65DBE68();
  v2 = *(v109 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65DC898();
  v5 = *(v107 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DBF98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1E65DC988();
  v14 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 64);
  v78 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v77 = (v19 + 63) >> 6;
  v92 = v10 + 16;
  v105 = v2 + 16;
  v87 = v2;
  v21 = (v2 + 8);
  v22 = v20 & v18;
  v106 = v5;
  v103 = v5 + 32;
  v104 = v21;
  v95 = v10;
  v91 = (v10 + 8);
  v93 = v15;
  v90 = v15 + 32;
  v76 = a1;

  v23 = 0;
  v81 = MEMORY[0x1E69E7CC8];
  while (v22)
  {
    v27 = v23;
LABEL_11:
    v28 = __clz(__rbit64(v22)) | (v27 << 6);
    v29 = *(v76 + 56);
    v30 = (*(v76 + 48) + 16 * v28);
    v31 = v30[1];
    v82 = *v30;
    v32 = *(v29 + 8 * v28);
    v80 = v22;
    v79 = v27;
    if (v32)
    {
      if (v32 == 1)
      {

        v33 = 1;
      }

      else
      {
        v34 = *(v32 + 16);
        if (v34)
        {
          v75 = v31;

          sub_1E5E06368(v32);
          v112 = MEMORY[0x1E69E7CC0];
          sub_1E601BF64(0, v34, 0);
          v35 = 0;
          v36 = v112;
          v88 = v32 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v86 = v9;
          v85 = v13;
          v84 = v17;
          v83 = v32;
          v89 = v34;
          while (v35 < *(v32 + 16))
          {
            v37 = *(v95 + 72);
            v102 = v35;
            (*(v95 + 16))(v13, v88 + v37 * v35, v9);
            v38 = sub_1E65DBF68();
            v101 = v39;
            v40 = sub_1E65DBF78();
            v99 = v41;
            v100 = v40;
            v42 = sub_1E65DBF88();
            v43 = *(v42 + 16);
            if (v43)
            {
              v97 = v38;
              v98 = v36;
              v111 = MEMORY[0x1E69E7CC0];
              v44 = v42;
              sub_1E601BFEC(0, v43, 0);
              v45 = v111;
              v46 = *(v87 + 80);
              v96 = v44;
              v47 = v44 + ((v46 + 32) & ~v46);
              v110 = *(v87 + 72);
              v48 = *(v87 + 16);
              do
              {
                v49 = v108;
                v50 = v109;
                v48(v108, v47, v109);
                sub_1E65DBE48();
                sub_1E65DBE38();
                sub_1E65DBE58();
                sub_1E65DC858();
                (*v104)(v49, v50);
                v111 = v45;
                v52 = *(v45 + 16);
                v51 = *(v45 + 24);
                if (v52 >= v51 >> 1)
                {
                  sub_1E601BFEC(v51 > 1, v52 + 1, 1);
                  v45 = v111;
                }

                *(v45 + 16) = v52 + 1;
                (*(v106 + 32))(v45 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v52, v8, v107);
                v47 += v110;
                --v43;
              }

              while (v43);

              v9 = v86;
              v13 = v85;
              v17 = v84;
              v32 = v83;
              v36 = v98;
            }

            else
            {
            }

            sub_1E65DC948();
            (*v91)(v13, v9);
            v112 = v36;
            v54 = *(v36 + 16);
            v53 = *(v36 + 24);
            v55 = v102;
            if (v54 >= v53 >> 1)
            {
              sub_1E601BF64(v53 > 1, v54 + 1, 1);
              v36 = v112;
            }

            v35 = v55 + 1;
            *(v36 + 16) = v54 + 1;
            (*(v93 + 32))(v36 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54, v17, v94);
            if (v35 == v89)
            {
              v33 = v36;
              v31 = v75;
              goto LABEL_30;
            }
          }

          goto LABEL_41;
        }

        sub_1E5E06368(v32);
        v33 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v33 = 0;
    }

LABEL_30:

    v56 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v56;
    v58 = v31;
    v59 = sub_1E6215038(v82, v31);
    v61 = v56[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_42;
    }

    v65 = v60;
    if (v56[3] >= v64)
    {
      v67 = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = v59;
        sub_1E642395C(&qword_1ED079628, &qword_1E6601758, sub_1E64290E8);
        v67 = v80;
        v59 = v72;
      }
    }

    else
    {
      sub_1E641A0FC(v64, isUniquelyReferenced_nonNull_native, &qword_1ED079628, &qword_1E6601758, sub_1E64290E8);
      v59 = sub_1E6215038(v82, v58);
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_44;
      }

      v67 = v80;
    }

    v22 = (v67 - 1) & v67;
    if (v65)
    {
      v24 = v59;

      v81 = v112;
      v25 = v112[7];
      v26 = *(v25 + 8 * v24);
      *(v25 + 8 * v24) = v33;
      sub_1E5F87148(v26);

      sub_1E5F87148(v32);
    }

    else
    {
      v68 = v112;
      v112[(v59 >> 6) + 8] |= 1 << v59;
      v69 = (v68[6] + 16 * v59);
      *v69 = v82;
      v69[1] = v58;
      *(v68[7] + 8 * v59) = v33;

      sub_1E5F87148(v32);
      v70 = v68[2];
      v63 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v63)
      {
        goto LABEL_43;
      }

      v81 = v68;
      v68[2] = v71;
    }

    v23 = v79;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v77)
    {

      return v81;
    }

    v22 = *(v78 + 8 * v27);
    ++v23;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E640F9F8(uint64_t a1)
{
  v109 = sub_1E65DC898();
  v2 = *(v109 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65DBE68();
  v5 = *(v107 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DC988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1E65DBF98();
  v14 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 64);
  v78 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v77 = (v19 + 63) >> 6;
  v92 = v10 + 16;
  v105 = v2 + 16;
  v87 = v2;
  v21 = (v2 + 8);
  v22 = v20 & v18;
  v106 = v5;
  v103 = v5 + 32;
  v104 = v21;
  v95 = v10;
  v91 = (v10 + 8);
  v93 = v15;
  v90 = v15 + 32;
  v76 = a1;

  v23 = 0;
  v81 = MEMORY[0x1E69E7CC8];
  while (v22)
  {
    v27 = v23;
LABEL_11:
    v28 = __clz(__rbit64(v22)) | (v27 << 6);
    v29 = *(v76 + 56);
    v30 = (*(v76 + 48) + 16 * v28);
    v31 = v30[1];
    v82 = *v30;
    v32 = *(v29 + 8 * v28);
    v80 = v22;
    v79 = v27;
    if (v32)
    {
      if (v32 == 1)
      {

        v33 = 1;
      }

      else
      {
        v34 = *(v32 + 16);
        if (v34)
        {
          v75 = v31;

          sub_1E5E06368(v32);
          v112 = MEMORY[0x1E69E7CC0];
          sub_1E601C030(0, v34, 0);
          v35 = 0;
          v36 = v112;
          v88 = v32 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v86 = v9;
          v85 = v13;
          v84 = v17;
          v83 = v32;
          v89 = v34;
          while (v35 < *(v32 + 16))
          {
            v37 = *(v95 + 72);
            v102 = v35;
            (*(v95 + 16))(v13, v88 + v37 * v35, v9);
            v38 = sub_1E65DC958();
            v101 = v39;
            v40 = sub_1E65DC968();
            v99 = v41;
            v100 = v40;
            v42 = sub_1E65DC978();
            v43 = *(v42 + 16);
            if (v43)
            {
              v97 = v38;
              v98 = v36;
              v111 = MEMORY[0x1E69E7CC0];
              v44 = v42;
              sub_1E601C074(0, v43, 0);
              v45 = v111;
              v46 = *(v87 + 80);
              v96 = v44;
              v47 = v44 + ((v46 + 32) & ~v46);
              v110 = *(v87 + 72);
              v48 = *(v87 + 16);
              do
              {
                v49 = v108;
                v50 = v109;
                v48(v108, v47, v109);
                sub_1E65DC878();
                sub_1E65DC868();
                sub_1E65DC888();
                sub_1E65DBE28();
                (*v104)(v49, v50);
                v111 = v45;
                v52 = *(v45 + 16);
                v51 = *(v45 + 24);
                if (v52 >= v51 >> 1)
                {
                  sub_1E601C074(v51 > 1, v52 + 1, 1);
                  v45 = v111;
                }

                *(v45 + 16) = v52 + 1;
                (*(v106 + 32))(v45 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v52, v8, v107);
                v47 += v110;
                --v43;
              }

              while (v43);

              v9 = v86;
              v13 = v85;
              v17 = v84;
              v32 = v83;
              v36 = v98;
            }

            else
            {
            }

            sub_1E65DBF58();
            (*v91)(v13, v9);
            v112 = v36;
            v54 = *(v36 + 16);
            v53 = *(v36 + 24);
            v55 = v102;
            if (v54 >= v53 >> 1)
            {
              sub_1E601C030(v53 > 1, v54 + 1, 1);
              v36 = v112;
            }

            v35 = v55 + 1;
            *(v36 + 16) = v54 + 1;
            (*(v93 + 32))(v36 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54, v17, v94);
            if (v35 == v89)
            {
              v33 = v36;
              v31 = v75;
              goto LABEL_30;
            }
          }

          goto LABEL_41;
        }

        sub_1E5E06368(v32);
        v33 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v33 = 0;
    }

LABEL_30:

    v56 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v56;
    v58 = v31;
    v59 = sub_1E6215038(v82, v31);
    v61 = v56[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_42;
    }

    v65 = v60;
    if (v56[3] >= v64)
    {
      v67 = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = v59;
        sub_1E642395C(&qword_1ED0794D0, &qword_1E6601618, sub_1E5E06368);
        v67 = v80;
        v59 = v72;
      }
    }

    else
    {
      sub_1E641A0FC(v64, isUniquelyReferenced_nonNull_native, &qword_1ED0794D0, &qword_1E6601618, sub_1E5E06368);
      v59 = sub_1E6215038(v82, v58);
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_44;
      }

      v67 = v80;
    }

    v22 = (v67 - 1) & v67;
    if (v65)
    {
      v24 = v59;

      v81 = v112;
      v25 = v112[7];
      v26 = *(v25 + 8 * v24);
      *(v25 + 8 * v24) = v33;
      sub_1E5F87148(v26);

      sub_1E5F87148(v32);
    }

    else
    {
      v68 = v112;
      v112[(v59 >> 6) + 8] |= 1 << v59;
      v69 = (v68[6] + 16 * v59);
      *v69 = v82;
      v69[1] = v58;
      *(v68[7] + 8 * v59) = v33;

      sub_1E5F87148(v32);
      v70 = v68[2];
      v63 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v63)
      {
        goto LABEL_43;
      }

      v81 = v68;
      v68[2] = v71;
    }

    v23 = v79;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v77)
    {

      return v81;
    }

    v22 = *(v78 + 8 * v27);
    ++v23;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E641031C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v34 = a1;
  v30 = a4;
  v40 = a3(0);
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - v11;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v35 = v10 + 32;
  v36 = v10;
  v31 = (v10 + 8);
  v32 = v10 + 16;
  v37 = a2;

  v18 = 0;
  v19 = v33;
  if (v15)
  {
    while (1)
    {
      v38 = v5;
      v20 = v18;
LABEL_9:
      v21 = v36;
      v22 = v40;
      (*(v36 + 16))(v19, *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v15)) | (v20 << 6)), v40);
      v23 = *(v21 + 32);
      v24 = v39;
      v23(v39, v19, v22);
      v25 = v38;
      v26 = v34(v24);
      v5 = v25;
      if (v25)
      {
        (*v31)(v39, v40);
      }

      if (v26)
      {
        break;
      }

      v15 &= v15 - 1;
      result = (*v31)(v39, v40);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v29 = v30;
    v23(v30, v39, v40);
    v28 = v29;
    v27 = 0;
    return (*(v36 + 56))(v28, v27, 1, v40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        v27 = 1;
        v28 = v30;
        return (*(v36 + 56))(v28, v27, 1, v40);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E64105E0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1E65E2CB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_1E64107B4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v191 = a4;
  v190 = a3;
  v176 = a2;
  v189 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794E0, &qword_1E6601628);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v188 = &v159 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB0, &qword_1E65F7908);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v187 = &v159 - v11;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v184 = *(v185 - 8);
  v12 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v159 - v13;
  v14 = sub_1E65D7268();
  v198 = *(v14 - 8);
  v199 = v14;
  v15 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v197 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArtworkContent();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794E8, &qword_1E6601630);
  v20 = *(*(v182 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v182);
  v206 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v207 = &v159 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v172 = &v159 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v170 = &v159 - v29;
  v171 = sub_1E65DAC98();
  v169 = *(v171 - 8);
  v30 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1E65DB268();
  v180 = *(v196 - 8);
  v32 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1E65DA0B8();
  v167 = *(v168 - 8);
  v34 = *(v167 + 64);
  v35 = MEMORY[0x1EEE9AC00](v168);
  v165 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v159 - v37;
  v163 = sub_1E65D9D58();
  v162 = *(v163 - 8);
  v38 = *(v162 + 64);
  v39 = MEMORY[0x1EEE9AC00](v163);
  v161 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v160 = &v159 - v41;
  v173 = sub_1E65D8BB8();
  v42 = *(*(v173 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v173);
  v45 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v200 = (&v159 - v46);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v47 = *(*(v202 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v202);
  v174 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v212 = &v159 - v50;
  v194 = sub_1E65D7348();
  v51 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v201 = &v159 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v193 = &v159 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v192 = &v159 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v159 = &v159 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v211 = &v159 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v210 = &v159 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v159 - v66;
  v68 = sub_1E65DC508();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = MEMORY[0x1EEE9AC00](v68);
  v204 = &v159 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v159 - v73;
  v75 = sub_1E65DC818();
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v159 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v186 = a1;
  sub_1E65E04E8();
  if ((*(v69 + 88))(v74, v68) == *MEMORY[0x1E699E0A0])
  {
    v80 = *(v69 + 96);
    v181 = v68;
    v80(v74, v68);
    v81 = *(v76 + 32);
    v203 = v79;
    v81(v79, v74, v75);
    v82 = *(sub_1E65D8248() + 16);

    v179 = v75;
    v178 = v76;
    if (v82)
    {
      v83 = sub_1E65D8248();
      sub_1E63C4134(v190, v191, v83, v67);

      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = sub_1E65D72D8();
    v209 = *(v85 - 8);
    v86 = *(v209 + 56);
    v87 = 1;
    v205 = v67;
    v213 = v209 + 56;
    v86(v67, v84, 1, v85);
    v88 = *(sub_1E65D80A8() + 16);

    if (v88)
    {
      v89 = sub_1E65D80A8();
      v90 = v210;
      sub_1E63C4134(v190, v191, v89, v210);

      v87 = 0;
    }

    else
    {
      v90 = v210;
    }

    v86(v90, v87, 1, v85);
    sub_1E65DC808();
    v208 = v86;
    if (v91)
    {
      sub_1E65D7338();
      v92 = v211;
      sub_1E65D72E8();
      v93 = v92;
      v86 = v208;
      v208(v93, 0, 1, v85);
    }

    else
    {
      v94 = *(sub_1E65D8068() + 16);

      if (v94)
      {
        v95 = sub_1E65D8068();
        v96 = v159;
        sub_1E63C4134(v190, v191, v95, v159);

        v97 = 0;
      }

      else
      {
        v97 = 1;
        v96 = v159;
      }

      v86(v96, v97, 1, v85);
      sub_1E5FAB460(v96, v211, &qword_1ED072D90, &qword_1E66040F0);
    }

    v98 = v200;
    sub_1E65D8128();
    sub_1E6429004(v98, v45, MEMORY[0x1E69CB950]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99 = v167;
      v100 = v164;
      v101 = v168;
      (*(v167 + 32))(v164, v45, v168);
      v102 = v165;
      (*(v99 + 16))(v165, v100, v101);
      v103 = v166;
      sub_1E65DA098();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DB248();
      (*(v169 + 8))(v103, v171);
      sub_1E65DA0A8();
      sub_1E642906C(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
      v104 = v174;
      sub_1E65DC438();
      v105 = *(v99 + 8);
      v105(v102, v101);
      v106 = v100;
      v86 = v208;
      v105(v106, v101);
    }

    else
    {
      v107 = v162;
      v108 = v160;
      v109 = v163;
      (*(v162 + 32))(v160, v45, v163);
      v110 = v161;
      (*(v107 + 16))(v161, v108, v109);
      v104 = v174;
      sub_1E6134678(v110, v174);
      (*(v107 + 8))(v108, v109);
    }

    v111 = v205;
    sub_1E6428F80(v200, MEMORY[0x1E69CB950]);
    swift_storeEnumTagMultiPayload();
    sub_1E5FAB460(v104, v212, &qword_1ED074530, &qword_1E65F0CA8);
    v112 = v175;
    sub_1E64FB75C(v175);
    v113 = sub_1E65DAE38();
    v114 = sub_1E65DAE38();
    v115 = sub_1E65E4B48();
    v116 = 4.0;
    if (v115)
    {
      v116 = 8.0;
    }

    v117 = 16.0;
    if (v115)
    {
      v117 = 18.0;
    }

    if (v113 == v114)
    {
      v118 = v117;
    }

    else
    {
      v118 = v116;
    }

    if (v113 == v114)
    {
      v119 = 12.0;
    }

    else
    {
      v119 = 8.0;
    }

    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A88, &qword_1E65FEF70);
    v121 = v207;
    v122 = v207 + v120[12];
    v123 = v120[16];
    sub_1E5E24EEC(v112, v122, type metadata accessor for ArtworkContent);
    v124 = type metadata accessor for ArtworkDescriptor();
    *(v122 + v124[5]) = MEMORY[0x1E69E7CD0];
    v125 = v122 + v124[6];
    *v125 = 0;
    *(v125 + 8) = v118;
    *(v125 + 16) = v118;
    *(v125 + 24) = v119;
    *(v122 + v124[7]) = 1;
    v200 = v124;
    v126 = (v122 + v124[8]);
    *v126 = 0;
    v126[1] = 0;
    v127 = v192;
    sub_1E5DFD1CC(v111, v192, &qword_1ED072D90, &qword_1E66040F0);
    v128 = *(v209 + 48);
    if (v128(v127, 1, v85) == 1)
    {
      sub_1E5DFE50C(v127, &qword_1ED072D90, &qword_1E66040F0);
      v129 = 1;
    }

    else
    {
      if (qword_1ED071B08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v194, qword_1ED096678);
      v131 = v197;
      v130 = v198;
      v132 = v199;
      (*(v198 + 104))(v197, *MEMORY[0x1E69686E8], v199);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
      v133 = v192;
      sub_1E65D73C8();
      (*(v130 + 8))(v131, v132);
      (*(v209 + 8))(v133, v85);
      v129 = 0;
      v86 = v208;
    }

    v86((v121 + v123), v129, 1, v85);
    v134 = v120[20];
    v135 = v193;
    sub_1E5DFD1CC(v210, v193, &qword_1ED072D90, &qword_1E66040F0);
    v136 = v128(v135, 1, v85);
    v137 = v201;
    if (v136 == 1)
    {
      sub_1E5DFE50C(v135, &qword_1ED072D90, &qword_1E66040F0);
      v138 = 1;
    }

    else
    {
      if (qword_1ED071B10 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v194, qword_1ED096690);
      v140 = v197;
      v139 = v198;
      v141 = v199;
      (*(v198 + 104))(v197, *MEMORY[0x1E69686E8], v199);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
      v142 = v193;
      sub_1E65D73C8();
      (*(v139 + 8))(v140, v141);
      (*(v209 + 8))(v142, v85);
      v138 = 0;
      v137 = v201;
      v86 = v208;
    }

    v86((v121 + v134), v138, 1, v85);
    v143 = v120[24];
    sub_1E5DFD1CC(v211, v137, &qword_1ED072D90, &qword_1E66040F0);
    if (v128(v137, 1, v85) == 1)
    {
      sub_1E5DFE50C(v137, &qword_1ED072D90, &qword_1E66040F0);
      v144 = 1;
    }

    else
    {
      if (qword_1ED071B18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v194, qword_1ED0966A8);
      v146 = v197;
      v145 = v198;
      v147 = v199;
      (*(v198 + 104))(v197, *MEMORY[0x1E69686E8], v199);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
      v148 = v201;
      sub_1E65D73C8();
      (*(v145 + 8))(v146, v147);
      (*(v209 + 8))(v148, v85);
      v144 = 0;
    }

    v86((v121 + v143), v144, 1, v85);
    v149 = v120[28];
    v150 = v183;
    sub_1E65DC358();
    v151 = v195;
    v152 = v185;
    sub_1E65DC448();
    (*(v184 + 8))(v150, v152);
    sub_1E65DB238();
    (*(v180 + 8))(v151, v196);
    sub_1E65E0918();
    swift_storeEnumTagMultiPayload();
    sub_1E65E04E8();
    sub_1E5DFD1CC(v121, v206, &qword_1ED0794E8, &qword_1E6601630);
    v153 = sub_1E65E07E8();
    (*(*(v153 - 8) + 56))(v187, 1, 1, v153);
    v154 = sub_1E65E07F8();
    (*(*(v154 - 8) + 56))(v188, 1, 1, v154);
    v213 = sub_1E65E0A38();
    v209 = sub_1E65E0828();
    v208 = sub_1E642906C(&qword_1ED076BC0, MEMORY[0x1E699DAE8]);
    sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E642906C(&qword_1ED076BC8, MEMORY[0x1E699D980]);
    v155 = MEMORY[0x1E699E0B0];
    sub_1E642906C(&qword_1ED076778, MEMORY[0x1E699E0B0]);
    sub_1E642906C(&qword_1EE2D6B48, v155);
    sub_1E642906C(&qword_1EE2D6B40, v155);
    sub_1E642906C(&qword_1ED0794F0, MEMORY[0x1E699D990]);
    sub_1E642906C(&qword_1ED0794F8, MEMORY[0x1E699DA08]);
    sub_1E65E0488();
    sub_1E5DFE50C(v207, &qword_1ED0794E8, &qword_1E6601630);
    sub_1E5DFE50C(v212, &qword_1ED074530, &qword_1E65F0CA8);
    sub_1E5DFE50C(v211, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v210, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v205, &qword_1ED072D90, &qword_1E66040F0);
    return (*(v178 + 8))(v203, v179);
  }

  else
  {
    v157 = *(v69 + 8);
    v157(v74, v68);
    v214 = 0;
    v215 = 0xE000000000000000;
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6617030);
    v158 = v204;
    sub_1E65E04E8();
    sub_1E65E69B8();
    v157(v158, v68);
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6412180@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_1E65D72D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DC8F8();
  if (v19 || (sub_1E65DC928(), v20) || (sub_1E65DC908(), v21))
  {

    sub_1E65DC8F8();
    if (v22)
    {
      if (qword_1EE2D7270 != -1)
      {
        swift_once();
      }

      v23 = sub_1E65D7348();
      __swift_project_value_buffer(v23, qword_1EE2EA268);
      sub_1E65E5D38();

      (*(v15 + 56))(v13, 0, 1, v14);
      (*(v15 + 32))(v18, v13, v14);
    }

    else
    {
      (*(v15 + 56))(v13, 1, 1, v14);
      sub_1E65D72C8();
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        sub_1E5DFE50C(v13, &qword_1ED072D90, &qword_1E66040F0);
      }
    }

    sub_1E6412604(v9);
    v24 = type metadata accessor for ActionButtonDescriptor(0);
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    type metadata accessor for SectionHeaderSubtitleDescriptor();
    sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    sub_1E642906C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    sub_1E65E0458();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    v28 = *(*(v27 - 8) + 56);

    return v28(a1, 1, 1, v27);
  }
}

uint64_t sub_1E6412604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65DC8D8();
  sub_1E65DC928();
  if (v2)
  {
    if (v3)
    {
      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      v4 = sub_1E65D7348();
      __swift_project_value_buffer(v4, qword_1EE2EA238);
      sub_1E65E5D38();

      v5 = sub_1E65D72D8();
      (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
      v6 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      swift_storeEnumTagMultiPayload();
      v7 = *(*(v6 - 8) + 56);
      v8 = a1;
      v9 = 0;
      v10 = v6;
      goto LABEL_15;
    }

LABEL_14:
    v16 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    v7 = *(*(v16 - 8) + 56);
    v10 = v16;
    v8 = a1;
    v9 = 1;
LABEL_15:

    return v7(v8, v9, 1, v10);
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_1E65DC908();
  if (!v11)
  {

    goto LABEL_14;
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
  sub_1E5F9AEA8();
  sub_1E65E66A8();

  if (qword_1ED071A30 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65D7348();
  __swift_project_value_buffer(v13, qword_1ED096408);
  sub_1E65E5D38();

  sub_1E65E66A8();

  if (qword_1ED071A28 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_1ED0963F0);
  sub_1E65E5D38();

  v14 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t sub_1E6412948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v78 = a1;
  v79 = a3;
  v74 = a2;
  v77 = a4;
  v4 = sub_1E65E0908();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v8;
  v75 = sub_1E65E03F8();
  v9 = *(*(v75 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v75);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v69 - v12;
  v84 = sub_1E65D8F28();
  v82 = *(v84 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1E65D9908();
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v69 - v19;
  v21 = sub_1E65D72D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65D8C68();
  v87 = *(v26 - 8);
  v27 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65DC7A8() == 2)
  {
    v80[0] = sub_1E65D8078();
    v80[1] = v29;
  }

  else
  {
    HIWORD(v80[1]) = -4864;
    strcpy(v80, "BuildYourPlan");
  }

  v30 = *MEMORY[0x1E69CBAA0];
  v31 = *(v87 + 104);
  v81 = v26;
  v31(v86, v30, v26);
  sub_1E5DFD1CC(v74, v20, &qword_1ED072D90, &qword_1E66040F0);
  v32 = *(v22 + 48);
  v33 = v32(v20, 1, v21);
  v34 = v76;
  if (v33 == 1)
  {
    sub_1E65D7228();
    v35 = v32(v20, 1, v21);
    v36 = v84;
    if (v35 != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED072D90, &qword_1E66040F0);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v36 = v84;
  }

  v37 = sub_1E65E5D58();
  v39 = v38;
  (*(v89 + 16))(v88, v78, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04F8();
  v79 = sub_1E65D80C8();
  v74 = v40;
  LODWORD(v78) = v41;
  v42 = sub_1E65DC7A8();
  sub_1E6429004(v34, v85, MEMORY[0x1E699D780]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v82;
  v45 = v83;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0A08();
      goto LABEL_23;
    case 2:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0A28();
      goto LABEL_23;
    case 3:
    case 5:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0948();
      goto LABEL_23;
    case 4:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0A58();
      goto LABEL_23;
    case 6:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0968();
      goto LABEL_23;
    case 7:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0AD8();
      goto LABEL_23;
    case 8:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0A88();
      goto LABEL_23;
    case 9:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0928();
      goto LABEL_23;
    case 10:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E0848();
      goto LABEL_23;
    case 11:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
      v46 = sub_1E65E09C8();
LABEL_23:
      (*(*(v46 - 8) + 8))(v85, v46);
      goto LABEL_24;
    case 12:
    case 13:
      sub_1E6428F80(v34, MEMORY[0x1E699D780]);
LABEL_24:
      v57 = v45;
      if (v78)
      {
        v47 = v39;
        v58 = v36;
        v48 = v37;
        if (((1 << v79) & 0x1DB) != 0)
        {
          v59 = MEMORY[0x1E69CBCD8];
        }

        else if (v79 == 2)
        {
          v59 = MEMORY[0x1E69CBC98];
        }

        else
        {
          v59 = MEMORY[0x1E69CBCE0];
        }
      }

      else
      {
        v47 = v39;
        v58 = v36;
        v48 = v37;
        sub_1E5F87058(v79, v74, 0);
        v59 = MEMORY[0x1E69CBCE8];
      }

      v60 = *v59;
      v55 = *(v44 + 104);
      break;
    default:
      v47 = v39;
      v48 = v37;
      v50 = v71;
      v49 = v72;
      v51 = v73;
      (*(v71 + 32))(v73, v85, v72);
      if (v42 == 2)
      {
        v52 = v70;
        sub_1E65E08E8();
        v53 = MEMORY[0x1E6948300](v51, v52);
        sub_1E5F87058(v79, v74, v78 & 1);
        v54 = *(v50 + 8);
        v54(v52, v49);
        v54(v73, v49);
        sub_1E6428F80(v34, MEMORY[0x1E699D780]);
        v55 = *(v44 + 104);
        if (v53)
        {
          v56 = MEMORY[0x1E69CBC80];
        }

        else
        {
          v56 = MEMORY[0x1E69CBCC8];
        }

        v60 = *v56;
      }

      else
      {
        sub_1E5F87058(v79, v74, v78 & 1);
        (*(v50 + 8))(v51, v49);
        sub_1E6428F80(v34, MEMORY[0x1E699D780]);
        v60 = *MEMORY[0x1E69CBC80];
        v55 = *(v44 + 104);
      }

      v57 = v83;
      v58 = v84;
      break;
  }

  v55(v57, v60, v58);
  v61 = type metadata accessor for ItemMetrics();
  v62 = v61[10];
  v63 = *MEMORY[0x1E69CCA80];
  v64 = sub_1E65D9F88();
  v65 = v77;
  (*(*(v64 - 8) + 104))(&v77[v62], v63, v64);
  v66 = v80[1];
  *v65 = v80[0];
  *(v65 + 1) = v66;
  (*(v87 + 32))(&v65[v61[5]], v86, v81);
  v67 = &v65[v61[6]];
  *v67 = v48;
  v67[1] = v47;
  (*(v89 + 32))(&v65[v61[7]], v88, v90);
  return (*(v44 + 32))(&v65[v61[8]], v57, v58);
}

uint64_t sub_1E6413384()
{
  sub_1E6428E34();
  sub_1E6428E88();
  v0 = 0;
  if ((sub_1E65D7FF8() & 1) == 0)
  {
    v0 = 1;
    if ((sub_1E65D7FF8() & 1) == 0)
    {
      v0 = 2;
      if ((sub_1E65D7FF8() & 1) == 0)
      {
        v0 = 3;
        if ((sub_1E65D7FF8() & 1) == 0)
        {
          v0 = 4;
          if ((sub_1E65D7FF8() & 1) == 0)
          {
            v0 = 5;
            if ((sub_1E65D7FF8() & 1) == 0)
            {
              v0 = 6;
              if ((sub_1E65D7FF8() & 1) == 0)
              {
                v0 = 7;
                if ((sub_1E65D7FF8() & 1) == 0)
                {
                  if (sub_1E65D7FF8())
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1E64135A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, unint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v142 = a8;
  v149 = a6;
  v150 = a7;
  v147 = a4;
  v148 = a5;
  i = a3;
  v18 = sub_1E65D99B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v158 = &v122 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F0, &qword_1E6601720);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v146 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v144 = &v122 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v143 = &v122 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v122 - v36;
  v140 = a2;
  v38 = sub_1E65D82B8();
  v145 = a1;
  v39 = sub_1E65DA738();
  if (!*(v38 + 16))
  {

    goto LABEL_6;
  }

  v138 = v19;
  v41 = sub_1E6215038(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_6:

    v48 = 1;
    goto LABEL_7;
  }

  v134 = a9;
  v44 = *(v38 + 56) + 24 * v41;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  sub_1E5F8710C(*v44, v46, v47);

  v155 = v45;
  v156 = v46;
  v157 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F8, &qword_1E6601728);
  sub_1E65D7FB8();
  sub_1E5F87058(v45, v46, v47);
  if (v153 == 49)
  {
    v48 = 1;
    a9 = v134;
LABEL_7:
    v49 = sub_1E65DC938();
    return (*(*(v49 - 8) + 56))(a9, v48, 1, v49);
  }

  v129 = v153;
  sub_1E65DA768();
  v51 = sub_1E65D9278();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v137 = v52 + 48;
  v136 = v53;
  v54 = v53(v37, 1, v51);
  v130 = v18;
  v131 = v52;
  if (v54 == 1)
  {
    sub_1E5DFE50C(v37, &qword_1ED0795F0, &qword_1E6601720);
    v128 = 1;
    v56 = v143;
    v55 = v144;
  }

  else
  {
    v57 = sub_1E65D9258();
    v58 = v51;
    v60 = v59;
    v62 = v61;
    v63 = ~v61;
    v64 = v37;
    v65 = v58;
    (*(v52 + 8))(v64, v58);
    if (!v63 || (v155 = v57, v156 = v60, v157 = v62 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079600, &qword_1E6601730), sub_1E65D7FB8(), sub_1E5F87158(v57, v60, v62), v66 = v153, v153 == 2))
    {
      v66 = 1;
    }

    v128 = v66;
    v52 = v131;
    v56 = v143;
    v55 = v144;
    v51 = v65;
  }

  sub_1E65DA748();
  if (v136(v35, 1, v51) == 1)
  {
    sub_1E5DFE50C(v35, &qword_1ED0795F0, &qword_1E6601720);
    v67 = sub_1E65D9D28();
    (*(*(v67 - 8) + 56))(v158, 1, 1, v67);
  }

  else
  {
    PersonalizationText.getModalityReferenceFromTitle(allModalities:)(i, v158);
    (*(v52 + 8))(v35, v51);
  }

  v133 = a11;
  v132 = a10;
  v127 = sub_1E65DA728();
  v126 = v68;
  sub_1E65DA748();
  v69 = v136(v56, 1, v51);
  v70 = v146;
  if (v69 == 1)
  {
    sub_1E5DFE50C(v56, &qword_1ED0795F0, &qword_1E6601720);
    v135 = 0;
    i = 0;
LABEL_37:
    sub_1E65DA768();
    if (v136(v55, 1, v51) == 1)
    {
      sub_1E5DFE50C(v55, &qword_1ED0795F0, &qword_1E6601720);
      v144 = 0;
      v145 = 0;
    }

    else
    {
      v97 = sub_1E65D9248();
      v144 = v98;
      v145 = v97;
      (*(v52 + 8))(v55, v51);
    }

    sub_1E65DA768();
    if (v136(v70, 1, v51) == 1)
    {
      sub_1E5DFE50C(v70, &qword_1ED0795F0, &qword_1E6601720);
      v99 = 0;
    }

    else
    {
      v100 = sub_1E65D9238();
      v101 = v100;
      if (v100)
      {
        MEMORY[0x1EEE9AC00](v100);
        v102 = v149;
        *(&v122 - 10) = v148;
        *(&v122 - 9) = v102;
        v103 = v133;
        *(&v122 - 8) = v150;
        *(&v122 - 7) = v103;
        v116 = v147;
        v117 = v132;
        v118 = v158;
        v119 = v104;
        v120 = v142;
        v105 = sub_1E64072E4(sub_1E64290B4, (&v122 - 12), v101, MEMORY[0x1E69CCFD8]);

        v155 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
        sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150);
        sub_1E65E5B68();
        v99 = v106;
        v70 = v146;
      }

      else
      {
        v99 = 0;
      }

      (*(v131 + 8))(v70, v51);
    }

    v107 = sub_1E65DA718();
    MEMORY[0x1EEE9AC00](v107);
    *(&v122 - 12) = v140;
    *(&v122 - 88) = a13 & 1;
    *(&v122 - 10) = a14;
    v108 = v129;
    *(&v122 - 72) = v129;
    v109 = v148;
    *(&v122 - 8) = v147;
    *(&v122 - 7) = v109;
    v116 = v149;
    v117 = v150;
    v118 = v142;
    v119 = v132;
    v120 = v133;
    v110 = sub_1E6406C60(sub_1E6428EDC, (&v122 - 14), v107);

    v111 = sub_1E6415698(v108);
    v112 = v141;
    sub_1E65DA758();
    v113 = sub_1E65D99A8();
    v115 = v114;
    (*(v138 + 8))(v112, v130);
    v119 = v113;
    v120 = v115;
    LOBYTE(v118) = v111;
    v116 = v99;
    v117 = v110;
    a9 = v134;
    sub_1E65DC8A8();
    sub_1E5DFE50C(v158, &qword_1ED076B98, &qword_1E65F78F8);
    v48 = 0;
    goto LABEL_7;
  }

  v71 = sub_1E65D9268();
  if (!v71)
  {
    v135 = sub_1E65D9248();
    i = v75;
LABEL_36:
    (*(v52 + 8))(v56, v51);
    goto LABEL_37;
  }

  v72 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v116 = v148;
  v117 = v149;
  v118 = v150;
  v119 = v133;
  v120 = v147;
  v121 = v132;
  v73 = sub_1E6406AB0(sub_1E64290CC, (&v122 - 8), v72);

  if (*(v73 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
    v74 = sub_1E65E6A28();
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC8];
  }

  v155 = v74;

  sub_1E64267D8(v76, 1, &v155);
  if (!v14)
  {

    v77 = v155;
    v135 = sub_1E65D9248();
    v79 = v78;
    v80 = v77 + 64;
    v81 = 1 << *(v77 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v77 + 64);
    v84 = (v81 + 63) >> 6;
    v125 = v77;

    v85 = 0;
    v123 = v51;
    v124 = 0;
    for (i = v79; v83; i = v96)
    {
      v86 = v85;
LABEL_33:
      v87 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v88 = (v86 << 10) | (16 * v87);
      v89 = (*(v125 + 48) + v88);
      v90 = *v89;
      v91 = v89[1];
      v92 = (*(v125 + 56) + v88);
      v93 = *v92;
      v94 = v92[1];
      v155 = v135;
      v156 = v79;
      v153 = 123;
      v154 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v90, v91);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v151 = v93;
      v152 = v94;
      v120 = sub_1E5F9AEA8();
      v121 = v120;
      v119 = v120;
      v118 = MEMORY[0x1E69E6158];
      v135 = sub_1E65E66B8();
      v96 = v95;

      v79 = v96;
      v51 = v123;
    }

    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v86 >= v84)
      {

        v70 = v146;
        v52 = v131;
        v56 = v143;
        v55 = v144;
        goto LABEL_36;
      }

      v83 = *(v80 + 8 * v86);
      ++v85;
      if (v83)
      {
        v85 = v86;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PersonalizationText.getModalityReferenceFromTitle(allModalities:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E65DA838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v42 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  result = sub_1E65D9268();
  if (result)
  {
    v43 = v9;
    v44 = v12;
    v45 = a1;
    v46 = a2;
    v18 = result;
    v53 = *(result + 16);
    if (v53)
    {
      v19 = 0;
      v52 = v5 + 16;
      v48 = (v5 + 8);
      v50 = (v5 + 32);
      v20 = MEMORY[0x1E69E7CC0];
      v47 = v4;
      v49 = result;
      while (1)
      {
        if (v19 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v22 = *(v5 + 72);
        (*(v5 + 16))(v16, v18 + v21 + v22 * v19, v4);
        v23 = sub_1E65DA818();
        if (v25)
        {
          v26 = sub_1E65DABF8();
          v28 = v27;
          if (v26 == sub_1E65DABF8() && v28 == v29)
          {

LABEL_13:
            v31 = *v50;
            (*v50)(v51, v16, v4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601D090(0, *(v20 + 16) + 1, 1);
              v20 = v54;
            }

            v34 = *(v20 + 16);
            v33 = *(v20 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_1E601D090(v33 > 1, v34 + 1, 1);
              v20 = v54;
            }

            *(v20 + 16) = v34 + 1;
            v35 = v20 + v21 + v34 * v22;
            v4 = v47;
            result = (v31)(v35, v51, v47);
            v18 = v49;
            goto LABEL_6;
          }

          v30 = sub_1E65E6C18();

          v18 = v49;
          if (v30)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1E5F87058(v23, v24, 0);
        }

        result = (*v48)(v16, v4);
LABEL_6:
        if (v53 == ++v19)
        {
          goto LABEL_22;
        }
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_22:

    if (*(v20 + 16) == 1)
    {
      v38 = v43;
      (*(v5 + 16))(v43, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v39 = v44;
      v40 = (*(v5 + 32))(v44, v38, v4);
      MEMORY[0x1EEE9AC00](v40);
      *(&v42 - 2) = v39;
      sub_1E641031C(sub_1E64275FC, v45, MEMORY[0x1E69CC8D0], v46);
      return (*(v5 + 8))(v39, v4);
    }

    else
    {

      v41 = sub_1E65D9D28();
      return (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    }
  }

  else
  {
    v36 = sub_1E65D9D28();
    v37 = *(*(v36 - 8) + 56);

    return v37(a2, 1, 1, v36);
  }
}

uint64_t PersonalizationText.localizeFillers(bodyFocusMap:locale:modalityMap:musicGenreMap:skillLevelMap:themeMap:trainerMap:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v13 = sub_1E65D9268();
  if (v13)
  {
    v14 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v40[2] = a2;
    v40[3] = a3;
    v41 = a4;
    v42 = a7;
    v43 = a1;
    v44 = a6;
    v15 = sub_1E6406AB0(sub_1E642761C, v40, v14);

    if (*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
      v16 = sub_1E65E6A28();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC8];
    }

    v50[0] = v16;

    sub_1E64267D8(v18, 1, v50);

    v19 = v50[0];
    v17 = sub_1E65D9248();
    v21 = v20;
    v22 = v19 + 64;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 64);
    v26 = (v23 + 63) >> 6;
    v45 = v19;

    for (i = 0; v25; v21 = v38)
    {
      v28 = i;
LABEL_14:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (v28 << 10) | (16 * v29);
      v31 = (*(v45 + 48) + v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = (*(v45 + 56) + v30);
      v36 = *v34;
      v35 = v34[1];
      v50[0] = v17;
      v50[1] = v21;
      v48 = 123;
      v49 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v33, v32);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v46 = v36;
      v47 = v35;
      v43 = sub_1E5F9AEA8();
      v44 = v43;
      v42 = v43;
      v41 = MEMORY[0x1E69E6158];
      v17 = sub_1E65E66B8();
      v38 = v37;
    }

    while (1)
    {
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        return v17;
      }

      v25 = *(v22 + 8 * v28);
      ++i;
      if (v25)
      {
        i = v28;
        goto LABEL_14;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    return sub_1E65D9248();
  }

  return result;
}

uint64_t PersonalizationText.localizeTags(bodyFocusMap:filterConfigurations:locale:modalityMap:modalityReference:musicGenreMap:skillLevelMap:themeMap:trainerMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1E65D9238();
  v17 = v16;
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a6;
    v21[5] = v18;
    v21[6] = a1;
    v21[7] = a8;
    v21[8] = a5;
    v21[9] = a2;
    v21[10] = a7;
    v19 = sub_1E64072E4(sub_1E6427634, v21, v17, MEMORY[0x1E69CCFD8]);

    v21[12] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150);
    v17 = sub_1E65E5B68();
  }

  return v17;
}

uint64_t sub_1E6414B8C@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v139 = a6;
  v140 = a7;
  v141 = a5;
  LODWORD(i) = a4;
  v143 = a3;
  v148 = sub_1E65DA378();
  v146 = *(v148 - 8);
  v12 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v142 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079610, &qword_1E6601740);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v145 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v130 - v18;
  v19 = sub_1E65DC758();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v147 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F0, &qword_1E6601720);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v149 = &v130 - v24;
  v25 = sub_1E65D9DD8();
  v27 = v26;
  v29 = v28;
  v160 = sub_1E6413384();
  v30 = v160;
  sub_1E5F87058(v25, v27, v29 & 1);
  if (v30 == 9)
  {
    v31 = sub_1E65DC818();
    return (*(*(v31 - 8) + 56))(a8, 1, 1, v31);
  }

  v138 = a8;
  v144 = v8;
  v33 = sub_1E65D9DB8();
  if (!v34)
  {
    v46 = 7;
    v41 = v160;
    goto LABEL_12;
  }

  v35 = v34;
  v36 = v33;
  v37 = sub_1E65D82C8();
  if (!*(v37 + 16))
  {

    v41 = v160;
    goto LABEL_11;
  }

  v38 = sub_1E6215038(v36, v35);
  v40 = v39;

  v41 = v160;
  if ((v40 & 1) == 0)
  {
LABEL_11:

    v46 = 7;
    goto LABEL_12;
  }

  v42 = *(v37 + 56) + 24 * v38;
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  sub_1E5F8710C(*v42, v44, v45);

  v152 = v43;
  v153 = v44;
  v154 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079620, &qword_1E6601750);
  sub_1E65D7FB8();
  sub_1E5F87058(v43, v44, v45);
  v46 = v157;
  if (v157 - 3 >= 0xFFFFFFFE && (a2 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  v47 = sub_1E65D9DA8();
  v49 = v48;
  if (v41)
  {
    v136 = v46;
    v137 = v47;
    goto LABEL_14;
  }

  v71 = v143;
  if (!*(v143 + 16))
  {

    goto LABEL_29;
  }

  v72 = sub_1E6215038(v47, v48);
  v74 = v73;

  if ((v74 & 1) == 0)
  {
LABEL_29:
    v85 = sub_1E65DC818();
    return (*(*(v85 - 8) + 56))(v138, 1, 1, v85);
  }

  v136 = v46;
  v75 = (*(v71 + 56) + 16 * v72);
  v49 = v75[1];
  v137 = *v75;

LABEL_14:
  v50 = i;
  v51 = sub_1E65D8E48();
  v53 = v52;
  v54 = sub_1E65D9DA8();
  v56 = v55;
  v57 = sub_1E65D9DE8();
  if (v58)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v152 = v54;
  v153 = v56;

  MEMORY[0x1E694D7C0](v59, v60);

  MEMORY[0x1E694D7C0](v51, v53);
  swift_bridgeObjectRelease_n();

  v62 = v152;
  v61 = v153;
  v135 = sub_1E65D9DE8();
  v134 = v63;
  v159 = sub_1E6415698(v50);
  v64 = v149;
  sub_1E65D9E08();
  v65 = sub_1E65D9278();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v64, 1, v65);
  v143 = v49;
  if (v67 == 1)
  {
    sub_1E5DFE50C(v64, &qword_1ED0795F0, &qword_1E6601720);
    v68 = 0;
    i = 0;
    v69 = v146;
    v70 = v151;
LABEL_45:
    v111 = 0x202020202010002uLL >> (8 * v136);
    sub_1E65D9DC8();
    v112 = v145;
    sub_1E5DFD1CC(v70, v145, &qword_1ED079610, &qword_1E6601740);
    v113 = v148;
    if ((*(v69 + 48))(v112, 1, v148) == 1)
    {
      sub_1E5DFE50C(v70, &qword_1ED079610, &qword_1E6601740);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
      v115 = v147;
      (*(*(v114 - 8) + 56))(v147, 1, 1, v114);
    }

    else
    {
      v116 = *(v69 + 32);
      v146 = v111;
      v117 = v142;
      v116(v142, v112, v113);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
      v119 = v69;
      v120 = *(v118 + 48);
      v149 = v68;
      v121 = v147;
      v122 = v113;
      sub_1E65DA358();
      v123 = sub_1E65DA368();
      (*(v119 + 8))(v117, v122);
      sub_1E5DFE50C(v151, &qword_1ED079610, &qword_1E6601740);
      v121[v120] = v123 & 1;
      v115 = v121;
      v68 = v149;
      (*(*(v118 - 8) + 56))(v115, 0, 1, v118);
    }

    v124 = v138;
    v129 = v115;
    v127 = v68;
    v128 = i;
    LOBYTE(v126) = v159;
    sub_1E65DC788();
    v125 = sub_1E65DC818();
    return (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  }

  v133 = v66;
  v76 = sub_1E65D9268();
  v70 = v151;
  if (!v76)
  {
    v86 = sub_1E65D9248();
    i = v87;
LABEL_44:
    (*(v133 + 8))(v64, v65);
    v69 = v146;
    v68 = v86;
    goto LABEL_45;
  }

  v77 = v76;
  v131 = v65;
  v132 = v61;
  MEMORY[0x1EEE9AC00](v76);
  v78 = v140;
  *(&v130 - 6) = v139;
  *(&v130 - 5) = v78;
  v126 = v80;
  v127 = v79;
  v128 = v141;
  v129 = v81;
  v82 = v144;
  v83 = sub_1E6406AB0(sub_1E64290CC, (&v130 - 8), v77);

  if (*(v83 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
    v84 = sub_1E65E6A28();
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC8];
  }

  v139 = v62;
  v140 = a1;
  v152 = v84;

  sub_1E64267D8(v88, 1, &v152);
  v144 = v82;
  if (!v82)
  {

    v89 = v152;
    v90 = sub_1E65D9248();
    v92 = v91;
    v93 = v89 + 64;
    v94 = 1 << *(v89 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & *(v89 + 64);
    v97 = (v94 + 63) >> 6;
    v141 = v89;

    v98 = 0;
    for (i = v92; v96; i = v110)
    {
      v99 = v90;
      v100 = v98;
LABEL_41:
      v101 = __clz(__rbit64(v96));
      v96 &= v96 - 1;
      v102 = (v100 << 10) | (16 * v101);
      v103 = (*(v141 + 48) + v102);
      v104 = *v103;
      v105 = v103[1];
      v106 = (*(v141 + 56) + v102);
      v107 = *v106;
      v108 = v106[1];
      v152 = v99;
      v153 = v92;
      v157 = 123;
      v158 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v104, v105);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v155 = v107;
      v156 = v108;
      v128 = sub_1E5F9AEA8();
      v129 = v128;
      v127 = v128;
      v126 = MEMORY[0x1E69E6158];
      v90 = sub_1E65E66B8();
      v110 = v109;

      v92 = v110;
    }

    while (1)
    {
      v100 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (v100 >= v97)
      {
        v86 = v90;

        v70 = v151;
        v64 = v149;
        v65 = v131;
        goto LABEL_44;
      }

      v96 = *(v93 + 8 * v100);
      ++v98;
      if (v96)
      {
        v99 = v90;
        v98 = v100;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1E6415698(char a1)
{
  result = 0;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
      result = 2;
      break;
    case 5:
      result = 1;
      break;
    case 6:
      result = 3;
      break;
    case 9:
      result = 4;
      break;
    case 10:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 14:
      result = 7;
      break;
    case 16:
      result = 8;
      break;
    case 20:
      result = 9;
      break;
    case 21:
      result = 10;
      break;
    case 22:
      result = 11;
      break;
    case 31:
      result = 12;
      break;
    case 32:
      result = 13;
      break;
    case 33:
      result = 14;
      break;
    case 38:
      result = 16;
      break;
    case 44:
      result = 15;
      break;
    default:
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000001ELL, 0x80000001E6617070);
      sub_1E65E69B8();
      MEMORY[0x1E694D7C0](0x59726F46206E6F20, 0xEA0000000000756FLL);
      result = sub_1E65E69D8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1E6415818()
{
  v0 = sub_1E65D9CD8();
  v2 = v1;
  if (v0 == sub_1E65DA808() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E64158B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v109 = a1;
  v13 = sub_1E65D7848();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E5C28();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v105 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E5C08();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1E65DA818();
  v23 = v21;
  if ((v24 & 1) == 0)
  {
    result = sub_1E5F87058(v21, v22, 0);
    goto LABEL_10;
  }

  result = sub_1E65DA828();
  if (!v26)
  {
LABEL_10:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  if (v23 > 2u)
  {
    if (v23 <= 4u)
    {
      v27 = result;
      v28 = v26;
      if (v23 == 3)
      {
        v29 = sub_1E65DA808();
        if (*(a3 + 16))
        {
          v31 = sub_1E6215038(v29, v30);
          v33 = v32;

          if (v33)
          {
            v34 = (*(a3 + 56) + 16 * v31);
LABEL_43:
            v72 = *v34;
            v71 = v34[1];

LABEL_49:
            v110 = v72;
            v111 = v73;
            result = sub_1E65E5E58();
            *a7 = v27;
            *(a7 + 8) = v28;
LABEL_108:
            *(a7 + 16) = result;
            *(a7 + 24) = v84;
            return result;
          }

          goto LABEL_48;
        }
      }

      else
      {
        v66 = sub_1E65DA808();
        if (*(a2 + 16))
        {
          v68 = sub_1E6215038(v66, v67);
          v70 = v69;

          if (v70)
          {
            v34 = (*(a2 + 56) + 16 * v68);
            goto LABEL_43;
          }

LABEL_48:
          v72 = 0;
          v73 = 0xE000000000000000;
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }

    if (v23 == 5)
    {

      goto LABEL_10;
    }

    v74 = result;
    v47 = v26;
    v75 = sub_1E65DA808();
    if (*(a4 + 16))
    {
      v77 = sub_1E6215038(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (*(a4 + 56) + 16 * v77);
        v82 = *v80;
        v81 = v80[1];

LABEL_68:
        v110 = v82;
        v111 = v83;
        result = sub_1E65E5E58();
        *a7 = v74;
        goto LABEL_69;
      }
    }

    else
    {
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    goto LABEL_68;
  }

  if (!v23)
  {
    v46 = result;
    v47 = v26;
    v48 = sub_1E65DA808();
    if (*(a5 + 16))
    {
      v50 = sub_1E6215038(v48, v49);
      v52 = v51;

      if (v52)
      {
        v53 = (*(a5 + 56) + 16 * v50);
        v55 = *v53;
        v54 = v53[1];

LABEL_62:
        v110 = v55;
        v111 = v56;
        result = sub_1E65E5E58();
        *a7 = v46;
LABEL_69:
        *(a7 + 8) = v47;
        goto LABEL_108;
      }
    }

    else
    {
    }

    v55 = 0;
    v56 = 0xE000000000000000;
    goto LABEL_62;
  }

  v35 = result;
  v36 = v26;
  if (v23 == 1)
  {
    v37 = sub_1E65DA808();
    if (*(a6 + 16))
    {
      v39 = sub_1E6215038(v37, v38);
      v41 = v40;

      if (v41)
      {
        v42 = (*(a6 + 56) + 16 * v39);
        v44 = *v42;
        v43 = v42[1];

LABEL_65:
        v110 = v44;
        v111 = v45;
        result = sub_1E65E5E58();
LABEL_107:
        *a7 = v35;
        *(a7 + 8) = v36;
        goto LABEL_108;
      }
    }

    else
    {
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_65;
  }

  result = sub_1E65DA808();
  v58 = HIBYTE(v57) & 0xF;
  v59 = result & 0xFFFFFFFFFFFFLL;
  if ((v57 & 0x2000000000000000) != 0)
  {
    v60 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v60 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {

    goto LABEL_103;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    v112 = 0;
    v62 = sub_1E6426B88(result, v57, 10);
    v101 = v100;

    if (v101)
    {
      goto LABEL_103;
    }

    goto LABEL_106;
  }

  if ((v57 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v57 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E65E6908();
      v59 = v104;
    }

    v61 = *result;
    if (v61 == 43)
    {
      if (v59 >= 1)
      {
        if (--v59)
        {
          v62 = 0;
          if (result)
          {
            v88 = (result + 1);
            while (1)
            {
              v89 = *v88 - 48;
              if (v89 > 9)
              {
                goto LABEL_101;
              }

              v90 = 10 * v62;
              if ((v62 * 10) >> 64 != (10 * v62) >> 63)
              {
                goto LABEL_101;
              }

              v62 = v90 + v89;
              if (__OFADD__(v90, v89))
              {
                goto LABEL_101;
              }

              ++v88;
              if (!--v59)
              {
                goto LABEL_102;
              }
            }
          }

          goto LABEL_100;
        }

        goto LABEL_101;
      }

      goto LABEL_112;
    }

    if (v61 != 45)
    {
      if (v59)
      {
        v62 = 0;
        if (result)
        {
          while (1)
          {
            v94 = *result - 48;
            if (v94 > 9)
            {
              goto LABEL_101;
            }

            v95 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_101;
            }

            v62 = v95 + v94;
            if (__OFADD__(v95, v94))
            {
              goto LABEL_101;
            }

            ++result;
            if (!--v59)
            {
              goto LABEL_102;
            }
          }
        }

        goto LABEL_100;
      }

LABEL_101:
      v62 = 0;
      LOBYTE(v59) = 1;
LABEL_102:
      v112 = v59;
      v99 = v59;

      if (v99)
      {
LABEL_103:

        *a7 = 0u;
        *(a7 + 16) = 0u;
        return result;
      }

LABEL_106:
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v110 = v62;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v103 = [objc_opt_self() bundleForClass_];
      (*(v107 + 16))(v106, v109, v108);
      result = sub_1E65E5D48();
      goto LABEL_107;
    }

    if (v59 >= 1)
    {
      if (--v59)
      {
        v62 = 0;
        if (result)
        {
          v63 = (result + 1);
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              goto LABEL_101;
            }

            v65 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_101;
            }

            v62 = v65 - v64;
            if (__OFSUB__(v65, v64))
            {
              goto LABEL_101;
            }

            ++v63;
            if (!--v59)
            {
              goto LABEL_102;
            }
          }
        }

LABEL_100:
        LOBYTE(v59) = 0;
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = result;
  v111 = v57 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v58)
      {
        v62 = 0;
        v96 = &v110;
        while (1)
        {
          v97 = *v96 - 48;
          if (v97 > 9)
          {
            break;
          }

          v98 = 10 * v62;
          if ((v62 * 10) >> 64 != (10 * v62) >> 63)
          {
            break;
          }

          v62 = v98 + v97;
          if (__OFADD__(v98, v97))
          {
            break;
          }

          v96 = (v96 + 1);
          if (!--v58)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_101;
    }

    if (v58)
    {
      v59 = v58 - 1;
      if (v58 != 1)
      {
        v62 = 0;
        v85 = &v110 + 1;
        while (1)
        {
          v86 = *v85 - 48;
          if (v86 > 9)
          {
            break;
          }

          v87 = 10 * v62;
          if ((v62 * 10) >> 64 != (10 * v62) >> 63)
          {
            break;
          }

          v62 = v87 - v86;
          if (__OFSUB__(v87, v86))
          {
            break;
          }

          ++v85;
          if (!--v59)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_101;
    }

    goto LABEL_111;
  }

  if (v58)
  {
    v59 = v58 - 1;
    if (v58 != 1)
    {
      v62 = 0;
      v91 = &v110 + 1;
      while (1)
      {
        v92 = *v91 - 48;
        if (v92 > 9)
        {
          break;
        }

        v93 = 10 * v62;
        if ((v62 * 10) >> 64 != (10 * v62) >> 63)
        {
          break;
        }

        v62 = v93 + v92;
        if (__OFADD__(v93, v92))
        {
          break;
        }

        ++v91;
        if (!--v59)
        {
          goto LABEL_102;
        }
      }
    }

    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_1E64160A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v116 = a7;
  v117 = a2;
  v119 = a4;
  v120 = a6;
  v118 = a3;
  v112 = a1;
  v13 = sub_1E65D91F8();
  v14 = *(v13 - 8);
  v114 = v13;
  v115 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v113 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079478, &qword_1E66015C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v108 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v108 - v26;
  v28 = sub_1E65D9D28();
  v121 = *(v28 - 8);
  v29 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E65D7848();
  v110 = *(v32 - 8);
  v111 = v32;
  v33 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v109 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E5C28();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v108[2] = v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65E5C08();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v108[1] = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65DA818();
  if ((v43 & 1) == 0)
  {
    result = sub_1E5F87058(v41, v42, 0);
    *a8 = 0;
    a8[1] = 0;
    return result;
  }

  v108[0] = v10;
  if (v41 > 2u)
  {
    if (v41 <= 4u)
    {
      if (v41 == 3)
      {
        v44 = sub_1E65DA808();
        a5 = v118;
        if (!*(v118 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v44 = sub_1E65DA808();
        a5 = v117;
        if (!*(v117 + 16))
        {
          goto LABEL_11;
        }
      }

LABEL_16:
      v48 = sub_1E6215038(v44, v45);
      v50 = v49;

      if (v50)
      {
        v51 = (*(a5 + 56) + 16 * v48);
        v53 = *v51;
        v52 = v51[1];

LABEL_19:
        v122 = v53;
        v123 = v54;
        result = sub_1E65E5E58();
        *a8 = result;
        a8[1] = v55;
        return result;
      }

LABEL_18:
      v53 = 0;
      v54 = 0xE000000000000000;
      goto LABEL_19;
    }

    if (v41 != 5)
    {
      v44 = sub_1E65DA808();
      a5 = v119;
      if (!*(v119 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    sub_1E5DFD1CC(v116, v27, &qword_1ED076B98, &qword_1E65F78F8);
    v47 = v121;
    if ((*(v121 + 48))(v27, 1, v28) == 1)
    {
      result = sub_1E5DFE50C(v27, &qword_1ED076B98, &qword_1E65F78F8);
      *a8 = 0;
      a8[1] = 0;
      return result;
    }

    v66 = (*(v47 + 32))(v31, v27, v28);
    MEMORY[0x1EEE9AC00](v66);
    v108[-2] = v31;
    sub_1E641031C(sub_1E6428DAC, a9, MEMORY[0x1E69CBF30], v23);
    sub_1E5DFD1CC(v23, v21, &qword_1ED079478, &qword_1E66015C0);
    v68 = v114;
    v67 = v115;
    if ((*(v115 + 48))(v21, 1, v114) == 1)
    {
      sub_1E5DFE50C(v23, &qword_1ED079478, &qword_1E66015C0);
      v23 = v21;
    }

    else
    {
      (*(v67 + 32))(v113, v21, v68);
      v72 = sub_1E65DA808();
      if (*(a10 + 16))
      {
        v74 = sub_1E6215038(v72, v73);
        v76 = v75;
        v68 = v114;

        if (v76)
        {
          v77 = (*(a10 + 56) + 16 * v74);
          v79 = *v77;
          v78 = v77[1];

          v80 = sub_1E65D91D8();
          if (*(v80 + 16))
          {
            v81 = sub_1E6215038(v79, v78);
            v83 = v82;

            if (v83)
            {
              v84 = (*(v80 + 56) + 16 * v81);
              v86 = *v84;
              v85 = v84[1];
            }

            else
            {

              v86 = 0;
              v85 = 0xE000000000000000;
            }

            v68 = v114;
          }

          else
          {

            v86 = 0;
            v85 = 0xE000000000000000;
          }

          v122 = v86;
          v123 = v85;
          v99 = sub_1E65E5E58();
          v101 = v100;
          (*(v115 + 8))(v113, v68);
          sub_1E5DFE50C(v23, &qword_1ED079478, &qword_1E66015C0);
          *a8 = v99;
          a8[1] = v101;
          return (*(v121 + 8))(v31, v28);
        }
      }

      else
      {
      }

      (*(v115 + 8))(v113, v68);
    }

    sub_1E5DFE50C(v23, &qword_1ED079478, &qword_1E66015C0);
    *a8 = 0;
    a8[1] = 0;
    return (*(v121 + 8))(v31, v28);
  }

  if (!v41)
  {
    v44 = sub_1E65DA808();
    if (*(a5 + 16))
    {
      goto LABEL_16;
    }

LABEL_11:

    goto LABEL_18;
  }

  if (v41 == 1)
  {
    v44 = sub_1E65DA808();
    a5 = v120;
    if (*(v120 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  result = sub_1E65DA808();
  v57 = HIBYTE(v56) & 0xF;
  v58 = result & 0xFFFFFFFFFFFFLL;
  if ((v56 & 0x2000000000000000) != 0)
  {
    v59 = HIBYTE(v56) & 0xF;
  }

  else
  {
    v59 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {

    v60 = a8;
    goto LABEL_93;
  }

  v60 = a8;
  if ((v56 & 0x1000000000000000) != 0)
  {
    v124 = 0;
    v62 = sub_1E6426B88(result, v56, 10);
    v103 = v102;

    if (v103)
    {
      goto LABEL_93;
    }

LABEL_104:
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v122 = v62;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v105 = [objc_opt_self() bundleForClass_];
    (*(v110 + 16))(v109, v112, v111);
    result = sub_1E65E5D48();
    *v60 = result;
    v60[1] = v106;
    return result;
  }

  if ((v56 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v56 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E65E6908();
      v58 = v107;
    }

    v61 = *result;
    if (v61 == 43)
    {
      if (v58 >= 1)
      {
        if (--v58)
        {
          v62 = 0;
          if (result)
          {
            v87 = (result + 1);
            while (1)
            {
              v88 = *v87 - 48;
              if (v88 > 9)
              {
                goto LABEL_91;
              }

              v89 = 10 * v62;
              if ((v62 * 10) >> 64 != (10 * v62) >> 63)
              {
                goto LABEL_91;
              }

              v62 = v89 + v88;
              if (__OFADD__(v89, v88))
              {
                goto LABEL_91;
              }

              ++v87;
              if (!--v58)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_90;
        }

        goto LABEL_91;
      }

      goto LABEL_108;
    }

    if (v61 != 45)
    {
      if (v58)
      {
        v62 = 0;
        if (result)
        {
          while (1)
          {
            v93 = *result - 48;
            if (v93 > 9)
            {
              goto LABEL_91;
            }

            v94 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_91;
            }

            v62 = v94 + v93;
            if (__OFADD__(v94, v93))
            {
              goto LABEL_91;
            }

            ++result;
            if (!--v58)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_90;
      }

LABEL_91:
      v62 = 0;
      LOBYTE(v58) = 1;
LABEL_92:
      v124 = v58;
      v98 = v58;

      if (v98)
      {
LABEL_93:
        *v60 = 0;
        v60[1] = 0;
        return result;
      }

      goto LABEL_104;
    }

    if (v58 >= 1)
    {
      if (--v58)
      {
        v62 = 0;
        if (result)
        {
          v63 = (result + 1);
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              goto LABEL_91;
            }

            v65 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_91;
            }

            v62 = v65 - v64;
            if (__OFSUB__(v65, v64))
            {
              goto LABEL_91;
            }

            ++v63;
            if (!--v58)
            {
              goto LABEL_92;
            }
          }
        }

LABEL_90:
        LOBYTE(v58) = 0;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v122 = result;
  v123 = v56 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v57)
      {
        v62 = 0;
        v95 = &v122;
        while (1)
        {
          v96 = *v95 - 48;
          if (v96 > 9)
          {
            break;
          }

          v97 = 10 * v62;
          if ((v62 * 10) >> 64 != (10 * v62) >> 63)
          {
            break;
          }

          v62 = v97 + v96;
          if (__OFADD__(v97, v96))
          {
            break;
          }

          v95 = (v95 + 1);
          if (!--v57)
          {
            goto LABEL_90;
          }
        }
      }

      goto LABEL_91;
    }

    if (v57)
    {
      v58 = v57 - 1;
      if (v57 != 1)
      {
        v62 = 0;
        v69 = &v122 + 1;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v62;
          if ((v62 * 10) >> 64 != (10 * v62) >> 63)
          {
            break;
          }

          v62 = v71 - v70;
          if (__OFSUB__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v58)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_91;
    }

    goto LABEL_107;
  }

  if (v57)
  {
    v58 = v57 - 1;
    if (v57 != 1)
    {
      v62 = 0;
      v90 = &v122 + 1;
      while (1)
      {
        v91 = *v90 - 48;
        if (v91 > 9)
        {
          break;
        }

        v92 = 10 * v62;
        if ((v62 * 10) >> 64 != (10 * v62) >> 63)
        {
          break;
        }

        v62 = v92 + v91;
        if (__OFADD__(v92, v91))
        {
          break;
        }

        ++v90;
        if (!--v58)
        {
          goto LABEL_92;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_109:
  __break(1u);
  return result;
}

BOOL sub_1E6416BB4()
{
  v0 = sub_1E65D9CF8();
  v1 = sub_1E65D91A8();
  v2 = *(v0 + 16);
  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v0 + v3);
    v3 += 8;
  }

  while (v6 != v1);
  v7 = v4 != 0;

  return v7;
}

unint64_t sub_1E6416C60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65DB048();
  v5 = MEMORY[0x1E699CFF0];
  sub_1E642906C(&qword_1EE2D6DB8, MEMORY[0x1E699CFF0]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E699CFF0], &qword_1EE2D6DB0, v5, MEMORY[0x1E699D008]);
}

unint64_t sub_1E6416D34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65DB0E8();
  v5 = MEMORY[0x1E699D028];
  sub_1E642906C(&qword_1ED079320, MEMORY[0x1E699D028]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E699D028], &qword_1ED079328, v5, MEMORY[0x1E699D040]);
}

unint64_t sub_1E6416E08(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E65E6D28();
  sub_1E65E0B38();
  v4 = sub_1E65E6D78();

  return sub_1E6417840(a1, v4);
}

unint64_t sub_1E6416E74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  sub_1E5FED46C(&qword_1EE2D6B88, &qword_1ED074A08, &qword_1E65F3920);
  v5 = sub_1E65E5B38();

  return sub_1E64179A0(a1, v5);
}

unint64_t sub_1E6416F1C(double a1, double a2)
{
  v5 = *(v2 + 40);
  sub_1E65E6D28();
  if (a1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a1;
  }

  MEMORY[0x1E694E770](*&v6);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1E694E770](*&v7);
  v8 = sub_1E65E6D78();

  return sub_1E6417B64(v8, a1, a2);
}

unint64_t sub_1E6416FB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v3 + 40);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a3);
  sub_1E65E5D78();
  v8 = sub_1E65E6D78();

  return sub_1E6417BDC(a1, a2, a3, v8);
}

unint64_t sub_1E6417048(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E65E6818();

  return sub_1E6417D0C(a1, v5);
}

unint64_t sub_1E64170B8(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 40);
  sub_1E65E6D28();
  a2(a1);
  sub_1E65E5D78();

  v8 = sub_1E65E6D78();
  return sub_1E6418080(a1, v8, a3);
}

unint64_t sub_1E6417154(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65E2BA8();
  v5 = MEMORY[0x1E699F568];
  sub_1E642906C(&qword_1ED079410, MEMORY[0x1E699F568]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E699F568], &qword_1ED079418, v5, MEMORY[0x1E699F578]);
}

unint64_t sub_1E6417254(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E65E6D28();
  sub_1E608E000(a1, v9);
  if (v11)
  {
    v7[0] = v9[0];
    v7[1] = v9[1];
    v8 = v10;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v7);
  }

  else
  {
    v4 = *&v9[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v4);
  }

  v5 = sub_1E65E6D78();
  return sub_1E6417DD4(a1, v5);
}

unint64_t sub_1E6417318(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + 40);
  v7 = a3 & 1;
  sub_1E65E6D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E637E76C();
  sub_1E65D7FC8();
  v8 = sub_1E65E6D78();
  return sub_1E6417F74(a1, a2, v7, v8);
}

unint64_t sub_1E64173CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65D76A8();
  v5 = MEMORY[0x1E6969530];
  sub_1E642906C(&qword_1ED079528, MEMORY[0x1E6969530]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E6969530], &qword_1EE2D71D0, v5, MEMORY[0x1E6969550]);
}

unint64_t sub_1E64174A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65D8EF8();
  v5 = MEMORY[0x1E69CBBF8];
  sub_1E642906C(&qword_1ED0792C0, MEMORY[0x1E69CBBF8]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E69CBBF8], &qword_1ED0792C8, v5, MEMORY[0x1E69CBC08]);
}

unint64_t sub_1E64175A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65D96F8();
  v5 = MEMORY[0x1E69CC278];
  sub_1E642906C(&qword_1ED074190, MEMORY[0x1E69CC278]);
  v6 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v6, MEMORY[0x1E69CC278], &qword_1ED0763C8, v5, MEMORY[0x1E69CC290]);
}

unint64_t sub_1E64176A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1E642906C(v24, v25);
      v20 = sub_1E65E5B98();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1E6417840(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E65E0B48();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1E6429004(*(v2 + 48) + v13 * v11, v9, MEMORY[0x1E699DD40]);
      v14 = MEMORY[0x1E6948530](v9, a1);
      sub_1E6428F80(v9, MEMORY[0x1E699DD40]);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E64179A0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1E5FED46C(&qword_1ED079300, &qword_1ED074A08, &qword_1E65F3920);
      v16 = sub_1E65E5B98();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1E6417B64(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E6417BDC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 16);
      if (v16 <= 1)
      {
        if (v16)
        {
          if (a3 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (a3)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 2)
      {
        if (a3 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 3)
      {
        if (a3 != 3)
        {
          goto LABEL_4;
        }
      }

      else if (a3 != 4)
      {
        goto LABEL_4;
      }

      v17 = v14 == a1 && v15 == a2;
      if (v17 || (sub_1E65E6C18() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1E6417D0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E604FBF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E694E230](v9, a1);
      sub_1E6009FC0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E6417DD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E608E000(*(v2 + 48) + 48 * v4, v16);
      sub_1E608E000(v16, v12);
      sub_1E608E000(a1, v13);
      if (v12[40])
      {
        sub_1E608E000(v12, v11);
        if (v15)
        {
          v9[0] = v13[0];
          v9[1] = v13[1];
          v10 = v14;
          v7 = MEMORY[0x1E694E230](v11, v9);
          sub_1E6009FC0(v9);
          sub_1E608E17C(v16);
          sub_1E6009FC0(v11);
          if (v7)
          {
            goto LABEL_14;
          }

LABEL_12:
          sub_1E608E17C(v12);
          goto LABEL_5;
        }

        sub_1E608E17C(v16);
        sub_1E6009FC0(v11);
      }

      else
      {
        sub_1E608E17C(v16);
        sub_1E608E000(v12, v11);
        if ((v15 & 1) == 0)
        {
          if (v11[0] == *&v13[0])
          {
LABEL_14:
            sub_1E608E17C(v12);
            return v4;
          }

          goto LABEL_12;
        }
      }

      sub_1E5DFE50C(v12, &qword_1ED074210, &qword_1E65EFDF8);
LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E6417F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E6217698();
    sub_1E6069558();
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *v8;
      v11 = *(v8 + 16);
      if (sub_1E65D7FD8())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1E6418080(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = sub_1E65E6C18();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

double sub_1E6418198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E642342C();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_1E641EDA0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E641824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E5E2575C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6423C40();
      v12 = v22;
    }

    sub_1E5E0476C(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = type metadata accessor for NavigationControllerRoutingContext();
    v21 = *(v14 - 8);
    sub_1E5E24EEC(v13 + *(v21 + 72) * v9, a3, type metadata accessor for NavigationControllerRoutingContext);
    sub_1E641F10C(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for NavigationControllerRoutingContext();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1E64183B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_1E6416FB4(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v23 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6424024();
      v13 = v23;
    }

    sub_1E6001C2C(*(*(v13 + 48) + 24 * v10), *(*(v13 + 48) + 24 * v10 + 8), *(*(v13 + 48) + 24 * v10 + 16));
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a4, v14 + *(v22 + 72) * v10, v15);
    sub_1E641F594(v10, v13);
    *v5 = v13;
    v16 = *(v22 + 56);
    v17 = a4;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a4;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1E6418548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E6417254(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6424340();
      v11 = v15;
    }

    sub_1E608E17C(*(v11 + 48) + 48 * v8);
    v12 = (*(v11 + 56) + 48 * v8);
    v13 = v12[1];
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 25) = *(v12 + 25);
    sub_1E641F7E0(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  return result;
}

uint64_t sub_1E641860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E6416E74(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E642511C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_1E65DAFD8();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1E641FBF8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65DAFD8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E64187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1E6215038(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E64257C4(a3, a4, a5, a6);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v30 = *(v23 - 8);
    (*(v30 + 32))(a7, v22 + *(v30 + 72) * v17, v23);
    sub_1E641FF40(v17, v20, a3, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_1E6418960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6425A40();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65DBD88();
    v22 = *(v15 - 8);
    sub_1E5E24EEC(v14 + *(v22 + 72) * v9, a3, MEMORY[0x1E699D2D0]);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699D2D0]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65DBD88();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6418AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EC68], &qword_1ED0793F8, &qword_1E6601560);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65E3468();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699EC68]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E3468();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6418C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E6416E08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6425CC0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1E65E0B48();
    sub_1E6428F80(v12 + *(*(v13 - 8) + 72) * v8, MEMORY[0x1E699DD40]);
    v14 = *(v11 + 56);
    v15 = sub_1E65E0D48();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1E642013C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E0D48();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6418E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699D318], &qword_1ED079278, &qword_1E6601408);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65DBED8();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699D318]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65DBED8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6418FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699ECC8], &qword_1ED079338, &qword_1E66014A0);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65E3508();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699ECC8]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E3508();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6419174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EA38], &qword_1ED0793D8, &qword_1E6601540);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65E2F28();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699EA38]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E2F28();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E641931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EB58], &qword_1ED079518, &qword_1E6601650);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65E31D8();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699EB58]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E31D8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E64194C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699F2C0], &qword_1ED079350, &qword_1E66014B8);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65E2498();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699F2C0]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65E2498();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E641966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E6215038(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699D450], &qword_1ED079380, &qword_1E66014E8);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1E65DFA08();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1E64203F0(v9, v12, MEMORY[0x1E699D450]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1E65DFA08();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E6419814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0723C0, &qword_1E65EABF8);
  v41 = a2;
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1E604FBF8(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E6419AF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079298, &qword_1E6601428);
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 40 * v23;
      if (a2)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v40 = *(v25 + 32);
        v38 = v26;
        v39 = v27;
      }

      else
      {
        sub_1E604FBF8(v25, &v38);
      }

      v28 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65D9228();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v24;
      v17 = *(v8 + 56) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E6419E3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
  v40 = a2;
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E641A0FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_1E65E6A18();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v41 = v8;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v42 & 1) == 0)
      {
        v29 = v25[1];

        a5(v28);
      }

      v30 = *(v11 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1E641A3AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D8, &qword_1E6601708);
  v36 = a2;
  result = sub_1E65E6A18();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E641A664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792A8, &qword_1E6601438);
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 48 * v23);
      if (a2)
      {
        v26 = *v25;
        v27 = v25[2];
        v39 = v25[1];
        v40 = v27;
        v38 = v26;
      }

      else
      {
        sub_1E635A034(v25, &v38);
      }

      v28 = *(v8 + 40);
      sub_1E65E6D28();
      MEMORY[0x1E694E740](v24);
      result = sub_1E65E6D78();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v24;
      v17 = (*(v8 + 56) + 48 * v16);
      v18 = v38;
      v19 = v40;
      v17[1] = v39;
      v17[2] = v19;
      *v17 = v18;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E641A914(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792F0, &qword_1E6601470);
  v45 = a2;
  result = sub_1E65E6A18();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 24 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = v26 + *(v44 + 72) * v25;
      v47 = *(v44 + 72);
      if (v45)
      {
        (*v46)(v48, v31, v49);
      }

      else
      {
        (*v42)(v48, v31, v49);
        sub_1E600B01C(v28, v29, v30);
      }

      v32 = *(v12 + 40);
      sub_1E65E6D28();
      MEMORY[0x1E694E740](v30);
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 24 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      *(v21 + 16) = v30;
      result = (*v46)(*(v12 + 56) + v47 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1E641ACE0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1E65E2BA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_1E65E6A18();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1E642906C(&qword_1ED079410, MEMORY[0x1E699F568]);
      result = sub_1E65E5B38();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1E641B10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074220, &qword_1E65EFEA0);
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v24 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v27 = 48 * (v24 | (v9 << 6));
      v28 = (*(v5 + 48) + v27);
      if (a2)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v53 + 9) = *(v28 + 25);
        v52 = v29;
        v53[0] = v30;
        v31 = (*(v5 + 56) + v27);
        v32 = *(v31 + 25);
        v33 = v31[1];
        v50 = *v31;
        v51[0] = v33;
        *(v51 + 9) = v32;
      }

      else
      {
        sub_1E608E000(v28, &v52);
        sub_1E608E474(*(v5 + 56) + v27, &v50);
      }

      v34 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E608E000(&v52, v47);
      if (v49)
      {
        v45[0] = v47[0];
        v45[1] = v47[1];
        v46 = v48;
        MEMORY[0x1E694E740](1);
        sub_1E65E6838();
        sub_1E6009FC0(v45);
      }

      else
      {
        v35 = *&v47[0];
        MEMORY[0x1E694E740](0);
        MEMORY[0x1E694E740](v35);
      }

      result = sub_1E65E6D78();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 48 * v16;
      v18 = (*(v8 + 48) + v17);
      v19 = v52;
      v20 = v53[0];
      *(v18 + 25) = *(v53 + 9);
      *v18 = v19;
      v18[1] = v20;
      v21 = (*(v8 + 56) + v17);
      v22 = v50;
      v23 = v51[0];
      *(v21 + 25) = *(v51 + 9);
      *v21 = v22;
      v21[1] = v23;
      ++*(v8 + 16);
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v13 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_39;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}