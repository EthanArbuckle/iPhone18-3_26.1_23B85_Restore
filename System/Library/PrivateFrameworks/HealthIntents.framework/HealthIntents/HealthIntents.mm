uint64_t sub_2517BA108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2517BA27C(v11, 0, 0, 1, a1, a2);
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
    sub_2517BA1D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_2517BA1D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2517BA230()
{
  result = qword_28110FDB0;
  if (!qword_28110FDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110FDB0);
  }

  return result;
}

unint64_t sub_2517BA27C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2517BA544(a5, a6);
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
    result = sub_2517D8998();
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

void *sub_2517BA388(uint64_t a1, uint64_t a2)
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

  sub_2517C49D8(0, &qword_28110FD90, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2517BA414(uint64_t a1, unint64_t a2)
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

  v6 = sub_2517BA388(v5, 0);
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

  result = sub_2517D8998();
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
        v10 = sub_2517D8838();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2517BA388(v10, 0);
        result = sub_2517D8968();
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

uint64_t sub_2517BA544(uint64_t a1, unint64_t a2)
{
  v4 = sub_2517BA414(a1, a2);
  sub_2517BA594(&unk_2863AC170);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2517BA594(uint64_t result)
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

  result = sub_2517C4838(result, v12, 1, v3);
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

uint64_t static HealthDataTypeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_28110FE40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28110FE48;

  return sub_2517D82A8();
}

uint64_t sub_2517BA6F0()
{
  sub_2517BA780(0, &qword_28110FE68, &qword_28110FDB0, 0x277CCD4D8, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  sub_2517D8088();
  result = sub_2517D8078();
  qword_28110FE48 = result;
  return result;
}

void sub_2517BA780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2517C2280(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void HealthDataTypeEntity.AvailableHealthDataTypesQuery.healthStore.setter(void *a1)
{
  v2 = *v1;
  v3 = a1;
  sub_2517D8058();
}

uint64_t sub_2517BA84C()
{
  v1 = v0[3];
  sub_2517D8048();
  v2 = v0[2];
  v3 = sub_2517BA8CC(v2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2517BA8CC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = v2;
  v4 = [v2 allDisplayTypes];

  if (!v4)
  {
LABEL_37:
    __break(1u);

    __break(1u);
    JUMPOUT(0x2517BAC9CLL);
  }

  sub_2517C2280(0, &qword_28110FDB8, 0x277D12830);
  v5 = sub_2517D8848();

  v28 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2517D89E8())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x253083300](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 objectType];
      v13 = [v12 enabled];

      if (v13)
      {
        v14 = [v10 objectType];
        v15 = [v14 code];

        switch(v15)
        {
          case 0uLL:
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xCuLL:
          case 0xDuLL:
          case 0xEuLL:
          case 0xFuLL:
          case 0x12uLL:
          case 0x13uLL:
          case 0x14uLL:
          case 0x15uLL:
          case 0x16uLL:
          case 0x17uLL:
          case 0x18uLL:
          case 0x19uLL:
          case 0x1AuLL:
          case 0x1BuLL:
          case 0x1CuLL:
          case 0x1DuLL:
          case 0x1EuLL:
          case 0x1FuLL:
          case 0x20uLL:
          case 0x21uLL:
          case 0x22uLL:
          case 0x23uLL:
          case 0x24uLL:
          case 0x25uLL:
          case 0x26uLL:
          case 0x27uLL:
          case 0x28uLL:
          case 0x29uLL:
          case 0x2AuLL:
          case 0x2BuLL:
          case 0x2CuLL:
          case 0x2DuLL:
          case 0x2EuLL:
          case 0x2FuLL:
          case 0x30uLL:
          case 0x31uLL:
          case 0x32uLL:
          case 0x33uLL:
          case 0x34uLL:
          case 0x35uLL:
          case 0x36uLL:
          case 0x37uLL:
          case 0x38uLL:
          case 0x39uLL:
          case 0x3AuLL:
          case 0x3CuLL:
          case 0x3DuLL:
          case 0x3EuLL:
          case 0x3FuLL:
          case 0x46uLL:
          case 0x47uLL:
          case 0x48uLL:
          case 0x49uLL:
          case 0x4BuLL:
          case 0x4EuLL:
          case 0x4FuLL:
          case 0x50uLL:
          case 0x53uLL:
          case 0x57uLL:
          case 0x59uLL:
          case 0x5AuLL:
          case 0x5BuLL:
          case 0x5CuLL:
          case 0x5FuLL:
          case 0x60uLL:
          case 0x61uLL:
          case 0x63uLL:
          case 0x64uLL:
          case 0x65uLL:
          case 0x6EuLL:
          case 0x6FuLL:
          case 0x71uLL:
          case 0x72uLL:
          case 0x76uLL:
          case 0x7CuLL:
          case 0x7DuLL:
          case 0x89uLL:
          case 0x8AuLL:
          case 0x8BuLL:
          case 0x8CuLL:
          case 0x90uLL:
          case 0x91uLL:
          case 0x93uLL:
          case 0x9CuLL:
          case 0x9DuLL:
          case 0x9EuLL:
          case 0x9FuLL:
          case 0xA0uLL:
          case 0xA1uLL:
          case 0xA2uLL:
          case 0xA3uLL:
          case 0xA4uLL:
          case 0xA5uLL:
          case 0xA6uLL:
          case 0xA7uLL:
          case 0xA8uLL:
          case 0xA9uLL:
          case 0xAAuLL:
          case 0xABuLL:
          case 0xACuLL:
          case 0xADuLL:
          case 0xB2uLL:
          case 0xB3uLL:
          case 0xB6uLL:
          case 0xB7uLL:
          case 0xBAuLL:
          case 0xBBuLL:
          case 0xBCuLL:
          case 0xBDuLL:
          case 0xBFuLL:
          case 0xC0uLL:
          case 0xC1uLL:
          case 0xC2uLL:
          case 0xC3uLL:
          case 0xC4uLL:
          case 0xC7uLL:
          case 0xC9uLL:
          case 0xCAuLL:
          case 0xCBuLL:
          case 0xCCuLL:
          case 0xCDuLL:
          case 0xCEuLL:
          case 0xCFuLL:
          case 0xDCuLL:
          case 0xDDuLL:
          case 0xDEuLL:
          case 0xDFuLL:
          case 0xE0uLL:
          case 0xE1uLL:
          case 0xE2uLL:
          case 0xE5uLL:
          case 0xE6uLL:
          case 0xE7uLL:
          case 0xE8uLL:
          case 0xE9uLL:
          case 0xEAuLL:
          case 0xEBuLL:
          case 0xECuLL:
          case 0xEDuLL:
          case 0xF0uLL:
          case 0xF1uLL:
          case 0xF2uLL:
          case 0xF3uLL:
          case 0xF4uLL:
          case 0xF8uLL:
          case 0xF9uLL:
          case 0xFAuLL:
          case 0xFBuLL:
          case 0xFEuLL:
          case 0x100uLL:
          case 0x101uLL:
          case 0x102uLL:
          case 0x103uLL:
          case 0x104uLL:
          case 0x106uLL:
          case 0x107uLL:
          case 0x108uLL:
          case 0x109uLL:
          case 0x10AuLL:
          case 0x10DuLL:
          case 0x10EuLL:
          case 0x110uLL:
          case 0x112uLL:
          case 0x113uLL:
          case 0x114uLL:
          case 0x115uLL:
          case 0x117uLL:
          case 0x118uLL:
          case 0x119uLL:
          case 0x11AuLL:
          case 0x11BuLL:
          case 0x11CuLL:
          case 0x11EuLL:
          case 0x11FuLL:
          case 0x120uLL:
          case 0x126uLL:
          case 0x127uLL:
          case 0x128uLL:
          case 0x129uLL:
          case 0x12DuLL:
          case 0x12EuLL:
          case 0x12FuLL:
          case 0x131uLL:
          case 0x139uLL:
          case 0x13AuLL:
            sub_2517D89A8();
            v16 = *(v28 + 16);
            sub_2517D89C8();
            sub_2517D89D8();
            sub_2517D89B8();
            break;
          default:
            goto LABEL_7;
        }
      }

      else
      {
LABEL_7:
      }

      ++v8;
      if (v11 == i)
      {
        v7 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_18:

  v17 = sub_2517D82A8();
  v28 = sub_2517BB204(v17, sub_2517C13F0);
  sub_2517BB188(&v28);

  v18 = v28;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v1 = sub_2517D89E8();
    if (!v1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v1 = *(v28 + 16);
    if (!v1)
    {
      goto LABEL_34;
    }
  }

  v28 = v7;
  sub_2517BC64C(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = v28;
  sub_2517BC66C(0, &qword_28110FE60, sub_2517BC6D4, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
  for (j = 0; j != v1; ++j)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x253083300](j, v18);
    }

    else
    {
      v20 = *(v18 + 8 * j + 32);
    }

    v21 = v20;
    v22 = sub_2517D81D8();
    v28 = v7;
    v24 = *(v7 + 16);
    v23 = *(v7 + 24);
    if (v24 >= v23 >> 1)
    {
      v26 = v22;
      sub_2517BC64C((v23 > 1), v24 + 1, 1);
      v22 = v26;
      v7 = v28;
    }

    *(v7 + 16) = v24 + 1;
    v25 = v7 + 24 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = 1;
    *(v25 + 48) = v21;
  }

LABEL_34:

  return v7;
}

uint64_t sub_2517BB188(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2517CECDC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2517BB2F4(v6);
  return sub_2517D89B8();
}

uint64_t sub_2517BB204(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_2517D89E8();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_2517C0A98(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2517BB2A0()
{
  result = qword_27F45FDE0;
  if (!qword_27F45FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDE0);
  }

  return result;
}

uint64_t sub_2517BB2F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2517D8A38();
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
        sub_2517C2280(0, &qword_28110FDB8, 0x277D12830);
        v6 = sub_2517D8858();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2517BB408(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_2517C1034(0, v2, 1, a1);
  }

  return result;
}

void sub_2517BB408(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v11 = *v7;
    if (!*v7)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v156 = v10;
      v133 = *(v10 + 2);
      if (v133 >= 2)
      {
        while (*v6)
        {
          v134 = *&v10[16 * v133];
          v135 = *&v10[16 * v133 + 24];
          sub_2517BC224((*v6 + 8 * v134), (*v6 + 8 * *&v10[16 * v133 + 16]), (*v6 + 8 * v135), v11);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v135 < v134)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2517CE9B4(v10);
          }

          if (v133 - 2 >= *(v10 + 2))
          {
            goto LABEL_122;
          }

          v136 = &v10[16 * v133];
          *v136 = v134;
          *(v136 + 1) = v135;
          v156 = v10;
          sub_2517BC5C0(v133 - 1);
          v10 = v156;
          v133 = *(v156 + 2);
          if (v133 <= 1)
          {
            goto LABEL_105;
          }
        }

        goto LABEL_132;
      }

LABEL_105:

      return;
    }

LABEL_128:
    v10 = sub_2517CE9B4(v10);
    goto LABEL_97;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  v12 = v9 + 1;
  if (v12 >= v8)
  {
    v148 = v12;
  }

  else
  {
    v13 = *v6;
    v154 = *(*v6 + 8 * v12);
    v152 = *(v13 + 8 * v11);
    v14 = v152;
    v15 = v154;
    v16 = v14;
    v150 = sub_2517BBEA4(&v154, &v152);
    if (v5)
    {

      return;
    }

    v148 = v11 + 2;
    if (v11 + 2 < v8)
    {
      v141 = v10;
      sub_2517C2280(0, &qword_28110FDA8, 0x277D82BB8);
      v139 = v11;
      v17 = (v13 + 8 * v11 + 16);
      do
      {
        v29 = *(v17 - 1);
        v30 = *v17;
        v31 = v29;
        v32 = [v30 displayCategory];
        v33 = [v31 displayCategory];
        LOBYTE(v29) = sub_2517D8908();

        if (v29)
        {
          v34 = [v30 localization];
          v35 = [v34 displayName];

          v36 = sub_2517D87F8();
          v38 = v37;

          v154 = v36;
          v155 = v38;
          v39 = [v31 localization];
          v40 = [v39 displayName];

          v41 = sub_2517D87F8();
          v43 = v42;

          v152 = v41;
          v153 = v43;
          sub_2517BC0A8();
          v44 = sub_2517D8928();

          if (((v150 ^ (v44 != -1)) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v18 = [v30 displayCategory];
          v19 = [v18 displayName];

          v20 = sub_2517D87F8();
          v22 = v21;

          v154 = v20;
          v155 = v22;
          v23 = [v31 displayCategory];
          v24 = [v23 displayName];

          v25 = sub_2517D87F8();
          v27 = v26;

          v152 = v25;
          v153 = v27;
          sub_2517BC0A8();
          v28 = sub_2517D8928();

          if (v150 == (v28 != -1))
          {
            goto LABEL_15;
          }
        }

        ++v17;
        ++v148;
      }

      while (v8 != v148);
      v148 = v8;
LABEL_15:
      v6 = a3;
      v11 = v139;
      v10 = v141;
    }

    v7 = a1;
    if (v150)
    {
      v45 = v148;
      if (v148 < v11)
      {
        goto LABEL_127;
      }

      if (v11 < v148)
      {
        v46 = 8 * v148 - 8;
        v47 = 8 * v11;
        v48 = v11;
        do
        {
          if (v48 != --v45)
          {
            v49 = *v6;
            if (!*v6)
            {
              goto LABEL_131;
            }

            v50 = *(v49 + v47);
            *(v49 + v47) = *(v49 + v46);
            *(v49 + v46) = v50;
          }

          ++v48;
          v46 -= 8;
          v47 += 8;
        }

        while (v48 < v45);
      }
    }
  }

  v51 = v6[1];
  if (v148 >= v51)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v148, v11))
  {
    goto LABEL_124;
  }

  if (v148 - v11 >= a4)
  {
    goto LABEL_44;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_125;
  }

  if (v11 + a4 < v51)
  {
    v51 = v11 + a4;
  }

  if (v51 < v11)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v52 = v148;
  if (v148 == v51)
  {
    goto LABEL_44;
  }

  v145 = v51;
  v142 = v10;
  v137 = v5;
  v53 = *v6;
  sub_2517C2280(0, &qword_28110FDA8, 0x277D82BB8);
  v151 = v53;
  v54 = v53 + 8 * v148 - 8;
  v140 = v11;
  v55 = v11 - v148;
