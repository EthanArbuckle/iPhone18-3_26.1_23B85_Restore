uint64_t sub_1B8B9E1E8()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7708);
  __swift_project_value_buffer(v0, qword_1EBAA7708);
  return sub_1B8C23C28();
}

uint64_t sub_1B8B9E264(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B8C13FE8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B8B5FDD4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B8C13FE8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1B8B9E378(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 question];
  v6 = [v5 tat];
  v7 = sub_1B8C25128();
  v9 = v8;
  v10 = [v5 text];
  if (v10)
  {
    v11 = v10;

    v12 = sub_1B8C25128();
    v14 = v13;

    v15 = [v5 visible];
    sub_1B8B9E830(v5, &v21);
    if (v2)
    {
    }

    else
    {
      v28 = a2;
      v16 = v15 ^ 1;
      v17 = v21;
      v18 = v22;
      v21 = v7;
      v22 = v9;
      v23 = v12;
      v24 = v14;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v20 = sub_1B8B9F640(a1, &v21);

      v19 = v28;
      *v28 = v7;
      v19[1] = v9;
      v19[2] = v12;
      v19[3] = v14;
      *(v19 + 32) = v16;
      v19[5] = v17;
      *(v19 + 48) = v18;
      v19[7] = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B8B9E50C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7730, &qword_1B8C2C448);
    v2 = sub_1B8C257B8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
  v31[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v28 = v27;
LABEL_31:
      sub_1B8B9F31C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v28 << 6)), v31);
      v29 = sub_1B8C25788();
      sub_1B8B9F378(v31);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1B8B9F1DC(v30);
      v27 = v28;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v27;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1B8B9F31C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v31);
      v14 = sub_1B8C25788();
      sub_1B8B9F378(v31);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = *(v2 + 40);
      v18 = sub_1B8C255D8();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B8B9E830@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 answerType];
  if (result > 6)
  {
    if (result <= 9)
    {
      if (result == 7)
      {
        result = sub_1B8B9F3CC(a1);
        if (v2)
        {
          return result;
        }

        *a2 = result;
        v7 = 2;
        goto LABEL_32;
      }

      if (result != 8)
      {
        *a2 = 3;
        *(a2 + 8) = 3;
        return result;
      }

      v6 = 2;
      goto LABEL_30;
    }

    if (result == 10)
    {
      v6 = 4;
      goto LABEL_30;
    }

    if (result != 11)
    {
      if (result == 12)
      {
        v6 = 5;
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (result <= 1)
  {
    if (result != -1)
    {
      if (!result)
      {
        *a2 = 0;
LABEL_31:
        v7 = 3;
LABEL_32:
        *(a2 + 8) = v7;
        return result;
      }

      if (result == 1)
      {
        v6 = 1;
LABEL_30:
        *a2 = v6;
        goto LABEL_31;
      }
    }

    goto LABEL_20;
  }

  if ((result - 2) >= 2)
  {
    if ((result - 5) >= 2)
    {
      if (result == 4)
      {
        result = sub_1B8B9F3CC(a1);
        if (v2)
        {
          return result;
        }

        *a2 = result;
        v7 = 1;
        goto LABEL_32;
      }

LABEL_20:
      v8 = [a1 answerType];
      sub_1B8B9F9D0();
      swift_allocError();
      *v9 = v8;
      *(v9 + 8) = 1;
      return swift_willThrow();
    }

LABEL_21:
    v10 = [a1 answerType];
    sub_1B8B9F9D0();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
    return swift_willThrow();
  }

  result = sub_1B8B9F3CC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B8B9EA10(uint64_t a1, uint64_t a2)
{
  sub_1B8C257E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7778, &qword_1B8C2C6F8);
  v4 = sub_1B8C25178();

  MEMORY[0x1B8CC9EB0](0xD000000000000010, 0x80000001B8C349C0);
  MEMORY[0x1B8CC9EB0](a1, a2);
  return v4;
}

uint64_t sub_1B8B9EAE0(uint64_t a1, uint64_t a2)
{
  sub_1B8C257E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7770, &qword_1B8C2C6F0);
  v4 = sub_1B8C25178();

  MEMORY[0x1B8CC9EB0](0xD000000000000022, 0x80000001B8C34990);
  MEMORY[0x1B8CC9EB0](a1, a2);
  return v4;
}

uint64_t sub_1B8B9EBB0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7768, &qword_1B8C2C6E8);
    v3 = sub_1B8C25178();

    v9 = v3;
    v4 = 0xD000000000000020;
    v5 = 0x80000001B8C34940;
  }

  else
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7768, &qword_1B8C2C6E8);
    v6 = sub_1B8C25178();

    v9 = v6;
    v5 = 0x80000001B8C34970;
    v4 = 0xD00000000000001DLL;
  }

  MEMORY[0x1B8CC9EB0](v4, v5);
  v7 = sub_1B8BB769C(a1);
  MEMORY[0x1B8CC9EB0](v7);

  return v9;
}

uint64_t sub_1B8B9ED08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7760, &qword_1B8C2C6E0);
    v5 = sub_1B8C25178();

    v10 = v5;
    v6 = 0xD000000000000022;
    v7 = 0x80000001B8C348E0;
  }

  else
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7760, &qword_1B8C2C6E0);
    v8 = sub_1B8C25178();

    v10 = v8;
    v7 = 0x80000001B8C34910;
    v6 = 0xD000000000000021;
  }

  MEMORY[0x1B8CC9EB0](v6, v7);
  MEMORY[0x1B8CC9EB0](a1, a2);
  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return v10;
}

void sub_1B8B9EE68(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 value];
  sub_1B8C256B8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v7 = v29[0];
    v8 = v29[1];
    v9 = [v5 title];
    v10 = sub_1B8C25128();
    v12 = v11;

    *a3 = v10;
    a3[1] = v12;
    a3[2] = v7;
    a3[3] = v8;
  }

  else
  {
    if (qword_1EBAA5900 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7708);
    v14 = a2;
    v15 = v5;
    v16 = sub_1B8C23C18();
    v17 = sub_1B8C25478();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v29[0] = v30;
      *v18 = 136315394;
      v19 = [v14 tat];
      v20 = sub_1B8C25128();
      v22 = v21;

      v23 = sub_1B8B5DD48(v20, v22, v29);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = [v15 value];
      sub_1B8C256B8();
      swift_unknownObjectRelease();
      v25 = sub_1B8C25178();
      v27 = sub_1B8B5DD48(v25, v26, v29);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_1B8B22000, v16, v17, "Invalid question choice value type. Question: [%s] choice type: [%s]", v18, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v18, -1, -1);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

unint64_t sub_1B8B9F120()
{
  result = qword_1EBAA7728;
  if (!qword_1EBAA7728)
  {
    sub_1B8B46130(255, &qword_1EBAA7720, 0x1E699C120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7728);
  }

  return result;
}

void sub_1B8B9F1DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1B8C255D8();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_1B8C255E8();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

char *sub_1B8B9F3CC(void *a1)
{
  v2 = v1;
  v3 = [a1 allChoices];
  if (v3)
  {
    sub_1B8B46130(0, &qword_1EBAA7758, 0x1E699C150);
    v4 = sub_1B8C252C8();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8C258B8())
    {
      v6 = 0;
      v26 = v4 & 0xFFFFFFFFFFFFFF8;
      v27 = v4 & 0xC000000000000001;
      v3 = MEMORY[0x1E69E7CC0];
      v24 = v4;
      v25 = i;
      while (1)
      {
        if (v27)
        {
          v7 = MEMORY[0x1B8CCA4C0](v6, v4);
        }

        else
        {
          if (v6 >= *(v26 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v33 = v7;
        v10 = v2;
        sub_1B8B9EE68(&v33, a1, &v29);

        v12 = v29;
        v11 = v30;
        v14 = v31;
        v13 = v32;
        if (v30)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1B8B5D55C(0, *(v3 + 2) + 1, 1, v3);
          }

          v16 = *(v3 + 2);
          v15 = *(v3 + 3);
          if (v16 >= v15 >> 1)
          {
            v3 = sub_1B8B5D55C((v15 > 1), v16 + 1, 1, v3);
          }

          *(v3 + 2) = v16 + 1;
          v17 = &v3[32 * v16];
          *(v17 + 4) = v12;
          *(v17 + 5) = v11;
          *(v17 + 6) = v14;
          *(v17 + 7) = v13;
          v2 = v10;
          v4 = v24;
        }

        else
        {
          sub_1B8B9FA78(v29, 0);
        }

        ++v6;
        if (v9 == v25)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }
  }

  v18 = [a1 tat];
  v19 = sub_1B8C25128();
  v21 = v20;

  sub_1B8B9FA24();
  swift_allocError();
  *v22 = v19;
  *(v22 + 8) = v21;
  *(v22 + 16) = v3 != 0;
  swift_willThrow();
  return v3;
}

uint64_t sub_1B8B9F640(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[5];
  v6 = *(a2 + 48);
  if (([a1 isAnswered] & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = [a1 values];
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7;
  v36 = v6;
  v9 = sub_1B8C252C8();

  v10 = sub_1B8B9E264(v9);
  v11 = v36;

  if (v10)
  {
    v33 = *(v10 + 16);
    if (v33)
    {
      v13 = 0;
      v34 = v10 + 32;
      v30 = v5 + 56;
      v3 = MEMORY[0x1E69E7CC0];
      v32 = v5;
      v35 = v10;
      while (1)
      {
        if (v13 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v14 = (v34 + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        if (v11 <= 2)
        {
          break;
        }

        v20 = 0;
        v23 = 0;
        v24 = v14[1];
LABEL_19:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B8B5D668(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v26 = *(v3 + 16);
        v25 = *(v3 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1B8B5D668((v25 > 1), v26 + 1, 1, v3);
          v3 = result;
        }

        ++v13;
        *(v3 + 16) = v26 + 1;
        v27 = v3 + 40 * v26;
        *(v27 + 32) = v16;
        *(v27 + 40) = v15;
        *(v27 + 48) = v20;
        *(v27 + 56) = v23;
        *(v27 + 64) = v11 < 3;
        v5 = v32;
        v10 = v35;
        if (v13 == v33)
        {

          return v3;
        }
      }

      v31 = v3;
      v17 = *(v5 + 16) + 1;
      v3 = v30;
      while (--v17)
      {
        v18 = *(v3 - 24);
        v19 = *(v3 - 16);
        v20 = *(v3 - 8);
        v21 = *v3;
        if (v20 == v16 && v21 == v15)
        {
          v20 = v16;
LABEL_18:

          v16 = v18;
          v15 = v19;
          v23 = v21;
          v11 = v36;
          v3 = v31;
          goto LABEL_19;
        }

        v3 += 32;
        if (sub_1B8C25A08())
        {
          goto LABEL_18;
        }
      }

      sub_1B8B9F97C();
      swift_allocError();
      *v29 = v16;
      v29[1] = v15;
      swift_willThrow();
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_25:
    sub_1B8B9F928();
    swift_allocError();
    *v28 = v4;
    v28[1] = v3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1B8B9F914(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B8B9F928()
{
  result = qword_1EBAA7738;
  if (!qword_1EBAA7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7738);
  }

  return result;
}

unint64_t sub_1B8B9F97C()
{
  result = qword_1EBAA7740;
  if (!qword_1EBAA7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7740);
  }

  return result;
}

unint64_t sub_1B8B9F9D0()
{
  result = qword_1EBAA7748;
  if (!qword_1EBAA7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7748);
  }

  return result;
}

unint64_t sub_1B8B9FA24()
{
  result = qword_1EBAA7750;
  if (!qword_1EBAA7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7750);
  }

  return result;
}

uint64_t sub_1B8B9FA78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t StateController.state.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v9[0] = v1[3];
  v4 = v9[0];
  *(v9 + 9) = *(v1 + 57);
  v5 = *(v9 + 9);
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 41) = v5;
  return sub_1B8B50FF8(v8, &v7);
}

uint64_t StateController.State.description.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x7974706D65;
      }

      goto LABEL_8;
    }

    return 0x64656873696E6966;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 1702125938;
      }

LABEL_8:
      v3 = *(v0 + 32);
      v5 = v0[2];
      v4 = v0[3];
      v6 = *v0;
      sub_1B8C257E8();
      MEMORY[0x1B8CC9EB0](0x797428726F727265, 0xEC000000203A6570);
      sub_1B8C25898();
      MEMORY[0x1B8CC9EB0](0x3A656C746974202CLL, 0xE900000000000020);
      MEMORY[0x1B8CC9EB0](v6, v1);
      MEMORY[0x1B8CC9EB0](0x697263736564202CLL, 0xEF203A6E6F697470);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
      v7 = sub_1B8C25178();
      MEMORY[0x1B8CC9EB0](v7);

      MEMORY[0x1B8CC9EB0](41, 0xE100000000000000);
      return 0;
    }

    return 0x676E6964616F6CLL;
  }
}

uint64_t StateController.State.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1B8CCA790](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1B8CCA790](v2);
    }

LABEL_8:
    v3 = *v0;
    MEMORY[0x1B8CCA790](1);
    v5 = *(v0 + 1);
    *v6 = *(v0 + 2);
    *&v6[9] = *(v0 + 41);
    return BatchStatusView.Config.hash(into:)();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B8CCA790](v2);
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
  return MEMORY[0x1B8CCA790](v2);
}

uint64_t StateController.State.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1B8C25AB8();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1B8CCA790](v3);
      return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](1);
  v5 = *(v0 + 1);
  *v6 = *(v0 + 2);
  *&v6[9] = *(v0 + 41);
  BatchStatusView.Config.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B9FF74()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1B8CCA790](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1B8CCA790](v2);
    }

LABEL_8:
    v3 = *v0;
    MEMORY[0x1B8CCA790](1);
    v5 = *(v0 + 1);
    *v6 = *(v0 + 2);
    *&v6[9] = *(v0 + 41);
    return BatchStatusView.Config.hash(into:)();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B8CCA790](v2);
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
  return MEMORY[0x1B8CCA790](v2);
}

uint64_t sub_1B8BA0030()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1B8C25AB8();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1B8CCA790](v3);
      return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](1);
  v5 = *(v0 + 1);
  *v6 = *(v0 + 2);
  *&v6[9] = *(v0 + 41);
  BatchStatusView.Config.hash(into:)();
  return sub_1B8C25AF8();
}

void sub_1B8BA00FC(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v30 = *a1;
  v31 = v3;
  v32[0] = a1[2];
  *(v32 + 9) = *(a1 + 41);
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAB3A30);
  sub_1B8B50FF8(&v30, &v27);

  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25468();
  sub_1B8B51054(&v30);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 9) = *(v32 + 9);
    sub_1B8B50FF8(&v30, v25);
    v9 = StateController.State.description.getter();
    v11 = v10;
    v23[0] = v27;
    v23[1] = v28;
    v24[0] = v29[0];
    *(v24 + 9) = *(v29 + 9);
    sub_1B8B51054(v23);
    v12 = sub_1B8B5DD48(v9, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    *&v27 = v2;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
    sub_1B8C23588();

    v13 = v2[2];
    v25[0] = v2[1];
    v25[1] = v13;
    v26[0] = v2[3];
    v14 = v26[0];
    *(v26 + 9) = *(v2 + 57);
    v19 = v25[0];
    v20 = v13;
    *v21 = v14;
    *&v21[9] = *(v26 + 9);
    sub_1B8B50FF8(v25, &v27);
    v15 = StateController.State.description.getter();
    v17 = v16;
    v27 = v19;
    v28 = v20;
    v29[0] = *v21;
    *(v29 + 9) = *&v21[9];
    sub_1B8B51054(&v27);
    v18 = sub_1B8B5DD48(v15, v17, &v22);

    *(v7 + 14) = v18;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }
}

