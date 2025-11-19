uint64_t NHOLogForCategory(uint64_t a1)
{
  if (NHOLogForCategory_onceToken[0] != -1)
  {
    NHOLogForCategory_cold_1();
  }

  v2 = NHOLogForCategory_Logging;

  return [v2 logForCategory:a1];
}

uint64_t __NHOLogForCategory_block_invoke()
{
  NHOLogForCategory_Logging = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t NHOSmartStackLastAction.homeID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25B161264();
  return v1;
}

uint64_t NHOSmartStackLastAction.homeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NHOSmartStackLastAction.actionID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25B161264();
  return v1;
}

uint64_t NHOSmartStackLastAction.actionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NHOSmartStackLastAction.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NHOSmartStackLastAction() + 28);
  v4 = sub_25B1614D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NHOSmartStackLastAction()
{
  result = qword_27FA39BC0;
  if (!qword_27FA39BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NHOSmartStackLastAction.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NHOSmartStackLastAction() + 28);
  v4 = sub_25B1614D4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

Swift::Void __swiftcall NHOSmartStackLastAction.save()()
{
  v1 = v0;
  v2 = sub_25B1614A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = v0[1];
  sub_25B161264();
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v9;
  sub_25B108EF8(v7, v8, 0x4449656D6F68, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v34;
  v12 = *(v1 + 16);
  v13 = 0xE900000000000079;
  v14 = 0x726F737365636361;
  v15 = 0x746867694C6C6C61;
  v16 = 0xEB00000000737265;
  v17 = 0x6B616570536C6C61;
  if (v12 != 3)
  {
    v17 = 0x736B636F4C6C6C61;
    v16 = 0xE800000000000000;
  }

  if (v12 == 2)
  {
    v16 = 0xE900000000000073;
  }

  else
  {
    v15 = v17;
  }

  if (*(v1 + 16))
  {
    v14 = 0x65536E6F69746361;
    v13 = 0xE900000000000074;
  }

  if (*(v1 + 16) <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v15;
  }

  if (*(v1 + 16) <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v11;
  sub_25B108EF8(v18, v19, 0x6E6F69746361, 0xE600000000000000, v20);
  v21 = v34;
  v22 = v1[3];
  v23 = v1[4];
  sub_25B161264();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v21;
  sub_25B108EF8(v22, v23, 0x44496E6F69746361, 0xE800000000000000, v24);
  v25 = v34;
  LODWORD(v21) = *(type metadata accessor for NHOSmartStackLastAction() + 28);
  sub_25B107690(v6);
  v26 = sub_25B161434();
  v28 = v27;
  (*(v3 + 8))(v6, v2);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v25;
  sub_25B108EF8(v26, v28, 1702125924, 0xE400000000000000, v29);
  v30 = sub_25B109658();
  v31 = sub_25B161A74();

  v32 = sub_25B161B24();
  [v30 setValue:v31 forKey:v32];
}

uint64_t sub_25B107690@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE8, &qword_25B162F08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v28 - v2;
  v32 = sub_25B1615A4();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25B161494();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B161474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25B161454();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_25B161464() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v22 + 104))(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v23 = v15;
  v24 = v32;
  (*(v16 + 104))(v19, *MEMORY[0x277CC9458], v23);
  v25 = v9;
  v26 = v33;
  (*(v11 + 104))(v14, *MEMORY[0x277CC9468], v10);
  (*(v6 + 104))(v25, *MEMORY[0x277CC9480], v31);
  sub_25B161594();
  result = (*(v3 + 48))(v26, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v29, v26, v24);
    return sub_25B161484();
  }

  return result;
}

uint64_t sub_25B108480(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_25B161264();
  v6 = sub_25B10854C(v11, 0, 0, 1, a1, a2);
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
    sub_25B109C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25B10854C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25B108658(a5, a6);
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
    result = sub_25B161ED4();
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

uint64_t sub_25B108658(uint64_t a1, unint64_t a2)
{
  v4 = sub_25B1086A4(a1, a2);
  sub_25B1087D4(&unk_286C5FAE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25B1086A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25B1088C0(v5, 0);
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

  result = sub_25B161ED4();
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
        v10 = sub_25B161BE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B1088C0(v10, 0);
        result = sub_25B161EA4();
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

uint64_t sub_25B1087D4(uint64_t result)
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

  result = sub_25B108934(result, v12, 1, v3);
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

void *sub_25B1088C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE0, "\bQ");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B108934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE0, "\bQ");
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

unint64_t sub_25B108A28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25B162024();
  sub_25B161BA4();
  v6 = sub_25B162044();

  return sub_25B109080(a1, a2, v6);
}

unint64_t sub_25B108AA0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_25B162024();
  sub_25B161BA4();

  v4 = sub_25B162044();

  return sub_25B109138(a1, v4);
}

unint64_t sub_25B108BB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B161514();
  sub_25B109BC4(&qword_27FA39BD0);
  v5 = sub_25B161A94();

  return sub_25B109334(a1, v5);
}

uint64_t sub_25B108C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BF0, &unk_25B162F10);
  v40 = a2;
  result = sub_25B161F44();
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
        sub_25B161264();
        sub_25B161264();
      }

      v29 = *(v8 + 40);
      sub_25B162024();
      sub_25B161BA4();
      result = sub_25B162044();
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

uint64_t sub_25B108EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25B108A28(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25B108C38(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25B108A28(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25B161FD4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25B1094E0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_25B161264();
}

unint64_t sub_25B109080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25B161FA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25B109138(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE800000000000000;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x65536E6F69746361;
        }

        else
        {
          v8 = 0x726F737365636361;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE900000000000074;
        }

        else
        {
          v9 = 0xE900000000000079;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x746867694C6C6C61;
        v9 = 0xE900000000000073;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6B616570536C6C61;
        }

        else
        {
          v8 = 0x736B636F4C6C6C61;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000737265;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      v10 = 0xE900000000000079;
      if (v5 == 3)
      {
        v11 = 0x6B616570536C6C61;
      }

      else
      {
        v11 = 0x736B636F4C6C6C61;
      }

      if (v5 == 3)
      {
        v6 = 0xEB00000000737265;
      }

      if (v5 == 2)
      {
        v11 = 0x746867694C6C6C61;
        v6 = 0xE900000000000073;
      }

      if (v5)
      {
        v12 = 0x65536E6F69746361;
      }

      else
      {
        v12 = 0x726F737365636361;
      }

      if (v5)
      {
        v10 = 0xE900000000000074;
      }

      v13 = v5 <= 1 ? v12 : v11;
      v14 = v5 <= 1 ? v10 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_25B161FA4();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE800000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25B109334(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25B161514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_25B109BC4(&qword_27FA39BD8);
      v16 = sub_25B161AA4();
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

void *sub_25B1094E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BF0, &unk_25B162F10);
  v2 = *v0;
  v3 = sub_25B161F34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_25B161264();
        result = sub_25B161264();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25B109658()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_25B161B34();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000025B166440 == v4)
  {

    goto LABEL_10;
  }

  v6 = sub_25B161FA4();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_25B161B24();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      return v9;
    }
  }

LABEL_10:
  v11 = [objc_opt_self() standardUserDefaults];

  return v11;
}

uint64_t sub_25B1097CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25B109900(uint64_t a1)
{
  Action = type metadata accessor for NHOSmartStackLastAction();
  (*(*(Action - 8) + 8))(a1, Action);
  return a1;
}

uint64_t sub_25B10995C(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for NHOSmartStackLastAction();
  (*(*(Action - 8) + 32))(a2, a1, Action);
  return a2;
}

uint64_t sub_25B1099D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25B1614D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B109A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B1614D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B109B38()
{
  result = sub_25B1614D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B109BC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25B161514();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B109C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t NHOWidgetFamilyUtilties.NHOWidgetFamily.hashValue.getter()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

uint64_t sub_25B109D04()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

uint64_t sub_25B109D78()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

void *sub_25B109DBC(uint64_t a1, unint64_t a2)
{
  if (a1 == 0x656D6F486F6E614ELL && a2 == 0xEE00746567646957 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB10;
  }

  if (a1 == 0xD000000000000031 && 0x800000025B166460 == a2 || (sub_25B161FA4() & 1) != 0)
  {

    return sub_25B10A140(&unk_286C5FB38);
  }

  else if (a1 == 0xD000000000000029 && 0x800000025B1664A0 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB60;
  }

  else if (a1 == 0xD000000000000029 && 0x800000025B1664D0 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB88;
  }

  else if (a1 == 0xD00000000000002CLL && 0x800000025B166500 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FBB0;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025B166530 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FBD8;
  }

  else if (a1 == 0xD000000000000027 && 0x800000025B166560 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FC00;
  }

  else
  {
    if (qword_27FA39AD0 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA39FF8);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25B108480(a1, a2, &v10);
      _os_log_impl(&dword_25B105000, v6, v7, "Unknown and unhandled widget kind: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_25B10A140(uint64_t a1)
{
  v2 = sub_25B161584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentLocale];
  sub_25B161534();

  v8 = sub_25B161524();
  v9 = [v8 countryCode];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = sub_25B161B34();
  v12 = v11;

  if (v10 == 21333 && v12 == 0xE200000000000000)
  {
  }

  else
  {
    v14 = sub_25B161FA4();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      if (qword_27FA39AD0 != -1)
      {
        swift_once();
      }

      v15 = sub_25B161A14();
      __swift_project_value_buffer(v15, qword_27FA39FF8);
      v16 = sub_25B1619F4();
      v17 = sub_25B161D74();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25B105000, v16, v17, "widget Locale requirements not met", v18, 2u);
        MEMORY[0x25F862BF0](v18, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_27FA39AD0 != -1)
  {
    swift_once();
  }

  v19 = sub_25B161A14();
  __swift_project_value_buffer(v19, qword_27FA39FF8);
  v20 = sub_25B1619F4();
  v21 = sub_25B161D74();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25B105000, v20, v21, "widget Locale requirements met", v22, 2u);
    MEMORY[0x25F862BF0](v22, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_25B161264();
  return a1;
}

unint64_t sub_25B10A45C()
{
  result = qword_27FA39BF8;
  if (!qword_27FA39BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOWidgetFamilyUtilties.NHOWidgetFamily(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NHOWidgetFamilyUtilties.NHOWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B10A670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *&xmmword_27FA39C00 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(&xmmword_27FA39C00 + 1) = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  qword_27FA39C10 = result;
  return result;
}

uint64_t NHOAccessoryQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t static NHOAccessoryEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA39C00 + 1);
  v3 = qword_27FA39C10;
  *a1 = xmmword_27FA39C00;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOAccessoryEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA39C00 = v3;
  qword_27FA39C10 = v1;
}

uint64_t (*static NHOAccessoryEntity.defaultQuery.modify())()
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B10AA8C@<X0>(void *a1@<X8>)
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA39C00 + 1);
  v3 = qword_27FA39C10;
  *a1 = xmmword_27FA39C00;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B10AB2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = qword_27FA39A70;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA39C00 = v1;
  *(&xmmword_27FA39C00 + 1) = v2;
  qword_27FA39C10 = v3;
}

uint64_t sub_25B10ABF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v18[0] = v18 - v2;
  v3 = sub_25B161584();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25B1613F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B161B14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25B161414();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_25B161354();
  __swift_allocate_value_buffer(v15, qword_27FA39C18);
  __swift_project_value_buffer(v15, qword_27FA39C18);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_27FA3E770);
  (*(v6 + 16))(v9, v16, v5);
  sub_25B161574();
  sub_25B161424();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_25B161344();
}

