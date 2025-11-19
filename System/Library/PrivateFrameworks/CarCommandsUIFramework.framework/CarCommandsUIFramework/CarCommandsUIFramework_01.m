uint64_t sub_242C3FA04(__int128 *a1)
{
  sub_242C4A58C();

  MEMORY[0x245D241C0](*(a1 + 15), *(a1 + 16));
  MEMORY[0x245D241C0](0xD00000000000001ALL, 0x8000000242C4E3B0);
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 74, 0x20676E69646E6553, 0xE800000000000000);

  v11 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2AC();
  v2 = 104;
  if (v28)
  {
    v2 = 88;
  }

  v3 = 7;
  if (v28)
  {
    v3 = 6;
  }

  v4 = *(a1 + v2);
  v5 = *&a1[v3];

  v12 = *(a1 + 184);
  v14 = *(a1 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  sub_242C4A2BC();
  v6 = *(a1 + 26);
  if (v6)
  {
    v24 = a1[10];
    v25 = a1[11];
    v26 = a1[12];
    v27 = a1[13];
    v20 = a1[6];
    v21 = a1[7];
    v22 = a1[8];
    v23 = a1[9];
    v16 = a1[2];
    v17 = a1[3];
    v18 = a1[4];
    v19 = a1[5];
    v13 = *a1;
    v15 = a1[1];
    v7 = v6;
    v8 = sub_242C3FD34();
    sub_242C3FF00(v8);

    sub_242C4A42C();
  }

  else
  {
    v10 = *(a1 + 27);
    sub_242C4A44C();
    sub_242C40AD0(&qword_27ECE99B0, MEMORY[0x277D63F60]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C3FC5C()
{
}

uint64_t sub_242C3FD34()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA068, &qword_242C4C998);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4449707061;
  *(inited + 16) = xmmword_242C4C320;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x656D614E726163;
  *(inited + 88) = 0xE700000000000000;
  if (v3)
  {
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v4 = 0;
    v9 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v9;
  *(inited + 128) = 0x4974657070696E73;
  *(inited + 136) = 0xEB000000006E4F73;
  v10 = inited;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2AC();
  v11 = MEMORY[0x277D839B0];
  *(v10 + 144) = (v15 & 1) == 0;
  *(v10 + 168) = v11;
  *(v10 + 176) = 0xD00000000000001BLL;
  *(v10 + 184) = 0x8000000242C4E3D0;
  *(v10 + 216) = v11;
  *(v10 + 192) = 1;
  v12 = sub_242C4177C(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA070, &qword_242C4C9A0);
  swift_arrayDestroy();
  v13 = sub_242C40594(v12);

  return v13;
}

uint64_t sub_242C3FF00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA060, &qword_242C4C990);
    v2 = sub_242C4A60C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_242C3A388(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_242C3A5AC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_242C3A5AC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_242C3A5AC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_242C4A54C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_242C3A5AC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_242C401C8(char *a1)
{
  v1 = *a1;
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000021, 0x8000000242C4E380);
  sub_242C4A5CC();
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 89, 0, 0xE000000000000000);

  sub_242C4A33C();
  sub_242C49FFC();
}

uint64_t sub_242C402FC(uint64_t a1, char a2)
{
  v9 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2BC();
  v10 = *(a1 + 168);
  sub_242C4A2AC();
  v3 = 72;
  if (a2)
  {
    v3 = 56;
  }

  v4 = 80;
  if (a2)
  {
    v4 = 64;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);

  v11 = *(a1 + 184);
  v12 = *(a1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  return sub_242C4A2BC();
}

uint64_t sub_242C403E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000021, 0x8000000242C4E380);
  sub_242C4A5CC();
  MEMORY[0x245D241C0](46, 0xE100000000000000);
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 97, 0, 0xE000000000000000);

  sub_242C4A33C();
  sub_242C49FFC();
}

uint64_t sub_242C40528(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  return sub_242C4A2BC();
}

uint64_t sub_242C40594(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v40 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_242C3DA14(*(a1 + 56) + 32 * v11, v38, &qword_27ECEA078, &qword_242C4C9A8);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_242C3DA14(&v35, &v28, &qword_27ECEA078, &qword_242C4C9A8);
    if (!v29)
    {

      sub_242C3DBF0(&v34, &qword_27ECEA080, &qword_242C4C9B0);
      result = sub_242C3DBF0(&v28, &qword_27ECEA078, &qword_242C4C9A8);
      v1 = v40;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_242C3A5AC(&v28, v33);
    v31 = v34;
    v32[0] = v35;
    v32[1] = v36;
    sub_242C3A5AC(v33, v30);
    v1 = v40;
    v15 = *(v40 + 16);
    if (*(v40 + 24) <= v15)
    {

      sub_242C38D64(v15 + 1, 1);
      v1 = v39;
    }

    else
    {
    }

    v16 = v31;
    v17 = *(v1 + 40);
    sub_242C4A6FC();
    sub_242C4A48C();
    result = sub_242C4A72C();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v1 + 48) + 16 * v22) = v16;
    sub_242C3A5AC(v30, (*(v1 + 56) + 32 * v22));
    ++*(v1 + 16);
    result = sub_242C3DBF0(v32, &qword_27ECEA078, &qword_242C4C9A8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v40 = v1;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t CarCommandsToggleSnippet.asAnyView()()
{
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[13];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[9];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_242C2C91C();
  return sub_242C4A14C();
}

uint64_t sub_242C40930()
{
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[13];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[9];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_242C2C91C();
  return sub_242C4A14C();
}

uint64_t sub_242C409AC(uint64_t a1)
{
  v2 = sub_242C49F9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_242C4A06C();
}

uint64_t sub_242C40AD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242C40B20()
{
  result = qword_27ECE9FF0;
  if (!qword_27ECE9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC0, &qword_242C4C350);
    sub_242C4A40C();
    sub_242C40AD0(&qword_27ECE9FE8, MEMORY[0x277D63E70]);
    swift_getOpaqueTypeConformance2();
    sub_242C40C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FF0);
  }

  return result;
}

unint64_t sub_242C40C0C()
{
  result = qword_27ECE9FF8;
  if (!qword_27ECE9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FF8);
  }

  return result;
}

unint64_t sub_242C40C60()
{
  result = qword_27ECEA000;
  if (!qword_27ECEA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA000);
  }

  return result;
}

unint64_t sub_242C40CB4()
{
  result = qword_27ECEA008;
  if (!qword_27ECEA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA008);
  }

  return result;
}

unint64_t sub_242C40D08()
{
  result = qword_27ECEA010;
  if (!qword_27ECEA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA010);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_242C3FC5C();
  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  v13 = *(v0 + 176);

  v14 = *(v0 + 192);

  v15 = *(v0 + 208);

  v16 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

unint64_t sub_242C40E04()
{
  result = qword_27ECEA018;
  if (!qword_27ECEA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA018);
  }

  return result;
}