uint64_t sub_1B8BA03E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v11[0] = v3;
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *&v12[9] = *(v3 + 57);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a2 + 41) = v7;
  v8 = v3[2];
  *a2 = v3[1];
  a2[1] = v8;
  a2[2] = v3[3];
  return sub_1B8B50FF8(v11, &v10);
}

uint64_t sub_1B8BA04BC(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v4 = *a2;
  sub_1B8B50FF8(v7, &v6);
  return StateController.state.setter(a1);
}

uint64_t type metadata accessor for StateController()
{
  result = qword_1EBAA7790;
  if (!qword_1EBAA7790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateController.state.setter(__int128 *a1)
{
  v2 = a1[1];
  v19 = *a1;
  v20 = v2;
  v4 = *a1;
  v3 = a1[1];
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v5 = v1[2];
  v16 = v1[1];
  v17 = v5;
  v18[0] = v1[3];
  *(v18 + 9) = *(v1 + 57);
  v13 = v4;
  v14 = v3;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  if (_s8Feedback15StateControllerC0B0O2eeoiySbAE_AEtFZ_0(&v16, &v13))
  {
    v6 = v1[2];
    v13 = v1[1];
    v14 = v6;
    v15[0] = v1[3];
    v7 = v15[0];
    *(v15 + 9) = *(v1 + 57);
    v16 = v13;
    v17 = v6;
    v18[0] = v7;
    *(v18 + 9) = *(v15 + 9);
    v8 = v20;
    v1[1] = v19;
    v1[2] = v8;
    *(v1 + 57) = *(v21 + 9);
    v1[3] = v21[0];
    sub_1B8B50FF8(&v13, v11);
    sub_1B8B51054(&v16);
    v11[0] = v13;
    v11[1] = v14;
    v12[0] = v15[0];
    *(v12 + 9) = *(v15 + 9);
    sub_1B8BA00FC(v11);
    return sub_1B8B51054(&v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16 = v1;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
    sub_1B8C23578();
    sub_1B8B51054(&v19);
  }
}

uint64_t sub_1B8BA0744(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[2];
  v8 = a1[1];
  v9 = v2;
  v10[0] = a1[3];
  v3 = v10[0];
  *(v10 + 9) = *(a1 + 57);
  v11[0] = v8;
  v11[1] = v2;
  v12[0] = v3;
  *(v12 + 9) = *(v10 + 9);
  v4 = a2[1];
  a1[1] = *a2;
  a1[2] = v4;
  *(a1 + 57) = *(a2 + 41);
  a1[3] = a2[2];
  sub_1B8B50FF8(a2, v6);
  sub_1B8B50FF8(&v8, v6);
  sub_1B8B51054(v11);
  v6[0] = v8;
  v6[1] = v9;
  v7[0] = v10[0];
  *(v7 + 9) = *(v10 + 9);
  sub_1B8BA00FC(v6);
  return sub_1B8B51054(&v8);
}

void (*StateController.state.modify(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1D8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 448) = v1;
  swift_getKeyPath();
  *(v4 + 456) = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  *(v4 + 64) = v1;
  *(v4 + 464) = sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  *(v4 + 64) = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  *(v4 + 41) = *(v1 + 57);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  *(v4 + 105) = *(v1 + 57);
  *(v4 + 80) = v9;
  *(v4 + 96) = v10;
  *(v4 + 64) = v8;
  sub_1B8B50FF8(v4, v4 + 128);
  return sub_1B8BA0970;
}

void sub_1B8BA0970(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 256);
  if (a2)
  {
    v4 = *(v2 + 448);
    v5 = *(v2 + 456);
    v6 = *(v2 + 80);
    *(v2 + 320) = *(v2 + 64);
    *(v2 + 336) = v6;
    v8 = *(v2 + 64);
    v7 = *(v2 + 80);
    *(v2 + 352) = *(v2 + 96);
    *(v2 + 361) = *(v2 + 105);
    v10 = v4[2];
    v9 = v4[3];
    v11 = v4[1];
    *(v3 + 41) = *(v4 + 57);
    v3[1] = v10;
    v3[2] = v9;
    *v3 = v11;
    v12 = *(v4 + 57);
    v14 = v4[2];
    v13 = v4[3];
    *(v2 + 192) = v4[1];
    *(v2 + 208) = v14;
    v15 = *(v2 + 464);
    *(v2 + 224) = v13;
    *(v2 + 233) = v12;
    v16 = *(v2 + 96);
    *(v4 + 57) = *(v2 + 105);
    v4[2] = v7;
    v4[3] = v16;
    v4[1] = v8;
    sub_1B8B50FF8(v2 + 320, v2 + 384);
    sub_1B8B50FF8(v3, v2 + 384);
    sub_1B8B51054(v2 + 192);
    v17 = v3[1];
    v32 = *v3;
    v33 = v17;
    v34[0] = v3[2];
    *(v34 + 9) = *(v3 + 41);
    sub_1B8BA00FC(&v32);
    sub_1B8B51054(v3);
    v18 = *(v2 + 80);
    *(v2 + 128) = *(v2 + 64);
    *(v2 + 144) = v18;
    *(v2 + 160) = *(v2 + 96);
    *(v2 + 169) = *(v2 + 105);
    sub_1B8B51054(v2 + 128);
    *(v2 + 384) = v4;
  }

  else
  {
    v20 = *(v2 + 456);
    v19 = *(v2 + 464);
    v21 = *(v2 + 448);
    v23 = v21[2];
    v22 = v21[3];
    v24 = v21[1];
    *(v2 + 233) = *(v21 + 57);
    *(v2 + 208) = v23;
    *(v2 + 224) = v22;
    *(v2 + 192) = v24;
    v26 = v21[2];
    v25 = v21[3];
    v27 = v21[1];
    *(v2 + 169) = *(v21 + 57);
    *(v2 + 144) = v26;
    *(v2 + 160) = v25;
    *(v2 + 128) = v27;
    v28 = *(v2 + 64);
    v29 = *(v2 + 80);
    v30 = *(v2 + 96);
    *(v21 + 57) = *(v2 + 105);
    v21[2] = v29;
    v21[3] = v30;
    v21[1] = v28;
    sub_1B8B50FF8(v2 + 192, v3);
    sub_1B8B51054(v2 + 128);
    v31 = *(v2 + 208);
    v32 = *(v2 + 192);
    v33 = v31;
    v34[0] = *(v2 + 224);
    *(v34 + 9) = *(v2 + 233);
    sub_1B8BA00FC(&v32);
    sub_1B8B51054(v2 + 192);
    *(v2 + 256) = v21;
  }

  swift_getKeyPath();
  sub_1B8C23598();

  free(v2);
}

uint64_t sub_1B8BA0B80()
{
  swift_getKeyPath();
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  return *(v0 + 73);
}

uint64_t sub_1B8BA0C20(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BA0D30(_OWORD *a1)
{
  v3 = sub_1B8C24FD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8C25008();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v21[0] = *a1;
  v21[1] = v13;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  sub_1B8B622C8();
  v14 = sub_1B8C25538();
  v15 = swift_allocObject();
  v16 = a1[1];
  *(v15 + 24) = *a1;
  *(v15 + 16) = v1;
  *(v15 + 40) = v16;
  *(v15 + 56) = a1[2];
  *(v15 + 65) = *(a1 + 41);
  aBlock[4] = sub_1B8BA1744;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  sub_1B8B50FF8(v21, v19);

  sub_1B8C24FF8();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA1768(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v12, v7, v17);
  _Block_release(v17);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B8BA1030()
{
  sub_1B8C24F58();
  sub_1B8C23F08();
}

uint64_t sub_1B8BA109C(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  sub_1B8B50FF8(a2, v6);
  result = StateController.state.setter(v7);
  if (*(a1 + 73))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v7[0] = a1;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController);
    sub_1B8C23578();
  }

  else
  {
    *(a1 + 73) = 0;
  }

  return result;
}

uint64_t StateController.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_1B8B74904(*(v0 + 16), *(v0 + 24));
  v7 = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  v8 = sub_1B8C235C8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t StateController.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_1B8B74904(*(v0 + 16), *(v0 + 24));
  v7 = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  v8 = sub_1B8C235C8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8Feedback15StateControllerC0B0O2eeoiySbAE_AEtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v17[0] = *a1;
  v17[1] = v2;
  v18[0] = a1[2];
  v3 = v18[0];
  v4 = a2[1];
  v19[0] = *a2;
  v19[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  v20[0] = a2[2];
  *(v20 + 9) = *(a2 + 41);
  *(v18 + 9) = *(a1 + 41);
  v21[0] = v17[0];
  v21[1] = v2;
  v22[0] = v3;
  *(v22 + 9) = *(v18 + 9);
  *&v23[9] = *(a2 + 41);
  v7 = a2[2];
  v22[3] = v5;
  *v23 = v7;
  v22[2] = v6;
  if (*(&v17[0] + 1) <= 1)
  {
    if (*(&v17[0] + 1))
    {
      if (*(&v17[0] + 1) == 1)
      {
        if (*(&v19[0] + 1) == 1)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (*(&v19[0] + 1))
    {
      goto LABEL_13;
    }

LABEL_15:
    sub_1B8BA17CC(v21);
    v10 = 1;
    return v10 & 1;
  }

  if (*(&v17[0] + 1) == 2)
  {
    if (*(&v19[0] + 1) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (*(&v17[0] + 1) == 3)
  {
    if (*(&v19[0] + 1) == 3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (*(&v19[0] + 1) < 4uLL)
  {
LABEL_13:
    sub_1B8B50FF8(v19, v15);
    sub_1B8B50FF8(v17, v15);
    sub_1B8BA17CC(v21);
    v10 = 0;
    return v10 & 1;
  }

  v15[0] = v17[0];
  v8 = a1[2];
  v15[1] = a1[1];
  v16[0] = v8;
  *(v16 + 9) = *(a1 + 41);
  v13[0] = v19[0];
  v9 = a2[2];
  v13[1] = a2[1];
  v14[0] = v9;
  *(v14 + 9) = *(a2 + 41);
  v10 = _s8Feedback15BatchStatusViewV6ConfigV2eeoiySbAE_AEtFZ_0(v15, v13);
  sub_1B8B50FF8(v19, v12);
  sub_1B8B50FF8(v17, v12);
  sub_1B8BA17CC(v21);
  return v10 & 1;
}

unint64_t sub_1B8BA149C()
{
  result = qword_1EBAA7788;
  if (!qword_1EBAA7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7788);
  }

  return result;
}

uint64_t sub_1B8BA14F8()
{
  result = sub_1B8C235C8();
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

uint64_t get_enum_tag_for_layout_string_8Feedback15StateControllerC0B0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8BA15CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B8BA1620(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1B8BA1688(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B8BA16E0()
{
  result = qword_1EBAA77A0;
  if (!qword_1EBAA77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77A0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BA1768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8BA17CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64D8, &qword_1B8C2DB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BA184C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7830, &unk_1B8C2C9E0);
    v1 = sub_1B8C258E8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    sub_1B8B46130(0, &qword_1EBAA7838, 0x1E69DB878);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1B8B5FE40((v28 + 8), v26);
    sub_1B8B5FE40(v26, v28);
    v16 = *(v1 + 40);
    sub_1B8C25128();
    sub_1B8C25AB8();
    sub_1B8C251B8();
    v17 = sub_1B8C25AF8();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1B8B5FE40(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1B8BA1B04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7808, &qword_1B8C2C9B8);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v25 = *(*(a1 + 56) + 8 * v16);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA77F0, &unk_1B8C2C9A0);
        swift_dynamicCast();
        result = sub_1B8B5E2DC(v19, v18);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v26;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B8BA1D28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7800, &qword_1B8C2C9B0);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1B8B5FE40(&v25, v27);
        sub_1B8B5FE40(v27, v28);
        sub_1B8B5FE40(v28, &v26);
        result = sub_1B8B5E2DC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1B8B5FE40(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1B8B5FE40(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B8BA1F7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7800, &qword_1B8C2C9B0);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1B8B5FE40(&v27, v29);
        sub_1B8B5FE40(v29, v30);
        sub_1B8B5FE40(v30, &v28);
        result = sub_1B8B5E2DC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1B8B5FE40(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1B8B5FE40(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B8BA21D4()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA77B0);
  __swift_project_value_buffer(v0, qword_1EBAA77B0);
  return sub_1B8C23C28();
}

uint64_t sub_1B8BA2244(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if (a2)
  {
    return a2(0, result);
  }

  return result;
}

void sub_1B8BA2280(uint64_t a1, id a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAA77B0);
    v7 = a2;
    v8 = sub_1B8C23C18();
    v9 = sub_1B8C25478();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_1B8C25A68();
      v14 = sub_1B8B5DD48(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B8B22000, v8, v9, "AppleConnect login failed. Error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    if (a3)
    {
      v15 = a2;
      a3(0, a2);
    }
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8C23C38();
    __swift_project_value_buffer(v17, qword_1EBAA77B0);
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25468();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B8B22000, v18, v19, "AppleConnect login successful, resuming.", v20, 2u);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    if (a3)
    {
      a3(a1, 0);
    }
  }
}

void sub_1B8BA2510(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5908 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA77B0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD000000000000036, 0x80000001B8C34BC0, v16);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v16[4] = sub_1B8BA898C;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B8BA6A6C;
  v16[3] = &block_descriptor_101;
  v14 = _Block_copy(v16);
  v15 = a1;
  sub_1B8B247D4(a2);

  FBKLoginWithAppleConnect();
  _Block_release(v14);
}

void sub_1B8BA2714(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v7 = sub_1B8C23C38();
    __swift_project_value_buffer(v7, qword_1EBAA77B0);
    v8 = a1;
    v9 = sub_1B8C23C18();
    v10 = sub_1B8C25478();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1B8C25A68();
      v15 = sub_1B8B5DD48(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B8B22000, v9, v10, "AppleConnect login failed. Error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
    }

    v16 = FBKErrorOfType();
    a2();
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8C23C38();
    __swift_project_value_buffer(v18, qword_1EBAA77B0);
    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25468();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v20, "AppleConnect login successful, resuming.", v21, 2u);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    [a4 setIsAppleConnectUser_];
    (a2)(0);
  }
}

void sub_1B8BA29A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5908 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA77B0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B8B22000, v9, v10, "FBK is running on an internal install, and AppleConnect is available, so we will use AppleConnect to recover.", v11, 2u);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v15[4] = sub_1B8BA7138;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B8BA6A6C;
  v15[3] = &block_descriptor_4;
  v13 = _Block_copy(v15);
  v14 = a1;

  FBKLoginWithAppleConnect();
  _Block_release(v13);
}

uint64_t sub_1B8BA2B50(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = v6;
  *(v7 + 56) = a2;
  *(v7 + 64) = a5;
  *(v7 + 169) = a4;
  *(v7 + 168) = a3;
  *(v7 + 48) = a1;
  sub_1B8C25368();
  *(v7 + 88) = sub_1B8C25358();
  v9 = sub_1B8C25328();
  *(v7 + 96) = v9;
  *(v7 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B8BA2BF8, v9, v8);
}

uint64_t sub_1B8BA2BF8()
{
  if (sub_1B8BA7E74(*(v0 + 169)))
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EBAA77B0);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25498();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, v2, v3, "Will use AppleConnect to authenticate.", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    return MEMORY[0x1EEE6DFA0](sub_1B8BA2E48, 0, 0);
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA77B0);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25498();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B8B22000, v6, v7, "Will use AuthKit to authenticate.", v8, 2u);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_1B8BA32D0;
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 168);
    v15 = *(v0 + 48);

    return sub_1B8BA345C(v15, v12, v14, v13, v10);
  }
}