uint64_t static NHOAccessoryEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOAccessoryEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOAccessoryEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161354();
  __swift_project_value_buffer(v0, qword_27FA39C18);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B10B164@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B10B224(uint64_t a1)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t NHOAccessoryEntity.id.getter()
{
  v1 = *v0;
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B10B320(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOAccessoryEntity.name.getter()
{
  v1 = *(v0 + 8);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B10B4C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOAccessoryEntity.room.getter()
{
  v1 = *(v0 + 16);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B10B668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.room.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOAccessoryEntity.icon.getter()
{
  v1 = *(v0 + 24);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B10B80C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOAccessoryEntity.serviceType.getter()
{
  v1 = *(v0 + 32);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B10B9B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.serviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

void sub_25B10BB00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t NHOAccessoryEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_25B161414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_25B161B04();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(v0 + 8);
  v15 = *(v0 + 24);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v10 + 56))(v8, 1, 1, v9);
  sub_25B1610F4();
  sub_25B161214();
  v16 = sub_25B161224();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  return sub_25B161234();
}

uint64_t sub_25B10BE00@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_25B1610F4();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_25B10BE3C(uint64_t a1)
{
  v2 = sub_25B11ADCC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25B10BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25B11B3EC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25B10BF50(uint64_t a1)
{
  v2 = sub_25B11AC24();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOAccessoryQuery.defaultResult()(uint64_t a1)
{
  v2[20] = a1;
  v3 = *(*(sub_25B161414() - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[21] = v4;
  v2[22] = v5;

  return MEMORY[0x2822009F8](sub_25B10C030, 0, 0);
}

uint64_t sub_25B10C030()
{
  v1 = v0[22];
  if (!sub_25B1612E4())
  {
    goto LABEL_10;
  }

  v2 = v0[22];
  swift_getKeyPath();
  sub_25B114F98();
  sub_25B1611B4();

  v4 = v0[2];
  v3 = v0[3];
  if (!sub_25B1612E4())
  {
LABEL_9:

LABEL_10:
    v13 = v0[20];
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    goto LABEL_11;
  }

  v5 = v0[22];
  swift_getKeyPath();
  sub_25B1611B4();

  v6 = v0[4];
  v7 = v0[5];
  if (!sub_25B1612E4())
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = v0[22];
  swift_getKeyPath();
  sub_25B1611B4();

  v10 = v0[6];
  v9 = v0[7];
  if (!sub_25B1612E4())
  {
LABEL_7:

    goto LABEL_8;
  }

  v25 = v10;
  swift_getKeyPath();
  sub_25B1611B4();

  v11 = v0[8];
  v12 = v0[9];
  if (sub_25B161BF4())
  {

    goto LABEL_7;
  }

  v24 = v9;
  v17 = v0[20];
  v18 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v23 = sub_25B161124();
  sub_25B1613E4();
  v21 = sub_25B161124();
  sub_25B1613E4();
  v22 = sub_25B161124();
  sub_25B1613E4();
  v19 = sub_25B161124();
  sub_25B1613E4();
  v20 = sub_25B161124();
  v0[10] = v4;
  v0[11] = v3;
  sub_25B161104();
  v0[12] = v6;
  v0[13] = v7;
  sub_25B161104();
  v0[14] = v25;
  v0[15] = v24;
  sub_25B161104();
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  sub_25B161104();
  v0[18] = v11;
  v0[19] = v12;
  sub_25B161104();
  *v17 = v23;
  v17[1] = v21;
  v17[2] = v22;
  v17[3] = v19;
  v17[4] = v20;
LABEL_11:
  v14 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_25B10C3DC@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_25B161274();
  sub_25B161144();

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t sub_25B10C43C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  v8 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  v3 = sub_25B161804();
  *(v2 + 160) = v3;
  v4 = *(v3 - 8);
  *(v2 + 168) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = sub_25B161514();
  *(v2 + 192) = v6;
  v7 = *(v6 - 8);
  *(v2 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v9 = sub_25B161914();
  *(v2 + 224) = v9;
  v10 = *(v9 - 8);
  *(v2 + 232) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v12 = sub_25B161944();
  *(v2 + 256) = v12;
  v13 = *(v12 - 8);
  *(v2 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0) - 8) + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 288) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  v18 = sub_25B161724();
  *(v2 + 304) = v18;
  v19 = *(v18 - 8);
  *(v2 + 312) = v19;
  v20 = *(v19 + 64) + 15;
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = *v1;
  *(v2 + 344) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B10C76C, 0, 0);
}

uint64_t sub_25B10C76C()
{
  v55 = v0;
  v1 = *(v0 + 328);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    sub_25B1610F4();

    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = qword_27FA39B00;
    sub_25B161264();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25B161A14();
    __swift_project_value_buffer(v7, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v54);
      *(v10 + 12) = 2080;
      v12 = sub_25B108480(v4, v5, &v54);

      *(v10 + 14) = v12;
      v13 = "%s: [NHOAccessoryQuery] Using homeID %s from homeAccessoryIntent.";
LABEL_11:
      _os_log_impl(&dword_25B105000, v8, v9, v13, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v11, -1, -1);
      MEMORY[0x25F862BF0](v10, -1, -1);
LABEL_13:

      v20 = 0;
LABEL_14:
      *(v0 + 352) = v4;
      *(v0 + 360) = v5;
      *(v0 + 409) = v20;
      *(v0 + 368) = sub_25B161624();
      sub_25B1616C4();
      *(v0 + 376) = sub_25B1616B4();
      sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960]);
      v22 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B10D12C, v22, v21);
    }

    goto LABEL_12;
  }

  v14 = *(v0 + 344);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    sub_25B1610F4();

    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v17 = qword_27FA39B00;
    sub_25B161264();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v54);
      *(v10 + 12) = 2080;
      v19 = sub_25B108480(v4, v5, &v54);

      *(v10 + 14) = v19;
      v13 = "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlToggleIntent.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v23 = *(v0 + 336);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    sub_25B1610F4();

    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B161264();
    sub_25B1611B4();

    v20 = *(v0 + 408);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v26 = sub_25B161A14();
    __swift_project_value_buffer(v26, qword_27FA3A088);
    sub_25B161264();
    v27 = sub_25B1619F4();
    v28 = sub_25B161D94();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v54);
      *(v29 + 12) = 2080;
      v31 = sub_25B108480(v4, v5, &v54);

      *(v29 + 14) = v31;
      _os_log_impl(&dword_25B105000, v27, v28, "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlSelectIntent.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v30, -1, -1);
      MEMORY[0x25F862BF0](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v32 = sub_25B161A14();
  __swift_project_value_buffer(v32, qword_27FA3A088);
  v33 = sub_25B1619F4();
  v34 = sub_25B161D84();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v54);
    _os_log_impl(&dword_25B105000, v33, v34, "%s: [NHOAccessoryQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x25F862BF0](v36, -1, -1);
    MEMORY[0x25F862BF0](v35, -1, -1);
  }

  v37 = sub_25B1619F4();
  v38 = sub_25B161D94();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v54);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v54);
    _os_log_impl(&dword_25B105000, v37, v38, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v40, -1, -1);
    MEMORY[0x25F862BF0](v39, -1, -1);
  }

  v41 = *(v0 + 320);
  v42 = *(v0 + 296);
  v44 = *(v0 + 272);
  v43 = *(v0 + 280);
  v46 = *(v0 + 240);
  v45 = *(v0 + 248);
  v48 = *(v0 + 208);
  v47 = *(v0 + 216);
  v50 = *(v0 + 176);
  v49 = *(v0 + 184);

  v51 = *(v0 + 8);
  v52 = MEMORY[0x277D84F90];

  return v51(v52);
}

uint64_t sub_25B10D12C()
{
  v2 = v0[46];
  v1 = v0[47];

  v0[48] = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B10D19C, 0, 0);
}

uint64_t sub_25B10D19C()
{
  v1 = v0[44];
  v2 = v0[45];
  v21 = v0[37];
  v22 = v0[36];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  sub_25B1614E4();

  v0[2] = sub_25B1616D4();
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[18] = v12;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0);
  sub_25B161E34();
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x277D15208] + 4);
  v16 = swift_task_alloc();
  v0[49] = v16;
  *v16 = v0;
  v16[1] = sub_25B10D3CC;
  v17 = v0[48];
  v18 = v0[40];
  v19 = v0[37];

  return MEMORY[0x28216E6A8](v18, v19, v13, v14);
}

uint64_t sub_25B10D3CC()
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_25B10DE70;
  }

  else
  {
    v4 = sub_25B10D4FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B10D4FC()
{
  v113 = v0;
  v1 = *(v0 + 320);
  v2 = sub_25B161714();
  v107 = sub_25B115E2C(v2);
  v3 = sub_25B161704();
  v106 = sub_25B116040(v3);
  if (qword_27FA39B00 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v4 = *(v0 + 152);
    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 152);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v110 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v110);
      *(v9 + 12) = 2080;
      v11 = MEMORY[0x25F8621C0](v8, MEMORY[0x277D837D0]);
      v13 = sub_25B108480(v11, v12, &v110);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_25B105000, v6, v7, "%s: [NHOAccessoryQuery] Searching for accessories matching identifiers %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v10, -1, -1);
      MEMORY[0x25F862BF0](v9, -1, -1);
    }

    v14 = *(v0 + 152);
    v100 = *(v14 + 16);
    if (!v100)
    {
      break;
    }

    v15 = 0;
    v99 = v14 + 32;
    v108 = (*(v0 + 200) + 8);
    v105 = *(v0 + 232);
    v103 = *(v0 + 168);
    v104 = (v105 + 8);
    v102 = (v103 + 8);
    v97 = MEMORY[0x277D84F90];