LABEL_34:
  v147 = v54;
  v149 = v52;
  v56 = *(v151 + 8 * v52);
  v146 = v55;
  while (1)
  {
    v57 = *v54;
    v58 = v56;
    v59 = v57;
    v60 = [v58 displayCategory];
    v61 = [v59 displayCategory];
    v62 = sub_2517D8908();

    if (v62)
    {
      v63 = [v58 localization];
      v64 = [v63 displayName];

      v65 = sub_2517D87F8();
      v67 = v66;

      v154 = v65;
      v155 = v67;
      v68 = [v59 localization];
      v69 = [v68 displayName];

      v70 = sub_2517D87F8();
      v72 = v71;

      v152 = v70;
      v153 = v72;
      sub_2517BC0A8();
      v73 = sub_2517D8928();

      if (v73 != -1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v74 = [v58 displayCategory];
      v75 = [v74 displayName];

      v76 = sub_2517D87F8();
      v78 = v77;

      v154 = v76;
      v155 = v78;
      v79 = [v59 0x2796C9875];
      v80 = [v79 displayName];

      v81 = sub_2517D87F8();
      v83 = v82;

      v152 = v81;
      v153 = v83;
      sub_2517BC0A8();
      v84 = sub_2517D8928();

      if (v84 != -1)
      {
        goto LABEL_33;
      }
    }

    if (!v151)
    {
      break;
    }

    v85 = *v54;
    v56 = *(v54 + 8);
    *v54 = v56;
    *(v54 + 8) = v85;
    v54 -= 8;
    if (__CFADD__(v55++, 1))
    {
LABEL_33:
      v52 = v149 + 1;
      v54 = v147 + 8;
      v55 = v146 - 1;
      if (v149 + 1 != v145)
      {
        goto LABEL_34;
      }

      v7 = a1;
      v148 = v145;
      v5 = v137;
      v6 = a3;
      v11 = v140;
      v10 = v142;
LABEL_44:
      if (v148 < v11)
      {
        goto LABEL_123;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2517BC0FC(0, *(v10 + 2) + 1, 1, v10);
      }

      v88 = *(v10 + 2);
      v87 = *(v10 + 3);
      v89 = v88 + 1;
      if (v88 >= v87 >> 1)
      {
        v10 = sub_2517BC0FC((v87 > 1), v88 + 1, 1, v10);
      }

      *(v10 + 2) = v89;
      v90 = &v10[16 * v88];
      *(v90 + 4) = v11;
      *(v90 + 5) = v148;
      v11 = *v7;
      if (!*v7)
      {
        goto LABEL_133;
      }

      if (v88)
      {
        while (1)
        {
          v91 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v92 = *(v10 + 4);
            v93 = *(v10 + 5);
            v102 = __OFSUB__(v93, v92);
            v94 = v93 - v92;
            v95 = v102;
LABEL_64:
            if (v95)
            {
              goto LABEL_112;
            }

            v108 = &v10[16 * v89];
            v110 = *v108;
            v109 = *(v108 + 1);
            v111 = __OFSUB__(v109, v110);
            v112 = v109 - v110;
            v113 = v111;
            if (v111)
            {
              goto LABEL_115;
            }

            v114 = &v10[16 * v91 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v102 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v102)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v112, v117))
            {
              goto LABEL_119;
            }

            if (v112 + v117 >= v94)
            {
              if (v94 < v117)
              {
                v91 = v89 - 2;
              }

              goto LABEL_85;
            }

            goto LABEL_78;
          }

          v118 = &v10[16 * v89];
          v120 = *v118;
          v119 = *(v118 + 1);
          v102 = __OFSUB__(v119, v120);
          v112 = v119 - v120;
          v113 = v102;
LABEL_78:
          if (v113)
          {
            goto LABEL_114;
          }

          v121 = &v10[16 * v91];
          v123 = *(v121 + 4);
          v122 = *(v121 + 5);
          v102 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v102)
          {
            goto LABEL_117;
          }

          if (v124 < v112)
          {
            goto LABEL_3;
          }

LABEL_85:
          v129 = v91 - 1;
          if (v91 - 1 >= v89)
          {
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
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*v6)
          {
            goto LABEL_130;
          }

          v130 = *&v10[16 * v129 + 32];
          v131 = *&v10[16 * v91 + 40];
          sub_2517BC224((*v6 + 8 * v130), (*v6 + 8 * *&v10[16 * v91 + 32]), (*v6 + 8 * v131), v11);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v131 < v130)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2517CE9B4(v10);
          }

          if (v129 >= *(v10 + 2))
          {
            goto LABEL_109;
          }

          v132 = &v10[16 * v129];
          *(v132 + 4) = v130;
          *(v132 + 5) = v131;
          v156 = v10;
          sub_2517BC5C0(v91);
          v10 = v156;
          v89 = *(v156 + 2);
          if (v89 <= 1)
          {
            goto LABEL_3;
          }
        }

        v96 = &v10[16 * v89 + 32];
        v97 = *(v96 - 64);
        v98 = *(v96 - 56);
        v102 = __OFSUB__(v98, v97);
        v99 = v98 - v97;
        if (v102)
        {
          goto LABEL_110;
        }

        v101 = *(v96 - 48);
        v100 = *(v96 - 40);
        v102 = __OFSUB__(v100, v101);
        v94 = v100 - v101;
        v95 = v102;
        if (v102)
        {
          goto LABEL_111;
        }

        v103 = &v10[16 * v89];
        v105 = *v103;
        v104 = *(v103 + 1);
        v102 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v102)
        {
          goto LABEL_113;
        }

        v102 = __OFADD__(v94, v106);
        v107 = v94 + v106;
        if (v102)
        {
          goto LABEL_116;
        }

        if (v107 >= v99)
        {
          v125 = &v10[16 * v91 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v102 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v102)
          {
            goto LABEL_120;
          }

          if (v94 < v128)
          {
            v91 = v89 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_64;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v148;
      if (v148 >= v8)
      {
        goto LABEL_95;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

BOOL sub_2517BBEA4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2517C2280(0, &qword_28110FDA8, 0x277D82BB8);
  v4 = [v2 displayCategory];
  v5 = [v3 displayCategory];
  v6 = sub_2517D8908();

  if (v6)
  {
    v7 = [v2 localization];
    v8 = [v7 displayName];

    sub_2517D87F8();
    v9 = [v3 localization];
  }

  else
  {
    v10 = [v2 displayCategory];
    v11 = [v10 displayName];

    sub_2517D87F8();
    v9 = [v3 displayCategory];
  }

  v12 = [v9 displayName];

  sub_2517D87F8();
  sub_2517BC0A8();
  v13 = sub_2517D8928();

  return v13 == -1;
}

unint64_t sub_2517BC0A8()
{
  result = qword_28110FDC8;
  if (!qword_28110FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDC8);
  }

  return result;
}

char *sub_2517BC0FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517CB504(0, &qword_28110FD98, sub_2517CB680, MEMORY[0x277D84560]);
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

uint64_t sub_2517BC224(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_2517BBEA4(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_2517BBEA4(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_2517BC5C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2517CE9B4(v3);
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

char *sub_2517BC64C(char *a1, int64_t a2, char a3)
{
  result = sub_2517C0BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2517BC66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2517BC6D4()
{
  result = qword_28110FDD0;
  if (!qword_28110FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDD0);
  }

  return result;
}

unint64_t sub_2517BC738()
{
  result = qword_28110FDE0;
  if (!qword_28110FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDE0);
  }

  return result;
}

unint64_t sub_2517BC794()
{
  result = qword_28110FE08;
  if (!qword_28110FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FE08);
  }

  return result;
}

unint64_t sub_2517BC7EC()
{
  result = qword_28110FE10;
  if (!qword_28110FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FE10);
  }

  return result;
}

unint64_t sub_2517BC844()
{
  result = qword_28110FDF0;
  if (!qword_28110FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDF0);
  }

  return result;
}

unint64_t sub_2517BC8A0()
{
  result = qword_28110FE18;
  if (!qword_28110FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FE18);
  }

  return result;
}

unint64_t sub_2517BC8FC()
{
  result = qword_28110FE00;
  if (!qword_28110FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FE00);
  }

  return result;
}

unint64_t sub_2517BC954()
{
  result = qword_28110FDF8;
  if (!qword_28110FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDF8);
  }

  return result;
}

unint64_t sub_2517BC9AC()
{
  result = qword_28110FDE8;
  if (!qword_28110FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDE8);
  }

  return result;
}

unint64_t sub_2517BCA08()
{
  result = qword_28110FDD8;
  if (!qword_28110FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FDD8);
  }

  return result;
}

void sub_2517BCA5C(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) displayTypeIdentifierString];
  v4 = sub_2517D87F8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t HealthDataTypeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2517BD080(0, &qword_28110FE58, MEMORY[0x277CBA248], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v48 = &v41 - v5;
  sub_2517BD080(0, &qword_28110FE50, MEMORY[0x277CC9130], v2);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v47 = &v41 - v8;
  v9 = *(*(sub_2517D86B8() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2517D8628();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*(sub_2517D87C8() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v46 = sub_2517D8638();
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  v18 = (MEMORY[0x28223BE20])();
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v45 = &v41 - v20;
  v21 = *(v1 + 16);
  v22 = [v21 localization];
  v23 = [v22 displayNameKey];

  sub_2517D87F8();
  sub_2517D87D8();
  v24 = [v21 localization];
  v25 = [v24 localizationTableNameOverride];

  v26 = sub_2517D87F8();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = [v21 localization];
    v31 = [v30 localizationTableNameOverride];

    sub_2517D87F8();
  }

  else
  {
    v32 = *MEMORY[0x277CCC1B0];
    sub_2517D87F8();
  }

  *v14 = sub_2517C2280(0, &qword_28110FDB0, 0x277CCD4D8);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9120], v42);
  sub_2517D86A8();
  v33 = v45;
  sub_2517D8648();
  v34 = [v21 objectType];
  [v34 code];

  v35 = v46;
  (*(v16 + 16))(v44, v33, v46);
  (*(v16 + 56))(v47, 1, 1, v35);
  v36 = [v21 displayCategory];
  v37 = [v36 systemImageName];

  sub_2517D87F8();
  v38 = v48;
  sub_2517D8478();
  v39 = sub_2517D8488();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_2517D84A8();
  return (*(v16 + 8))(v33, v35);
}

