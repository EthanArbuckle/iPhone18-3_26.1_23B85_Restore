uint64_t Group.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_248143B30();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for Group()
{
  result = qword_27EE8AE58;
  if (!qword_27EE8AE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Group.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Group() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Group.members.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group() + 28));
}

uint64_t Group.hash(into:)(__int128 *a1)
{
  sub_248143B30();
  sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v3 = type metadata accessor for Group();
  v4 = *(v1 + v3[5]);
  sub_248143D70();
  v5 = (v1 + v3[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_248143B70();
  v8 = *(v1 + v3[7]);

  return sub_2481331FC(a1, v8);
}

uint64_t Group.hashValue.getter()
{
  sub_248143D40();
  sub_248143B30();
  sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v1 = type metadata accessor for Group();
  v2 = *(v0 + v1[5]);
  sub_248143D70();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_248143B70();
  sub_2481331FC(v7, *(v0 + v1[7]));
  return sub_248143D80();
}

uint64_t sub_248132204(int *a1)
{
  sub_248143D40();
  sub_248143B30();
  sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v3 = *(v1 + a1[5]);
  sub_248143D70();
  v4 = (v1 + a1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_248143B70();
  sub_2481331FC(v8, *(v1 + a1[7]));
  return sub_248143D80();
}

uint64_t sub_2481322D0(__int128 *a1, int *a2)
{
  sub_248143B30();
  sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v5 = *(v2 + a2[5]);
  sub_248143D70();
  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_248143B70();
  v9 = *(v2 + a2[7]);

  return sub_2481331FC(a1, v9);
}

uint64_t sub_248132398(uint64_t a1, int *a2)
{
  sub_248143D40();
  sub_248143B30();
  sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v4 = *(v2 + a2[5]);
  sub_248143D70();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_248143B70();
  sub_2481331FC(v9, *(v2 + a2[7]));
  return sub_248143D80();
}

uint64_t sub_248132464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84FA0];
  v7 = (v6 + 16);
  aBlock[4] = sub_248133C90;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24813A940;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v7;

  v10 = sub_248143AB8(v9);

  v11 = sub_2481429D0(v10);

  v12 = *(type metadata accessor for LibSystemGroupRecord(0) + 24);
  v13 = sub_248143B30();
  (*(*(v13 - 8) + 16))(a3, a1 + v12, v13);
  v14 = *a1;
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  v21[2] = a1;

  v17 = sub_248132B18(sub_248133CB0, v21, v11);
  __swift_destroy_boxed_opaque_existential_1(a2);
  v18 = type metadata accessor for Group();
  *(a3 + v18[5]) = v14;
  v19 = (a3 + v18[6]);
  *v19 = v16;
  v19[1] = v15;
  *(a3 + v18[7]) = v17;
  return sub_248133D38(a1, type metadata accessor for LibSystemGroupRecord);
}

uint64_t sub_24813267C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for LibSystemGroupRecord(0) + 28));
  v4 = type metadata accessor for User();
  return sub_2481326E0(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8), v3) & 1;
}

uint64_t sub_2481326E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_248143D40();
  sub_248143B70();
  v7 = sub_248143D80();
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
    if (v12 || (sub_248143D20() & 1) != 0)
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