LABEL_7:
    v16 = (v99 + 16 * v15);
    v17 = v16[1];
    v109 = *v16;
    v101 = v15 + 1;
    v18 = -1 << *(v107 + 32);
    if (-v18 < 64)
    {
      v19 = ~(-1 << -v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v107 + 56);
    v21 = (63 - v18) >> 6;
    sub_25B161264();
    sub_25B161264();
    v22 = 0;
    while (1)
    {
      v30 = v22;
      if (!v20)
      {
        break;
      }

LABEL_24:
      v32 = *(v0 + 240);
      v31 = *(v0 + 248);
      v33 = *(v0 + 216);
      v34 = *(v0 + 224);
      v35 = *(v0 + 192);
      v36 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v105 + 16))(v31, *(v107 + 48) + *(v105 + 72) * (v36 | (v22 << 6)), v34);
      (*(v105 + 32))(v32, v31, v34);
      sub_25B1618D4();
      v37 = sub_25B1614F4();
      v39 = v38;
      (*v108)(v33, v35);
      if (v37 == v109 && v39 == v17)
      {
      }

      else
      {
        v41 = sub_25B161FA4();

        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v23 = *(v0 + 409);
      v24 = *(v0 + 240);
      v25 = sub_25B1618F4();
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      sub_25B10E260(v24, v27, v28, v23, &v110);

      v29 = v110;
      if (v110)
      {
        v93 = v111;
        v95 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_25B1150AC(0, *(v97 + 2) + 1, 1, v97);
        }

        v43 = *(v97 + 2);
        v42 = *(v97 + 3);
        if (v43 >= v42 >> 1)
        {
          v97 = sub_25B1150AC((v42 > 1), v43 + 1, 1, v97);
        }

        (*v104)(*(v0 + 240), *(v0 + 224));
        *(v97 + 2) = v43 + 1;
        v44 = &v97[40 * v43];
        *(v44 + 4) = v29;
        *(v44 + 40) = v93;
        *(v44 + 56) = v95;
      }

      else
      {
LABEL_19:
        (*v104)(*(v0 + 240), *(v0 + 224));
      }
    }

    while (1)
    {
      v22 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      if (v22 >= v21)
      {
        break;
      }

      v20 = *(v107 + 56 + 8 * v22);
      ++v30;
      if (v20)
      {
        goto LABEL_24;
      }
    }

    v45 = -1 << *(v106 + 32);
    if (-v45 < 64)
    {
      v46 = ~(-1 << -v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v106 + 56);
    v48 = (63 - v45) >> 6;
    sub_25B161264();
    v49 = 0;
    while (1)
    {
      v57 = v49;
      if (!v47)
      {
        break;
      }

LABEL_52:
      v58 = *(v0 + 208);
      v59 = *(v0 + 184);
      v60 = *(v0 + 192);
      v61 = *(v0 + 176);
      v62 = *(v0 + 160);
      v63 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      (*(v103 + 16))(v59, *(v106 + 48) + *(v103 + 72) * (v63 | (v49 << 6)), v62);
      (*(v103 + 32))(v61, v59, v62);
      sub_25B1617C4();
      v64 = sub_25B1614F4();
      v66 = v65;
      (*v108)(v58, v60);
      if (v64 == v109 && v66 == v17)
      {
      }

      else
      {
        v68 = sub_25B161FA4();

        if ((v68 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v50 = *(v0 + 409);
      v51 = *(v0 + 176);
      v52 = sub_25B1617E4();
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      sub_25B10EF78(v51, v54, v55, v50, &v110);

      v56 = v110;
      if (!v110)
      {
LABEL_47:
        (*v102)(*(v0 + 176), *(v0 + 160));
        continue;
      }

      v94 = v111;
      v96 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_25B1150AC(0, *(v97 + 2) + 1, 1, v97);
      }

      v70 = *(v97 + 2);
      v69 = *(v97 + 3);
      if (v70 >= v69 >> 1)
      {
        v97 = sub_25B1150AC((v69 > 1), v70 + 1, 1, v97);
      }

      (*v102)(*(v0 + 176), *(v0 + 160));
      *(v97 + 2) = v70 + 1;
      v71 = &v97[40 * v70];
      *(v71 + 4) = v56;
      *(v71 + 40) = v94;
      *(v71 + 56) = v96;
    }

    while (1)
    {
      v49 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v49 >= v48)
      {

        v15 = v101;
        if (v101 != v100)
        {
          goto LABEL_7;
        }

        v72 = v97;
        goto LABEL_65;
      }

      v47 = *(v106 + 56 + 8 * v49);
      ++v57;
      if (v47)
      {
        goto LABEL_52;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

  v72 = MEMORY[0x277D84F90];
LABEL_65:

  sub_25B161264();
  v73 = sub_25B1619F4();
  v74 = sub_25B161D94();
  v75 = os_log_type_enabled(v73, v74);
  v77 = *(v0 + 312);
  v76 = *(v0 + 320);
  v78 = *(v0 + 304);
  v98 = v72;
  if (v75)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v110 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v110);
    *(v79 + 12) = 2048;
    *(v79 + 14) = *(v72 + 2);

    _os_log_impl(&dword_25B105000, v73, v74, "%s: [NHOAccessoryQuery] Returning %ld accessories.", v79, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x25F862BF0](v80, -1, -1);
    MEMORY[0x25F862BF0](v79, -1, -1);

    (*(v77 + 8))(v76, v78);
  }

  else
  {

    (*(v77 + 8))(v76, v78);
  }

  v81 = *(v0 + 320);
  v82 = *(v0 + 296);
  v84 = *(v0 + 272);
  v83 = *(v0 + 280);
  v86 = *(v0 + 240);
  v85 = *(v0 + 248);
  v88 = *(v0 + 208);
  v87 = *(v0 + 216);
  v90 = *(v0 + 176);
  v89 = *(v0 + 184);

  v91 = *(v0 + 8);

  return v91(v98);
}

uint64_t sub_25B10DE70()
{
  v1 = v0[40];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];
  v12 = v0[50];

  return v11();
}

double sub_25B10DF50@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B10DFA8(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOAccessoryIntent__home);
  v4 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161154();
}