unint64_t sub_242C40E58()
{
  result = qword_27ECEA020;
  if (!qword_27ECEA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA020);
  }

  return result;
}

unint64_t sub_242C40EAC()
{
  result = qword_27ECEA028;
  if (!qword_27ECEA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsToggleSnippetUpdateValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242C40FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_242C41020(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_242C410A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C410F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_242C4118C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_242C411D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_242C4124C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_242C41294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C41314(unsigned int *a1, int a2)
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

_WORD *sub_242C41364(_WORD *result, int a2, int a3)
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

unint64_t sub_242C413F4()
{
  result = qword_27ECEA030;
  if (!qword_27ECEA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA030);
  }

  return result;
}

unint64_t sub_242C4144C()
{
  result = qword_27ECEA038;
  if (!qword_27ECEA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA038);
  }

  return result;
}

unint64_t sub_242C414A4()
{
  result = qword_27ECEA040;
  if (!qword_27ECEA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA040);
  }

  return result;
}

unint64_t sub_242C414FC()
{
  result = qword_27ECEA048;
  if (!qword_27ECEA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA048);
  }

  return result;
}

unint64_t sub_242C41554()
{
  result = qword_27ECEA050;
  if (!qword_27ECEA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA050);
  }

  return result;
}

unint64_t sub_242C415AC()
{
  result = qword_27ECEA058;
  if (!qword_27ECEA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA058);
  }

  return result;
}

uint64_t sub_242C41600()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_242C40528(v0[2]);
}

