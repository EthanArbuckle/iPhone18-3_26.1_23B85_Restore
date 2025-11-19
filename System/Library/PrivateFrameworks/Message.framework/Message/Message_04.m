uint64_t sub_1B03CF23C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B03CF274()
{
  v1 = sub_1B0E43108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1B03CF374@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *v3 = a2;
  swift_bridgeObjectRetain_n();
  RunningSyncRequests.Change.init(previous:current:)(v7, a2, v23);
  v8 = v24;
  v9 = __swift_project_boxed_opaque_existential_0(v23, v24);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = a1 & 1;
  v22[48] = a1 & 1;
  v14 = sub_1B0E44FC8();
  v15 = v26;
  v16 = __swift_project_boxed_opaque_existential_0(v25, v26);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v22[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v22[16] = v13;
  v20 = sub_1B0E44FC8();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA8, &unk_1B0EDC900);
  a3[4] = sub_1B03CFB8C(&qword_1EB6DB488, &qword_1EB6E5BA8, &unk_1B0EDC900);
  *a3 = v14;
  a3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B88, &qword_1B0EC8F98);
  a3[9] = sub_1B03CFB8C(&qword_1EB6DB480, &qword_1EB6E4B88, &qword_1B0EC8F98);
  a3[5] = v20;
  return sub_1B03CFB38(v23);
}