double sub_25B10E008@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B10E044(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

double sub_25B10E0D4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B10E110(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B10E1A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

uint64_t sub_25B10E1DC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = *a1;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B10E260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v108 = a2;
  v109 = a3;
  v112 = a5;
  v7 = sub_25B161914();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v105 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B161414();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = sub_25B1619A4();
  v101 = *(v104 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_25B1619B4();
  v99 = *(v102 - 8);
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_25B161514();
  v97 = *(v98 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B1616A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v110 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v111 = &v94 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v94 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v94 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = *(v19 + 56);
  v116 = &v94 - v39;
  v95 = v38;
  v38();
  v114 = a1;
  sub_25B1618A4();
  v113 = v19;
  v115 = v32;
  if ((a4 & 1) == 0)
  {
    v42 = *(v19 + 16);
    v42(v30, v32, v18);
    v43 = (*(v19 + 88))(v30, v18);
    v44 = *MEMORY[0x277D15640];
    if (v43 != *MEMORY[0x277D15810] && v43 != *MEMORY[0x277D15760] && v43 != *MEMORY[0x277D158D0] && v43 != *MEMORY[0x277D156D8] && v43 != *MEMORY[0x277D15870] && v43 != *MEMORY[0x277D15888] && v43 != v44 && v43 != *MEMORY[0x277D15718] && v43 != *MEMORY[0x277D15898] && v43 != *MEMORY[0x277D15720])
    {
      v40 = v113;
      (*(v113 + 8))(v30, v18);
      goto LABEL_23;
    }

    v45 = v42;
    (*(v113 + 104))(v27, v44, v18);
    sub_25B11B340(&qword_27FA39E18, MEMORY[0x277D158E0]);
    sub_25B161C14();
    sub_25B161C14();
    if (v119 == v117 && v120 == v118)
    {
      v46 = v27;
      v40 = v113;
      (*(v113 + 8))(v46, v18);
    }

    else
    {
      v47 = sub_25B161FA4();
      v48 = v27;
      v40 = v113;
      (*(v113 + 8))(v48, v18);

      if ((v47 & 1) == 0 && (sub_25B1618C4() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v41 = v116;
    sub_25B11B208(v116, &qword_27FA39E08, &qword_25B1637D8);
    v45(v41, v115, v18);
    goto LABEL_22;
  }

  v40 = v19;
  if (ServiceKind.isSupportedByControls.getter() & 1) != 0 && (sub_25B1618C4())
  {
    v41 = v116;
    sub_25B11B208(v116, &qword_27FA39E08, &qword_25B1637D8);
    (*(v19 + 16))(v41, v115, v18);
LABEL_22:
    (v95)(v41, 0, 1, v18);
  }

LABEL_23:
  sub_25B11B268(v116, v37);
  if ((*(v40 + 48))(v37, 1, v18) == 1)
  {
    sub_25B11B208(v37, &qword_27FA39E08, &qword_25B1637D8);
    v49 = v115;
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v50 = sub_25B161A14();
    __swift_project_value_buffer(v50, qword_27FA3A088);
    v52 = v105;
    v51 = v106;
    v53 = v107;
    (*(v106 + 16))(v105, v114, v107);
    v54 = v110;
    (*(v40 + 16))(v110, v49, v18);
    v55 = sub_25B1619F4();
    v56 = sub_25B161D64();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v53;
      v58 = swift_slowAlloc();
      v59 = v52;
      v114 = swift_slowAlloc();
      v119 = v114;
      *v58 = 136315650;
      *(v58 + 4) = sub_25B108480(0xD00000000000003ALL, 0x800000025B166640, &v119);
      *(v58 + 12) = 2080;
      v60 = sub_25B1618E4();
      v62 = v61;
      (*(v51 + 8))(v59, v57);
      v63 = sub_25B108480(v60, v62, &v119);

      *(v58 + 14) = v63;
      *(v58 + 22) = 2080;
      sub_25B11B340(&qword_27FA39E10, MEMORY[0x277D158E0]);
      v64 = v110;
      v65 = sub_25B161F84();
      v67 = v66;
      v68 = *(v40 + 8);
      v68(v64, v18);
      v69 = sub_25B108480(v65, v67, &v119);

      *(v58 + 24) = v69;
      _os_log_impl(&dword_25B105000, v55, v56, "%s: %s is not supported, service kind is %s", v58, 0x20u);
      v70 = v114;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v70, -1, -1);
      MEMORY[0x25F862BF0](v58, -1, -1);

      v68(v115, v18);
    }

    else
    {

      v79 = *(v40 + 8);
      v79(v54, v18);
      (*(v51 + 8))(v52, v53);
      v79(v49, v18);
    }

    result = sub_25B11B208(v116, &qword_27FA39E08, &qword_25B1637D8);
    v81 = v112;
    v112[4] = 0;
    *v81 = 0u;
    *(v81 + 1) = 0u;
  }

  else
  {
    (*(v40 + 32))(v111, v37, v18);
    v71 = v96;
    sub_25B1618D4();
    v110 = sub_25B1614F4();
    v107 = v72;
    (*(v97 + 8))(v71, v98);
    v73 = sub_25B1618E4();
    v105 = v74;
    v106 = v73;
    LOBYTE(v71) = sub_25B1618B4();
    v75 = v100;
    sub_25B161904();
    v76 = (v99 + 8);
    v77 = (v101 + 8);
    if (v71)
    {
      v78 = v103;
      sub_25B161974();
    }

    else
    {
      v78 = v103;
      sub_25B161984();
    }

    (*v76)(v75, v102);
    v82 = sub_25B161994();
    v84 = v83;
    (*v77)(v78, v104);
    v85 = v111;
    v114 = sub_25B161694();
    v104 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v87 = sub_25B161124();
    sub_25B1613E4();
    v88 = sub_25B161124();
    sub_25B1613E4();
    v89 = sub_25B161124();
    sub_25B1613E4();
    v90 = sub_25B161124();
    sub_25B1613E4();
    v91 = sub_25B161124();
    v119 = v110;
    v120 = v107;
    sub_25B161104();
    v119 = v106;
    v120 = v105;
    sub_25B161104();
    v119 = v82;
    v120 = v84;
    sub_25B161104();
    v119 = v108;
    v120 = v109;
    sub_25B161264();
    sub_25B161104();
    v119 = v114;
    v120 = v104;
    sub_25B161104();
    v92 = *(v113 + 8);
    v92(v85, v18);
    v92(v115, v18);
    result = sub_25B11B208(v116, &qword_27FA39E08, &qword_25B1637D8);
    v93 = v112;
    *v112 = v87;
    v93[1] = v88;
    v93[2] = v89;
    v93[3] = v90;
    v93[4] = v91;
  }

  return result;
}

uint64_t sub_25B10EF78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v154) = a4;
  v152 = a2;
  v153 = a3;
  v164 = a5;
  v6 = sub_25B161804();
  v159 = *(v6 - 8);
  v160 = v6;
  v7 = *(v159 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v155 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v158 = &v135 - v10;
  v11 = sub_25B161414();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_25B1619A4();
  v147 = *(v150 - 8);
  v14 = *(v147 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_25B1619B4();
  v145 = *(v148 - 8);
  v16 = *(v145 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_25B161514();
  v142 = *(v143 - 8);
  v18 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v141 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B1616A4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v137 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v157 = &v135 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v140 = &v135 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v136 = &v135 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v135 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v135 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v135 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CE8, &qword_25B163330);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v135 - v41;
  v43 = sub_25B161754();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v144 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v135 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v156 = &v135 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v139 = &v135 - v55;
  MEMORY[0x28223BE20](v54);
  v161 = v20;
  v162 = v21;
  v56 = *(v21 + 56);
  v165 = &v135 - v57;
  v138 = v56;
  v56();
  v163 = a1;
  sub_25B161784();
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_25B11B208(v42, &qword_27FA39CE8, &qword_25B163330);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v58 = sub_25B161A14();
    __swift_project_value_buffer(v58, qword_27FA3A088);
    v60 = v159;
    v59 = v160;
    v61 = v155;
    (*(v159 + 16))(v155, v163, v160);
    v62 = sub_25B1619F4();
    v63 = sub_25B161D84();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v165;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v168 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_25B108480(0xD000000000000034, 0x800000025B166600, &v168);
      *(v66 + 12) = 2080;
      v68 = sub_25B1617D4();
      v70 = v69;
      (*(v60 + 8))(v61, v59);
      v71 = sub_25B108480(v68, v70, &v168);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_25B105000, v62, v63, "%s: %s primary static service could not be obtained", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v67, -1, -1);
      MEMORY[0x25F862BF0](v66, -1, -1);
    }

    else
    {

      (*(v60 + 8))(v61, v59);
    }

    v79 = v65;
LABEL_39:
    result = sub_25B11B208(v79, &qword_27FA39E08, &qword_25B1637D8);
    v121 = v164;
    v164[4] = 0;
    *v121 = 0u;
    *(v121 + 1) = 0u;
    return result;
  }

  v135 = v44;
  (*(v44 + 32))(v49, v42, v43);
  v155 = v43;
  if ((v154 & 1) == 0)
  {
    v80 = v49;
    sub_25B161734();
    v73 = v161;
    v74 = v162;
    (*(v162 + 32))(v33, v36, v161);
    v81 = (*(v74 + 88))(v33, v73);
    v82 = *MEMORY[0x277D15640];
    if (v81 != *MEMORY[0x277D15810] && v81 != *MEMORY[0x277D15760] && v81 != *MEMORY[0x277D158D0] && v81 != *MEMORY[0x277D156D8] && v81 != *MEMORY[0x277D15870] && v81 != *MEMORY[0x277D15888] && v81 != v82 && v81 != *MEMORY[0x277D15718] && v81 != *MEMORY[0x277D15898] && v81 != *MEMORY[0x277D15720])
    {
      v154 = *(v74 + 8);
      v154(v33, v73);
      v75 = v165;
      v49 = v80;
      v76 = v163;
      v78 = v158;
      goto LABEL_30;
    }

    v83 = v136;
    sub_25B161734();
    (*(v74 + 104))(v140, v82, v73);
    sub_25B11B340(&qword_27FA39E18, MEMORY[0x277D158E0]);
    sub_25B161C14();
    sub_25B161C14();
    if (v168 == v166 && v169 == v167)
    {
      v84 = *(v74 + 8);
      v84(v140, v73);
      v154 = v84;
      v84(v83, v73);
    }

    else
    {
      v85 = sub_25B161FA4();
      v86 = *(v74 + 8);
      v86(v140, v73);
      v154 = v86;
      v86(v83, v73);

      if ((v85 & 1) == 0)
      {
        v49 = v80;
        v134 = sub_25B161744();
        v75 = v165;
        v76 = v163;
        v78 = v158;
        if ((v134 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_29:
        v87 = v139;
        sub_25B161734();
        sub_25B11B208(v75, &qword_27FA39E08, &qword_25B1637D8);
        (v138)(v87, 0, 1, v73);
        sub_25B11B2D8(v87, v75, &qword_27FA39E08, &qword_25B1637D8);
        goto LABEL_30;
      }
    }

    v75 = v165;
    v49 = v80;
    v76 = v163;
    v78 = v158;
    goto LABEL_29;
  }

  sub_25B161734();
  v72 = ServiceKind.isSupportedByControls.getter();
  v73 = v161;
  v74 = v162;
  v154 = *(v162 + 8);
  v154(v38, v161);
  v75 = v165;
  v76 = v163;
  if ((v72 & 1) == 0)
  {
    v78 = v158;
    goto LABEL_30;
  }

  v77 = sub_25B161744();
  v78 = v158;
  if (v77)
  {
    goto LABEL_29;
  }

LABEL_30:
  v88 = v156;
  sub_25B11B268(v75, v156);
  if ((*(v74 + 48))(v88, 1, v73) == 1)
  {
    sub_25B11B208(v88, &qword_27FA39E08, &qword_25B1637D8);
    v89 = v155;
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v90 = sub_25B161A14();
    __swift_project_value_buffer(v90, qword_27FA3A088);
    v92 = v159;
    v91 = v160;
    (*(v159 + 16))(v78, v76, v160);
    v93 = v135;
    v94 = v144;
    (*(v135 + 16))(v144, v49, v89);
    v95 = sub_25B1619F4();
    v96 = sub_25B161D64();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v163 = v49;
      v98 = v97;
      v161 = swift_slowAlloc();
      v168 = v161;
      *v98 = 136315650;
      *(v98 + 4) = sub_25B108480(0xD000000000000034, 0x800000025B166600, &v168);
      *(v98 + 12) = 2080;
      LODWORD(v158) = v96;
      v99 = sub_25B1617D4();
      v100 = v78;
      v102 = v101;
      (*(v92 + 8))(v100, v91);
      v103 = sub_25B108480(v99, v102, &v168);

      *(v98 + 14) = v103;
      *(v98 + 22) = 2080;
      v104 = v137;
      sub_25B161734();
      sub_25B11B340(&qword_27FA39E10, MEMORY[0x277D158E0]);
      v105 = sub_25B161F84();
      v107 = v106;
      v154(v104, v73);
      v108 = *(v93 + 8);
      v108(v94, v89);
      v109 = sub_25B108480(v105, v107, &v168);

      *(v98 + 24) = v109;
      _os_log_impl(&dword_25B105000, v95, v158, "%s: %s is not supported, service kind is %s", v98, 0x20u);
      v110 = v161;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v110, -1, -1);
      MEMORY[0x25F862BF0](v98, -1, -1);

      v108(v163, v89);
    }

    else
    {

      v119 = *(v93 + 8);
      v119(v94, v89);
      (*(v92 + 8))(v78, v91);
      v119(v49, v89);
    }

    v79 = v165;
    goto LABEL_39;
  }

  v163 = v49;
  (*(v74 + 32))(v157, v88, v73);
  v111 = v141;
  sub_25B1617C4();
  v112 = sub_25B1614F4();
  v159 = v113;
  v160 = v112;
  (*(v142 + 8))(v111, v143);
  v158 = sub_25B1617D4();
  v156 = v114;
  LOBYTE(v111) = sub_25B161794();
  v115 = v146;
  sub_25B1617F4();
  v116 = (v145 + 8);
  v117 = (v147 + 8);
  v118 = v149;
  if (v111)
  {
    sub_25B161974();
  }

  else
  {
    sub_25B161984();
  }

  (*v116)(v115, v148);
  v122 = sub_25B161994();
  v124 = v123;
  (*v117)(v118, v150);
  v125 = v157;
  v150 = sub_25B161694();
  v127 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v128 = sub_25B161124();
  sub_25B1613E4();
  v129 = sub_25B161124();
  sub_25B1613E4();
  v130 = sub_25B161124();
  sub_25B1613E4();
  v131 = sub_25B161124();
  sub_25B1613E4();
  v132 = sub_25B161124();
  v168 = v160;
  v169 = v159;
  sub_25B161104();
  v168 = v158;
  v169 = v156;
  sub_25B161104();
  v168 = v122;
  v169 = v124;
  sub_25B161104();
  v168 = v152;
  v169 = v153;
  sub_25B161264();
  sub_25B161104();
  v168 = v150;
  v169 = v127;
  sub_25B161104();
  v154(v125, v161);
  (*(v135 + 8))(v163, v155);
  result = sub_25B11B208(v165, &qword_27FA39E08, &qword_25B1637D8);
  v133 = v164;
  *v164 = v128;
  v133[1] = v129;
  v133[2] = v130;
  v133[3] = v131;
  v133[4] = v132;
  return result;
}

uint64_t NHOAccessoryQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 280) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150) - 8) + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  v6 = sub_25B161414();
  *(v4 + 312) = v6;
  v7 = *(v6 - 8);
  *(v4 + 320) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CD0, &qword_25B163320);
  *(v4 + 336) = v9;
  v10 = *(v9 - 8);
  *(v4 + 344) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v12 = sub_25B161804();
  *(v4 + 368) = v12;
  v13 = *(v12 - 8);
  *(v4 + 376) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  v15 = sub_25B161914();
  *(v4 + 400) = v15;
  v16 = *(v15 - 8);
  *(v4 + 408) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  v18 = sub_25B161664();
  *(v4 + 432) = v18;
  v19 = *(v18 - 8);
  *(v4 + 440) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  v21 = sub_25B161944();
  *(v4 + 456) = v21;
  v22 = *(v21 - 8);
  *(v4 + 464) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0) - 8) + 64) + 15;
  *(v4 + 480) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v4 + 488) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v27 = sub_25B161724();
  *(v4 + 504) = v27;
  v28 = *(v27 - 8);
  *(v4 + 512) = v28;
  v29 = *(v28 + 64) + 15;
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = *v3;
  *(v4 + 544) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_25B110548, 0, 0);
}

uint64_t sub_25B110548()
{
  v37 = v0;
  v1 = *(v0 + 528);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    sub_25B1610F4();

    v4 = 0;
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
LABEL_7:
    *(v0 + 609) = v4;
    *(v0 + 560) = v6;
    *(v0 + 552) = v5;
    *(v0 + 568) = sub_25B161624();
    sub_25B1616C4();
    *(v0 + 576) = sub_25B1616B4();
    sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960]);
    v14 = sub_25B161CC4();

    return MEMORY[0x2822009F8](sub_25B110AD0, v14, v13);
  }

  v7 = *(v0 + 544);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    sub_25B1610F4();

    v4 = 0;
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    goto LABEL_7;
  }

  v10 = *(v0 + 536);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    sub_25B1610F4();

    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B1611B4();

    v4 = *(v0 + 608);
    goto LABEL_7;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v15 = sub_25B161A14();
  __swift_project_value_buffer(v15, qword_27FA3A088);
  v16 = sub_25B1619F4();
  v17 = sub_25B161D94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v36);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v36);
    _os_log_impl(&dword_25B105000, v16, v17, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v19, -1, -1);
    MEMORY[0x25F862BF0](v18, -1, -1);
  }

  v20 = *(v0 + 280);
  (*(*(v0 + 320) + 56))(*(v0 + 304), 1, 1, *(v0 + 312));
  sub_25B11629C();
  sub_25B1611F4();
  v21 = *(v0 + 520);
  v22 = *(v0 + 496);
  v24 = *(v0 + 472);
  v23 = *(v0 + 480);
  v25 = *(v0 + 448);
  v27 = *(v0 + 416);
  v26 = *(v0 + 424);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v30 = *(v0 + 360);
  v33 = *(v0 + 352);
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_25B110AD0()
{
  v1 = v0[72];
  v2 = v0[71];

  v0[73] = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B110B44, 0, 0);
}