uint64_t sub_1B8BA2E48()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1B8BA2F3C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B8BA2F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B8BA30D8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B8BA3058;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8BA3070()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(1, 0);
}

uint64_t sub_1B8BA30D8()
{
  v1 = v0[15];

  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x1EEE6DFA0](sub_1B8BA313C, v2, v3);
}

uint64_t sub_1B8BA313C()
{
  v21 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v1;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1B8C25A68();
    v15 = sub_1B8B5DD48(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1B8B22000, v5, v6, "AppleConnect login failed. Error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v16 = v0[17];
  v17 = FBKErrorOfType();

  v18 = v0[1];

  return v18(4, v17);
}

uint64_t sub_1B8BA32D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v9 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v6 = *(v3 + 104);
  v7 = *(v3 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1B8BA33F8, v7, v6);
}

uint64_t sub_1B8BA33F8()
{
  v1 = v0[11];

  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1B8BA345C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a2;
  *(v6 + 240) = a4;
  *(v6 + 312) = a3;
  *(v6 + 224) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8BA3488, 0, 0);
}

uint64_t sub_1B8BA3488()
{
  if (*(v0 + 240))
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1B8C2C960;
    *(v0 + 280) = "login(loginManager:)";
    *(v0 + 288) = v1;
    *(v0 + 272) = 0xD000000000000052;

    return MEMORY[0x1EEE6DFA0](sub_1B8BA3810, 0, 0);
  }

  else
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 232);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_1B8BA3634;
    v4 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7828, &qword_1B8C2C9D8);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1B8BA4FA8;
    *(v0 + 168) = &block_descriptor_152;
    *(v0 + 176) = v4;
    [v3 interactiveStartupUsingSystemAccount:v2 completion:v0 + 144];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1B8BA3634()
{
  v1 = *v0;
  v3 = *v0;
  *(v1 + 264) = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1B8BA3728, 0, 0);
}

uint64_t sub_1B8BA3728()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  *(v1 + 16) = v2;
  v3 = sub_1B8BA80F8(v2);
  v4 = *(v1 + 24);
  if (v3)
  {
    v5 = *(v0 + 264);
LABEL_4:

    v7 = *(v0 + 8);

    return v7(v4, v3);
  }

  v6 = *(v0 + 264);
  if ((v4 & 4) == 0)
  {
    goto LABEL_4;
  }

  *(v0 + 280) = "Sign in with your Apple Account";
  *(v0 + 288) = v6;
  *(v0 + 272) = 0xD00000000000003FLL;

  return MEMORY[0x1EEE6DFA0](sub_1B8BA3810, 0, 0);
}

uint64_t sub_1B8BA3810()
{
  v1 = v0[36];
  v26 = v0[34];
  v27 = v0[35];
  v2 = v0[28];
  v3 = v0[29];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1B8BA3BBC;
  v25 = v0 + 10;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;

  v6 = [v3 authenticationContextForUsername_];
  [v6 setPresentingViewController_];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 mainBundle];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  [v8 setTitle_];

  [v8 setShouldAllowAppleIDCreation_];
  [v8 setIsUsernameEditable_];
  v11 = [v7 mainBundle];
  sub_1B8C23348();

  v12 = sub_1B8C250F8();

  [v8 setReason_];

  v13 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  if (v13)
  {
    v14 = v13;
    v15 = v0[31];
    v16 = v0[32];
    v17 = v0[29];
    v18 = v0[30];
    v19 = swift_allocObject();
    *(v19 + 16) = v18 != 0;
    *(v19 + 24) = sub_1B8BA8D18;
    *(v19 + 32) = v5;
    *(v19 + 40) = v18;
    *(v19 + 48) = v15;
    *(v19 + 56) = v16;
    *(v19 + 64) = v17;
    v0[22] = sub_1B8BA9010;
    v0[23] = v19;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1B8BA4978;
    v0[21] = &block_descriptor_165;
    v20 = _Block_copy(v0 + 18);
    v21 = v0[23];
    v22 = v14;

    sub_1B8B247D4(v18);
    v23 = v17;

    [v22 authenticateWithContext:v8 completion:v20];

    _Block_release(v20);
  }

  else
  {
  }

  return MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_1B8BA3BBC()
{
  v2 = *v0;
  *(*v0 + 296) = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1B8BA3CA4, 0, 0);
}

uint64_t sub_1B8BA3CA4()
{
  v1 = v0[36];

  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[1];

  return v4(v2, v3);
}

void sub_1B8BA3D08(uint64_t a1, void *a2, char a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v83 = a4;
  v84 = a5;
  v15 = sub_1B8C24FD8();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B8C25008();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v80 = v22;
    v81 = v21;
    v25 = a2;
    v26 = sub_1B8C23358();
    v27 = [v26 code];

    if (v27 == -7003)
    {
      if (a3)
      {
        if (qword_1EBAA5908 != -1)
        {
          swift_once();
        }

        v28 = sub_1B8C23C38();
        __swift_project_value_buffer(v28, qword_1EBAA77B0);
        v84 = sub_1B8C23C18();
        v29 = sub_1B8C25458();
        if (os_log_type_enabled(v84, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1B8B22000, v84, v29, "User cancelled re-authentication", v30, 2u);
          MEMORY[0x1B8CCB0E0](v30, -1, -1);
        }

        v31 = v84;

        return;
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v58 = sub_1B8C25538();
      v67 = swift_allocObject();
      v61 = v83;
      v68 = v84;
      *(v67 + 16) = v83;
      *(v67 + 24) = v68;
      v90 = sub_1B8BA888C;
      v91 = v67;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v62 = &block_descriptor_61;
      goto LABEL_26;
    }

    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v38 = sub_1B8C23C38();
    __swift_project_value_buffer(v38, qword_1EBAA77B0);
    v39 = a2;
    v40 = sub_1B8C23C18();
    v41 = sub_1B8C25498();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v85 = a2;
      aBlock = v43;
      *v42 = 136446210;
      v44 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v45 = sub_1B8C25178();
      v47 = sub_1B8B5DD48(v45, v46, &aBlock);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1B8B22000, v40, v41, "AK Authentication error: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B8CCB0E0](v43, -1, -1);
      MEMORY[0x1B8CCB0E0](v42, -1, -1);
    }

    v48 = sub_1B8C23358();
    v49 = [v48 domain];

    v50 = sub_1B8C25128();
    v52 = v51;

    v53 = *MEMORY[0x1E698DB28];
    if (v50 == sub_1B8C25128() && v52 == v54)
    {
    }

    else
    {
      v55 = sub_1B8C25A08();

      if ((v55 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v56 = sub_1B8C23358();
    v57 = [v56 code];

    if (v57 == -7005)
    {
      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v58 = sub_1B8C25538();
      v59 = swift_allocObject();
      v61 = v83;
      v60 = v84;
      *(v59 + 16) = v83;
      *(v59 + 24) = v60;
      v90 = sub_1B8BA886C;
      v91 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v62 = &block_descriptor_55;
LABEL_26:
      v88 = sub_1B8B8B9F4;
      v89 = v62;
      v65 = _Block_copy(&aBlock);
      goto LABEL_27;
    }

LABEL_24:
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v58 = sub_1B8C25538();
    v63 = swift_allocObject();
    v61 = v83;
    v64 = v84;
    v63[2] = v83;
    v63[3] = v64;
    v63[4] = a2;
    v90 = sub_1B8BA883C;
    v91 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1B8B8B9F4;
    v89 = &block_descriptor_49;
    v65 = _Block_copy(&aBlock);
    v66 = a2;
LABEL_27:
    sub_1B8B247D4(v61);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v24, v18, v65);
    _Block_release(v65);

    goto LABEL_28;
  }

  if (!a1)
  {
    v69 = v21;
    v70 = v22;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v71 = sub_1B8C25538();
    v72 = swift_allocObject();
    v74 = v83;
    v73 = v84;
    *(v72 + 16) = v83;
    *(v72 + 24) = v73;
    v90 = sub_1B8BA8808;
    v91 = v72;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1B8B8B9F4;
    v89 = &block_descriptor_37;
    v75 = _Block_copy(&aBlock);
    sub_1B8B247D4(v74);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v24, v18, v75);
    _Block_release(v75);

    (*(v82 + 8))(v18, v15);
    (*(v70 + 8))(v24, v69);
    return;
  }

  if (a6)
  {
    v80 = v22;
    v81 = v21;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);

    sub_1B8B247D4(a6);
    v79 = sub_1B8C25538();
    v32 = swift_allocObject();
    v32[2] = a6;
    v32[3] = a7;
    v32[4] = a8;
    v32[5] = a9;
    v33 = v83;
    v34 = v84;
    v32[6] = a1;
    v32[7] = v33;
    v32[8] = v34;
    v90 = sub_1B8BA8828;
    v91 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1B8B8B9F4;
    v89 = &block_descriptor_43;
    v35 = _Block_copy(&aBlock);
    sub_1B8B247D4(v33);
    sub_1B8B247D4(a6);
    v36 = a9;

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    v37 = v79;
    MEMORY[0x1B8CCA210](0, v24, v18, v35);
    _Block_release(v35);

    sub_1B8B30A44(a6);
LABEL_28:
    (*(v82 + 8))(v18, v15);
    (*(v80 + 8))(v24, v81);
    return;
  }

  v77 = sub_1B8BA1B04(v76);

  sub_1B8BA8160(a9, v77, v83, v84);
}

uint64_t sub_1B8BA483C(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = a4;

  sub_1B8B247D4(a6);
  a1(sub_1B8BA88AC, v13);
}

void sub_1B8BA4900(void (*a1)(void), uint64_t a2, char a3)
{
  if (a1)
  {
    sub_1B8BA8754();
    v5 = swift_allocError();
    *v6 = a3;
    a1();
  }
}

uint64_t sub_1B8BA4978(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA77F0, &unk_1B8C2C9A0);
    v4 = sub_1B8C25098();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1B8BA4A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E698DBF0];
  v9 = sub_1B8C25128();
  if (*(a1 + 16))
  {
    v11 = sub_1B8B5E2DC(v9, v10);
    v13 = v12;

    if (v13)
    {
      aBlock[6] = *(*(a1 + 56) + 8 * v11);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v14 = sub_1B8C250F8();

      sub_1B8BA1D28(a1);
      v15 = sub_1B8C25088();

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      aBlock[4] = sub_1B8BA8914;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8BA4C04;
      aBlock[3] = &block_descriptor_76;
      v17 = _Block_copy(aBlock);
      sub_1B8B247D4(a3);

      [a2 loginWithUsername:v14 authenticationResults:v15 completion:v17];
      _Block_release(v17);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B8BA4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_1B8BA4C64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B8C250F8();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v11[4] = sub_1B8BA8FB0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B8BA4C04;
  v11[3] = &block_descriptor_19_0;
  v10 = _Block_copy(v11);
  sub_1B8B247D4(a4);

  [a1 loginWithAppleConnectToken:v8 completion:v10];
  _Block_release(v10);
}

void sub_1B8BA4D6C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a2)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((a2 & 2) != 0)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if ((a2 & 4) != 0)
  {
    v4 = 2;
    goto LABEL_9;
  }

  if (a2)
  {
    v4 = 3;
LABEL_9:
    sub_1B8BA8754();
    v5 = swift_allocError();
    *v6 = v4;
    if (a3)
    {
      v7 = v5;
      v8 = v5;
      a3(v7);

      v5 = v7;
    }

    return;
  }

  if (a3)
  {
    a3(0);
  }
}

void sub_1B8BA4E38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1B8BA8984;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B8BB79D4;
  v8[3] = &block_descriptor_95;
  v7 = _Block_copy(v8);
  sub_1B8B247D4(a2);

  [a1 loginAsUnauthenticatedUserWithCompletion_];
  _Block_release(v7);
}

void sub_1B8BA4F28(int a1, id a2, void (*a3)(id))
{
  if (a2)
  {
    if (a3)
    {
      v5 = a2;
      a3(a2);
    }
  }

  else if (a3)
  {
    a3(0);
  }
}

uint64_t sub_1B8BA4FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;

  return swift_continuation_resume();
}

uint64_t sub_1B8BA5008(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a3 + 24);
    v7 = a1;
  }

  else
  {
    swift_beginAccess();
    v6 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = *(*(a2 + 64) + 40);
  *v8 = v6;
  v8[1] = a1;
  return swift_continuation_resume();
}

void sub_1B8BA50A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a1)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ((a1 & 2) != 0)
  {
    v11 = 1;
    goto LABEL_9;
  }

  if ((a1 & 4) != 0)
  {
    v11 = 2;
    goto LABEL_9;
  }

  if (a1)
  {
    v11 = 3;
LABEL_9:
    sub_1B8BA8754();
    v12 = swift_allocError();
    *v13 = v11;
    if (a3)
    {
      v14 = v12;
      v15 = v12;
      a3(a2, v14);

      v12 = v14;
    }

    return;
  }

  if ((a2 & 4) != 0)
  {
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    if (a5 == 1)
    {
      sub_1B8B247D4(a3);
      sub_1B8BA7B94(a7, sub_1B8BA89F8, v19);
    }

    else
    {
      sub_1B8B247D4(a3);

      v20 = [a7 authenticationContextForUsername_];
      [v20 setPresentingViewController_];
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 mainBundle];
      sub_1B8C23348();

      v24 = sub_1B8C250F8();

      [v22 setTitle_];

      [v22 setShouldAllowAppleIDCreation_];
      [v22 setIsUsernameEditable_];
      v25 = [v21 mainBundle];
      sub_1B8C23348();

      v26 = sub_1B8C250F8();

      [v22 setReason_];

      v27 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v27)
      {
        v28 = v27;
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        *(v29 + 24) = sub_1B8BA89F8;
        *(v29 + 32) = v19;
        *(v29 + 40) = 0;
        *(v29 + 48) = 0;
        *(v29 + 56) = a6;
        *(v29 + 64) = a7;
        v30 = a7;
        aBlock[4] = sub_1B8BA9010;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_126;
        v31 = _Block_copy(aBlock);

        v32 = v28;
        v33 = v30;

        [v32 authenticateWithContext:v22 completion:v31];

        _Block_release(v31);
      }

      else
      {
      }
    }
  }

  else if (a3)
  {
    a3(a2, 0);
  }
}