uint64_t RunningSyncRequests.Change.init(previous:current:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B04007E4;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B0400C30;
    *(v9 + 24) = v8;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B90, &qword_1B0EC8FA0);
    v10 = sub_1B039E3F8(&unk_1EB6DA410, &qword_1EB6E4B90, &qword_1B0EC8FA0);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = sub_1B0400860;
    v11[4] = v7;
    v11[5] = sub_1B0400824;
    v11[6] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B98, &qword_1B0EC8FA8);
    v13 = sub_1B039E3F8(&qword_1EB6DA408, &qword_1EB6E4B98, &qword_1B0EC8FA8);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_1B0400C34;
    v14[4] = v9;
    v14[5] = sub_1B0B74D20;
    v14[6] = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2 = v11;
    v15 = v17;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B80, &qword_1B0EC8F90);
    v10 = sub_1B039E3F8(&qword_1EB6DA4A0, &qword_1EB6E4B80, &qword_1B0EC8F90);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B88, &qword_1B0EC8F98);
    v13 = sub_1B039E3F8(&qword_1EB6DB480, &qword_1EB6E4B88, &qword_1B0EC8F98);
    v14 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a2;
  a3[1] = sub_1B0400824;
  a3[2] = 0;
  a3[3] = v15;
  a3[4] = v10;
  a3[5] = v14;
  a3[8] = v12;
  a3[9] = v13;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B03CF8DC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03CF914()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03CF95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B03CF9B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 5))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1B03CFB8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_5(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_11(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_15(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_23(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_27(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_31(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t type metadata accessor for DetermineNewestMessages()
{
  result = qword_1EB6DD740;
  if (!qword_1EB6DD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03D008C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B03D00F4()
{
  v2 = qword_1EB6DCA18;
  if (!qword_1EB6DCA18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03D016C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4820, &qword_1B0EC5FB8);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 65); ; i += 40)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      sub_1B03B2000(v5, v6);
      result = sub_1B0AE002C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 17) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B03D0298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v23 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 56) + 24 * v15);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 16);
    if (*(v16 + 17))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = a4(*(*(a3 + 48) + 4 * v15), v17, v18, v20 | v19);
    if (result)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1B03D03F8(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1B03D03F8(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D03F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v33 = *v18;
    v32 = *(v18 + 8);
    v30 = *(v18 + 17);
    v31 = *(v18 + 16);
    v19 = *(v9 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 4 * v23) = v17;
    v28 = *(v9 + 56) + 24 * v23;
    *v28 = v33;
    *(v28 + 8) = v32;
    *(v28 + 16) = v31;
    *(v28 + 17) = v30;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B03D0650(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 172);
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v10[0] = *a5;
  v10[1] = v6;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  return sub_1B03D93EC(v10, a1 & 1, a2) & 1;
}

unint64_t sub_1B03D06A4()
{
  result = qword_1EB6DD1F0;
  if (!qword_1EB6DD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1F0);
  }

  return result;
}

unint64_t sub_1B03D06F8()
{
  v2 = qword_1EB6DE228;
  if (!qword_1EB6DE228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03D0770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      result = sub_1B0E46CB8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B03D08AC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

void *sub_1B03D091C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

unint64_t sub_1B03D0964()
{
  result = qword_1EB6DD9B0;
  if (!qword_1EB6DD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9B0);
  }

  return result;
}

uint64_t sub_1B03D09B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1B03D0A7C(uint64_t a1)
{
  PendingDownload = type metadata accessor for FindPendingDownload();
  (*(*(PendingDownload - 8) + 8))(a1, PendingDownload);
  return a1;
}

uint64_t sub_1B03D0AD8(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1B0E46C28();
  sub_1B0E461D8();
  v5 = sub_1B0E46CB8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = *a1;
    do
    {
      sub_1B03D0A20(*(a2 + 48) + 48 * v7, &v12);
      if (v12 == v9)
      {
        v10 = MEMORY[0x1B27282E0](&v13, a1 + 1);
        sub_1B03B04BC(&v12);
        if (v10)
        {
          return 1;
        }
      }

      else
      {
        sub_1B03B04BC(&v12);
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1B03D0BFC(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v13 << 8) | (4 * __clz(__rbit64(v9)))));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03D0D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D0D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[11] >= 3uLL)
  {
  }

  v3 = v0[14];

  v4 = v0[19];

  v5 = v0[20];

  v6 = v0[21];

  return swift_deallocObject();
}

uint64_t sub_1B03D0E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D0ED0(uint64_t a1, uint64_t a2)
{
  v79 = type metadata accessor for NewestMessages();
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4888, &qword_1B0EC6330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v74 - v13;
  v14 = type metadata accessor for MessageBatches(0);
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4890, &qword_1B0EC6338);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a1 + 24);
  v29 = *(a2 + 24);
  v30 = *(a2 + 32);
  if (!*(a1 + 32))
  {
LABEL_19:
    if (v30)
    {
      return 0;
    }

    if ((v29 | v28) < 0)
    {
      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_21;
  }

  if (*(a1 + 32) != 1)
  {
    result = 0;
    if (v30 != 2 || v29)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v30 != 1)
  {
    return 0;
  }

  v30 = v29 | v28;
  if ((v29 | v28) < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  if (v29 != v28)
  {
    return 0;
  }

LABEL_25:
  v32 = *(a1 + 88);
  v33 = *(a1 + 120);
  v82[4] = *(a1 + 104);
  v82[5] = v33;
  v83 = *(a1 + 136);
  v34 = *(a1 + 56);
  v82[0] = *(a1 + 40);
  v82[1] = v34;
  v35 = *(a1 + 72);
  v82[3] = v32;
  v82[2] = v35;
  v36 = *(a2 + 56);
  v37 = *(a2 + 72);
  v84[0] = *(a2 + 40);
  v84[1] = v36;
  v38 = *(a2 + 88);
  v39 = *(a2 + 104);
  v40 = *(a2 + 120);
  v85 = *(a2 + 136);
  v84[4] = v39;
  v84[5] = v40;
  v84[2] = v37;
  v84[3] = v38;
  if ((_s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v82, v84) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 144) != *(a2 + 144) || ((*(a1 + 145) ^ *(a2 + 145)) & 1) != 0 || ((*(a1 + 146) ^ *(a2 + 146)) & 1) != 0 || ((*(a1 + 147) ^ *(a2 + 147)) & 1) != 0 || ((*(a1 + 148) ^ *(a2 + 148)) & 1) != 0)
  {
    return result;
  }

  v41 = *(a1 + 152);
  v77 = *(a1 + 160);
  v75 = *(a1 + 168);
  v42 = *(a2 + 152);
  v76 = *(a2 + 160);
  v74 = *(a2 + 168);
  if ((sub_1B03D1C2C(v41, v42) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1C2C(v77, v76) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1C2C(v75, v74) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1D9C(*(a1 + 176), *(a2 + 176)) & 1) == 0)
  {
    return 0;
  }

  v77 = type metadata accessor for MailboxSyncState();
  if ((sub_1B03D27C0(a1 + v77[12], a2 + v77[12]) & 1) == 0 || (sub_1B03D3038((a1 + v77[13]), (a2 + v77[13])) & 1) == 0 || (sub_1B03D3304(*(a1 + v77[14]), *(a2 + v77[14])) & 1) == 0)
  {
    return 0;
  }

  v76 = v77[15];
  v43 = *(v22 + 48);
  sub_1B03B5C80(a1 + v76, v25, &qword_1EB6E4010, &unk_1B0EC6220);
  v44 = a2 + v76;
  v76 = v43;
  sub_1B03B5C80(v44, &v25[v43], &qword_1EB6E4010, &unk_1B0EC6220);
  v80 = *(v80 + 48);
  if ((v80)(v25, 1, v14) != 1)
  {
    sub_1B03B5C80(v25, v21, &qword_1EB6E4010, &unk_1B0EC6220);
    if ((v80)(&v25[v76], 1, v14) != 1)
    {
      sub_1B03D008C(&v25[v76], v17, type metadata accessor for MessageBatches);
      v48 = sub_1B03D34B0(v21, v17);
      sub_1B03BD5FC(v17, type metadata accessor for MessageBatches);
      sub_1B03BD5FC(v21, type metadata accessor for MessageBatches);
      sub_1B0398EFC(v25, &qword_1EB6E4010, &unk_1B0EC6220);
      if (!v48)
      {
        return 0;
      }

      goto LABEL_45;
    }

    sub_1B03BD5FC(v21, type metadata accessor for MessageBatches);
LABEL_43:
    v45 = &qword_1EB6E4890;
    v46 = &qword_1B0EC6338;
    v47 = v25;
LABEL_66:
    sub_1B0398EFC(v47, v45, v46);
    return 0;
  }

  if ((v80)(&v25[v76], 1, v14) != 1)
  {
    goto LABEL_43;
  }

  sub_1B0398EFC(v25, &qword_1EB6E4010, &unk_1B0EC6220);
LABEL_45:
  v49 = v77[16];
  v11 = *(v11 + 48);
  v50 = v81;
  sub_1B03B5C80(a1 + v49, v81, &qword_1EB6E4068, &unk_1B0EC2D20);
  sub_1B03B5C80(a2 + v49, v50 + v11, &qword_1EB6E4068, &unk_1B0EC2D20);
  v51 = *(v78 + 48);
  if (v51(v50, 1, v79) == 1)
  {
    if (v51(v81 + v11, 1, v79) == 1)
    {
      sub_1B0398EFC(v81, &qword_1EB6E4068, &unk_1B0EC2D20);
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v70 = v81;
  sub_1B03B5C80(v81, v10, &qword_1EB6E4068, &unk_1B0EC2D20);
  if (v51(v70 + v11, 1, v79) == 1)
  {
    sub_1B03BD5FC(v10, type metadata accessor for NewestMessages);
LABEL_58:
    v45 = &qword_1EB6E4888;
    v46 = &qword_1B0EC6330;
LABEL_65:
    v47 = v81;
    goto LABEL_66;
  }

LABEL_60:
  sub_1B03D008C(v81 + v11, v6, type metadata accessor for NewestMessages);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0 || *&v10[*(v79 + 20)] != *&v6[*(v79 + 20)])
  {
    sub_1B03BD5FC(v6, type metadata accessor for NewestMessages);
    sub_1B03BD5FC(v10, type metadata accessor for NewestMessages);
    v45 = &qword_1EB6E4068;
    v46 = &unk_1B0EC2D20;
    goto LABEL_65;
  }

  v71 = *(v79 + 24);
  v72 = *&v10[v71];
  v73 = *&v6[v71];
  sub_1B03BD5FC(v6, type metadata accessor for NewestMessages);
  sub_1B03BD5FC(v10, type metadata accessor for NewestMessages);
  sub_1B0398EFC(v81, &qword_1EB6E4068, &unk_1B0EC2D20);
  if (v72 != v73)
  {
    return 0;
  }

LABEL_48:
  if ((sub_1B03D3850(a1 + v77[17], a2 + v77[17]) & 1) == 0)
  {
    return 0;
  }

  v52 = v77[18];
  v53 = a1 + v52;
  v54 = *(a1 + v52 + 9);
  v55 = a2 + v52;
  v56 = *(v55 + 9);
  if ((v54 & 1) == 0)
  {
    if (*(v55 + 9))
    {
      return 0;
    }

    v56 = *(v55 + 8);
    if ((*(v53 + 8) & 1) == 0)
    {
      result = 0;
      if ((*(v55 + 8) & 1) != 0 || *v53 != *v55)
      {
        return result;
      }

      goto LABEL_51;
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  result = 0;
  v57 = v77[19];
  v58 = a1 + v57;
  v59 = *(a1 + v57);
  v60 = (a2 + v57);
  if (v59 == *v60 && *(v58 + 8) == v60[1])
  {
    v61 = v77[20];
    v62 = a1 + v61;
    v63 = *(a1 + v61);
    v64 = *(a1 + v61 + 8);
    v65 = *(v62 + 16);
    v66 = (a2 + v61);
    v67 = v66[1];
    v68 = v66[2];
    v69 = sub_1B03D3FBC(v63, *v66) & (v64 == v67);
    if (v65 == v68)
    {
      return v69;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *a1;
    v6 = *a2;
    v7 = sub_1B0E44BB8();
    v9 = v8;
    if (v7 == sub_1B0E44BB8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_1B0E46A78();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v13 = a2[3];
  if (a1[3])
  {
    if (!v13)
    {
      return 0;
    }

    v14 = a1[2];
    v15 = a2[2];
    v16 = sub_1B0E44BB8();
    v18 = v17;
    if (v16 == sub_1B0E44BB8() && v18 == v19)
    {
    }

    else
    {
      v20 = sub_1B0E46A78();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (sub_1B03D1B3C(a1[4], a2[4]) & 1) == 0 || (sub_1B03D1B3C(a1[5], a2[5]) & 1) == 0 || (sub_1B03D1B3C(a1[6], a2[6]) & 1) == 0 || (sub_1B03D1B3C(a1[7], a2[7]) & 1) == 0 || (sub_1B03D1B3C(a1[8], a2[8]) & 1) == 0 || (sub_1B03D1B3C(a1[9], a2[9]) & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v22 = a2[12];
  if (!a1[12])
  {
    return !v22;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = a1[11];
  v24 = a2[11];
  v25 = sub_1B0E44BB8();
  v27 = v26;
  if (v25 != sub_1B0E44BB8() || v27 != v28)
  {
    v29 = sub_1B0E46A78();

    return (v29 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B03D1B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = sub_1B0E44BB8();
      v11 = v10;
      if (v9 == sub_1B0E44BB8() && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1B0E46A78();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B03D1C2C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v13);
    result = sub_1B0E46CB8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D1D9C(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_156:
    result = 1;
LABEL_159:
    v81 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_158:
    result = 0;
    goto LABEL_159;
  }

  v3 = 0;
  v84 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v95 = a2 + 56;
  v85 = v7;
  v86 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v87 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
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
        }

        if (v3 >= v7)
        {
          goto LABEL_156;
        }

        v11 = *(v84 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v87 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v2 + 40);
    sub_1B0E46C28();
    sub_1B03B2000(v14, v13);
    sub_1B0E42F48();
    v16 = sub_1B0E46CB8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_157:
      sub_1B0391D50(v14, v13);
      goto LABEL_158;
    }

    v19 = ~v17;
    v20 = v13 >> 62;
    v21 = !v14 && v13 == 0xC000000000000000;
    v22 = !v21;
    v98 = v22;
    v23 = __OFSUB__(HIDWORD(v14), v14);
    v94 = v23;
    v92 = (v14 >> 32) - v14;
    v93 = v14 >> 32;
    v97 = v19;
LABEL_27:
    v24 = (*(v2 + 48) + 16 * v18);
    v26 = *v24;
    v25 = v24[1];
    v27 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25 == 0xC000000000000000;
      }

      v30 = !v28 || v13 >> 62 != 3;
      if (((v30 | v98) & 1) == 0)
      {
        v79 = 0;
        v80 = 0xC000000000000000;
LABEL_154:
        sub_1B0391D50(v79, v80);
        v7 = v85;
        a1 = v86;
        v6 = v87;
        continue;
      }

LABEL_49:
      v31 = 0;
      if (v20 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_49;
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_164;
      }

      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_163;
      }

      v31 = v31;
      if (v20 <= 1)
      {
LABEL_46:
        v35 = BYTE6(v13);
        if (v20)
        {
          v35 = HIDWORD(v14) - v14;
          if (v94)
          {
            goto LABEL_162;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v20 != 2)
    {
      if (!v31)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v37 = *(v14 + 16);
    v36 = *(v14 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      goto LABEL_161;
    }

LABEL_52:
    if (v31 != v35)
    {
      goto LABEL_26;
    }

    if (v31 < 1)
    {
      goto LABEL_153;
    }

    if (v27 <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v20)
      {
LABEL_82:
        __s2 = v14;
        v100 = v13;
        v101 = BYTE2(v13);
        v102 = BYTE3(v13);
        v103 = BYTE4(v13);
        v104 = BYTE5(v13);
        v54 = memcmp(__s1, &__s2, BYTE6(v13));
        v19 = v97;
        if (!v54)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v20 == 2)
      {
        v50 = *(v14 + 16);
        v90 = *(v14 + 24);
        sub_1B03B2000(v26, v25);
        v51 = sub_1B0E42A98();
        if (v51)
        {
          v52 = sub_1B0E42AC8();
          if (__OFSUB__(v50, v52))
          {
            goto LABEL_179;
          }

          v51 += v50 - v52;
        }

        v34 = __OFSUB__(v90, v50);
        v53 = &v90[-v50];
        if (v34)
        {
          goto LABEL_170;
        }

        result = sub_1B0E42AB8();
        if (!v51)
        {
          goto LABEL_191;
        }

        goto LABEL_113;
      }

      if (v93 < v14)
      {
        goto LABEL_168;
      }

      sub_1B03B2000(v26, v25);
      v65 = sub_1B0E42A98();
      if (!v65)
      {
        goto LABEL_188;
      }

      v66 = v65;
      v67 = sub_1B0E42AC8();
      if (__OFSUB__(v14, v67))
      {
        goto LABEL_174;
      }

      v41 = (v14 - v67 + v66);
      result = sub_1B0E42AB8();
      if (!v41)
      {
        goto LABEL_189;
      }

      goto LABEL_121;
    }

    v43 = *(v26 + 16);
    sub_1B03B2000(v26, v25);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_166;
      }

      v88 = (v43 - v46 + v45);
    }

    else
    {
      v88 = 0;
    }

    sub_1B0E42AB8();
    v8 = v95;
    v2 = a2;
    if (v20 != 2)
    {
      if (v20 == 1)
      {
        if (v93 < v14)
        {
          goto LABEL_171;
        }

        v55 = sub_1B0E42A98();
        if (v55)
        {
          v56 = sub_1B0E42AC8();
          if (__OFSUB__(v14, v56))
          {
            goto LABEL_182;
          }

          v55 += v14 - v56;
        }

        v57 = sub_1B0E42AB8();
        v58 = (v14 >> 32) - v14;
        if (v57 < v92)
        {
          v58 = v57;
        }

        result = v88;
        if (!v88)
        {
          goto LABEL_199;
        }

        if (!v55)
        {
          goto LABEL_198;
        }

        goto LABEL_147;
      }

      result = v88;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v88)
      {
        goto LABEL_185;
      }

LABEL_152:
      v78 = memcmp(result, __s1, BYTE6(v13));
      sub_1B0391D50(v26, v25);
      v19 = v97;
      if (!v78)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v70 = *(v14 + 16);
    v82 = *(v14 + 24);
    v55 = sub_1B0E42A98();
    if (v55)
    {
      v71 = sub_1B0E42AC8();
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_180;
      }

      v55 += v70 - v71;
    }

    v34 = __OFSUB__(v82, v70);
    v72 = v82 - v70;
    if (v34)
    {
      goto LABEL_175;
    }

    v73 = sub_1B0E42AB8();
    if (v73 >= v72)
    {
      v58 = v72;
    }

    else
    {
      v58 = v73;
    }

    result = v88;
    if (!v88)
    {
      goto LABEL_195;
    }

    v2 = a2;
    if (!v55)
    {
      goto LABEL_194;
    }

LABEL_147:
    if (result != v55)
    {
      v64 = memcmp(result, v55, v58);
      sub_1B0391D50(v26, v25);
      goto LABEL_149;
    }

    sub_1B0391D50(v14, v13);
    sub_1B0391D50(v26, v25);
    v7 = v85;
    a1 = v86;
    v8 = v95;
    v6 = v87;
  }

  if (v27)
  {
    if (v26 > v26 >> 32)
    {
      goto LABEL_165;
    }

    sub_1B03B2000(v26, v25);
    v47 = sub_1B0E42A98();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1B0E42AC8();
      if (__OFSUB__(v26, v49))
      {
        goto LABEL_167;
      }

      v89 = (v26 - v49 + v48);
    }

    else
    {
      v89 = 0;
    }

    sub_1B0E42AB8();
    v8 = v95;
    v2 = a2;
    if (v20 == 2)
    {
      v74 = *(v14 + 16);
      v83 = *(v14 + 24);
      v55 = sub_1B0E42A98();
      if (v55)
      {
        v75 = sub_1B0E42AC8();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_181;
        }

        v55 += v74 - v75;
      }

      v34 = __OFSUB__(v83, v74);
      v76 = v83 - v74;
      if (v34)
      {
        goto LABEL_177;
      }

      v77 = sub_1B0E42AB8();
      if (v77 >= v76)
      {
        v58 = v76;
      }

      else
      {
        v58 = v77;
      }

      result = v89;
      if (!v89)
      {
        goto LABEL_197;
      }

      v2 = a2;
      if (!v55)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v20 != 1)
      {
        result = v89;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v89)
        {
          goto LABEL_190;
        }

        goto LABEL_152;
      }

      if (v93 < v14)
      {
        goto LABEL_176;
      }

      v55 = sub_1B0E42A98();
      if (v55)
      {
        v59 = sub_1B0E42AC8();
        if (__OFSUB__(v14, v59))
        {
          goto LABEL_183;
        }

        v55 += v14 - v59;
      }

      v60 = sub_1B0E42AB8();
      v58 = (v14 >> 32) - v14;
      if (v60 < v92)
      {
        v58 = v60;
      }

      result = v89;
      if (!v89)
      {
        goto LABEL_193;
      }

      if (!v55)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v26;
  *&__s1[8] = v25;
  __s1[10] = BYTE2(v25);
  __s1[11] = BYTE3(v25);
  __s1[12] = BYTE4(v25);
  __s1[13] = BYTE5(v25);
  if (!v20)
  {
    goto LABEL_82;
  }

  if (v20 != 1)
  {
    v61 = *(v14 + 16);
    v91 = *(v14 + 24);
    sub_1B03B2000(v26, v25);
    v51 = sub_1B0E42A98();
    if (v51)
    {
      v62 = sub_1B0E42AC8();
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_178;
      }

      v51 += v61 - v62;
    }

    v34 = __OFSUB__(v91, v61);
    v53 = &v91[-v61];
    if (v34)
    {
      goto LABEL_172;
    }

    result = sub_1B0E42AB8();
    if (!v51)
    {
      goto LABEL_187;
    }

LABEL_113:
    if (result >= v53)
    {
      v63 = v53;
    }

    else
    {
      v63 = result;
    }

    v64 = memcmp(__s1, v51, v63);
    sub_1B0391D50(v26, v25);
    v2 = a2;
LABEL_149:
    v8 = v95;
    v19 = v97;
    if (!v64)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v93 < v14)
  {
    goto LABEL_169;
  }

  sub_1B03B2000(v26, v25);
  v38 = sub_1B0E42A98();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1B0E42AC8();
    if (__OFSUB__(v14, v40))
    {
      goto LABEL_173;
    }

    v41 = (v14 - v40 + v39);
    result = sub_1B0E42AB8();
    if (!v41)
    {
      goto LABEL_186;
    }

LABEL_121:
    if (result >= v92)
    {
      v68 = (v14 >> 32) - v14;
    }

    else
    {
      v68 = result;
    }

    v69 = memcmp(__s1, v41, v68);
    sub_1B0391D50(v26, v25);
    v2 = a2;
    v19 = v97;
    if (!v69)
    {
LABEL_153:
      v79 = v14;
      v80 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v18 = (v18 + 1) & v19;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  sub_1B0E42AB8();
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  result = sub_1B0E42AB8();
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t sub_1B03D27C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (*(result + 48))
  {
    if (v2 != v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v5 = *(v2 + 16);
    if (v5 != *(v3 + 16))
    {
      return 0;
    }

    if (v5)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v12 = (v2 + 32);
      v13 = (v3 + 32);
      while (v5)
      {
        if (*v13 != *v12)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

LABEL_13:
  sub_1B03D2CA8(result, v31);
  sub_1B03D2CA8(a2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A20, &qword_1B0EC7688);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v8 = *(v25 + 16);
      if (v8 != *(v18 + 16))
      {
        goto LABEL_37;
      }

      if (v8 && v25 != v18)
      {
        v9 = (v25 + 32);
        v10 = (v18 + 32);
        while (*v10 == *v9)
        {
          ++v9;
          ++v10;
          if (!--v8)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_37;
      }

LABEL_21:
      if ((sub_1B03D2E18(v26, v19) & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      v16 = sub_1B03D2F14(v27, v20);

      if ((v16 & 1) == 0)
      {
LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      if (v29)
      {
        if (v28)
        {
          if (v22)
          {
            v11 = v21 != 0;
LABEL_39:

            __swift_destroy_boxed_opaque_existential_0(v32);
            __swift_destroy_boxed_opaque_existential_0(v31);
            return v11;
          }
        }

        else if (v22)
        {
          v11 = v21 == 0;
          goto LABEL_39;
        }

LABEL_63:
        v11 = 0;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_63;
      }

      if (((v21 | v28) & 0x8000000000000000) == 0)
      {
        if (v21 == v28)
        {
          v11 = 1;
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    sub_1B0398EFC(v31, &qword_1EB6E4A28, &qword_1B0EC7690);
    return 0;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_41;
  }

  if ((sub_1B03D2D68(v24, v17) & 1) == 0)
  {

LABEL_49:

    goto LABEL_50;
  }

  if ((sub_1B03D2D0C(v26, v19) & 1) == 0 || (sub_1B03D2E18(v27, v20) & 1) == 0)
  {

    goto LABEL_49;
  }

  v15 = sub_1B03D2F14(v28, v21);

  if ((v15 & 1) == 0)
  {
LABEL_50:
    v14 = 0;
LABEL_51:

    __swift_destroy_boxed_opaque_existential_0(v32);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return v14;
  }

  if (v30)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v23)
  {
LABEL_60:
    v14 = 0;
    goto LABEL_51;
  }

  if (((v22 | v29) & 0x8000000000000000) == 0)
  {
    if (v22 == v29)
    {
LABEL_59:
      v14 = 1;
      goto LABEL_51;
    }

    goto LABEL_60;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B03D2CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B03D2D0C(uint64_t result, uint64_t a2)
{
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
    v6 = *v4++;
    v5 = v6;
    v7 = *v3++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D2D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 32)
    {
      v6 = *(a1 + i + 56);
      v7 = *(a2 + i + 56);
      result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + i + 32), *(a1 + i + 40), *(a1 + i + 48), *(a2 + i + 32), *(a2 + i + 40), *(a2 + i + 48));
      if ((result & 1) == 0)
      {
        break;
      }

      if ((v7 | v6) < 0)
      {
        __break(1u);
        return result;
      }

      if (v7 != v6)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B03D2E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v4 - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(v4 - 2) & 0xFFFFFFFF01010101, *(v4 - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = sub_1B0AFDF14(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B03D2F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(i - 6) == *(v3 - 6); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(i - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(i - 2) & 0xFFFFFFFF01010101, *(i - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = sub_1B0AFDF14(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B03D3038(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = type metadata accessor for PendingPersistenceUpdates();
  v5 = *(v4 + 28);
  v6 = &a1[v5];
  v7 = &a2[v5];
  if ((sub_1B03D3188(*&a1[v5], *&a2[v5]) & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for MessagesPendingDownload();
  v9 = *(v8 + 20);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for MessagesPendingDownloadPerPass();
  if ((sub_1B03D3188(*&v6[*(v10 + 20)], *&v7[*(v10 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v11 = *(v8 + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 32);

  return sub_1B0E46E08();
}

uint64_t sub_1B03D3188(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = v3;
    v15 = *(*(v3 + 48) + 4 * v13);
    v16 = *(v3 + 56) + 24 * v13;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 17);
    v21 = sub_1B03FE284(v15);
    if (v22)
    {
      v23 = *(a2 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v20 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v17, v18, v28 | v19);
      v3 = v14;
      v8 = v29;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D3304(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v30 = result + 64;
  v31 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v29 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v3 + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 17);
    sub_1B03B2000(*v12, v14);
    v20 = sub_1B0AE002C(v13, v14);
    v22 = v21;
    sub_1B0391D50(v13, v14);
    if (v22)
    {
      v23 = *(a2 + 56) + 24 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v19 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v16, v17, v28 | v18);
      v3 = v31;
      v7 = v32;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B03D34B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A0, "ְ\t");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if (*a1 != *a2 || (sub_1B03D37DC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MessageBatches(0) + 24);
  v18 = a1 + v17;
  v19 = *(v13 + 48);
  sub_1B03B5C80(v18, v16, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B03B5C80(a2 + v17, &v16[v19], &unk_1EB6E3670, &unk_1B0E9B260);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &unk_1EB6E3670, &unk_1B0E9B260);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v16, v12, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_1B0398EFC(v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_8:
    sub_1B0398EFC(v16, &qword_1EB6E42A0, "ְ\t");
    return 0;
  }

  sub_1B03C60A4(&v16[v19], v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03D06F8();
  v22 = sub_1B0E46E08();
  sub_1B0398EFC(v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0398EFC(v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0398EFC(v16, &unk_1EB6E3670, &unk_1B0E9B260);
  return (v22 & 1) != 0;
}

uint64_t sub_1B03D37DC(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B03D3850(uint64_t a1, uint64_t a2)
{
  v38 = _s15MissingMessagesO8CompleteVMa(0);
  v4 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4968, &qword_1B0EC6B38);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v38 - v23;
  v25 = *(v22 + 56);
  sub_1B03D3DBC(a1, &v38 - v23, _s15MissingMessagesOMa);
  sub_1B03D3DBC(a2, &v24[v25], _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03D3DBC(v24, v19, _s15MissingMessagesOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v19 ^ v24[v25];
      sub_1B03D3F5C(v24, _s15MissingMessagesOMa);
      v27 = v28 ^ 1;
      return v27 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B03D3DBC(v24, v14, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = _s15MissingMessagesO8CompleteVMa;
      v32 = v14;
      goto LABEL_13;
    }

    v29 = v39;
    sub_1B03D3E8C(&v24[v25], v39, _s15MissingMessagesO8CompleteVMa);
    v30 = *(v29 + 4);
    if (v14[4])
    {
      if (!*(v29 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*v29 != *v14)
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_21;
      }
    }

    v33 = *(v38 + 20);
    sub_1B03D06F8();
    if (sub_1B0E46E08())
    {
      v34 = *(v38 + 24);
      v35 = v14[v34];
      v36 = *(v29 + v34);
      sub_1B03D3F5C(v29, _s15MissingMessagesO8CompleteVMa);
      if (v35 == v36)
      {
        sub_1B03D3F5C(v14, _s15MissingMessagesO8CompleteVMa);
        sub_1B03D3F5C(v24, _s15MissingMessagesOMa);
        v27 = 1;
        return v27 & 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_1B03D3F5C(v29, _s15MissingMessagesO8CompleteVMa);
LABEL_22:
    sub_1B03D3F5C(v14, _s15MissingMessagesO8CompleteVMa);
    sub_1B03D3F5C(v24, _s15MissingMessagesOMa);
    goto LABEL_23;
  }

  sub_1B03D3DBC(v24, v17, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = _s15MissingMessagesO10IncompleteVMa;
    v32 = v17;
LABEL_13:
    sub_1B03D3F5C(v32, v31);
LABEL_14:
    sub_1B0398EFC(v24, &qword_1EB6E4968, &qword_1B0EC6B38);
LABEL_23:
    v27 = 0;
    return v27 & 1;
  }

  sub_1B03D3E8C(&v24[v25], v9, _s15MissingMessagesO10IncompleteVMa);
  v27 = sub_1B0B4DC88(v17, v9);
  sub_1B03D3F5C(v9, _s15MissingMessagesO10IncompleteVMa);
  sub_1B03D3F5C(v17, _s15MissingMessagesO10IncompleteVMa);
  sub_1B03D3F5C(v24, _s15MissingMessagesOMa);
  return v27 & 1;
}

uint64_t sub_1B03D3D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D3FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 176);
    v103 = *(a1 + 160);
    v104 = v3;
    v105[0] = *(a1 + 192);
    *(v105 + 9) = *(a1 + 201);
    v4 = *(a1 + 96);
    v100 = *(a1 + 112);
    v5 = *(a1 + 144);
    v101 = *(a1 + 128);
    v102 = v5;
    v6 = *(a1 + 48);
    v95 = *(a1 + 32);
    v96 = v6;
    v7 = *(a1 + 80);
    v97 = *(a1 + 64);
    v98 = v7;
    v99 = v4;
    v8 = *(a2 + 176);
    *&v106[128] = *(a2 + 160);
    *&v106[144] = v8;
    *&v106[160] = *(a2 + 192);
    *&v106[169] = *(a2 + 201);
    v9 = *(a2 + 112);
    *&v106[64] = *(a2 + 96);
    *&v106[80] = v9;
    v10 = *(a2 + 144);
    *&v106[96] = *(a2 + 128);
    *&v106[112] = v10;
    v11 = *(a2 + 48);
    *v106 = *(a2 + 32);
    *&v106[16] = v11;
    v12 = *(a2 + 80);
    *&v106[32] = *(a2 + 64);
    *&v106[48] = v12;
    if (*v106 != v95)
    {
      return 0;
    }

    v13 = (a1 + 224);
    v14 = (a2 + 224);
    while (1)
    {
      v15 = *(v13 - 40);
      v91 = *(v13 - 56);
      v92 = v15;
      v93 = *(v13 - 24);
      v94 = *(v13 - 8);
      v16 = *(v13 - 104);
      v87 = *(v13 - 120);
      v88 = v16;
      v17 = *(v13 - 72);
      v89 = *(v13 - 88);
      v90 = v17;
      v18 = *(v13 - 168);
      v83 = *(v13 - 184);
      v84 = v18;
      v19 = *(v13 - 136);
      v85 = *(v13 - 152);
      v86 = v19;
      if (sub_1B075FACC(&v83) == 1)
      {
        v55[8] = *&v106[136];
        v55[9] = *&v106[152];
        v55[10] = *&v106[168];
        v56 = v106[184];
        v55[4] = *&v106[72];
        v55[5] = *&v106[88];
        v55[6] = *&v106[104];
        v55[7] = *&v106[120];
        v55[0] = *&v106[8];
        v55[1] = *&v106[24];
        v55[2] = *&v106[40];
        v55[3] = *&v106[56];
        if (sub_1B075FACC(v55) != 1)
        {
          return 0;
        }
      }

      else
      {
        v79 = *&v106[136];
        v80 = *&v106[152];
        v81 = *&v106[168];
        v82 = v106[184];
        v75 = *&v106[72];
        v76 = *&v106[88];
        v77 = *&v106[104];
        v78 = *&v106[120];
        v71 = *&v106[8];
        v72 = *&v106[24];
        v73 = *&v106[40];
        v74 = *&v106[56];
        if (sub_1B075FACC(&v71) == 1)
        {
          return 0;
        }

        v69[8] = v91;
        v69[9] = v92;
        v69[10] = v93;
        v70 = v94;
        v69[4] = v87;
        v69[5] = v88;
        v69[6] = v89;
        v69[7] = v90;
        v69[0] = v83;
        v69[1] = v84;
        v69[2] = v85;
        v69[3] = v86;
        if (sub_1B0717014(v69) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v69);
          v21 = *(v20 + 80);
          v109[4] = *(v20 + 64);
          v109[5] = v21;
          v109[6] = *(v20 + 96);
          v110 = *(v20 + 112);
          v22 = *(v20 + 16);
          v109[0] = *v20;
          v109[1] = v22;
          v23 = *(v20 + 48);
          v109[2] = *(v20 + 32);
          v109[3] = v23;
          v65 = v79;
          v66 = v80;
          v67 = v81;
          v68 = v82;
          v61 = v75;
          v62 = v76;
          v63 = v77;
          v64 = v78;
          v57 = v71;
          v58 = v72;
          v59 = v73;
          v60 = v74;
          if (sub_1B0717014(&v57) != 1)
          {
            goto LABEL_20;
          }

          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v57);
          v25 = *(v24 + 80);
          v111[4] = *(v24 + 64);
          v111[5] = v25;
          v111[6] = *(v24 + 96);
          v112 = *(v24 + 112);
          v26 = *(v24 + 16);
          v111[0] = *v24;
          v111[1] = v26;
          v27 = *(v24 + 48);
          v111[2] = *(v24 + 32);
          v111[3] = v27;
          sub_1B0A912A8(&v95, v55);
          sub_1B0A912A8(v106, v55);
          v28 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(v109, v111);
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v69);
          v30 = v29[9];
          v107[8] = v29[8];
          v107[9] = v30;
          v107[10] = v29[10];
          v31 = v29[5];
          v107[4] = v29[4];
          v107[5] = v31;
          v32 = v29[6];
          v107[7] = v29[7];
          v107[6] = v32;
          v33 = v29[1];
          v107[0] = *v29;
          v107[1] = v33;
          v34 = v29[2];
          v107[3] = v29[3];
          v107[2] = v34;
          v68 = v82;
          v66 = v80;
          v67 = v81;
          v64 = v78;
          v65 = v79;
          v62 = v76;
          v63 = v77;
          v60 = v74;
          v61 = v75;
          v58 = v72;
          v59 = v73;
          v57 = v71;
          if (sub_1B0717014(&v57) == 1)
          {
LABEL_20:
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v57);
            return 0;
          }

          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v57);
          v36 = v35[9];
          v108[8] = v35[8];
          v108[9] = v36;
          v108[10] = v35[10];
          v37 = v35[5];
          v108[4] = v35[4];
          v108[5] = v37;
          v38 = v35[6];
          v108[7] = v35[7];
          v108[6] = v38;
          v39 = v35[1];
          v108[0] = *v35;
          v108[1] = v39;
          v40 = v35[2];
          v108[3] = v35[3];
          v108[2] = v40;
          sub_1B0A912A8(&v95, v55);
          sub_1B0A912A8(v106, v55);
          v28 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v107, v108);
        }

        v41 = v28;
        sub_1B0B66634(v106);
        sub_1B0B66634(&v95);
        if (!v41)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v42 = v13[9];
      v103 = v13[8];
      v104 = v42;
      v105[0] = v13[10];
      *(v105 + 9) = *(v13 + 169);
      v43 = v13[4];
      v100 = v13[5];
      v44 = v13[7];
      v101 = v13[6];
      v102 = v44;
      v45 = v13[1];
      v95 = *v13;
      v96 = v45;
      v46 = v13[2];
      v47 = v13[3];
      v13 += 12;
      v97 = v46;
      v98 = v47;
      v99 = v43;
      v48 = v14[9];
      *&v106[128] = v14[8];
      *&v106[144] = v48;
      *&v106[160] = v14[10];
      *&v106[169] = *(v14 + 169);
      v49 = v14[5];
      *&v106[64] = v14[4];
      *&v106[80] = v49;
      v50 = v14[7];
      *&v106[96] = v14[6];
      *&v106[112] = v50;
      v51 = v14[1];
      *v106 = *v14;
      *&v106[16] = v51;
      v52 = v14[2];
      v53 = v14[3];
      v14 += 12;
      *&v106[32] = v52;
      *&v106[48] = v53;
      if (*v106 != v95)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1B03D44D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B03D4530(char *a1, int64_t a2, char a3)
{
  result = sub_1B03DA3A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03D4550(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for OutboundContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v9 = type metadata accessor for Framer.OutboundMessage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;

  sub_1B03D4ADC(v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B03D5174(a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B0C02B44();
    }

    else
    {
      sub_1B0C05704();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0C024DC(a1, *v12);
    }

    else
    {
      v17 = v12[1];
      v18 = v12[2];
      *(v1 + 242) = *v12;
      *(v1 + 243) = v17;
      *(v1 + 244) = v18;
    }
  }

  else
  {
    v14 = *v12;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5658, &qword_1B0ED3900);
    sub_1B04498A0(&v12[*(v15 + 48)], v8, type metadata accessor for OutboundContent);
    v16 = sub_1B0C02EEC(v14, v8, a1);
    if ((v16 & 1) == 0)
    {
      swift_beginAccess();
      v19 = *(v1 + 224);
      v23[0] = *(v1 + 208);
      v23[1] = v19;
      v24 = *(v1 + 240);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = sub_1B03DA44C();
      sub_1B03D61C8(v23);
      if (v20 >= 10000)
      {
        sub_1B03D5174(a1);
      }
    }

    sub_1B03D6B24(v8, type metadata accessor for OutboundContent);
  }

  return sub_1B0E440C8();
}

uint64_t sub_1B03D4ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5670, &qword_1B0ED3908) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v23 - v3;
  v5 = type metadata accessor for OutboundContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44018();
  if (!v26)
  {
    v13 = &qword_1EB6E29B0;
    v14 = &qword_1B0E9F008;
    v15 = v25;
LABEL_9:
    sub_1B0398EFC(v15, v13, v14);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v24;
    sub_1B0E44018();
    if (v26)
    {
      v11 = swift_dynamicCast();
      (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {

        sub_1B04498A0(v4, v9, type metadata accessor for OutboundContent);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5658, &qword_1B0ED3900) + 48);
        *a1 = v10;
        sub_1B04498A0(v9, a1 + v12, type metadata accessor for OutboundContent);
        type metadata accessor for Framer.OutboundMessage();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
      (*(v6 + 56))(v4, 1, 1, v5);
    }

    v13 = &qword_1EB6E5670;
    v14 = &qword_1B0ED3908;
    v15 = v4;
    goto LABEL_9;
  }

LABEL_10:
  sub_1B0E44018();
  if (v26)
  {
    goto LABEL_11;
  }

  sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  sub_1B0E44018();
  if (v26)
  {
    sub_1B0E44118();
    if (swift_dynamicCast())
    {

      *a1 = v24;
      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  sub_1B0E44018();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      v17 = BYTE1(v24);
      v18 = BYTE2(v24);
      *a1 = v24;
      *(a1 + 1) = v17;
      *(a1 + 2) = v18;
      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  sub_1B0E44018();
  if (v26)
  {
LABEL_11:

    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
    type metadata accessor for Framer.OutboundMessage();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  sub_1B0E44018();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v19 = sub_1B0E439A8();
  __swift_project_value_buffer(v19, qword_1EB6DCD58);
  v20 = sub_1B0E43988();
  v21 = sub_1B0E458E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B0389000, v20, v21, "Message has no outbound content.", v22, 2u);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  sub_1B0C05A4C();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_1B03D5174(uint64_t a1)
{
  v4 = _s11CompressionO12OutgoingDataVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(*(v1 + 208) + 16))
  {
    sub_1B03D55F0(a1, v7);
    if (v2)
    {
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v9 = sub_1B0E439A8();
      __swift_project_value_buffer(v9, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v10 = v2;
      v11 = sub_1B0E43988();
      v12 = sub_1B0E458E8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v40 = v15;
        *v13 = 68158466;
        *(v13 + 4) = 2;
        *(v13 + 8) = 256;
        *(v13 + 10) = sub_1B04314DC();

        *(v13 + 11) = 2082;
        v16 = sub_1B04314DC();
        v17 = ConnectionID.debugDescription.getter(HIDWORD(v16));
        v19 = sub_1B0399D64(v17, v18, &v40);

        *(v13 + 13) = v19;
        *(v13 + 21) = 2112;
        v20 = sub_1B0E42CC8();
        *(v13 + 23) = v20;
        *v14 = v20;
        _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] Protocol error while sending. %@", v13, 0x1Fu);
        sub_1B0398EFC(v14, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x1B272C230](v15, -1, -1);
        MEMORY[0x1B272C230](v13, -1, -1);
      }

      else
      {
      }

      return swift_willThrow();
    }

    else
    {
      sub_1B03D6588(v7);
      if (*(*(v1 + 208) + 16))
      {
        v21 = *(v1 + 232);
        v22 = *(v1 + 240);
        v23 = *(v1 + 241);
        v35 = *(v1 + 208);
        v36 = *(v1 + 216);
        v37 = v21;
        v38 = v22;
        v39 = v23;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = sub_1B03DA44C();

        if (qword_1EB6DCD50 != -1)
        {
          swift_once();
        }

        v25 = sub_1B0E439A8();
        __swift_project_value_buffer(v25, qword_1EB6DCD58);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v26 = sub_1B0E43988();
        v27 = sub_1B0E458D8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v40 = v29;
          *v28 = 68158466;
          *(v28 + 4) = 2;
          *(v28 + 8) = 256;
          *(v28 + 10) = sub_1B04314DC();

          *(v28 + 11) = 2082;
          v30 = sub_1B04314DC();
          v31 = ConnectionID.debugDescription.getter(HIDWORD(v30));
          v33 = sub_1B0399D64(v31, v32, &v40);

          *(v28 + 13) = v33;
          *(v28 + 21) = 2048;
          *(v28 + 23) = v24;
          _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx-%{public}s] Output buffer still holds %{iec-bytes}ld. Waiting for server response.", v28, 0x1Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x1B272C230](v29, -1, -1);
          MEMORY[0x1B272C230](v28, -1, -1);
        }

        else
        {
        }
      }

      return sub_1B03D6B24(v7, _s11CompressionO12OutgoingDataVMa);
    }
  }

  return result;
}

void sub_1B03D55F0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v100 = a1;
  v101 = _s11CompressionO12OutgoingDataVMa();
  v5 = *(*(v101 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v101);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v95 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v95 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v95 - v15;
  swift_beginAccess();
  v17 = *(v2 + 224);
  v104[0] = *(v2 + 208);
  v104[1] = v17;
  v105 = *(v2 + 240);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B03DA44C();
  sub_1B03D61C8(v104);
  v19 = *(v2 + 248);
  v20 = *(v3 + 256);

  sub_1B03D623C(v19);
  v21 = v102;
  sub_1B03DA8AC(v19, v3, a2);
  sub_1B03D6500(v19);
  if (v21)
  {
    return;
  }

  v98 = v16;
  v99 = v14;
  v102 = v11;
  sub_1B0E443C8();
  sub_1B03D6540(&qword_1EB6DB980, 255, MEMORY[0x1E69E7FD0]);
  sub_1B0E45668();
  sub_1B0E456C8();
  v22 = v101;
  if (v106 == v103)
  {
    return;
  }

  v23 = a2;
  v24 = &a2[v101[7]];
  if (v24[8])
  {
    return;
  }

  v25 = *v24;
  v26 = v23 + v101[8];
  v27 = *v26;
  v28 = *(v26 + 8);
  if (*(v23 + v101[5]) != v18)
  {
    v97 = 0;
    if (v28)
    {
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v45 = sub_1B0E439A8();
      __swift_project_value_buffer(v45, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v8 = v102;
      sub_1B03FD270(v23, v102, _s11CompressionO12OutgoingDataVMa);
      v46 = sub_1B0E43988();
      v47 = sub_1B0E458D8();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_25;
      }

      v48 = swift_slowAlloc();
      v49 = v25;
      v50 = swift_slowAlloc();
      v106 = v50;
      *v48 = 68158722;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      *(v48 + 10) = sub_1B04314DC();

      *(v48 + 11) = 2082;
      v51 = sub_1B04314DC();
      v52 = ConnectionID.debugDescription.getter(HIDWORD(v51));
      v54 = v22;
      v55 = sub_1B0399D64(v52, v53, &v106);

      *(v48 + 13) = v55;
      *(v48 + 21) = 2048;
      v56 = *&v8[v54[5]];
      sub_1B03D6B24(v8, _s11CompressionO12OutgoingDataVMa);
      *(v48 + 23) = v56;
      *(v48 + 31) = 2082;
      v57 = Tag.debugDescription.getter(v49 & 0xFFFFFFFF000000FFLL);
      v59 = sub_1B0399D64(v57, v58, &v106);

      *(v48 + 33) = v59;
      _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tag %{public}s).", v48, 0x29u);
      swift_arrayDestroy();
      v60 = v50;
    }

    else
    {
      v102 = v27;
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v78 = sub_1B0E439A8();
      __swift_project_value_buffer(v78, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03FD270(v23, v8, _s11CompressionO12OutgoingDataVMa);
      v46 = sub_1B0E43988();
      v79 = sub_1B0E458D8();
      if (!os_log_type_enabled(v46, v79))
      {
        goto LABEL_25;
      }

      v48 = swift_slowAlloc();
      v80 = v8;
      v81 = swift_slowAlloc();
      v106 = v81;
      *v48 = 68158978;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      *(v48 + 10) = sub_1B04314DC();

      *(v48 + 11) = 2082;
      v82 = sub_1B04314DC();
      v83 = ConnectionID.debugDescription.getter(HIDWORD(v82));
      v85 = v25;
      v86 = v22;
      v87 = sub_1B0399D64(v83, v84, &v106);

      *(v48 + 13) = v87;
      *(v48 + 21) = 2048;
      v88 = *(v80 + v86[5]);
      sub_1B03D6B24(v80, _s11CompressionO12OutgoingDataVMa);
      *(v48 + 23) = v88;
      *(v48 + 31) = 2082;
      v89 = Tag.debugDescription.getter(v85 & 0xFFFFFFFF000000FFLL);
      v91 = sub_1B0399D64(v89, v90, &v106);

      *(v48 + 33) = v91;
      *(v48 + 41) = 2082;
      v92 = Tag.debugDescription.getter(v102 & 0xFFFFFFFF000000FFLL);
      v94 = sub_1B0399D64(v92, v93, &v106);

      *(v48 + 43) = v94;
      _os_log_impl(&dword_1B0389000, v46, v79, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tags %{public}s - %{public}s).", v48, 0x33u);
      swift_arrayDestroy();
      v60 = v81;
    }

    MEMORY[0x1B272C230](v60, -1, -1);
    v77 = v48;
    goto LABEL_24;
  }

  if ((*(v26 + 8) & 1) == 0)
  {
    v96 = v25;
    v97 = 0;
    v102 = v27;
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v61 = sub_1B0E439A8();
    __swift_project_value_buffer(v61, qword_1EB6DCD58);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v8 = v99;
    sub_1B03FD270(v23, v99, _s11CompressionO12OutgoingDataVMa);
    v46 = sub_1B0E43988();
    v62 = sub_1B0E458D8();
    if (os_log_type_enabled(v46, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v106 = v64;
      *v63 = 68159234;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      *(v63 + 10) = sub_1B04314DC();

      *(v63 + 11) = 2082;
      v65 = sub_1B04314DC();
      v66 = ConnectionID.debugDescription.getter(HIDWORD(v65));
      v68 = v22;
      v69 = sub_1B0399D64(v66, v67, &v106);

      *(v63 + 13) = v69;
      *(v63 + 21) = 2048;
      v70 = *&v8[v68[5]];
      sub_1B03D6B24(v8, _s11CompressionO12OutgoingDataVMa);
      *(v63 + 23) = v70;
      *(v63 + 31) = 2048;
      *(v63 + 33) = v18;
      *(v63 + 41) = 2082;
      v71 = Tag.debugDescription.getter(v96 & 0xFFFFFFFF000000FFLL);
      v73 = sub_1B0399D64(v71, v72, &v106);

      *(v63 + 43) = v73;
      *(v63 + 51) = 2082;
      v74 = Tag.debugDescription.getter(v102 & 0xFFFFFFFF000000FFLL);
      v76 = sub_1B0399D64(v74, v75, &v106);

      *(v63 + 53) = v76;
      _os_log_impl(&dword_1B0389000, v46, v62, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tags %{public}s - %{public}s).", v63, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v64, -1, -1);
      v77 = v63;
LABEL_24:
      MEMORY[0x1B272C230](v77, -1, -1);

      return;
    }

LABEL_25:
    sub_1B03D6B24(v8, _s11CompressionO12OutgoingDataVMa);

    return;
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v29 = sub_1B0E439A8();
  __swift_project_value_buffer(v29, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v30 = v98;
  sub_1B03FD270(v23, v98, _s11CompressionO12OutgoingDataVMa);
  v31 = sub_1B0E43988();
  v32 = sub_1B0E458D8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v96 = v25;
    v34 = v33;
    v102 = swift_slowAlloc();
    v106 = v102;
    *v34 = 68158978;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    *(v34 + 10) = sub_1B04314DC();

    *(v34 + 11) = 2082;
    v35 = sub_1B04314DC();
    v36 = ConnectionID.debugDescription.getter(HIDWORD(v35));
    v38 = v22;
    v39 = sub_1B0399D64(v36, v37, &v106);

    *(v34 + 13) = v39;
    *(v34 + 21) = 2048;
    v40 = *(v30 + v38[5]);
    sub_1B03D6B24(v30, _s11CompressionO12OutgoingDataVMa);
    *(v34 + 23) = v40;
    *(v34 + 31) = 2048;
    *(v34 + 33) = v18;
    *(v34 + 41) = 2082;
    v41 = Tag.debugDescription.getter(v96 & 0xFFFFFFFF000000FFLL);
    v43 = sub_1B0399D64(v41, v42, &v106);

    *(v34 + 43) = v43;
    _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tag %{public}s).", v34, 0x33u);
    v44 = v102;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v44, -1, -1);
    MEMORY[0x1B272C230](v34, -1, -1);
  }

  else
  {
    sub_1B03D6B24(v30, _s11CompressionO12OutgoingDataVMa);
  }
}

uint64_t sub_1B03D60F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D6160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D623C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1B03D6500(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B03D6540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1B03D6588(uint64_t a1)
{
  v32 = _s11CompressionO12OutgoingDataVMa();
  v2 = *(*(v32 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v32);
  v33 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30[-v5];
  v34 = sub_1B0E43868();
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30[-v11];
  v13 = sub_1B0E43828();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E443C8();
  sub_1B03D6540(&qword_1EB6DB980, 255, MEMORY[0x1E69E7FD0]);
  sub_1B0E45668();
  result = sub_1B0E456C8();
  if (v37[0] == v37[4])
  {
    return result;
  }

  sub_1B0E44098();
  sub_1B0E440F8();
  sub_1B0E44058();

  if (!v37[3])
  {
    sub_1B0398EFC(v37, &qword_1EB6E29B0, &qword_1B0E9F008);
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_1B0398EFC(v12, &qword_1EB6E5530, &qword_1B0ED0CF8);
  }

  v19 = swift_dynamicCast();
  (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1B0398EFC(v12, &qword_1EB6E5530, &qword_1B0ED0CF8);
  }

  (*(v14 + 32))(v17, v12, v13);
  v20 = tracingSignposter.unsafeMutableAddressor();
  v21 = v34;
  (*(v36 + 16))(v35, v20, v34);
  sub_1B03FD270(a1, v6, _s11CompressionO12OutgoingDataVMa);
  v22 = v33;
  sub_1B03FD270(a1, v33, _s11CompressionO12OutgoingDataVMa);
  v23 = sub_1B0E43858();
  v24 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v25 = swift_slowAlloc();
    v31 = v24;
    v26 = v25;
    *v25 = 134218240;
    v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);
    *(v26 + 1) = v27;
    *(v26 + 6) = 2048;
    v28 = *&v22[*(v32 + 20)];
    sub_1B03D6B24(v22, _s11CompressionO12OutgoingDataVMa);
    *(v26 + 14) = v28;
    v29 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v23, v31, v29, "Connection.didSendData", "%ld,%ld", v26, 0x16u);
    MEMORY[0x1B272C230](v26, -1, -1);
  }

  else
  {
    sub_1B03D6B24(v22, _s11CompressionO12OutgoingDataVMa);
    sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);
  }

  (*(v36 + 8))(v35, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1B03D6AC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D6B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D6B84()
{
  v0 = *(*(sub_1B0E43828() - 8) + 80);

  return sub_1B03D6BF4();
}

uint64_t sub_1B03D6BF4()
{
  v0 = sub_1B0E43868();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = tracingSignposter.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_1B0E43858();
  v7 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v6, v7, v9, "Connection.didFlush", "", v8, 2u);
    MEMORY[0x1B272C230](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t type metadata accessor for MessagesPendingDownloadPerPass()
{
  result = qword_1EB6DD368;
  if (!qword_1EB6DD368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03D6DD0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v66 = a4;
  v63 = a2;
  v6 = type metadata accessor for DetermineNewestMessages();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4610, &qword_1B0EC59A0);
  v13 = *(*(v64 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for NewestMessages();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v27 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v28 = type metadata accessor for MailboxSyncState();
  sub_1B03B5C80(v26 + v27 + *(v28 + 64), v20, &qword_1EB6E4068, &unk_1B0EC2D20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B0398EFC(v20, &qword_1EB6E4068, &unk_1B0EC2D20);
    v29 = *(v4 + 43);
    v30 = *v4;
    v31 = v4[1];
    v32 = v4[2];
    v33 = *(v4 + 6);
    *v10 = MEMORY[0x1E69E7CD0];
    v10[8] = 0;
    v34 = *(v6 + 32);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(*(v35 - 8) + 56))(&v10[v34], 1, 1, v35);
    v67 = v32;
    v68 = v33;
    *(v10 + 2) = v6;
    sub_1B0451F2C();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    *(v10 + 8) = v30;
    *(v10 + 9) = v31;
    *(v10 + 40) = v29;
    *(v10 + 11) = v32;
    *(v10 + 24) = v33;
    v36 = v62;
    sub_1B0B24104(v10, v62, type metadata accessor for DetermineNewestMessages);
    v37 = v64;
    v38 = (v36 + *(v64 + 36));
    v39 = MEMORY[0x1E69E7CC0];
    *v38 = MEMORY[0x1E69E7CC0];
    v38[1] = v39;
    v69 = v37;
    v40 = sub_1B0B23F6C(&qword_1EB6DD3A0, &qword_1EB6E4610, &qword_1B0EC59A0);
    v70 = v40;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v67);
    sub_1B03B5C80(v36, v41, &qword_1EB6E4610, &qword_1B0EC59A0);
    LOBYTE(v34) = v63(&v67);
    __swift_destroy_boxed_opaque_existential_0(&v67);
    if ((v34 & 1) == 0)
    {
      sub_1B0398EFC(v36, &qword_1EB6E4610, &qword_1B0EC59A0);
      _s29DetermineNewestMessagesResultOMa(0);
      v59 = v66;
      *v66 = 0u;
      *(v59 + 16) = 0u;
      *(v59 + 32) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    v42 = v66;
    v66[3] = v37;
    v42[4] = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    sub_1B03C60A4(v36, boxed_opaque_existential_1, &qword_1EB6E4610, &qword_1B0EC59A0);
    goto LABEL_8;
  }

  v44 = v64;
  sub_1B0B24104(v20, v25, type metadata accessor for NewestMessages);
  if (*&v25[*(v21 + 24)] <= 130 && *&v25[*(v21 + 20)] < 131)
  {
LABEL_12:
    sub_1B0B24104(v25, v66, type metadata accessor for NewestMessages);
    _s29DetermineNewestMessagesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v62 = v25;
  v45 = *(v4 + 43);
  v46 = *v4;
  v47 = v4[1];
  v48 = v4[2];
  v49 = *(v4 + 6);
  *v12 = MEMORY[0x1E69E7CD0];
  v12[8] = 0;
  v50 = *(v6 + 32);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  (*(*(v51 - 8) + 56))(&v12[v50], 1, 1, v51);
  v67 = v48;
  v68 = v49;
  *(v12 + 2) = v6;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v12 + 8) = v46;
  *(v12 + 9) = v47;
  *(v12 + 40) = v45;
  *(v12 + 11) = v48;
  *(v12 + 24) = v49;
  v52 = v61;
  sub_1B0B24104(v12, v61, type metadata accessor for DetermineNewestMessages);
  v53 = (v52 + *(v44 + 36));
  v54 = MEMORY[0x1E69E7CC0];
  *v53 = MEMORY[0x1E69E7CC0];
  v53[1] = v54;
  v69 = v44;
  v55 = sub_1B0B23F6C(&qword_1EB6DD3A0, &qword_1EB6E4610, &qword_1B0EC59A0);
  v70 = v55;
  v56 = __swift_allocate_boxed_opaque_existential_1(&v67);
  sub_1B03B5C80(v52, v56, &qword_1EB6E4610, &qword_1B0EC59A0);
  LOBYTE(v50) = v63(&v67);
  __swift_destroy_boxed_opaque_existential_0(&v67);
  if ((v50 & 1) == 0)
  {
    sub_1B0398EFC(v52, &qword_1EB6E4610, &qword_1B0EC59A0);
    v25 = v62;
    goto LABEL_12;
  }

  v57 = v66;
  v66[3] = v44;
  v57[4] = v55;
  v58 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_1B03C60A4(v52, v58, &qword_1EB6E4610, &qword_1B0EC59A0);
  sub_1B0B238BC(v62, type metadata accessor for NewestMessages);
LABEL_8:
  _s29DetermineNewestMessagesResultOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B03D74A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03D00F4();
  result = MEMORY[0x1B2727570](v2, &type metadata for OpaquePersistedMessageIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_1B03B2000(v7, *v5);
      sub_1B0B01F68(v8, v7, v6);
      sub_1B0391D50(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B03D753C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v200[1] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_313;
  }

  v173 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v178 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v188 = (a2 + 56);
  v13 = v197;
  v12 = v198;
  v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  v184 = v4;
  v177 = v6;
  v175 = v11;
  v176 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_316;
      }

      if (v18 >= v11)
      {
        v197 = v13;
        v198 = v12;
        goto LABEL_312;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v181 = v16;
    v199 = v16;
    v200[0] = v10;
    v23 = *(v4 + 40);
    sub_1B0E46C28();
    sub_1B03B2000(v22, v21);
    v186 = v22;
    v187 = v21;
    sub_1B0E42F48();
    v13 = __s1;
    v24 = sub_1B0E46CB8();
    v25 = -1 << *(v4 + 32);
    v3 = v24 & ~v25;
    v11 = v3 >> 6;
    v26 = v188;
    v7 = 1;
    v2 = 1 << v3;
    if (((1 << v3) & v188[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_155:
    sub_1B0391D50(v186, v187);
    v12 = v178;
    v6 = v177;
    v13 = v177;
    v14 = v176;
    v16 = v181;
    v11 = v175;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v27 = ~v25;
  v28 = v187 >> 62;
  if (v186)
  {
    v29 = 0;
  }

  else
  {
    v29 = v187 == 0xC000000000000000;
  }

  v30 = !v29;
  v183 = v30;
  v172 = HIDWORD(v186);
  v31 = __OFSUB__(HIDWORD(v186), v186);
  v180 = v31;
  v179 = HIDWORD(v186) - v186;
  v185 = BYTE6(v187);
  v174 = v186;
  v171 = v186 >> 32;
  v170 = (v186 >> 32) - v186;
  v182 = v27;
  while (1)
  {
    v32 = (*(v4 + 48) + 16 * v3);
    v6 = *v32;
    v33 = v32[1];
    v34 = v33 >> 62;
    if (v33 >> 62 == 3)
    {
      if (v6)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33 == 0xC000000000000000;
      }

      v37 = !v35 || v187 >> 62 != 3;
      if (((v37 | v183) & 1) == 0)
      {
        v6 = v177;
        v197 = v177;
        v198 = v178;
        v7 = v176;
        v196 = v176;
        v83 = 0;
        v84 = 0xC000000000000000;
LABEL_160:
        v85 = sub_1B0391D50(v83, v84);
        goto LABEL_161;
      }

LABEL_46:
      v38 = 0;
      if (v28 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_46;
      }

      v40 = *(v6 + 16);
      v39 = *(v6 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_325;
      }

      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v34)
    {
      LODWORD(v38) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_324;
      }

      v38 = v38;
      if (v28 <= 1)
      {
LABEL_43:
        v42 = v185;
        if (v28)
        {
          v42 = v179;
          if (v180)
          {
            goto LABEL_320;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v38 = BYTE6(v33);
      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v28 != 2)
    {
      if (!v38)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    v44 = *(v186 + 16);
    v43 = *(v186 + 24);
    v41 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (v41)
    {
      goto LABEL_319;
    }

LABEL_49:
    if (v38 != v42)
    {
      goto LABEL_23;
    }

    if (v38 < 1)
    {
      goto LABEL_158;
    }

    if (v34 > 1)
    {
      break;
    }

    if (v34)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_326;
      }

      sub_1B03B2000(v6, v33);
      v51 = sub_1B0E42A98();
      if (v51)
      {
        v4 = v51;
        v52 = sub_1B0E42AC8();
        if (__OFSUB__(v6, v52))
        {
          goto LABEL_330;
        }

        v169 = v6 - v52 + v4;
      }

      else
      {
        v169 = 0;
      }

      v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1B0E42AB8();
      v4 = v184;
      v7 = 1;
      if (v28 == 2)
      {
        v73 = *(v186 + 24);
        v168 = *(v186 + 16);
        v167 = v73;
        v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1B0E42A98();
        if (v4)
        {
          v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
          v74 = sub_1B0E42AC8();
          v75 = v168;
          if (__OFSUB__(v168, v74))
          {
            goto LABEL_358;
          }

          v4 += v168 - v74;
        }

        else
        {
          v75 = v168;
        }

        v81 = v167 - v75;
        if (__OFSUB__(v167, v75))
        {
          goto LABEL_347;
        }

        v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
        v82 = sub_1B0E42AB8();
        if (v82 >= v81)
        {
          v59 = v81;
        }

        else
        {
          v59 = v82;
        }

        v60 = v169;
        if (!v169)
        {
          goto LABEL_375;
        }

        v7 = 1;
        if (!v4)
        {
          goto LABEL_374;
        }
      }

      else
      {
        if (v28 != 1)
        {
          v72 = v169;
          LODWORD(__s1[0]) = v186;
          BYTE4(__s1[0]) = v172;
          *(__s1 + 5) = *(&v186 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v186);
          LODWORD(__s1[1]) = v187;
          WORD2(__s1[1]) = WORD2(v187);
          if (!v169)
          {
            goto LABEL_382;
          }

          goto LABEL_123;
        }

        if (v171 < v174)
        {
          goto LABEL_346;
        }

        v4 = sub_1B0E42A98();
        if (v4)
        {
          v61 = sub_1B0E42AC8();
          if (__OFSUB__(v174, v61))
          {
            goto LABEL_360;
          }

          v4 += v174 - v61;
        }

        v7 = 1;
        v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
        v62 = sub_1B0E42AB8();
        v59 = v170;
        if (v62 < v170)
        {
          v59 = v62;
        }

        v60 = v169;
        if (!v169)
        {
          goto LABEL_386;
        }

        if (!v4)
        {
          goto LABEL_385;
        }
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v33;
    BYTE2(__s1[1]) = BYTE2(v33);
    BYTE3(__s1[1]) = BYTE3(v33);
    BYTE4(__s1[1]) = BYTE4(v33);
    BYTE5(__s1[1]) = BYTE5(v33);
    if (!v28)
    {
      goto LABEL_76;
    }

    if (v28 != 1)
    {
      v63 = *(v186 + 24);
      v169 = *(v186 + 16);
      v168 = v63;
      sub_1B03B2000(v6, v33);
      v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
        v64 = sub_1B0E42AC8();
        v65 = v169;
        if (__OFSUB__(v169, v64))
        {
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_356:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_357:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_358:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_359:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_360:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_361:
          __break(1u);
        }

        v4 += v169 - v64;
      }

      else
      {
        v65 = v169;
      }

      v76 = v168 - v65;
      if (__OFSUB__(v168, v65))
      {
        goto LABEL_342;
      }

      v77 = sub_1B0E42AB8();
      if (!v4)
      {
        goto LABEL_378;
      }

LABEL_131:
      if (v77 >= v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = v77;
      }

      v13 = memcmp(__s1, v4, v78);
      sub_1B0391D50(v6, v33);
      v4 = v184;
      v26 = v188;
      v7 = 1;
LABEL_153:
      v27 = v182;
      if (!v13)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v171 < v174)
    {
      goto LABEL_339;
    }

    sub_1B03B2000(v6, v33);
    v45 = sub_1B0E42A98();
    if (!v45)
    {
      goto LABEL_376;
    }

    v4 = v45;
    v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
    v46 = sub_1B0E42AC8();
    if (__OFSUB__(v174, v46))
    {
      goto LABEL_344;
    }

    v47 = (v174 - v46 + v4);
    v48 = sub_1B0E42AB8();
    if (!v47)
    {
      goto LABEL_377;
    }

LABEL_109:
    if (v48 >= v170)
    {
      v68 = v170;
    }

    else
    {
      v68 = v48;
    }

    v13 = memcmp(__s1, v47, v68);
    sub_1B0391D50(v6, v33);
    v4 = v184;
    v26 = v188;
    v27 = v182;
    v7 = 1;
    if (!v13)
    {
LABEL_158:
      v6 = v177;
      v197 = v177;
      v198 = v178;
      v7 = v176;
      v196 = v176;
      v83 = v186;
      v84 = v187;
      goto LABEL_160;
    }

LABEL_23:
    v3 = (v3 + 1) & v27;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v26[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_155;
    }
  }

  if (v34 != 2)
  {
    memset(__s1, 0, 14);
    if (!v28)
    {
LABEL_76:
      __s2 = v186;
      v190 = v172;
      v191 = *(&v186 + 5);
      v192 = HIBYTE(v186);
      v193 = v187;
      v194 = WORD2(v187);
      v56 = memcmp(__s1, &__s2, v185);
      v27 = v182;
      v26 = v188;
      if (!v56)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v28 == 2)
    {
      v53 = *(v186 + 24);
      v169 = *(v186 + 16);
      v168 = v53;
      sub_1B03B2000(v6, v33);
      v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
        v54 = sub_1B0E42AC8();
        v55 = v169;
        if (__OFSUB__(v169, v54))
        {
          goto LABEL_356;
        }

        v4 += v169 - v54;
      }

      else
      {
        v55 = v169;
      }

      v76 = v168 - v55;
      if (__OFSUB__(v168, v55))
      {
        goto LABEL_341;
      }

      v77 = sub_1B0E42AB8();
      if (!v4)
      {
        goto LABEL_380;
      }

      goto LABEL_131;
    }

    if (v171 < v174)
    {
      goto LABEL_338;
    }

    sub_1B03B2000(v6, v33);
    v66 = sub_1B0E42A98();
    if (!v66)
    {
      goto LABEL_379;
    }

    v4 = v66;
    v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
    v67 = sub_1B0E42AC8();
    if (__OFSUB__(v174, v67))
    {
      goto LABEL_343;
    }

    v47 = (v174 - v67 + v4);
    v48 = sub_1B0E42AB8();
    if (!v47)
    {
      goto LABEL_381;
    }

    goto LABEL_109;
  }

  v7 = *(v6 + 16);
  sub_1B03B2000(v6, v33);
  v49 = sub_1B0E42A98();
  if (v49)
  {
    v4 = v49;
    v50 = sub_1B0E42AC8();
    if (__OFSUB__(v7, v50))
    {
      goto LABEL_329;
    }

    v169 = v7 - v50 + v4;
  }

  else
  {
    v169 = 0;
  }

  v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1B0E42AB8();
  v4 = v184;
  v7 = 1;
  if (v28 != 2)
  {
    if (v28 == 1)
    {
      if (v171 < v174)
      {
        goto LABEL_340;
      }

      v4 = sub_1B0E42A98();
      if (v4)
      {
        v57 = sub_1B0E42AC8();
        if (__OFSUB__(v174, v57))
        {
          goto LABEL_359;
        }

        v4 += v174 - v57;
      }

      v7 = 1;
      v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
      v58 = sub_1B0E42AB8();
      v59 = v170;
      if (v58 < v170)
      {
        v59 = v58;
      }

      v60 = v169;
      if (!v169)
      {
        goto LABEL_388;
      }

      if (!v4)
      {
        goto LABEL_387;
      }

      goto LABEL_150;
    }

    v72 = v169;
    LODWORD(__s1[0]) = v186;
    BYTE4(__s1[0]) = v172;
    *(__s1 + 5) = *(&v186 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v186);
    LODWORD(__s1[1]) = v187;
    WORD2(__s1[1]) = WORD2(v187);
    if (!v169)
    {
      goto LABEL_373;
    }

LABEL_123:
    v13 = memcmp(v72, __s1, v185);
    sub_1B0391D50(v6, v33);
LABEL_152:
    v26 = v188;
    goto LABEL_153;
  }

  v69 = *(v186 + 24);
  v168 = *(v186 + 16);
  v167 = v69;
  v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = sub_1B0E42A98();
  if (v4)
  {
    v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
    v70 = sub_1B0E42AC8();
    v71 = v168;
    if (__OFSUB__(v168, v70))
    {
      goto LABEL_357;
    }

    v4 += v168 - v70;
  }

  else
  {
    v71 = v168;
  }

  v79 = v167 - v71;
  if (__OFSUB__(v167, v71))
  {
    goto LABEL_345;
  }

  v13 = v187 & 0x3FFFFFFFFFFFFFFFLL;
  v80 = sub_1B0E42AB8();
  if (v80 >= v79)
  {
    v59 = v79;
  }

  else
  {
    v59 = v80;
  }

  v60 = v169;
  if (!v169)
  {
    goto LABEL_384;
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_383;
  }

LABEL_150:
  if (v60 != v4)
  {
    v13 = memcmp(v60, v4, v59);
    sub_1B0391D50(v6, v33);
    v4 = v184;
    goto LABEL_152;
  }

  v197 = v177;
  v198 = v178;
  v7 = v176;
  v196 = v176;
  sub_1B0391D50(v186, v187);
  v159 = v6;
  v6 = v177;
  v85 = sub_1B0391D50(v159, v33);
  v4 = v184;
LABEL_161:
  v86 = *(v4 + 32);
  v165 = ((1 << v86) + 63) >> 6;
  v15 = 8 * v165;
  if ((v86 & 0x3Fu) > 0xD)
  {
    goto LABEL_331;
  }

LABEL_162:
  v166 = &v162;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v162 - ((v87 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v88, v188, v87);
  v89 = *&v88[8 * v11] & ~v2;
  v168 = v88;
  *&v88[8 * v11] = v89;
  v90 = *(v4 + 16) - 1;
  v12 = v181;
  v91 = v175;
  while (2)
  {
    v167 = v90;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v92 = v12;
      do
      {
        v93 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_316:
          v197 = v13;
          v198 = v12;
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_320:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_325:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_326:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_330:
          v197 = v177;
          v198 = v178;
          __break(1u);
LABEL_331:
          v160 = v15;

          v13 = v160;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_353;
          }

          goto LABEL_162;
        }

        if (v93 >= v91)
        {
          v4 = sub_1B0BAA704(v168, v165, v167, v4);
          goto LABEL_312;
        }

        v10 = *(v6 + 8 * v93);
        ++v92;
      }

      while (!v10);
      v12 = v93;
LABEL_171:
      v94 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v95 = (*(v7 + 48) + ((v12 << 10) | (16 * v94)));
      v97 = *v95;
      v96 = v95[1];
      v196 = v7;
      v197 = v6;
      v98 = v97;
      v6 = v96;
      v198 = v178;
      v199 = v12;
      v181 = v12;
      v200[0] = v10;
      v99 = *(v4 + 40);
      sub_1B0E46C28();
      sub_1B03B2000(v98, v6);
      sub_1B0E42F48();
      v13 = __s1;
      v100 = sub_1B0E46CB8();
      v101 = -1 << *(v4 + 32);
      v28 = v100 & ~v101;
      v11 = v28 >> 6;
      v102 = v188;
      v103 = v188[v28 >> 6];
      v2 = 1 << v28;
      v187 = v98;
      if (((1 << v28) & v103) != 0)
      {
        break;
      }

LABEL_164:
      sub_1B0391D50(v187, v6);
      v6 = v177;
      v7 = v176;
      v12 = v181;
      v91 = v175;
    }

    v104 = ~v101;
    v29 = v98 == 0;
    v105 = v98;
    v7 = v6 >> 62;
    v107 = !v29 || v6 != 0xC000000000000000;
    v183 = v107;
    v172 = HIDWORD(v105);
    v108 = __OFSUB__(HIDWORD(v105), v105);
    v180 = v108;
    v179 = HIDWORD(v105) - v105;
    v186 = BYTE6(v6);
    v174 = v105;
    v171 = v105 >> 32;
    v169 = (v105 >> 32) - v105;
    v185 = v6;
    v182 = v104;
    while (2)
    {
      v109 = (*(v4 + 48) + 16 * v28);
      v110 = *v109;
      v3 = v109[1];
      v111 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v111 <= 1)
        {
          if (v111)
          {
            LODWORD(v115) = HIDWORD(v110) - v110;
            if (__OFSUB__(HIDWORD(v110), v110))
            {
              goto LABEL_322;
            }

            v115 = v115;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v115 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v111 != 2)
        {
          goto LABEL_206;
        }

        v117 = *(v110 + 16);
        v116 = *(v110 + 24);
        v41 = __OFSUB__(v116, v117);
        v115 = v116 - v117;
        if (v41)
        {
          goto LABEL_321;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v120 = *(v187 + 16);
          v119 = *(v187 + 24);
          v41 = __OFSUB__(v119, v120);
          v118 = v119 - v120;
          if (v41)
          {
            goto LABEL_317;
          }

          goto LABEL_209;
        }

        if (!v115)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v110)
      {
        v112 = 0;
      }

      else
      {
        v112 = v3 == 0xC000000000000000;
      }

      v114 = !v112 || v7 < 3;
      if (((v114 | v183) & 1) == 0)
      {
        v154 = 0;
        v155 = 0xC000000000000000;
        goto LABEL_303;
      }

LABEL_206:
      v115 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v118 = v186;
      if (v7)
      {
        v118 = v179;
        if (v180)
        {
          goto LABEL_318;
        }
      }

LABEL_209:
      if (v115 != v118)
      {
        goto LABEL_183;
      }

      if (v115 < 1)
      {
        goto LABEL_302;
      }

      if (v111 <= 1)
      {
        if (!v111)
        {
          __s1[0] = v110;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v174;
              v121 = v171;
              if (v171 < v174)
              {
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_339:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_340:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_341:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_342:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_343:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_344:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_345:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_346:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_347:
                v197 = v177;
                v198 = v178;
                __break(1u);
LABEL_348:
                __break(1u);
LABEL_349:
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                v28 = swift_slowAlloc();
                memcpy(v28, v188, v13);
                v6 = v173;
                v161 = sub_1B0BA9598(v28, v165, v4, v3, &v196);

                if (v6)
                {
                  goto LABEL_390;
                }

                MEMORY[0x1B272C230](v28, -1, -1);
                v178 = v198;
                v4 = v161;
LABEL_312:
                sub_1B03D91F8();
LABEL_313:
                v157 = *MEMORY[0x1E69E9840];
                return v4;
              }
            }

            else
            {
              v13 = *(v187 + 16);
              v121 = *(v187 + 24);
            }

            sub_1B03B2000(v110, v3);
            v137 = v121;
            v6 = v173;
            v138 = sub_1B0BAD28C(v13, v137, v185 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v139 = v200;
            v173 = v6;
            if (v6)
            {
              goto LABEL_389;
            }

            v13 = v138;
            sub_1B0391D50(v110, v3);
            v102 = v188;
            v6 = v185;
            v104 = v182;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v28 = (v28 + 1) & v104;
            v11 = v28 >> 6;
            v2 = 1 << v28;
            if ((v102[v28 >> 6] & (1 << v28)) == 0)
            {
              goto LABEL_164;
            }

            continue;
          }

LABEL_232:
          __s2 = v187;
          v190 = v172;
          v191 = *(&v187 + 5);
          v192 = HIBYTE(v187);
          LOWORD(v193) = v6;
          BYTE2(v193) = BYTE2(v6);
          HIBYTE(v193) = BYTE3(v6);
          LOBYTE(v194) = BYTE4(v6);
          HIBYTE(v194) = BYTE5(v6);
          v130 = memcmp(__s1, &__s2, v186);
          v104 = v182;
          v102 = v188;
          if (!v130)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v110;
        if (v110 > v110 >> 32)
        {
          goto LABEL_323;
        }

        sub_1B03B2000(v110, v3);
        v124 = sub_1B0E42A98();
        if (v124)
        {
          v6 = v124;
          v125 = sub_1B0E42AC8();
          if (__OFSUB__(v110, v125))
          {
            goto LABEL_328;
          }

          v170 = v110 - v125 + v6;
        }

        else
        {
          v170 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        sub_1B0E42AB8();
        v4 = v184;
        v6 = v185;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v171 < v174)
            {
              goto LABEL_336;
            }

            v4 = sub_1B0E42A98();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v135 = sub_1B0E42AC8();
              if (__OFSUB__(v174, v135))
              {
                goto LABEL_352;
              }

              v4 += v174 - v135;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v136 = sub_1B0E42AB8();
            v133 = v169;
            if (v136 < v169)
            {
              v133 = v136;
            }

            v134 = v170;
            if (!v170)
            {
              goto LABEL_367;
            }

            if (!v4)
            {
              goto LABEL_366;
            }

LABEL_257:
            if (v134 == v4)
            {
              goto LABEL_306;
            }

LABEL_299:
            v13 = memcmp(v134, v4, v133);
            sub_1B0391D50(v110, v3);
            v4 = v184;
LABEL_300:
            v102 = v188;
LABEL_301:
            v104 = v182;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v148 = v170;
          LODWORD(__s1[0]) = v187;
          BYTE4(__s1[0]) = v172;
          *(__s1 + 5) = *(&v187 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v187);
          LODWORD(__s1[1]) = v185;
          WORD2(__s1[1]) = WORD2(v185);
          if (!v170)
          {
            goto LABEL_363;
          }

LABEL_282:
          v13 = memcmp(v148, __s1, v186);
          sub_1B0391D50(v110, v3);
          goto LABEL_300;
        }

        v149 = *(v187 + 24);
        v164 = *(v187 + 16);
        v163 = v149;
        v13 = v185 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1B0E42A98();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v150 = sub_1B0E42AC8();
          v151 = v164;
          if (__OFSUB__(v164, v150))
          {
            goto LABEL_350;
          }

          v4 += v164 - v150;
        }

        else
        {
          v151 = v164;
        }

        v6 = v163 - v151;
        if (__OFSUB__(v163, v151))
        {
          goto LABEL_337;
        }

        v13 = v185 & 0x3FFFFFFFFFFFFFFFLL;
        v153 = sub_1B0E42AB8();
        if (v153 >= v6)
        {
          v133 = v6;
        }

        else
        {
          v133 = v153;
        }

        v134 = v170;
        if (!v170)
        {
          goto LABEL_371;
        }

        if (!v4)
        {
          goto LABEL_369;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v111 == 2)
    {
      v4 = *(v110 + 16);
      sub_1B03B2000(v110, v3);
      v122 = sub_1B0E42A98();
      if (v122)
      {
        v6 = v122;
        v123 = sub_1B0E42AC8();
        if (__OFSUB__(v4, v123))
        {
          goto LABEL_327;
        }

        v170 = v4 - v123 + v6;
      }

      else
      {
        v170 = 0;
      }

      v6 = v185;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1B0E42AB8();
      v4 = v184;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v171 < v174)
          {
            goto LABEL_334;
          }

          v4 = sub_1B0E42A98();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v131 = sub_1B0E42AC8();
            if (__OFSUB__(v174, v131))
            {
              goto LABEL_351;
            }

            v4 += v174 - v131;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v132 = sub_1B0E42AB8();
          v133 = v169;
          if (v132 < v169)
          {
            v133 = v132;
          }

          v134 = v170;
          if (!v170)
          {
            goto LABEL_372;
          }

          if (!v4)
          {
            goto LABEL_370;
          }

          goto LABEL_257;
        }

        v148 = v170;
        LODWORD(__s1[0]) = v187;
        BYTE4(__s1[0]) = v172;
        *(__s1 + 5) = *(&v187 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v187);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v170)
        {
          goto LABEL_364;
        }

        goto LABEL_282;
      }

      v145 = *(v187 + 24);
      v164 = *(v187 + 16);
      v163 = v145;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v146 = sub_1B0E42AC8();
        v147 = v164;
        if (__OFSUB__(v164, v146))
        {
          goto LABEL_348;
        }

        v4 += v164 - v146;
      }

      else
      {
        v147 = v164;
      }

      v6 = v163 - v147;
      if (__OFSUB__(v163, v147))
      {
        goto LABEL_335;
      }

      v13 = v185 & 0x3FFFFFFFFFFFFFFFLL;
      v152 = sub_1B0E42AB8();
      if (v152 >= v6)
      {
        v133 = v6;
      }

      else
      {
        v133 = v152;
      }

      v134 = v170;
      if (!v170)
      {
        goto LABEL_368;
      }

      if (!v4)
      {
        goto LABEL_365;
      }

LABEL_298:
      v6 = v185;
      if (v134 != v4)
      {
        goto LABEL_299;
      }

LABEL_306:
      sub_1B0391D50(v187, v6);
      sub_1B0391D50(v110, v3);
      v4 = v184;
LABEL_304:
      v12 = v181;
      v91 = v175;
      v156 = v168[v11];
      v168[v11] = v156 & ~v2;
      v6 = v177;
      v7 = v176;
      if ((v156 & v2) != 0)
      {
        v90 = v167 - 1;
        if (__OFSUB__(v167, 1))
        {
          goto LABEL_361;
        }

        if (v167 == 1)
        {

          v4 = MEMORY[0x1E69E7CD0];
          goto LABEL_312;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v126 = *(v187 + 16);
    v127 = *(v187 + 24);
    sub_1B03B2000(v110, v3);
    v128 = v127;
    v129 = v173;
    v13 = sub_1B0BAD28C(v126, v128, v185 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v173 = v129;
    v6 = v185;
    sub_1B0391D50(v110, v3);
    v104 = v182;
    v102 = v188;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v171 < v174)
  {
    goto LABEL_333;
  }

  sub_1B03B2000(v110, v3);
  v140 = sub_1B0E42A98();
  v141 = v6;
  v6 = v140;
  if (v140)
  {
    v13 = v141 & 0x3FFFFFFFFFFFFFFFLL;
    v142 = sub_1B0E42AC8();
    if (__OFSUB__(v174, v142))
    {
      goto LABEL_349;
    }

    v6 += v174 - v142;
  }

  v13 = v185 & 0x3FFFFFFFFFFFFFFFLL;
  v143 = sub_1B0E42AB8();
  if (v143 >= v169)
  {
    v144 = v169;
  }

  else
  {
    v144 = v143;
  }

  if (v6)
  {
    if (__s1 != v6)
    {
      v13 = memcmp(__s1, v6, v144);
      sub_1B0391D50(v110, v3);
      v102 = v188;
      v6 = v185;
      goto LABEL_301;
    }

    sub_1B0391D50(v110, v3);
    v6 = v185;
LABEL_302:
    v154 = v187;
    v155 = v6;
LABEL_303:
    sub_1B0391D50(v154, v155);
    goto LABEL_304;
  }

  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_374:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_375:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_376:
  v197 = v177;
  v198 = v178;
  sub_1B0E42AB8();
  __break(1u);
LABEL_377:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_378:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_379:
  v197 = v177;
  v198 = v178;
  sub_1B0E42AB8();
  __break(1u);
LABEL_380:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_381:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_382:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_383:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_384:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_385:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_386:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_387:
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_388:
  v139 = v178;
  v197 = v177;
  v198 = v178;
  __break(1u);
LABEL_389:

  __break(1u);
LABEL_390:

  result = MEMORY[0x1B272C230](v28, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B03D9200(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v23 = result;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v12 = a3 + 56;
LABEL_5:
  while (v9)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

LABEL_7:
    v13 = *(*(v23 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
    v14 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v13);
    result = sub_1B0E46CB8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v9 &= v9 - 1;
    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a3 + 16))
    {
      v19 = *(a3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v13);
      result = sub_1B0E46CB8();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      if ((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(a3 + 48) + v21) != v13)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }
  }

  do
  {
    v18 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v10)
    {
      return 1;
    }

    v9 = *(v6 + 8 * v18);
    ++v5;
  }

  while (!v9);
  v5 = v18;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1B03D93EC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v33[-v8];
  PendingDownload = type metadata accessor for FindPendingDownload();
  v9 = *(*(PendingDownload - 8) + 64);
  MEMORY[0x1EEE9AC00](PendingDownload);
  v36 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DownloadTask(0);
  v42 = *(a1 + 24);
  v35 = a1;
  v41 = *(a1 + 32);
  v34 = a2;
  v40 = a2 & 1;
  v12 = a3 + 56;
  v39 = sub_1B03D06A4();
  for (i = 0; i != 3; ++i)
  {
    v14 = byte_1F2710ED0[i + 32];
    v46 = v42;
    v47 = v41;
    v48 = v40;
    v49 = v14;
    v50[0] = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    if (*(a3 + 16))
    {
      v15 = *(a3 + 40);
      sub_1B0E46C28();
      sub_1B0E461D8();
      v16 = sub_1B0E46CB8();
      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      if ((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        do
        {
          sub_1B03D0A20(*(a3 + 48) + 48 * v18, &v46);
          if (v46 == v11)
          {
            v20 = MEMORY[0x1B27282E0](&v47, &v50[1]);
            sub_1B03B04BC(&v46);
            if (v20)
            {
              sub_1B03B04BC(v50);
              v21 = 1;
              return v21 & 1;
            }
          }

          else
          {
            sub_1B03B04BC(&v46);
          }

          v18 = (v18 + 1) & v19;
        }

        while (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
      }
    }

    sub_1B03B04BC(v50);
  }

  sub_1B03D06F8();
  v22 = v38;
  sub_1B0E46EE8();
  v23 = v36;
  *v36 = 0;
  *(v23 + 56) = 0;
  v24 = v35;
  v25 = v35[1];
  *(v23 + 8) = *v35;
  *(v23 + 24) = v25;
  *(v23 + 40) = *(v24 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D0, &qword_1B0EC5138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  if (v34)
  {
    v27 = 10;
  }

  else
  {
    v27 = 9;
  }

  *v50 = *v24;
  *(inited + 32) = v27;
  v28 = sub_1B03D0770(inited);
  swift_setDeallocating();
  *(v23 + 48) = v28;
  LOBYTE(v28) = v40;
  *(v23 + 57) = v40;
  v29 = PendingDownload;
  sub_1B03D08AC(v22, v23 + *(PendingDownload + 36));
  v30 = (v23 + *(v29 + 44));
  v43 = v42;
  v44 = v41;
  v45 = v28;
  *v30 = v29;
  swift_bridgeObjectRetain_n();
  sub_1B03D091C(v50, &v46);
  sub_1B03D0964();
  sub_1B0E461E8();
  sub_1B03D09B8(v22);
  v31 = v23 + *(v29 + 40);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_1B03D0A20(v30, &v46);
  sub_1B03D0A7C(v23);
  v21 = sub_1B03D0AD8(&v46, a3);
  sub_1B03B04BC(&v46);
  return v21 & 1;
}

uint64_t type metadata accessor for FindPendingDownload()
{
  result = qword_1EB6DD980;
  if (!qword_1EB6DD980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B03D985C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1B03FE284(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 17) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B03D9964(int a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for MessagesPendingDownload();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = type metadata accessor for NewestMessages();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  v27 = a2;
  sub_1B03D9D54(a2, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v45 = v19;
  v46 = v28;
  if (v29 == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v43 = v24;
    v30 = v11;
    v31 = *(v19 + 20);
    v32 = *(v19 + 24);
    sub_1B074BA2C(v30, v26);
    *&v26[v31] = 0;
    *&v26[v32] = 0;
    v24 = v43;
    if (v28(v18, 1, v19) != 1)
    {
      sub_1B0B42E08(v18);
    }
  }

  else
  {
    sub_1B03D9DC4(v18, v26);
  }

  v33 = v48;
  sub_1B0B42D48(v49, v48);
  v34 = *(*v33 + 16);
  sub_1B03D0D84(v33, type metadata accessor for MessagesPendingDownload);
  sub_1B03D0D84(v26, type metadata accessor for NewestMessages);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    sub_1B03D9D54(v27, v16);
    v37 = v45;
    v36 = v46;
    if (v46(v16, 1, v45) == 1)
    {
      sub_1B03D06F8();
      v38 = v44;
      sub_1B0E46EE8();
      v39 = *(v37 + 20);
      v40 = *(v37 + 24);
      sub_1B074BA2C(v38, v24);
      *&v24[v39] = 0;
      *&v24[v40] = 0;
      if (v36(v16, 1, v37) != 1)
      {
        sub_1B0B42E08(v16);
      }
    }

    else
    {
      sub_1B03D9DC4(v16, v24);
    }

    v35 = sub_1B03D9E28(1, v47, v24);
    sub_1B03D0D84(v24, type metadata accessor for NewestMessages);
  }

  return v35 & 1;
}

uint64_t sub_1B03D9D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B03D9DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewestMessages();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B03D9E28(char a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for MessagesPendingDownload();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    v11 = 0;
    return v11 & 1;
  }

  if (a2 == 1)
  {
    v3 += *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
LABEL_5:
    sub_1B0B42D48(v3, v10);
    v11 = *(*v10 + 16) != 0;
    sub_1B03D0D84(v10, type metadata accessor for MessagesPendingDownload);
    return v11 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v13 = sub_1B0E46E98();
  v14 = type metadata accessor for MessagesPendingDownloadPerPass();
  v15 = *(v3 + *(v14 + 20));
  if (v13)
  {
    v11 = *(v15 + 16) != 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    *&v16[-16] = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03D0BFC(sub_1B0B42DAC, &v16[-32], v15);
  }

  return v11 & 1;
}

char *sub_1B03D9FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ConnectionUsage.usage(_:)(int a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1B0BE4B80(a1, a3);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      return 1;
    }
  }

  if (!MailboxesSelectionUsage.subscript.getter(a1, a2))
  {
    return 0;
  }

  v7 = v8;

  return v7;
}

char *sub_1B03DA17C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_1B03DA298(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t type metadata accessor for Framer.OutboundMessage()
{
  result = qword_1EB6DCD88;
  if (!qword_1EB6DCD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s11CompressionO12OutgoingDataVMa()
{
  result = qword_1EB6DCD98;
  if (!qword_1EB6DCD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03DA44C()
{
  v1 = *(*(_s19CommandOutputBufferV8IdleDoneVMa(0) - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(_s19CommandOutputBufferV9HandshakeVMa(0) - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(_s19CommandOutputBufferV12ContinuationVMa(0) - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(_s19CommandOutputBufferV7CommandVMa(0) - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(_s19CommandOutputBufferV7ElementOMa(0) - 8) + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = *v0 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    while (1)
    {
      sub_1B03D60F8(v19, v16, _s19CommandOutputBufferV7ElementOMa);
      sub_1B03D60F8(v16, v13, _s19CommandOutputBufferV7ElementOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v25 = v32;
          sub_1B03D6160(v13, v32, _s19CommandOutputBufferV8IdleDoneVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV8IdleDoneVMa;
        }

        else
        {
          v25 = v31;
          sub_1B03D6160(v13, v31, _s19CommandOutputBufferV9HandshakeVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV9HandshakeVMa;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1B03D6160(v13, v9, _s19CommandOutputBufferV7CommandVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v23 = _s19CommandOutputBufferV7CommandVMa;
          v24 = v9;
          goto LABEL_11;
        }

        v25 = v30;
        sub_1B03D6160(v13, v30, _s19CommandOutputBufferV12ContinuationVMa);
        v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v26 = _s19CommandOutputBufferV12ContinuationVMa;
      }

      v23 = v26;
      v24 = v25;
LABEL_11:
      sub_1B03DA84C(v24, v23);
      result = sub_1B03DA84C(v16, _s19CommandOutputBufferV7ElementOMa);
      v28 = __OFADD__(v18, v22);
      v18 += v22;
      if (v28)
      {
        __break(1u);
        return result;
      }

      v19 += v20;
      if (!--v17)
      {
        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_1B03DA84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03DA8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v143 = a3;
  v147 = type metadata accessor for Deflate.InputBuffer(0);
  v5 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.Result(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v145 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = &v140 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56B0, &qword_1B0ED3A10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v165 = &v140 - v15;
  v161 = _s12OutputHelperV5ChunkVMa(0);
  v170 = *(v161 - 8);
  v16 = *(v170 + 64);
  v17 = MEMORY[0x1EEE9AC00](v161);
  v144 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v150 = &v140 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v140 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56B8, &qword_1B0ED3A18);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v159 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v140 - v26;
  v172 = _s19CommandOutputBufferV8SendDataVMa(0);
  v169 = *(v172 - 8);
  v28 = *(v169 + 8);
  v29 = MEMORY[0x1EEE9AC00](v172);
  v156 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v155 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v164 = &v140 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v140 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v140 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v140 - v41;
  v43 = _s12OutputHelperVMa(0);
  v44 = *(*(v43 - 1) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1B0E443C8();
  v148 = *(v158 - 8);
  v47 = *(v148 + 64);
  v48 = MEMORY[0x1EEE9AC00](v158);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v140 - v50;
  v157 = a2;
  if (a1)
  {
    v141 = v49;
    *v46 = 0;
    v52 = v43[5];
    v53 = a1;

    sub_1B0E44378();
    v54 = v170;
    v55 = v170 + 56;
    v56 = *(v170 + 56);
    v162 = v43[6];
    v56(&v46[v162], 1, 1, v161);
    *&v46[v43[7]] = v53;
    swift_beginAccess();
    v57 = v171;
    sub_1B03DC2C4(v159);
    v58 = v57;
    if (!v57)
    {
      v140 = v52;
      v151 = v56;
      v152 = v55;
      v166 = v46;
      v142 = v53;
      v59 = 0;
      v60 = 0;
      v171 = 0;
      v153 = (v169 + 48);
      v154 = (v148 + 16);
      v160 = (v54 + 48);
      v61 = 1;
      LODWORD(v52) = 1;
      v62 = v159;
      while (1)
      {
        swift_endAccess();
        v63 = v172;
        if ((*v153)(v62, 1, v172) == 1)
        {
          sub_1B0398EFC(v62, &qword_1EB6E56B8, &qword_1B0ED3A18);
          v112 = v141;
          sub_1B0BFCD94(v141);
          v170 = v59;
          v122 = v60;
          v132 = v148;
          v111 = v143;
          v133 = v158;
          (*(v148 + 16))(v143, v112, v158);
          v134 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          (*(v132 + 8))(v112, v133);
          v110 = v134;
          sub_1B0C05F94(v166, _s12OutputHelperVMa);
          v109 = v171;
          goto LABEL_46;
        }

        v64 = v156;
        sub_1B0C05F2C(v62, v156, _s19CommandOutputBufferV8SendDataVMa);
        v65 = (v64 + *(v63 + 20));
        v66 = *v65;
        v67 = *(v65 + 1);
        v68 = v66 | (v67 << 32);
        v69 = v66 == v59 && v67 == HIDWORD(v59);
        if (v69)
        {
          v70 = v60;
        }

        else
        {
          v70 = v66 | (v67 << 32);
        }

        if (v69)
        {
          v71 = v52;
        }

        else
        {
          v71 = 0;
        }

        if (v61)
        {
          v59 = v68;
        }

        else
        {
          v60 = v70;
          LODWORD(v52) = v71;
        }

        v72 = v64;
        v73 = v155;
        sub_1B0C05F2C(v72, v155, _s19CommandOutputBufferV8SendDataVMa);
        v74 = v164;
        sub_1B0C05F2C(v73, v164, _s19CommandOutputBufferV8SendDataVMa);
        result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v76 = v165;
        if (__OFADD__(v171, result))
        {
          __break(1u);
          return result;
        }

        v170 = v59;
        v171 += result;
        LODWORD(v167) = v52;
        v168 = v60;
        v169 = v58;
        v77 = *(v74 + *(v172 + 24));
        v78 = *v154;
        v79 = v163;
        (*v154)(v163, v74, v158);
        v81 = v161;
        v80 = v162;
        *(v79 + *(v161 + 20)) = v77;
        v82 = v166;
        sub_1B0BFD154(&v166[v80], v76);
        v83 = *v160;
        if ((*v160)(v76, 1, v81) == 1)
        {
          break;
        }

        v84 = v150;
        sub_1B0C05EC8(v76, v150);
        v85 = v81;
        if (v77 == *(v84 + *(v81 + 20)))
        {
          v90 = v83(&v166[v162], 1, v81);
          v58 = v169;
          v91 = v163;
          if (!v90)
          {
            sub_1B0E44388();
          }

          sub_1B0C05F94(v84, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v91, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0C05F94(v165, _s12OutputHelperV5ChunkVMa);
          goto LABEL_5;
        }

        sub_1B0C05F94(v84, _s12OutputHelperV5ChunkVMa);
        v86 = v162;
        v87 = v149;
        sub_1B0BFD154(&v166[v162], v149);
        v88 = v83(v87, 1, v81);
        v58 = v169;
        if (v88 == 1)
        {
          sub_1B0C05F94(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0398EFC(v87, &qword_1EB6E5610, &qword_1B0ED35A0);
          v59 = v170;
          v52 = v166;
          v62 = v159;
          v89 = v151;
        }

        else
        {
          v92 = v87;
          v93 = v144;
          sub_1B0C05F2C(v92, v144, _s12OutputHelperV5ChunkVMa);
          v94 = v85;
          v95 = v146;
          v78(v146, v93, v158);
          swift_storeEnumTagMultiPayload();
          v96 = v145;
          sub_1B0BF93DC(v95, *(v93 + *(v94 + 20)), v145);
          v59 = v170;
          v62 = v159;
          if (v58)
          {
            sub_1B0C05F94(v95, type metadata accessor for Deflate.InputBuffer);
            sub_1B0C05F94(v93, _s12OutputHelperV5ChunkVMa);
            sub_1B0C05F94(v163, _s12OutputHelperV5ChunkVMa);
            sub_1B0C05F94(v164, _s19CommandOutputBufferV8SendDataVMa);
            v139 = v166;
            sub_1B0398EFC(&v166[v86], &qword_1EB6E5610, &qword_1B0ED35A0);
            v151(&v139[v86], 1, 1, v161);
            sub_1B0C05F94(v165, _s12OutputHelperV5ChunkVMa);
            v113 = v139;
            goto LABEL_40;
          }

          sub_1B0C05F94(v95, type metadata accessor for Deflate.InputBuffer);
          v52 = v166;
          sub_1B0E44388();
          sub_1B0C05F94(v96, type metadata accessor for Deflate.Result);
          sub_1B0C05F94(v93, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0398EFC(&v52[v86], &qword_1EB6E5610, &qword_1B0ED35A0);
          v85 = v161;
          v89 = v151;
          v151(&v52[v86], 1, 1, v161);
        }

        sub_1B0398EFC(&v52[v86], &qword_1EB6E5610, &qword_1B0ED35A0);
        sub_1B0C05F2C(v163, &v52[v86], _s12OutputHelperV5ChunkVMa);
        v89(&v52[v86], 0, 1, v85);
        sub_1B0C05F94(v165, _s12OutputHelperV5ChunkVMa);
        v60 = v168;
        LODWORD(v52) = v167;
LABEL_6:
        swift_beginAccess();
        sub_1B03DC2C4(v62);
        v61 = 0;
        if (v58)
        {
          v46 = v166;
          goto LABEL_39;
        }
      }

      sub_1B0C05F94(v74, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0398EFC(&v82[v80], &qword_1EB6E5610, &qword_1B0ED35A0);
      sub_1B0C05F2C(v79, &v82[v80], _s12OutputHelperV5ChunkVMa);
      v151(&v82[v80], 0, 1, v81);
      v58 = v169;
LABEL_5:
      v60 = v168;
      v59 = v170;
      LODWORD(v52) = v167;
      v62 = v159;
      goto LABEL_6;
    }

LABEL_39:
    swift_endAccess();
    v113 = v46;
LABEL_40:
    sub_1B0C05F94(v113, _s12OutputHelperVMa);
  }

  v165 = v42;
  v167 = v40;
  v97 = v143;
  v168 = v37;
  sub_1B0E44378();
  swift_beginAccess();
  v98 = v171;
  sub_1B03DC2C4(v27);
  if (v98)
  {
    swift_endAccess();
    (*(v148 + 8))(v51, v158);
  }

  v171 = v51;
  v99 = v97;
  v142 = 0;
  swift_endAccess();
  v100 = *(v169 + 6);
  v101 = 1;
  v102 = v27;
  v103 = v27;
  v104 = v172;
  v169 += 48;
  v166 = v100;
  v105 = (v100)(v102, 1, v172);
  v61 = v105 == 1;
  if (v105 == 1)
  {
    v170 = 0;
    v122 = 0;
    v52 = v99;
  }

  else
  {
    v114 = v168;
    sub_1B0C05F2C(v103, v168, _s19CommandOutputBufferV8SendDataVMa);
    v115 = (v114 + *(v104 + 20));
    v116 = *v115;
    v117 = *(v115 + 1);
    v118 = v114;
    v119 = v167;
    sub_1B0C05F2C(v118, v167, _s19CommandOutputBufferV8SendDataVMa);
    v120 = v165;
    sub_1B0C05F2C(v119, v165, _s19CommandOutputBufferV8SendDataVMa);
    sub_1B0E44388();
    sub_1B0C05F94(v120, _s19CommandOutputBufferV8SendDataVMa);
    swift_beginAccess();
    sub_1B03DC2C4(v103);
    v121 = v117;
    v122 = 0;
    v163 = v121;
    v164 = v116;
    v170 = v116 | (v121 << 32);
    v101 = 1;
    while (1)
    {
      swift_endAccess();
      if ((v166)(v103, 1, v104) == 1)
      {
        break;
      }

      v123 = v168;
      sub_1B0C05F2C(v103, v168, _s19CommandOutputBufferV8SendDataVMa);
      v124 = (v123 + *(v104 + 20));
      v125 = *v124;
      v126 = *(v124 + 1);
      v127 = v126 == v163;
      v128 = v125 | (v126 << 32);
      v129 = v125 == v164 && v127;
      if (!v129)
      {
        v122 = v128;
      }

      v101 &= v129;
      v130 = v123;
      v131 = v167;
      sub_1B0C05F2C(v130, v167, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0C05F2C(v131, v120, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0E44388();
      sub_1B0C05F94(v120, _s19CommandOutputBufferV8SendDataVMa);
      swift_beginAccess();
      sub_1B03DC2C4(v103);
    }

    v52 = v143;
  }

  sub_1B0398EFC(v103, &qword_1EB6E56B8, &qword_1B0ED3A18);
  v106 = v148;
  v107 = v171;
  v108 = v158;
  (*(v148 + 16))(v52, v171, v158);
  v109 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v106 + 8))(v107, v108);
  v110 = 0;
  v111 = v52;
  LOBYTE(v52) = v101;
LABEL_46:
  v135 = v142 == 0;

  result = _s11CompressionO12OutgoingDataVMa();
  *&v111[*(result + 20)] = v109;
  v136 = &v111[*(result + 24)];
  *v136 = v110;
  v136[8] = v135;
  v137 = &v111[*(result + 28)];
  *v137 = v170;
  v137[8] = v61;
  v138 = &v111[*(result + 32)];
  *v138 = v122;
  v138[8] = v52 & 1;
  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void _configureMailboxCache(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 _shouldConfigureMailboxCache])
  {
    [v1 mf_lock];
    if (!v1[13])
    {
      v2 = [v1 _copyMailboxWithParent:0 name:0 attributes:18 dictionary:0];
      v3 = v1[13];
      v1[13] = v2;

      if ([v1[13] mailboxType] != 8)
      {
        [v1[13] setMailboxType:8];
      }
    }

    if ([v1 cacheHasBeenRead])
    {
      v4 = 1;
    }

    else
    {
      [v1 setCacheHasBeenRead:1];
      v5 = v1;
      v21 = [v5 mailboxCachePath];
      v6 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v21 options:1 error:0];
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 ef_publicDescription];
        *buf = 138543362;
        v24 = v8;
        _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Read mailbox cache from disk %{public}@", buf, 0xCu);
      }

      if (!v5[13])
      {
        __assert_rtn("_readMailboxCache", "MailAccount.m", 3415, "self->_rootMailboxUid");
      }

      if (v6)
      {
        error = 0;
        v9 = CFPropertyListCreateWithData(0, v6, 1uLL, 0, &error);
        if (error)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _readMailboxCache(MailAccount *__strong)"];
          v20 = [(__CFError *)error localizedDescription];
          [v18 handleFailureInFunction:v19 file:@"MailAccount.m" lineNumber:3425 description:{@"%@", v20}];
        }

        v10 = CFDictionaryGetValue(v9, @"mboxes");
        v11 = [v5 _readCustomInfoFromMailboxCache:v9];
        v4 = v11;
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = MFLogGeneral();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v10 count];
              v14 = [v5 ef_publicDescription];
              *buf = 134218242;
              v24 = v13;
              v25 = 2114;
              v26 = v14;
              _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "loading mailboxes.count:%lu from mailbox cache %{public}@", buf, 0x16u);
            }

            [v5 _loadMailboxListingIntoCache:0 attributes:0 children:v10 parent:v5[13]];
          }
        }

        else
        {
          v15 = MFLogGeneral();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v5 ef_publicDescription];
            _configureMailboxCache_cold_1(v16, buf, v15);
          }
        }

        if (error)
        {
          CFRelease(error);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    [v1 mf_unlock];
    if ((v4 & 1) == 0)
    {
      [v1 _repairMailboxCache];
    }
  }

  else
  {
    _invalidateMailboxCache(v1);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B03DC144(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t, void))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1B03D0298(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1B0B21EB0(v11, v6, v4, a2);
  result = MEMORY[0x1B272C230](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B03DC2C4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1B0E443C8();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s19CommandOutputBufferV7CommandVMa(0);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV7ElementOMa(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - v21;
  v23 = *v1;
  v24 = *(*v1 + 16);
  if (!v24)
  {
    v28 = _s19CommandOutputBufferV8SendDataVMa(0);
    return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  v45 = a1;
  v51 = v2;
  sub_1B03D60F8(v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), &v45 - v21, _s19CommandOutputBufferV7ElementOMa);
  sub_1B03D60F8(v22, v19, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (v1[1])
      {
        goto LABEL_20;
      }

      v29 = v1 + 2;
      v30 = v1[2];
      if (v30 > 0)
      {
LABEL_14:
        *v29 = v30 - 1;
        goto LABEL_15;
      }

LABEL_23:
      sub_1B03DA84C(v22, _s19CommandOutputBufferV7ElementOMa);
      v33 = _s19CommandOutputBufferV8SendDataVMa(0);
      (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
      return sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
    }

    if (v24 == 1)
    {
      goto LABEL_23;
    }

    if (v1[2])
    {
      goto LABEL_18;
    }

LABEL_13:
    v29 = v1 + 1;
    v30 = v1[1];
    if (v30 > 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (v1[2])
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v1[1])
  {
LABEL_20:
    sub_1B0BEA5F4();
    goto LABEL_21;
  }

  if (v1[2])
  {
LABEL_18:
    sub_1B0BEA5A0();
LABEL_21:
    swift_allocError();
    swift_willThrow();
    sub_1B03DA84C(v22, _s19CommandOutputBufferV7ElementOMa);
    return sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
  }

  if ((*(v1 + 33) & 1) == 0 && (v1[4] & 1) == 0)
  {
    sub_1B03DA84C(v22, _s19CommandOutputBufferV7ElementOMa);
    v26 = _s19CommandOutputBufferV8SendDataVMa(0);
    (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
    return sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
  }

LABEL_15:
  sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
  sub_1B0C0B4F8(0, v16);
  sub_1B03DA84C(v16, _s19CommandOutputBufferV7ElementOMa);
  sub_1B03D60F8(v22, v13, _s19CommandOutputBufferV7ElementOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    v31 = _s19CommandOutputBufferV7ElementOMa;
    v32 = v13;
  }

  else
  {
    v34 = v47;
    sub_1B03D6160(v13, v47, _s19CommandOutputBufferV7CommandVMa);
    if (*(v34 + *(v46 + 24)))
    {
      v35 = (v34 + *(v46 + 20));
      v36 = *v35;
      v37 = *(v35 + 1);
      sub_1B03DA84C(v34, _s19CommandOutputBufferV7CommandVMa);
      v38 = v45;
      if ((*(v1 + 33) & 1) == 0)
      {
        v1[3] = v36 | (v37 << 32);
        *(v1 + 16) = 0;
      }

      goto LABEL_30;
    }

    v31 = _s19CommandOutputBufferV7CommandVMa;
    v32 = v34;
  }

  sub_1B03DA84C(v32, v31);
  v38 = v45;
LABEL_30:
  v39 = v48;
  sub_1B0BE9D78(v48);
  v40 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v49 + 8))(v39, v50);
  LOBYTE(v39) = v40 > 5000;
  sub_1B0BE9D78(v38);
  v41 = sub_1B0BEA028();
  LOBYTE(v40) = v41;
  v42 = HIDWORD(v41);
  sub_1B03DA84C(v22, _s19CommandOutputBufferV7ElementOMa);
  v43 = _s19CommandOutputBufferV8SendDataVMa(0);
  v44 = v38 + *(v43 + 20);
  *v44 = v40;
  *(v44 + 4) = v42;
  *(v38 + *(v43 + 24)) = v39;
  return (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
}

uint64_t sub_1B03DC928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1B03DC998(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v11 = *(type metadata accessor for Activity(0) + 24);
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  if (!(*(*(v13 - 8) + 48))(&a1[v11], 1))
  {
    v9 = &a1[v11 + *(v13 + 20)];
    v10 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v4 = *(v9 + 1);

          v5 = *(v9 + 3);
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
          v6 = *(v9 + 1);
        }
      }

      else
      {
        v3 = sub_1B0E441D8();
        (*(*(v3 - 8) + 8))(v9);
      }
    }
  }

  return a1;
}

uint64_t sub_1B03DCB64(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B93AEC(v14, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1B03DD01C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B03DD760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1B03DD8D4(uint64_t a1)
{
  v10 = type metadata accessor for ConnectionStatus.Error(0);
  if (!(*(*(v10 - 8) + 48))(a1, 1))
  {
    v7 = a1 + *(v10 + 20);
    v8 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v2 = *(v7 + 8);

          v3 = *(v7 + 24);
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
          v4 = *(v7 + 8);
        }
      }

      else
      {
        v1 = sub_1B0E441D8();
        (*(*(v1 - 8) + 8))(v7);
      }
    }
  }

  return a1;
}

BOOL _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E8, &qword_1B0EE1938);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  sub_1B03DF118(*a1, *a2);
  if ((v17 & 1) == 0 || (sub_1B03DDD84(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Activity(0) + 24);
  v19 = a1 + v18;
  v20 = *(v13 + 48);
  sub_1B03B5C80(v19, v16, &qword_1EB6E35A0, &qword_1B0E99850);
  sub_1B03B5C80(a2 + v18, &v16[v20], &qword_1EB6E35A0, &qword_1B0E99850);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &qword_1EB6E35A0, &qword_1B0E99850);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v16, v12, &qword_1EB6E35A0, &qword_1B0E99850);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1B0416AA0(v12, type metadata accessor for ConnectionStatus.Error);
LABEL_8:
    sub_1B0398EFC(v16, &qword_1EB6E60E8, &qword_1B0EE1938);
    return 0;
  }

  sub_1B0CC0084(&v16[v20], v8, type metadata accessor for ConnectionStatus.Error);
  v23 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v8);
  sub_1B0416AA0(v8, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v12, type metadata accessor for ConnectionStatus.Error);
  sub_1B0398EFC(v16, &qword_1EB6E35A0, &qword_1B0E99850);
  return v23;
}

uint64_t sub_1B03DDD84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v14);
    result = sub_1B0E46CB8();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if (v20[1] == v14)
      {
        v21 = *v20;
        v22 = *(*v20 + 16);
        if (v22 == *(v15 + 16))
        {
          break;
        }
      }

LABEL_16:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v23 = (v21 + 32);
    if (v22)
    {
      v24 = v21 == v15;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v15 + 32);
      while (v22)
      {
        if (*v23 != *v25)
        {
          goto LABEL_16;
        }

        ++v23;
        ++v25;
        if (!--v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B03DE00C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_1B03DE2A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t Activity.init(mailboxesWithPendingWork:accountError:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = sub_1B03DE37C(MEMORY[0x1E69E7CC0]);
  v6 = *(type metadata accessor for Activity(0) + 24);
  v7 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  a3[1] = a1;

  return sub_1B03DC928(a2, a3 + v6);
}

unint64_t sub_1B03DE37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B8, &qword_1B0EE0F80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
    v8 = sub_1B0E466A8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1B0CBAE5C(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1B03B8A9C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Activity.MailboxStatus(0);
      result = sub_1B0415DC0(v6 + v9, (v18 + *(*(v19 - 8) + 72) * v16));
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t StateWithTasks.selectedMailboxes.getter()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192) == 1)
  {
    v2 = *(v0 + 168);
    v10 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

char *sub_1B03DE5E0(void *a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for Activity(0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B00, "Rz\b");
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB0, &unk_1B0EDC3F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v45 = a1;
  sub_1B03DEB8C(a1, (&v43 - v22));
  v44 = v5[7];
  v44(v23, 0, 1, v4);
  v47 = v2;
  sub_1B03DEF7C(v2, v20);
  v24 = *(v10 + 56);
  sub_1B03DEF7C(v23, v13);
  sub_1B03DEF7C(v20, &v13[v24]);
  v25 = v5[6];
  if (v25(v13, 1, v4) == 1)
  {
    sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B0398EFC(v23, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
      v26 = MEMORY[0x1E69E7CC0];
      v28 = v46;
      v27 = v47;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1B03DEF7C(v13, v17);
  if (v25(&v13[v24], 1, v4) == 1)
  {
    sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B0398EFC(v23, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B03DC998(v17);
LABEL_6:
    sub_1B0398EFC(v13, &qword_1EB6E5B00, "Rz\b");
    v28 = v46;
    v27 = v47;
    goto LABEL_7;
  }

  sub_1B03DF0B0(&v13[v24], v8);
  v42 = static Activity.__derived_struct_equals(_:_:)(v17, v8);
  sub_1B03DC998(v8);
  sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  sub_1B0398EFC(v23, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  sub_1B03DC998(v17);
  sub_1B0398EFC(v13, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  v28 = v46;
  v27 = v47;
  if (v42)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_7:
  sub_1B0398EFC(v27, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  v29 = v45;
  sub_1B03DEB8C(v45, v27);
  v44(v27, 0, 1, v4);
  v30 = swift_allocBox();
  sub_1B03DEB8C(v29, v31);
  v26 = sub_1B03E1498(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = *(v26 + 2);
  v32 = *(v26 + 3);
  if (v33 >= v32 >> 1)
  {
    v26 = sub_1B03E1498((v32 > 1), v33 + 1, 1, v26);
  }

  *(v26 + 2) = v33 + 1;
  *&v26[8 * v33 + 32] = v30 | 0x9000000000000002;
LABEL_10:
  v34 = *(type metadata accessor for ExternalState() + 20);
  v35 = *&v27[v34];
  if (*(v28 + 16) <= *(v35 + 16) >> 3)
  {
    v48 = *&v27[v34];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03DCB64(v28);
    v37 = v48;
    if (*(v48 + 16))
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_19;
  }

  v36 = *&v27[v34];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0455560(v28, v35);
  if (!*(v37 + 16))
  {
    goto LABEL_18;
  }

LABEL_12:
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1B03E1498(0, *(v26 + 2) + 1, 1, v26);
  }

  v40 = *(v26 + 2);
  v39 = *(v26 + 3);
  if (v40 >= v39 >> 1)
  {
    v26 = sub_1B03E1498((v39 > 1), v40 + 1, 1, v26);
  }

  *(v26 + 2) = v40 + 1;
  *&v26[8 * v40 + 32] = v38 | 0x1000000000000000;
LABEL_19:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  *&v27[v34] = v28;
  return v26;
}

uint64_t sub_1B03DEB54()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

void *sub_1B03DEB8C(void *a1, void *a2)
{
  v17 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v17;
  v19 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v19;
  v20 = *(type metadata accessor for Activity(0) + 24);
  v22 = type metadata accessor for ConnectionStatus.Error(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1 + v20, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    memcpy(a2 + v20, a1 + v20, *(*(v6 - 8) + 64));
  }

  else
  {
    *(a2 + v20) = *(a1 + v20);
    __dst = (a2 + v20 + *(v22 + 20));
    __src = (a1 + v20 + *(v22 + 20));
    v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          *__dst = *__src;
          v10 = __src[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v10;
          __dst[2] = __src[2];
          v11 = __src[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[3] = v11;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          *__dst = *__src;
          if (EnumCaseMultiPayload == 2)
          {
            v9 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v9;
          }

          else
          {
            v8 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v8;
          }

          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 16))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      (*(v16 + 56))(__dst, 0, 1, v15);
    }

    v4 = a2 + v20 + *(v22 + 24);
    v5 = a1 + v20 + *(v22 + 24);
    *v4 = *v5;
    v4[8] = v5[8];
    (*(v23 + 56))();
  }

  return a2;
}

uint64_t sub_1B03DEF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB0, &unk_1B0EDC3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1B03DF000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B03DF0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B03DF118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v121 = *(v4 - 8);
  v5 = *(v121 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v102 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6308, &unk_1B0EE59D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v102 - v14;
  v110 = type metadata accessor for ConnectionStatus.Error(0);
  v15 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E0, &qword_1B0EE1930);
  v17 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v19 = &v102 - v18;
  v124 = type metadata accessor for Activity.MailboxStatus(0);
  v122 = *(v124 - 8);
  v20 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v102 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v102 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6310, &qword_1B0EE59E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v119 = (&v102 - v37);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v115 = a2;
    v106 = v12;
    v103 = v7;
    v107 = v4;
    v108 = v22;
    v104 = v11;
    v38 = 0;
    v113 = a1;
    v114 = v19;
    v39 = a1 + 64;
    v40 = 1 << *(a1 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(a1 + 64);
    v43 = (v40 + 63) >> 6;
    v105 = (v121 + 48);
    v117 = v29;
    v121 = v35;
    while (v42)
    {
      v120 = (v42 - 1) & v42;
      v44 = __clz(__rbit64(v42)) | (v38 << 6);
LABEL_18:
      v49 = (*(v113 + 48) + 16 * v44);
      v51 = *v49;
      v50 = v49[1];
      v52 = v116;
      sub_1B0416014((*(v113 + 56) + *(v122 + 72) * v44), v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
      v54 = *(v53 + 48);
      v55 = v121;
      *v121 = v51;
      *(v55 + 1) = v50;
      v56 = v52;
      v35 = v55;
      sub_1B0CE7B8C(v56, &v55[v54], type metadata accessor for Activity.MailboxStatus);
      (*(*(v53 - 8) + 56))(v35, 0, 1, v53);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_19:
      v57 = v119;
      sub_1B03C60A4(v35, v119, &qword_1EB6E6310, &qword_1B0EE59E0);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
      if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
      {
        return;
      }

      v59 = *(v58 + 48);
      v61 = *v57;
      v60 = v57[1];
      sub_1B0CE7B8C(v57 + v59, v29, type metadata accessor for Activity.MailboxStatus);
      v62 = v115;
      v63 = sub_1B03B8A9C(v61, v60);
      v64 = v29;
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        v97 = v64;
        goto LABEL_66;
      }

      v67 = (*(v62 + 56) + *(v122 + 72) * v63);
      v68 = v123;
      sub_1B0416014(v67, v123);
      v69 = &v19[*(v118 + 48)];
      sub_1B0416014(v68, v19);
      sub_1B0416014(v64, v69);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v35 = v121;
        if (EnumCaseMultiPayload == 2)
        {
          sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v64, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v64, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v35 = v121;
        if (EnumCaseMultiPayload)
        {
          v78 = v108;
          sub_1B0416014(v19, v108);
          v79 = swift_getEnumCaseMultiPayload();
          v80 = v107;
          if (v79 != 1)
          {
            sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v117, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v78, type metadata accessor for ConnectionStatus.Error);
LABEL_57:
            sub_1B0398EFC(v114, &qword_1EB6E60E0, &qword_1B0EE1930);
            return;
          }

          v81 = v111;
          sub_1B0CE7B8C(v69, v111, type metadata accessor for ConnectionStatus.Error);
          if (*v78 != *v81)
          {
            sub_1B0416B00(v81, type metadata accessor for ConnectionStatus.Error);
            sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
            v98 = v117;
            v99 = type metadata accessor for Activity.MailboxStatus;
            goto LABEL_63;
          }

          v82 = v109;
          v83 = *(v110 + 20);
          v84 = *(v106 + 48);
          sub_1B03B5C80(&v78[v83], v109, &qword_1EB6E39C0, &qword_1B0EA35E0);
          sub_1B03B5C80(&v81[v83], v82 + v84, &qword_1EB6E39C0, &qword_1B0EA35E0);
          v85 = *v105;
          if ((*v105)(v82, 1, v80) == 1)
          {
            sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v117, type metadata accessor for Activity.MailboxStatus);
            if (v85(v82 + v84, 1, v107) != 1)
            {
              v100 = type metadata accessor for ConnectionStatus.Error;
              v101 = v111;
LABEL_61:
              sub_1B0416B00(v101, v100);
              v78 = v108;
              sub_1B0398EFC(v82, &qword_1EB6E6308, &unk_1B0EE59D0);
LABEL_64:
              sub_1B0416B00(v78, type metadata accessor for ConnectionStatus.Error);
LABEL_65:
              v97 = v114;
LABEL_66:
              sub_1B0416B00(v97, type metadata accessor for Activity.MailboxStatus);
              return;
            }

            sub_1B0398EFC(v82, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v78 = v108;
          }

          else
          {
            v87 = v104;
            sub_1B03B5C80(v82, v104, &qword_1EB6E39C0, &qword_1B0EA35E0);
            if (v85(v82 + v84, 1, v80) == 1)
            {
              sub_1B0416B00(v111, type metadata accessor for ConnectionStatus.Error);
              sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
              sub_1B0416B00(v117, type metadata accessor for Activity.MailboxStatus);
              v100 = type metadata accessor for ConnectionStatus.Error.Details;
              v101 = v87;
              goto LABEL_61;
            }

            v88 = v103;
            sub_1B0CE7B8C(v82 + v84, v103, type metadata accessor for ConnectionStatus.Error.Details);
            v89 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v87, v88);
            sub_1B0416B00(v88, type metadata accessor for ConnectionStatus.Error.Details);
            sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v117, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v87, type metadata accessor for ConnectionStatus.Error.Details);
            sub_1B0398EFC(v82, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v78 = v108;
            if ((v89 & 1) == 0)
            {
              v99 = type metadata accessor for ConnectionStatus.Error;
              v98 = v111;
LABEL_63:
              sub_1B0416B00(v98, v99);
              goto LABEL_64;
            }
          }

          v90 = *(v110 + 24);
          v91 = *&v78[v90];
          v92 = v78[v90 + 8];
          v93 = &v111[v90];
          v94 = *v93;
          v95 = v93[8];
          sub_1B0416B00(v111, type metadata accessor for ConnectionStatus.Error);
          if (v92)
          {
            v35 = v121;
            if ((v95 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v91 == v94)
            {
              v96 = v95;
            }

            else
            {
              v96 = 1;
            }

            v35 = v121;
            if (v96)
            {
              goto LABEL_64;
            }
          }

          sub_1B0416B00(v78, type metadata accessor for ConnectionStatus.Error);
        }

        else
        {
          sub_1B0416B00(v123, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v64, type metadata accessor for Activity.MailboxStatus);
          v71 = v112;
          sub_1B0416014(v19, v112);
          v72 = *(v71 + 1);
          v73 = *(v71 + 2);
          v74 = v71[24];
          v75 = v71[25];
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_57;
          }

          if (*v112 != *v69)
          {
            goto LABEL_65;
          }

          v76 = *(v69 + 24);
          v77 = *(v69 + 25);
          if (v74)
          {
            if (!*(v69 + 24) || v75 != v77)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v72 != *(v69 + 8))
            {
              v76 = 1;
            }

            if (v76 & 1) != 0 || v73 != *(v69 + 16) || ((v75 ^ v77))
            {
              goto LABEL_65;
            }
          }
        }
      }

      v19 = v114;
      sub_1B0416B00(v114, type metadata accessor for Activity.MailboxStatus);
      v29 = v117;
      v42 = v120;
    }

    if (v43 <= v38 + 1)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v47 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v47 >= v43)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
        (*(*(v86 - 8) + 56))(v35, 1, 1, v86);
        v120 = 0;
        v38 = v46;
        goto LABEL_19;
      }

      v48 = *(v39 + 8 * v47);
      ++v38;
      if (v48)
      {
        v120 = (v48 - 1) & v48;
        v44 = __clz(__rbit64(v48)) | (v47 << 6);
        v38 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for ExternalState()
{
  result = qword_1EB6DC278;
  if (!qword_1EB6DC278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id getDeliveryAccounts()
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!sDeliveryAccounts)
  {
    v0 = +[MFAccountStore sharedAccountStore];
    v10[0] = *MEMORY[0x1E69598F0];
    v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v2 = [v0 accountsWithTypeIdentifiers:v1 error:0];
    v3 = [v2 mutableCopy];
    v4 = sDeliveryAccounts;
    sDeliveryAccounts = v3;

    if (!sDeliveryAccounts || ![sDeliveryAccounts count])
    {
      v5 = objc_opt_new();
      v6 = sDeliveryAccounts;
      sDeliveryAccounts = v5;
    }
  }

  v7 = sDeliveryAccounts;
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1B03DFFEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void MFRegisterPowerObserver(void *a1)
{
  v1 = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MFRegisterPowerObserver_block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v2 = v1;
  v5 = v2;
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:v4];
}

uint64_t __MFRegisterPowerObserver_block_invoke(uint64_t a1)
{
  v2 = sObservers;
  if (!sObservers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = sObservers;
    sObservers = v3;

    v2 = sObservers;
  }

  v5 = *(a1 + 32);

  return [v2 addObject:v5];
}

id cachedMailboxUIDs()
{
  if (cachedMailboxUIDs_onceToken != -1)
  {
    cachedMailboxUIDs_cold_1();
  }

  v1 = cachedMailboxUIDs_cache;

  return v1;
}

void bindParentAndChild(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E69AD788] weakReferenceWithObject:v11];
  [v3 mf_lock];
  v5 = v3[5];
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 reference];
    objc_storeStrong(v3 + 5, v4);
    v7 = v6;
  }

  [v3 mf_unlock];
  if (v7)
  {
    [v7 mf_lock];
    [v7[6] removeObjectIdenticalTo:v3];
    [v7 mf_unlock];
  }

  if (v11)
  {
    [v11 mf_lock];
    v8 = v11[6];
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = v11[6];
      v11[6] = v9;

      v8 = v11[6];
    }

    [v8 addObject:v3];
    [v11 mf_unlock];
  }
}

unint64_t sub_1B03E14B4(unint64_t result)
{
  switch((result >> 1) & 3 | (result >> 58) & 0x3C)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 10uLL:
    case 11uLL:
    case 12uLL:
    case 13uLL:
    case 14uLL:
    case 15uLL:
    case 16uLL:
    case 17uLL:
    case 18uLL:
    case 19uLL:
    case 20uLL:
    case 21uLL:
    case 22uLL:
    case 23uLL:
    case 24uLL:
    case 25uLL:
    case 26uLL:
    case 27uLL:
    case 28uLL:
    case 29uLL:
    case 30uLL:
    case 31uLL:
    case 32uLL:
    case 33uLL:
    case 34uLL:
    case 35uLL:
    case 36uLL:
    case 37uLL:
    case 38uLL:
    case 39uLL:
    case 40uLL:
    case 41uLL:
    case 42uLL:
    case 43uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B03E1960()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  sub_1B03E1B3C(sub_1B03E1A28, 0, v2, &type metadata for ActionID, &type metadata for ActionID);

  return v3;
}

int *sub_1B03E1A28@<X0>(int *a1@<X0>, int *a2@<X8>)
{
  v2 = ActionID.next.getter(*a1);
  result = a1;
  *a1 = v2;
  *a2 = *a1;
  return result;
}

void sub_1B03E1A80(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

unint64_t sub_1B03E1BE8(unint64_t result)
{
  switch((result >> 1) & 3 | (result >> 58) & 0x3C)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 10uLL:
    case 11uLL:
    case 12uLL:
    case 13uLL:
    case 14uLL:
    case 15uLL:
    case 16uLL:
    case 17uLL:
    case 18uLL:
    case 19uLL:
    case 20uLL:
    case 21uLL:
    case 22uLL:
    case 23uLL:
    case 24uLL:
    case 25uLL:
    case 26uLL:
    case 27uLL:
    case 28uLL:
    case 29uLL:
    case 30uLL:
    case 31uLL:
    case 32uLL:
    case 33uLL:
    case 34uLL:
    case 35uLL:
    case 36uLL:
    case 37uLL:
    case 38uLL:
    case 39uLL:
    case 40uLL:
    case 41uLL:
    case 42uLL:
    case 43uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B03E207C(unint64_t a1)
{
  v11 = a1;
  v12 = sub_1B0401EE8;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v13 = 0;
  v17 = sub_1B0E44238();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v8 - v8;
  v21 = sub_1B0E44288();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v8 - v9;
  v34 = v2;
  v33 = v1;
  v24 = sub_1B03E1960();
  v32 = v24;
  v23 = *(v10 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v23);

  sub_1B03E14B4(v11);
  v3 = swift_allocObject();
  v4 = v11;
  v5 = v12;
  v6 = v3;
  LODWORD(v3) = v24;
  *(v6 + 16) = v10;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  v30 = v5;
  v31 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_409;
  v22 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v13, v20, v16, v22);
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);

  MEMORY[0x1E69E5920](v23);
  return v24;
}

uint64_t sub_1B03E2328()
{
  v1 = *(v0 + 16);

  sub_1B03E1BE8(*(v0 + 24));
  return swift_deallocObject();
}

void sub_1B03E2370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_1B03E1BA0(a3 + *(*a3 + *MEMORY[0x1E69E6B68] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence6ActionO(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  }

  else
  {
    return (*a1 >> 3) + 44;
  }
}

void sub_1B03E248C(unint64_t a1, unsigned int a2)
{
  v540 = a1;
  v539 = a2;
  v538 = 0;
  v433 = sub_1B039BBE8;
  v434 = sub_1B0A1B10C;
  v435 = sub_1B07AC984;
  v436 = sub_1B0394C30;
  v437 = sub_1B0394C24;
  v438 = sub_1B039BA2C;
  v439 = sub_1B039BA88;
  v440 = sub_1B039BB94;
  v441 = sub_1B0394C24;
  v442 = sub_1B039BBA0;
  v443 = sub_1B039BC08;
  v444 = sub_1B0A1B114;
  v445 = sub_1B039BCF8;
  v446 = sub_1B03FB220;
  v447 = sub_1B039BCF8;
  v448 = sub_1B0398F5C;
  v449 = sub_1B0398F5C;
  v450 = sub_1B0399178;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v453 = sub_1B039BA94;
  v454 = sub_1B0398F5C;
  v455 = sub_1B0398F5C;
  v456 = sub_1B0399178;
  v457 = sub_1B0398F5C;
  v458 = sub_1B0398F5C;
  v459 = sub_1B03991EC;
  v460 = sub_1B0398F5C;
  v461 = sub_1B0398F5C;
  v462 = sub_1B039BCEC;
  v463 = sub_1B0398F5C;
  v464 = sub_1B0398F5C;
  v465 = sub_1B039BCEC;
  v466 = sub_1B039BBE8;
  v467 = sub_1B07AC984;
  v468 = sub_1B0394C24;
  v469 = sub_1B039BA2C;
  v470 = sub_1B039BA88;
  v471 = sub_1B0394C24;
  v472 = sub_1B039BBA0;
  v473 = sub_1B039BC08;
  v474 = sub_1B03FB220;
  v475 = sub_1B039BCF8;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0398F5C;
  v478 = sub_1B0399178;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0398F5C;
  v481 = sub_1B039BA94;
  v482 = sub_1B0398F5C;
  v483 = sub_1B0398F5C;
  v484 = sub_1B0399178;
  v485 = sub_1B0398F5C;
  v486 = sub_1B0398F5C;
  v487 = sub_1B03991EC;
  v488 = sub_1B0398F5C;
  v489 = sub_1B0398F5C;
  v490 = sub_1B039BCEC;
  v491 = sub_1B039BBE8;
  v492 = sub_1B0A1B10C;
  v493 = sub_1B07AC984;
  v494 = sub_1B0394C24;
  v495 = sub_1B039BA2C;
  v496 = sub_1B039BA88;
  v497 = sub_1B0394C24;
  v498 = sub_1B039BBA0;
  v499 = sub_1B039BC08;
  v500 = sub_1B0A1B114;
  v501 = sub_1B039BCF8;
  v502 = sub_1B03FB220;
  v503 = sub_1B039BCF8;
  v504 = sub_1B07135E4;
  v505 = sub_1B070B324;
  v506 = sub_1B0398F5C;
  v507 = sub_1B0398F5C;
  v508 = sub_1B0399178;
  v509 = sub_1B0398F5C;
  v510 = sub_1B0398F5C;
  v511 = sub_1B039BA94;
  v512 = sub_1B0398F5C;
  v513 = sub_1B0398F5C;
  v514 = sub_1B0399178;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0398F5C;
  v517 = sub_1B03991EC;
  v518 = sub_1B0398F5C;
  v519 = sub_1B0398F5C;
  v520 = sub_1B039BCEC;
  v521 = sub_1B0398F5C;
  v522 = sub_1B0398F5C;
  v523 = sub_1B039BCEC;
  v524 = sub_1B0398F5C;
  v525 = sub_1B0398F5C;
  v526 = sub_1B070B4B4;
  v572 = 0;
  v571 = 0;
  v570 = 0;
  v527 = 0;
  v568 = 0;
  v562 = 0;
  v528 = 0;
  v529 = sub_1B0E439A8();
  v530 = *(v529 - 8);
  v531 = v529 - 8;
  v532 = (v530[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v533 = v234 - v532;
  v534 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v535 = v234 - v534;
  v536 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v537 = v234 - v536;
  v541 = _s6LoggerVMa();
  v542 = (*(*(v541 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v540);
  v543 = v234 - v542;
  v544 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v545 = v234 - v544;
  v546 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v547 = v234 - v546;
  v548 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v549 = v234 - v548;
  v572 = v13;
  v571 = v14;
  v570 = v2;
  v550 = &v569;
  swift_beginAccess();
  v551 = *(v2 + 72);
  swift_endAccess();
  if ((v551 & 1) == 0)
  {
    v15 = v537;
    v386 = &unk_1EB737000;
    sub_1B0394784(v432 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v549);
    v384 = v530[2];
    v385 = v530 + 2;
    v384(v15, v549, v529);
    sub_1B039480C(v549);

    sub_1B0394784(v432 + v386[314], v547);
    v16 = (v547 + *(v541 + 20));
    v387 = *v16;
    v388 = *(v16 + 1);
    sub_1B039480C(v547);

    v390 = 24;
    v406 = 7;
    v17 = swift_allocObject();
    v18 = v388;
    v394 = v17;
    *(v17 + 16) = v387;
    *(v17 + 20) = v18;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v19 = swift_allocObject();
    v20 = v388;
    v389 = v19;
    *(v19 + 16) = v387;
    *(v19 + 20) = v20;

    v405 = 32;
    v21 = swift_allocObject();
    v22 = v389;
    v399 = v21;
    *(v21 + 16) = v433;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B03E14B4(v540);
    v391 = swift_allocObject();
    *(v391 + 16) = v540;

    v23 = swift_allocObject();
    v24 = v391;
    v401 = v23;
    *(v23 + 16) = v434;
    *(v23 + 24) = v24;

    v392 = swift_allocObject();
    *(v392 + 16) = v539;

    v25 = swift_allocObject();
    v26 = v392;
    v407 = v25;
    *(v25 + 16) = v435;
    *(v25 + 24) = v26;

    v430 = sub_1B0E43988();
    v431 = sub_1B0E458D8();
    v403 = 17;
    v409 = swift_allocObject();
    v396 = 16;
    *(v409 + 16) = 16;
    v410 = swift_allocObject();
    v398 = 4;
    *(v410 + 16) = 4;
    v27 = swift_allocObject();
    v393 = v27;
    *(v27 + 16) = v436;
    *(v27 + 24) = 0;
    v28 = swift_allocObject();
    v29 = v393;
    v411 = v28;
    *(v28 + 16) = v437;
    *(v28 + 24) = v29;
    v412 = swift_allocObject();
    *(v412 + 16) = 0;
    v413 = swift_allocObject();
    *(v413 + 16) = 1;
    v30 = swift_allocObject();
    v31 = v394;
    v395 = v30;
    *(v30 + 16) = v438;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v395;
    v414 = v32;
    *(v32 + 16) = v439;
    *(v32 + 24) = v33;
    v415 = swift_allocObject();
    *(v415 + 16) = v396;
    v416 = swift_allocObject();
    *(v416 + 16) = v398;
    v34 = swift_allocObject();
    v397 = v34;
    *(v34 + 16) = v440;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    v36 = v397;
    v417 = v35;
    *(v35 + 16) = v441;
    *(v35 + 24) = v36;
    v418 = swift_allocObject();
    *(v418 + 16) = 0;
    v419 = swift_allocObject();
    *(v419 + 16) = v398;
    v37 = swift_allocObject();
    v38 = v399;
    v400 = v37;
    *(v37 + 16) = v442;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v400;
    v420 = v39;
    *(v39 + 16) = v443;
    *(v39 + 24) = v40;
    v421 = swift_allocObject();
    *(v421 + 16) = 34;
    v422 = swift_allocObject();
    v404 = 8;
    *(v422 + 16) = 8;
    v41 = swift_allocObject();
    v42 = v401;
    v402 = v41;
    *(v41 + 16) = v444;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v402;
    v423 = v43;
    *(v43 + 16) = v445;
    *(v43 + 24) = v44;
    v424 = swift_allocObject();
    *(v424 + 16) = 32;
    v425 = swift_allocObject();
    *(v425 + 16) = v404;
    v45 = swift_allocObject();
    v46 = v407;
    v408 = v45;
    *(v45 + 16) = v446;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v408;
    v427 = v47;
    *(v47 + 16) = v447;
    *(v47 + 24) = v48;
    v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v426 = sub_1B0E46A48();
    v428 = v49;

    v50 = v409;
    v51 = v428;
    *v428 = v448;
    v51[1] = v50;

    v52 = v410;
    v53 = v428;
    v428[2] = v449;
    v53[3] = v52;

    v54 = v411;
    v55 = v428;
    v428[4] = v450;
    v55[5] = v54;

    v56 = v412;
    v57 = v428;
    v428[6] = v451;
    v57[7] = v56;

    v58 = v413;
    v59 = v428;
    v428[8] = v452;
    v59[9] = v58;

    v60 = v414;
    v61 = v428;
    v428[10] = v453;
    v61[11] = v60;

    v62 = v415;
    v63 = v428;
    v428[12] = v454;
    v63[13] = v62;

    v64 = v416;
    v65 = v428;
    v428[14] = v455;
    v65[15] = v64;

    v66 = v417;
    v67 = v428;
    v428[16] = v456;
    v67[17] = v66;

    v68 = v418;
    v69 = v428;
    v428[18] = v457;
    v69[19] = v68;

    v70 = v419;
    v71 = v428;
    v428[20] = v458;
    v71[21] = v70;

    v72 = v420;
    v73 = v428;
    v428[22] = v459;
    v73[23] = v72;

    v74 = v421;
    v75 = v428;
    v428[24] = v460;
    v75[25] = v74;

    v76 = v422;
    v77 = v428;
    v428[26] = v461;
    v77[27] = v76;

    v78 = v423;
    v79 = v428;
    v428[28] = v462;
    v79[29] = v78;

    v80 = v424;
    v81 = v428;
    v428[30] = v463;
    v81[31] = v80;

    v82 = v425;
    v83 = v428;
    v428[32] = v464;
    v83[33] = v82;

    v84 = v427;
    v85 = v428;
    v428[34] = v465;
    v85[35] = v84;
    sub_1B0394964();

    if (os_log_type_enabled(v430, v431))
    {
      v86 = v527;
      v377 = sub_1B0E45D78();
      v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v378 = sub_1B03949A8(0);
      v379 = sub_1B03949A8(2);
      v380 = &v556;
      v556 = v377;
      v381 = &v555;
      v555 = v378;
      v382 = &v554;
      v554 = v379;
      sub_1B0394A48(2, &v556);
      sub_1B0394A48(6, v380);
      v552 = v448;
      v553 = v409;
      sub_1B03949FC(&v552, v380, v381, v382);
      v383 = v86;
      if (v86)
      {

        __break(1u);
      }

      else
      {
        v552 = v449;
        v553 = v410;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v374 = 0;
        v552 = v450;
        v553 = v411;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v373 = 0;
        v552 = v451;
        v553 = v412;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v372 = 0;
        v552 = v452;
        v553 = v413;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v371 = 0;
        v552 = v453;
        v553 = v414;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v370 = 0;
        v552 = v454;
        v553 = v415;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v369 = 0;
        v552 = v455;
        v553 = v416;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v368 = 0;
        v552 = v456;
        v553 = v417;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v367 = 0;
        v552 = v457;
        v553 = v418;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v366 = 0;
        v552 = v458;
        v553 = v419;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v365 = 0;
        v552 = v459;
        v553 = v420;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v364 = 0;
        v552 = v460;
        v553 = v421;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v363 = 0;
        v552 = v461;
        v553 = v422;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v362 = 0;
        v552 = v462;
        v553 = v423;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v361 = 0;
        v552 = v463;
        v553 = v424;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v360 = 0;
        v552 = v464;
        v553 = v425;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v359 = 0;
        v552 = v465;
        v553 = v427;
        sub_1B03949FC(&v552, &v556, &v555, &v554);
        v358 = 0;
        _os_log_impl(&dword_1B0389000, v430, v431, "[%.*hhx-%.*X] Processing action %{public}s (%s).", v377, 0x2Bu);
        sub_1B03998A8(v378);
        sub_1B03998A8(v379);
        sub_1B0E45D58();

        v375 = v358;
      }
    }

    else
    {
      v87 = v527;

      v375 = v87;
    }

    v88 = v375;
    MEMORY[0x1E69E5920](v430);
    v353 = v530[1];
    v354 = v530 + 1;
    v353(v537, v529);
    v89 = sub_1B04020E0(v540, v539);
    v355 = v88;
    v356 = v89;
    v357 = v88;
    if (v88)
    {
      v150 = v533;
      v250 = v357;
      v242 = 0;
      v151 = v357;
      v568 = v250;
      v243 = &unk_1EB737000;
      sub_1B0394784(v432 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v543);
      v384(v150, v543, v529);
      sub_1B039480C(v543);

      sub_1B0394784(v432 + v243[314], v547);
      v152 = (v547 + *(v541 + 20));
      v244 = *v152;
      v245 = *(v152 + 1);
      sub_1B039480C(v547);

      v249 = 24;
      v266 = 7;
      v153 = swift_allocObject();
      v154 = v245;
      v252 = v153;
      *(v153 + 16) = v244;
      *(v153 + 20) = v154;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v155 = swift_allocObject();
      v156 = v245;
      v246 = v155;
      *(v155 + 16) = v244;
      *(v155 + 20) = v156;

      v265 = 32;
      v157 = swift_allocObject();
      v158 = v246;
      v257 = v157;
      *(v157 + 16) = v491;
      *(v157 + 24) = v158;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B03E14B4(v540);
      v247 = swift_allocObject();
      *(v247 + 16) = v540;

      v159 = swift_allocObject();
      v160 = v247;
      v259 = v159;
      *(v159 + 16) = v492;
      *(v159 + 24) = v160;

      v248 = swift_allocObject();
      *(v248 + 16) = v539;

      v161 = swift_allocObject();
      v162 = v248;
      v261 = v161;
      *(v161 + 16) = v493;
      *(v161 + 24) = v162;

      v163 = v250;
      v267 = swift_allocObject();
      *(v267 + 16) = v250;
      v292 = sub_1B0E43988();
      v293 = sub_1B0E458E8();
      v263 = 17;
      v269 = swift_allocObject();
      v254 = 16;
      *(v269 + 16) = 16;
      v270 = swift_allocObject();
      v256 = 4;
      *(v270 + 16) = 4;
      v164 = swift_allocObject();
      v251 = v164;
      *(v164 + 16) = v436;
      *(v164 + 24) = 0;
      v165 = swift_allocObject();
      v166 = v251;
      v271 = v165;
      *(v165 + 16) = v494;
      *(v165 + 24) = v166;
      v272 = swift_allocObject();
      *(v272 + 16) = 0;
      v273 = swift_allocObject();
      *(v273 + 16) = 1;
      v167 = swift_allocObject();
      v168 = v252;
      v253 = v167;
      *(v167 + 16) = v495;
      *(v167 + 24) = v168;
      v169 = swift_allocObject();
      v170 = v253;
      v274 = v169;
      *(v169 + 16) = v496;
      *(v169 + 24) = v170;
      v275 = swift_allocObject();
      *(v275 + 16) = v254;
      v276 = swift_allocObject();
      *(v276 + 16) = v256;
      v171 = swift_allocObject();
      v255 = v171;
      *(v171 + 16) = v440;
      *(v171 + 24) = 0;
      v172 = swift_allocObject();
      v173 = v255;
      v277 = v172;
      *(v172 + 16) = v497;
      *(v172 + 24) = v173;
      v278 = swift_allocObject();
      *(v278 + 16) = 0;
      v279 = swift_allocObject();
      *(v279 + 16) = v256;
      v174 = swift_allocObject();
      v175 = v257;
      v258 = v174;
      *(v174 + 16) = v498;
      *(v174 + 24) = v175;
      v176 = swift_allocObject();
      v177 = v258;
      v280 = v176;
      *(v176 + 16) = v499;
      *(v176 + 24) = v177;
      v281 = swift_allocObject();
      *(v281 + 16) = 34;
      v282 = swift_allocObject();
      v264 = 8;
      *(v282 + 16) = 8;
      v178 = swift_allocObject();
      v179 = v259;
      v260 = v178;
      *(v178 + 16) = v500;
      *(v178 + 24) = v179;
      v180 = swift_allocObject();
      v181 = v260;
      v283 = v180;
      *(v180 + 16) = v501;
      *(v180 + 24) = v181;
      v284 = swift_allocObject();
      *(v284 + 16) = 32;
      v285 = swift_allocObject();
      *(v285 + 16) = v264;
      v182 = swift_allocObject();
      v183 = v261;
      v262 = v182;
      *(v182 + 16) = v502;
      *(v182 + 24) = v183;
      v184 = swift_allocObject();
      v185 = v262;
      v286 = v184;
      *(v184 + 16) = v503;
      *(v184 + 24) = v185;
      v287 = swift_allocObject();
      *(v287 + 16) = 64;
      v288 = swift_allocObject();
      *(v288 + 16) = v264;
      v186 = swift_allocObject();
      v187 = v267;
      v268 = v186;
      *(v186 + 16) = v504;
      *(v186 + 24) = v187;
      v188 = swift_allocObject();
      v189 = v268;
      v290 = v188;
      *(v188 + 16) = v505;
      *(v188 + 24) = v189;
      v289 = sub_1B0E46A48();
      v291 = v190;

      v191 = v269;
      v192 = v291;
      *v291 = v506;
      v192[1] = v191;

      v193 = v270;
      v194 = v291;
      v291[2] = v507;
      v194[3] = v193;

      v195 = v271;
      v196 = v291;
      v291[4] = v508;
      v196[5] = v195;

      v197 = v272;
      v198 = v291;
      v291[6] = v509;
      v198[7] = v197;

      v199 = v273;
      v200 = v291;
      v291[8] = v510;
      v200[9] = v199;

      v201 = v274;
      v202 = v291;
      v291[10] = v511;
      v202[11] = v201;

      v203 = v275;
      v204 = v291;
      v291[12] = v512;
      v204[13] = v203;

      v205 = v276;
      v206 = v291;
      v291[14] = v513;
      v206[15] = v205;

      v207 = v277;
      v208 = v291;
      v291[16] = v514;
      v208[17] = v207;

      v209 = v278;
      v210 = v291;
      v291[18] = v515;
      v210[19] = v209;

      v211 = v279;
      v212 = v291;
      v291[20] = v516;
      v212[21] = v211;

      v213 = v280;
      v214 = v291;
      v291[22] = v517;
      v214[23] = v213;

      v215 = v281;
      v216 = v291;
      v291[24] = v518;
      v216[25] = v215;

      v217 = v282;
      v218 = v291;
      v291[26] = v519;
      v218[27] = v217;

      v219 = v283;
      v220 = v291;
      v291[28] = v520;
      v220[29] = v219;

      v221 = v284;
      v222 = v291;
      v291[30] = v521;
      v222[31] = v221;

      v223 = v285;
      v224 = v291;
      v291[32] = v522;
      v224[33] = v223;

      v225 = v286;
      v226 = v291;
      v291[34] = v523;
      v226[35] = v225;

      v227 = v287;
      v228 = v291;
      v291[36] = v524;
      v228[37] = v227;

      v229 = v288;
      v230 = v291;
      v291[38] = v525;
      v230[39] = v229;

      v231 = v290;
      v232 = v291;
      v291[40] = v526;
      v232[41] = v231;
      sub_1B0394964();

      if (os_log_type_enabled(v292, v293))
      {
        v233 = v242;
        v235 = sub_1B0E45D78();
        v234[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v236 = sub_1B03949A8(1);
        v237 = sub_1B03949A8(2);
        v238 = &v567;
        v567 = v235;
        v239 = &v566;
        v566 = v236;
        v240 = &v565;
        v565 = v237;
        sub_1B0394A48(2, &v567);
        sub_1B0394A48(7, v238);
        v563 = v506;
        v564 = v269;
        sub_1B03949FC(&v563, v238, v239, v240);
        v241 = v233;
        if (v233)
        {

          __break(1u);
        }

        else
        {
          v563 = v507;
          v564 = v270;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[18] = 0;
          v563 = v508;
          v564 = v271;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[17] = 0;
          v563 = v509;
          v564 = v272;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[16] = 0;
          v563 = v510;
          v564 = v273;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[15] = 0;
          v563 = v511;
          v564 = v274;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[14] = 0;
          v563 = v512;
          v564 = v275;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[13] = 0;
          v563 = v513;
          v564 = v276;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[12] = 0;
          v563 = v514;
          v564 = v277;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[11] = 0;
          v563 = v515;
          v564 = v278;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[10] = 0;
          v563 = v516;
          v564 = v279;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[9] = 0;
          v563 = v517;
          v564 = v280;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[8] = 0;
          v563 = v518;
          v564 = v281;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[7] = 0;
          v563 = v519;
          v564 = v282;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[6] = 0;
          v563 = v520;
          v564 = v283;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[5] = 0;
          v563 = v521;
          v564 = v284;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[4] = 0;
          v563 = v522;
          v564 = v285;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[3] = 0;
          v563 = v523;
          v564 = v286;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[2] = 0;
          v563 = v524;
          v564 = v287;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[1] = 0;
          v563 = v525;
          v564 = v288;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          v234[0] = 0;
          v563 = v526;
          v564 = v290;
          sub_1B03949FC(&v563, &v567, &v566, &v565);
          _os_log_impl(&dword_1B0389000, v292, v293, "[%.*hhx-%.*X] Action %{public}s (%s) failed: %@", v235, 0x35u);
          sub_1B03998A8(v236);
          sub_1B03998A8(v237);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v292);
      v353(v533, v529);
      sub_1B04179E0(v539);
    }

    else
    {
      v562 = v356 & 1;
      if (v356)
      {
        v90 = v535;
        v315 = &unk_1EB737000;
        sub_1B0394784(v432 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v545);
        v384(v90, v545, v529);
        sub_1B039480C(v545);

        sub_1B0394784(v432 + v315[314], v547);
        v91 = (v547 + *(v541 + 20));
        v317 = *v91;
        v318 = *(v91 + 1);
        sub_1B039480C(v547);

        v316 = 24;
        v331 = 7;
        v92 = swift_allocObject();
        v93 = v318;
        v322 = v92;
        *(v92 + 16) = v317;
        *(v92 + 20) = v93;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v94 = swift_allocObject();
        v95 = v318;
        v319 = v94;
        *(v94 + 16) = v317;
        *(v94 + 20) = v95;

        v330 = 32;
        v96 = swift_allocObject();
        v97 = v319;
        v327 = v96;
        *(v96 + 16) = v466;
        *(v96 + 24) = v97;
        sub_1B0394868();
        sub_1B0394868();

        v320 = swift_allocObject();
        *(v320 + 16) = v539;

        v98 = swift_allocObject();
        v99 = v320;
        v332 = v98;
        *(v98 + 16) = v467;
        *(v98 + 24) = v99;

        v351 = sub_1B0E43988();
        v352 = sub_1B0E458D8();
        v329 = 17;
        v334 = swift_allocObject();
        v324 = 16;
        *(v334 + 16) = 16;
        v335 = swift_allocObject();
        v326 = 4;
        *(v335 + 16) = 4;
        v100 = swift_allocObject();
        v321 = v100;
        *(v100 + 16) = v436;
        *(v100 + 24) = 0;
        v101 = swift_allocObject();
        v102 = v321;
        v336 = v101;
        *(v101 + 16) = v468;
        *(v101 + 24) = v102;
        v337 = swift_allocObject();
        *(v337 + 16) = 0;
        v338 = swift_allocObject();
        *(v338 + 16) = 1;
        v103 = swift_allocObject();
        v104 = v322;
        v323 = v103;
        *(v103 + 16) = v469;
        *(v103 + 24) = v104;
        v105 = swift_allocObject();
        v106 = v323;
        v339 = v105;
        *(v105 + 16) = v470;
        *(v105 + 24) = v106;
        v340 = swift_allocObject();
        *(v340 + 16) = v324;
        v341 = swift_allocObject();
        *(v341 + 16) = v326;
        v107 = swift_allocObject();
        v325 = v107;
        *(v107 + 16) = v440;
        *(v107 + 24) = 0;
        v108 = swift_allocObject();
        v109 = v325;
        v342 = v108;
        *(v108 + 16) = v471;
        *(v108 + 24) = v109;
        v343 = swift_allocObject();
        *(v343 + 16) = 0;
        v344 = swift_allocObject();
        *(v344 + 16) = v326;
        v110 = swift_allocObject();
        v111 = v327;
        v328 = v110;
        *(v110 + 16) = v472;
        *(v110 + 24) = v111;
        v112 = swift_allocObject();
        v113 = v328;
        v345 = v112;
        *(v112 + 16) = v473;
        *(v112 + 24) = v113;
        v346 = swift_allocObject();
        *(v346 + 16) = 32;
        v347 = swift_allocObject();
        *(v347 + 16) = 8;
        v114 = swift_allocObject();
        v115 = v332;
        v333 = v114;
        *(v114 + 16) = v474;
        *(v114 + 24) = v115;
        v116 = swift_allocObject();
        v117 = v333;
        v349 = v116;
        *(v116 + 16) = v475;
        *(v116 + 24) = v117;
        v348 = sub_1B0E46A48();
        v350 = v118;

        v119 = v334;
        v120 = v350;
        *v350 = v476;
        v120[1] = v119;

        v121 = v335;
        v122 = v350;
        v350[2] = v477;
        v122[3] = v121;

        v123 = v336;
        v124 = v350;
        v350[4] = v478;
        v124[5] = v123;

        v125 = v337;
        v126 = v350;
        v350[6] = v479;
        v126[7] = v125;

        v127 = v338;
        v128 = v350;
        v350[8] = v480;
        v128[9] = v127;

        v129 = v339;
        v130 = v350;
        v350[10] = v481;
        v130[11] = v129;

        v131 = v340;
        v132 = v350;
        v350[12] = v482;
        v132[13] = v131;

        v133 = v341;
        v134 = v350;
        v350[14] = v483;
        v134[15] = v133;

        v135 = v342;
        v136 = v350;
        v350[16] = v484;
        v136[17] = v135;

        v137 = v343;
        v138 = v350;
        v350[18] = v485;
        v138[19] = v137;

        v139 = v344;
        v140 = v350;
        v350[20] = v486;
        v140[21] = v139;

        v141 = v345;
        v142 = v350;
        v350[22] = v487;
        v142[23] = v141;

        v143 = v346;
        v144 = v350;
        v350[24] = v488;
        v144[25] = v143;

        v145 = v347;
        v146 = v350;
        v350[26] = v489;
        v146[27] = v145;

        v147 = v349;
        v148 = v350;
        v350[28] = v490;
        v148[29] = v147;
        sub_1B0394964();

        if (os_log_type_enabled(v351, v352))
        {
          v149 = v355;
          v308 = sub_1B0E45D78();
          v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v309 = sub_1B03949A8(0);
          v310 = sub_1B03949A8(1);
          v311 = &v561;
          v561 = v308;
          v312 = &v560;
          v560 = v309;
          v313 = &v559;
          v559 = v310;
          sub_1B0394A48(2, &v561);
          sub_1B0394A48(5, v311);
          v557 = v476;
          v558 = v334;
          sub_1B03949FC(&v557, v311, v312, v313);
          v314 = v149;
          if (v149)
          {

            __break(1u);
          }

          else
          {
            v557 = v477;
            v558 = v335;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v306 = 0;
            v557 = v478;
            v558 = v336;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v305 = 0;
            v557 = v479;
            v558 = v337;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v304 = 0;
            v557 = v480;
            v558 = v338;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v303 = 0;
            v557 = v481;
            v558 = v339;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v302 = 0;
            v557 = v482;
            v558 = v340;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v301 = 0;
            v557 = v483;
            v558 = v341;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v300 = 0;
            v557 = v484;
            v558 = v342;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v299 = 0;
            v557 = v485;
            v558 = v343;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v298 = 0;
            v557 = v486;
            v558 = v344;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v297 = 0;
            v557 = v487;
            v558 = v345;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v296 = 0;
            v557 = v488;
            v558 = v346;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v295 = 0;
            v557 = v489;
            v558 = v347;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            v294 = 0;
            v557 = v490;
            v558 = v349;
            sub_1B03949FC(&v557, &v561, &v560, &v559);
            _os_log_impl(&dword_1B0389000, v351, v352, "[%.*hhx-%.*X] Action %s will complete asynchronously.", v308, 0x21u);
            sub_1B03998A8(v309);
            sub_1B03998A8(v310);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v351);
        v353(v535, v529);
      }

      else
      {
        sub_1B04179E0(v539);
      }
    }
  }
}