uint64_t sub_25B110B44()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[62];
  v22 = v0[61];
  v4 = v0[59];
  v5 = v0[60];
  v6 = v0[57];
  v7 = v0[58];
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v8;
  v0[4] = v9;
  v0[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v11 = *(v7 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[34] = v13;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0);
  sub_25B161E34();
  v14 = MEMORY[0x277D159D8];
  v15 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v16 = *(MEMORY[0x277D15208] + 4);
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_25B110D64;
  v18 = v0[73];
  v19 = v0[65];
  v20 = v0[62];

  return MEMORY[0x28216E6A8](v19, v20, v14, v15);
}

uint64_t sub_25B110D64()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  v2[75] = v0;

  v5 = v2[73];
  if (v0)
  {
    v6 = v2[70];

    v7 = sub_25B111DDC;
  }

  else
  {

    v7 = sub_25B110EA8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B110EA8()
{
  v172 = v0;
  v1 = *(v0 + 520);
  v2 = sub_25B1616E4();
  v3 = sub_25B117D70(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v0 + 440);
    v7 = sub_25B115B44(*(v3 + 16), 0);
    v8 = sub_25B11A68C(&v167, &v7[(*(v6 + 80) + 32) & ~*(v6 + 80)], v5, v4);
    sub_25B161264();
    sub_25B11A930();
    if (v8 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = *(v0 + 600);
  v167 = v7;
  sub_25B117F84(&v167);
  if (v9)
  {
  }

  else
  {
    v11 = *(v0 + 560);

    v12 = v167;
    if (qword_27FA39B00 != -1)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v13 = sub_25B161A14();
      __swift_project_value_buffer(v13, qword_27FA3A088);
      sub_25B161274();
      v14 = sub_25B1619F4();
      v15 = sub_25B161D94();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v167 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v167);
        *(v16 + 12) = 2048;
        *(v16 + 14) = v12[2];

        _os_log_impl(&dword_25B105000, v14, v15, "%s: [NHOAccessoryQuery] Home has %ld rooms.", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x25F862BF0](v17, -1, -1);
        MEMORY[0x25F862BF0](v16, -1, -1);
      }

      else
      {
      }

      v18 = *(v0 + 296);
      sub_25B161264();
      v19 = sub_25B1619F4();
      v20 = sub_25B161D94();

      if (os_log_type_enabled(v19, v20))
      {
        v22 = *(v0 + 288);
        v21 = *(v0 + 296);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v167 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v167);
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_25B108480(v22, v21, &v167);
        _os_log_impl(&dword_25B105000, v19, v20, "%s: [NHOAccessoryQuery] Will search for accessory matching %s.", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v24, -1, -1);
        MEMORY[0x25F862BF0](v23, -1, -1);
      }

      v139 = v12[2];
      if (!v139)
      {
        break;
      }

      v140 = 0;
      v25 = 0;
      v26 = *(v0 + 440);
      v137 = v12 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v149 = *(v0 + 408);
      v147 = *(v0 + 376);
      v148 = (v149 + 8);
      v146 = (v147 + 8);
      v133 = (*(v0 + 344) + 16);
      v138 = v26;
      v134 = *(v0 + 344);
      v135 = (v26 + 8);
      v27 = MEMORY[0x277D84F90];
      v136 = v12;
LABEL_19:
      if (v25 < v12[2])
      {
        v141 = v25 + 1;
        v142 = v27;
        (*(v138 + 16))(*(v0 + 448), &v137[*(v138 + 72) * v25], *(v0 + 432));
        v28 = sub_25B161644();
        v29 = sub_25B115E2C(v28);
        v30 = v29;
        v31 = 0;
        v32 = v29 + 56;
        v33 = -1 << *(v29 + 32);
        if (-v33 < 64)
        {
          v34 = ~(-1 << -v33);
        }

        else
        {
          v34 = -1;
        }

        v35 = v34 & *(v29 + 56);
        v36 = (63 - v33) >> 6;
        v143 = MEMORY[0x277D84F90];
        v152 = v36;
        v154 = v29 + 56;
        v144 = v29;
LABEL_24:
        v37 = v31;
        while (v35)
        {
          v31 = v37;
LABEL_32:
          v38 = *(v0 + 609);
          v39 = *(v0 + 448);
          v41 = *(v0 + 416);
          v40 = *(v0 + 424);
          v42 = *(v0 + 400);
          v43 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v12 = v149;
          (*(v149 + 16))(v40, *(v30 + 48) + *(v149 + 72) * (v43 | (v31 << 6)), v42);
          (*(v149 + 32))(v41, v40, v42);
          v44 = sub_25B161654();
          sub_25B10E260(v41, v44, v45, v38, &v167);

          v46 = v167;
          if (v167)
          {
            v156 = v168;
            v158 = v169;
            v161 = v170;
            v164 = v171;
            v47 = *(v0 + 448);
            v48 = *(v0 + 288);
            v49 = *(v0 + 296);
            sub_25B161654();
            v50 = sub_25B161B64();
            v52 = v51;

            *(v0 + 80) = v50;
            *(v0 + 88) = v52;
            *(v0 + 96) = sub_25B161B64();
            *(v0 + 104) = v53;
            v12 = sub_25B11A938();
            LOBYTE(v47) = sub_25B161E14();

            if (v47)
            {
              goto LABEL_36;
            }

            v54 = *(v0 + 416);
            v56 = *(v0 + 288);
            v55 = *(v0 + 296);
            sub_25B1618E4();
            v57 = sub_25B161B64();
            v150 = v46;
            v59 = v58;

            *(v0 + 112) = v57;
            *(v0 + 120) = v59;
            *(v0 + 128) = sub_25B161B64();
            *(v0 + 136) = v60;
            LOBYTE(v54) = sub_25B161E14();

            v46 = v150;

            if (v54)
            {
LABEL_36:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v143 = sub_25B1150AC(0, *(v143 + 2) + 1, 1, v143);
              }

              v30 = v144;
              v12 = v158;
              v62 = *(v143 + 2);
              v61 = *(v143 + 3);
              if (v62 >= v61 >> 1)
              {
                v143 = sub_25B1150AC((v61 > 1), v62 + 1, 1, v143);
              }

              (*v148)(*(v0 + 416), *(v0 + 400));
              *(v143 + 2) = v62 + 1;
              v63 = &v143[40 * v62];
              v32 = v154;
              *(v63 + 4) = v46;
              *(v63 + 5) = v156;
              *(v63 + 6) = v158;
              *(v63 + 7) = v161;
              *(v63 + 8) = v164;
              v36 = v152;
              goto LABEL_24;
            }

            (*v148)(*(v0 + 416), *(v0 + 400));
            sub_25B11A98C(v150);
            v37 = v31;
            v30 = v144;
          }

          else
          {
            (*v148)(*(v0 + 416), *(v0 + 400));
            v37 = v31;
          }

          v36 = v152;
          v32 = v154;
        }

        while (1)
        {
          v31 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_78;
          }

          if (v31 >= v36)
          {
            break;
          }

          v35 = *(v32 + 8 * v31);
          ++v37;
          if (v35)
          {
            goto LABEL_32;
          }
        }

        v64 = *(v0 + 448);

        v65 = sub_25B161634();
        v66 = sub_25B116040(v65);
        v67 = v66;
        v68 = 0;
        v69 = v66 + 56;
        v70 = -1 << *(v66 + 32);
        if (-v70 < 64)
        {
          v71 = ~(-1 << -v70);
        }

        else
        {
          v71 = -1;
        }

        v72 = v71 & *(v66 + 56);
        v73 = (63 - v70) >> 6;
        v151 = v73;
        v153 = v66 + 56;
        v145 = v66;
LABEL_45:
        v74 = v68;
        while (v72)
        {
          v68 = v74;
LABEL_53:
          v75 = *(v0 + 609);
          v76 = *(v0 + 448);
          v78 = *(v0 + 384);
          v77 = *(v0 + 392);
          v79 = *(v0 + 368);
          v80 = __clz(__rbit64(v72));
          v72 &= v72 - 1;
          v12 = v147;
          (*(v147 + 16))(v77, *(v67 + 48) + *(v147 + 72) * (v80 | (v68 << 6)), v79);
          (*(v147 + 32))(v78, v77, v79);
          v81 = sub_25B161654();
          sub_25B10EF78(v78, v81, v82, v75, &v167);

          if (v167)
          {
            v165 = v167;
            v155 = v168;
            v157 = v169;
            v159 = v170;
            v162 = v171;
            v83 = *(v0 + 448);
            v85 = *(v0 + 288);
            v84 = *(v0 + 296);
            sub_25B161654();
            v86 = sub_25B161B64();
            v88 = v87;

            *(v0 + 144) = v86;
            *(v0 + 152) = v88;
            *(v0 + 160) = sub_25B161B64();
            *(v0 + 168) = v89;
            v12 = sub_25B11A938();
            LOBYTE(v83) = sub_25B161E14();

            if (v83)
            {
              goto LABEL_57;
            }

            v90 = *(v0 + 384);
            v92 = *(v0 + 288);
            v91 = *(v0 + 296);
            sub_25B1617D4();
            v93 = sub_25B161B64();
            v95 = v94;

            *(v0 + 176) = v93;
            *(v0 + 184) = v95;
            *(v0 + 192) = sub_25B161B64();
            *(v0 + 200) = v96;
            LOBYTE(v90) = sub_25B161E14();

            if (v90)
            {
LABEL_57:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v143 = sub_25B1150AC(0, *(v143 + 2) + 1, 1, v143);
              }

              v67 = v145;
              v98 = *(v143 + 2);
              v97 = *(v143 + 3);
              if (v98 >= v97 >> 1)
              {
                v143 = sub_25B1150AC((v97 > 1), v98 + 1, 1, v143);
              }

              (*v146)(*(v0 + 384), *(v0 + 368));
              *(v143 + 2) = v98 + 1;
              v99 = &v143[40 * v98];
              *(v99 + 4) = v165;
              *(v99 + 5) = v155;
              *(v99 + 6) = v157;
              *(v99 + 7) = v159;
              *(v99 + 8) = v162;
              v73 = v151;
              v69 = v153;
              goto LABEL_45;
            }

            (*v146)(*(v0 + 384), *(v0 + 368));
            sub_25B11A98C(v165);
            v74 = v68;
            v67 = v145;
          }

          else
          {
            (*v146)(*(v0 + 384), *(v0 + 368));
            v74 = v68;
          }

          v73 = v151;
          v69 = v153;
        }

        while (1)
        {
          v68 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v68 >= v73)
          {

            v100 = *(v143 + 2);
            if (v100)
            {
              v101 = __OFADD__(v140, v100);
              v102 = v140 + v100;
              v12 = v136;
              v27 = v142;
              if (v101)
              {
                goto LABEL_80;
              }

              v140 = v102;
              v103 = *(v0 + 448);
              v105 = *(v0 + 352);
              v104 = *(v0 + 360);
              v107 = *(v0 + 328);
              v106 = *(v0 + 336);
              sub_25B161264();
              sub_25B161654();
              sub_25B1613E4();

              sub_25B11629C();
              sub_25B1611E4();
              (*v133)(v105, v104, v106);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_25B115850(0, v142[2] + 1, 1, v142, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
              }

              v109 = v27[2];
              v108 = v27[3];
              if (v109 >= v108 >> 1)
              {
                v27 = sub_25B115850(v108 > 1, v109 + 1, 1, v27, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
              }

              v110 = *(v0 + 448);
              v111 = *(v0 + 432);
              v112 = *(v0 + 352);
              v113 = *(v0 + 336);
              (*(v134 + 8))(*(v0 + 360), v113);
              (*v135)(v110, v111);
              v27[2] = v109 + 1;
              (*(v134 + 32))(v27 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v109, v112, v113);
            }

            else
            {
              (*v135)(*(v0 + 448), *(v0 + 432));

              v12 = v136;
              v27 = v142;
            }

            v25 = v141;
            if (v141 != v139)
            {
              goto LABEL_19;
            }

            goto LABEL_71;
          }

          v72 = *(v69 + 8 * v68);
          ++v74;
          if (v72)
          {
            goto LABEL_53;
          }
        }