void sub_2517BD080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2517BD0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2517BD148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2517BD1AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_28110FE20 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D85B8();
  v3 = __swift_project_value_buffer(v2, qword_28110FE28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2517BD254()
{
  sub_2517BD080(0, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2517D8628();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517D86B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2517D87C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2517D8638();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2517D85B8();
  __swift_allocate_value_buffer(v15, qword_28110FE28);
  __swift_project_value_buffer(v15, qword_28110FE28);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2517D8648();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2517D85A8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2517BE548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2517D81A8();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2517BE588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2517D8048();
  *a2 = v5;
  return result;
}

uint64_t sub_2517BE6A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2517D84D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2517BE750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2517D84D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2517BE840(uint64_t a1, uint64_t a2)
{
  sub_2517CEBE4(0, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2517BE8DC(uint64_t a1, uint64_t a2)
{
  sub_2517CEBE4(0, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2517BE97C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2517BE9C8(uint64_t a1, uint64_t a2)
{
  sub_2517CF60C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2517BEA50(uint64_t a1, uint64_t a2)
{
  sub_2517CF60C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2517BEAF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2517D8218();
  *a2 = result;
  return result;
}

uint64_t sub_2517BEB1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2517CF60C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2517BEBE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2517CF60C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2517BECB8()
{
  sub_2517D234C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2517BED6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2517D81F8();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t DateInterval.makeSingleBucketAggregationIntervalComponents()@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_2517D8698();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_2517D86F8();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D86D8();
  sub_2517BF080();
  v12 = sub_2517D86E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2517D9010;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277CC99A8], v12);
  sub_2517BF0D8(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  sub_2517D8608();
  sub_2517D85F8();
  sub_2517D86C8();

  v17 = *(v1 + 8);
  v18 = v23;
  v17(v5, v23);
  v17(v7, v18);
  return (*(v20 + 8))(v11, v21);
}

void sub_2517BF080()
{
  if (!qword_27F45FB38)
  {
    sub_2517D86E8();
    v0 = sub_2517D8A58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FB38);
    }
  }
}

uint64_t sub_2517BF0D8(uint64_t a1)
{
  v2 = sub_2517D86E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2517BF3C4();
    v10 = sub_2517D8948();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2517BF444(&qword_27F45FB48);
      v18 = sub_2517D8798();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2517BF444(&qword_27F45FB50);
          v25 = sub_2517D87A8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2517BF3C4()
{
  if (!qword_27F45FB40)
  {
    sub_2517D86E8();
    sub_2517BF444(&qword_27F45FB48);
    v0 = sub_2517D8958();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FB40);
    }
  }
}

uint64_t sub_2517BF444(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2517D86E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKDisplayCategory.intentSynonyms.getter()
{
  v1 = [v0 categoryID];
  if ((v1 - 2) > 0xB)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return *(&off_2796C9330 + (v1 - 2));
  }
}

uint64_t HKDisplayCategory.url.getter@<X0>(uint64_t a1@<X8>)
{
  switch([v1 categoryID])
  {
    case 1uLL:
    case 2uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x17uLL:
    case 0x1AuLL:
    case 0x1FuLL:

      result = sub_2517D8678();
      break;
    default:
      v4 = sub_2517D8688();
      v5 = *(*(v4 - 8) + 56);

      result = v5(a1, 1, 1, v4);
      break;
  }

  return result;
}

uint64_t sub_2517BF7C0()
{
  v0 = sub_2517D8778();
  __swift_allocate_value_buffer(v0, qword_27F45FB58);
  __swift_project_value_buffer(v0, qword_27F45FB58);
  return sub_2517D8768();
}

uint64_t static Logger.intents.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D8778();
  v3 = __swift_project_value_buffer(v2, qword_27F45FB58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HealthDataTypeEntity.id.getter()
{
  v1 = [*(v0 + 16) displayTypeIdentifierString];
  v2 = sub_2517D87F8();

  return v2;
}

uint64_t HealthDataTypeEntity.name.getter()
{
  v1 = *v0;
  sub_2517D81A8();
  return v3;
}

uint64_t sub_2517BF96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v6 = *a1;
  v7 = a1[1];

  sub_2517D82A8();
  v4 = v3;
  sub_2517D81B8();
}

uint64_t (*HealthDataTypeEntity.name.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2517D8198();
  return sub_2517C22D0;
}

uint64_t static HealthDataTypeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28110FE20 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D85B8();
  v3 = __swift_project_value_buffer(v2, qword_28110FE28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HealthDataTypeEntity.init(displayType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2517BC66C(0, &qword_28110FE60, sub_2517BC6D4, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
  result = sub_2517D81D8();
  *a2 = result;
  *(a2 + 8) = 1;
  *(a2 + 16) = a1;
  return result;
}

uint64_t HealthDataTypeEntity.AvailableHealthDataTypesQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_2517BA780(0, &qword_28110FE68, &qword_28110FDB0, 0x277CCD4D8, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  sub_2517D8088();
  result = sub_2517D8078();
  *a1 = result;
  return result;
}

uint64_t static HealthDataTypeEntity.allEntities(using:matching:)(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v3;
  v5 = [v3 allDisplayTypes];

  if (v5)
  {
    sub_2517C2280(0, &qword_28110FDB8, 0x277D12830);
    v6 = sub_2517D8848();

    v31 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2517D89E8())
    {
      v8 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x253083300](v9, v6);
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 objectType];
        v14 = [v13 enabled];

        if (v14)
        {
          v15 = [v11 objectType];
          v16 = [v15 code];

          switch(v16)
          {
            case 0uLL:
            case 1uLL:
            case 2uLL:
            case 3uLL:
            case 4uLL:
            case 5uLL:
            case 7uLL:
            case 8uLL:
            case 9uLL:
            case 0xAuLL:
            case 0xCuLL:
            case 0xDuLL:
            case 0xEuLL:
            case 0xFuLL:
            case 0x12uLL:
            case 0x13uLL:
            case 0x14uLL:
            case 0x15uLL:
            case 0x16uLL:
            case 0x17uLL:
            case 0x18uLL:
            case 0x19uLL:
            case 0x1AuLL:
            case 0x1BuLL:
            case 0x1CuLL:
            case 0x1DuLL:
            case 0x1EuLL:
            case 0x1FuLL:
            case 0x20uLL:
            case 0x21uLL:
            case 0x22uLL:
            case 0x23uLL:
            case 0x24uLL:
            case 0x25uLL:
            case 0x26uLL:
            case 0x27uLL:
            case 0x28uLL:
            case 0x29uLL:
            case 0x2AuLL:
            case 0x2BuLL:
            case 0x2CuLL:
            case 0x2DuLL:
            case 0x2EuLL:
            case 0x2FuLL:
            case 0x30uLL:
            case 0x31uLL:
            case 0x32uLL:
            case 0x33uLL:
            case 0x34uLL:
            case 0x35uLL:
            case 0x36uLL:
            case 0x37uLL:
            case 0x38uLL:
            case 0x39uLL:
            case 0x3AuLL:
            case 0x3CuLL:
            case 0x3DuLL:
            case 0x3EuLL:
            case 0x3FuLL:
            case 0x46uLL:
            case 0x47uLL:
            case 0x48uLL:
            case 0x49uLL:
            case 0x4BuLL:
            case 0x4EuLL:
            case 0x4FuLL:
            case 0x50uLL:
            case 0x53uLL:
            case 0x57uLL:
            case 0x59uLL:
            case 0x5AuLL:
            case 0x5BuLL:
            case 0x5CuLL:
            case 0x5FuLL:
            case 0x60uLL:
            case 0x61uLL:
            case 0x63uLL:
            case 0x64uLL:
            case 0x65uLL:
            case 0x6EuLL:
            case 0x6FuLL:
            case 0x71uLL:
            case 0x72uLL:
            case 0x76uLL:
            case 0x7CuLL:
            case 0x7DuLL:
            case 0x89uLL:
            case 0x8AuLL:
            case 0x8BuLL:
            case 0x8CuLL:
            case 0x90uLL:
            case 0x91uLL:
            case 0x93uLL:
            case 0x9CuLL:
            case 0x9DuLL:
            case 0x9EuLL:
            case 0x9FuLL:
            case 0xA0uLL:
            case 0xA1uLL:
            case 0xA2uLL:
            case 0xA3uLL:
            case 0xA4uLL:
            case 0xA5uLL:
            case 0xA6uLL:
            case 0xA7uLL:
            case 0xA8uLL:
            case 0xA9uLL:
            case 0xAAuLL:
            case 0xABuLL:
            case 0xACuLL:
            case 0xADuLL:
            case 0xB2uLL:
            case 0xB3uLL:
            case 0xB6uLL:
            case 0xB7uLL:
            case 0xBAuLL:
            case 0xBBuLL:
            case 0xBCuLL:
            case 0xBDuLL:
            case 0xBFuLL:
            case 0xC0uLL:
            case 0xC1uLL:
            case 0xC2uLL:
            case 0xC3uLL:
            case 0xC4uLL:
            case 0xC7uLL:
            case 0xC9uLL:
            case 0xCAuLL:
            case 0xCBuLL:
            case 0xCCuLL:
            case 0xCDuLL:
            case 0xCEuLL:
            case 0xCFuLL:
            case 0xDCuLL:
            case 0xDDuLL:
            case 0xDEuLL:
            case 0xDFuLL:
            case 0xE0uLL:
            case 0xE1uLL:
            case 0xE2uLL:
            case 0xE5uLL:
            case 0xE6uLL:
            case 0xE7uLL:
            case 0xE8uLL:
            case 0xE9uLL:
            case 0xEAuLL:
            case 0xEBuLL:
            case 0xECuLL:
            case 0xEDuLL:
            case 0xF0uLL:
            case 0xF1uLL:
            case 0xF2uLL:
            case 0xF3uLL:
            case 0xF4uLL:
            case 0xF8uLL:
            case 0xF9uLL:
            case 0xFAuLL:
            case 0xFBuLL:
            case 0xFEuLL:
            case 0x100uLL:
            case 0x101uLL:
            case 0x102uLL:
            case 0x103uLL:
            case 0x104uLL:
            case 0x106uLL:
            case 0x107uLL:
            case 0x108uLL:
            case 0x109uLL:
            case 0x10AuLL:
            case 0x10DuLL:
            case 0x10EuLL:
            case 0x110uLL:
            case 0x112uLL:
            case 0x113uLL:
            case 0x114uLL:
            case 0x115uLL:
            case 0x117uLL:
            case 0x118uLL:
            case 0x119uLL:
            case 0x11AuLL:
            case 0x11BuLL:
            case 0x11CuLL:
            case 0x11EuLL:
            case 0x11FuLL:
            case 0x120uLL:
            case 0x126uLL:
            case 0x127uLL:
            case 0x128uLL:
            case 0x129uLL:
            case 0x12DuLL:
            case 0x12EuLL:
            case 0x12FuLL:
            case 0x131uLL:
            case 0x139uLL:
            case 0x13AuLL:
              if ((a2(v11) & 1) == 0)
              {
                goto LABEL_7;
              }

              sub_2517D89A8();
              v17 = *(v31 + 16);
              sub_2517D89C8();
              sub_2517D89D8();
              sub_2517D89B8();
              break;
            default:
              goto LABEL_7;
          }
        }

        else
        {
LABEL_7:
        }

        ++v9;
        if (v12 == i)
        {
          v8 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_19:

    v18 = sub_2517D82A8();
    v31 = sub_2517BB204(v18, sub_2517C13F0);
    sub_2517BB188(&v31);

    v19 = v31;
    if (v31 < 0 || (v31 & 0x4000000000000000) != 0)
    {
      v2 = sub_2517D89E8();
      if (v2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v2 = *(v31 + 16);
      if (v2)
      {
LABEL_22:
        v31 = v8;
        sub_2517BC64C(0, v2 & ~(v2 >> 63), 0);
        if ((v2 & 0x8000000000000000) == 0)
        {
          v20 = v31;
          sub_2517BC66C(0, &qword_28110FE60, sub_2517BC6D4, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
          for (j = 0; j != v2; ++j)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x253083300](j, v19);
            }

            else
            {
              v22 = *(v19 + 8 * j + 32);
            }

            v23 = v22;
            v24 = sub_2517D81D8();
            v31 = v20;
            v26 = *(v20 + 16);
            v25 = *(v20 + 24);
            if (v26 >= v25 >> 1)
            {
              v28 = v24;
              sub_2517BC64C((v25 > 1), v26 + 1, 1);
              v24 = v28;
              v20 = v31;
            }

            *(v20 + 16) = v26 + 1;
            v27 = v20 + 24 * v26;
            *(v27 + 32) = v24;
            *(v27 + 40) = 1;
            *(v27 + 48) = v23;
          }

          return v20;
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    return MEMORY[0x277D84F90];
  }

LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t HealthDataTypeEntity.AvailableHealthDataTypesQuery.healthStore.getter()
{
  v1 = *v0;
  sub_2517D8048();
  return v3;
}

uint64_t sub_2517C0098(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2517D82A8();
  v4 = v2;
  sub_2517D8058();
}

uint64_t (*HealthDataTypeEntity.AvailableHealthDataTypesQuery.healthStore.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2517D8038();
  return sub_2517C0158;
}

void sub_2517C015C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t HealthDataTypeEntity.AvailableHealthDataTypesQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2517C01F0, 0, 0);
}

uint64_t sub_2517C01F0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2517D8048();
  v3 = v0[2];

  v4 = sub_2517C1780(v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2517C028C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2517C02B0, 0, 0);
}

uint64_t sub_2517C02B0()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_2517D8048();
  v3 = v0[2];
  v4 = sub_2517BA8CC(v3);

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2517C033C@<X0>(uint64_t *a1@<X8>)
{
  sub_2517BA780(0, &qword_28110FE68, &qword_28110FDB0, 0x277CCD4D8, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  sub_2517D8088();
  result = sub_2517D8078();
  *a1 = result;
  return result;
}

uint64_t sub_2517C03D4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2517C01F0, 0, 0);
}

uint64_t sub_2517C03F8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA250] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2517C2158();
  *v6 = v2;
  v6[1] = sub_2517C04AC;

  return MEMORY[0x28210C0E8](a1, a2, v7);
}

uint64_t sub_2517C04AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2517C05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2517C0660;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_2517C0660(uint64_t a1)
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

uint64_t sub_2517C0760(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2517C1C2C();
  *v6 = v2;
  v6[1] = sub_2517C22C8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_2517C0814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2517C22C8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_2517C08CC@<X0>(void *a1@<X8>)
{
  if (qword_28110FE40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28110FE48;

  return sub_2517D82A8();
}

uint64_t sub_2517C093C(uint64_t a1)
{
  v2 = sub_2517BC794();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2517C0988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2517C04AC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_2517C0A4C(uint64_t a1)
{
  v2 = sub_2517BC9AC();

  return MEMORY[0x28210C4B8](a1, v2);
}

void *sub_2517C0A98(uint64_t a1, uint64_t a2)
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

  sub_2517C21CC(0, &qword_27F45FBD8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
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

size_t sub_2517C0B3C(size_t a1, int64_t a2, char a3)
{
  result = sub_2517C0E40(a1, a2, a3, *v3, &qword_27F45FBB0, type metadata accessor for HealthViewEntity, type metadata accessor for HealthViewEntity);
  *v3 = result;
  return result;
}

char *sub_2517C0B8C(char *a1, int64_t a2, char a3)
{
  result = sub_2517C0D34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2517C0BAC(size_t a1, int64_t a2, char a3)
{
  result = sub_2517C0E40(a1, a2, a3, *v3, &qword_27F45FBE0, sub_2517C209C, sub_2517C209C);
  *v3 = result;
  return result;
}

char *sub_2517C0BFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517C21CC(0, &qword_28110FDA0, &type metadata for HealthDataTypeEntity, MEMORY[0x277D84560]);
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

char *sub_2517C0D34(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517C21CC(0, &qword_27F45FBB8, &type metadata for HealthTabView, MEMORY[0x277D84560]);
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

size_t sub_2517C0E40(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2517BD080(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_2517C1034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2517C2280(0, &qword_28110FDA8, 0x277D82BB8);
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    v9 = &off_2796C9000;
LABEL_5:
    v29 = v4;
    v10 = *(v6 + 8 * v4);
    v27 = v8;
    v28 = v7;
    while (1)
    {
      v11 = *v7;
      v12 = v10;
      v13 = v11;
      v14 = [v12 v9[127]];
      v15 = [v13 v9[127]];
      v16 = sub_2517D8908();

      if (v16)
      {
        v17 = [v12 localization];
        v18 = [v17 displayName];

        sub_2517D87F8();
        v19 = [v13 localization];
      }

      else
      {
        v20 = [v12 v9[127]];
        v21 = [v20 displayName];

        sub_2517D87F8();
        v19 = [v13 v9[127]];
      }

      v22 = [v19 displayName];

      sub_2517D87F8();
      sub_2517BC0A8();
      v23 = sub_2517D8928();

      v9 = &off_2796C9000;

      if (v23 != -1)
      {
LABEL_4:
        v4 = v29 + 1;
        v7 = v28 + 8;
        v8 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v24 = *v7;
      v10 = *(v7 + 8);
      *v7 = v10;
      *(v7 + 8) = v24;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_2517C12D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253083300](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2517C1350;
  }

  __break(1u);
  return result;
}

void (*sub_2517C1358(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253083300](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2517C22CC;
  }

  __break(1u);
  return result;
}

uint64_t sub_2517C13F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2517D89E8();
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
      result = sub_2517D89E8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2517BA780(0, &qword_27F45FC00, &qword_28110FDB8, 0x277D12830, MEMORY[0x277D83940]);
          sub_2517C221C(&qword_27F45FC08, &qword_27F45FC00, &qword_28110FDB8, 0x277D12830);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2517C12D0(v13, i, a3);
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
        sub_2517C2280(0, &qword_28110FDB8, 0x277D12830);
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

uint64_t sub_2517C15B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2517D89E8();
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
      result = sub_2517D89E8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2517BA780(0, &qword_27F45FBC8, &qword_27F45FBC0, 0x277D12828, MEMORY[0x277D83940]);
          sub_2517C221C(&qword_27F45FBD0, &qword_27F45FBC8, &qword_27F45FBC0, 0x277D12828);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2517C1358(v13, i, a3);
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
        sub_2517C2280(0, &qword_27F45FBC0, 0x277D12828);
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

uint64_t sub_2517C1780(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v2 = v3;
  v4 = [v3 allDisplayTypes];

  if (v4)
  {
    sub_2517C2280(0, &qword_28110FDB8, 0x277D12830);
    v5 = sub_2517D8848();

    v46 = MEMORY[0x277D84F90];
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2517D89E8())
    {
      v8 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v9 = 0;
      v44 = 0;
      v10 = v6 & 0xC000000000000001;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &off_2796C9000;
      v41 = v6 & 0xFFFFFFFFFFFFFF8;
      v42 = v6;
      while (1)
      {
        if (v10)
        {
          v13 = MEMORY[0x253083300](v9, v6);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v13 = *(v6 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v16 = [v13 v12[126]];
        v17 = [v16 enabled];

        if (v17)
        {
          v18 = [v14 v12[126]];
          v19 = [v18 code];

          switch(v19)
          {
            case 0uLL:
            case 1uLL:
            case 2uLL:
            case 3uLL:
            case 4uLL:
            case 5uLL:
            case 7uLL:
            case 8uLL:
            case 9uLL:
            case 0xAuLL:
            case 0xCuLL:
            case 0xDuLL:
            case 0xEuLL:
            case 0xFuLL:
            case 0x12uLL:
            case 0x13uLL:
            case 0x14uLL:
            case 0x15uLL:
            case 0x16uLL:
            case 0x17uLL:
            case 0x18uLL:
            case 0x19uLL:
            case 0x1AuLL:
            case 0x1BuLL:
            case 0x1CuLL:
            case 0x1DuLL:
            case 0x1EuLL:
            case 0x1FuLL:
            case 0x20uLL:
            case 0x21uLL:
            case 0x22uLL:
            case 0x23uLL:
            case 0x24uLL:
            case 0x25uLL:
            case 0x26uLL:
            case 0x27uLL:
            case 0x28uLL:
            case 0x29uLL:
            case 0x2AuLL:
            case 0x2BuLL:
            case 0x2CuLL:
            case 0x2DuLL:
            case 0x2EuLL:
            case 0x2FuLL:
            case 0x30uLL:
            case 0x31uLL:
            case 0x32uLL:
            case 0x33uLL:
            case 0x34uLL:
            case 0x35uLL:
            case 0x36uLL:
            case 0x37uLL:
            case 0x38uLL:
            case 0x39uLL:
            case 0x3AuLL:
            case 0x3CuLL:
            case 0x3DuLL:
            case 0x3EuLL:
            case 0x3FuLL:
            case 0x46uLL:
            case 0x47uLL:
            case 0x48uLL:
            case 0x49uLL:
            case 0x4BuLL:
            case 0x4EuLL:
            case 0x4FuLL:
            case 0x50uLL:
            case 0x53uLL:
            case 0x57uLL:
            case 0x59uLL:
            case 0x5AuLL:
            case 0x5BuLL:
            case 0x5CuLL:
            case 0x5FuLL:
            case 0x60uLL:
            case 0x61uLL:
            case 0x63uLL:
            case 0x64uLL:
            case 0x65uLL:
            case 0x6EuLL:
            case 0x6FuLL:
            case 0x71uLL:
            case 0x72uLL:
            case 0x76uLL:
            case 0x7CuLL:
            case 0x7DuLL:
            case 0x89uLL:
            case 0x8AuLL:
            case 0x8BuLL:
            case 0x8CuLL:
            case 0x90uLL:
            case 0x91uLL:
            case 0x93uLL:
            case 0x9CuLL:
            case 0x9DuLL:
            case 0x9EuLL:
            case 0x9FuLL:
            case 0xA0uLL:
            case 0xA1uLL:
            case 0xA2uLL:
            case 0xA3uLL:
            case 0xA4uLL:
            case 0xA5uLL:
            case 0xA6uLL:
            case 0xA7uLL:
            case 0xA8uLL:
            case 0xA9uLL:
            case 0xAAuLL:
            case 0xABuLL:
            case 0xACuLL:
            case 0xADuLL:
            case 0xB2uLL:
            case 0xB3uLL:
            case 0xB6uLL:
            case 0xB7uLL:
            case 0xBAuLL:
            case 0xBBuLL:
            case 0xBCuLL:
            case 0xBDuLL:
            case 0xBFuLL:
            case 0xC0uLL:
            case 0xC1uLL:
            case 0xC2uLL:
            case 0xC3uLL:
            case 0xC4uLL:
            case 0xC7uLL:
            case 0xC9uLL:
            case 0xCAuLL:
            case 0xCBuLL:
            case 0xCCuLL:
            case 0xCDuLL:
            case 0xCEuLL:
            case 0xCFuLL:
            case 0xDCuLL:
            case 0xDDuLL:
            case 0xDEuLL:
            case 0xDFuLL:
            case 0xE0uLL:
            case 0xE1uLL:
            case 0xE2uLL:
            case 0xE5uLL:
            case 0xE6uLL:
            case 0xE7uLL:
            case 0xE8uLL:
            case 0xE9uLL:
            case 0xEAuLL:
            case 0xEBuLL:
            case 0xECuLL:
            case 0xEDuLL:
            case 0xF0uLL:
            case 0xF1uLL:
            case 0xF2uLL:
            case 0xF3uLL:
            case 0xF4uLL:
            case 0xF8uLL:
            case 0xF9uLL:
            case 0xFAuLL:
            case 0xFBuLL:
            case 0xFEuLL:
            case 0x100uLL:
            case 0x101uLL:
            case 0x102uLL:
            case 0x103uLL:
            case 0x104uLL:
            case 0x106uLL:
            case 0x107uLL:
            case 0x108uLL:
            case 0x109uLL:
            case 0x10AuLL:
            case 0x10DuLL:
            case 0x10EuLL:
            case 0x110uLL:
            case 0x112uLL:
            case 0x113uLL:
            case 0x114uLL:
            case 0x115uLL:
            case 0x117uLL:
            case 0x118uLL:
            case 0x119uLL:
            case 0x11AuLL:
            case 0x11BuLL:
            case 0x11CuLL:
            case 0x11EuLL:
            case 0x11FuLL:
            case 0x120uLL:
            case 0x126uLL:
            case 0x127uLL:
            case 0x128uLL:
            case 0x129uLL:
            case 0x12DuLL:
            case 0x12EuLL:
            case 0x12FuLL:
            case 0x131uLL:
            case 0x139uLL:
            case 0x13AuLL:
              v20 = [v14 displayTypeIdentifierString];
              v21 = sub_2517D87F8();
              v23 = v22;

              v45[0] = v21;
              v45[1] = v23;
              MEMORY[0x28223BE20](v24);
              v40[2] = v45;
              v25 = v44;
              LOBYTE(v20) = sub_2517CAD98(sub_2517C21AC, v40, v43);
              v44 = v25;

              if (v20)
              {
                sub_2517D89A8();
                v26 = *(v46 + 16);
                sub_2517D89C8();
                sub_2517D89D8();
                sub_2517D89B8();
              }

              else
              {
              }

              v11 = v41;
              v6 = v42;
              v12 = &off_2796C9000;
              break;
            default:

              v12 = &off_2796C9000;
              break;
          }
        }

        else
        {
        }

        ++v9;
        if (v15 == i)
        {
          v8 = MEMORY[0x277D84F90];
          v27 = v44;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    v27 = 0;
LABEL_23:

    v28 = sub_2517D82A8();
    v45[0] = sub_2517BB204(v28, sub_2517C13F0);
    v2 = v27;
    sub_2517BB188(v45);
    if (v27)
    {
      goto LABEL_45;
    }

    v29 = v45[0];
    if (v45[0] < 0 || (v45[0] & 0x4000000000000000) != 0)
    {
      v2 = sub_2517D89E8();
      if (v2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v2 = *(v45[0] + 16);
      if (v2)
      {
LABEL_27:
        v45[0] = v8;
        sub_2517BC64C(0, v2 & ~(v2 >> 63), 0);
        if ((v2 & 0x8000000000000000) == 0)
        {
          v30 = v45[0];
          sub_2517BC66C(0, &qword_28110FE60, sub_2517BC6D4, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
          for (j = 0; j != v2; ++j)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x253083300](j, v29);
            }

            else
            {
              v32 = *(v29 + 8 * j + 32);
            }

            v33 = v32;
            v34 = sub_2517D81D8();
            v45[0] = v30;
            v36 = *(v30 + 16);
            v35 = *(v30 + 24);
            if (v36 >= v35 >> 1)
            {
              v38 = v34;
              sub_2517BC64C((v35 > 1), v36 + 1, 1);
              v34 = v38;
              v30 = v45[0];
            }

            *(v30 + 16) = v36 + 1;
            v37 = v30 + 24 * v36;
            *(v37 + 32) = v34;
            *(v37 + 40) = 1;
            *(v37 + 48) = v33;
          }

          return v30;
        }

        __break(1u);
        goto LABEL_43;
      }
    }

    return MEMORY[0x277D84F90];
  }

LABEL_44:
  __break(1u);
LABEL_45:

  __break(1u);
  return result;
}

unint64_t sub_2517C1C2C()
{
  result = qword_27F45FB70;
  if (!qword_27F45FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FB70);
  }

  return result;
}

unint64_t sub_2517C1C84()
{
  result = qword_27F45FB78;
  if (!qword_27F45FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FB78);
  }

  return result;
}

unint64_t sub_2517C1CDC()
{
  result = qword_27F45FB80;
  if (!qword_27F45FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FB80);
  }

  return result;
}

unint64_t sub_2517C1D34()
{
  result = qword_27F45FB88;
  if (!qword_27F45FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FB88);
  }

  return result;
}

unint64_t sub_2517C1D8C()
{
  result = qword_27F45FB90;
  if (!qword_27F45FB90)
  {
    sub_2517C21CC(255, &qword_27F45FB98, &type metadata for HealthDataTypeEntity, MEMORY[0x277D83940]);
    sub_2517BC8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FB90);
  }

  return result;
}

unint64_t sub_2517C1E38()
{
  result = qword_27F45FBA0;
  if (!qword_27F45FBA0)
  {
    sub_2517BC66C(255, &qword_27F45FBA8, sub_2517BC8FC, &type metadata for HealthDataTypeEntity, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FBA0);
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

uint64_t sub_2517C1EDC(uint64_t *a1, int a2)
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

uint64_t sub_2517C1F24(uint64_t result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_2517D82A8();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_2517D82A8();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HealthDataTypeEntity.AvailableHealthDataTypesQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for HealthDataTypeEntity.AvailableHealthDataTypesQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2517C209C()
{
  if (!qword_27F45FBE8)
  {
    type metadata accessor for HealthViewEntity();
    sub_2517C2100();
    v0 = sub_2517D8118();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FBE8);
    }
  }
}

unint64_t sub_2517C2100()
{
  result = qword_27F45FBF0;
  if (!qword_27F45FBF0)
  {
    type metadata accessor for HealthViewEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FBF0);
  }

  return result;
}

unint64_t sub_2517C2158()
{
  result = qword_27F45FBF8;
  if (!qword_27F45FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FBF8);
  }

  return result;
}

void sub_2517C21CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2517C221C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2517BA780(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2517C2280(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthIntentsFrameworkPackage(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthIntentsFrameworkPackage(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2517C23CC()
{
  sub_2517D8AC8();
  MEMORY[0x253083450](0);
  return sub_2517D8AE8();
}

uint64_t sub_2517C2438()
{
  sub_2517D8AC8();
  MEMORY[0x253083450](0);
  return sub_2517D8AE8();
}

id sub_2517C2488(uint64_t a1)
{
  v2 = sub_2517D8688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = [objc_allocWithZone(MEMORY[0x277D0FD60]) init];
  v12 = [v10 objectType];
  v13 = [v11 URLForDataTypeDetailWithObjectType_];

  if (v13)
  {
    sub_2517D8668();

    (*(v3 + 32))(v9, v7, v2);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v15 = result;
      v16 = sub_2517D8658();
      sub_2517D4B0C(MEMORY[0x277D84F90]);
      v17 = sub_2517D8788();

      [v15 openSensitiveURL:v16 withOptions:v17];

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2517C26D4();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2517C26D4()
{
  result = qword_27F45FC10;
  if (!qword_27F45FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC10);
  }

  return result;
}

unint64_t sub_2517C2748()
{
  result = qword_27F45FC18;
  if (!qword_27F45FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC18);
  }

  return result;
}

id static HealthIntentsSupport.healthIntentsBundle.getter()
{
  type metadata accessor for HealthIntentsSupport.BundleSentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_2517C283C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2517BD0E4(0, &qword_28110FE58, MEMORY[0x277CBA248], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  sub_2517BD0E4(0, &qword_28110FE50, MEMORY[0x277CC9130], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v25 = &v24 - v9;
  v10 = sub_2517D8628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2517D86B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2517D87C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2517D8638();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  if (*v1 <= 4u)
  {
    *v1;
  }

  sub_2517D87B8();
  sub_2517D86A8();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9110], v10);
  sub_2517D8648();
  (*(v20 + 56))(v25, 1, 1, v19);
  sub_2517D8478();
  v22 = sub_2517D8488();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  return sub_2517D84A8();
}

unint64_t RecordType.rawValue.getter()
{
  v1 = 0xD000000000000011;
  *v0;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000020;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 > 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 4u)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2517C3488(uint64_t a1)
{
  *(v2 + 160) = a1;
  sub_2517C4608();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v6 = sub_2517D8708();
  *(v2 + 192) = v6;
  v7 = *(v6 - 8);
  *(v2 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 304) = *v1;

  return MEMORY[0x2822009F8](sub_2517C35AC, 0, 0);
}

uint64_t sub_2517C35AC()
{
  if (*(v0 + 304) == 9)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    v3 = [*(v0 + 160) healthStore];
    v4 = sub_2517D8748();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_2517D8728();
    *(v0 + 216) = v7;
    sub_2517BD0E4(0, &qword_27F45FC60, MEMORY[0x277D124E0], MEMORY[0x277D84560]);
    v8 = *(v2 + 72);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v0 + 224) = v10;
    *(v10 + 16) = xmmword_2517D9010;
    v11 = *MEMORY[0x277D124F8];
    *(v0 + 296) = v11;
    v12 = sub_2517D8718();
    *(v0 + 232) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 104);
    *(v0 + 240) = v14;
    *(v0 + 248) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v14(v10 + v9, v11, v12);
    *(v0 + 300) = *MEMORY[0x277D124D8];
    v15 = *(v2 + 104);
    *(v0 + 256) = v15;
    *(v0 + 264) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v10 + v9);
    v16 = swift_task_alloc();
    *(v0 + 272) = v16;
    v16[2] = v7;
    v16[3] = v10;
    v16[4] = 0;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = sub_2517C39B0;

    return MEMORY[0x2822008A0](v0 + 152, 0, 0, 0xD000000000000025, 0x80000002517DAF30, sub_2517C49CC, v16, &_s31UncheckedSendableCategoryCountsVN);
  }

  else
  {
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);
    v24 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2517C3CD4;
    swift_continuation_init();
    *(v0 + 136) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    sub_2517C46A4(0, &qword_27F45FC40, &qword_27F45FC48, 0x277D123D8, MEMORY[0x277D83940]);
    sub_2517C470C();
    sub_2517D8888();
    (*(v20 + 32))(boxed_opaque_existential_0, v19, v21);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2517C40AC;
    *(v0 + 104) = &block_descriptor;
    [v24 fetchAllAccountsWithCompletion_];
    (*(v20 + 8))(boxed_opaque_existential_0, v21);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2517C39B0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;

  v5 = *(v2 + 272);
  v6 = *(v2 + 224);
  if (v0)
  {

    v7 = sub_2517C3C5C;
  }

  else
  {

    v7 = sub_2517C3B1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2517C3B1C()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 300);
  v4 = *(v0 + 248);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  (*(v0 + 240))(v5, *(v0 + 296), *(v0 + 232));
  v2(v5, v3, v6);
  if (*(v7 + 16))
  {
    v8 = sub_2517D47FC(*(v0 + 208));
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    if (v13)
    {
      v14 = *(*(v7 + 56) + 8 * v8);

      (*(v12 + 8))(v10, v11);

      v15 = v14 > 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *(v0 + 208);
    v16 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
  }

  (*(v12 + 8))(v10, v11);
  v15 = 0;
LABEL_6:
  v17 = *(v0 + 208);
  v18 = *(v0 + 184);

  v19 = *(v0 + 8);

  return v19(v15);
}

uint64_t sub_2517C3C5C()
{
  v1 = v0[27];

  v2 = v0[26];
  v3 = v0[23];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2517C3CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_2517C3E98;
  }

  else
  {
    v3 = sub_2517C3DE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2517C3DE4()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[18];
    }

    v8 = v0[18];
    v2 = sub_2517D89E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[26];
  v4 = v0[23];

  v5 = v0[1];

  return v5(v2 != 0);
}

uint64_t sub_2517C3E98()
{
  v19 = v0;
  v1 = v0[36];
  swift_willThrow();
  if (qword_27F45FAD0 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = sub_2517D8778();
  __swift_project_value_buffer(v3, qword_27F45FB58);
  v4 = v2;
  v5 = sub_2517D8758();
  v6 = sub_2517D88F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2517BA108(0x795464726F636552, 0xEA00000000006570, &v18);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2517B8000, v5, v6, "[%s]: Failed to fetch all CHR accounts: %@", v9, 0x16u);
    sub_2517C4944(v10);
    MEMORY[0x2530838C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2530838C0](v11, -1, -1);
    MEMORY[0x2530838C0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[26];
  v15 = v0[23];

  v16 = v0[1];

  return v16(0);
}

void sub_2517C40AC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2517C4608();
    v4 = a3;
    sub_2517D8898();
  }

  else
  {
    sub_2517C2280(0, &qword_27F45FC48, 0x277D123D8);
    sub_2517D8848();
    sub_2517C4608();
    sub_2517D88A8();
  }
}

HealthIntents::RecordType_optional __swiftcall RecordType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517D8A18();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2517C41D8()
{
  result = qword_27F45FC20;
  if (!qword_27F45FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC20);
  }

  return result;
}

uint64_t sub_2517C422C()
{
  v1 = *v0;
  sub_2517D8AC8();
  sub_2517C427C();
  return sub_2517D8AE8();
}

uint64_t sub_2517C427C()
{
  sub_2517D8818();
}

uint64_t sub_2517C4394()
{
  v1 = *v0;
  sub_2517D8AC8();
  sub_2517C427C();
  return sub_2517D8AE8();
}

unint64_t sub_2517C43E4@<X0>(unint64_t *a1@<X8>)
{
  result = RecordType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2517C4410()
{
  result = qword_27F45FC28;
  if (!qword_27F45FC28)
  {
    sub_2517C49D8(255, &qword_27F45FC30, &type metadata for RecordType, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2517C4608()
{
  if (!qword_27F45FC38)
  {
    sub_2517C46A4(255, &qword_27F45FC40, &qword_27F45FC48, 0x277D123D8, MEMORY[0x277D83940]);
    sub_2517C470C();
    v0 = sub_2517D88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FC38);
    }
  }
}

void sub_2517C46A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2517C2280(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2517C470C()
{
  result = qword_27F45FC50;
  if (!qword_27F45FC50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F45FC50);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

char *sub_2517C4838(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517C49D8(0, &qword_28110FD90, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_2517C4944(uint64_t a1)
{
  sub_2517C46A4(0, &qword_27F45FC58, &qword_28110FDA8, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2517C49CC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2517D2158(a1);
}

void sub_2517C49D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2517C4A74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static MetadataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2517C4B88(a1, v11);
  sub_2517C4BEC();
  if (!swift_dynamicCast())
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v3 = &v8;
LABEL_6:
    sub_2517C4C50(v3);
    return 0;
  }

  v13[0] = v8;
  v13[1] = v9;
  v14 = v10;
  sub_2517C4B88(a2, &v8);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_2517C4CFC(v13);
    v3 = &v5;
    goto LABEL_6;
  }

  v11[0] = v5;
  v11[1] = v6;
  v12 = v7;
  static MetadataValue.== infix(_:_:)(v13, v11);
  sub_2517C4CFC(v11);
  sub_2517C4CFC(v13);
  return 0;
}

uint64_t sub_2517C4B88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2517C4BEC()
{
  result = qword_27F45FC68;
  if (!qword_27F45FC68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F45FC68);
  }

  return result;
}

uint64_t sub_2517C4C50(uint64_t a1)
{
  sub_2517C4CAC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2517C4CAC()
{
  if (!qword_27F45FC70)
  {
    v0 = sub_2517D8918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FC70);
    }
  }
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

uint64_t sub_2517C4D5C(uint64_t a1, int a2)
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

uint64_t sub_2517C4DA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2517C4E00()
{
  result = qword_27F45FC78;
  if (!qword_27F45FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC78);
  }

  return result;
}

uint64_t type metadata accessor for HealthViewEntity()
{
  result = qword_27F45FD18;
  if (!qword_27F45FD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2517C4EBC()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517D86B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2517D87C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2517D8638();
  __swift_allocate_value_buffer(v9, qword_27F461F58);
  __swift_project_value_buffer(v9, qword_27F461F58);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2517D8648();
}

uint64_t sub_2517C50A8()
{
  sub_2517CB568(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_2517D8628();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517D86B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2517D87C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2517D8638();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_2517CB504(0, &qword_27F45FD90, MEMORY[0x277CB9F98], MEMORY[0x277D83D88]);
  v16 = v15;
  __swift_allocate_value_buffer(v15, qword_27F461F70);
  v17 = __swift_project_value_buffer(v16, qword_27F461F70);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v20[0]);
  sub_2517D8648();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_2517D8408();
  v18 = sub_2517D83F8();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_2517C5448(uint64_t a1)
{
  v3 = type metadata accessor for HealthViewEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_2517CB59C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2517D8208();
  return sub_2517CB850(a1, type metadata accessor for HealthViewEntity);
}

void (*sub_2517C54EC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_2517D81E8();
  return sub_2517C015C;
}

unint64_t sub_2517C5564()
{
  result = qword_27F45FC88;
  if (!qword_27F45FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC88);
  }

  return result;
}

unint64_t sub_2517C55BC()
{
  result = qword_27F45FC90;
  if (!qword_27F45FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC90);
  }

  return result;
}

unint64_t sub_2517C5614()
{
  result = qword_27F45FC98;
  if (!qword_27F45FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FC98);
  }

  return result;
}

uint64_t sub_2517C571C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FAE0 != -1)
  {
    swift_once();
  }

  sub_2517CB504(0, &qword_27F45FD90, MEMORY[0x277CB9F98], MEMORY[0x277D83D88]);
  v3 = __swift_project_value_buffer(v2, qword_27F461F70);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517C57C4(uint64_t a1)
{
  v2[2] = a1;
  v3 = type metadata accessor for HealthViewEntity();
  v2[3] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[4] = v5;
  v2[5] = v6;

  return MEMORY[0x2822009F8](sub_2517C585C, 0, 0);
}

uint64_t sub_2517C585C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_2517D81F8();
  v4 = v1 + *(v3 + 24);
  v6 = *v4;
  v5 = *(v4 + 8);
  sub_2517D82A8();
  v7 = sub_2517CB850(v1, type metadata accessor for HealthViewEntity);
  v6(v7);

  v8 = v0[4];
  v9 = v0[2];
  sub_2517D8178();

  v10 = v0[1];

  return v10();
}

uint64_t sub_2517C594C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2517CAE9C();
  *a1 = result;
  return result;
}

uint64_t sub_2517C5974(uint64_t a1)
{
  v2 = sub_2517C5564();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517C59B0()
{
  result = qword_27F45FCA0;
  if (!qword_27F45FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FCA0);
  }

  return result;
}

uint64_t sub_2517C5A04()
{
  sub_2517CB568(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_2517D8628();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517D86B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2517D87C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2517D8638();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2517D85B8();
  __swift_allocate_value_buffer(v15, qword_27F461F88);
  __swift_project_value_buffer(v15, qword_27F461F88);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2517D8648();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2517D85A8();
}

uint64_t sub_2517C5CD8()
{
  sub_2517CB504(0, &qword_28110FE68, sub_2517BA230, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  sub_2517D8088();
  result = sub_2517D8078();
  qword_27F461FA0 = result;
  return result;
}

uint64_t sub_2517C5D6C()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517D86B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2517D87C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517CB504(0, &qword_27F45FD70, sub_2517CB730, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2517D9780;
  *(v11 + 56) = type metadata accessor for UnnamedSectionProvider();
  *(v11 + 64) = &off_2863AC8F0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 32));
  v26 = sub_2517D8638();
  v13 = *(v26 - 8);
  v27 = *(v13 + 56);
  v28 = v13 + 56;
  v27(boxed_opaque_existential_0, 1, 1, v26);
  sub_2517D8048();
  v14 = v29;
  v15 = type metadata accessor for RecordsSectionProvider();
  *(v11 + 96) = v15;
  *(v11 + 104) = &off_2863AC9F8;
  v16 = __swift_allocate_boxed_opaque_existential_0((v11 + 72));
  *v16 = v14;
  v17 = *(v15 + 20);
  v24[0] = v10;
  sub_2517D87B8();
  sub_2517D86A8();
  v18 = *MEMORY[0x277CC9110];
  v19 = *(v1 + 104);
  v24[1] = v1 + 104;
  v25 = v19;
  v19(v4, v18, v0);
  sub_2517D8648();
  v20 = v26;
  v21 = v27;
  v27((v16 + v17), 0, 1, v26);
  *(v11 + 136) = type metadata accessor for CategoriesSectionProvider();
  *(v11 + 144) = &off_2863AC8A0;
  v22 = __swift_allocate_boxed_opaque_existential_0((v11 + 112));
  sub_2517D87B8();
  sub_2517D86A8();
  v25(v4, v18, v0);
  sub_2517D8648();
  v21(v22, 0, 1, v20);
  return v11;
}

uint64_t sub_2517C6128(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2517C6148, 0, 0);
}

uint64_t sub_2517C6148()
{
  v1 = v0[8];
  v2 = sub_2517C5D6C();
  v0[9] = v2;
  v3 = *(v2 + 16);
  v0[10] = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v0[11] = 0;
    v0[12] = v4;
    sub_2517C4B88(v2 + 32, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
    v7 = *(v6 + 24);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_2517C62E8;
    v10 = v0[7];

    return v14(v10, v5, v6);
  }

  else
  {

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2517C62E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  return MEMORY[0x2822009F8](sub_2517C63F0, 0, 0);
}

uint64_t sub_2517C63F0()
{
  v1 = v0[14];
  result = v0[12];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[12];
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v16 = v4 + v3;
    }

    else
    {
      v16 = v4;
    }

    v7 = sub_2517CABA4(isUniquelyReferenced_nonNull_native, v16, 1, v0[12], &qword_27F45FBB0, type metadata accessor for HealthViewEntity, type metadata accessor for HealthViewEntity);
    if (*(v1 + 16))
    {
LABEL_5:
      v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
      result = type metadata accessor for HealthViewEntity();
      v9 = *(result - 8);
      if (v8 >= v3)
      {
        v10 = v0[14];
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = *(v9 + 72);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v13 = *(v7 + 16);
        v14 = __OFADD__(v13, v3);
        v15 = v13 + v3;
        if (!v14)
        {
          *(v7 + 16) = v15;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v17 = v0[14];

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v18 = v0[11] + 1;
  if (v18 == v0[10])
  {
    v19 = v0[9];

    v20 = v0[1];

    return v20(v7);
  }

  else
  {
    v0[11] = v18;
    v0[12] = v7;
    sub_2517C4B88(v0[9] + 40 * v18 + 32, (v0 + 2));
    v21 = v0[5];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v21);
    v23 = *(v22 + 24);
    v27 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[13] = v25;
    *v25 = v0;
    v25[1] = sub_2517C62E8;
    v26 = v0[7];

    return v27(v26, v21, v22);
  }
}

uint64_t sub_2517C66C8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for HealthViewEntity();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_2517CB7B4(0, &qword_27F45FBE8, MEMORY[0x277CB9C70]);
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_2517CB794(0);
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_2517CB568(0);
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v14 = sub_2517D8638();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517C6920, 0, 0);
}

uint64_t sub_2517C6920()
{
  v1 = v0[10];
  result = sub_2517C5D6C();
  v0[29] = result;
  v3 = *(result + 16);
  v0[30] = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v0[31] = 0;
    v0[32] = v4;
    if (*(result + 16))
    {
      sub_2517C4B88(result + 32, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
      v7 = *(v6 + 16);
      v20 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[33] = v9;
      *v9 = v0;
      v9[1] = sub_2517C6BC8;

      return v20(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[24];
    v13 = v0[21];
    v14 = v0[22];
    v15 = v0[17];
    v19 = v0[14];
    v21 = v0[13];
    v16 = v0[11];
    v17 = v0[9];
    (*(v0[26] + 56))(v0[23], 1, 1, v0[25]);
    sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
    sub_2517D8448();

    v18 = v0[1];

    return v18();
  }

  return result;
}

uint64_t sub_2517C6BC8(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_2517C6CC8, 0, 0);
}

uint64_t sub_2517C6CC8()
{
  v1 = v0[34];
  if (!*(v1 + 16))
  {
    v22 = v0[34];

    v23 = v0[32];
    goto LABEL_26;
  }

  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v25 = v0[27];
    v24 = v0[28];
    v26 = v0[25];
    v27 = v0[26];
    (*(v27 + 32))(v24, v0[24], v26);
    (*(v27 + 16))(v25, v24, v26);
    v28 = *(v1 + 16);
    v29 = v0[34];
    if (v28)
    {
      v30 = v0[12];
      v0[8] = MEMORY[0x277D84F90];
      sub_2517C0BAC(0, v28, 0);
      v31 = v0[8];
      v32 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v33 = *(v30 + 72);
      do
      {
        v34 = v0[18];
        v36 = v0[13];
        v35 = v0[14];
        v37 = v0[11];
        sub_2517CB59C(v32, v35);
        sub_2517CB59C(v35, v36);
        sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
        sub_2517D8128();
        sub_2517CB850(v35, type metadata accessor for HealthViewEntity);
        v0[8] = v31;
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_2517C0BAC(v38 > 1, v39 + 1, 1);
          v31 = v0[8];
        }

        v40 = v0[18];
        v41 = v0[15];
        v42 = v0[16];
        *(v31 + 16) = v39 + 1;
        (*(v42 + 32))(v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v40, v41);
        v32 += v33;
        --v28;
      }

      while (v28);
      v43 = v0[34];
    }

    else
    {
      v54 = v0[34];

      v31 = MEMORY[0x277D84F90];
    }

    v55 = v0[32];
    v56 = v0[27];
    v57 = v0[22];
    v58 = v0[11];
    v59 = sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
    MEMORY[0x253082DA0](v56, v31, v58, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v0[32];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_2517CABA4(0, v23[2] + 1, 1, v0[32], &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v62 = v23[2];
    v61 = v23[3];
    if (v62 >= v61 >> 1)
    {
      v23 = sub_2517CABA4(v61 > 1, v62 + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v63 = v0[22];
    v64 = v0[19];
    v65 = v0[20];
    (*(v0[26] + 8))(v0[28], v0[25]);
    v23[2] = v62 + 1;
    (*(v65 + 32))(v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v62, v63, v64);
    goto LABEL_26;
  }

  sub_2517CB850(v0[24], sub_2517CB568);
  v7 = *(v1 + 16);
  v8 = v0[34];
  if (v7)
  {
    v9 = v0[12];
    v0[7] = MEMORY[0x277D84F90];
    sub_2517C0BAC(0, v7, 0);
    v10 = v0[7];
    v11 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v13 = v0[17];
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      sub_2517CB59C(v11, v14);
      sub_2517CB59C(v14, v15);
      sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
      sub_2517D8128();
      sub_2517CB850(v14, type metadata accessor for HealthViewEntity);
      v0[7] = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2517C0BAC(v17 > 1, v18 + 1, 1);
        v10 = v0[7];
      }

      v20 = v0[16];
      v19 = v0[17];
      v21 = v0[15];
      *(v10 + 16) = v18 + 1;
      (*(v20 + 32))(v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, v19, v21);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  v44 = v0[34];

  v45 = v0[32];
  v46 = v0[21];
  v47 = v0[11];
  sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
  sub_2517D8418();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[32];
  if ((v48 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v50 = v23[2];
    v49 = v23[3];
    if (v50 >= v49 >> 1)
    {
      v23 = sub_2517CABA4(v49 > 1, v50 + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v52 = v0[20];
    v51 = v0[21];
    v53 = v0[19];
    v23[2] = v50 + 1;
    (*(v52 + 32))(v23 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, v51, v53);
LABEL_26:
    v66 = v0[30];
    v67 = v0[31] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v67 == v66)
    {
      v68 = v0[29];

      v70 = v0[27];
      v69 = v0[28];
      v71 = v0[24];
      v73 = v0[21];
      v72 = v0[22];
      v85 = v0[18];
      v86 = v0[17];
      v87 = v0[14];
      v88 = v0[13];
      v74 = v0[11];
      v75 = v0[9];
      (*(v0[26] + 56))(v0[23], 1, 1, v0[25]);
      sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
      sub_2517D8448();

      v76 = v0[1];

      return v76();
    }

    v78 = v0[31] + 1;
    v0[31] = v78;
    v0[32] = v23;
    v79 = v0[29];
    if (v78 < *(v79 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    v23 = sub_2517CABA4(0, v23[2] + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
  }

  sub_2517C4B88(v79 + 40 * v78 + 32, (v0 + 2));
  v80 = v0[5];
  v81 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v80);
  v82 = *(v81 + 16);
  v89 = (v82 + *v82);
  v83 = v82[1];
  v84 = swift_task_alloc();
  v0[33] = v84;
  *v84 = v0;
  v84[1] = sub_2517C6BC8;

  return v89(v80, v81);
}

uint64_t sub_2517C75E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HealthViewEntity();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_2517CB7B4(0, &qword_27F45FBE8, MEMORY[0x277CB9C70]);
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_2517CB794(0);
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_2517CB568(0);
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v16 = sub_2517D8638();
  v4[27] = v16;
  v17 = *(v16 - 8);
  v4[28] = v17;
  v18 = *(v17 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517C7844, 0, 0);
}

uint64_t sub_2517C7844()
{
  v1 = v0[12];
  result = sub_2517C5D6C();
  v0[31] = result;
  v3 = *(result + 16);
  v0[32] = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v0[33] = 0;
    v0[34] = v4;
    if (*(result + 16))
    {
      sub_2517C4B88(result + 32, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
      v7 = *(v6 + 32);
      v22 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[35] = v9;
      *v9 = v0;
      v9[1] = sub_2517C7AF4;
      v11 = v0[10];
      v10 = v0[11];

      return v22(v11, v10, v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[26];
    v15 = v0[23];
    v16 = v0[24];
    v17 = v0[19];
    v21 = v0[16];
    v23 = v0[15];
    v18 = v0[13];
    v19 = v0[9];
    (*(v0[28] + 56))(v0[25], 1, 1, v0[27]);
    sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
    sub_2517D8448();

    v20 = v0[1];

    return v20();
  }

  return result;
}

uint64_t sub_2517C7AF4(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_2517C7BF4, 0, 0);
}

uint64_t sub_2517C7BF4()
{
  v1 = v0[36];
  if (!*(v1 + 16))
  {
    v22 = v0[36];

    v23 = v0[34];
    goto LABEL_26;
  }

  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v25 = v0[29];
    v24 = v0[30];
    v26 = v0[27];
    v27 = v0[28];
    (*(v27 + 32))(v24, v0[26], v26);
    (*(v27 + 16))(v25, v24, v26);
    v28 = *(v1 + 16);
    v29 = v0[36];
    if (v28)
    {
      v30 = v0[14];
      v0[8] = MEMORY[0x277D84F90];
      sub_2517C0BAC(0, v28, 0);
      v31 = v0[8];
      v32 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v33 = *(v30 + 72);
      do
      {
        v34 = v0[20];
        v36 = v0[15];
        v35 = v0[16];
        v37 = v0[13];
        sub_2517CB59C(v32, v35);
        sub_2517CB59C(v35, v36);
        sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
        sub_2517D8128();
        sub_2517CB850(v35, type metadata accessor for HealthViewEntity);
        v0[8] = v31;
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_2517C0BAC(v38 > 1, v39 + 1, 1);
          v31 = v0[8];
        }

        v40 = v0[20];
        v41 = v0[17];
        v42 = v0[18];
        *(v31 + 16) = v39 + 1;
        (*(v42 + 32))(v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v40, v41);
        v32 += v33;
        --v28;
      }

      while (v28);
      v43 = v0[36];
    }

    else
    {
      v54 = v0[36];

      v31 = MEMORY[0x277D84F90];
    }

    v55 = v0[34];
    v56 = v0[29];
    v57 = v0[24];
    v58 = v0[13];
    v59 = sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
    MEMORY[0x253082DA0](v56, v31, v58, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v0[34];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_2517CABA4(0, v23[2] + 1, 1, v0[34], &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v62 = v23[2];
    v61 = v23[3];
    if (v62 >= v61 >> 1)
    {
      v23 = sub_2517CABA4(v61 > 1, v62 + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v63 = v0[24];
    v64 = v0[21];
    v65 = v0[22];
    (*(v0[28] + 8))(v0[30], v0[27]);
    v23[2] = v62 + 1;
    (*(v65 + 32))(v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v62, v63, v64);
    goto LABEL_26;
  }

  sub_2517CB850(v0[26], sub_2517CB568);
  v7 = *(v1 + 16);
  v8 = v0[36];
  if (v7)
  {
    v9 = v0[14];
    v0[7] = MEMORY[0x277D84F90];
    sub_2517C0BAC(0, v7, 0);
    v10 = v0[7];
    v11 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v13 = v0[19];
      v15 = v0[15];
      v14 = v0[16];
      v16 = v0[13];
      sub_2517CB59C(v11, v14);
      sub_2517CB59C(v14, v15);
      sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
      sub_2517D8128();
      sub_2517CB850(v14, type metadata accessor for HealthViewEntity);
      v0[7] = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2517C0BAC(v17 > 1, v18 + 1, 1);
        v10 = v0[7];
      }

      v20 = v0[18];
      v19 = v0[19];
      v21 = v0[17];
      *(v10 + 16) = v18 + 1;
      (*(v20 + 32))(v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, v19, v21);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  v44 = v0[36];

  v45 = v0[34];
  v46 = v0[23];
  v47 = v0[13];
  sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
  sub_2517D8418();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[34];
  if ((v48 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v50 = v23[2];
    v49 = v23[3];
    if (v50 >= v49 >> 1)
    {
      v23 = sub_2517CABA4(v49 > 1, v50 + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
    }

    v52 = v0[22];
    v51 = v0[23];
    v53 = v0[21];
    v23[2] = v50 + 1;
    (*(v52 + 32))(v23 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, v51, v53);
LABEL_26:
    v66 = v0[32];
    v67 = v0[33] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v67 == v66)
    {
      v68 = v0[31];

      v70 = v0[29];
      v69 = v0[30];
      v71 = v0[26];
      v73 = v0[23];
      v72 = v0[24];
      v87 = v0[20];
      v88 = v0[19];
      v89 = v0[16];
      v90 = v0[15];
      v74 = v0[13];
      v75 = v0[9];
      (*(v0[28] + 56))(v0[25], 1, 1, v0[27]);
      sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
      sub_2517D8448();

      v76 = v0[1];

      return v76();
    }

    v78 = v0[33] + 1;
    v0[33] = v78;
    v0[34] = v23;
    v79 = v0[31];
    if (v78 < *(v79 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    v23 = sub_2517CABA4(0, v23[2] + 1, 1, v23, &qword_27F45FD88, sub_2517CB794, sub_2517CB794);
  }

  sub_2517C4B88(v79 + 40 * v78 + 32, (v0 + 2));
  v80 = v0[5];
  v81 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v80);
  v82 = *(v81 + 32);
  v91 = (v82 + *v82);
  v83 = v82[1];
  v84 = swift_task_alloc();
  v0[35] = v84;
  *v84 = v0;
  v84[1] = sub_2517C7AF4;
  v86 = v0[10];
  v85 = v0[11];

  return v91(v86, v85, v80, v81);
}

uint64_t sub_2517C851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2517C04AC;

  return sub_2517C75E8(a1, a2, a3, v8);
}

unint64_t sub_2517C85D8()
{
  result = qword_27F45FCA8;
  if (!qword_27F45FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FCA8);
  }

  return result;
}

uint64_t sub_2517C862C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2517C86DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517C22C8;

  return sub_2517C66C8(a1, v4);
}

unint64_t sub_2517C8780()
{
  result = qword_27F45FCC0;
  if (!qword_27F45FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FCC0);
  }

  return result;
}

unint64_t sub_2517C87D8()
{
  result = qword_27F45FCC8;
  if (!qword_27F45FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FCC8);
  }

  return result;
}

uint64_t sub_2517C8874@<X0>(uint64_t *a1@<X8>)
{
  sub_2517CB504(0, &qword_28110FE68, sub_2517BA230, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  sub_2517D8088();
  result = sub_2517D8078();
  *a1 = result;
  return result;
}

uint64_t sub_2517C8910(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517CBA50;

  return sub_2517C6128(a1, v4);
}

uint64_t sub_2517C89AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2517C22C8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_2517C8AF0@<X0>(void *a1@<X8>)
{
  if (qword_27F45FAF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F461FA0;

  return sub_2517D82A8();
}

uint64_t sub_2517C8BF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2517C8C34@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2517C8D44(uint64_t a1)
{
  v2 = sub_2517C862C(&qword_27F45FCD0, type metadata accessor for HealthViewEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2517C8E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2517D84D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2517C8E7C(uint64_t a1)
{
  v2 = sub_2517C862C(&qword_27F45FCF8, type metadata accessor for HealthViewEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_2517C8F30()
{
  result = sub_2517D84D8();
  if (v1 <= 0x3F)
  {
    result = sub_2517C8FC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2517C8FC4()
{
  result = qword_27F45FD28;
  if (!qword_27F45FD28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F45FD28);
  }

  return result;
}

void sub_2517C9024()
{
  if (!qword_27F45FD38)
  {
    sub_2517C909C();
    sub_2517C90F0();
    v0 = sub_2517D8508();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FD38);
    }
  }
}

unint64_t sub_2517C909C()
{
  result = qword_27F45FD40;
  if (!qword_27F45FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FD40);
  }

  return result;
}

unint64_t sub_2517C90F0()
{
  result = qword_27F45FD48;
  if (!qword_27F45FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FD48);
  }

  return result;
}

uint64_t sub_2517C9144(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(type metadata accessor for HealthViewEntity() - 8);
  v1[5] = v2;
  v3 = *(v2 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_2517C9238;

  return sub_2517D1200();
}

uint64_t sub_2517C9238(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2517C9338, 0, 0);
}

void sub_2517C9338()
{
  v1 = v0[9];
  v20 = *(v1 + 16);
  if (v20)
  {
    v2 = 0;
    v19 = v0[7];
    v3 = v0[5];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[7];
      v6 = v0[4];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_2517CB59C(v0[9] + v7 + v8 * v2, v5);
      v9 = *(v19 + 8);
      v0[2] = *v5;
      v0[3] = v9;
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 2;
      LOBYTE(v6) = sub_2517CAD98(sub_2517CB664, v10, v6);

      v11 = v0[7];
      if (v6)
      {
        sub_2517CB600(v11, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2517C0B3C(0, *(v4 + 16) + 1, 1);
        }

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_2517C0B3C(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[6];
        *(v4 + 16) = v13 + 1;
        sub_2517CB600(v14, v4 + v7 + v13 * v8);
      }

      else
      {
        sub_2517CB850(v11, type metadata accessor for HealthViewEntity);
      }

      if (v20 == ++v2)
      {
        v15 = v0[9];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];

    v18(v4);
  }
}

uint64_t sub_2517C954C(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(type metadata accessor for HealthViewEntity() - 8);
  v1[5] = v2;
  v3 = *(v2 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_2517C9640;

  return sub_2517CED98();
}

uint64_t sub_2517C9640(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2517C9740, 0, 0);
}

void sub_2517C9740()
{
  v1 = v0[9];
  v20 = *(v1 + 16);
  if (v20)
  {
    v2 = 0;
    v19 = v0[7];
    v3 = v0[5];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[7];
      v6 = v0[4];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_2517CB59C(v0[9] + v7 + v8 * v2, v5);
      v9 = *(v19 + 8);
      v0[2] = *v5;
      v0[3] = v9;
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 2;
      LOBYTE(v6) = sub_2517CAD98(sub_2517CBA34, v10, v6);

      v11 = v0[7];
      if (v6)
      {
        sub_2517CB600(v11, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2517C0B3C(0, *(v4 + 16) + 1, 1);
        }

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_2517C0B3C(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[6];
        *(v4 + 16) = v13 + 1;
        sub_2517CB600(v14, v4 + v7 + v13 * v8);
      }

      else
      {
        sub_2517CB850(v11, type metadata accessor for HealthViewEntity);
      }

      if (v20 == ++v2)
      {
        v15 = v0[9];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];

    v18(v4);
  }
}

uint64_t sub_2517C9954(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(type metadata accessor for HealthViewEntity() - 8);
  v1[5] = v2;
  v3 = *(v2 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_2517C9640;

  return sub_2517CCB50();
}

uint64_t sub_2517C9A48(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2517D8638();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for HealthViewEntity();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[16] = v9;
  *v9 = v2;
  v9[1] = sub_2517C9BDC;
  v10 = *MEMORY[0x277D85DE8];

  return sub_2517D1200();
}

uint64_t sub_2517C9BDC(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2517CB9AC, 0, 0);
}

uint64_t sub_2517C9D08(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2517D8638();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for HealthViewEntity();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[16] = v9;
  *v9 = v2;
  v9[1] = sub_2517C9BDC;
  v10 = *MEMORY[0x277D85DE8];

  return sub_2517CED98();
}

uint64_t sub_2517C9E9C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2517D8638();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for HealthViewEntity();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[16] = v9;
  *v9 = v2;
  v9[1] = sub_2517CA030;
  v10 = *MEMORY[0x277D85DE8];

  return sub_2517CCB50();
}

uint64_t sub_2517CA030(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2517CA15C, 0, 0);
}

uint64_t sub_2517CA15C()
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v44 = *(v1 + 16);
  if (v44)
  {
    v2 = 0;
    v42 = v0[12];
    v43 = v0[13];
    v3 = v0[9];
    v4 = (v3 + 16);
    v41 = v3;
    v5 = (v3 + 8);
    v6 = MEMORY[0x277D84F90];
    v49 = (v3 + 8);
    v50 = (v3 + 16);
    v40 = v0[17];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_35;
      }

      v47 = v2;
      v48 = v6;
      v45 = *(v43 + 72);
      v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      sub_2517CB59C(v0[17] + v46 + v45 * v2, v0[15]);
      sub_2517CB504(0, &qword_27F45FD68, MEMORY[0x277CC9130], MEMORY[0x277D84560]);
      v8 = *(v41 + 72);
      v9 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2517D9010;
      v11 = (v10 + 16);
      v12 = *(v42 + 20);
      v13 = v10;
      sub_2517D8498();
      v14 = sub_2517D84C8();
      v15 = *(v14 + 16);
      if (v15)
      {
        v27 = v14;
        v28 = sub_2517CABA4(1uLL, v15 + 1, 1, v13, &qword_27F45FD68, MEMORY[0x277CC9130], MEMORY[0x277CC9130]);
        if (!*(v27 + 16))
        {

          __break(1u);
          return result;
        }

        v13 = v28;
        v11 = (v28 + 16);
        if ((*(v28 + 24) >> 1) - *(v28 + 16) < v15)
        {
          goto LABEL_36;
        }

        v29 = v0[8];
        swift_arrayInitWithCopy();

        v30 = v13[2];
        v31 = __OFADD__(v30, v15);
        v16 = v30 + v15;
        if (v31)
        {
          goto LABEL_37;
        }

        *v11 = v16;
      }

      else
      {

        v16 = *v11;
        if (!*v11)
        {
          sub_2517CB850(v0[15], type metadata accessor for HealthViewEntity);

LABEL_4:
          v1 = v40;
          v7 = v47;
          v6 = v48;
          goto LABEL_5;
        }
      }

      v17 = 0;
      v18 = 0;
      v19 = v13 + v9;
      v20 = *v4;
      v53 = v16 - 1;
      (*v4)(v0[11], v19, v0[8]);
      while (1)
      {
        v21 = v0[11];
        if ((v17 & 1) == 0)
        {
          break;
        }

        (*v5)(v0[11], v0[8]);
        if (v53 == v18)
        {

          goto LABEL_19;
        }

        v17 = 1;
LABEL_10:
        ++v18;
        v19 += v8;
        if (v18 >= *v11)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        (v20)(v0[11], v19, v0[8]);
      }

      v51 = v0[7];
      v52 = v0[8];
      v22 = v0[6];
      v20(v0[10], v21);
      v0[2] = sub_2517D8808();
      v0[3] = v23;
      v0[4] = v22;
      v0[5] = v51;
      v5 = v49;
      sub_2517BC0A8();
      v17 = sub_2517D8938();

      (*v49)(v21, v52);
      if (v53 != v18)
      {
        goto LABEL_10;
      }

      v4 = v50;
      if ((v17 & 1) == 0)
      {
        sub_2517CB850(v0[15], type metadata accessor for HealthViewEntity);
        goto LABEL_4;
      }

LABEL_19:
      sub_2517CB600(v0[15], v0[14]);
      v6 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2517C0B3C(0, *(v48 + 16) + 1, 1);
        v6 = v48;
      }

      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2517C0B3C(v24 > 1, v25 + 1, 1);
        v6 = v48;
      }

      v26 = v0[14];
      *(v6 + 16) = v25 + 1;
      sub_2517CB600(v26, v6 + v46 + v25 * v45);
      v1 = v40;
      v7 = v47;
      v4 = v50;
LABEL_5:
      v2 = v7 + 1;
      if (v2 == v44)
      {
        v32 = v0[17];
        goto LABEL_31;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_31:
  v34 = v0[14];
  v33 = v0[15];
  v36 = v0[10];
  v35 = v0[11];

  v37 = v0[1];
  v38 = *MEMORY[0x277D85DE8];

  return v37(v6);
}

uint64_t sub_2517CA648(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517CBA20;

  return sub_2517C9954(a1);
}

uint64_t sub_2517CA6F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517CBA20;

  return sub_2517C9E9C(a1, a2);
}

uint64_t sub_2517CA7AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517CBA20;

  return sub_2517C954C(a1);
}

uint64_t sub_2517CA858(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517CBA20;

  return sub_2517C9D08(a1, a2);
}

uint64_t sub_2517CA910(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517CA9BC;

  return sub_2517C9144(a1);
}

uint64_t sub_2517CA9BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2517CAAB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517CBA20;

  return sub_2517C9A48(a1, a2);
}

size_t sub_2517CABA4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2517CB504(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_2517CAD98(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2517CAE44(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2517D8A68() & 1;
  }
}

uint64_t sub_2517CAE9C()
{
  v0 = sub_2517D8588();
  v42 = *(v0 - 8);
  v43 = v0;
  v1 = *(v42 + 64);
  MEMORY[0x28223BE20](v0);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_2517CB504(0, &qword_27F45FD50, MEMORY[0x277CB9CC0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - v8;
  sub_2517CB504(0, &qword_27F45FD58, type metadata accessor for HealthViewEntity, v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v34 - v11;
  sub_2517CB568(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2517D8628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2517D86B8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_2517D87C8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v35 = sub_2517D8638();
  v24 = *(v35 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v35);
  sub_2517CB7B4(0, &qword_27F45FD60, MEMORY[0x277CB9F08]);
  v38 = v26;
  sub_2517D87B8();
  sub_2517D86A8();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  sub_2517D8648();
  sub_2517D87B8();
  sub_2517D86A8();
  v28(v19, v27, v15);
  v29 = v36;
  sub_2517D8648();
  (*(v24 + 56))(v29, 0, 1, v35);
  v30 = type metadata accessor for HealthViewEntity();
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v31 = sub_2517D8168();
  v32 = *(*(v31 - 8) + 56);
  v32(v39, 1, 1, v31);
  v32(v40, 1, 1, v31);
  sub_2517CB504(0, &qword_28110FE68, sub_2517BA230, MEMORY[0x277CB9BA8]);
  sub_2517D8098();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_2517D8088();
  *&v44 = sub_2517D8078();
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  sub_2517C8780();
  sub_2517C862C(&qword_27F45FCD0, type metadata accessor for HealthViewEntity);
  return sub_2517D8228();
}

void sub_2517CB504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2517CB59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthViewEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2517CB600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthViewEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2517CB680()
{
  if (!qword_28110FDC0)
  {
    v0 = sub_2517D88E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28110FDC0);
    }
  }
}

uint64_t sub_2517CB6D8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2517D8A68() & 1;
  }
}

unint64_t sub_2517CB730()
{
  result = qword_27F45FD78;
  if (!qword_27F45FD78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F45FD78);
  }

  return result;
}

void sub_2517CB7B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HealthViewEntity();
    v7 = sub_2517C862C(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2517CB850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2517CB8B0(uint64_t a1, uint64_t a2)
{
  sub_2517CB504(0, &qword_27F45FD90, MEMORY[0x277CB9F98], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2517CB958()
{
  result = qword_27F45FD98;
  if (!qword_27F45FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FD98);
  }

  return result;
}

uint64_t sub_2517CB9AC()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2517CA15C();
}

unint64_t sub_2517CBA58()
{
  result = qword_27F45FDA0;
  if (!qword_27F45FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDA0);
  }

  return result;
}

uint64_t sub_2517CBAAC()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517D86B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2517D87C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2517D8638();
  __swift_allocate_value_buffer(v9, qword_27F461FA8);
  __swift_project_value_buffer(v9, qword_27F461FA8);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2517D8648();
}

uint64_t sub_2517CBC98()
{
  sub_2517CCA7C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - v2;
  v20[0] = sub_2517D8628();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517D86B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2517D87C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2517D8638();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_2517CCA7C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v16 = v15;
  __swift_allocate_value_buffer(v15, qword_27F461FC0);
  v17 = __swift_project_value_buffer(v16, qword_27F461FC0);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v20[0]);
  sub_2517D8648();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_2517D8408();
  v18 = sub_2517D83F8();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_2517CBFF4(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  return sub_2517D8208();
}

void (*sub_2517CC03C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_2517D81E8();
  return sub_2517C015C;
}

unint64_t sub_2517CC0B4()
{
  result = qword_27F45FDA8;
  if (!qword_27F45FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDA8);
  }

  return result;
}

unint64_t sub_2517CC10C()
{
  result = qword_27F45FDB0;
  if (!qword_27F45FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDB0);
  }

  return result;
}

unint64_t sub_2517CC164()
{
  result = qword_27F45FDB8;
  if (!qword_27F45FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDB8);
  }

  return result;
}

uint64_t sub_2517CC224@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D8638();
  v3 = __swift_project_value_buffer(v2, qword_27F461FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2517CC2CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB00 != -1)
  {
    swift_once();
  }

  sub_2517CCA7C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v3 = __swift_project_value_buffer(v2, qword_27F461FC0);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517CC360(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_2517CC384, 0, 0);
}