unint64_t sub_242C41640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA060, &qword_242C4C990);
    v3 = sub_242C4A60C();
    v4 = a1 + 32;

    while (1)
    {
      sub_242C3DA14(v4, v13, &qword_27ECE9F68, &unk_242C4C9C0);
      result = sub_242C38A0C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_242C3A5AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C4177C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA088, &qword_242C4C9B8);
    v3 = sub_242C4A60C();
    v4 = a1 + 32;

    while (1)
    {
      sub_242C3DA14(v4, &v15, &qword_27ECEA070, &qword_242C4C9A0);
      v5 = v15;
      v6 = v16;
      result = sub_242C38A50(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C418E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x616D7269666E6F63;
    v2 = 0x746174536B636F6CLL;
    v3 = 0xD000000000000012;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x68636E7550707061;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242C41A50(uint64_t a1)
{
  v2 = sub_242C433C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41A8C(uint64_t a1)
{
  v2 = sub_242C433C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41AC8(uint64_t a1)
{
  v2 = sub_242C43610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41B04(uint64_t a1)
{
  v2 = sub_242C43610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41B40(uint64_t a1)
{
  v2 = sub_242C434C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41B7C(uint64_t a1)
{
  v2 = sub_242C434C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41BB8(uint64_t a1)
{
  v2 = sub_242C43370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41BF4(uint64_t a1)
{
  v2 = sub_242C43370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41C30(uint64_t a1)
{
  v2 = sub_242C43514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41C6C(uint64_t a1)
{
  v2 = sub_242C43514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C45DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C41CE4(uint64_t a1)
{
  v2 = sub_242C432B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41D20(uint64_t a1)
{
  v2 = sub_242C432B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41D5C(uint64_t a1)
{
  v2 = sub_242C43664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41D98(uint64_t a1)
{
  v2 = sub_242C43664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41DD4(uint64_t a1)
{
  v2 = sub_242C435BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41E10(uint64_t a1)
{
  v2 = sub_242C435BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41E4C(uint64_t a1)
{
  v2 = sub_242C43418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41E88(uint64_t a1)
{
  v2 = sub_242C43418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41EC4(uint64_t a1)
{
  v2 = sub_242C43568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41F00(uint64_t a1)
{
  v2 = sub_242C43568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C41FBC(uint64_t a1)
{
  v2 = sub_242C4346C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41FF8(uint64_t a1)
{
  v2 = sub_242C4346C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsSnippetsPluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA090, &qword_242C4C9D0);
  v115 = *(v2 - 8);
  v116 = v2;
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v2);
  v114 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA098, &qword_242C4C9D8);
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v5);
  v111 = &v76 - v7;
  v117 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v8 = *(*(v117 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v117);
  v110 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0A0, &qword_242C4C9E0);
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v12);
  v106 = &v76 - v14;
  v104 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v15 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v105 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0A8, &qword_242C4C9E8);
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v76 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0B0, &qword_242C4C9F0);
  v99 = *(v100 - 8);
  v19 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v76 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0B8, &qword_242C4C9F8);
  v96 = *(v97 - 8);
  v21 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v76 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0C0, &qword_242C4CA00);
  v93 = *(v94 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v76 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0C8, &qword_242C4CA08);
  v90 = *(v91 - 8);
  v25 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v76 - v26;
  v118 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v27 = *(*(v118 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v118);
  v89 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v87 = &v76 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v86 = &v76 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v85 = &v76 - v35;
  MEMORY[0x28223BE20](v34);
  v84 = &v76 - v36;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0D0, &qword_242C4CA10);
  v82 = *(v83 - 8);
  v37 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v76 - v38;
  v79 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  v39 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0D8, &qword_242C4CA18);
  v77 = *(v78 - 8);
  v41 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v43 = &v76 - v42;
  v44 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CarCommandsSnippetsPluginModel();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v76 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0E0, &qword_242C4CA20);
  v121 = *(v52 - 8);
  v122 = v52;
  v53 = *(v121 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v76 - v54;
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C432B8();
  v120 = v55;
  sub_242C4A74C();
  sub_242C4330C(v119, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v58 = v105;
        sub_242C44DC4(v51, v105, type metadata accessor for CarCommandsGaugeSnippetModel);
        v125[21] = 7;
        sub_242C43418();
        v70 = v106;
        v60 = v122;
        v61 = v120;
        sub_242C4A67C();
        sub_242C44EBC(&qword_27ECE9B40, type metadata accessor for CarCommandsGaugeSnippetModel);
        v71 = v108;
        sub_242C4A6AC();
        (*(v107 + 8))(v70, v71);
        v72 = type metadata accessor for CarCommandsGaugeSnippetModel;
      }

      else
      {
        if (EnumCaseMultiPayload == 8)
        {
          v58 = v109;
          sub_242C44DC4(v51, v109, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v125[22] = 8;
          sub_242C433C4();
          v64 = v111;
          v60 = v122;
          v61 = v120;
          sub_242C4A67C();
          sub_242C44EBC(&qword_27ECE9B50, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v65 = v113;
          sub_242C4A6AC();
          v66 = v112;
        }

        else
        {
          v58 = v110;
          sub_242C44DC4(v51, v110, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v125[23] = 9;
          sub_242C43370();
          v64 = v114;
          v60 = v122;
          v61 = v120;
          sub_242C4A67C();
          sub_242C44EBC(&qword_27ECE9B50, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v65 = v116;
          sub_242C4A6AC();
          v66 = v115;
        }

        (*(v66 + 8))(v64, v65);
        v72 = type metadata accessor for CarCommandsDisambiguationSnippetModel;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v58 = v87;
      sub_242C44DC4(v51, v87, type metadata accessor for CarCommandsToggleSnippetModel);
      v125[19] = 5;
      sub_242C434C0();
      v59 = v98;
      v60 = v122;
      v61 = v120;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel);
      v62 = v100;
      sub_242C4A6AC();
      v63 = &v127;
    }

    else
    {
      v58 = v89;
      sub_242C44DC4(v51, v89, type metadata accessor for CarCommandsToggleSnippetModel);
      v125[20] = 6;
      sub_242C4346C();
      v59 = v101;
      v60 = v122;
      v61 = v120;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel);
      v62 = v103;
      sub_242C4A6AC();
      v63 = &v128;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v58 = v84;
      sub_242C44DC4(v51, v84, type metadata accessor for CarCommandsToggleSnippetModel);
      v125[16] = 2;
      sub_242C435BC();
      v59 = v88;
      v60 = v122;
      v61 = v120;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel);
      v62 = v91;
      sub_242C4A6AC();
      v63 = &v122;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v58 = v85;
      sub_242C44DC4(v51, v85, type metadata accessor for CarCommandsToggleSnippetModel);
      v125[17] = 3;
      sub_242C43568();
      v59 = v92;
      v60 = v122;
      v61 = v120;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel);
      v62 = v94;
      sub_242C4A6AC();
      v63 = v125;
    }

    else
    {
      v58 = v86;
      sub_242C44DC4(v51, v86, type metadata accessor for CarCommandsToggleSnippetModel);
      v125[18] = 4;
      sub_242C43514();
      v59 = v95;
      v60 = v122;
      v61 = v120;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel);
      v62 = v97;
      sub_242C4A6AC();
      v63 = &v126;
    }

LABEL_21:
    (*(*(v63 - 32) + 8))(v59, v62);
    v72 = type metadata accessor for CarCommandsToggleSnippetModel;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    v58 = v80;
    sub_242C44DC4(v51, v80, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
    v124 = 1;
    sub_242C43610();
    v73 = v81;
    v60 = v122;
    v61 = v120;
    sub_242C4A67C();
    sub_242C44EBC(&qword_27ECE9B20, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
    v74 = v83;
    sub_242C4A6AC();
    (*(v82 + 8))(v73, v74);
    v72 = type metadata accessor for CarCommandsAppPunchoutSnippetModel;
LABEL_22:
    v68 = v72;
    v69 = v58;
    goto LABEL_23;
  }

  sub_242C44DC4(v51, v47, type metadata accessor for CarCommandsConfirmationSnippetModel);
  v123 = 0;
  sub_242C43664();
  v60 = v122;
  v61 = v120;
  sub_242C4A67C();
  sub_242C44EBC(&qword_27ECE9B10, type metadata accessor for CarCommandsConfirmationSnippetModel);
  v67 = v78;
  sub_242C4A6AC();
  (*(v77 + 8))(v43, v67);
  v68 = type metadata accessor for CarCommandsConfirmationSnippetModel;
  v69 = v47;
LABEL_23:
  sub_242C436B8(v69, v68);
  return (*(v121 + 8))(v61, v60);
}

uint64_t type metadata accessor for CarCommandsSnippetsPluginModel()
{
  result = qword_27ECEA1B0;
  if (!qword_27ECEA1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_242C432B8()
{
  result = qword_27ECEA0E8;
  if (!qword_27ECEA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0E8);
  }

  return result;
}

uint64_t sub_242C4330C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsSnippetsPluginModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C43370()
{
  result = qword_27ECEA0F0;
  if (!qword_27ECEA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0F0);
  }

  return result;
}

unint64_t sub_242C433C4()
{
  result = qword_27ECEA0F8;
  if (!qword_27ECEA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0F8);
  }

  return result;
}

unint64_t sub_242C43418()
{
  result = qword_27ECEA100;
  if (!qword_27ECEA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA100);
  }

  return result;
}

unint64_t sub_242C4346C()
{
  result = qword_27ECEA108;
  if (!qword_27ECEA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA108);
  }

  return result;
}

unint64_t sub_242C434C0()
{
  result = qword_27ECEA110;
  if (!qword_27ECEA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA110);
  }

  return result;
}

unint64_t sub_242C43514()
{
  result = qword_27ECEA118;
  if (!qword_27ECEA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA118);
  }

  return result;
}

unint64_t sub_242C43568()
{
  result = qword_27ECEA120;
  if (!qword_27ECEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA120);
  }

  return result;
}

unint64_t sub_242C435BC()
{
  result = qword_27ECEA128;
  if (!qword_27ECEA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA128);
  }

  return result;
}

unint64_t sub_242C43610()
{
  result = qword_27ECEA130;
  if (!qword_27ECEA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA130);
  }

  return result;
}

unint64_t sub_242C43664()
{
  result = qword_27ECEA138;
  if (!qword_27ECEA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA138);
  }

  return result;
}

uint64_t sub_242C436B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CarCommandsSnippetsPluginModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA140, &qword_242C4CA28);
  v152 = *(v3 - 8);
  v153 = v3;
  v4 = *(v152 + 64);
  MEMORY[0x28223BE20](v3);
  v159 = &v123 - v5;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA148, &qword_242C4CA30);
  v150 = *(v151 - 8);
  v6 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v158 = &v123 - v7;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA150, &qword_242C4CA38);
  v148 = *(v149 - 8);
  v8 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v157 = &v123 - v9;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA158, &qword_242C4CA40);
  v146 = *(v147 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v156 = &v123 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA160, &qword_242C4CA48);
  v144 = *(v145 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v166 = &v123 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA168, &qword_242C4CA50);
  v142 = *(v143 - 8);
  v14 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v165 = &v123 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA170, &qword_242C4CA58);
  v140 = *(v141 - 8);
  v16 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v154 = &v123 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA178, &qword_242C4CA60);
  v139 = *(v138 - 8);
  v18 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  v155 = &v123 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA180, &qword_242C4CA68);
  v137 = *(v136 - 8);
  v20 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v164 = &v123 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA188, &qword_242C4CA70);
  v134 = *(v135 - 8);
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v162 = &v123 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA190, &qword_242C4CA78);
  v167 = *(v163 - 8);
  v24 = *(v167 + 64);
  MEMORY[0x28223BE20](v163);
  v26 = &v123 - v25;
  v161 = type metadata accessor for CarCommandsSnippetsPluginModel();
  v27 = *(*(v161 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v161);
  v133 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v123 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v131 = &v123 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v130 = &v123 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v129 = &v123 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v128 = &v123 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v123 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v123 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v123 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v123 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v123 - v52;
  v55 = a1[3];
  v54 = a1[4];
  v170 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_242C432B8();
  v168 = v26;
  v56 = v169;
  sub_242C4A73C();
  if (!v56)
  {
    v123 = v48;
    v124 = v45;
    v125 = v42;
    v126 = v51;
    v57 = v162;
    v59 = v164;
    v58 = v165;
    v60 = v166;
    v127 = v53;
    v169 = 0;
    v61 = v163;
    v62 = sub_242C4A66C();
    if (*(v62 + 16) != 1 || (v63 = *(v62 + 32), v63 == 10))
    {
      v70 = sub_242C4A5AC();
      swift_allocError();
      v72 = v71;
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA198, &qword_242C4CA80) + 48);
      *v72 = v161;
      v74 = v168;
      sub_242C4A62C();
      sub_242C4A59C();
      (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
      swift_willThrow();
      (*(v167 + 8))(v74, v61);
      goto LABEL_11;
    }

    if (*(v62 + 32) <= 4u)
    {
      if (*(v62 + 32) <= 1u)
      {
        v77 = v160;
        if (*(v62 + 32))
        {
          v172 = 1;
          sub_242C43610();
          v107 = v59;
          v109 = v168;
          v108 = v169;
          sub_242C4A61C();
          if (v108)
          {
            (*(v167 + 8))(v109, v61);
            goto LABEL_11;
          }

          type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B18, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
          v116 = v123;
          v117 = v136;
          sub_242C4A65C();
          v118 = v167;
          (*(v137 + 8))(v107, v117);
          (*(v118 + 8))(v109, v61);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v122 = v116;
        }

        else
        {
          v171 = 0;
          sub_242C43664();
          v84 = v61;
          v86 = v168;
          v85 = v169;
          sub_242C4A61C();
          if (v85)
          {
            (*(v167 + 8))(v86, v61);
            goto LABEL_11;
          }

          type metadata accessor for CarCommandsConfirmationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B08, type metadata accessor for CarCommandsConfirmationSnippetModel);
          v114 = v126;
          v115 = v135;
          sub_242C4A65C();
          (*(v134 + 8))(v57, v115);
          (*(v167 + 8))(v86, v84);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v122 = v114;
        }
      }

      else
      {
        v166 = v62;
        v64 = v167;
        if (v63 != 2)
        {
          v65 = v61;
          if (v63 == 3)
          {
            v174 = 3;
            sub_242C43568();
            v66 = v154;
            v67 = v168;
            v68 = v169;
            sub_242C4A61C();
            v69 = v127;
            if (v68)
            {
              (*(v64 + 8))(v67, v65);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v170);
            }

            type metadata accessor for CarCommandsToggleSnippetModel(0);
            sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel);
            v104 = v125;
            v111 = v141;
            sub_242C4A65C();
            (*(v140 + 8))(v66, v111);
            (*(v64 + 8))(v168, v65);
            swift_unknownObjectRelease();
            goto LABEL_43;
          }

          v175 = 4;
          sub_242C43514();
          v101 = v58;
          v103 = v168;
          v102 = v169;
          sub_242C4A61C();
          v69 = v127;
          if (!v102)
          {
            type metadata accessor for CarCommandsToggleSnippetModel(0);
            sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel);
            v104 = v128;
            v105 = v143;
            sub_242C4A65C();
            (*(v142 + 8))(v101, v105);
            (*(v64 + 8))(v103, v65);
            swift_unknownObjectRelease();
LABEL_43:
            swift_storeEnumTagMultiPayload();
            v122 = v104;
            v77 = v160;
            goto LABEL_46;
          }

          (*(v64 + 8))(v103, v65);