void sub_1B8BA5528(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    (a3)(0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v14 = sub_1B8C23C38();
      __swift_project_value_buffer(v14, qword_1EBAA77B0);
      v15 = sub_1B8C23C18();
      v16 = sub_1B8C25498();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B8B22000, v15, v16, "Recovering from invalid session with system account failed. Will prompt for username and password", v17, 2u);
        MEMORY[0x1B8CCB0E0](v17, -1, -1);
      }

      v18 = [a8 username];
      if (v18)
      {
        v19 = v18;
        v46 = sub_1B8C25128();
        v21 = v20;
      }

      else
      {
        v46 = 0;
        v21 = 0;
      }

      v27 = [v13 authenticationContextForUsername_];
      [v27 setPresentingViewController_];
      v28 = objc_opt_self();
      v29 = v27;
      v30 = [v28 mainBundle];
      sub_1B8C23348();

      v31 = sub_1B8C250F8();

      [v29 setTitle_];

      [v29 setShouldAllowAppleIDCreation_];
      [v29 setIsUsernameEditable_];
      v32 = [v28 mainBundle];
      sub_1B8C23348();

      v33 = sub_1B8C250F8();

      [v29 setReason_];

      if (v21)
      {
        v34 = sub_1B8C250F8();
        [v29 setUsername_];

        v35 = [v28 mainBundle];
        sub_1B8C23348();

        v36 = sub_1B8C250F8();

        [v29 setTitle_];

        v37 = [v28 mainBundle];
        sub_1B8C23348();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77E0, qword_1B8C2C988);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1B8C2A740;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = sub_1B8BA87B4();
        *(v38 + 32) = v46;
        *(v38 + 40) = v21;
        sub_1B8C25148();

        v39 = sub_1B8C250F8();

        [v29 setReason_];
      }

      v40 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v40)
      {
        v41 = v40;
        v42 = swift_allocObject();
        *(v42 + 16) = 0;
        *(v42 + 24) = a3;
        *(v42 + 32) = a4;
        *(v42 + 40) = 0;
        *(v42 + 48) = 0;
        *(v42 + 56) = a6;
        *(v42 + 64) = v13;
        aBlock[4] = sub_1B8BA87B0;
        aBlock[5] = v42;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_31;
        v43 = _Block_copy(aBlock);
        v44 = v41;

        v45 = v13;

        [v44 authenticateWithContext:v29 completion:v43];

        _Block_release(v43);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v22 = sub_1B8C23C38();
      __swift_project_value_buffer(v22, qword_1EBAA77B0);
      v23 = sub_1B8C23C18();
      v24 = sub_1B8C25488();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B8B22000, v23, v24, "Recovering from invalid session with system account failed and login manager is nil", v25, 2u);
        MEMORY[0x1B8CCB0E0](v25, -1, -1);
      }

      v26 = FBKErrorOfType();
      a3();
    }
  }
}

void sub_1B8BA5C10(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    (a3)(0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [a8 username];
      if (v14)
      {
        v15 = v14;
        v42 = sub_1B8C25128();
        v17 = v16;
      }

      else
      {
        v42 = 0;
        v17 = 0;
      }

      v23 = [v13 authenticationContextForUsername_];
      [v23 setPresentingViewController_];
      v24 = objc_opt_self();
      v25 = v23;
      v26 = [v24 mainBundle];
      sub_1B8C23348();

      v27 = sub_1B8C250F8();

      [v25 setTitle_];

      [v25 setShouldAllowAppleIDCreation_];
      [v25 setIsUsernameEditable_];
      v28 = [v24 mainBundle];
      sub_1B8C23348();

      v29 = sub_1B8C250F8();

      [v25 setReason_];

      if (v17)
      {
        v30 = sub_1B8C250F8();
        [v25 setUsername_];

        v31 = [v24 mainBundle];
        sub_1B8C23348();

        v32 = sub_1B8C250F8();

        [v25 setTitle_];

        v33 = [v24 mainBundle];
        sub_1B8C23348();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77E0, qword_1B8C2C988);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1B8C2A740;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 64) = sub_1B8BA87B4();
        *(v34 + 32) = v42;
        *(v34 + 40) = v17;
        sub_1B8C25148();

        v35 = sub_1B8C250F8();

        [v25 aLg];
      }

      v36 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v36)
      {
        v37 = v36;
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        *(v38 + 24) = a3;
        *(v38 + 32) = a4;
        *(v38 + 40) = 0;
        *(v38 + 48) = 0;
        *(v38 + 56) = a6;
        *(v38 + 64) = v13;
        aBlock[4] = sub_1B8BA9010;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_83;
        v39 = _Block_copy(aBlock);
        v40 = v37;

        v41 = v13;

        [v40 authenticateWithContext:v25 completion:v39];

        _Block_release(v39);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, qword_1EBAA77B0);
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25488();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Recovering from invalid session with regular account failed and login manager is nil", v21, 2u);
        MEMORY[0x1B8CCB0E0](v21, -1, -1);
      }

      v22 = FBKErrorOfType();
      a3();
    }
  }
}

uint64_t sub_1B8BA625C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B8C24FD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a6;
    *(v24 + 24) = a7;
    sub_1B8B247D4(a6);
    sub_1B8BA844C(a5, a1, a2, sub_1B8BA89E4, v24);
  }

  else
  {
    v41 = v21;
    v42 = v20;
    v43 = v14;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v26 = sub_1B8C23C38();
    __swift_project_value_buffer(v26, qword_1EBAA77B0);
    v27 = a3;
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25478();

    if (os_log_type_enabled(v28, v29))
    {
      v40 = a5;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      if (a3)
      {
        v32 = a3;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v30 + 4) = v33;
      *v31 = v34;
      _os_log_impl(&dword_1B8B22000, v28, v29, "Received error from AppleConnect: %@", v30, 0xCu);
      sub_1B8BA7B2C(v31);
      MEMORY[0x1B8CCB0E0](v31, -1, -1);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
      a5 = v40;
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v35 = sub_1B8C25538();
    v36 = swift_allocObject();
    v36[2] = a5;
    v36[3] = a3;
    v36[4] = a6;
    v36[5] = a7;
    aBlock[4] = sub_1B8BA8998;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_107;
    v37 = _Block_copy(aBlock);
    sub_1B8B247D4(a6);
    v38 = a3;
    v39 = a5;

    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v23, v17, v37);
    _Block_release(v37);

    (*(v43 + 8))(v17, v13);
    return (*(v41 + 8))(v23, v42);
  }
}

void sub_1B8BA6704(void *a1, void (*a2)(uint64_t, void *))
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      a2(4, a1);
    }
  }

  else if (a2)
  {
    a2(1, 0);
  }
}

void sub_1B8BA6788(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_1B8BA89EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B8B8B9F4;
  v11[3] = &block_descriptor_116;
  v9 = _Block_copy(v11);
  v10 = a2;
  sub_1B8B247D4(a3);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v9);
}

void sub_1B8BA6888(void *a1, void (*a2)(uint64_t, id))
{
  if (!a1 || (v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0), sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
  {
    if (!a2)
    {
      return;
    }

    v4 = FBKErrorOfType();
    a2(4, v4);
    goto LABEL_17;
  }

  v4 = v14;
  v5 = [v14 domain];
  v6 = sub_1B8C25128();
  v8 = v7;

  if (v6 == 0xD000000000000017 && 0x80000001B8C34C00 == v8)
  {
  }

  else
  {
    v10 = sub_1B8C25A08();

    if ((v10 & 1) == 0)
    {
LABEL_15:
      if (a2)
      {
        v13 = FBKErrorOfType();
        a2(4, v13);
      }

      goto LABEL_17;
    }
  }

  if ([v14 code] != -100)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_1B8BA8754();
    v11 = swift_allocError();
    *v12 = 4;
    a2(4, v11);

    return;
  }

LABEL_17:
}

uint64_t sub_1B8BA6A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1B8C25128();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1B8BA6B04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B8C24FD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    return sub_1B8BA844C(a5, a1, a2, a6, a7);
  }

  else
  {
    v39 = a6;
    v40 = v21;
    v41 = v20;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v42 = v14;
    v25 = sub_1B8C23C38();
    __swift_project_value_buffer(v25, qword_1EBAA77B0);
    v26 = a3;
    v27 = sub_1B8C23C18();
    v28 = sub_1B8C25478();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      if (a3)
      {
        v31 = a3;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v29 + 4) = v32;
      *v30 = v33;
      _os_log_impl(&dword_1B8B22000, v27, v28, "Received error from AppleConnect: %@", v29, 0xCu);
      sub_1B8BA7B2C(v30);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
      MEMORY[0x1B8CCB0E0](v29, -1, -1);
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v34 = sub_1B8C25538();
    v35 = swift_allocObject();
    v36 = v39;
    v35[2] = a5;
    v35[3] = v36;
    v35[4] = a7;
    aBlock[4] = sub_1B8BA7B20;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_7;
    v37 = _Block_copy(aBlock);
    v38 = a5;

    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v23, v17, v37);
    _Block_release(v37);

    (*(v42 + 8))(v17, v13);
    return (*(v40 + 8))(v23, v41);
  }
}

void sub_1B8BA6F60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1B8BA87A8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B8B8B9F4;
  v8[3] = &block_descriptor_25_0;
  v7 = _Block_copy(v8);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v7);
}

void sub_1B8BA7044(void (*a1)(void))
{
  v2 = FBKErrorOfType();
  a1();
}

id sub_1B8BA70E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Authentication();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8BA715C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B8BA8A40;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8BA6A6C;
  aBlock[3] = &block_descriptor_134;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  FBKLoginWithAppleConnect();
  _Block_release(v11);
}

uint64_t sub_1B8BA7318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v52 = a2;
  v53 = a5;
  v51 = a1;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C25008();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  if (a3)
  {
    aBlock[0] = a3;
    v21 = a3;
    return sub_1B8C25338();
  }

  else
  {
    v23 = a4;
    v47 = v16;
    v48 = v13;
    v49 = v11;
    v50 = v8;
    v24 = v52;
    if (v52)
    {
      v25 = &v46 - v19;
      v26 = v20;
      (*(v20 + 16))(&v46 - v19, a4, v17);
      v27 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v28 = swift_allocObject();
      (*(v26 + 32))(v28 + v27, v25, v17);
      sub_1B8BA844C(v53, v51, v24, sub_1B8BA8B70, v28);
    }

    else
    {
      v29 = &v46 - v19;
      v30 = v20;
      v31 = v53;
      v32 = v23;
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v33 = sub_1B8C23C38();
      __swift_project_value_buffer(v33, qword_1EBAA77B0);
      v34 = sub_1B8C23C18();
      v35 = sub_1B8C25478();
      v36 = os_log_type_enabled(v34, v35);
      v52 = v12;
      if (v36)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1B8B22000, v34, v35, "Something went wrong in AppleConnect login attempt.", v37, 2u);
        v38 = v37;
        v31 = v53;
        MEMORY[0x1B8CCB0E0](v38, -1, -1);
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v53 = sub_1B8C25538();
      (*(v30 + 16))(v29, v32, v17);
      v39 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v31;
      (*(v30 + 32))(v40 + v39, v29, v17);
      aBlock[4] = sub_1B8BA8B00;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_140;
      v41 = _Block_copy(aBlock);
      v42 = v31;

      v43 = v47;
      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      v44 = v49;
      sub_1B8C256D8();
      v45 = v53;
      MEMORY[0x1B8CCA210](0, v43, v44, v41);
      _Block_release(v41);

      (*(v50 + 8))(v44, v7);
      return (*(v48 + 8))(v43, v52);
    }
  }
}

uint64_t sub_1B8BA7868(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25338();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25348();
  }
}

void sub_1B8BA78DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1B8BA8C80;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_149;
  v11 = _Block_copy(aBlock);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v11);
}

id sub_1B8BA7A8C()
{
  result = FBKErrorOfType();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25338();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BA7AF0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1B8BA7B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69A0, &qword_1B8C29670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BA7B94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C24FD8();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B8C25008();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v14 = sub_1B8C25538();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_1B8BA8978;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_89;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_1B8B247D4(a2);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1B8BA7E74(char a1)
{
  if (a1)
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA77B0);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25498();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, v2, v3, "AC disabled via user default", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    v5 = 0;
  }

  else
  {
    v6 = sub_1B8C23638();
    v17[3] = v6;
    v17[4] = sub_1B8BA8930(&unk_1EBAA7810, MEMORY[0x1E699C198]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v6);
    v8 = sub_1B8C235D8();
    v9 = __swift_destroy_boxed_opaque_existential_0(v17);
    v10 = MEMORY[0x1B8CCA870](v9);
    v11 = FBKIsAppleConnectAvailable();
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAA77B0);
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25498();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109632;
      *(v15 + 4) = v8 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v10;
      *(v15 + 14) = 1024;
      *(v15 + 16) = v11;
      _os_log_impl(&dword_1B8B22000, v13, v14, "AC enabled? [true] CFB enabled? [%{BOOL}d], internal? [%{BOOL}d], AC available? [%{BOOL}d]", v15, 0x14u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    v5 = v8 & v10 & v11;
  }

  return v5 & 1;
}

uint64_t sub_1B8BA80F8(uint64_t result)
{
  if (result)
  {
    v1 = 0;
  }

  else if ((result & 2) != 0)
  {
    v1 = 1;
  }

  else if ((result & 4) != 0)
  {
    v1 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v1 = 3;
  }

  sub_1B8BA8754();
  result = swift_allocError();
  *v2 = v1;
  return result;
}

uint64_t sub_1B8BA8160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C24FD8();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B8C25008();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1B8BA8908;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_70;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  sub_1B8B247D4(a3);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v19 = v22;
  MEMORY[0x1B8CCA210](0, v15, v11, v17);
  _Block_release(v17);

  (*(v24 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v23);
}

uint64_t sub_1B8BA844C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_1B8C24FD8();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B8C25008();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v23 = sub_1B8C25538();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v22;
  aBlock[4] = sub_1B8BA8744;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_13_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_1B8B247D4(a4);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v20 = v23;
  MEMORY[0x1B8CCA210](0, v16, v12, v18);
  _Block_release(v18);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

unint64_t sub_1B8BA8754()
{
  result = qword_1EBAA77D8;
  if (!qword_1EBAA77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77D8);
  }

  return result;
}

unint64_t sub_1B8BA87B4()
{
  result = qword_1EBAA77E8;
  if (!qword_1EBAA77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77E8);
  }

  return result;
}

uint64_t sub_1B8BA883C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

uint64_t sub_1B8BA88AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_1B8BA1B04(v1);
  sub_1B8BA8160(v2, v5, v4, v3);
}

uint64_t sub_1B8BA8930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_15Tm_0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8BA89F8(uint64_t result)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    return v2(v1[2] & 0xFFFFFFFFFFFFFFFBLL, result);
  }

  return result;
}

uint64_t sub_1B8BA8A40(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B8BA7318(a1, a2, a3, v3 + v8, v9);
}

void sub_1B8BA8B00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1B8BA78DC(v2, v3);
}

uint64_t sub_1B8BA8B70(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8) + 80);

  return sub_1B8BA7868(a1);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1B8BA8C80()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8) + 80);

  return sub_1B8BA7A8C();
}

uint64_t objectdestroy_27Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for Authentication.AuthenticationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Authentication.AuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8BA8F00()
{
  result = qword_1EBAA7840;
  if (!qword_1EBAA7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7840);
  }

  return result;
}

uint64_t FBKFeedbackDraftViewController.ResponseType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E55;
    case 2:
      return 0x4620796576727553;
    case 1:
      return 0x6B63616264656546;
  }

  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

unint64_t FBKFeedbackDraftViewController.ResponseType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B8BA90C8()
{
  result = qword_1EBAA7850;
  if (!qword_1EBAA7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7850);
  }

  return result;
}

uint64_t sub_1B8BA911C()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BA9190()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t *sub_1B8BA91D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B8BA91F0()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6E776F6E6B6E55;
  }

  if (v1 == 2)
  {
    return 0x4620796576727553;
  }

  if (v1 == 1)
  {
    return 0x6B63616264656546;
  }

  v3 = *v0;
  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