uint64_t sub_2517CC384()
{
  v11 = v0;
  v1 = *(v0 + 48);
  sub_2517D81F8();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = v2;
  v10 = v3;
  sub_2517C2488(&v8);
  v4 = *(v0 + 40);
  v5 = v10;

  sub_2517D8178();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2517CC45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2517CC528();
  *a1 = result;
  return result;
}

uint64_t sub_2517CC484(uint64_t a1)
{
  v2 = sub_2517CC0B4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517CC4D0()
{
  result = qword_27F45FD30;
  if (!qword_27F45FD30)
  {
    sub_2517C9024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FD30);
  }

  return result;
}

uint64_t sub_2517CC528()
{
  v0 = sub_2517D8588();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517CCA7C(0, &qword_27F45FD50, MEMORY[0x277CB9CC0]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v32 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v29 - v7;
  sub_2517CCA7C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = v29 - v10;
  v11 = sub_2517D8628();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2517D86B8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2517D87C8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v29[0] = sub_2517D8638();
  v20 = *(v29[0] - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v29[0]);
  sub_2517CCA20();
  v29[1] = v22;
  sub_2517D87B8();
  sub_2517D86A8();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v12 + 104);
  v24(v15, v23, v11);
  sub_2517D8648();
  sub_2517D87B8();
  sub_2517D86A8();
  v24(v15, v23, v11);
  v25 = v30;
  sub_2517D8648();
  (*(v20 + 56))(v25, 0, 1, v29[0]);
  v26 = sub_2517D8168();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v27 = *(*(v26 - 8) + 56);
  v27(v31, 1, 1, v26);
  v27(v32, 1, 1, v26);
  (*(v34 + 104))(v33, *MEMORY[0x277CBA308], v35);
  sub_2517BC794();
  return sub_2517D8238();
}