LABEL_78:
        __break(1u);
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
    }

    v140 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_71:
    sub_25B161264();
    v114 = sub_25B1619F4();
    v115 = sub_25B161D94();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v167 = v117;
      *v116 = 136315650;
      *(v116 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v167);
      *(v116 + 12) = 2048;
      *(v116 + 14) = v140;
      *(v116 + 22) = 2048;
      *(v116 + 24) = v27[2];

      _os_log_impl(&dword_25B105000, v114, v115, "%s: [NHOAccessoryQuery] Returning %ld accessories found across %ld rooms.", v116, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x25F862BF0](v117, -1, -1);
      MEMORY[0x25F862BF0](v116, -1, -1);
    }

    else
    {
    }

    v118 = *(v0 + 520);
    v119 = *(v0 + 504);
    v120 = *(v0 + 512);
    v121 = *(v0 + 280);
    (*(*(v0 + 320) + 56))(*(v0 + 304), 1, 1, *(v0 + 312));
    sub_25B11629C();
    sub_25B1611F4();
    (*(v120 + 8))(v118, v119);
    v122 = *(v0 + 520);
    v123 = *(v0 + 496);
    v125 = *(v0 + 472);
    v124 = *(v0 + 480);
    v126 = *(v0 + 448);
    v128 = *(v0 + 416);
    v127 = *(v0 + 424);
    v130 = *(v0 + 384);
    v129 = *(v0 + 392);
    v131 = *(v0 + 360);
    v160 = *(v0 + 352);
    v163 = *(v0 + 328);
    v166 = *(v0 + 304);

    v132 = *(v0 + 8);

    return v132();
  }
}

uint64_t sub_25B111DDC()
{
  v1 = v0[65];
  v2 = v0[62];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[48];
  v8 = v0[49];
  v10 = v0[45];
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[38];

  v11 = v0[1];
  v12 = v0[75];

  return v11();
}

uint64_t NHOAccessoryQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 152) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150) - 8) + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v4 = sub_25B161414();
  *(v2 + 168) = v4;
  v5 = *(v4 - 8);
  *(v2 + 176) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CD0, &qword_25B163320);
  *(v2 + 192) = v7;
  v8 = *(v7 - 8);
  *(v2 + 200) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v10 = sub_25B161514();
  *(v2 + 224) = v10;
  v11 = *(v10 - 8);
  *(v2 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CE8, &qword_25B163330) - 8) + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v14 = sub_25B161754();
  *(v2 + 264) = v14;
  v15 = *(v14 - 8);
  *(v2 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v17 = sub_25B161804();
  *(v2 + 288) = v17;
  v18 = *(v17 - 8);
  *(v2 + 296) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  v20 = sub_25B161914();
  *(v2 + 328) = v20;
  v21 = *(v20 - 8);
  *(v2 + 336) = v21;
  v22 = *(v21 + 64) + 15;
  *(v2 + 344) = swift_task_alloc();
  v23 = sub_25B161664();
  *(v2 + 352) = v23;
  v24 = *(v23 - 8);
  *(v2 + 360) = v24;
  v25 = *(v24 + 64) + 15;
  *(v2 + 368) = swift_task_alloc();
  v26 = sub_25B161944();
  *(v2 + 376) = v26;
  v27 = *(v26 - 8);
  *(v2 + 384) = v27;
  v28 = *(v27 + 64) + 15;
  *(v2 + 392) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0) - 8) + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 416) = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  *(v2 + 424) = swift_task_alloc();
  v32 = sub_25B161724();
  *(v2 + 432) = v32;
  v33 = *(v32 - 8);
  *(v2 + 440) = v33;
  v34 = *(v33 + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = *v1;
  *(v2 + 472) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B1123C8, 0, 0);
}

uint64_t sub_25B1123C8()
{
  v63 = v0;
  v1 = *(v0 + 456);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    sub_25B1610F4();

    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = qword_27FA39B00;
    sub_25B161264();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25B161A14();
    __swift_project_value_buffer(v7, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v62 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v62);
      *(v10 + 12) = 2080;
      v12 = sub_25B108480(v5, v4, &v62);

      *(v10 + 14) = v12;
      v13 = "%s: [NHOAccessoryQuery] Using homeID %s from homeAccessoryIntent.";
LABEL_11:
      _os_log_impl(&dword_25B105000, v8, v9, v13, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v11, -1, -1);
      MEMORY[0x25F862BF0](v10, -1, -1);
LABEL_13:

      v20 = 0;
LABEL_14:
      *(v0 + 480) = v5;
      *(v0 + 488) = v4;
      *(v0 + 537) = v20;
      *(v0 + 496) = sub_25B161624();
      sub_25B1616C4();
      sub_25B161264();
      *(v0 + 504) = sub_25B1616B4();
      sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960]);
      v22 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B112E2C, v22, v21);
    }

    goto LABEL_12;
  }

  v14 = *(v0 + 472);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    sub_25B1610F4();

    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v17 = qword_27FA39B00;
    sub_25B161264();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v62 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v62);
      *(v10 + 12) = 2080;
      v19 = sub_25B108480(v5, v4, &v62);

      *(v10 + 14) = v19;
      v13 = "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlToggleIntent.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v23 = *(v0 + 464);
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    sub_25B1610F4();

    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B161264();
    sub_25B1611B4();

    v20 = *(v0 + 536);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v26 = sub_25B161A14();
    __swift_project_value_buffer(v26, qword_27FA3A088);
    sub_25B161264();
    v27 = sub_25B1619F4();
    v28 = sub_25B161D94();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v62);
      *(v29 + 12) = 2080;
      v31 = sub_25B108480(v5, v4, &v62);

      *(v29 + 14) = v31;
      _os_log_impl(&dword_25B105000, v27, v28, "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlSelectIntent.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v30, -1, -1);
      MEMORY[0x25F862BF0](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v32 = sub_25B161A14();
  __swift_project_value_buffer(v32, qword_27FA3A088);
  v33 = sub_25B1619F4();
  v34 = sub_25B161D84();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v62);
    _os_log_impl(&dword_25B105000, v33, v34, "%s: [NHOAccessoryQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x25F862BF0](v36, -1, -1);
    MEMORY[0x25F862BF0](v35, -1, -1);
  }

  v37 = sub_25B1619F4();
  v38 = sub_25B161D94();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v62 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v62);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v62);
    _os_log_impl(&dword_25B105000, v37, v38, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v40, -1, -1);
    MEMORY[0x25F862BF0](v39, -1, -1);
  }

  v41 = *(v0 + 152);
  (*(*(v0 + 176) + 56))(*(v0 + 160), 1, 1, *(v0 + 168));
  sub_25B11629C();
  sub_25B1611F4();
  v42 = *(v0 + 448);
  v43 = *(v0 + 424);
  v45 = *(v0 + 400);
  v44 = *(v0 + 408);
  v46 = *(v0 + 392);
  v47 = *(v0 + 368);
  v48 = *(v0 + 344);
  v50 = *(v0 + 312);
  v49 = *(v0 + 320);
  v51 = *(v0 + 304);
  v54 = *(v0 + 280);
  v55 = *(v0 + 256);
  v56 = *(v0 + 248);
  v57 = *(v0 + 240);
  v58 = *(v0 + 216);
  v59 = *(v0 + 208);
  v60 = *(v0 + 184);
  v61 = *(v0 + 160);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_25B112E2C()
{
  v2 = v0[62];
  v1 = v0[63];

  v0[64] = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B112E9C, 0, 0);
}

uint64_t sub_25B112E9C()
{
  v1 = v0[60];
  v2 = v0[61];
  v21 = v0[53];
  v22 = v0[52];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[47];
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[18] = v12;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0);
  sub_25B161E34();
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x277D15208] + 4);
  v16 = swift_task_alloc();
  v0[65] = v16;
  *v16 = v0;
  v16[1] = sub_25B1130C4;
  v17 = v0[64];
  v18 = v0[56];
  v19 = v0[53];

  return MEMORY[0x28216E6A8](v18, v19, v13, v14);
}