uint64_t sub_1B8BA92B4(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return a1 + 1;
  }

  sub_1B8C257E8();

  type metadata accessor for FBKBugFormRole(0);
  v2 = sub_1B8C25178();
  MEMORY[0x1B8CC9EB0](v2);

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8BA937C(uint64_t *a1, int a2)
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

uint64_t sub_1B8BA93C4(uint64_t result, int a2, int a3)
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

double sub_1B8BA9430@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C23A28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v35 = sub_1B8C242E8();
  v43 = 1;
  sub_1B8BA980C(v2, &v37);
  v46 = v39;
  v47 = v40;
  v48[0] = v41[0];
  *(v48 + 9) = *(v41 + 9);
  v44 = v37;
  v45 = v38;
  *(v50 + 9) = *(v41 + 9);
  v49[2] = v39;
  v49[3] = v40;
  v50[0] = v41[0];
  v49[0] = v37;
  v49[1] = v38;
  sub_1B8B34450(&v44, &v36, &qword_1EBAA7950, &qword_1B8C2CE40);
  sub_1B8B3433C(v49, &qword_1EBAA7950, &qword_1B8C2CE40);
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  *(&v42[4] + 7) = v48[0];
  v42[5] = *(v48 + 9);
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  v11 = v43;
  v12 = *(v2 + *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 32));
  if (v12 == 1)
  {
    v13 = sub_1B8C24C88();
  }

  else
  {
    if (qword_1EBAA59C0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_1EBAB3AC0);
    (*(v5 + 16))(v10, v14, v4);
    v13 = sub_1B8C24CE8();
  }

  v15 = v13;
  v16 = sub_1B8C24808();
  if (v12)
  {
    if (qword_1EBAA59A0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBAB3A60;
  }

  else
  {
    if (qword_1EBAA59A8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBAB3A78;
  }

  v18 = __swift_project_value_buffer(v4, v17);
  (*(v5 + 16))(v34, v18, v4);
  v19 = sub_1B8C24CE8();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7958, &qword_1B8C2CE48) + 36));
  v21 = *(sub_1B8C24078() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1B8C24418();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50) + 36)] = 256;
  v29 = v42[3];
  *(a1 + 49) = v42[2];
  *(a1 + 65) = v29;
  v30 = v42[5];
  *(a1 + 81) = v42[4];
  *(a1 + 97) = v30;
  result = *v42;
  v32 = v42[1];
  *(a1 + 17) = v42[0];
  *a1 = v35;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 33) = v32;
  *(a1 + 120) = v15;
  *(a1 + 128) = v16;
  *(a1 + 136) = v19;
  return result;
}

uint64_t sub_1B8BA980C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *&v34 = *a1;
  sub_1B8B34CA8();

  v4 = sub_1B8C249E8();
  v6 = v5;
  v8 = v7;
  sub_1B8C248A8();
  v9 = sub_1B8C249B8();
  v11 = v10;
  v26 = v12;
  v14 = v13;

  sub_1B8B34060(v4, v6, v8 & 1);

  LOBYTE(v4) = sub_1B8C24808();
  sub_1B8C23D18();
  v15 = *v29;
  *(&v31 + 1) = *v29;
  DWORD1(v31) = *&v29[3];
  DWORD1(v32) = *&v28[3];
  v16 = *v28;
  *(&v32 + 1) = *v28;
  v27[80] = 1;
  *(a2 + 88) = 1;
  *&v30 = v9;
  *(&v30 + 1) = v11;
  LOBYTE(v31) = v26 & 1;
  *(&v31 + 1) = v14;
  LOBYTE(v32) = v4;
  *(&v32 + 1) = v17;
  *v33 = v18;
  *&v33[8] = v19;
  *&v33[16] = v20;
  v33[24] = 0;
  *(v37 + 9) = *&v33[9];
  v36 = v32;
  v37[0] = *v33;
  v34 = v30;
  v35 = v31;
  v21 = v30;
  v22 = v31;
  v23 = v37[1];
  *(a2 + 48) = *v33;
  *(a2 + 64) = v23;
  v24 = v36;
  *(a2 + 16) = v22;
  *(a2 + 32) = v24;
  *a2 = v21;
  *(a2 + 80) = 0;
  v38[0] = v9;
  v38[1] = v11;
  v39 = v26 & 1;
  *&v40[3] = *&v29[3];
  *v40 = v15;
  v41 = v14;
  v42 = v4;
  *&v43[3] = *&v28[3];
  *v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  v47 = v20;
  v48 = 0;
  sub_1B8B34450(&v30, v27, &qword_1EBAA5E40, &qword_1B8C27C38);
  return sub_1B8B3433C(v38, &qword_1EBAA5E40, &qword_1B8C27C38);
}

uint64_t sub_1B8BA99F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7858, &qword_1B8C2CC90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(a1 + 16))
  {
    v21 = v12;
    v15 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *v14 = sub_1B8C24468();
    *(v14 + 1) = 0x4040000000000000;
    v14[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7860, &qword_1B8C2CC98);
    sub_1B8BA9BC0(a1 + v16, a1, a2, a3, a4, &v14[*(v17 + 44)]);
    sub_1B8B2A5AC(v14, a5);
    return (*(v21 + 56))(a5, 0, 1, v10);
  }

  else
  {
    v19 = *(v12 + 56);

    return v19(a5, 1, 1, v10);
  }
}

uint64_t sub_1B8BA9BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v54 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7868, &qword_1B8C2CCA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = (&v46 - v15);
  v16 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v48 = *(v16 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7870, &qword_1B8C2CCA8);
  v18 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v20 = &v46 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7878, &qword_1B8C2CCB0);
  v55 = *(v52 - 8);
  v21 = v55[8];
  v22 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v47 = &v46 - v24;
  *v20 = sub_1B8C24478();
  *(v20 + 1) = 0x4030000000000000;
  v20[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7880, &qword_1B8C2CCB8);
  v26 = a3;
  v27 = a3;
  v28 = a4;
  v29 = a4;
  v30 = a5;
  sub_1B8BAA084(a1, a2, v27, v29, a5, &v20[*(v25 + 44)]);
  sub_1B8BACB40(a1, &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpDonationDecoder.Result.Message);
  v31 = (*(v48 + 80) + 48) & ~*(v48 + 80);
  v32 = swift_allocObject();
  v32[2] = a2;
  v32[3] = v26;
  v32[4] = v28;
  v32[5] = v30;
  sub_1B8BAB5DC(&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  sub_1B8B34CFC(&qword_1EBAA7888, &qword_1EBAA7870, &qword_1B8C2CCA8);

  v33 = v47;
  sub_1B8C24AA8();

  sub_1B8B3433C(v20, &qword_1EBAA7870, &qword_1B8C2CCA8);
  v34 = sub_1B8C24478();
  v35 = v51;
  *v51 = v34;
  *(v35 + 8) = 0x4030000000000000;
  *(v35 + 16) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7890, &qword_1B8C2CCC0);
  sub_1B8BAAFE8(a2, v26, v28, v30, (v35 + *(v36 + 44)));
  v37 = v55[2];
  v38 = v50;
  v39 = v33;
  v40 = v52;
  v37(v50, v33, v52);
  v41 = v53;
  sub_1B8B34450(v35, v53, &qword_1EBAA7868, &qword_1B8C2CCA0);
  v42 = v54;
  v37(v54, v38, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7898, &qword_1B8C2CCC8);
  sub_1B8B34450(v41, &v42[*(v43 + 48)], &qword_1EBAA7868, &qword_1B8C2CCA0);
  sub_1B8B3433C(v35, &qword_1EBAA7868, &qword_1B8C2CCA0);
  v44 = v55[1];
  v44(v39, v40);
  sub_1B8B3433C(v41, &qword_1EBAA7868, &qword_1B8C2CCA0);
  return (v44)(v38, v40);
}

uint64_t sub_1B8BAA084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v81 = a4;
  v82 = a5;
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v89 = a6;
  v6 = sub_1B8C23A28();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C24078();
  v10 = *(v9 - 8);
  v77 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78E8, &qword_1B8C2CCF8);
  v13 = *(*(v83 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v83);
  v88 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76 - v16;
  sub_1B8C243A8();
  v18 = sub_1B8C249C8();
  v20 = v19;
  v22 = v21;
  sub_1B8C24928();
  v23 = sub_1B8C249B8();
  v25 = v24;
  v27 = v26;

  sub_1B8B34060(v18, v20, v22 & 1);

  *&v90 = sub_1B8C24C98();
  v28 = sub_1B8C24998();
  v30 = v29;
  v84 = v31;
  v33 = v32;
  LOBYTE(v31) = v27 & 1;
  v34 = v76;
  sub_1B8B34060(v23, v25, v31);

  *v17 = sub_1B8C24478();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78F0, &qword_1B8C2CD00);
  sub_1B8BAA6B8(v78, &v17[*(v35 + 44)]);
  v36 = sub_1B8C24808();
  sub_1B8C23D18();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78F8, &qword_1B8C2CD08) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = *(v77 + 28);
  v47 = *MEMORY[0x1E697F468];
  v48 = sub_1B8C24418();
  (*(*(v48 - 8) + 104))(&v34[v46], v47, v48);
  __asm { FMOV            V0.2D, #8.0 }

  *v34 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v54 = v87;
  v55 = __swift_project_value_buffer(v87, qword_1EBAB3AA8);
  (*(v86 + 16))(v85, v55, v54);
  v56 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v57 = &v17[*(v83 + 36)];
  v58 = MEMORY[0x1E697EAF0];
  sub_1B8BACB40(v34, v57, MEMORY[0x1E697EAF0]);
  v59 = *&v90 * 0.5;
  v60 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8BACB40(v34, v60, v58);
  *(v60 + *(sub_1B8C24068() + 20)) = v59;
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v62 = v91;
  *v61 = v90;
  *(v61 + 16) = v62;
  *(v61 + 32) = v92;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v60 + *(v63 + 52)) = v56;
  *(v60 + *(v63 + 56)) = 256;
  v64 = sub_1B8C24F48();
  v66 = v65;
  sub_1B8BACBA8(v34, MEMORY[0x1E697EAF0]);
  v67 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v67 = v64;
  v67[1] = v66;
  v68 = sub_1B8C24F48();
  v70 = v69;
  v71 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v71 = v68;
  v71[1] = v70;
  v72 = v88;
  sub_1B8B2A7AC(v17, v88);
  v73 = v89;
  *v89 = v28;
  v73[1] = v30;
  LOBYTE(v68) = v84 & 1;
  *(v73 + 16) = v84 & 1;
  v73[3] = v33;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7900, &qword_1B8C2CD38);
  sub_1B8B2A7AC(v72, v73 + *(v74 + 48));
  sub_1B8B34694(v28, v30, v68);

  sub_1B8B3433C(v17, &qword_1EBAA78E8, &qword_1B8C2CCF8);
  sub_1B8B3433C(v72, &qword_1EBAA78E8, &qword_1B8C2CCF8);
  sub_1B8B34060(v28, v30, v68);
}

uint64_t sub_1B8BAA6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7908, &unk_1B8C2CD40);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v28 = sub_1B8C242E8();
  v32 = 1;
  sub_1B8BAAA14(a1, &v41);
  v35 = *&v42[16];
  v36 = *&v42[32];
  v33 = v41;
  v34 = *v42;
  v38[2] = *&v42[16];
  v38[3] = *&v42[32];
  v38[4] = *&v42[48];
  v38[1] = *v42;
  v37 = *&v42[48];
  v38[0] = v41;
  sub_1B8B34450(&v33, v39, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v38, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v31[23] = v34;
  *&v31[39] = v35;
  *&v31[55] = v36;
  *&v31[71] = v37;
  *&v31[7] = v33;
  v11 = v32;
  sub_1B8C24C98();
  v30 = a1;
  sub_1B8C24608();
  v12 = sub_1B8C24C98();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7910, &qword_1B8C2CD50) + 36)] = v12;
  v13 = sub_1B8C24898();
  KeyPath = swift_getKeyPath();
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7918, &qword_1B8C2CD88) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = swift_getKeyPath();
  v17 = &v10[*(v5 + 44)];
  *v17 = v16;
  *(v17 + 1) = 4;
  v17[16] = 0;
  v18 = v29;
  sub_1B8B34450(v10, v29, &qword_1EBAA7908, &unk_1B8C2CD40);
  v19 = v28;
  v39[0] = v28;
  v39[1] = 0;
  v40[0] = v11;
  *&v40[1] = *v31;
  *&v40[17] = *&v31[16];
  *&v40[65] = *&v31[64];
  *&v40[49] = *&v31[48];
  *&v40[33] = *&v31[32];
  v20 = *&v31[79];
  *&v40[80] = *&v31[79];
  v21 = *v40;
  *a2 = v28;
  *(a2 + 16) = v21;
  v22 = *&v40[16];
  v23 = *&v40[32];
  v24 = *&v40[48];
  v25 = *&v40[64];
  *(a2 + 96) = v20;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7920, &unk_1B8C2CDC0) + 48);
  sub_1B8B34450(v18, v26, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B34450(v39, &v41, &qword_1EBAA7680, &qword_1B8C2C1D0);
  sub_1B8B3433C(v10, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B3433C(v18, &qword_1EBAA7908, &unk_1B8C2CD40);
  *&v42[33] = *&v31[32];
  *&v42[49] = *&v31[48];
  *v43 = *&v31[64];
  *&v42[1] = *v31;
  v41 = v19;
  v42[0] = v11;
  *&v43[15] = *&v31[79];
  *&v42[17] = *&v31[16];
  return sub_1B8B3433C(&v41, &qword_1EBAA7680, &qword_1B8C2C1D0);
}

uint64_t sub_1B8BAAA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  sub_1B8B34CA8();

  v3 = sub_1B8C249E8();
  v5 = v4;
  v7 = v6;
  sub_1B8C24938();
  v8 = sub_1B8C249B8();
  v30 = v9;
  v31 = v8;
  v29 = v10;
  v32 = v11;

  sub_1B8B34060(v3, v5, v7 & 1);

  sub_1B8BACC24();
  v12 = sub_1B8C249E8();
  v14 = v13;
  v16 = v15;
  sub_1B8C24C98();
  v17 = sub_1B8C24998();
  v19 = v18;
  v21 = v20;
  sub_1B8B34060(v12, v14, v16 & 1);

  sub_1B8C24898();
  v22 = sub_1B8C249B8();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;

  sub_1B8B34060(v17, v19, v21 & 1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v14 & 1;
  *(a2 + 72) = v27;
  sub_1B8B34694(v31, v30, v29 & 1);

  sub_1B8B34694(v22, v24, v14 & 1);

  sub_1B8B34060(v22, v24, v14 & 1);

  sub_1B8B34060(v31, v30, v29 & 1);
}

uint64_t sub_1B8BAAC6C()
{
  v0 = sub_1B8C24398();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B8C24618();
  v4 = v3;
  v6 = v5;
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24358();
  sub_1B8C24378();
  v7 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 28);
  sub_1B8C24348();
  sub_1B8C24378();
  sub_1B8C243B8();
  v8 = sub_1B8C249C8();
  sub_1B8B34060(v2, v4, v6 & 1);

  return v8;
}