void sub_2517CCA20()
{
  if (!qword_27F45FDC0)
  {
    sub_2517BC8FC();
    v0 = sub_2517D8258();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FDC0);
    }
  }
}

void sub_2517CCA7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517D8918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t static CategoriesSectionProvider.healthViewEntityID(for:)(void *a1)
{
  [a1 categoryID];
  v1 = sub_2517D8A48();
  MEMORY[0x2530831A0](v1);

  return 0xD00000000000001CLL;
}

uint64_t sub_2517CCB50()
{
  v1 = *(type metadata accessor for HealthViewEntity() - 8);
  *(v0 + 16) = v1;
  v2 = *(v1 + 64) + 15;
  *(v0 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517CCC08, 0, 0);
}

size_t sub_2517CCC08()
{
  v28 = v0;
  v1 = [objc_opt_self() allCategories];
  sub_2517CEAF0();
  v2 = sub_2517D8848();

  v27[0] = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2517D89E8())
  {
    v4 = MEMORY[0x277D84F90];
    v26 = v0;
    if (i)
    {
      v5 = 0;
      v0 = 2223013238;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x253083300](v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 categoryID];
        if (v9 > 0x1F || ((1 << v9) & 0x84807D76) == 0)
        {
        }

        else
        {
          sub_2517D89A8();
          v11 = *(v27[0] + 2);
          sub_2517D89C8();
          sub_2517D89D8();
          sub_2517D89B8();
        }

        ++v5;
        if (v8 == i)
        {
          v0 = v26;
          v4 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_18:

    v12 = sub_2517D82A8();
    v27[0] = sub_2517C13D8(v12);
    sub_2517CD9F8(v27);

    v2 = v27[0];
    if ((v27[0] & 0x8000000000000000) == 0 && (v27[0] & 0x4000000000000000) == 0)
    {
      v13 = *(v27[0] + 2);
      if (!v13)
      {
        break;
      }

      goto LABEL_21;
    }

    v13 = sub_2517D89E8();
    if (!v13)
    {
      break;
    }

LABEL_21:
    result = sub_2517C0B3C(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v15 = 0;
    v16 = *(v0 + 16);
    v17 = v4;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x253083300](v15, v2);
      }

      else
      {
        if (v15 >= *(v2 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(v2 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = *(v26 + 24);
      v27[0] = v19;
      sub_2517CD0B8(v27, v21);

      v0 = *(v4 + 16);
      v22 = *(v4 + 24);
      if (v0 >= v22 >> 1)
      {
        sub_2517C0B3C(v22 > 1, v0 + 1, 1);
      }

      v23 = *(v26 + 24);
      *(v4 + 16) = v0 + 1;
      sub_2517CB600(v23, v4 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v0);
      ++v15;
      if (v18 == v13)
      {

        v0 = v26;
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_39:
  v24 = *(v0 + 24);

  v25 = *(v0 + 8);

  return v25(v17);
}

BOOL sub_2517CCF9C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ([*a1 categoryID] == 14)
  {
    return 0;
  }

  if ([v3 categoryID] == 14)
  {
    return 1;
  }

  v5 = [v2 displayName];
  sub_2517D87F8();

  v6 = [v3 displayName];
  sub_2517D87F8();

  sub_2517BC0A8();
  v7 = sub_2517D8928();

  return v7 == -1;
}

uint64_t sub_2517CD0B8@<X0>(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2517CEBE4(0, &qword_28110FE58, MEMORY[0x277CBA248], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v39 - v6;
  sub_2517CEBE4(0, &qword_28110FE50, MEMORY[0x277CC9130], v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v39 - v9;
  v10 = sub_2517D86B8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = sub_2517D8628();
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2517D87C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v41 = sub_2517D8638();
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v41);
  v39 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v40 = *a1;
  v24 = [v40 displayName];
  sub_2517D87F8();

  sub_2517D87D8();
  *v15 = sub_2517CEAF0();
  (*(v12 + 104))(v15, *MEMORY[0x277CC9120], v42);
  sub_2517D86A8();
  v43 = v23;
  sub_2517D8648();
  v25 = v41;
  (*(v18 + 16))(v39, v23, v41);
  (*(v18 + 56))(v44, 1, 1, v25);
  v26 = v40;
  v27 = [v40 systemImageName];
  sub_2517D87F8();

  v28 = v45;
  sub_2517D8478();
  v29 = sub_2517D8488();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = type metadata accessor for HealthViewEntity();
  v31 = v46;
  v32 = v46 + *(v30 + 20);
  sub_2517D84B8();
  v48 = 0xD00000000000001CLL;
  v49 = 0x80000002517DB0A0;
  v33 = v26;
  v47 = [v33 categoryID];
  v34 = sub_2517D8A48();
  MEMORY[0x2530831A0](v34);

  v35 = v48;
  v36 = v49;
  (*(v18 + 8))(v43, v25);
  result = swift_allocObject();
  *(result + 16) = v33;
  *v31 = v35;
  v31[1] = v36;
  v38 = (v31 + *(v30 + 24));
  *v38 = sub_2517CEB3C;
  v38[1] = result;
  return result;
}

id sub_2517CD5F0()
{
  sub_2517CEBE4(0, &qword_27F45FDD8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_2517D8688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKDisplayCategory.url.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2517CEB58(v3);
    sub_2517BB2A0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v10 = result;
      v11 = sub_2517D8658();
      sub_2517D4B0C(MEMORY[0x277D84F90]);
      v12 = sub_2517D8788();

      [v10 openSensitiveURL:v11 withOptions:v12];

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2517CD85C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517CA9BC;

  return sub_2517CCB50();
}

uint64_t type metadata accessor for CategoriesSectionProvider()
{
  result = qword_27F45FDC8;
  if (!qword_27F45FDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2517CD95C()
{
  sub_2517CEBE4(319, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2517CD9F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2517BE9B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2517CDA74(v6);
  return sub_2517D89B8();
}

void sub_2517CDA74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2517D8A38();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2517CEAF0();
        v6 = sub_2517D8858();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2517CDD2C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2517CDB78(0, v2, 1, a1);
  }
}

void sub_2517CDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &off_2796C9000;
    v23 = *a4;
LABEL_6:
    v21 = v5;
    v22 = a3;
    v8 = *(v4 + 8 * a3);
    v20 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      if ([v10 v7[120]] == 14)
      {

LABEL_5:
        a3 = v22 + 1;
        v5 = v21 + 8;
        v6 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      if ([v11 v7[120]] == 14)
      {
      }

      else
      {
        v12 = v7;
        v13 = [v10 displayName];
        sub_2517D87F8();

        v14 = [v11 displayName];
        sub_2517D87F8();

        sub_2517BC0A8();
        v15 = sub_2517D8928();

        v16 = v15 == -1;
        v7 = v12;
        v4 = v23;
        if (!v16)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v17 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v17;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2517CDD2C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_102:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v126 = v8;
      v103 = *(v8 + 2);
      if (v103 >= 2)
      {
        while (*a3)
        {
          v104 = v8;
          v8 = (v103 - 1);
          v105 = *&v104[16 * v103];
          v106 = *&v104[16 * v103 + 24];
          sub_2517CE560((*a3 + 8 * v105), (*a3 + 8 * *&v104[16 * v103 + 16]), (*a3 + 8 * v106), v9);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v106 < v105)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_2517CE9B4(v104);
          }

          if (v103 - 2 >= *(v104 + 2))
          {
            goto LABEL_130;
          }

          v107 = &v104[16 * v103];
          *v107 = v105;
          *(v107 + 1) = v106;
          v126 = v104;
          sub_2517BC5C0(v103 - 1);
          v8 = v126;
          v103 = *(v126 + 2);
          if (v103 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_140;
      }

LABEL_112:

      return;
    }

LABEL_136:
    v8 = sub_2517CE9B4(v8);
    goto LABEL_104;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &off_2796C9000;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v11 = *a3;
      v124 = *(*a3 + 8 * v7);
      v122 = *(v11 + 8 * v10);
      v12 = v122;
      v13 = v124;
      v14 = v12;
      v119 = sub_2517CCF9C(&v124, &v122);
      if (v5)
      {

        return;
      }

      v7 = v10 + 2;
      if (v10 + 2 >= v6)
      {
        v9 = &off_2796C9000;
        if (!v119)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v109 = v8;
        v15 = (v11 + 8 * v10 + 16);
        v9 = &off_2796C9000;
        v112 = v10;
        v117 = v6;
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          v18 = v16;
          if ([v17 v9[120]] == 14)
          {

            if (v119)
            {
              v8 = v109;
              if (v7 < v10)
              {
                goto LABEL_133;
              }

              goto LABEL_21;
            }
          }

          else if ([v18 v9[120]] == 14)
          {

            if (!v119)
            {
              v8 = v109;
              goto LABEL_29;
            }
          }

          else
          {
            v19 = [v17 displayName];
            v20 = sub_2517D87F8();
            v22 = v21;

            v124 = v20;
            v125 = v22;
            v23 = [v18 displayName];
            v24 = sub_2517D87F8();
            v26 = v25;

            v122 = v24;
            v123 = v26;
            sub_2517BC0A8();
            v27 = sub_2517D8928();

            v9 = &off_2796C9000;

            v6 = v117;
            v10 = v112;

            if (v119 == (v27 != -1))
            {
              goto LABEL_19;
            }
          }

          ++v15;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
LABEL_19:
        v8 = v109;
        if (!v119)
        {
          goto LABEL_29;
        }
      }

      if (v7 < v10)
      {
        goto LABEL_133;
      }

LABEL_21:
      v28 = v7;
      if (v10 < v7)
      {
        v29 = 8 * v7 - 8;
        v30 = 8 * v10;
        v31 = v10;
        do
        {
          if (v31 != --v28)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v33 = *(v32 + v30);
            *(v32 + v30) = *(v32 + v29);
            *(v32 + v29) = v33;
          }

          ++v31;
          v29 -= 8;
          v30 += 8;
        }

        while (v31 < v28);
      }
    }

LABEL_29:
    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_132;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v10)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2517BC0FC(0, *(v8 + 2) + 1, 1, v8);
    }

    v57 = *(v8 + 2);
    v56 = *(v8 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v8 = sub_2517BC0FC((v56 > 1), v57 + 1, 1, v8);
    }

    *(v8 + 2) = v58;
    v59 = &v8[16 * v57];
    *(v59 + 4) = v10;
    *(v59 + 5) = v7;
    v60 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v8 + 4);
          v63 = *(v8 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_71:
          if (v65)
          {
            goto LABEL_120;
          }

          v78 = &v8[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_123;
          }

          v84 = &v8[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_127;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v88 = &v8[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_85:
        if (v83)
        {
          goto LABEL_122;
        }

        v91 = &v8[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_92:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v100 = *&v8[16 * v99 + 32];
        v101 = *&v8[16 * v61 + 40];
        sub_2517CE560((*a3 + 8 * v100), (*a3 + 8 * *&v8[16 * v61 + 32]), (*a3 + 8 * v101), v60);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v101 < v100)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2517CE9B4(v8);
        }

        if (v99 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v102 = &v8[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v126 = v8;
        sub_2517BC5C0(v61);
        v8 = v126;
        v58 = *(v126 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v8[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_118;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_119;
      }

      v73 = &v8[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_121;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_124;
      }

      if (v77 >= v69)
      {
        v95 = &v8[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_128;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_134;
  }

  if (v10 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v10 + a4;
  }

  if (v35 < v10)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v35)
  {
    goto LABEL_51;
  }

  v36 = v7;
  v108 = v5;
  v110 = v8;
  v37 = *a3;
  v38 = *a3 + 8 * v36 - 8;
  v113 = v10;
  v39 = v10 - v36;
  v40 = v36;
  v115 = v35;
LABEL_41:
  v118 = v38;
  v120 = v40;
  v41 = *(v37 + 8 * v40);
  v116 = v39;
  while (1)
  {
    v42 = *v38;
    v43 = v41;
    v44 = v42;
    if ([v43 v9[120]] == 14)
    {

LABEL_40:
      v40 = v120 + 1;
      v38 = v118 + 8;
      v39 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v108;
        v8 = v110;
        v10 = v113;
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    if ([v44 v9[120]] == 14)
    {
    }

    else
    {
      v45 = [v43 displayName];
      v46 = sub_2517D87F8();
      v48 = v47;

      v124 = v46;
      v125 = v48;
      v49 = [v44 displayName];
      v50 = sub_2517D87F8();
      v52 = v51;

      v122 = v50;
      v123 = v52;
      sub_2517BC0A8();
      v53 = sub_2517D8928();

      v9 = &off_2796C9000;

      if (v53 != -1)
      {
        goto LABEL_40;
      }
    }

    if (!v37)
    {
      break;
    }

    v54 = *v38;
    v41 = *(v38 + 8);
    *v38 = v41;
    *(v38 + 8) = v54;
    v38 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_2517CE560(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v25 = __dst;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v25 > v6)
    {
      v26 = &off_2796C9000;
      v37 = v6;
      v38 = v4;
LABEL_31:
      v39 = v25;
      v27 = v25 - 1;
      --v5;
      v28 = v14;
      v41 = v25 - 1;
      do
      {
        v29 = *--v28;
        v30 = *v27;
        v31 = v29;
        v32 = v30;
        if ([v31 v26[120]] == 14)
        {
        }

        else
        {
          if ([v32 v26[120]] == 14)
          {

LABEL_40:
            if (v5 + 1 != v39)
            {
              *v5 = *v41;
            }

            if (v14 <= v4 || (v25 = v41, v41 <= v6))
            {
              v25 = v41;
              goto LABEL_47;
            }

            goto LABEL_31;
          }

          v33 = [v31 displayName];
          sub_2517D87F8();

          v34 = [v32 displayName];
          sub_2517D87F8();

          v6 = v37;
          sub_2517BC0A8();
          v35 = sub_2517D8928();

          v4 = v38;

          v23 = v35 == -1;
          v26 = &off_2796C9000;
          if (v23)
          {
            goto LABEL_40;
          }
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v28;
        }

        --v5;
        v14 = v28;
        v27 = v41;
      }

      while (v28 > v4);
      v14 = v28;
      v25 = v39;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      v16 = &off_2796C9000;
      v40 = v14;
      while (1)
      {
        v17 = *v4;
        v18 = *v15;
        v19 = v17;
        if ([v18 v16[120]] == 14)
        {
          break;
        }

        if ([v19 v16[120]] == 14)
        {
        }

        else
        {
          v20 = [v18 displayName];
          sub_2517D87F8();

          v21 = [v19 displayName];
          sub_2517D87F8();

          sub_2517BC0A8();
          v22 = sub_2517D8928();

          v14 = v40;

          v23 = v22 == -1;
          v16 = &off_2796C9000;
          if (!v23)
          {
            goto LABEL_17;
          }
        }

        v24 = v15;
        v23 = v6 == v15++;
        if (!v23)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v6;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_45;
        }
      }

LABEL_17:
      v24 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v6 = *v24;
      goto LABEL_19;
    }

LABEL_45:
    v25 = v6;
  }

LABEL_47:
  if (v25 != v4 || v25 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v4, 8 * (v14 - v4));
  }

  return 1;
}

char *sub_2517CE9C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517CEBE4(0, &qword_28110FD98, sub_2517CB680, MEMORY[0x277D84560]);
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

unint64_t sub_2517CEAF0()
{
  result = qword_27F45FBC0;
  if (!qword_27F45FBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F45FBC0);
  }

  return result;
}

uint64_t sub_2517CEB58(uint64_t a1)
{
  sub_2517CEBE4(0, &qword_27F45FDD8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2517CEBE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}