uint64_t sub_25B1130C4()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[64];
  if (v0)
  {
    v6 = v2[61];
    swift_bridgeObjectRelease_n();

    v7 = sub_25B114408;
  }

  else
  {

    v7 = sub_25B113210;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B113210()
{
  v192 = v0;
  v1 = *(v0 + 448);
  v2 = sub_25B1616E4();
  v3 = sub_25B117D70(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v0 + 360);
    v7 = sub_25B115B44(*(v3 + 16), 0);
    v8 = sub_25B11A68C(&v189, &v7[(*(v6 + 80) + 32) & ~*(v6 + 80)], v5, v4);
    sub_25B161264();
    sub_25B11A930();
    if (v8 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = *(v0 + 528);
  v189 = v7;
  sub_25B117F84(&v189);
  if (v9)
  {
  }

  v11 = *(v0 + 488);
  swift_bridgeObjectRelease_n();

  v12 = v189;
  if (qword_27FA39B00 == -1)
  {
    goto LABEL_10;
  }

LABEL_101:
  swift_once();
LABEL_10:
  v13 = sub_25B161A14();
  __swift_project_value_buffer(v13, qword_27FA3A088);
  sub_25B161274();
  v14 = sub_25B1619F4();
  v15 = sub_25B161D94();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v189 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v189);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12[2];

    _os_log_impl(&dword_25B105000, v14, v15, "%s: [NHOAccessoryQuery] Home has %ld rooms.", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F862BF0](v17, -1, -1);
    MEMORY[0x25F862BF0](v16, -1, -1);
  }

  else
  {
  }

  v155 = v12[2];
  if (!v155)
  {

    v124 = 0;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v156 = 0;
  v18 = 0;
  v19 = *(v0 + 360);
  v153 = v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v174 = *(v0 + 336);
  v20 = *(v0 + 232);
  v170 = (v20 + 48);
  v21 = *(v0 + 272);
  v163 = (v20 + 32);
  v164 = (v20 + 8);
  v169 = (v21 + 56);
  v168 = (v21 + 48);
  v162 = (v21 + 32);
  v166 = v21;
  v161 = (v21 + 8);
  v171 = *(v0 + 296);
  v167 = (v171 + 8);
  v144 = (*(v0 + 200) + 16);
  v154 = v19;
  v151 = (v19 + 8);
  v145 = *(v0 + 200);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v152 = v12;
  do
  {
    if (v18 >= v12[2])
    {
      goto LABEL_99;
    }

    v187 = v23;
    v157 = v18 + 1;
    v158 = v22;
    (*(v154 + 16))(*(v0 + 368), &v153[*(v154 + 72) * v18], *(v0 + 352));
    v24 = sub_25B161644();
    v25 = sub_25B115E2C(v24);
    v26 = v25;
    v27 = v25 + 56;
    v28 = -1 << *(v25 + 32);
    if (-v28 < 64)
    {
      v29 = ~(-1 << -v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v25 + 56);
    v12 = ((63 - v28) >> 6);
    v165 = MEMORY[0x277D84F90];
    v31 = 0;
    if (v30)
    {
      while (2)
      {
        v39 = v31;
LABEL_35:
        (*(v174 + 16))(*(v0 + 344), *(v26 + 48) + *(v174 + 72) * (__clz(__rbit64(v30)) | (v39 << 6)), *(v0 + 328));
        sub_25B11B340(&qword_27FA39CF0, MEMORY[0x277D164A0]);
        v43 = sub_25B161774();
        v44 = *(v43 + 16);
        v45 = v187[2];
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_95;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v187;
        if (!isUniquelyReferenced_nonNull_native || v46 > v187[3] >> 1)
        {
          if (v45 <= v46)
          {
            v49 = v45 + v44;
          }

          else
          {
            v49 = v45;
          }

          v48 = sub_25B1152D0(isUniquelyReferenced_nonNull_native, v49, 1, v187);
        }

        v187 = v48;
        if (*(v43 + 16))
        {
          if ((*(v48 + 24) >> 1) - *(v48 + 16) < v44)
          {
            goto LABEL_97;
          }

          v50 = *(v0 + 264);
          v51 = (*(v166 + 80) + 32) & ~*(v166 + 80);
          v52 = *(v166 + 72);
          swift_arrayInitWithCopy();

          if (v44)
          {
            v53 = v187[2];
            v54 = __OFADD__(v53, v44);
            v55 = v53 + v44;
            if (v54)
            {
              goto LABEL_98;
            }

            v187[2] = v55;
          }
        }

        else
        {

          if (v44)
          {
            goto LABEL_96;
          }
        }

        v30 &= v30 - 1;
        v32 = *(v0 + 537);
        v33 = *(v0 + 368);
        v34 = *(v0 + 344);
        v35 = *(v0 + 328);
        v36 = sub_25B161654();
        sub_25B10E260(v34, v36, v37, v32, &v189);

        (*(v174 + 8))(v34, v35);
        v38 = v189;
        if (v189)
        {
          v184 = v191;
          v178 = v190;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v165 = sub_25B1150AC(0, *(v165 + 2) + 1, 1, v165);
          }

          v41 = *(v165 + 2);
          v40 = *(v165 + 3);
          if (v41 >= v40 >> 1)
          {
            v165 = sub_25B1150AC((v40 > 1), v41 + 1, 1, v165);
          }

          *(v165 + 2) = v41 + 1;
          v42 = &v165[40 * v41];
          *(v42 + 4) = v38;
          *(v42 + 40) = v178;
          *(v42 + 56) = v184;
          v31 = v39;
          if (v30)
          {
            continue;
          }
        }

        else
        {
          v31 = v39;
          if (v30)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v39 >= v12)
      {
        break;
      }

      v30 = *(v27 + 8 * v39);
      ++v31;
      if (v30)
      {
        goto LABEL_35;
      }
    }

    v56 = *(v0 + 368);

    v57 = sub_25B161634();
    v58 = sub_25B116040(v57);
    v59 = 0;
    v12 = (v58 + 56);
    v185 = v58;
    v60 = -1 << *(v58 + 32);
    if (-v60 < 64)
    {
      v61 = ~(-1 << -v60);
    }

    else
    {
      v61 = -1;
    }

    v62 = v61 & *(v58 + 56);
    v63 = (63 - v60) >> 6;
    v176 = v63;
LABEL_51:
    v64 = v59;
    if (!v62)
    {
      goto LABEL_53;
    }

    do
    {
      v59 = v64;
LABEL_56:
      v65 = *(v0 + 400);
      v67 = *(v0 + 312);
      v66 = *(v0 + 320);
      v68 = *(v0 + 288);
      v69 = *(v0 + 224);
      v179 = *(v171 + 16);
      v179(v66, *(v185 + 48) + *(v171 + 72) * (__clz(__rbit64(v62)) | (v59 << 6)), v68);
      (*(v171 + 32))(v67, v66, v68);
      sub_25B1617A4();
      if ((*v170)(v65, 1, v69) == 1)
      {
        sub_25B11B208(*(v0 + 400), &qword_27FA39C68, &unk_25B1645B0);
        v70 = 1;
        goto LABEL_63;
      }

      v71 = *(v0 + 312);
      (*v163)(*(v0 + 240), *(v0 + 400), *(v0 + 224));
      v72 = sub_25B1617B4();
      v73 = *(v0 + 240);
      if (*(v72 + 16))
      {
        v74 = sub_25B117B18(*(v0 + 240));
        if (v75)
        {
          v76 = *(v0 + 240);
          v77 = *(v0 + 224);
          (*(v166 + 16))(*(v0 + 248), *(v72 + 56) + *(v166 + 72) * v74, *(v0 + 264));
          (*v164)(v76, v77);

          v70 = 0;
          goto LABEL_63;
        }

        v73 = *(v0 + 240);
      }

      v78 = *(v0 + 224);

      (*v164)(v73, v78);
      v70 = 1;
LABEL_63:
      v62 &= v62 - 1;
      v79 = *(v0 + 256);
      v80 = *(v0 + 264);
      v81 = *(v0 + 248);
      (*v169)(v81, v70, 1, v80);
      sub_25B11B2D8(v81, v79, &qword_27FA39CE8, &qword_25B163330);
      v82 = (*v168)(v79, 1, v80);
      v83 = *(v0 + 256);
      if (v82 == 1)
      {
        (*v167)(*(v0 + 312), *(v0 + 288));
        sub_25B11B208(v83, &qword_27FA39CE8, &qword_25B163330);
      }

      else
      {
        v84 = *(v0 + 280);
        (*v162)(v84, *(v0 + 256), *(v0 + 264));
        if (!sub_25B1145A0(v84, v187, MEMORY[0x277D15AC0], &qword_27FA39DC8, MEMORY[0x277D15AC0]))
        {
          v99 = *(v0 + 537);
          v100 = *(v0 + 368);
          v101 = *(v0 + 312);
          v102 = sub_25B161654();
          sub_25B10EF78(v101, v102, v103, v99, &v189);

          v104 = v189;
          v63 = v176;
          if (v189)
          {
            v181 = v191;
            v160 = v190;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = sub_25B1150AC(0, *(v165 + 2) + 1, 1, v165);
            }

            v108 = *(v165 + 2);
            v107 = *(v165 + 3);
            if (v108 >= v107 >> 1)
            {
              v165 = sub_25B1150AC((v107 > 1), v108 + 1, 1, v165);
            }

            v109 = *(v0 + 312);
            v110 = *(v0 + 288);
            (*v161)(*(v0 + 280), *(v0 + 264));
            (*v167)(v109, v110);
            *(v165 + 2) = v108 + 1;
            v111 = &v165[40 * v108];
            *(v111 + 4) = v104;
            *(v111 + 40) = v160;
            *(v111 + 56) = v181;
          }

          else
          {
            v105 = *(v0 + 312);
            v106 = *(v0 + 288);
            (*v161)(*(v0 + 280), *(v0 + 264));
            (*v167)(v105, v106);
          }

          goto LABEL_51;
        }

        v179(*(v0 + 304), *(v0 + 312), *(v0 + 288));
        v85 = sub_25B1619F4();
        v86 = sub_25B161D94();
        v87 = os_log_type_enabled(v85, v86);
        v88 = *(v0 + 304);
        v89 = *(v0 + 312);
        v90 = *(v0 + 288);
        v180 = *(v0 + 280);
        v159 = *(v0 + 264);
        if (v87)
        {
          log = v85;
          v91 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v189 = v148;
          *v91 = 136315394;
          *(v91 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v189);
          *(v91 + 12) = 2080;
          v146 = v86;
          v92 = sub_25B1617D4();
          v93 = v90;
          v149 = v90;
          v150 = v89;
          v95 = v94;
          v96 = *v167;
          (*v167)(v88, v93);
          v97 = sub_25B108480(v92, v95, &v189);

          *(v91 + 14) = v97;
          _os_log_impl(&dword_25B105000, log, v146, "%s Skipping %s because it is covered by a service group", v91, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v148, -1, -1);
          MEMORY[0x25F862BF0](v91, -1, -1);

          (*v161)(v180, v159);
          v96(v150, v149);
        }

        else
        {

          v98 = *v167;
          (*v167)(v88, v90);
          (*v161)(v180, v159);
          v98(v89, v90);
        }
      }

      v64 = v59;
      v63 = v176;
    }

    while (v62);
    while (1)
    {
LABEL_53:
      v59 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_94;
      }

      if (v59 >= v63)
      {
        break;
      }

      v62 = v12[v59];
      ++v64;
      if (v62)
      {
        goto LABEL_56;
      }
    }

    v112 = *(v165 + 2);
    if (!v112)
    {
      (*v151)(*(v0 + 368), *(v0 + 352));

      v12 = v152;
      v22 = v158;
      goto LABEL_16;
    }

    v54 = __OFADD__(v156, v112);
    v156 += v112;
    v12 = v152;
    v22 = v158;
    if (v54)
    {
      goto LABEL_100;
    }

    v113 = *(v0 + 368);
    v115 = *(v0 + 208);
    v114 = *(v0 + 216);
    v117 = *(v0 + 184);
    v116 = *(v0 + 192);
    sub_25B161264();
    sub_25B161654();
    sub_25B1613E4();

    sub_25B11629C();
    sub_25B1611E4();
    (*v144)(v115, v114, v116);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_25B115850(0, v158[2] + 1, 1, v158, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
    }

    v119 = v22[2];
    v118 = v22[3];
    if (v119 >= v118 >> 1)
    {
      v22 = sub_25B115850(v118 > 1, v119 + 1, 1, v22, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
    }

    v120 = *(v0 + 368);
    v121 = *(v0 + 352);
    v122 = *(v0 + 208);
    v123 = *(v0 + 192);
    (*(v145 + 8))(*(v0 + 216), v123);
    (*v151)(v120, v121);
    v22[2] = v119 + 1;
    (*(v145 + 32))(v22 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v119, v122, v123);
LABEL_16:
    v18 = v157;
    v23 = v187;
  }

  while (v157 != v155);

  v124 = v156;
LABEL_87:

  sub_25B161264();
  v125 = sub_25B1619F4();
  v126 = sub_25B161D94();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v189 = v128;
    *v127 = 136315650;
    *(v127 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v189);
    *(v127 + 12) = 2048;
    *(v127 + 14) = v124;
    *(v127 + 22) = 2048;
    *(v127 + 24) = v22[2];

    _os_log_impl(&dword_25B105000, v125, v126, "%s: [NHOAccessoryQuery] Returning %ld accessories found across %ld rooms.", v127, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v128);
    MEMORY[0x25F862BF0](v128, -1, -1);
    MEMORY[0x25F862BF0](v127, -1, -1);
  }

  else
  {
  }

  v130 = *(v0 + 440);
  v129 = *(v0 + 448);
  v131 = *(v0 + 432);
  v132 = *(v0 + 152);
  (*(*(v0 + 176) + 56))(*(v0 + 160), 1, 1, *(v0 + 168));
  sub_25B11629C();
  sub_25B1611F4();
  (*(v130 + 8))(v129, v131);
  v133 = *(v0 + 448);
  v134 = *(v0 + 424);
  v136 = *(v0 + 400);
  v135 = *(v0 + 408);
  v137 = *(v0 + 392);
  v138 = *(v0 + 368);
  v139 = *(v0 + 344);
  v141 = *(v0 + 312);
  v140 = *(v0 + 320);
  v142 = *(v0 + 304);
  v172 = *(v0 + 280);
  v173 = *(v0 + 256);
  v175 = *(v0 + 248);
  v177 = *(v0 + 240);
  v182 = *(v0 + 216);
  v183 = *(v0 + 208);
  v186 = *(v0 + 184);
  v188 = *(v0 + 160);

  v143 = *(v0 + 8);

  return v143();
}