uint64_t sub_1B8BAADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B8C237B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v22, v18);
  v19 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 28);
  v20 = sub_1B8C23328();
  (*(*(v20 - 8) + 16))(v17, a5 + v19, v20);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 104))(v13, *MEMORY[0x1E699C308], v9);
  sub_1B8B5FE50(v17, v13);

  (*(v10 + 8))(v13, v9);
  return sub_1B8BACBA8(v17, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8BAAFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v44 = a4;
  v45 = a2;
  v46 = a3;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78A0, &qword_1B8C2CCD0);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v40 - v10;
  v11 = sub_1B8C24398();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1B8C24388();
  sub_1B8C24378();
  v13 = *(a1 + 16);
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v14 = sub_1B8C249C8();
  v16 = v15;
  v18 = v17;
  sub_1B8C24928();
  v19 = sub_1B8C249B8();
  v21 = v20;
  v23 = v22;

  sub_1B8B34060(v14, v16, v18 & 1);

  v56 = sub_1B8C24C98();
  v24 = sub_1B8C24998();
  v41 = v25;
  v42 = v26;
  v43 = v27;
  sub_1B8B34060(v19, v21, v23 & 1);

  v52 = a1;
  v53 = v45;
  v54 = v46;
  v55 = v44;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78A8, &qword_1B8C2CCD8);
  sub_1B8B34CFC(&qword_1EBAA78B0, &qword_1EBAA78A8, &qword_1B8C2CCD8);
  v28 = v51;
  sub_1B8C23D58();
  v29 = v47;
  v30 = v48;
  v31 = *(v48 + 16);
  v32 = v49;
  v31(v47, v28, v49);
  v33 = v50;
  v34 = v41;
  *v50 = v24;
  v33[1] = v34;
  v35 = v42 & 1;
  *(v33 + 16) = v42 & 1;
  v33[3] = v43;
  v36 = v33;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78B8, &qword_1B8C2CCE0);
  v31(v36 + *(v37 + 48), v29, v32);
  sub_1B8B34694(v24, v34, v35);
  v38 = *(v30 + 8);

  v38(v51, v32);
  v38(v29, v32);
  sub_1B8B34060(v24, v34, v35);
}

uint64_t sub_1B8BAB3F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C24478();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v6 = a1;

  sub_1B8BAB6B4(&v6);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78C0, &qword_1B8C2CCE8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78C8, &qword_1B8C2CCF0);
  sub_1B8C23568();
  type metadata accessor for CatchUpMessagePreviewer();
  sub_1B8B34CFC(&qword_1EBAA78D0, &qword_1EBAA78C8, &qword_1B8C2CCF0);
  sub_1B8BAB7A8(&qword_1EBAA78D8, type metadata accessor for CatchUpMessagePreviewer);
  sub_1B8BAB7A8(&qword_1EBAA78E0, type metadata accessor for CatchUpDonationDecoder.Result.Message);
  return sub_1B8C24EC8();
}

uint64_t sub_1B8BAB5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BAB640()
{
  v1 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B8BAADDC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8BAB6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1B8BAB3F0(*(v1 + 16), a1);
}