LABEL_11:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v170);
        }

        v173 = 2;
        sub_242C435BC();
        v94 = v168;
        v93 = v169;
        sub_242C4A61C();
        if (v93)
        {
          (*(v64 + 8))(v94, v61);
          goto LABEL_11;
        }

        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel);
        v95 = v124;
        v96 = v138;
        v97 = v155;
        sub_242C4A65C();
        (*(v139 + 8))(v97, v96);
        (*(v64 + 8))(v94, v61);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v122 = v95;
        v77 = v160;
      }

      v69 = v127;
      goto LABEL_46;
    }

    v76 = v61;
    if (*(v62 + 32) > 6u)
    {
      v77 = v160;
      v78 = v167;
      v79 = v168;
      if (v63 == 7)
      {
        v178 = 7;
        sub_242C43418();
        v98 = v169;
        sub_242C4A61C();
        if (!v98)
        {
          type metadata accessor for CarCommandsGaugeSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B38, type metadata accessor for CarCommandsGaugeSnippetModel);
          v81 = v131;
          v99 = v149;
          v100 = v157;
          sub_242C4A65C();
          (*(v148 + 8))(v100, v99);
          (*(v78 + 8))(v79, v76);
          swift_unknownObjectRelease();
          goto LABEL_44;
        }
      }

      else if (v63 == 8)
      {
        v179 = 8;
        sub_242C433C4();
        v80 = v169;
        sub_242C4A61C();
        if (!v80)
        {
          type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B48, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v81 = v132;
          v82 = v151;
          v83 = v158;
          sub_242C4A65C();
          (*(v150 + 8))(v83, v82);
          (*(v78 + 8))(v79, v76);
          swift_unknownObjectRelease();
LABEL_44:
          swift_storeEnumTagMultiPayload();
          v122 = v81;
          v69 = v127;
          goto LABEL_46;
        }
      }

      else
      {
        v180 = 9;
        sub_242C43370();
        v106 = v169;
        sub_242C4A61C();
        if (!v106)
        {
          type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B48, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v81 = v133;
          v112 = v153;
          v113 = v159;
          sub_242C4A65C();
          (*(v152 + 8))(v113, v112);
          (*(v78 + 8))(v79, v76);
          swift_unknownObjectRelease();
          goto LABEL_44;
        }
      }

      (*(v78 + 8))(v79, v61);
      goto LABEL_11;
    }

    v88 = v167;
    v87 = v168;
    if (v63 == 5)
    {
      v176 = 5;
      sub_242C434C0();
      v89 = v60;
      v90 = v169;
      sub_242C4A61C();
      if (!v90)
      {
        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel);
        v91 = v129;
        v92 = v145;
        sub_242C4A65C();
        (*(v144 + 8))(v89, v92);
        (*(v88 + 8))(v87, v76);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v122 = v91;
        v69 = v127;
        v77 = v160;
LABEL_46:
        sub_242C44DC4(v122, v69, type metadata accessor for CarCommandsSnippetsPluginModel);
        sub_242C44DC4(v69, v77, type metadata accessor for CarCommandsSnippetsPluginModel);
        return __swift_destroy_boxed_opaque_existential_1(v170);
      }
    }

    else
    {
      v177 = 6;
      sub_242C4346C();
      v110 = v169;
      sub_242C4A61C();
      if (!v110)
      {
        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel);
        v119 = v130;
        v120 = v147;
        v121 = v156;
        sub_242C4A65C();
        (*(v146 + 8))(v121, v120);
        (*(v88 + 8))(v87, v76);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v122 = v119;
        v69 = v127;
        v77 = v160;
        goto LABEL_46;
      }
    }

    (*(v88 + 8))(v87, v76);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v170);
}