uint64_t sub_25B114408()
{
  v1 = v0[56];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[43];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[23];
  v21 = v0[20];

  v11 = v0[1];
  v12 = v0[66];

  return v11();
}

BOOL sub_25B1145A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_25B11B340(a4, a5);
  }

  while ((sub_25B161AA4() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_25B1146A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B114758;

  return NHOAccessoryQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_25B114758()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B11484C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t sub_25B11496C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOAccessoryQuery.entities(for:)(a1);
}

uint64_t sub_25B114A00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B3EC;

  return NHOAccessoryQuery.suggestedEntities()(a1);
}

uint64_t sub_25B114A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25B114B58;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_25B114B58(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25B114C58(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25B11AB00();
  *v6 = v2;
  v6[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_25B114D0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOAccessoryQuery.defaultResult()(a1);
}

uint64_t sub_25B114DAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B114E44@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_25B161274();
  v5 = sub_25B161164();

  *a3 = v5;
  return result;
}

uint64_t sub_25B114ED4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B114F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B114F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B161164();
  *a2 = result;
  return result;
}

unint64_t sub_25B114F98()
{
  result = qword_27FA39C58;
  if (!qword_27FA39C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C58);
  }

  return result;
}

char *sub_25B1150AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E20, &qword_25B1637E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B1151CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DD8, &qword_25B1637B8);
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

size_t sub_25B1152D0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DD0, &qword_25B1637B0);
  v10 = *(sub_25B161754() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_25B161754() - 8);
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

char *sub_25B1154A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DC0, &qword_25B1637A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_25B1155EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DA0, &qword_25B163788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DA8, &qword_25B163790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B115720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D98, &qword_25B163780);
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

size_t sub_25B115850(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
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
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
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

char *sub_25B115A38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D78, &qword_25B163768);
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

size_t sub_25B115B44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DE8, &qword_25B1637C8);
  v4 = *(sub_25B161664() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

double sub_25B115C40@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25B115CC8()
{
  result = qword_27FA39C88;
  if (!qword_27FA39C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C88);
  }

  return result;
}

uint64_t sub_25B115D1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

uint64_t sub_25B115D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25B115DD8()
{
  result = qword_27FA39CA0;
  if (!qword_27FA39CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CA0);
  }

  return result;
}

uint64_t sub_25B115E2C(uint64_t a1)
{
  v2 = sub_25B161914();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0]);
  result = MEMORY[0x25F862260](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_25B116F04(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B116040(uint64_t a1)
{
  v2 = sub_25B161804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48]);
  result = MEMORY[0x25F862260](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_25B1162F0(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_25B116254@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

unint64_t sub_25B11629C()
{
  result = qword_27FA39CD8;
  if (!qword_27FA39CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CD8);
  }

  return result;
}

uint64_t sub_25B1162F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48]);
  v36 = a2;
  v13 = sub_25B161A94();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25B11B340(&qword_27FA39E30, MEMORY[0x277D15D48]);
      v23 = sub_25B161AA4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25B1165D0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B1165D0(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_25B161804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_25B116BA8(v13);
    }

    else
    {
      sub_25B11688C(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48]);
    v16 = sub_25B161A94();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25B11B340(&qword_27FA39E30, MEMORY[0x277D15D48]);
        v24 = sub_25B161AA4();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D15D48], &qword_27FA39E38, &qword_25B1637E8);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B11688C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161804();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E38, &qword_25B1637E8);
  v10 = sub_25B161E84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48]);
      result = sub_25B161A94();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25B116BA8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161804();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E38, &qword_25B1637E8);
  result = sub_25B161E84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48]);
      result = sub_25B161A94();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25B116F04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161914();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0]);
  v36 = a2;
  v13 = sub_25B161A94();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25B11B340(&qword_27FA39E48, MEMORY[0x277D164A0]);
      v23 = sub_25B161AA4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25B1171E4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B1171E4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_25B161914();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_25B1177BC(v13);
    }

    else
    {
      sub_25B1174A0(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0]);
    v16 = sub_25B161A94();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25B11B340(&qword_27FA39E48, MEMORY[0x277D164A0]);
        v24 = sub_25B161AA4();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D164A0], &qword_27FA39E50, &qword_25B1637F0);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B1174A0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161914();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E50, &qword_25B1637F0);
  v10 = sub_25B161E84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0]);
      result = sub_25B161A94();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25B1177BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161914();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E50, &qword_25B1637F0);
  result = sub_25B161E84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0]);
      result = sub_25B161A94();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_25B117B18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B161514();
  sub_25B11B340(&qword_27FA39BD0, MEMORY[0x277CC95F0]);
  v5 = sub_25B161A94();

  return sub_25B117BB0(a1, v5);
}

unint64_t sub_25B117BB0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25B161514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_25B11B340(&qword_27FA39BD8, MEMORY[0x277CC95F0]);
      v16 = sub_25B161AA4();
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

uint64_t sub_25B117D70(uint64_t a1)
{
  v2 = sub_25B161664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488]);
  result = MEMORY[0x25F862260](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_25B119840(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B117F84(void **a1)
{
  v2 = *(sub_25B161664() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B11B1B4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B11802C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B11802C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_25B161F74();
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
        sub_25B161664();
        v6 = sub_25B161C94();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B161664() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B118464(v8, v9, a1, v4);
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
    return sub_25B118158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B118158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B161664();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_25B161654();
      v28 = v27;
      if (v26 == sub_25B161654() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_25B161FA4();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B118464(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_25B161664();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_25B119020(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_25B119748(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_25B1196BC(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_25B119748(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_25B161654();
      v38 = v37;
      v39 = sub_25B161654();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_25B161FA4();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_25B161654();
        v53 = v52;
        if (v51 == sub_25B161654() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_25B161FA4();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B1151CC(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_25B1151CC((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_25B119020(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_25B119748(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_25B1196BC(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_25B161654();
    v70 = v69;
    if (v5 == sub_25B161654() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_25B161FA4();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_25B119020(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_25B161664();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_25B161654();
            v53 = v52;
            if (v51 != sub_25B161654())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_25B161FA4();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_25B161654();
        v33 = v32;
        if (v31 == sub_25B161654() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_25B161FA4();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_25B11975C(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_25B1196BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25B119748(v3);
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

uint64_t sub_25B11975C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25B161664();
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

uint64_t sub_25B119840(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161664();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488]);
  v36 = a2;
  v13 = sub_25B161A94();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25B11B340(&qword_27FA39DF8, MEMORY[0x277D15488]);
      v23 = sub_25B161AA4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25B119B20(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B119B20(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_25B161664();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_25B11A330(v13);
    }

    else
    {
      sub_25B11A014(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488]);
    v16 = sub_25B161A94();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25B11B340(&qword_27FA39DF8, MEMORY[0x277D15488]);
        v24 = sub_25B161AA4();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D15488], &qword_27FA39E00, &qword_25B1637D0);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B119DDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_25B161E74();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_25B11A014(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161664();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E00, &qword_25B1637D0);
  v10 = sub_25B161E84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488]);
      result = sub_25B161A94();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25B11A330(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161664();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E00, &qword_25B1637D0);
  result = sub_25B161E84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488]);
      result = sub_25B161A94();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25B11A68C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_25B161664();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_25B11A938()
{
  result = qword_27FA39CE0;
  if (!qword_27FA39CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CE0);
  }

  return result;
}

uint64_t sub_25B11A98C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B11A9FC()
{
  result = qword_27FA39CF8;
  if (!qword_27FA39CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CF8);
  }

  return result;
}

unint64_t sub_25B11AA54()
{
  result = qword_27FA39D00;
  if (!qword_27FA39D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D00);
  }

  return result;
}

unint64_t sub_25B11AAAC()
{
  result = qword_27FA39D08;
  if (!qword_27FA39D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D08);
  }

  return result;
}

unint64_t sub_25B11AB00()
{
  result = qword_27FA39D10;
  if (!qword_27FA39D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D10);
  }

  return result;
}

unint64_t sub_25B11AB70()
{
  result = qword_27FA39D18;
  if (!qword_27FA39D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D18);
  }

  return result;
}

unint64_t sub_25B11ABC8()
{
  result = qword_27FA39D20;
  if (!qword_27FA39D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D20);
  }

  return result;
}

unint64_t sub_25B11AC24()
{
  result = qword_27FA39D28;
  if (!qword_27FA39D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D28);
  }

  return result;
}

unint64_t sub_25B11ACC0()
{
  result = qword_27FA39D40;
  if (!qword_27FA39D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D40);
  }

  return result;
}

unint64_t sub_25B11AD1C()
{
  result = qword_27FA39D48;
  if (!qword_27FA39D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D48);
  }

  return result;
}

unint64_t sub_25B11AD74()
{
  result = qword_27FA39D50;
  if (!qword_27FA39D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D50);
  }

  return result;
}

unint64_t sub_25B11ADCC()
{
  result = qword_27FA39D58;
  if (!qword_27FA39D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D58);
  }

  return result;
}

unint64_t sub_25B11AE24()
{
  result = qword_27FA39D60;
  if (!qword_27FA39D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D60);
  }

  return result;
}

uint64_t sub_25B11AEBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25B11AF14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B11AF54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B11AF94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B11AFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B11B014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B11B068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B11B0B0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B11B11C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25B11B164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}