uint64_t sub_1B8BAB6B4(void **a1)
{
  v2 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B8BACB2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B8BAB7F0(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for CatchUpMessagePreviewer()
{
  result = qword_1EBAA7928;
  if (!qword_1EBAA7928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BAB7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8BAB7F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8C259D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
        v6 = sub_1B8C252F8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B8BABB5C(v8, v9, a1, v4);
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
    return sub_1B8BAB91C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8BAB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1B8BACB40(v24, v18, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8BACB40(v21, v14, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v25 = *(v8 + 24);
      v26 = sub_1B8C234F8();
      sub_1B8BACBA8(v14, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      result = sub_1B8BACBA8(v18, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1B8BAB5DC(v24, v37);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B8BAB5DC(v27, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BABB5C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v101 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v101 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v101 - v19;
  v114 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v117 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v114)
        {
          v97 = *(result + 16 * a4);
          v98 = result;
          v99 = *(result + 16 * (a4 - 1) + 40);
          sub_1B8BAC478(*v114 + *(v112 + 72) * v97, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v99, v5);
          if (v6)
          {
          }

          if (v99 < v97)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1B8BACA34(v98);
          }

          if (a4 - 2 >= *(v98 + 2))
          {
            goto LABEL_123;
          }

          v100 = &v98[16 * a4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v117 = v98;
          sub_1B8BAC9A8(a4 - 1);
          result = v117;
          a4 = *(v117 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1B8BACA34(a4);
    goto LABEL_99;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v102 = a4;
  v116 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v107 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v114;
      v27 = *(v112 + 72);
      v5 = *v114 + v27 * v25;
      v104 = v24;
      v28 = v27;
      v113 = v27;
      sub_1B8BACB40(v5, v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8BACB40(v26 + v28 * v104, v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v29 = *(v9 + 24);
      LODWORD(v111) = sub_1B8C234F8();
      sub_1B8BACBA8(v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      result = sub_1B8BACBA8(v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v30 = v104 + 2;
      v31 = v26 + v113 * (v104 + 2);
      while (v21 != v30)
      {
        sub_1B8BACB40(v31, v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        sub_1B8BACB40(v5, v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v32 = *(v116 + 24);
        v33 = sub_1B8C234F8() & 1;
        sub_1B8BACBA8(v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        result = sub_1B8BACBA8(v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        ++v30;
        v31 += v113;
        v5 += v113;
        if ((v111 & 1) != v33)
        {
          v21 = v30 - 1;
          break;
        }
      }

      a4 = v102;
      v9 = v116;
      v24 = v104;
      if (v111)
      {
        if (v21 < v104)
        {
          goto LABEL_126;
        }

        if (v104 < v21)
        {
          v101 = v6;
          v34 = v113 * (v21 - 1);
          v35 = v21;
          v36 = v21 * v113;
          v111 = v21;
          v37 = v104;
          v38 = v104 * v113;
          do
          {
            if (v37 != --v35)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_132;
              }

              v5 = v39 + v38;
              sub_1B8BAB5DC(v39 + v38, v106);
              if (v38 < v34 || v5 >= v39 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1B8BAB5DC(v106, v39 + v34);
            }

            ++v37;
            v34 -= v113;
            v36 -= v113;
            v38 += v113;
          }

          while (v37 < v35);
          v6 = v101;
          a4 = v102;
          v9 = v116;
          v24 = v104;
          v21 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v21 >= v40)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_125;
    }

    if (v21 - v24 >= a4)
    {
LABEL_32:
      v42 = v21;
      if (v21 < v24)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_127;
    }

    if ((v24 + a4) >= v40)
    {
      v41 = v114[1];
    }

    else
    {
      v41 = v24 + a4;
    }

    if (v41 < v24)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v21 == v41)
    {
      goto LABEL_32;
    }

    v101 = v6;
    v87 = v21;
    v88 = v24;
    v89 = *v114;
    v90 = *(v112 + 72);
    v91 = *v114 + v90 * (v21 - 1);
    v92 = -v90;
    v104 = v88;
    v105 = v90;
    v93 = v88 - v21;
    v111 = v87;
    v5 = v89 + v87 * v90;
    v108 = v41;
LABEL_86:
    v109 = v5;
    v110 = v93;
    v113 = v91;
    v94 = v91;
LABEL_87:
    sub_1B8BACB40(v5, v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    sub_1B8BACB40(v94, v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    v95 = *(v9 + 24);
    a4 = sub_1B8C234F8();
    sub_1B8BACBA8(v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    result = sub_1B8BACBA8(v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    if (a4)
    {
      break;
    }

    v9 = v116;
LABEL_85:
    v91 = v113 + v105;
    v93 = v110 - 1;
    v42 = v108;
    v5 = v109 + v105;
    if (++v111 != v108)
    {
      goto LABEL_86;
    }

    v6 = v101;
    v24 = v104;
    if (v108 < v104)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v107;
    }

    else
    {
      result = sub_1B8B5D890(0, *(v107 + 2) + 1, 1, v107);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v43 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      result = sub_1B8B5D890((v43 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v44 = &v23[16 * a4];
    *(v44 + 4) = v24;
    *(v44 + 5) = v42;
    v45 = *v103;
    if (!*v103)
    {
      goto LABEL_134;
    }

    v108 = v42;
    if (a4)
    {
      while (2)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          v51 = &v23[16 * v5 + 32];
          v52 = *(v51 - 64);
          v53 = *(v51 - 56);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_111;
          }

          v56 = *(v51 - 48);
          v55 = *(v51 - 40);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_112;
          }

          v58 = &v23[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v57 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v57)
          {
            goto LABEL_114;
          }

          v57 = __OFADD__(v49, v61);
          v62 = v49 + v61;
          if (v57)
          {
            goto LABEL_117;
          }

          if (v62 >= v54)
          {
            v80 = &v23[16 * v46 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v57 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v57)
            {
              goto LABEL_121;
            }

            if (v49 < v83)
            {
              v46 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v50)
            {
              goto LABEL_113;
            }

            v63 = &v23[16 * v5];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_116;
            }

            v69 = &v23[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_120;
            }

            if (v67 + v72 < v49)
            {
              goto LABEL_66;
            }

            if (v49 < v72)
            {
              v46 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v47 = *(v23 + 4);
            v48 = *(v23 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_52;
          }

          v73 = &v23[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_66:
          if (v68)
          {
            goto LABEL_115;
          }

          v76 = &v23[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v79 < v67)
          {
            break;
          }
        }

        a4 = v46 - 1;
        if (v46 - 1 >= v5)
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v114)
        {
          goto LABEL_131;
        }

        v84 = v23;
        v85 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v46 + 40];
        sub_1B8BAC478(*v114 + *(v112 + 72) * v85, *v114 + *(v112 + 72) * *&v23[16 * v46 + 32], *v114 + *(v112 + 72) * v5, v45);
        if (v6)
        {
        }

        if (v5 < v85)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1B8BACA34(v84);
        }

        if (a4 >= *(v84 + 2))
        {
          goto LABEL_110;
        }

        v86 = &v84[16 * a4];
        *(v86 + 4) = v85;
        *(v86 + 5) = v5;
        v117 = v84;
        result = sub_1B8BAC9A8(v46);
        v23 = v117;
        v5 = *(v117 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v114[1];
    v22 = v108;
    a4 = v102;
    v9 = v116;
    if (v108 >= v21)
    {
      goto LABEL_96;
    }
  }

  if (v89)
  {
    a4 = v115;
    sub_1B8BAB5DC(v5, v115);
    v9 = v116;
    swift_arrayInitWithTakeFrontToBack();
    sub_1B8BAB5DC(a4, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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
  return result;
}

uint64_t sub_1B8BAC478(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1B8BACB40(v33, v47, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          v35 = v48;
          sub_1B8BACB40(v29, v48, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          v36 = *(v31 + 24);
          v37 = sub_1B8C234F8();
          sub_1B8BACBA8(v35, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          sub_1B8BACBA8(v34, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1B8BACB40(a2, v47, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v22 = v48;
        sub_1B8BACB40(a4, v48, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v23 = *(v49 + 24);
        v24 = sub_1B8C234F8();
        sub_1B8BACBA8(v22, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        sub_1B8BACBA8(v21, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1B8BACA48(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1B8BAC9A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B8BACA34(v3);
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

uint64_t sub_1B8BACA48(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B8BACB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BACBA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BACC24()
{
  v0 = sub_1B8C23528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23518();
  v5 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 24);
  sub_1B8C234D8();
  if (v6 >= 86400.0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
    [v7 setUnitsStyle_];
    [v7 setDateTimeStyle_];
    v10 = sub_1B8C234E8();
    v8 = sub_1B8C234E8();
    v9 = [v7 localizedStringForDate:v10 relativeToDate:v8];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v7 setDateStyle_];
    [v7 setTimeStyle_];
    v8 = sub_1B8C234E8();
    v9 = [v7 stringFromDate_];
  }

  v11 = sub_1B8C25128();
  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_1B8BACE60()
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Message(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BACECC()
{
  result = qword_1EBAA7938;
  if (!qword_1EBAA7938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7940, &qword_1B8C2CDE8);
    sub_1B8B34CFC(&qword_1EBAA7948, &qword_1EBAA7858, &qword_1B8C2CC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7938);
  }

  return result;
}

unint64_t sub_1B8BACF98()
{
  result = qword_1EBAA7960;
  if (!qword_1EBAA7960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7958, &qword_1B8C2CE48);
    sub_1B8BAD050();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7960);
  }

  return result;
}

unint64_t sub_1B8BAD050()
{
  result = qword_1EBAA7968;
  if (!qword_1EBAA7968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7970, &qword_1B8C2CE60);
    sub_1B8BAD108();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7968);
  }

  return result;
}

unint64_t sub_1B8BAD108()
{
  result = qword_1EBAA7978;
  if (!qword_1EBAA7978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7980, &qword_1B8C2CE68);
    sub_1B8B34CFC(&qword_1EBAA7988, &qword_1EBAA7990, &unk_1B8C2CE70);
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7978);
  }

  return result;
}

uint64_t sub_1B8BAD1EC()
{
  sub_1B8C251B8();
}

uint64_t sub_1B8BAD338()
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8BAD498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6C75736572206F4ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001B8C31F60;
    v12 = 0xD00000000000002ELL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000025;
      v11 = 0x80000001B8C31F90;
    }

    v13 = 0x80000001B8C31F30;
    v14 = 0xD00000000000002CLL;
    if (a1 == 4)
    {
      v14 = 0x6C75736572206F4ELL;
      v13 = 0xEA00000000007374;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001B8C31EC0;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0xD000000000000043;
      v5 = 0x80000001B8C31EE0;
    }

    v7 = 0x80000001B8C31E80;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v7 = 0x80000001B8C31EA0;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001B8C31F60;
        if (v9 != 0xD00000000000002ELL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001B8C31F90;
        if (v9 != 0xD000000000000025)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 4)
    {
      v2 = 0x80000001B8C31F30;
      if (v9 != 0xD00000000000002CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B8C31EA0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001B8C31E80;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001B8C31EC0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x80000001B8C31EE0;
    v3 = 0xD000000000000043;
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_1B8C25A08();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1B8BAD708()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAB39C8);
  v1 = __swift_project_value_buffer(v0, qword_1EBAB39C8);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDC85D40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Feedback::FBKEvaluationError_optional __swiftcall FBKEvaluationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8C25908();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FBKEvaluationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C75736572206F4ELL;
    v6 = 0xD00000000000002ELL;
    if (v1 != 6)
    {
      v6 = 0xD000000000000025;
    }

    if (v1 != 4)
    {
      v5 = 0xD00000000000002CLL;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000043;
    if (v1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1B8BAD954()
{
  result = qword_1EBAA7998;
  if (!qword_1EBAA7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7998);
  }

  return result;
}

void sub_1B8BAD9D0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEA00000000007374;
    v9 = 0x6C75736572206F4ELL;
    v10 = 0x80000001B8C31F60;
    v11 = 0xD00000000000002ELL;
    if (v2 != 6)
    {
      v11 = 0xD000000000000025;
      v10 = 0x80000001B8C31F90;
    }

    if (v2 != 4)
    {
      v9 = 0xD00000000000002CLL;
      v8 = 0x80000001B8C31F30;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (*v1 > 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001B8C31EC0;
    v4 = 0xD000000000000043;
    if (v2 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x80000001B8C31EE0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001B8C31E80;
    if (*v1)
    {
      v5 = 0xD000000000000019;
      v6 = 0x80000001B8C31EA0;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t getEnumTagSinglePayload for FBKEvaluationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKEvaluationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B8BADC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 24);
  v51 = *(*a1 + 16);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 24);
  v50 = *(v2 + 16);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *v9;
  v11 = *(v9 + 8);
  v39 = *(v9 + 16);
  v13 = *(v9 + 24);
  v49 = *v10;
  v48 = *(v10 + 8);
  v41 = *(v10 + 16);
  v47 = *(v10 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v45 = *(v14 + 8);
  v46 = *v14;
  v40 = *(v14 + 16);
  v44 = *(v14 + 24);
  v25 = *(v15 + 8);
  v26 = *v15;
  v42 = *(v15 + 16);
  v16 = *(v15 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v43 = *(v17 + 16);
  *(a2 + 16) = v51;
  *(a2 + 48) = v50;
  *(a2 + 80) = v39;
  *(a2 + 112) = v41;
  *(a2 + 144) = v40;
  *(a2 + 176) = v42;
  *(a2 + 208) = v43;
  v27 = *(v17 + 8);
  v28 = *v17;
  v29 = *(v17 + 24);
  v30 = *(v18 + 8);
  v19 = *(v18 + 16);
  v31 = *v18;
  v32 = *(v18 + 24);
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v33 = *(v21 + 8);
  v34 = *v21;
  v22 = *(v21 + 16);
  v35 = *(v21 + 24);
  v36 = *(v20 + 8);
  v23 = *(v20 + 16);
  v37 = *v20;
  v38 = *(v20 + 24);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v12;
  *(a2 + 72) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v49;
  *(a2 + 104) = v48;
  *(a2 + 120) = v47;
  *(a2 + 128) = v46;
  *(a2 + 136) = v45;
  *(a2 + 152) = v44;
  *(a2 + 160) = v26;
  *(a2 + 168) = v25;
  *(a2 + 184) = v16;
  *(a2 + 192) = v28;
  *(a2 + 200) = v27;
  *(a2 + 216) = v29;
  *(a2 + 224) = v31;
  *(a2 + 232) = v30;
  *(a2 + 240) = v19;
  *(a2 + 248) = v32;
  *(a2 + 256) = v34;
  *(a2 + 264) = v33;
  *(a2 + 272) = v22;
  *(a2 + 280) = v35;
  *(a2 + 288) = v37;
  *(a2 + 296) = v36;
  *(a2 + 304) = v23;
  *(a2 + 312) = v38;
  sub_1B8B34694(v3, v4, v51);

  sub_1B8B34694(v6, v7, v50);

  sub_1B8B34694(v12, v11, v39);

  sub_1B8B34694(v49, v48, v41);

  sub_1B8B34694(v46, v45, v40);

  sub_1B8B34694(v26, v25, v42);

  sub_1B8B34694(v28, v27, v43);

  sub_1B8B34694(v31, v30, v19);

  sub_1B8B34694(v34, v33, v22);

  sub_1B8B34694(v37, v36, v23);
}

uint64_t sub_1B8BADF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  *a2 = *(v3 + 73);
  return result;
}

void *sub_1B8BAE01C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = sub_1B8C242A8();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_1B8C23A28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B8C24478();
  v47 = 1;
  v43 = a2;
  sub_1B8BAE668(a1, a2 & 1, v48);
  memcpy(v57, v48, sizeof(v57));
  memcpy(v58, v48, sizeof(v58));
  sub_1B8B34450(v57, v45, &qword_1EBAA79A0, &qword_1B8C2D080);
  sub_1B8B3433C(v58, &qword_1EBAA79A0, &qword_1B8C2D080);
  memcpy(&v46[7], v57, 0x140uLL);
  v17 = v47;
  v41 = sub_1B8C24808();
  LOBYTE(v48[0]) = 1;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_1EBAB3A60);
  v19 = *(v13 + 16);
  v19(v16, v18, v12);
  v20 = sub_1B8C24CE8();
  v21 = sub_1B8C24808();
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v12, qword_1EBAB3A78);
  v19(v16, v22, v12);
  v23 = sub_1B8C24CE8();
  v48[0] = v42;
  v48[1] = 0;
  LOBYTE(v48[2]) = v17;
  memcpy(&v48[2] + 1, v46, 0x147uLL);
  v49 = v41;
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  v53 = v20;
  v54 = v21;
  *v55 = v45[0];
  *&v55[3] = *(v45 + 3);
  v56 = v23;
  v24 = sub_1B8C24C78();
  sub_1B8BAFF60(v24, v59);

  sub_1B8B3433C(v48, &qword_1EBAA79A8, &qword_1B8C2D088);
  KeyPath = swift_getKeyPath();
  v26 = *MEMORY[0x1E6980E08];
  v27 = sub_1B8C248C8();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v11, v26, v27);
  (*(v28 + 56))(v11, 0, 1, v27);
  v29 = sub_1B8C24908();
  sub_1B8B3433C(v11, &qword_1EBAA5CD0, &qword_1B8C278C8);
  v30 = swift_getKeyPath();

  if ((v43 & 1) == 0)
  {
    sub_1B8C25488();
    v31 = sub_1B8C247B8();
    sub_1B8C23C08();

    v32 = v38;
    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v39 + 8))(v32, v40);
    a1 = v45[0];
  }

  swift_getKeyPath();
  v45[0] = a1;
  sub_1B8BB04CC(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v33 = *(a1 + 48);

  swift_getKeyPath();
  v45[0] = v33;
  sub_1B8BB04CC(&qword_1EBAA6908, type metadata accessor for DebugController);
  sub_1B8C23588();

  v34 = *(v33 + 17);

  if (v34)
  {
    v35 = 140.0;
  }

  else
  {
    v35 = -200.0;
  }

  v36 = v44;
  result = memcpy(v44, v59, 0x1F0uLL);
  v36[62] = KeyPath;
  *(v36 + 504) = 0;
  v36[64] = v30;
  v36[65] = v29;
  *(v36 + 66) = v35;
  v36[67] = 0x403E000000000000;
  return result;
}

void sub_1B8BAE668(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v5 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v117[-v6];
  v7 = sub_1B8C242A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v117[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1B8C24398();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v149 = &v117[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v148 = &v117[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v152 = &v117[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v147 = &v117[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v151 = &v117[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v146 = &v117[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v150 = &v117[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1B8C24388();
  sub_1B8C24378();
  v153 = v7;
  v154 = v8;
  v156 = a2;
  if (a2)
  {
    v205 = a1;

    v30 = a1;
  }

  else
  {

    sub_1B8C25488();
    v31 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    v30 = v205;
  }

  swift_getKeyPath();
  *&v197 = v30;
  v155 = sub_1B8BB04CC(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v32 = *(v30 + 40);

  swift_getKeyPath();
  *&v197 = v32;
  sub_1B8BB04CC(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  v33 = v32[2];
  v202 = v32[1];
  v203 = v33;
  v204[0] = v32[3];
  *(v204 + 9) = *(v32 + 57);
  sub_1B8B50FF8(&v202, &v197);

  v197 = v202;
  v198 = v203;
  v199[0] = v204[0];
  *(v199 + 9) = *(v204 + 9);
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v34 = sub_1B8C249C8();
  v140 = v35;
  v141 = v34;
  v142 = v36;
  v139 = v37;
  sub_1B8C24388();
  sub_1B8C24378();

  v38 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v39 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v153);
    v38 = v197;
  }

  swift_getKeyPath();
  *&v197 = v38;
  sub_1B8C23588();

  v40 = *(v38 + 40);

  swift_getKeyPath();
  *&v197 = v40;
  sub_1B8C23588();

  v41 = *(v40 + 73);

  LOBYTE(v197) = v41;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v42 = sub_1B8C249C8();
  v136 = v43;
  v137 = v42;
  v138 = v44;
  v135 = v45;
  sub_1B8C24388();
  sub_1B8C24378();

  v46 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v47 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v153);
    v46 = v197;
  }

  swift_getKeyPath();
  *&v197 = v46;
  sub_1B8C23588();

  swift_beginAccess();
  v48 = *(v46 + 16);

  swift_getKeyPath();
  *&v197 = v48;
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v49 = *(v48 + 40);
  swift_getKeyPath();
  *&v197 = v48;
  sub_1B8C23588();

  v50 = *(v48 + 48);

  *&v197 = v49 / v50;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v51 = sub_1B8C249C8();
  v132 = v52;
  v133 = v51;
  v134 = v53;
  v131 = v54;
  sub_1B8C24388();
  sub_1B8C24378();

  v55 = a1;
  v56 = v153;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v57 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v55 = v197;
  }

  swift_getKeyPath();
  *&v197 = v55;
  sub_1B8C23588();

  swift_beginAccess();
  v58 = *(v55 + 16);

  swift_getKeyPath();
  *&v197 = v58;
  sub_1B8C23588();

  v59 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  sub_1B8B34450(v58 + v59, v144, &qword_1EBAA79C0, &qword_1B8C2D150);

  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v144 = sub_1B8C249C8();
  v130 = v60;
  LODWORD(v145) = v61;
  v150 = v62;
  sub_1B8C24388();
  sub_1B8C24378();

  v63 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v64 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v63 = v197;
  }

  swift_getKeyPath();
  *&v197 = v63;
  sub_1B8C23588();

  v65 = *(v63 + 32);

  swift_getKeyPath();
  *&v197 = v65;
  sub_1B8BB04CC(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v66 = *(v65 + 17);

  LOBYTE(v197) = v66;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v67 = sub_1B8C249C8();
  v128 = v68;
  v129 = v67;
  v127 = v69;
  v146 = v70;
  sub_1B8C24388();
  sub_1B8C24378();

  v71 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v72 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v71 = v197;
  }

  swift_getKeyPath();
  *&v197 = v71;
  sub_1B8C23588();

  v73 = *(v71 + 32);

  swift_getKeyPath();
  *&v197 = v73;
  sub_1B8C23588();

  v74 = *(v73 + 16);

  LOBYTE(v197) = v74;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v75 = sub_1B8C249C8();
  v125 = v76;
  v126 = v75;
  v124 = v77;
  v151 = v78;
  sub_1B8C24388();
  sub_1B8C24378();

  v79 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v80 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v79 = v197;
  }

  swift_getKeyPath();
  *&v197 = v79;
  sub_1B8C23588();

  v81 = *(v79 + 24);

  swift_getKeyPath();
  *&v197 = v81;
  sub_1B8BB04CC(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v82 = *(v81 + 24);

  *&v197 = v82;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v83 = sub_1B8C249C8();
  v122 = v84;
  v123 = v83;
  v121 = v85;
  v147 = v86;
  sub_1B8C24388();
  sub_1B8C24378();

  v87 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v88 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v87 = v197;
  }

  swift_getKeyPath();
  *&v197 = v87;
  sub_1B8C23588();

  v89 = *(v87 + 24);

  sub_1B8B51580();
  v91 = v90;

  *&v197 = v91;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v92 = sub_1B8C249C8();
  v119 = v93;
  v120 = v92;
  v118 = v94;
  v152 = v95;
  sub_1B8C24388();
  sub_1B8C24378();

  v96 = a1;
  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v97 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v56);
    v96 = v197;
  }

  swift_getKeyPath();
  *&v197 = v96;
  sub_1B8C23588();

  v98 = *(v96 + 24);

  swift_getKeyPath();
  *&v197 = v98;
  sub_1B8C23588();

  v99 = *(v98 + 24);

  v100 = floor(sqrt(v99 * 0.5));
  if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v100 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v100 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v101 = v100;
  if (v100 >= 99)
  {
    v101 = 99;
  }

  *&v197 = v101;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v102 = sub_1B8C249C8();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((v156 & 1) == 0)
  {
    sub_1B8C25488();
    v109 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v154 + 8))(v11, v153);
    a1 = v197;
  }

  swift_getKeyPath();
  *&v197 = a1;
  sub_1B8C23588();

  v110 = *(a1 + 24);

  sub_1B8B522B8();
  v112 = v111;

  *&v197 = v112;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v113 = sub_1B8C249C8();
  v193 = v141;
  v194 = v140;
  v196 = v139;
  v189 = v137;
  v190 = v136;
  v192 = v135;
  v185 = v133;
  v186 = v132;
  v188 = v131;
  v181 = v144;
  v182 = v130;
  v195 = v142 & 1;
  v191 = v138 & 1;
  *&v197 = &v193;
  *(&v197 + 1) = &v189;
  v187 = v134 & 1;
  v183 = v145 & 1;
  v184 = v150;
  *&v198 = &v185;
  *(&v198 + 1) = &v181;
  v177 = v129;
  v178 = v128;
  v179 = v127 & 1;
  v180 = v146;
  v173 = v126;
  v174 = v125;
  v175 = v124 & 1;
  v176 = v151;
  *&v199[0] = &v177;
  *(&v199[0] + 1) = &v173;
  v169 = v123;
  v170 = v122;
  v171 = v121 & 1;
  v172 = v147;
  v165 = v120;
  v166 = v119;
  v167 = v118 & 1;
  v168 = v152;
  *&v199[1] = &v169;
  *(&v199[1] + 1) = &v165;
  v161 = v102;
  v162 = v104;
  v163 = v106 & 1;
  v164 = v108;
  v157 = v113;
  v158 = v114;
  v159 = v115 & 1;
  v160 = v116;
  v200 = &v161;
  v201 = &v157;
  sub_1B8BADC6C(&v197, v143);
  sub_1B8B34060(v157, v158, v159);

  sub_1B8B34060(v161, v162, v163);

  sub_1B8B34060(v165, v166, v167);

  sub_1B8B34060(v169, v170, v171);

  sub_1B8B34060(v173, v174, v175);

  sub_1B8B34060(v177, v178, v179);

  sub_1B8B34060(v181, v182, v183);

  sub_1B8B34060(v185, v186, v187);

  sub_1B8B34060(v189, v190, v191);

  sub_1B8B34060(v193, v194, v195);
}

uint64_t sub_1B8BAFF60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B8C23DB8();
  v5 = v27;
  v6 = v27 * 0.5;
  v7 = v28;
  v8 = DWORD1(v28);
  v9 = *(&v28 + 1);
  v10 = v29;

  v11 = sub_1B8C24F48();
  v13 = v12;
  *v30 = v27 * 0.5;
  *(v30 + 1) = v27;
  v30[1] = v28;
  *v31 = v29;
  *&v31[16] = a1;
  *&v31[24] = 256;
  v25 = v28;
  *v26 = v29;
  *&v26[10] = *&v31[10];
  v24 = v30[0];
  v34 = *v26;
  v35 = *&v26[16];
  v32 = v30[0];
  v33 = v28;
  *&v36 = v11;
  *(&v36 + 1) = v12;
  memcpy(a2, v2, 0x1A0uLL);
  v14 = *&v26[16];
  a2[28] = *v26;
  a2[29] = v14;
  a2[30] = v36;
  v15 = v33;
  a2[26] = v32;
  a2[27] = v15;
  v37[0] = v24;
  v37[1] = v25;
  v37[2] = *v26;
  v37[3] = *&v26[16];
  v38 = v11;
  v39 = v13;
  sub_1B8B34450(v30, v17, &qword_1EBAA79B0, &qword_1B8C2D140);
  sub_1B8B34450(v2, v17, &qword_1EBAA79A8, &qword_1B8C2D088);
  sub_1B8B34450(&v32, v17, &qword_1EBAA79B8, &qword_1B8C2D148);
  sub_1B8B3433C(v37, &qword_1EBAA79B8, &qword_1B8C2D148);
  *v17 = v6;
  *&v17[1] = v5;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = a1;
  v23 = 256;
  return sub_1B8B3433C(v17, &qword_1EBAA79B0, &qword_1B8C2D140);
}

uint64_t sub_1B8BB0150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1B8BB0220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1B8BB02F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA79C0, &qword_1B8C2D150);
}

uint64_t sub_1B8BB03C8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B8B34450(a1, &v10 - v6, &qword_1EBAA79C0, &qword_1B8C2D150);
  v8 = *a2;
  return sub_1B8BC3F54(v7);
}

uint64_t sub_1B8BB0474@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C241E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B8BB04A0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1B8C241F8();
}

uint64_t sub_1B8BB04CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8BB0514()
{
  result = qword_1EBAA79C8;
  if (!qword_1EBAA79C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79D0, &qword_1B8C2D338);
    sub_1B8BB05A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79C8);
  }

  return result;
}

unint64_t sub_1B8BB05A0()
{
  result = qword_1EBAA79D8;
  if (!qword_1EBAA79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79E0, &qword_1B8C2D340);
    sub_1B8BB0658();
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79D8);
  }

  return result;
}

unint64_t sub_1B8BB0658()
{
  result = qword_1EBAA79E8;
  if (!qword_1EBAA79E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79F0, &qword_1B8C2D348);
    sub_1B8BB0710();
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79E8);
  }

  return result;
}

unint64_t sub_1B8BB0710()
{
  result = qword_1EBAA79F8;
  if (!qword_1EBAA79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A00, &qword_1B8C2D350);
    sub_1B8BB07C8();
    sub_1B8B34CFC(&qword_1EBAA7A40, &qword_1EBAA79B8, &qword_1B8C2D148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79F8);
  }

  return result;
}

unint64_t sub_1B8BB07C8()
{
  result = qword_1EBAA7A08;
  if (!qword_1EBAA7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79A8, &qword_1B8C2D088);
    sub_1B8BB0880();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A08);
  }

  return result;
}

unint64_t sub_1B8BB0880()
{
  result = qword_1EBAA7A10;
  if (!qword_1EBAA7A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A18, &qword_1B8C2D358);
    sub_1B8BB0938();
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A10);
  }

  return result;
}

unint64_t sub_1B8BB0938()
{
  result = qword_1EBAA7A20;
  if (!qword_1EBAA7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A28, &qword_1B8C2D360);
    sub_1B8B34CFC(&qword_1EBAA7A30, &qword_1EBAA7A38, &qword_1B8C2D368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A20);
  }

  return result;
}

uint64_t sub_1B8BB09F0()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7A60);
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  return sub_1B8C23C28();
}

void sub_1B8BB0A6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1B8BB0ACC()
{
  v1 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1B8BB0B68()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8BB0BC8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B8B8BBFC;
}

uint64_t sub_1B8BB0C60()
{
  v1 = v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1B8BB0CB0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8BB0D1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1B8BB0DBC;
}

void sub_1B8BB0DBC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1B8BB0E44()
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController)) != 0)
  {
    v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection;
    if (!*&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection])
    {
      v4 = qword_1EBAA5918;
      v5 = v2;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_1B8C23C38();
      __swift_project_value_buffer(v6, qword_1EBAA7A60);
      v7 = v5;
      v8 = sub_1B8C23C18();
      v9 = sub_1B8C25498();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v10 = 136446210;
        v11 = v7;
        v12 = [v11 description];
        v13 = v3;
        v14 = sub_1B8C25128();
        v16 = v15;

        v17 = v14;
        v3 = v13;
        v18 = sub_1B8B5DD48(v17, v16, &aBlock);

        *(v10 + 4) = v18;
        _os_log_impl(&dword_1B8B22000, v8, v9, "Initializing XPC Connection for host view controller: %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1B8CCB0E0](v40, -1, -1);
        MEMORY[0x1B8CCB0E0](v10, -1, -1);
      }

      v0 = v41;
      aBlock = 0;
      v19 = [v7 makeXPCConnectionWithError:&aBlock];
      v20 = aBlock;
      if (v19)
      {
        v21 = sub_1B8B88E34();
        [v19 setRemoteObjectInterface_];

        [v19 setExportedObject_];
        v22 = sub_1B8B89014();
        [v19 setExportedInterface_];

        v23 = swift_allocObject();
        *(v23 + 16) = v41;
        v46 = sub_1B8BB7454;
        v47 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v43 = 1107296256;
        v44 = sub_1B8B8B9F4;
        v45 = &block_descriptor_91;
        v24 = _Block_copy(&aBlock);
        v25 = v41;

        [v19 setInterruptionHandler_];
        _Block_release(v24);
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v46 = sub_1B8BB7494;
        v47 = v26;
        aBlock = MEMORY[0x1E69E9820];
        v43 = 1107296256;
        v44 = sub_1B8B8B9F4;
        v45 = &block_descriptor_97;
        v27 = _Block_copy(&aBlock);
        v28 = v25;

        [v19 setInvalidationHandler_];
        _Block_release(v27);
        v29 = *&v41[v3];
        *&v41[v3] = v19;
        v30 = v19;

        [v30 resume];
      }

      else
      {
        v32 = v20;
        v33 = sub_1B8C23368();

        swift_willThrow();
        v34 = sub_1B8C23C18();
        v35 = sub_1B8C25478();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1B8B22000, v34, v35, "Failed to create XPC connection", v36, 2u);
          MEMORY[0x1B8CCB0E0](v36, -1, -1);
        }

        v7 = v34;
        v0 = v41;
      }
    }

    v31 = *&v0[v3];
    v37 = v31;
  }

  else
  {
    v31 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v31;
}