uint64_t sub_242C44DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C44EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242C44FA4()
{
  result = type metadata accessor for CarCommandsConfirmationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CarCommandsAppPunchoutSnippetModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CarCommandsToggleSnippetModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CarCommandsGaugeSnippetModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CarCommandsDisambiguationSnippetModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsSnippetsPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsSnippetsPluginModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C45250()
{
  result = qword_27ECEA1C0;
  if (!qword_27ECEA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1C0);
  }

  return result;
}

unint64_t sub_242C452A8()
{
  result = qword_27ECEA1C8;
  if (!qword_27ECEA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1C8);
  }

  return result;
}

unint64_t sub_242C45300()
{
  result = qword_27ECEA1D0;
  if (!qword_27ECEA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1D0);
  }

  return result;
}

unint64_t sub_242C45358()
{
  result = qword_27ECEA1D8;
  if (!qword_27ECEA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1D8);
  }

  return result;
}

unint64_t sub_242C453B0()
{
  result = qword_27ECEA1E0;
  if (!qword_27ECEA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1E0);
  }

  return result;
}

unint64_t sub_242C45408()
{
  result = qword_27ECEA1E8;
  if (!qword_27ECEA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1E8);
  }

  return result;
}

unint64_t sub_242C45460()
{
  result = qword_27ECEA1F0;
  if (!qword_27ECEA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1F0);
  }

  return result;
}

unint64_t sub_242C454B8()
{
  result = qword_27ECEA1F8;
  if (!qword_27ECEA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1F8);
  }

  return result;
}

unint64_t sub_242C45510()
{
  result = qword_27ECEA200;
  if (!qword_27ECEA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA200);
  }

  return result;
}

unint64_t sub_242C45568()
{
  result = qword_27ECEA208;
  if (!qword_27ECEA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA208);
  }

  return result;
}

unint64_t sub_242C455C0()
{
  result = qword_27ECEA210;
  if (!qword_27ECEA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA210);
  }

  return result;
}

unint64_t sub_242C45618()
{
  result = qword_27ECEA218;
  if (!qword_27ECEA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA218);
  }

  return result;
}

unint64_t sub_242C45670()
{
  result = qword_27ECEA220;
  if (!qword_27ECEA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA220);
  }

  return result;
}

unint64_t sub_242C456C8()
{
  result = qword_27ECEA228;
  if (!qword_27ECEA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA228);
  }

  return result;
}

unint64_t sub_242C45720()
{
  result = qword_27ECEA230;
  if (!qword_27ECEA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA230);
  }

  return result;
}

unint64_t sub_242C45778()
{
  result = qword_27ECEA238;
  if (!qword_27ECEA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA238);
  }

  return result;
}

unint64_t sub_242C457D0()
{
  result = qword_27ECEA240;
  if (!qword_27ECEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA240);
  }

  return result;
}

unint64_t sub_242C45828()
{
  result = qword_27ECEA248;
  if (!qword_27ECEA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA248);
  }

  return result;
}

unint64_t sub_242C45880()
{
  result = qword_27ECEA250;
  if (!qword_27ECEA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA250);
  }

  return result;
}

unint64_t sub_242C458D8()
{
  result = qword_27ECEA258;
  if (!qword_27ECEA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA258);
  }

  return result;
}

unint64_t sub_242C45930()
{
  result = qword_27ECEA260;
  if (!qword_27ECEA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA260);
  }

  return result;
}

unint64_t sub_242C45988()
{
  result = qword_27ECEA268;
  if (!qword_27ECEA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA268);
  }

  return result;
}

unint64_t sub_242C459E0()
{
  result = qword_27ECEA270;
  if (!qword_27ECEA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA270);
  }

  return result;
}

unint64_t sub_242C45A38()
{
  result = qword_27ECEA278;
  if (!qword_27ECEA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA278);
  }

  return result;
}

unint64_t sub_242C45A90()
{
  result = qword_27ECEA280;
  if (!qword_27ECEA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA280);
  }

  return result;
}

unint64_t sub_242C45AE8()
{
  result = qword_27ECEA288;
  if (!qword_27ECEA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA288);
  }

  return result;
}

unint64_t sub_242C45B40()
{
  result = qword_27ECEA290;
  if (!qword_27ECEA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA290);
  }

  return result;
}

unint64_t sub_242C45B98()
{
  result = qword_27ECEA298;
  if (!qword_27ECEA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA298);
  }

  return result;
}

unint64_t sub_242C45BF0()
{
  result = qword_27ECEA2A0;
  if (!qword_27ECEA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2A0);
  }

  return result;
}

unint64_t sub_242C45C48()
{
  result = qword_27ECEA2A8;
  if (!qword_27ECEA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2A8);
  }

  return result;
}

unint64_t sub_242C45CA0()
{
  result = qword_27ECEA2B0;
  if (!qword_27ECEA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2B0);
  }

  return result;
}

unint64_t sub_242C45CF8()
{
  result = qword_27ECEA2B8;
  if (!qword_27ECEA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2B8);
  }

  return result;
}

unint64_t sub_242C45D50()
{
  result = qword_27ECEA2C0;
  if (!qword_27ECEA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2C0);
  }

  return result;
}

uint64_t sub_242C45DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746174536B636F6CLL && a2 == 0xEF6C65646F4D7375 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4E440 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242C4E460 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C4E480 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C4E4A0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4E4C0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C4E4E0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4E500 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