uint64_t sub_2481327D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-1] - v8;
  v10 = type metadata accessor for LibSystemGroupRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22[-1] - v16;
  sub_248133A6C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_248133B28(a1);
    sub_248133B28(v9);
    v18 = 1;
  }

  else
  {
    sub_248133B90(v9, v17);
    sub_248133CD0(v17, v15, type metadata accessor for LibSystemGroupRecord);
    sub_248133BF4(a2, v22);
    sub_248132464(v15, v22, a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_248133B28(a1);
    sub_248133D38(v17, type metadata accessor for LibSystemGroupRecord);
    v18 = 0;
  }

  v19 = type metadata accessor for Group();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

uint64_t sub_248132A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibSystemGroupRecord(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248133CD0(a1, v9, type metadata accessor for LibSystemGroupRecord);
  sub_248133BF4(a2, v12);
  return sub_248132464(v9, v12, a3);
}

uint64_t sub_248132B18(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for User();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = v11;
    v42 = v4;
    v35 = &v32;
    MEMORY[0x28223BE20](v9);
    v34 = &v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v12);
    v36 = 0;
    v13 = 0;
    v11 = a3 + 56;
    v14 = 1 << *(a3 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a3 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v41 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v13 << 6);
      v4 = a3;
      v22 = *(a3 + 48);
      v23 = v38;
      v24 = *(v39 + 72);
      v37 = v21;
      sub_248133CD0(v22 + v24 * v21, v38, type metadata accessor for User);
      v25 = v42;
      v26 = v40(v23);
      sub_248133D38(v23, type metadata accessor for User);
      v42 = v25;
      if (v25)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v16 = v41;
      if (v26)
      {
        *&v34[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_248141F0C(v34, v33, v36, a3);
          goto LABEL_18;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  v31 = sub_248133130(v30, v11, a3, v40, a2);

  result = MEMORY[0x24C1C83B0](v30, -1, -1);
  if (!v4)
  {
    result = v31;
  }

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248132EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v37 = a4;
  v38 = a8;
  v31 = a2;
  v32 = a7;
  v33 = a1;
  v9 = a6(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v34 = 0;
  v35 = &v31 - v12;
  v13 = 0;
  v39 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v40 = (v19 - 1) & v19;
LABEL_11:
    v24 = v38;
    v25 = v35;
    v26 = v21 | (v13 << 6);
    sub_248133CD0(*(v39 + 48) + *(v36 + 72) * v26, v35, v38);
    v27 = v41;
    v28 = v37(v25);
    result = sub_248133D38(v25, v24);
    v41 = v27;
    if (v27)
    {
      return result;
    }

    v19 = v40;
    if (v28)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return v32(v33, v31, v34, v30);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v40 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_248133130(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_248132EC8(result, a2, a3, a4, a5, type metadata accessor for User, sub_248141F0C, type metadata accessor for User);

    return v10;
  }

  return result;
}

uint64_t sub_2481331FC(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for User();
  v37 = *(v4 - 1);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20]();
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v41 = a1[2];
  v42 = v8;
  v43 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v36[1] = a1;
  v39 = v10;
  v40 = v9;
  v36[2] = sub_248143D80();
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v38 = a2;

  v17 = 0;
  for (i = 0; v14; v17 ^= v35)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_248133CD0(*(v38 + 48) + *(v37 + 72) * (v20 | (v19 << 6)), v7, type metadata accessor for User);
    sub_248143D40();
    sub_248143B30();
    sub_2481339DC(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
    sub_248143B40();
    v21 = *&v7[v4[5]];
    sub_248143D70();
    v22 = &v7[v4[6]];
    v23 = *v22;
    v24 = *(v22 + 1);
    sub_248143B70();
    v25 = &v7[v4[7]];
    v26 = *v25;
    v27 = *(v25 + 1);
    sub_248143B70();
    v28 = &v7[v4[8]];
    v29 = *v28;
    v30 = *(v28 + 1);
    sub_248143B70();
    v31 = *&v7[v4[9]];
    sub_248143D70();
    v32 = &v7[v4[10]];
    v33 = *v32;
    v34 = *(v32 + 1);
    sub_248143B70();
    v35 = sub_248143D80();
    result = sub_248133D38(v7, type metadata accessor for User);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x24C1C8020](v17);
    }

    v14 = *(v11 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481334A8(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_248143D80();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_248143D40();

    sub_248143B70();
    v15 = sub_248143D80();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1C8020](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20DarwinDirectoryQuery5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248143AF0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Group();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = sub_248143D20();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_2481342B0(v13, v14);
}

uint64_t sub_24813371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248143B30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2481337F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_248143B30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2481338AC()
{
  sub_248143B30();
  if (v0 <= 0x3F)
  {
    sub_248133948();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_248133948()
{
  if (!qword_27EE8AE68)
  {
    type metadata accessor for User();
    sub_2481339DC(&qword_27EE8AE70, type metadata accessor for User);
    v0 = sub_248143BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE8AE68);
    }
  }
}

uint64_t sub_2481339DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248133A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_248133B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248133B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248133BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_248133C58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248133CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_248133D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248133DB0(uint64_t a1)
{
  result = sub_248133E60(&qword_27EE8AE80, type metadata accessor for LibSystemGroupRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248133E08(uint64_t a1)
{
  result = sub_248133E60(&qword_27EE8AE88, type metadata accessor for LibSystemUserRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248133E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248133EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(a2 + 8) = sub_248143B80();
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  v27 = *(a1 + 22);
  v28 = *(a1 + 23);
  v7 = *(a1 + 21);
  v8 = *(a1 + 20);
  v9 = *(a1 + 19);
  v10 = *(a1 + 18);
  v11 = *(a1 + 17);
  v12 = *(a1 + 16);
  v13 = type metadata accessor for LibSystemUserRecord(0);
  v14 = v13[6];
  sub_248143B10();
  v15 = *(a1 + 48);
  v16 = sub_248143B80();
  v17 = (a2 + v13[7]);
  *v17 = v16;
  v17[1] = v18;
  v19 = *(a1 + 56);
  v20 = sub_248143B80();
  v21 = (a2 + v13[8]);
  *v21 = v20;
  v21[1] = v22;
  v23 = *(a1 + 64);
  *(a2 + v13[9]) = *(a1 + 40);
  result = sub_248143B80();
  v25 = (a2 + v13[10]);
  *v25 = result;
  v25[1] = v26;
  *(a2 + v13[11]) = *(a1 + 32);
  return result;
}

uint64_t sub_248133FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(a2 + 8) = sub_248143B80();
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  v20 = *(a1 + 22);
  v21 = *(a1 + 23);
  v7 = *(a1 + 21);
  v8 = *(a1 + 20);
  v9 = *(a1 + 19);
  v10 = *(a1 + 18);
  v11 = *(a1 + 17);
  v12 = *(a1 + 16);
  v13 = type metadata accessor for LibSystemGroupRecord(0);
  v14 = v13[6];
  sub_248143B10();
  v15 = 0;
  *(a2 + v13[8]) = *(a1 + 32);
  v23 = MEMORY[0x277D84FA0];
  while (1)
  {
    result = *(*(a1 + 40) + 8 * v15);
    if (!result)
    {
      break;
    }

    v17 = sub_248143B80();
    sub_24813D9AC(&v22, v17, v18);

    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      break;
    }
  }

  *(a2 + v13[7]) = v23;
  return result;
}

uint64_t sub_2481340F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_248143D40();

    sub_248143B70();
    v17 = sub_248143D80();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_248143D20() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481342B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for User();
  v5 = *(*(v4 - 1) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v49 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  if (v20)
  {
    while (1)
    {
      v51 = v21;
      v52 = v17;
      v23 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
LABEL_13:
      v54 = v13;
      v55 = a1;
      v26 = *(v13 + 72);
      sub_2481381CC(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15, type metadata accessor for User);
      v53 = v15;
      sub_24813812C(v15, v11, type metadata accessor for User);
      v27 = *(a2 + 40);
      sub_248143D40();
      sub_248143B30();
      sub_248137EF8(&qword_27EE8AE48, 255, MEMORY[0x277CC95F0]);
      sub_248143B40();
      v28 = *&v11[v4[5]];
      sub_248143D70();
      v29 = &v11[v4[6]];
      v30 = *v29;
      v63 = *(v29 + 1);
      v64 = v30;
      sub_248143B70();
      v31 = &v11[v4[7]];
      v32 = *v31;
      v61 = *(v31 + 1);
      v62 = v32;
      sub_248143B70();
      v33 = &v11[v4[8]];
      v34 = *v33;
      v59 = *(v33 + 1);
      v60 = v34;
      sub_248143B70();
      v58 = *&v11[v4[9]];
      sub_248143D70();
      v35 = &v11[v4[10]];
      v36 = *v35;
      v56 = *(v35 + 1);
      v57 = v36;
      sub_248143B70();
      v37 = sub_248143D80();
      v38 = -1 << *(a2 + 32);
      v39 = v37 & ~v38;
      if (((*(v22 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        break;
      }

      v40 = ~v38;
      while (1)
      {
        sub_2481381CC(*(a2 + 48) + v39 * v26, v8, type metadata accessor for User);
        if ((sub_248143AF0() & 1) != 0 && *&v8[v4[5]] == v28)
        {
          v41 = &v8[v4[6]];
          v42 = *v41 == v64 && *(v41 + 1) == v63;
          if (v42 || (sub_248143D20() & 1) != 0)
          {
            v43 = &v8[v4[7]];
            v44 = *v43 == v62 && *(v43 + 1) == v61;
            if (v44 || (sub_248143D20() & 1) != 0)
            {
              v45 = &v8[v4[8]];
              v46 = *v45 == v60 && *(v45 + 1) == v59;
              if (v46 || (sub_248143D20()) && *&v8[v4[9]] == v58)
              {
                v47 = &v8[v4[10]];
                v48 = *v47 == v57 && *(v47 + 1) == v56;
                if (v48 || (sub_248143D20() & 1) != 0)
                {
                  break;
                }
              }
            }
          }
        }

        sub_248138234(v8, type metadata accessor for User);
        v39 = (v39 + 1) & v40;
        if (((*(v22 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_248138234(v8, type metadata accessor for User);
      result = sub_248138234(v11, type metadata accessor for User);
      v13 = v54;
      a1 = v55;
      v15 = v53;
      v17 = v52;
      v21 = v51;
      v20 = v50;
      if (!v50)
      {
        goto LABEL_8;
      }
    }

LABEL_42:
    sub_248138234(v11, type metadata accessor for User);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v17 + 8 * v16);
    ++v24;
    if (v25)
    {
      v51 = v21;
      v52 = v17;
      v23 = __clz(__rbit64(v25));
      v50 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481347B4(uint64_t a1)
{
  v3 = type metadata accessor for User();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v31 = v1;
    v42 = MEMORY[0x277D84F90];
    sub_248143CD0();
    v10 = -1 << *(a1 + 32);
    v40 = a1 + 56;
    result = sub_248143BF0();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v32 = a1 + 64;
    v33 = v13;
    v34 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v12;
      v13 = v8;
      v16 = *(a1 + 48) + *(v37 + 72) * v11;
      v17 = v35;
      sub_2481381CC(v16, v35, type metadata accessor for User);
      v18 = v36;
      sub_2481381CC(v17, v36, type metadata accessor for User);
      v19 = objc_allocWithZone(DDQUser);
      v20 = &v19[OBJC_IVAR___DDQUser__user];
      v20[3] = v38;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      sub_2481381CC(v18, boxed_opaque_existential_0, type metadata accessor for User);
      v41.receiver = v19;
      v41.super_class = DDQUser;
      objc_msgSendSuper2(&v41, sel_init);
      sub_248138234(v18, type metadata accessor for User);
      v22 = v17;
      a1 = v34;
      sub_248138234(v22, type metadata accessor for User);
      sub_248143CB0();
      v23 = *(v42 + 16);
      sub_248143CE0();
      sub_248143CF0();
      result = sub_248143CC0();
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v24 = *(v40 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v13;
      LODWORD(v13) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_248137F40(v11, v33, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_248137F40(v11, v33, 0);
      }

LABEL_4:
      v12 = v39 + 1;
      v11 = v14;
      if (v39 + 1 == v8)
      {
        return v42;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_248134B30(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v31 = v1;
    v42 = MEMORY[0x277D84F90];
    sub_248143CD0();
    v10 = -1 << *(a1 + 32);
    v40 = a1 + 56;
    result = sub_248143BF0();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v32 = a1 + 64;
    v33 = v13;
    v34 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v12;
      v13 = v8;
      v16 = *(a1 + 48) + *(v37 + 72) * v11;
      v17 = v35;
      sub_2481381CC(v16, v35, type metadata accessor for Group);
      v18 = v36;
      sub_2481381CC(v17, v36, type metadata accessor for Group);
      v19 = objc_allocWithZone(DDQGroup);
      v20 = &v19[OBJC_IVAR___DDQGroup__group];
      v20[3] = v38;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      sub_2481381CC(v18, boxed_opaque_existential_0, type metadata accessor for Group);
      v41.receiver = v19;
      v41.super_class = DDQGroup;
      objc_msgSendSuper2(&v41, sel_init);
      sub_248138234(v18, type metadata accessor for Group);
      v22 = v17;
      a1 = v34;
      sub_248138234(v22, type metadata accessor for Group);
      sub_248143CB0();
      v23 = *(v42 + 16);
      sub_248143CE0();
      sub_248143CF0();
      result = sub_248143CC0();
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v24 = *(v40 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v13;
      LODWORD(v13) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_248137F40(v11, v33, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_248137F40(v11, v33, 0);
      }

LABEL_4:
      v12 = v39 + 1;
      v11 = v14;
      if (v39 + 1 == v8)
      {
        return v42;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t DDQUser.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_248138064(a1, v16, &qword_27EE8AE90, &qword_2481444C8);
  if (!v17)
  {
    sub_2481380CC(v16, &qword_27EE8AE90, &qword_2481444C8);
    goto LABEL_6;
  }

  type metadata accessor for DDQUser(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  v11 = v15;
  if (v15 == v1)
  {

    v12 = 1;
  }

  else
  {
    sub_248135858(v1 + OBJC_IVAR___DDQUser__user, v16);
    swift_dynamicCast();
    sub_248135858(v11 + OBJC_IVAR___DDQUser__user, v16);
    swift_dynamicCast();
    v12 = _s20DarwinDirectoryQuery4UserV2eeoiySbAC_ACtFZ_0(v9, v7);

    sub_248138234(v7, type metadata accessor for User);
    sub_248138234(v9, type metadata accessor for User);
  }

  return v12 & 1;
}

uint64_t sub_248135858(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DDQUser.hash.getter()
{
  v1 = type metadata accessor for User();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_248135858(v0 + OBJC_IVAR___DDQUser__user, v22);
  swift_dynamicCast();
  sub_248143D40();
  sub_248143B30();
  sub_248137EF8(&qword_27EE8AE48, 255, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v5 = *&v4[v1[5]];
  sub_248143D70();
  v6 = &v4[v1[6]];
  v7 = *v6;
  v8 = *(v6 + 1);
  sub_248143B70();
  v9 = &v4[v1[7]];
  v10 = *v9;
  v11 = *(v9 + 1);
  sub_248143B70();
  v12 = &v4[v1[8]];
  v13 = *v12;
  v14 = *(v12 + 1);
  sub_248143B70();
  v15 = *&v4[v1[9]];
  sub_248143D70();
  v16 = &v4[v1[10]];
  v17 = *v16;
  v18 = *(v16 + 1);
  sub_248143B70();
  v19 = sub_248143D80();
  sub_248138234(v4, type metadata accessor for User);
  return v19;
}

id sub_248135AEC(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a3();
  a4();
  sub_248137EF8(a5, v9, a6);
  v10 = sub_248143B90();

  return v10;
}

id sub_248135C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = sub_248143B30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(a1 + *a4, v19);
  swift_dynamicCast();
  (*(v13 + 16))(v16, v11, v12);
  sub_248138234(v11, a5);
  v17 = sub_248143AE0();
  (*(v13 + 8))(v16, v12);

  return v17;
}

uint64_t sub_248135E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  sub_248135858(a1 + *a4, v14);
  swift_dynamicCast();
  v12 = *&v11[*(v8 + 20)];
  sub_248138234(v11, a5);
  return v12;
}

id sub_248135F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  sub_248135858(a1 + *a4, v17);
  swift_dynamicCast();
  v12 = &v11[*(v8 + 24)];
  v13 = *v12;
  v14 = v12[1];

  sub_248138234(v11, a5);
  v15 = sub_248143B50();

  return v15;
}

void sub_2481361EC()
{
  v0 = sub_248143B30();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_248143B00();
  sub_248143D00();
  __break(1u);
}

id _sSo7DDQUserC20DarwinDirectoryQueryEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t DDQGroup.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = sub_248138064(a1, v21, &qword_27EE8AE90, &qword_2481444C8);
  if (!v22)
  {
    sub_2481380CC(v21, &qword_27EE8AE90, &qword_2481444C8);
    goto LABEL_13;
  }

  type metadata accessor for DDQGroup(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  v11 = v20;
  if (v20 == v1)
  {

    v17 = 1;
  }

  else
  {
    sub_248135858(v1 + OBJC_IVAR___DDQGroup__group, v21);
    swift_dynamicCast();
    sub_248135858(v11 + OBJC_IVAR___DDQGroup__group, v21);
    swift_dynamicCast();
    if (sub_248143AF0() & 1) != 0 && *&v9[v3[5]] == *&v7[v3[5]] && ((v12 = v3[6], v13 = *&v9[v12], v14 = *&v9[v12 + 8], v15 = &v7[v12], v13 == *v15) ? (v16 = v14 == *(v15 + 1)) : (v16 = 0), v16 || (sub_248143D20()))
    {
      v17 = sub_2481342B0(*&v9[v3[7]], *&v7[v3[7]]);
    }

    else
    {
      v17 = 0;
    }

    sub_248138234(v7, type metadata accessor for Group);
    sub_248138234(v9, type metadata accessor for Group);
  }

  return v17 & 1;
}

uint64_t sub_2481368D0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_248143BE0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2481380CC(v10, &qword_27EE8AE90, &qword_2481444C8);
  return v8 & 1;
}

uint64_t DDQGroup.hash.getter()
{
  v1 = type metadata accessor for Group();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248135858(v0 + OBJC_IVAR___DDQGroup__group, v12);
  swift_dynamicCast();
  sub_248143D40();
  sub_248143B30();
  sub_248137EF8(&qword_27EE8AE48, 255, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v5 = *&v4[v1[5]];
  sub_248143D70();
  v6 = &v4[v1[6]];
  v7 = *v6;
  v8 = *(v6 + 1);
  sub_248143B70();
  sub_2481331FC(v12, *&v4[v1[7]]);
  v9 = sub_248143D80();
  sub_248138234(v4, type metadata accessor for Group);
  return v9;
}

uint64_t sub_248136B08()
{
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = (v0 + 16);
  aBlock[4] = sub_2481382AC;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24813A940;
  aBlock[3] = &block_descriptor_21;
  v2 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  v4 = sub_248143AB8(v3);

  v5 = sub_2481429D0(v4);

  v6 = sub_2481347B4(v5);

  v7 = sub_248142D94(v6);

  return v7;
}

uint64_t sub_248136C98()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for LibSystemUserRecord(0);
  v36 = *(v0 - 8);
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE8AE40 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84FA0];
    v5 = (v4 + 16);
    aBlock[4] = sub_248133C90;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24813A940;
    aBlock[3] = &block_descriptor_16;
    v6 = _Block_copy(aBlock);

    DarwinDirectoryRecordStoreApply();
    _Block_release(v6);
    swift_beginAccess();
    v7 = *v5;

    v9 = *(v7 + 32);
    v10 = ((1 << v9) + 63) >> 6;
    if ((v9 & 0x3Fu) <= 0xD)
    {
      goto LABEL_3;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_3:
    v33 = &v33;
    v34 = v10;
    MEMORY[0x28223BE20](v8);
    v12 = &v33 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v35 = 0;
    v13 = 0;
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v21 = v18 | (v13 << 6);
      sub_2481381CC(*(v7 + 48) + *(v36 + 72) * v21, v3, type metadata accessor for LibSystemUserRecord);
      v22 = v3[*(v0 + 44)];
      sub_248138234(v3, type metadata accessor for LibSystemUserRecord);
      if (v22 == 1)
      {
        *&v12[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          v24 = sub_2481425A4(v12, v34, v35, v7);
          goto LABEL_18;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v31 = swift_slowAlloc();
  v32 = sub_248141E40(v31, v10, v7, sub_248139930, 0);

  MEMORY[0x24C1C83B0](v31, -1, -1);
  v24 = v32;
LABEL_18:
  v25 = sub_248143AB8(v24);

  v26 = sub_2481429D0(v25);

  v27 = sub_2481347B4(v26);

  v28 = sub_248142D94(v27);

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

id sub_2481370F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED8, &qword_2481444D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for User();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_248138064(a1, v5, &qword_27EE8AED8, &qword_2481444D8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2481380CC(a1, &qword_27EE8AED8, &qword_2481444D8);
    sub_2481380CC(v5, &qword_27EE8AED8, &qword_2481444D8);
    return 0;
  }

  else
  {
    sub_24813812C(v5, v13, type metadata accessor for User);
    sub_2481381CC(v13, v11, type metadata accessor for User);
    v15 = objc_allocWithZone(DDQUser);
    v16 = &v15[OBJC_IVAR___DDQUser__user];
    v16[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    sub_2481381CC(v11, boxed_opaque_existential_0, type metadata accessor for User);
    v19.receiver = v15;
    v19.super_class = DDQUser;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    sub_2481380CC(a1, &qword_27EE8AED8, &qword_2481444D8);
    sub_248138234(v11, type metadata accessor for User);
    sub_248138234(v13, type metadata accessor for User);
    return v18;
  }
}

id sub_248137370(uint64_t a1)
{
  v2 = type metadata accessor for DarwinDirectoryFilter(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED8, &qword_2481444D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-1] - v12;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v18[3] = &type metadata for ProviderSideEffects;
  v18[4] = &off_285A4B4B8;
  v18[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v18[0] + 16);
  v14 = __swift_project_boxed_opaque_existential_1(v18, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v15 = sub_248143B30();
  (*(*(v15 - 8) + 16))(v5, a1, v15);
  swift_storeEnumTagMultiPayload();
  sub_24813ADB4(v5, v9);
  sub_248138234(v5, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v9, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_2481370F8(v13);
}

id sub_2481375A0(int a1)
{
  v2 = type metadata accessor for DarwinDirectoryFilter(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED8, &qword_2481444D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17[-1] - v12;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v17[3] = &type metadata for ProviderSideEffects;
  v17[4] = &off_285A4B4B8;
  v17[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v17[0] + 16);
  v14 = __swift_project_boxed_opaque_existential_1(v17, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  sub_24813ADB4(v5, v9);
  sub_248138234(v5, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v9, v13);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_2481370F8(v13);
}

id sub_248137798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DarwinDirectoryFilter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED8, &qword_2481444D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19[-1] - v14;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v19[3] = &type metadata for ProviderSideEffects;
  v19[4] = &off_285A4B4B8;
  v19[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v19[0] + 16);
  v16 = __swift_project_boxed_opaque_existential_1(v19, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_24813ADB4(v7, v11);
  sub_248138234(v7, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v11, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_2481370F8(v15);
}

uint64_t sub_2481379B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_248137A00()
{
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v12[3] = &type metadata for ProviderSideEffects;
  v12[4] = &off_285A4B4B8;
  v12[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v12[0] + 16);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = (v0 + 16);
  aBlock[4] = sub_248137FE0;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24813A940;
  aBlock[3] = &block_descriptor_0;
  v2 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  MEMORY[0x28223BE20](v4);
  v10[2] = v12;
  v5 = sub_24813A3C4(sub_248138000, v10, v3);

  v6 = sub_248142C04(v5);

  __swift_destroy_boxed_opaque_existential_1(v12);
  v7 = sub_248134B30(v6);

  v8 = sub_248142F2C(v7);

  return v8;
}

id sub_248137C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Group();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_248138064(a1, v5, &qword_27EE8AEB8, &qword_2481444D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2481380CC(a1, &qword_27EE8AEB8, &qword_2481444D0);
    sub_2481380CC(v5, &qword_27EE8AEB8, &qword_2481444D0);
    return 0;
  }

  else
  {
    sub_24813812C(v5, v13, type metadata accessor for Group);
    sub_2481381CC(v13, v11, type metadata accessor for Group);
    v15 = objc_allocWithZone(DDQGroup);
    v16 = &v15[OBJC_IVAR___DDQGroup__group];
    v16[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    sub_2481381CC(v11, boxed_opaque_existential_0, type metadata accessor for Group);
    v19.receiver = v15;
    v19.super_class = DDQGroup;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    sub_2481380CC(a1, &qword_27EE8AEB8, &qword_2481444D0);
    sub_248138234(v11, type metadata accessor for Group);
    sub_248138234(v13, type metadata accessor for Group);
    return v18;
  }
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

uint64_t sub_248137EF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_248137F40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_248137F4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_248138064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2481380CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24813812C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_248138194()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481381CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_248138234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_248138300()
{
  sub_248143B30();
  if (v0 <= 0x3F)
  {
    sub_2481383A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2481383A4()
{
  if (!qword_27EE8AEF0)
  {
    v0 = sub_248143BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE8AEF0);
    }
  }
}

uint64_t sub_248138470()
{
  result = sub_248143B30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_248143B30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_248143B30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24813867C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2481386B4()
{
  result = sub_248143B30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248138754()
{
  v1 = v0;
  v2 = *v0;
  sub_248143D70();
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_248143B70();
  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v7 = (v1 + v5[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_248143B70();
  v10 = (v1 + v5[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_248143B70();
  v13 = *(v1 + v5[9]);
  sub_248143D70();
  v14 = (v1 + v5[10]);
  v15 = *v14;
  v16 = v14[1];
  sub_248143B70();
  v17 = *(v1 + v5[11]);
  return sub_248143D60();
}

uint64_t sub_24813885C()
{
  v1 = v0;
  sub_248143D40();
  v2 = *v0;
  sub_248143D70();
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_248143B70();
  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v7 = (v1 + v5[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_248143B70();
  v10 = (v1 + v5[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_248143B70();
  v13 = *(v1 + v5[9]);
  sub_248143D70();
  v14 = (v1 + v5[10]);
  v15 = *v14;
  v16 = v14[1];
  sub_248143B70();
  v17 = *(v1 + v5[11]);
  sub_248143D60();
  return sub_248143D80();
}

uint64_t sub_248138980(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_248143D40();
  v5 = *v2;
  sub_248143D70();
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  sub_248143B70();
  v8 = a2[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v9 = (v4 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_248143B70();
  v12 = (v4 + a2[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_248143B70();
  v15 = *(v4 + a2[9]);
  sub_248143D70();
  v16 = (v4 + a2[10]);
  v17 = *v16;
  v18 = v16[1];
  sub_248143B70();
  v19 = *(v4 + a2[11]);
  sub_248143D60();
  return sub_248143D80();
}

uint64_t sub_248138ADC(int *a1)
{
  v3 = v1;
  sub_248143D40();
  v4 = *v1;
  sub_248143D70();
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  sub_248143B70();
  v7 = a1[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  sub_2481334A8(v10, *(v3 + a1[7]));
  v8 = *(v3 + a1[8]);
  sub_248143D60();
  return sub_248143D80();
}

uint64_t sub_248138BB4(__int128 *a1, int *a2)
{
  v4 = v2;
  v6 = *v2;
  sub_248143D70();
  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  sub_248143B70();
  v9 = a2[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  sub_2481334A8(a1, *(v4 + a2[7]));
  v10 = *(v4 + a2[8]);
  return sub_248143D60();
}

uint64_t sub_248138C7C(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_248143D40();
  v5 = *v2;
  sub_248143D70();
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  sub_248143B70();
  v8 = a2[6];
  sub_248143B30();
  sub_248138D9C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  sub_2481334A8(v11, *(v4 + a2[7]));
  v9 = *(v4 + a2[8]);
  sub_248143D60();
  return sub_248143D80();
}

uint64_t sub_248138D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248138DE4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_248143D20() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  if ((sub_248143AF0() & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = v5[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_248143D20() & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = v5[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (v16 || (sub_248143D20()) && *(a1 + v5[9]) == *(a2 + v5[9]) && ((v17 = v5[10], v18 = *(a1 + v17), v19 = *(a1 + v17 + 8), v20 = (a2 + v17), v18 == *v20) && v19 == v20[1] || (sub_248143D20()))
  {
    v21 = *(a1 + v5[11]) ^ *(a2 + v5[11]) ^ 1;
  }

  else
  {
LABEL_24:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_248138F2C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_248143D20()) && (v5 = type metadata accessor for LibSystemGroupRecord(0), v6 = v5[6], (sub_248143AF0()) && (sub_2481340F8(*(a1 + v5[7]), *(a2 + v5[7])))
  {
    v7 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
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

uint64_t sub_248139008(uint64_t a1, int a2)
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

uint64_t sub_248139050(uint64_t result, int a2, int a3)
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

uint64_t User.hashValue.getter()
{
  sub_248143D40();
  sub_248143B30();
  sub_248139B3C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v1 = type metadata accessor for User();
  v2 = *(v0 + v1[5]);
  sub_248143D70();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_248143B70();
  v6 = (v0 + v1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_248143B70();
  v9 = (v0 + v1[8]);
  v10 = *v9;
  v11 = v9[1];
  sub_248143B70();
  v12 = *(v0 + v1[9]);
  sub_248143D70();
  v13 = (v0 + v1[10]);
  v14 = *v13;
  v15 = v13[1];
  sub_248143B70();
  return sub_248143D80();
}

uint64_t User.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_248143B30();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t User.name.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.fullName.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.homeDirectory.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.shell.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.hash(into:)()
{
  sub_248143B30();
  sub_248139B3C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v1 = type metadata accessor for User();
  v2 = *(v0 + v1[5]);
  sub_248143D70();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_248143B70();
  v6 = (v0 + v1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_248143B70();
  v9 = (v0 + v1[8]);
  v10 = *v9;
  v11 = v9[1];
  sub_248143B70();
  v12 = *(v0 + v1[9]);
  sub_248143D70();
  v13 = (v0 + v1[10]);
  v14 = *v13;
  v15 = v13[1];

  return sub_248143B70();
}

uint64_t sub_248139470(uint64_t a1, int *a2)
{
  sub_248143B30();
  sub_248139B3C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v4 = *(v2 + a2[5]);
  sub_248143D70();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_248143B70();
  v8 = (v2 + a2[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_248143B70();
  v11 = (v2 + a2[8]);
  v12 = *v11;
  v13 = v11[1];
  sub_248143B70();
  v14 = *(v2 + a2[9]);
  sub_248143D70();
  v15 = (v2 + a2[10]);
  v16 = *v15;
  v17 = v15[1];

  return sub_248143B70();
}

uint64_t sub_248139570(uint64_t a1, int *a2)
{
  sub_248143D40();
  sub_248143B30();
  sub_248139B3C(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v4 = *(v2 + a2[5]);
  sub_248143D70();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_248143B70();
  v8 = (v2 + a2[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_248143B70();
  v11 = (v2 + a2[8]);
  v12 = *v11;
  v13 = v11[1];
  sub_248143B70();
  v14 = *(v2 + a2[9]);
  sub_248143D70();
  v15 = (v2 + a2[10]);
  v16 = *v15;
  v17 = v15[1];
  sub_248143B70();
  return sub_248143D80();
}

uint64_t sub_248139678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-v9];
  if ((*(v11 + 48))(a1, 1, v4) == 1)
  {
    sub_248139DB8(a1);
    v12 = type metadata accessor for User();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  else
  {
    sub_248139E20(a1, v10);
    sub_248139E20(v10, v8);
    v15 = v4[6];
    v16 = sub_248143B30();
    (*(*(v16 - 8) + 16))(a2, &v8[v15], v16);
    v34 = *v8;
    v17 = *(v8 + 2);
    v35 = *(v8 + 1);
    v18 = &v8[v4[7]];
    v20 = *v18;
    v19 = v18[1];
    v21 = &v8[v4[8]];
    v23 = *v21;
    v22 = v21[1];
    v24 = v4[10];
    v25 = *&v8[v4[9]];
    v27 = *&v8[v24];
    v26 = *&v8[v24 + 8];

    sub_248139E84(v8);
    v28 = type metadata accessor for User();
    *(a2 + v28[5]) = v34;
    v29 = (a2 + v28[6]);
    *v29 = v35;
    v29[1] = v17;
    v30 = (a2 + v28[7]);
    *v30 = v20;
    v30[1] = v19;
    v31 = (a2 + v28[8]);
    *v31 = v23;
    v31[1] = v22;
    *(a2 + v28[9]) = v25;
    v32 = (a2 + v28[10]);
    *v32 = v27;
    v32[1] = v26;
    return (*(*(v28 - 1) + 56))(a2, 0, 1, v28);
  }
}

uint64_t _s20DarwinDirectoryQuery4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248143AF0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for User();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_248143D20() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_248143D20() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_248143D20() & 1) == 0 || *(a1 + v5[9]) != *(a2 + v5[9]))
  {
    return 0;
  }

  v21 = v5[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    return 1;
  }

  return sub_248143D20();
}

uint64_t type metadata accessor for User()
{
  result = qword_27EE8AF30;
  if (!qword_27EE8AF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248139B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248139B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248143B30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_248139C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_248143B30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_248139D28()
{
  result = sub_248143B30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248139DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248139E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemUserRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248139E84(uint64_t a1)
{
  v2 = type metadata accessor for LibSystemUserRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248139EF8(uint64_t a1)
{
  v3 = type metadata accessor for LibSystemUserRecord(0);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v51 - v7;
  v8 = type metadata accessor for User();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v51 = v1;
  v72 = MEMORY[0x277D84F90];
  sub_24814276C(0, v12, 0);
  v13 = v72;
  v14 = a1 + 56;
  v15 = -1 << *(a1 + 32);
  result = sub_248143BF0();
  v17 = result;
  v18 = 0;
  v52 = a1 + 64;
  v53 = v12;
  v54 = a1 + 56;
  v55 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v63 = 1 << v17;
    v64 = v17 >> 6;
    v20 = *(a1 + 36);
    v61 = v18;
    v62 = v20;
    v21 = v71;
    sub_2481437D8(*(a1 + 48) + *(v59 + 72) * v17, v71, type metadata accessor for LibSystemUserRecord);
    v70 = v13;
    v22 = v58;
    sub_2481437D8(v21, v58, type metadata accessor for LibSystemUserRecord);
    v23 = v60;
    v24 = v60[6];
    v25 = sub_248143B30();
    (*(*(v25 - 8) + 16))(v11, v22 + v24, v25);
    v68 = *v22;
    v26 = *(v22 + 16);
    v69 = *(v22 + 8);
    v27 = (v22 + v23[7]);
    v28 = *v27;
    v29 = v27[1];
    v30 = (v22 + v23[8]);
    v31 = *v30;
    v32 = v30[1];
    v66 = v28;
    v67 = v31;
    v33 = v23[10];
    LODWORD(v23) = *(v22 + v23[9]);
    v34 = *(v22 + v33 + 8);
    v65 = *(v22 + v33);

    v35 = v22;
    v13 = v70;
    sub_2481439EC(v35, type metadata accessor for LibSystemUserRecord);
    v36 = v57;
    *&v11[v57[5]] = v68;
    v37 = &v11[v36[6]];
    *v37 = v69;
    *(v37 + 1) = v26;
    v38 = &v11[v36[7]];
    v39 = v67;
    *v38 = v66;
    *(v38 + 1) = v29;
    v40 = &v11[v36[8]];
    *v40 = v39;
    *(v40 + 1) = v32;
    *&v11[v36[9]] = v23;
    v41 = &v11[v36[10]];
    *v41 = v65;
    *(v41 + 1) = v34;
    sub_2481439EC(v71, type metadata accessor for LibSystemUserRecord);
    v72 = v13;
    v43 = *(v13 + 16);
    v42 = *(v13 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_24814276C(v42 > 1, v43 + 1, 1);
      v13 = v72;
    }

    *(v13 + 16) = v43 + 1;
    result = sub_24814393C(v11, v13 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v43, type metadata accessor for User);
    a1 = v55;
    v19 = 1 << *(v55 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v14 = v54;
    v44 = *(v54 + 8 * v64);
    if ((v44 & v63) == 0)
    {
      goto LABEL_23;
    }

    if (v62 != *(v55 + 36))
    {
      goto LABEL_24;
    }

    v45 = v44 & (-2 << (v17 & 0x3F));
    if (v45)
    {
      v19 = __clz(__rbit64(v45)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v46 = v64 << 6;
      v47 = v64 + 1;
      v48 = (v52 + 8 * v64);
      while (v47 < (v19 + 63) >> 6)
      {
        v50 = *v48++;
        v49 = v50;
        v46 += 64;
        ++v47;
        if (v50)
        {
          result = sub_248137F40(v17, v62, 0);
          v19 = __clz(__rbit64(v49)) + v46;
          goto LABEL_4;
        }
      }

      result = sub_248137F40(v17, v62, 0);
    }

LABEL_4:
    v18 = v61 + 1;
    v17 = v19;
    if (v61 + 1 == v53)
    {
      return v13;
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
  return result;
}

uint64_t sub_24813A3C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = type metadata accessor for LibSystemGroupRecord(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Group();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2481427B0(0, v12, 0);
    v45 = v46;
    v14 = -1 << *(a3 + 32);
    v43 = a3 + 56;
    v15 = sub_248143BF0();
    v16 = 0;
    v35 = a3 + 64;
    v36 = v12;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v43 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v20 = *(a3 + 36);
      v21 = a3;
      v22 = *(a3 + 48);
      a3 = v38;
      sub_2481437D8(v22 + *(v39 + 72) * v15, v38, type metadata accessor for LibSystemGroupRecord);
      v40(a3);
      v42 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      sub_2481439EC(a3, type metadata accessor for LibSystemGroupRecord);
      v23 = v45;
      v46 = v45;
      v25 = *(v45 + 16);
      v24 = *(v45 + 24);
      a3 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_2481427B0(v24 > 1, v25 + 1, 1);
        v23 = v46;
      }

      *(v23 + 16) = a3;
      v26 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v45 = v23;
      sub_24814393C(v44, v23 + v26 + *(v37 + 72) * v25, type metadata accessor for Group);
      v17 = 1 << *(v21 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v43 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v21;
      if (v20 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v36;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v18 = v36;
        v31 = (v35 + 8 * v19);
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_248137F40(v15, v20, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_248137F40(v15, v20, 0);
      }

LABEL_4:
      ++v16;
      v15 = v17;
      v4 = v42;
      if (v16 == v18)
      {
        return v45;
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
    sub_2481439EC(a3, type metadata accessor for LibSystemGroupRecord);

    __break(1u);
  }

  return result;
}

uint64_t sub_24813A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void (*a6)(char *, char *), uint64_t (*a7)(void))
{
  v11 = a4(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  a5(a1);
  swift_beginAccess();
  a6(v17, v15);
  swift_endAccess();
  return sub_2481439EC(v17, a7);
}

uint64_t sub_24813A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_24813A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = sub_248143B30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DarwinDirectoryFilter(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_2481437D8(a1, v12, type metadata accessor for DarwinDirectoryFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v12;
      v19 = v12[1];

      sub_24813B3B4(v18, v19, v13);
    }

    else
    {
      (*(v5 + 32))(v8, v12, v4);
      v34 = sub_248143B20();
      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      v40 = v27;
      v41 = v28;
      v42 = v29;
      v47 = sub_248143AD4;
      v48 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24813A940;
      v46 = &block_descriptor_23;
      v30 = _Block_copy(&aBlock);

      DarwinDirectoryRecordStoreApplyWithUUIDFilter(1, &v34, v30);
      _Block_release(v30);
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v20 = *v12;
    v47 = sub_248143AD4;
    v48 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_24813A940;
    v46 = &block_descriptor_26;
    v21 = _Block_copy(&aBlock);

    DarwinDirectoryRecordStoreApplyWithIDFilter(1, v20, v21);
    _Block_release(v21);
  }

  swift_beginAccess();
  sub_248138064(v15, a2, &qword_27EE8AE78, &qword_248144430);

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24813ADB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = sub_248143B30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DarwinDirectoryFilter(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for LibSystemUserRecord(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_2481437D8(a1, v12, type metadata accessor for DarwinDirectoryFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v12;
      v19 = v12[1];

      sub_24813B558(v18, v19, v13);
    }

    else
    {
      (*(v5 + 32))(v8, v12, v4);
      v34 = sub_248143B20();
      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      v40 = v27;
      v41 = v28;
      v42 = v29;
      v47 = sub_248143ADC;
      v48 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24813A940;
      v46 = &block_descriptor_46;
      v30 = _Block_copy(&aBlock);

      DarwinDirectoryRecordStoreApplyWithUUIDFilter(0, &v34, v30);
      _Block_release(v30);
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v20 = *v12;
    v47 = sub_248143ADC;
    v48 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_24813A940;
    v46 = &block_descriptor_49;
    v21 = _Block_copy(&aBlock);

    DarwinDirectoryRecordStoreApplyWithIDFilter(0, v20, v21);
    _Block_release(v21);
  }

  swift_beginAccess();
  sub_248138064(v15, a2, &qword_27EE8AED0, &unk_248144750);

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24813B1C8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  v17 = swift_projectBox();
  a6(a1);
  v18 = a7(0);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  swift_beginAccess();
  result = sub_248143844(v16, v17, a4, a5);
  *a2 = 1;
  return result;
}

void sub_24813B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8[5] = a2;
  v8[3] = a4;
  v8[4] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24813A940;
  v7 = _Block_copy(v8);

  DarwinDirectoryRecordStoreApplyWithNameFilter(a5, a1, v7);
  _Block_release(v7);
}

uint64_t sub_24813B3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = sub_2481436F8;
    v12 = a3;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = sub_24813A940;
    v10 = &block_descriptor_29;
    v4 = _Block_copy(&v7);

    v5 = v13;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_248143C90();
  }

  v3 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v11 = sub_248143AD4;
  v12 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_24813A940;
  v10 = &block_descriptor_33;
  v4 = _Block_copy(&v7);

  v5 = (v3 + 32);
LABEL_6:
  DarwinDirectoryRecordStoreApplyWithNameFilter(1, v5, v4);
  _Block_release(v4);
}

uint64_t sub_24813B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = sub_2481438E8;
    v12 = a3;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = sub_24813A940;
    v10 = &block_descriptor_52;
    v4 = _Block_copy(&v7);

    v5 = v13;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_248143C90();
  }

  v3 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v11 = sub_248143ADC;
  v12 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_24813A940;
  v10 = &block_descriptor_56;
  v4 = _Block_copy(&v7);

  v5 = (v3 + 32);
LABEL_6:
  DarwinDirectoryRecordStoreApplyWithNameFilter(0, v5, v4);
  _Block_release(v4);
}

uint64_t static User.allUsers.getter()
{
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = (v0 + 16);
  aBlock[4] = sub_24813C9B8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24813A940;
  aBlock[3] = &block_descriptor_1;
  v2 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  v4 = sub_248139EF8(v3);

  v5 = sub_2481429D0(v4);

  return v5;
}

uint64_t static User.mutableUsers.getter()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for LibSystemUserRecord(0);
  v34 = *(v0 - 8);
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE8AE40 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84FA0];
    v5 = (v4 + 16);
    aBlock[4] = sub_248143AD0;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24813A940;
    aBlock[3] = &block_descriptor_5;
    v6 = _Block_copy(aBlock);

    DarwinDirectoryRecordStoreApply();
    _Block_release(v6);
    swift_beginAccess();
    v7 = *v5;

    v9 = *(v7 + 32);
    v10 = ((1 << v9) + 63) >> 6;
    if ((v9 & 0x3Fu) <= 0xD)
    {
      goto LABEL_3;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_3:
    v31 = &v31;
    v32 = v10;
    MEMORY[0x28223BE20](v8);
    v12 = &v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v33 = 0;
    v13 = 0;
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v21 = v18 | (v13 << 6);
      sub_2481437D8(*(v7 + 48) + *(v34 + 72) * v21, v3, type metadata accessor for LibSystemUserRecord);
      v22 = v3[*(v0 + 44)];
      sub_2481439EC(v3, type metadata accessor for LibSystemUserRecord);
      if (v22 == 1)
      {
        *&v12[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_17:
          v24 = sub_2481425A4(v12, v32, v33, v7);
          goto LABEL_18;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v29 = swift_slowAlloc();
  v30 = sub_248141E6C(v29, v10, v7, sub_248139930, 0, sub_2481330DC);

  MEMORY[0x24C1C83B0](v29, -1, -1);
  v24 = v30;
LABEL_18:
  v25 = sub_248139EF8(v24);

  v26 = sub_2481429D0(v25);

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t static User.with(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DarwinDirectoryFilter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-1] - v10;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v16[3] = &type metadata for ProviderSideEffects;
  v16[4] = &off_285A4B4B8;
  v16[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v16[0] + 16);
  v12 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v13 = sub_248143B30();
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_24813ADB4(v7, v11);
  sub_2481439EC(v7, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v11, a2);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static User.with(uid:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DarwinDirectoryFilter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15[-1] - v10;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v15[3] = &type metadata for ProviderSideEffects;
  v15[4] = &off_285A4B4B8;
  v15[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v15[0] + 16);
  v12 = __swift_project_boxed_opaque_existential_1(v15, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  sub_24813ADB4(v7, v11);
  sub_2481439EC(v7, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v11, a2);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static User.with(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DarwinDirectoryFilter(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AED0, &unk_248144750);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17[-1] - v12;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v17[3] = &type metadata for ProviderSideEffects;
  v17[4] = &off_285A4B4B8;
  v17[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v17[0] + 16);
  v14 = __swift_project_boxed_opaque_existential_1(v17, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_24813ADB4(v9, v13);
  sub_2481439EC(v9, type metadata accessor for DarwinDirectoryFilter);
  sub_248139678(v13, a3);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static Group.allGroups.getter()
{
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v10[3] = &type metadata for ProviderSideEffects;
  v10[4] = &off_285A4B4B8;
  v10[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v10[0] + 16);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = (v0 + 16);
  aBlock[4] = sub_248142B98;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24813A940;
  aBlock[3] = &block_descriptor_17;
  v2 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  MEMORY[0x28223BE20](v4);
  v8[2] = v10;
  v5 = sub_24813A3C4(sub_248138000, v8, v3);

  v6 = sub_248142C04(v5);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

uint64_t static Group.with(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DarwinDirectoryFilter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v16[3] = &type metadata for ProviderSideEffects;
  v16[4] = &off_285A4B4B8;
  v16[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v16[0] + 16);
  v12 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v13 = sub_248143B30();
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_24813A9A0(v7, v11);
  sub_2481439EC(v7, type metadata accessor for DarwinDirectoryFilter);
  sub_248133BF4(v16, v15);
  sub_2481327D8(v11, v15, a2);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static Group.with(gid:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DarwinDirectoryFilter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v14 - v10;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v15[3] = &type metadata for ProviderSideEffects;
  v15[4] = &off_285A4B4B8;
  v15[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v15[0] + 16);
  v12 = __swift_project_boxed_opaque_existential_1(v15, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  sub_24813A9A0(v7, v11);
  sub_2481439EC(v7, type metadata accessor for DarwinDirectoryFilter);
  sub_248133BF4(v15, v14);
  sub_2481327D8(v11, v14, a2);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Group.with(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DarwinDirectoryFilter(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AE78, &qword_248144430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v16 - v12;
  if (qword_27EE8AE40 != -1)
  {
    swift_once();
  }

  v17[3] = &type metadata for ProviderSideEffects;
  v17[4] = &off_285A4B4B8;
  v17[0] = swift_allocObject();
  sub_248137F84(&unk_27EE8AF40, v17[0] + 16);
  v14 = __swift_project_boxed_opaque_existential_1(v17, &type metadata for ProviderSideEffects);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_24813A9A0(v9, v13);
  sub_2481439EC(v9, type metadata accessor for DarwinDirectoryFilter);
  sub_248133BF4(v17, v16);
  sub_2481327D8(v13, v16, a3);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24813C980()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24813CA3C(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v44 = &v42[-v10];
  v45 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_248143D40();
  v13 = *a2;
  sub_248143D70();
  v14 = *(a2 + 16);
  v56 = *(a2 + 8);
  sub_248143B70();
  v15 = v4[6];
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  v54 = v15;
  sub_248143B40();
  v16 = (a2 + v4[7]);
  v17 = *v16;
  v52 = v16[1];
  v53 = v17;
  sub_248143B70();
  v18 = (a2 + v4[8]);
  v19 = *v18;
  v50 = v18[1];
  v51 = v19;
  sub_248143B70();
  v49 = *(a2 + v4[9]);
  sub_248143D70();
  v20 = (a2 + v4[10]);
  v21 = *v20;
  v47 = v20[1];
  v48 = v21;
  sub_248143B70();
  v22 = v4[11];
  v55 = a2;
  v43 = *(a2 + v22);
  sub_248143D60();
  v23 = sub_248143D80();
  v24 = -1 << *(v11 + 32);
  v25 = v23 & ~v24;
  if ((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v26 = ~v24;
    v27 = *(v5 + 72);
    while (1)
    {
      sub_2481437D8(*(v11 + 48) + v27 * v25, v9, type metadata accessor for LibSystemUserRecord);
      if (*v9 == v13)
      {
        v28 = *(v9 + 1) == v56 && *(v9 + 2) == v14;
        if (v28 || (sub_248143D20() & 1) != 0)
        {
          v29 = &v9[v4[6]];
          if (sub_248143AF0())
          {
            v30 = &v9[v4[7]];
            v31 = *v30 == v53 && v30[1] == v52;
            if (v31 || (sub_248143D20() & 1) != 0)
            {
              v32 = &v9[v4[8]];
              v33 = *v32 == v51 && v32[1] == v50;
              if (v33 || (sub_248143D20()) && *&v9[v4[9]] == v49)
              {
                v34 = &v9[v4[10]];
                v35 = *v34 == v48 && v34[1] == v47;
                if (v35 || (sub_248143D20()) && v43 == v9[v4[11]])
                {
                  break;
                }
              }
            }
          }
        }
      }

      sub_2481439EC(v9, type metadata accessor for LibSystemUserRecord);
      v25 = (v25 + 1) & v26;
      if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_2481439EC(v9, type metadata accessor for LibSystemUserRecord);
    sub_2481439EC(v55, type metadata accessor for LibSystemUserRecord);
    sub_2481437D8(*(v11 + 48) + v27 * v25, v46, type metadata accessor for LibSystemUserRecord);
    return 0;
  }

  else
  {
LABEL_29:
    v36 = v45;
    v37 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v55;
    v40 = v44;
    sub_2481437D8(v55, v44, type metadata accessor for LibSystemUserRecord);
    v57 = *v36;
    sub_24813F224(v40, v25, isUniquelyReferenced_nonNull_native);
    *v36 = v57;
    sub_24814393C(v39, v46, type metadata accessor for LibSystemUserRecord);
    return 1;
  }
}

uint64_t sub_24813CEA4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v4 = type metadata accessor for User();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v40 - v10;
  v41 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_248143D40();
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v13 = *(a2 + v4[5]);
  sub_248143D70();
  v14 = (a2 + v4[6]);
  v15 = *v14;
  v50 = v14[1];
  v51 = v15;
  sub_248143B70();
  v16 = (a2 + v4[7]);
  v17 = *v16;
  v48 = v16[1];
  v49 = v17;
  sub_248143B70();
  v18 = (a2 + v4[8]);
  v19 = *v18;
  v46 = v18[1];
  v47 = v19;
  sub_248143B70();
  v45 = *(a2 + v4[9]);
  sub_248143D70();
  v20 = (a2 + v4[10]);
  v21 = *v20;
  v43 = v20[1];
  v44 = v21;
  sub_248143B70();
  v22 = sub_248143D80();
  v23 = -1 << *(v11 + 32);
  v24 = v22 & ~v23;
  if ((*(v11 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v25 = ~v23;
    v26 = *(v5 + 72);
    while (1)
    {
      sub_2481437D8(*(v11 + 48) + v26 * v24, v9, type metadata accessor for User);
      if ((sub_248143AF0() & 1) != 0 && *&v9[v4[5]] == v13)
      {
        v27 = &v9[v4[6]];
        v28 = *v27 == v51 && *(v27 + 1) == v50;
        if (v28 || (sub_248143D20() & 1) != 0)
        {
          v29 = &v9[v4[7]];
          v30 = *v29 == v49 && *(v29 + 1) == v48;
          if (v30 || (sub_248143D20() & 1) != 0)
          {
            v31 = &v9[v4[8]];
            v32 = *v31 == v47 && *(v31 + 1) == v46;
            if (v32 || (sub_248143D20()) && *&v9[v4[9]] == v45)
            {
              v33 = &v9[v4[10]];
              v34 = *v33 == v44 && *(v33 + 1) == v43;
              if (v34 || (sub_248143D20() & 1) != 0)
              {
                break;
              }
            }
          }
        }
      }

      sub_2481439EC(v9, type metadata accessor for User);
      v24 = (v24 + 1) & v25;
      if (((*(v11 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    sub_2481439EC(v9, type metadata accessor for User);
    sub_2481439EC(a2, type metadata accessor for User);
    sub_2481437D8(*(v11 + 48) + v26 * v24, v42, type metadata accessor for User);
    return 0;
  }

  else
  {
LABEL_28:
    v36 = v41;
    v37 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v40;
    sub_2481437D8(a2, v40, type metadata accessor for User);
    v52 = *v36;
    sub_24813F648(v39, v24, isUniquelyReferenced_nonNull_native);
    *v36 = v52;
    sub_24814393C(a2, v42, type metadata accessor for User);
    return 1;
  }
}

uint64_t sub_24813D2C4(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = (&v31 - v10);
  v33 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_248143D40();
  v13 = *a2;
  sub_248143D70();
  v14 = *(a2 + 16);
  v39 = *(a2 + 8);
  sub_248143B70();
  v15 = v4[6];
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  v37 = v15;
  sub_248143B40();
  v36 = *(a2 + v4[7]);
  sub_2481334A8(v40, v36);
  v16 = v4;
  v17 = v4[8];
  v38 = a2;
  v35 = *(a2 + v17);
  sub_248143D60();
  v18 = sub_248143D80();
  v19 = -1 << *(v11 + 32);
  v20 = v18 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_2481437D8(*(v11 + 48) + v22 * v20, v9, type metadata accessor for LibSystemGroupRecord);
      if (*v9 == v13)
      {
        v23 = *(v9 + 1) == v39 && *(v9 + 2) == v14;
        if (v23 || (sub_248143D20() & 1) != 0)
        {
          v24 = &v9[v16[6]];
          if ((sub_248143AF0() & 1) != 0 && (sub_2481340F8(*&v9[v16[7]], v36) & 1) != 0 && v35 == v9[v16[8]])
          {
            break;
          }
        }
      }

      sub_2481439EC(v9, type metadata accessor for LibSystemGroupRecord);
      v20 = (v20 + 1) & v21;
      if (((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_2481439EC(v9, type metadata accessor for LibSystemGroupRecord);
    sub_2481439EC(v38, type metadata accessor for LibSystemGroupRecord);
    sub_2481437D8(*(v11 + 48) + v22 * v20, v34, type metadata accessor for LibSystemGroupRecord);
    return 0;
  }

  else
  {
LABEL_14:
    v26 = v33;
    v27 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v38;
    v30 = v32;
    sub_2481437D8(v38, v32, type metadata accessor for LibSystemGroupRecord);
    *&v40[0] = *v26;
    sub_24813FA44(v30, v20, isUniquelyReferenced_nonNull_native);
    *v26 = *&v40[0];
    sub_24814393C(v29, v34, type metadata accessor for LibSystemGroupRecord);
    return 1;
  }
}

uint64_t sub_24813D650(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for Group();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  v30 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_248143D40();
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v13 = *(a2 + v4[5]);
  sub_248143D70();
  v14 = (a2 + v4[6]);
  v15 = *v14;
  v33 = v14[1];
  v34 = v15;
  sub_248143B70();
  v32 = *(a2 + v4[7]);
  sub_2481331FC(v35, v32);
  v16 = sub_248143D80();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_2481437D8(*(v11 + 48) + v20 * v18, v9, type metadata accessor for Group);
      if ((sub_248143AF0() & 1) != 0 && *&v9[v4[5]] == v13)
      {
        v21 = &v9[v4[6]];
        v22 = *v21 == v34 && *(v21 + 1) == v33;
        if (v22 || (sub_248143D20()) && (sub_2481342B0(*&v9[v4[7]], v32))
        {
          break;
        }
      }

      sub_2481439EC(v9, type metadata accessor for Group);
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_2481439EC(v9, type metadata accessor for Group);
    sub_2481439EC(a2, type metadata accessor for Group);
    sub_2481437D8(*(v11 + 48) + v20 * v18, v31, type metadata accessor for Group);
    return 0;
  }

  else
  {
LABEL_13:
    v23 = v30;
    v24 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v29;
    sub_2481437D8(a2, v29, type metadata accessor for Group);
    *&v35[0] = *v23;
    sub_24813FD9C(v26, v18, isUniquelyReferenced_nonNull_native);
    *v23 = *&v35[0];
    sub_24814393C(a2, v31, type metadata accessor for Group);
    return 1;
  }
}

uint64_t sub_24813D9AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_248143D40();
  sub_248143B70();
  v9 = sub_248143D80();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_248143D20() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2481400D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24813DAFC(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_248143C30();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_248143C20();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_24813DD60(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_24813EDD8(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_24813F1A0(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_248143BC0();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_248143BD0();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_248140254(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_24813DD60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_248143C70();
    v22 = v8;
    sub_248143C10();
    if (sub_248143C40())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_24813EDD8(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_248143BC0();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_248143C40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_24813DF58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8AFB0, &qword_2481447C0);
  result = sub_248143C60();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_24813EFF8(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_24814393C(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for LibSystemUserRecord);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_24813E160(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for User();
  v50 = *(v4 - 1);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF78, &qword_248144790);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v48 = v2;
    v49 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v51 = *(v50 + 72);
      sub_24814393C(v23 + v51 * (v20 | (v12 << 6)), v7, type metadata accessor for User);
      v24 = *(v11 + 40);
      sub_248143D40();
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      v25 = *&v7[v4[5]];
      sub_248143D70();
      v26 = &v7[v4[6]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_248143B70();
      v29 = &v7[v4[7]];
      v30 = *v29;
      v31 = *(v29 + 1);
      sub_248143B70();
      v32 = &v7[v4[8]];
      v33 = *v32;
      v34 = *(v32 + 1);
      sub_248143B70();
      v35 = *&v7[v4[9]];
      sub_248143D70();
      v36 = &v7[v4[10]];
      v37 = *v36;
      v38 = *(v36 + 1);
      sub_248143B70();
      result = sub_248143D80();
      v39 = -1 << *(v11 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v18 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v8 = v49;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v18 + 8 * v41);
          if (v45 != -1)
          {
            v19 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v40) & ~*(v18 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v8 = v49;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24814393C(v7, *(v11 + 48) + v19 * v51, type metadata accessor for User);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v46 = 1 << *(v8 + 32);
    if (v46 >= 64)
    {
      bzero(v13, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v46;
    }

    v2 = v48;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_24813E530(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF88, &qword_2481447A0);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
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
    v36 = v2;
    v37 = result + 56;
    for (i = v8; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v8 + 48);
      v41 = *(v39 + 72);
      sub_24814393C(v21 + v41 * (v18 | (v12 << 6)), v7, type metadata accessor for LibSystemGroupRecord);
      v22 = *(v11 + 40);
      sub_248143D40();
      v23 = *v7;
      v24 = v11;
      sub_248143D70();
      v25 = *(v7 + 1);
      v26 = *(v7 + 2);
      sub_248143B70();
      v27 = v40;
      v28 = *(v40 + 24);
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      sub_2481334A8(v42, *(v7 + *(v27 + 28)));
      v29 = *(v7 + *(v27 + 32));
      sub_248143D60();
      sub_248143D80();
      v11 = v24;
      v30 = -1 << *(v24 + 32);
      v31 = v37;
      v32 = sub_248143C00();
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v33 = *(v24 + 48) + v32 * v41;
      v8 = i;
      result = sub_24814393C(v7, v33, type metadata accessor for LibSystemGroupRecord);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_24813E860(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Group();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF98, &qword_2481447A8);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
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
    v34 = v2;
    v35 = result + 56;
    for (i = v8; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v8 + 48);
      v22 = *(v37 + 72);
      sub_24814393C(v21 + v22 * (v18 | (v12 << 6)), v7, type metadata accessor for Group);
      v23 = *(v11 + 40);
      sub_248143D40();
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      v24 = v38;
      v25 = *&v7[*(v38 + 20)];
      sub_248143D70();
      v26 = &v7[*(v24 + 24)];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_248143B70();
      sub_2481331FC(v39, *&v7[*(v24 + 28)]);
      sub_248143D80();
      v29 = -1 << *(v11 + 32);
      v30 = v35;
      v31 = sub_248143C00();
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v32 = *(v11 + 48) + v31 * v22;
      v8 = i;
      result = sub_24814393C(v7, v32, type metadata accessor for Group);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_24813EB78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF80, &qword_248144798);
  result = sub_248143C60();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_248143D40();
      sub_248143B70();
      result = sub_248143D80();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24813EDD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_248143C60();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_248143BC0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_24813EFF8(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_248143D40();
  v5 = *a1;
  sub_248143D70();
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  sub_248143B70();
  v8 = type metadata accessor for LibSystemUserRecord(0);
  v9 = v8[6];
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v10 = (a1 + v8[7]);
  v11 = *v10;
  v12 = v10[1];
  sub_248143B70();
  v13 = (a1 + v8[8]);
  v14 = *v13;
  v15 = v13[1];
  sub_248143B70();
  v16 = *(a1 + v8[9]);
  sub_248143D70();
  v17 = (a1 + v8[10]);
  v18 = *v17;
  v19 = v17[1];
  sub_248143B70();
  v20 = *(a1 + v8[11]);
  sub_248143D60();
  sub_248143D80();
  v21 = -1 << *(a2 + 32);
  v22 = sub_248143C00();
  *(a2 + 56 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
  result = sub_24814393C(a1, *(a2 + 48) + *(*(v8 - 1) + 72) * v22, type metadata accessor for LibSystemUserRecord);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_24813F1A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_248143BC0();
  v5 = -1 << *(a2 + 32);
  result = sub_248143C00();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24813F224(_DWORD *a1, unint64_t a2, char a3)
{
  v53 = a1;
  v6 = type metadata accessor for LibSystemUserRecord(0);
  v49 = *(v6 - 1);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v48 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_24813DF58(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2481403D8();
      goto LABEL_36;
    }

    sub_248140EA4(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_248143D40();
  v14 = v53;
  v15 = *v53;
  sub_248143D70();
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  sub_248143B70();
  v18 = v6[6];
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  v52 = v18;
  sub_248143B40();
  v19 = (v14 + v6[7]);
  v20 = *v19;
  v50 = v19[1];
  v51 = v20;
  sub_248143B70();
  v21 = (v14 + v6[8]);
  v22 = *v21;
  v46 = v21[1];
  v47 = v22;
  sub_248143B70();
  v45 = *(v14 + v6[9]);
  sub_248143D70();
  v23 = (v14 + v6[10]);
  v24 = *v23;
  v43 = v23[1];
  v44 = v24;
  sub_248143B70();
  HIDWORD(v42) = *(v14 + v6[11]);
  sub_248143D60();
  v25 = sub_248143D80();
  v26 = -1 << *(v12 + 32);
  a2 = v25 & ~v26;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v26;
    v28 = *(v49 + 72);
    do
    {
      sub_2481437D8(*(v12 + 48) + v28 * a2, v9, type metadata accessor for LibSystemUserRecord);
      if (*v9 == v15)
      {
        v29 = *(v9 + 1) == v16 && *(v9 + 2) == v17;
        if (v29 || (sub_248143D20() & 1) != 0)
        {
          v30 = &v9[v6[6]];
          if (sub_248143AF0())
          {
            v31 = &v9[v6[7]];
            v32 = *v31 == v51 && *(v31 + 1) == v50;
            if (v32 || (sub_248143D20() & 1) != 0)
            {
              v33 = &v9[v6[8]];
              v34 = *v33 == v47 && *(v33 + 1) == v46;
              if (v34 || (sub_248143D20()) && *&v9[v6[9]] == v45)
              {
                v35 = &v9[v6[10]];
                v36 = *v35 == v44 && *(v35 + 1) == v43;
                if (v36 || (sub_248143D20()) && HIDWORD(v42) == v9[v6[11]])
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }
      }

      sub_2481439EC(v9, type metadata accessor for LibSystemUserRecord);
      a2 = (a2 + 1) & v27;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v37 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24814393C(v53, *(v37 + 48) + *(v49 + 72) * a2, type metadata accessor for LibSystemUserRecord);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v37 + 16) = v41;
    return result;
  }

  __break(1u);
LABEL_39:
  sub_2481439EC(v9, type metadata accessor for LibSystemUserRecord);
  result = sub_248143D30();
  __break(1u);
  return result;
}

uint64_t sub_24813F648(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for User();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v47 = v8;
  v48 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    sub_24813E160(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2481405E4();
      goto LABEL_35;
    }

    sub_248141070(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_248143D40();
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v16 = *(a1 + v7[5]);
  sub_248143D70();
  v17 = (a1 + v7[6]);
  v18 = v17[1];
  v51 = *v17;
  sub_248143B70();
  v19 = (a1 + v7[7]);
  v20 = *v19;
  v49 = v19[1];
  v50 = v20;
  sub_248143B70();
  v21 = (a1 + v7[8]);
  v22 = *v21;
  v45 = v21[1];
  v46 = v22;
  sub_248143B70();
  v44 = *(a1 + v7[9]);
  sub_248143D70();
  v23 = (a1 + v7[10]);
  v24 = *v23;
  v42 = v23[1];
  v43 = v24;
  sub_248143B70();
  v25 = sub_248143D80();
  v26 = -1 << *(v14 + 32);
  a2 = v25 & ~v26;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v26;
    v28 = *(v8 + 72);
    while (1)
    {
      sub_2481437D8(*(v14 + 48) + v28 * a2, v11, type metadata accessor for User);
      if ((sub_248143AF0() & 1) != 0 && *&v11[v7[5]] == v16)
      {
        v29 = &v11[v7[6]];
        v30 = *v29 == v51 && *(v29 + 1) == v18;
        if (v30 || (sub_248143D20() & 1) != 0)
        {
          v31 = &v11[v7[7]];
          v32 = *v31 == v50 && *(v31 + 1) == v49;
          if (v32 || (sub_248143D20() & 1) != 0)
          {
            v33 = &v11[v7[8]];
            v34 = *v33 == v46 && *(v33 + 1) == v45;
            if (v34 || (sub_248143D20()) && *&v11[v7[9]] == v44)
            {
              v35 = &v11[v7[10]];
              v36 = *v35 == v43 && *(v35 + 1) == v42;
              if (v36 || (sub_248143D20() & 1) != 0)
              {
                break;
              }
            }
          }
        }
      }

      sub_2481439EC(v11, type metadata accessor for User);
      a2 = (a2 + 1) & v27;
      if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_2481439EC(v11, type metadata accessor for User);
    sub_248143D30();
    __break(1u);
  }

LABEL_35:
  v37 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24814393C(a1, *(v37 + 48) + *(v47 + 72) * a2, type metadata accessor for User);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

uint64_t sub_24813FA44(_DWORD *a1, unint64_t a2, char a3)
{
  v36 = a1;
  v6 = type metadata accessor for LibSystemGroupRecord(0);
  v34 = *(v6 - 1);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v33 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_24813E530(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2481407F0();
      goto LABEL_21;
    }

    sub_248141410(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_248143D40();
  v14 = v36;
  v15 = *v36;
  sub_248143D70();
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  sub_248143B70();
  v18 = v6[6];
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  v35 = v18;
  sub_248143B40();
  v32 = *(v14 + v6[7]);
  sub_2481334A8(v37, v32);
  v31 = *(v14 + v6[8]);
  sub_248143D60();
  v19 = sub_248143D80();
  v20 = -1 << *(v12 + 32);
  a2 = v19 & ~v20;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v34 + 72);
    while (1)
    {
      sub_2481437D8(*(v12 + 48) + v22 * a2, v9, type metadata accessor for LibSystemGroupRecord);
      if (*v9 == v15)
      {
        v23 = *(v9 + 1) == v16 && *(v9 + 2) == v17;
        if (v23 || (sub_248143D20() & 1) != 0)
        {
          v24 = &v9[v6[6]];
          if ((sub_248143AF0() & 1) != 0 && (sub_2481340F8(*&v9[v6[7]], v32) & 1) != 0 && v31 == v9[v6[8]])
          {
            break;
          }
        }
      }

      sub_2481439EC(v9, type metadata accessor for LibSystemGroupRecord);
      a2 = (a2 + 1) & v21;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2481439EC(v9, type metadata accessor for LibSystemGroupRecord);
    sub_248143D30();
    __break(1u);
  }

LABEL_21:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24814393C(v36, *(v25 + 48) + *(v34 + 72) * a2, type metadata accessor for LibSystemGroupRecord);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_24813FD9C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Group();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v32 = v8;
  v33 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_24813E860(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2481409FC();
      goto LABEL_20;
    }

    sub_24814170C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_248143D40();
  sub_248143B30();
  sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
  sub_248143B40();
  v16 = *(a1 + v7[5]);
  sub_248143D70();
  v17 = (a1 + v7[6]);
  v18 = v17[1];
  v34 = *v17;
  sub_248143B70();
  v31 = *(a1 + v7[7]);
  sub_2481331FC(v35, v31);
  v19 = sub_248143D80();
  v20 = -1 << *(v14 + 32);
  a2 = v19 & ~v20;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v8 + 72);
    do
    {
      sub_2481437D8(*(v14 + 48) + v22 * a2, v11, type metadata accessor for Group);
      if ((sub_248143AF0() & 1) != 0 && *&v11[v7[5]] == v16)
      {
        v23 = &v11[v7[6]];
        v24 = *v23 == v34 && *(v23 + 1) == v18;
        if (v24 || (sub_248143D20()) && (sub_2481342B0(*&v11[v7[7]], v31))
        {
          goto LABEL_23;
        }
      }

      sub_2481439EC(v11, type metadata accessor for Group);
      a2 = (a2 + 1) & v21;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_20:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24814393C(a1, *(v25 + 48) + *(v32 + 72) * a2, type metadata accessor for Group);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_23:
  sub_2481439EC(v11, type metadata accessor for Group);
  result = sub_248143D30();
  __break(1u);
  return result;
}

uint64_t sub_2481400D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24813EB78(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_248140C08();
      goto LABEL_16;
    }

    sub_2481419FC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_248143D40();
  sub_248143B70();
  result = sub_248143D80();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_248143D20();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_248143D30();
  __break(1u);
  return result;
}

void sub_248140254(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_24813EDD8(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_248140D64(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_248141C34(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_248143BC0();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_248143BD0();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_248143D30();
  __break(1u);
}

void *sub_2481403D8()
{
  v1 = v0;
  v2 = type metadata accessor for LibSystemUserRecord(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8AFB0, &qword_2481447C0);
  v7 = *v0;
  v8 = sub_248143C50();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2481437D8(*(v7 + 48) + v22, v6, type metadata accessor for LibSystemUserRecord);
        result = sub_24814393C(v6, *(v9 + 48) + v22, type metadata accessor for LibSystemUserRecord);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_2481405E4()
{
  v1 = v0;
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF78, &qword_248144790);
  v7 = *v0;
  v8 = sub_248143C50();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2481437D8(*(v7 + 48) + v22, v6, type metadata accessor for User);
        result = sub_24814393C(v6, *(v9 + 48) + v22, type metadata accessor for User);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_2481407F0()
{
  v1 = v0;
  v2 = type metadata accessor for LibSystemGroupRecord(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF88, &qword_2481447A0);
  v7 = *v0;
  v8 = sub_248143C50();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2481437D8(*(v7 + 48) + v22, v6, type metadata accessor for LibSystemGroupRecord);
        result = sub_24814393C(v6, *(v9 + 48) + v22, type metadata accessor for LibSystemGroupRecord);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_2481409FC()
{
  v1 = v0;
  v2 = type metadata accessor for Group();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF98, &qword_2481447A8);
  v7 = *v0;
  v8 = sub_248143C50();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2481437D8(*(v7 + 48) + v22, v6, type metadata accessor for Group);
        result = sub_24814393C(v6, *(v9 + 48) + v22, type metadata accessor for Group);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_248140C08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF80, &qword_248144798);
  v2 = *v0;
  v3 = sub_248143C50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_248140D64(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_248143C50();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_248140EA4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8AFB0, &qword_2481447C0);
  result = sub_248143C60();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_24813EFF8(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_2481437D8(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for LibSystemUserRecord);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_248141070(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for User();
  v49 = *(v4 - 1);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF78, &qword_248144790);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v47 = v2;
    v48 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v50 = *(v49 + 72);
      sub_2481437D8(v23 + v50 * (v20 | (v12 << 6)), v7, type metadata accessor for User);
      v24 = *(v11 + 40);
      sub_248143D40();
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      v25 = *&v7[v4[5]];
      sub_248143D70();
      v26 = &v7[v4[6]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_248143B70();
      v29 = &v7[v4[7]];
      v30 = *v29;
      v31 = *(v29 + 1);
      sub_248143B70();
      v32 = &v7[v4[8]];
      v33 = *v32;
      v34 = *(v32 + 1);
      sub_248143B70();
      v35 = *&v7[v4[9]];
      sub_248143D70();
      v36 = &v7[v4[10]];
      v37 = *v36;
      v38 = *(v36 + 1);
      sub_248143B70();
      result = sub_248143D80();
      v39 = -1 << *(v11 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v18 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v8 = v48;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v18 + 8 * v41);
          if (v45 != -1)
          {
            v19 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v40) & ~*(v18 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v8 = v48;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24814393C(v7, *(v11 + 48) + v19 * v50, type metadata accessor for User);
      ++*(v11 + 16);
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

        v2 = v47;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_248141410(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF88, &qword_2481447A0);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
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
    v35 = result + 56;
    v36 = v8;
    for (i = v38; v16; ++*(v11 + 16))
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = *(v8 + 48);
      v23 = *(v37 + 72);
      sub_2481437D8(v22 + v23 * (v19 | (v12 << 6)), v7, type metadata accessor for LibSystemGroupRecord);
      v24 = *(v11 + 40);
      sub_248143D40();
      v25 = *v7;
      sub_248143D70();
      v26 = *(v7 + 1);
      v27 = *(v7 + 2);
      sub_248143B70();
      v28 = i[6];
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      sub_2481334A8(v39, *(v7 + i[7]));
      v29 = *(v7 + i[8]);
      sub_248143D60();
      sub_248143D80();
      v30 = -1 << *(v11 + 32);
      v31 = v35;
      v32 = sub_248143C00();
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v33 = *(v11 + 48) + v32 * v23;
      v8 = v36;
      result = sub_24814393C(v7, v33, type metadata accessor for LibSystemGroupRecord);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v34;
        goto LABEL_18;
      }

      v21 = *(v13 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_24814170C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Group();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF98, &qword_2481447A8);
  result = sub_248143C60();
  v11 = result;
  if (*(v8 + 16))
  {
    v31 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v33 + 72);
      sub_2481437D8(*(v8 + 48) + v20 * (v17 | (v12 << 6)), v7, type metadata accessor for Group);
      v21 = *(v11 + 40);
      sub_248143D40();
      sub_248143B30();
      sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
      sub_248143B40();
      v22 = v34;
      v23 = *&v7[*(v34 + 20)];
      sub_248143D70();
      v24 = &v7[*(v22 + 24)];
      v25 = *v24;
      v26 = *(v24 + 1);
      sub_248143B70();
      sub_2481331FC(v35, *&v7[*(v22 + 28)]);
      sub_248143D80();
      v27 = -1 << *(v11 + 32);
      v28 = i;
      v29 = sub_248143C00();
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = sub_24814393C(v7, *(v11 + 48) + v29 * v20, type metadata accessor for Group);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v31;
        goto LABEL_18;
      }

      v19 = *(v8 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2481419FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF80, &qword_248144798);
  result = sub_248143C60();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_248143D40();

      sub_248143B70();
      result = sub_248143D80();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_248141C34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_248143C60();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_248143BC0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

void *sub_248141E6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_248141F0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for User();
  v47 = *(v8 - 1);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF78, &qword_248144790);
  result = sub_248143C80();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v46 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v48 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v49 = *(v47 + 72);
    sub_2481437D8(v20 + v49 * (v17 | (v15 << 6)), v11, type metadata accessor for User);
    v21 = *(v12 + 40);
    sub_248143D40();
    sub_248143B30();
    sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
    sub_248143B40();
    v22 = *&v11[v8[5]];
    sub_248143D70();
    v23 = &v11[v8[6]];
    v24 = *v23;
    v25 = *(v23 + 1);
    sub_248143B70();
    v26 = &v11[v8[7]];
    v27 = *v26;
    v28 = *(v26 + 1);
    sub_248143B70();
    v29 = &v11[v8[8]];
    v30 = *v29;
    v31 = *(v29 + 1);
    sub_248143B70();
    v32 = *&v11[v8[9]];
    sub_248143D70();
    v33 = &v11[v8[10]];
    v34 = *v33;
    v35 = *(v33 + 1);
    sub_248143B70();
    result = sub_248143D80();
    v36 = -1 << *(v12 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v16 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a4 = v46;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v16 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v16 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a4 = v46;
LABEL_26:
    *(v16 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    result = sub_24814393C(v11, *(v12 + 48) + v39 * v49, type metadata accessor for User);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v48;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
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

uint64_t sub_2481422A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LibSystemGroupRecord(0);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AF88, &qword_2481447A0);
  result = sub_248143C80();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v32 = result + 56;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v19 = a4;
    v20 = *(a4 + 48);
    v36 = *(v33 + 72);
    sub_2481437D8(v20 + v36 * (v16 | (v15 << 6)), v11, type metadata accessor for LibSystemGroupRecord);
    v21 = *(v12 + 40);
    sub_248143D40();
    v22 = *v11;
    sub_248143D70();
    v23 = *(v11 + 1);
    v24 = *(v11 + 2);
    sub_248143B70();
    v25 = v34;
    v26 = *(v34 + 24);
    sub_248143B30();
    sub_2481439A4(&qword_27EE8AE48, MEMORY[0x277CC95F0]);
    sub_248143B40();
    sub_2481334A8(v37, *(v11 + *(v25 + 28)));
    v27 = *(v11 + *(v25 + 32));
    sub_248143D60();
    sub_248143D80();
    v28 = -1 << *(v12 + 32);
    v29 = v32;
    v30 = sub_248143C00();
    *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_24814393C(v11, *(v12 + 48) + v30 * v36, type metadata accessor for LibSystemGroupRecord);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    v14 = v35;
    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2481425A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LibSystemUserRecord(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8AFB0, &qword_2481447C0);
  result = sub_248143C80();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    sub_2481437D8(*(a4 + 48) + *(v9 + 72) * (v17 | (v16 << 6)), v12, type metadata accessor for LibSystemUserRecord);
    result = sub_24813EFF8(v12, v13);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v13;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_18;
    }

    v19 = a1[v16];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

size_t sub_24814276C(size_t a1, int64_t a2, char a3)
{
  result = sub_2481427F4(a1, a2, a3, *v3, &qword_27EE8AFA8, &qword_2481447B8, type metadata accessor for User);
  *v3 = result;
  return result;
}

size_t sub_2481427B0(size_t a1, int64_t a2, char a3)
{
  result = sub_2481427F4(a1, a2, a3, *v3, &qword_27EE8AFA0, &qword_2481447B0, type metadata accessor for Group);
  *v3 = result;
  return result;
}

size_t sub_2481427F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_2481429D0(uint64_t a1)
{
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2481439A4(&qword_27EE8AE70, type metadata accessor for User);
  result = MEMORY[0x24C1C7E70](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2481437D8(v13, v7, type metadata accessor for User);
      sub_24813CEA4(v9, v7);
      sub_2481439EC(v9, type metadata accessor for User);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_248142B60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248142C04(uint64_t a1)
{
  v2 = type metadata accessor for Group();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2481439A4(&qword_27EE8AF90, type metadata accessor for Group);
  result = MEMORY[0x24C1C7E70](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2481437D8(v13, v7, type metadata accessor for Group);
      sub_24813D650(v9, v7);
      sub_2481439EC(v9, type metadata accessor for Group);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_248142D94(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248143C20())
  {
    v4 = type metadata accessor for DDQUser(0);
    v5 = sub_2481439A4(&qword_27EE8AEC0, type metadata accessor for DDQUser);
    result = MEMORY[0x24C1C7E70](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1C7F70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24813DAFC(&v11, v9, type metadata accessor for DDQUser, &qword_27EE8AF68, &qword_248144780, type metadata accessor for DDQUser);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_248143C20();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_248142F2C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248143C20())
  {
    v4 = type metadata accessor for DDQGroup(0);
    v5 = sub_2481439A4(&qword_27EE8AEC8, type metadata accessor for DDQGroup);
    result = MEMORY[0x24C1C7E70](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1C7F70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24813DAFC(&v11, v9, type metadata accessor for DDQGroup, &qword_27EE8AF70, &qword_248144788, type metadata accessor for DDQGroup);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_248143C20();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s20DarwinDirectoryQuery5GroupV13mutableGroupsShyACGvgZ_0()
{
  v37[5] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for LibSystemGroupRecord(0);
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE8AE40 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v37[3] = &type metadata for ProviderSideEffects;
    v37[4] = &off_285A4B4B8;
    v37[0] = swift_allocObject();
    sub_248137F84(&unk_27EE8AF40, v37[0] + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84FA0];
    v5 = (v4 + 16);
    aBlock[4] = sub_248143AD8;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24813A940;
    aBlock[3] = &block_descriptor_43;
    v6 = _Block_copy(aBlock);

    DarwinDirectoryRecordStoreApply();
    _Block_release(v6);
    swift_beginAccess();
    v7 = *v5;

    v9 = *(v7 + 32);
    v10 = ((1 << v9) + 63) >> 6;
    if ((v9 & 0x3Fu) <= 0xD)
    {
      goto LABEL_3;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_3:
    v32[1] = v32;
    v33 = v10;
    MEMORY[0x28223BE20](v8);
    v12 = v32 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v13 = 0;
    v14 = 0;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      v22 = v19 | (v14 << 6);
      sub_2481437D8(*(v7 + 48) + *(v34 + 72) * v22, v3, type metadata accessor for LibSystemGroupRecord);
      v23 = v3[*(v35 + 32)];
      sub_2481439EC(v3, type metadata accessor for LibSystemGroupRecord);
      if (v23 == 1)
      {
        *&v12[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_17:
          v25 = sub_2481422A8(v12, v33, v13, v7);
          v26 = v25;
          goto LABEL_18;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(v7 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v31 = swift_slowAlloc();
  v26 = sub_248141E6C(v31, v10, v7, sub_248132A18, 0, sub_248132E74);

  v25 = MEMORY[0x24C1C83B0](v31, -1, -1);
LABEL_18:
  MEMORY[0x28223BE20](v25);
  v32[-2] = v37;
  v27 = sub_24813A3C4(sub_248138000, &v32[-4], v26);

  v28 = sub_248142C04(v27);

  __swift_destroy_boxed_opaque_existential_1(v37);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void DarwinDirectoryRecordStoreApplyWithUUIDFilter(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  *(&v6 + 1) = 0;
  v7 = 0;
  uuid_copy(&v6 + 8, a2);
  DarwinDirectoryRecordStoreApplyWithFilter();

  v5 = *MEMORY[0x277D85DE8];
}

void DarwinDirectoryRecordStoreApplyWithIDFilter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  DarwinDirectoryRecordStoreApplyWithFilter();

  v4 = *MEMORY[0x277D85DE8];
}

void DarwinDirectoryRecordStoreApplyWithNameFilter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  DarwinDirectoryRecordStoreApplyWithFilter();

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2481437D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_248143844(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24814393C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2481439A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2481439EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}