void sub_1B8BB1308()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
    *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1B8BB1798(0xD000000000000015, 0x80000001B8C35240);
  }
}

uint64_t sub_1B8BB13AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B8C25008();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAA7A60);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25498();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a2;
    v20 = a4;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1B8B22000, v16, v17, v19, v18, 2u);
    v22 = v21;
    a4 = v20;
    MEMORY[0x1B8CCB0E0](v22, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v23 = sub_1B8C25538();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = v27;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = a4;
  v25 = _Block_copy(aBlock);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v14, v10, v25);
  _Block_release(v25);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v28);
}

void sub_1B8BB16F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
    *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1B8BB1798(0xD000000000000015, 0x80000001B8C35220);
  }
}

void sub_1B8BB1798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 presentingViewController];
  v7 = v6;
  if (v6)
  {
  }

  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA7A60);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7 != 0;
    _os_log_impl(&dword_1B8B22000, v9, v10, "is presented %{BOOL}d", v11, 8u);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  if (v7)
  {

    v12 = _s8Feedback18FBKSubmissionErrorC16debugDescriptionACSS_tcfC_0(a1, a2);
    [v3 didFailSubmissionWithError_];
  }
}

void *sub_1B8BB192C()
{
  result = sub_1B8BB0E44();
  if (result)
  {
    v1 = result;
    aBlock[4] = sub_1B8BB1B20;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB1CC4;
    aBlock[3] = &block_descriptor_173;
    v2 = _Block_copy(aBlock);
    v3 = [v1 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1B8C256B8();
    swift_unknownObjectRelease();
    sub_1B8B5FDD4(aBlock, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7BC0, &qword_1B8C2D470);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      return v8;
    }

    else
    {
      if (qword_1EBAA5918 != -1)
      {
        swift_once();
      }

      v4 = sub_1B8C23C38();
      __swift_project_value_buffer(v4, qword_1EBAA7A60);
      v5 = sub_1B8C23C18();
      v6 = sub_1B8C25478();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1B8B22000, v5, v6, "XPC proxy object is not of the expected object type.", v7, 2u);
        MEMORY[0x1B8CCB0E0](v7, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B8BB1B20(void *a1)
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7A60);
  v3 = a1;
  oslog = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v8 = sub_1B8C25178();
    v10 = sub_1B8B5DD48(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B8B22000, oslog, v4, "XPC proxy object failed with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B8BB1CC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *FBKFeedbackDraftViewController.init(feedbackForm:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage] = 1;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FBKFeedbackDraftViewController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  objc_allocWithZone(type metadata accessor for FBK_EXQueryObserverDelegateWrapper());
  v5 = v4;
  v6 = sub_1B8BB6354();
  v7 = *&v5[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  *&v5[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate] = v6;

  sub_1B8BB1EF4();
  return v5;
}

void sub_1B8BB1EF4()
{
  [v0 setModalInPresentation_];
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B8C2D380;
    v3 = objc_opt_self();
    v4 = *MEMORY[0x1E699C108];
    v5 = v1;
    *(v2 + 32) = [v3 extensionPointIdentifierQuery_];
    v6 = objc_allocWithZone(MEMORY[0x1E6966D00]);
    sub_1B8B46130(0, &unk_1EBAA7BD0, 0x1E6966CE0);
    v7 = v5;
    v8 = sub_1B8C252B8();

    v9 = [v6 initWithQueries:v8 delegate:v7];

    v10 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver];
    *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver] = v9;
    v14 = v9;

    if (!v14)
    {
      __break(1u);
      return;
    }

    [v14 resume];
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAA7A60);
    v14 = sub_1B8C23C18();
    v12 = sub_1B8C25488();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8B22000, v14, v12, "query observer is not initialized", v13, 2u);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }
  }
}

id FBKFeedbackDraftViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController);
    *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController) = 0;
  }

  v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection;
  v4 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
  if (v4)
  {
    [v4 invalidate];
    v5 = *&v0[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v0[v3] = 0;

  v7.receiver = v0;
  v7.super_class = type metadata accessor for FBKFeedbackDraftViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1B8BB2274()
{
  v1 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1B8BB22B8(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  if (*(v1 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
  {
    result = sub_1B8BB192C();
    if (result)
    {
      [result setShowsCompletionPage_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*sub_1B8BB233C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1B8BB23C4;
}

void sub_1B8BB23C4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
    {
      v4 = sub_1B8BB192C();
      if (v4)
      {
        [v4 setShowsCompletionPage_];
        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

void sub_1B8BB2444()
{
  if (!*(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA7A60);
    oslog = sub_1B8C23C18();
    v2 = sub_1B8C25478();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v2, "No _xpcConnection. Cannot dismiss keyboard", v3, 2u);
      MEMORY[0x1B8CCB0E0](v3, -1, -1);
    }
  }
}

id FBKFeedbackDraftViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B8C250F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didRequestViewFullScreen()()
{
  v1 = v0;
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C25008();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v12 = sub_1B8C23C38();
  __swift_project_value_buffer(v12, qword_1EBAA7A60);
  v13 = sub_1B8C23C18();
  v14 = sub_1B8C25468();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v8;
    aBlock[0] = v16;
    v17 = v3;
    v18 = v1;
    v19 = v7;
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C34EC0, aBlock);
    _os_log_impl(&dword_1B8B22000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    v7 = v19;
    v1 = v18;
    v3 = v17;
    v8 = v27;
    MEMORY[0x1B8CCB0E0](v21, -1, -1);
    MEMORY[0x1B8CCB0E0](v15, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_1B8BB6424;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v6, v24);
  _Block_release(v24);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_1B8BB29E0(void *a1)
{
  v1 = [a1 sheetPresentationController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1B8BB75C0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1B8BB75DC;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BE5460;
    aBlock[3] = &block_descriptor_170;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 animateChanges_];

    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EBAA5918 != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = sub_1B8C23C38();
  __swift_project_value_buffer(v7, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v8 = sub_1B8C25478();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v8, "FBKFeedbackDraftViewController has no Sheet Presentation Controller. Cannot go full screen", v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }
}

void sub_1B8BB2C7C(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1B8BB75B8;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1B8B8B9F4;
  v4[3] = &block_descriptor_161;
  v3 = _Block_copy(v4);

  [a1 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

void sub_1B8BB2D54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 feedbackDraftViewControllerDidCancel_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.feedbackDidComplete(responseType:responseID:completedForm:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a2;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B8C25008();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAA7A60);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v11;
    v22 = v8;
    v23 = a4;
    v24 = a3;
    v25 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1B8B5DD48(0xD00000000000003BLL, 0x80000001B8C34EE0, aBlock);
    _os_log_impl(&dword_1B8B22000, v16, v17, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    a3 = v24;
    a4 = v23;
    v8 = v22;
    v11 = v21;
    v7 = v37;
    MEMORY[0x1B8CCB0E0](v26, -1, -1);
    v27 = v19;
    a1 = v18;
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v28 = sub_1B8C25538();
  v29 = swift_allocObject();
  v30 = v40;
  v29[2] = v40;
  v29[3] = a4;
  v29[4] = v38;
  v29[5] = a3;
  v29[6] = a1;
  aBlock[4] = sub_1B8BB6B4C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_6;
  v31 = _Block_copy(aBlock);
  v32 = v30;
  v33 = a4;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v34 = v39;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v14, v34, v31);
  _Block_release(v31);

  (*(v8 + 8))(v34, v7);
  return (*(v11 + 8))(v14, v41);
}

void sub_1B8BB324C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v11 = *&a1[v10];
  *&a1[v10] = a2;
  v12 = a2;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  aBlock[4] = sub_1B8BB75A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_151;
  v15 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

void sub_1B8BB33A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = sub_1B8C250F8();
        [v8 feedbackDraftViewController:v6 didCompleteWithFeedbackID:v9];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector_])
      {
        v12 = sub_1B8C250F8();
        [v11 feedbackDraftViewController:v6 didCompleteWithResponseType:a4 responseID:v12];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.didFailSubmission(error:)(void *a1)
{
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B8C25008();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAA7A60);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25468();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v2;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1B8B5DD48(0xD000000000000019, 0x80000001B8C34F20, aBlock);
    _os_log_impl(&dword_1B8B22000, v12, v13, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v2 = v25;
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v17 = sub_1B8C25538();
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = v27;
  *(v18 + 24) = a1;
  aBlock[4] = sub_1B8BB6B5C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  v22 = a1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v10, v6, v20);
  _Block_release(v20);

  (*(v3 + 8))(v6, v2);
  return (*(v7 + 8))(v10, v26);
}

void sub_1B8BB394C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 feedbackDraftViewController:v4 didFailToSubmitFeedback:a2];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.feedbackDidFailToAttachURL(_:nsError:)(uint64_t a1, void *a2)
{
  v36 = a2;
  v3 = sub_1B8C24FD8();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C25008();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C23498();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAA7A60);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1B8B5DD48(0xD000000000000026, 0x80000001B8C34F40, aBlock);
    _os_log_impl(&dword_1B8B22000, v16, v17, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B8CCB0E0](v20, -1, -1);
    v21 = v19;
    a1 = v34;
    MEMORY[0x1B8CCB0E0](v21, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v23 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 16) = v35;
  (*(v12 + 32))(v25 + v23, v14, v11);
  v27 = v36;
  *(v25 + v24) = v36;
  aBlock[4] = sub_1B8BB6B9C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_18;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v30 = v27;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v31 = v40;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v10, v6, v28);
  _Block_release(v28);

  (*(v39 + 8))(v6, v31);
  return (*(v37 + 8))(v10, v38);
}

void sub_1B8BB3F04(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (([Strong respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v7 = [a3 domain];
    v8 = sub_1B8C25128();
    v10 = v9;

    if (v8 == 0xD000000000000025 && 0x80000001B8C34450 == v10)
    {
    }

    else
    {
      v12 = sub_1B8C25A08();

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = sub_1B8BC08A8([a3 code]);
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      goto LABEL_14;
    }

LABEL_12:
    v15 = 6;
LABEL_14:
    v16 = sub_1B8C233E8();
    [v6 feedbackDraftViewController:a1 didFailToAttachURL:v16 error:v15];
    swift_unknownObjectRelease();
  }
}