Swift::String __swiftcall SnippetModel.responseViewId()()
{
  v0 = sub_242C4A5DC();
  __break(1u);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t CarCommandsGaugeSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2C8, &qword_242C4D840);
  v2 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v4 = (&v33 - v3);
  v5 = sub_242C4A40C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2D0, &qword_242C4D848);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[3];
  v54 = v1[4];
  v55 = v14;
  v56 = v15;
  v17 = v1[1];
  v51[0] = *v1;
  v51[1] = v17;
  v18 = v1[1];
  v52 = v1[2];
  v53 = v16;
  v57 = *(v1 + 14);
  v59 = v18;
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D63F80];
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277D63F80];
  v48 = v18;
  if (!*(&v52 + 1))
  {
    goto LABEL_6;
  }

  v21 = HIBYTE(*(&v52 + 1)) & 0xFLL;
  if ((*(&v52 + 1) & 0x2000000000000000) == 0)
  {
    v21 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    *(&v46 + 1) = MEMORY[0x277D837D0];
    v47 = MEMORY[0x277D63F80];
    v45 = v52;
  }

  else
  {
LABEL_6:
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v58 = *v1;
  v40 = v19;
  v41 = v20;
  v39 = v58;
  sub_242C3FCA0(&v59, v38);
  sub_242C3FCA0(&v58, v38);
  *v4 = sub_242C4A32C();
  v4[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2D8, &unk_242C4D850);
  sub_242C46544(v51, v4 + *(v23 + 44));
  sub_242C3B974(&qword_27ECEA2E0, &qword_27ECEA2C8, &qword_242C4D840);
  v24 = sub_242C4A14C();
  sub_242C2C188(v4);
  v38[3] = MEMORY[0x277CE11C8];
  v38[4] = MEMORY[0x277D63A60];
  v38[0] = v24;
  sub_242C4A3FC();
  sub_242C46D64(&qword_27ECE9FE8, MEMORY[0x277D63E70]);
  sub_242C4A1DC();
  (*(v6 + 8))(v9, v5);
  v26 = *(&v55 + 1);
  v25 = v56;
  sub_242C4A44C();
  sub_242C46D64(&qword_27ECE99B0, MEMORY[0x277D63F60]);

  v27 = sub_242C4A01C();
  v29 = v28;
  v30 = v37;
  (*(v35 + 32))(v37, v13, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  v32[2] = v26;
  v32[3] = v25;
  return result;
}

uint64_t sub_242C46544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_242C4A10C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2E8, &unk_242C4D928);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  LODWORD(v36) = *(a1 + 48);
  v41[0] = 0x3F80000000000000;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D68, &qword_242C4BD40);
  sub_242C3B134();
  sub_242C46D10();
  sub_242C4A22C();
  sub_242C4A0FC();
  sub_242C3B974(&qword_27ECEA2F8, &qword_27ECEA2E8, &unk_242C4D928);
  sub_242C46D64(&qword_27ECEA300, MEMORY[0x277CDE540]);
  v13 = v33;
  sub_242C4A1AC();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  v14 = sub_242C4A1FC();
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA308, &qword_242C4D968) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = sub_242C4A32C();
  v19 = v18;
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(a1 + 56);

    v22 = sub_242C4A23C();
    sub_242C4A34C();
    v24 = v23;
    v26 = v25;
    v27 = 0x3FE51EB851EB851FLL;
    v20 = 0xC044000000000000;
  }

  else
  {
    v22 = 0;
    v27 = 0;
    v24 = 0;
    v26 = 0;
  }

  v36 = v22;
  *&v37 = v20;
  *(&v37 + 1) = v27;
  *&v38 = v27;
  *(&v38 + 1) = v24;
  *&v39 = v26;
  *(&v39 + 1) = v17;
  v40 = v19;
  v28 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA310, &qword_242C4D970) + 36);
  v29 = v39;
  *(v28 + 32) = v38;
  *(v28 + 48) = v29;
  *(v28 + 64) = v40;
  v30 = v37;
  *v28 = v36;
  *(v28 + 16) = v30;
  v41[0] = v22;
  v41[1] = 0;
  v41[2] = v20;
  v41[3] = v27;
  v41[4] = v27;
  v41[5] = v24;
  v41[6] = v26;
  v41[7] = v17;
  v41[8] = v19;
  sub_242C46E04(&v36, v35);
  return sub_242C3DBF0(v41, &qword_27ECEA318, &unk_242C4D978);
}

double sub_242C46914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242C4A24C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);

  sub_242C4A23C();
  v15 = *MEMORY[0x277CE1020];
  v16 = sub_242C4A26C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12, v15, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  sub_242C4A25C();

  sub_242C3DBF0(v12, &qword_27ECE9C80, &qword_242C4B870);
  v18 = sub_242C4A1EC();
  v19 = sub_242C4A21C();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v20 = sub_242C4A27C();
  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();

  sub_242C4A32C();
  sub_242C49FEC();
  v25[8] = 1;
  sub_242C4A32C();
  sub_242C49FEC();
  LOBYTE(v8) = sub_242C4A12C();

  v22 = v30;
  *(a2 + 40) = v29;
  *(a2 + 56) = v22;
  *(a2 + 72) = v31;
  v23 = v27;
  *(a2 + 88) = v26;
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v19;
  *(a2 + 104) = v23;
  result = *&v28;
  *(a2 + 120) = v28;
  *(a2 + 136) = v18;
  *(a2 + 144) = v8;
  *(a2 + 145) = 256;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242C46C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_242C46C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242C46D10()
{
  result = qword_27ECEA2F0;
  if (!qword_27ECEA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2F0);
  }

  return result;
}

uint64_t sub_242C46D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242C46DAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A07C();
  *a1 = result;
  return result;
}

uint64_t sub_242C46DD8(uint64_t *a1)
{
  v1 = *a1;

  return sub_242C4A08C();
}

uint64_t sub_242C46E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA318, &unk_242C4D978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CarCommandsAppPunchoutSnippet.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_242C4A44C();
  sub_242C47A9C(&qword_27ECE99B0, MEMORY[0x277D63F60]);
  a2[4] = sub_242C4A01C();
  a2[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  *a2 = v7;
  a2[1] = v8;
  v5 = a1 + *(type metadata accessor for CarCommandsAppPunchoutSnippetModel(0) + 20);
  sub_242C49F1C();
  result = sub_242C46F50(a1);
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_242C46F50(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CarCommandsAppPunchoutSnippet.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA320, &qword_242C4D9B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-v4];
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v11[2] = v0[2];
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v7[3] = v0[2];
  sub_242C4728C(v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA328, &qword_242C4D9C0);
  sub_242C3B974(&qword_27ECEA330, &qword_27ECEA328, &qword_242C4D9C0);
  sub_242C4A37C();
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8);
  sub_242C4A1DC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_242C47188(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  sub_242C4728C(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA340, &qword_242C4DA70);
  sub_242C3B974(&qword_27ECEA348, &qword_27ECEA340, &qword_242C4DA70);
  return sub_242C4A2DC();
}

uint64_t sub_242C472E0(void *a1)
{
  v2 = sub_242C49E9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  if (v7)
  {
    v9 = a1[2];
    v8 = a1[3];
    v10 = v7;

    sub_242C49E8C();
    sub_242C4A41C();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = a1[5];
    sub_242C4A44C();
    sub_242C47A9C(&qword_27ECE99B0, MEMORY[0x277D63F60]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C4744C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_242C3A334();

  result = sub_242C4A13C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_242C474B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_242C49EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242C49EEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_242C4A35C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA350, &qword_242C4DA78);
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = &v25 - v17;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_242C49EDC();
  sub_242C4A36C();
  (*(v4 + 104))(v7, *MEMORY[0x277D62BD0], v3);
  v21 = sub_242C47A9C(&qword_27ECEA358, MEMORY[0x277D63B20]);
  sub_242C4A15C();
  (*(v4 + 8))(v7, v3);
  (*(v11 + 8))(v14, v10);
  v27 = v10;
  v28 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  v23 = sub_242C4A14C();
  result = (*(v15 + 8))(v18, v22);
  *v26 = v23;
  return result;
}

uint64_t sub_242C477D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA320, &qword_242C4D9B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-v4];
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v11[2] = v0[2];
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v7[3] = v0[2];
  sub_242C4728C(v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA328, &qword_242C4D9C0);
  sub_242C3B974(&qword_27ECEA330, &qword_27ECEA328, &qword_242C4D9C0);
  sub_242C4A37C();
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8);
  sub_242C4A1DC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C47A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242C47B30@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_242C47B7C(uint64_t a1)
{
  v174 = a1;
  v170 = type metadata accessor for CarNameDisambiguationSnippet();
  v1 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v167 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA368, &qword_242C4DAE8);
  v169 = *(v171 - 8);
  v3 = *(v169 + 64);
  MEMORY[0x28223BE20](v171);
  v168 = &v126 - v4;
  v165 = type metadata accessor for AppDisambiguationSnippet();
  v5 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v162 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA370, &qword_242C4DAF0);
  v164 = *(v166 - 8);
  v7 = *(v164 + 64);
  MEMORY[0x28223BE20](v166);
  v163 = &v126 - v8;
  v9 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v172 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PowerLevelSnippet();
  v12 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA378, &qword_242C4DAF8);
  v159 = *(v161 - 8);
  v14 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v158 = &v126 - v15;
  v16 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v156 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for VisibleSignalStatusSnippet();
  v19 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v151 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA380, &qword_242C4DB00);
  v153 = *(v155 - 8);
  v21 = *(v153 + 64);
  MEMORY[0x28223BE20](v155);
  v152 = &v126 - v22;
  v149 = type metadata accessor for AudibleSignalStatusSnippet();
  v23 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v146 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA388, &qword_242C4DB08);
  v148 = *(v150 - 8);
  v25 = *(v148 + 64);
  MEMORY[0x28223BE20](v150);
  v147 = &v126 - v26;
  v144 = type metadata accessor for ClimateStatusSnippet();
  v27 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v141 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA390, &qword_242C4DB10);
  v143 = *(v145 - 8);
  v29 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v142 = &v126 - v30;
  v139 = type metadata accessor for TrunkStatusSnippet();
  v31 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v136 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA398, &qword_242C4DB18);
  v138 = *(v140 - 8);
  v33 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v137 = &v126 - v34;
  v131 = type metadata accessor for LockStatusSnippet();
  v35 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v127 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3A0, &qword_242C4DB20);
  v130 = *(v132 - 8);
  v37 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v128 = &v126 - v38;
  v39 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v173 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3A8, &qword_242C4DB28);
  v134 = *(v135 - 8);
  v42 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v126 - v43;
  v44 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v126 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v129 = &v126 - v49;
  v50 = type metadata accessor for CarCommandsConfirmationSnippet();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v126 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3B0, &unk_242C4DB30);
  v126 = *(v54 - 8);
  v55 = *(v126 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v126 - v56;
  v58 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v126 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for CarCommandsSnippetsPluginModel();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v126 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C49478(v174, v65, type metadata accessor for CarCommandsSnippetsPluginModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v67 = v173;
      if (EnumCaseMultiPayload == 5)
      {
        sub_242C49410(v65, v173, type metadata accessor for CarCommandsToggleSnippetModel);
        v86 = v146;
        sub_242C49478(v67, v146, type metadata accessor for CarCommandsToggleSnippetModel);
        v87 = sub_242C494E0(&qword_27ECEA3D8, type metadata accessor for AudibleSignalStatusSnippet);
        v70 = v147;
        v88 = v149;
        sub_242C4A17C();
        sub_242C49528(v86, type metadata accessor for AudibleSignalStatusSnippet);
        v175 = v88;
        v176 = v87;
        swift_getOpaqueTypeConformance2();
        v72 = v150;
        v73 = sub_242C4A14C();
        v74 = &v180;
      }

      else
      {
        sub_242C49410(v65, v173, type metadata accessor for CarCommandsToggleSnippetModel);
        v122 = v151;
        sub_242C49478(v67, v151, type metadata accessor for CarCommandsToggleSnippetModel);
        v123 = sub_242C494E0(&qword_27ECEA3D0, type metadata accessor for VisibleSignalStatusSnippet);
        v70 = v152;
        v124 = v154;
        sub_242C4A17C();
        sub_242C49528(v122, type metadata accessor for VisibleSignalStatusSnippet);
        v175 = v124;
        v176 = v123;
        swift_getOpaqueTypeConformance2();
        v72 = v155;
        v73 = sub_242C4A14C();
        v74 = &v181;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 7)
    {
      v67 = v172;
      if (EnumCaseMultiPayload == 8)
      {
        sub_242C49410(v65, v172, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v75 = v162;
        sub_242C49478(v67, v162, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v76 = sub_242C494E0(&qword_27ECEA3C0, type metadata accessor for AppDisambiguationSnippet);
        v77 = v163;
        v78 = v165;
        sub_242C4A17C();
        sub_242C49528(v75, type metadata accessor for AppDisambiguationSnippet);
        v175 = v78;
        v176 = v76;
        swift_getOpaqueTypeConformance2();
        v79 = v166;
        v73 = sub_242C4A14C();
        v80 = v164;
      }

      else
      {
        sub_242C49410(v65, v172, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v104 = v167;
        sub_242C49478(v67, v167, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v105 = sub_242C494E0(&qword_27ECEA3B8, type metadata accessor for CarNameDisambiguationSnippet);
        v77 = v168;
        v106 = v170;
        sub_242C4A17C();
        sub_242C49528(v104, type metadata accessor for CarNameDisambiguationSnippet);
        v175 = v106;
        v176 = v105;
        swift_getOpaqueTypeConformance2();
        v79 = v171;
        v73 = sub_242C4A14C();
        v80 = v169;
      }

      (*(v80 + 8))(v77, v79);
      v107 = type metadata accessor for CarCommandsDisambiguationSnippetModel;
      goto LABEL_22;
    }

    v95 = v156;
    sub_242C49410(v65, v156, type metadata accessor for CarCommandsGaugeSnippetModel);
    v96 = v157;
    sub_242C49478(v95, v157, type metadata accessor for CarCommandsGaugeSnippetModel);
    v97 = sub_242C494E0(&qword_27ECEA3C8, type metadata accessor for PowerLevelSnippet);
    v98 = v158;
    v99 = v160;
    sub_242C4A17C();
    sub_242C49528(v96, type metadata accessor for PowerLevelSnippet);
    v175 = v99;
    v176 = v97;
    swift_getOpaqueTypeConformance2();
    v100 = v161;
    v73 = sub_242C4A14C();
    (*(v159 + 8))(v98, v100);
    v84 = type metadata accessor for CarCommandsGaugeSnippetModel;
    v85 = v95;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v108 = v65;
      v109 = v129;
      sub_242C49410(v108, v129, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      sub_242C49478(v109, v48, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      sub_242C4A44C();
      sub_242C494E0(&qword_27ECE99B0, MEMORY[0x277D63F60]);
      v110 = sub_242C4A01C();
      v112 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
      sub_242C49F1C();
      v113 = v175;
      v114 = v176;
      v115 = &v48[*(v44 + 20)];
      sub_242C49F1C();
      sub_242C49528(v48, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      v116 = v175;
      v117 = v176;
      v175 = v113;
      v176 = v114;
      v177 = v116;
      v178 = v117;
      v179 = v110;
      v180 = v112;
      v118 = sub_242C493BC();
      v119 = v133;
      sub_242C4A17C();
      v120 = v179;

      v175 = &type metadata for CarCommandsAppPunchoutSnippet;
      v176 = v118;
      swift_getOpaqueTypeConformance2();
      v121 = v135;
      v73 = sub_242C4A14C();
      (*(v134 + 8))(v119, v121);
      v85 = v109;
      v84 = type metadata accessor for CarCommandsAppPunchoutSnippetModel;
    }

    else
    {
      sub_242C49410(v65, v61, type metadata accessor for CarCommandsConfirmationSnippetModel);
      sub_242C49478(v61, v53, type metadata accessor for CarCommandsConfirmationSnippetModel);
      v81 = &v53[*(v50 + 20)];
      sub_242C4A44C();
      sub_242C494E0(&qword_27ECE99B0, MEMORY[0x277D63F60]);
      *v81 = sub_242C4A01C();
      v81[1] = v82;
      v83 = sub_242C494E0(&qword_27ECEA400, type metadata accessor for CarCommandsConfirmationSnippet);
      sub_242C4A17C();
      sub_242C49528(v53, type metadata accessor for CarCommandsConfirmationSnippet);
      v175 = v50;
      v176 = v83;
      swift_getOpaqueTypeConformance2();
      v73 = sub_242C4A14C();
      (*(v126 + 8))(v57, v54);
      v84 = type metadata accessor for CarCommandsConfirmationSnippetModel;
      v85 = v61;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      v67 = v173;
      if (EnumCaseMultiPayload == 3)
      {
        sub_242C49410(v65, v173, type metadata accessor for CarCommandsToggleSnippetModel);
        v68 = v136;
        sub_242C49478(v67, v136, type metadata accessor for CarCommandsToggleSnippetModel);
        v69 = sub_242C494E0(&qword_27ECEA3E8, type metadata accessor for TrunkStatusSnippet);
        v70 = v137;
        v71 = v139;
        sub_242C4A17C();
        sub_242C49528(v68, type metadata accessor for TrunkStatusSnippet);
        v175 = v71;
        v176 = v69;
        swift_getOpaqueTypeConformance2();
        v72 = v140;
        v73 = sub_242C4A14C();
        v74 = &v170;
      }

      else
      {
        sub_242C49410(v65, v173, type metadata accessor for CarCommandsToggleSnippetModel);
        v101 = v141;
        sub_242C49478(v67, v141, type metadata accessor for CarCommandsToggleSnippetModel);
        v102 = sub_242C494E0(&qword_27ECEA3E0, type metadata accessor for ClimateStatusSnippet);
        v70 = v142;
        v103 = v144;
        sub_242C4A17C();
        sub_242C49528(v101, type metadata accessor for ClimateStatusSnippet);
        v175 = v103;
        v176 = v102;
        swift_getOpaqueTypeConformance2();
        v72 = v145;
        v73 = sub_242C4A14C();
        v74 = &v175;
      }

LABEL_21:
      ((*(v74 - 32))->Description)(v70, v72);
      v107 = type metadata accessor for CarCommandsToggleSnippetModel;
LABEL_22:
      v84 = v107;
      v85 = v67;
      goto LABEL_23;
    }

    v89 = v173;
    sub_242C49410(v65, v173, type metadata accessor for CarCommandsToggleSnippetModel);
    v90 = v127;
    sub_242C49478(v89, v127, type metadata accessor for CarCommandsToggleSnippetModel);
    v91 = sub_242C494E0(&qword_27ECEA3F0, type metadata accessor for LockStatusSnippet);
    v92 = v128;
    v93 = v131;
    sub_242C4A17C();
    sub_242C49528(v90, type metadata accessor for LockStatusSnippet);
    v175 = v93;
    v176 = v91;
    swift_getOpaqueTypeConformance2();
    v94 = v132;
    v73 = sub_242C4A14C();
    (*(v130 + 8))(v92, v94);
    v84 = type metadata accessor for CarCommandsToggleSnippetModel;
    v85 = v89;
  }

LABEL_23:
  sub_242C49528(v85, v84);
  return v73;
}

unint64_t sub_242C493BC()
{
  result = qword_27ECEA3F8;
  if (!qword_27ECEA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA3F8);
  }

  return result;
}

uint64_t sub_242C49410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C49478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C494E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242C49528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C49594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_242C495DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_242C49648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_242C49E9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000036, 0x8000000242C4E690);

  MEMORY[0x245D241C0](a3, a4);
  sub_242C39FF4(8, 0xD00000000000009BLL, 0x8000000242C4E5F0, 0x6E6F632879646F62, 0xEE00293A746E6574, 14, v14, v15);

  if (a1)
  {
    v12 = a1;
    sub_242C49E8C();
    sub_242C4A41C();

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_242C4A44C();
    sub_242C2C7A0();
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C49854(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA408, &qword_242C4DBE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA410, &unk_242C4DBF0);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  v6[*(v3 + 36)] = 0;
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v10;
  v12[5] = v9;
  sub_242C499C0();
  v13 = v8;

  sub_242C4A1BC();

  return sub_242C49AA4(v6);
}

unint64_t sub_242C499C0()
{
  result = qword_27ECEA418;
  if (!qword_27ECEA418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA408, &qword_242C4DBE8);
    sub_242C3B974(&qword_27ECEA420, &qword_27ECEA410, &unk_242C4DBF0);
    sub_242C3B974(&qword_27ECE9F08, &qword_27ECE9F10, &qword_242C4C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA418);
  }

  return result;
}

uint64_t sub_242C49AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA408, &qword_242C4DBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C49B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PowerLevelSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v5 = v1 + v4[5];
  sub_242C49F1C();
  v6 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  v7 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  v8 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  if (v14)
  {
    v9 = 0x6C69662E746C6F62;
  }

  else
  {
    v9 = 0;
  }

  if (v14)
  {
    v10 = 0xE90000000000006CLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = v2 + v4[9];
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v14;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0x6C6C69662E726163;
  *(a1 + 80) = 0xE800000000000000;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = result;
  *(a1 + 112) = v13;
  return result;
}

uint64_t type metadata accessor for PowerLevelSnippet()
{
  result = qword_27ECEA428;
  if (!qword_27ECEA428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C49DBC()
{
  result = type metadata accessor for CarCommandsGaugeSnippetModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C49E28()
{
  result = qword_27ECEA438;
  if (!qword_27ECEA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA438);
  }

  return result;
}