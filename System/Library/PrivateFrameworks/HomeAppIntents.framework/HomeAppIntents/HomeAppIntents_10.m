unint64_t sub_2527F9574()
{
  result = qword_27F4FEA08;
  if (!qword_27F4FEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA08);
  }

  return result;
}

unint64_t sub_2527F95CC()
{
  result = qword_27F4FEA10;
  if (!qword_27F4FEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA10);
  }

  return result;
}

unint64_t sub_2527F9624()
{
  result = qword_27F4FEA18;
  if (!qword_27F4FEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA18);
  }

  return result;
}

unint64_t sub_2527F967C()
{
  result = qword_27F4FEA20;
  if (!qword_27F4FEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA20);
  }

  return result;
}

unint64_t sub_2527F96D4()
{
  result = qword_27F4FEA28;
  if (!qword_27F4FEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA28);
  }

  return result;
}

unint64_t sub_2527F972C()
{
  result = qword_27F4FEA30;
  if (!qword_27F4FEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA30);
  }

  return result;
}

unint64_t sub_2527F9784()
{
  result = qword_27F4FEA38;
  if (!qword_27F4FEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA38);
  }

  return result;
}

unint64_t sub_2527F97DC()
{
  result = qword_27F4FEA40;
  if (!qword_27F4FEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA40);
  }

  return result;
}

unint64_t sub_2527F9834()
{
  result = qword_27F4FEA48;
  if (!qword_27F4FEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA48);
  }

  return result;
}

unint64_t sub_2527F988C()
{
  result = qword_27F4FEA50;
  if (!qword_27F4FEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA50);
  }

  return result;
}

unint64_t sub_2527F98E4()
{
  result = qword_27F4FEA58;
  if (!qword_27F4FEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA58);
  }

  return result;
}

unint64_t sub_2527F993C()
{
  result = qword_27F4FEA60;
  if (!qword_27F4FEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA60);
  }

  return result;
}

unint64_t sub_2527F9994()
{
  result = qword_27F4FEA68;
  if (!qword_27F4FEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA68);
  }

  return result;
}

unint64_t sub_2527F99EC()
{
  result = qword_27F4FEA70;
  if (!qword_27F4FEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA70);
  }

  return result;
}

unint64_t sub_2527F9A44()
{
  result = qword_27F4FEA78;
  if (!qword_27F4FEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA78);
  }

  return result;
}

uint64_t sub_2527F9A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED0000646E694B74 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002528E6180 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000030 && 0x80000002528E61C0 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x80000002528E6200 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000030 && 0x80000002528E6230 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000035 && 0x80000002528E6270 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000024 && 0x80000002528E62B0 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000024 && 0x80000002528E62E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2527F9E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61655373656D6F68 && a2 == 0xED00006465686372 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000746E75 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002528E61A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2527F9FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002528E6180 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_2528C1060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xED00006570795465 || (sub_2528C1060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2527FA2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (sub_2528BE9A0() || (v5 = v2[1], sub_2528BE9A0()) || (v6 = v2[2], sub_2528BE9A0()) || (v7 = v2[3], sub_2528BE9A0()) || (v8 = v2[4], sub_2528BE9A0()))
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for HomeEntity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t sub_2527FA3D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2527FEA40(a1, &v13 - v9);
  v11 = *a2;
  sub_2527FEA40(v10, v8);
  sub_2528BE7A0();
  return sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2527FEA40(a1, &v13 - v9);
  v11 = *(a2 + 16);
  sub_2527FEA40(v10, v8);
  sub_2528BE7A0();
  return sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2527FEA40(a1, &v13 - v9);
  v11 = *(a2 + 24);
  sub_2527FEA40(v10, v8);
  sub_2528BE7A0();
  return sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA6D0()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  sub_2527FE86C(&qword_27F4FEB18, &qword_27F4FCD30, &unk_2528CF3D0);
  sub_2528C0910();
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  sub_2527FE86C(&qword_27F4FEB20, &qword_27F4FCD38, &qword_2528C5BC8);
  sub_2528C0910();
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  sub_2527FE86C(&qword_27F4FEB28, &qword_27F4FCD40, &unk_2528CF3E0);
  sub_2528C0910();
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  sub_2527FE86C(&qword_27F4FEB30, &qword_27F4FCD48, &qword_2528C5C28);
  sub_2528C0910();
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  sub_2527FE86C(&qword_27F4FEB38, &qword_27F4FCD50, &qword_2528CF3F0);
  return sub_2528C0910();
}

uint64_t sub_2527FA89C(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[4] = v6;
  v3[5] = v7;

  return MEMORY[0x2822009F8](sub_2527FA940, 0, 0);
}

uint64_t sub_2527FA940()
{
  v1 = v0[3];
  sub_2527FA2A0(v0[4]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2527FA9F0;
  v3 = v0[4];
  v4 = v0[5];

  return sub_2528B5188(v4, v3);
}

uint64_t sub_2527FA9F0(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {
    sub_2527213D8(v5[4], &qword_27F4FC488, &unk_2528C3F80);

    return MEMORY[0x2822009F8](sub_2527FAB7C, 0, 0);
  }

  else
  {
    v6 = v5[2];
    sub_2527213D8(v5[4], &qword_27F4FC488, &unk_2528C3F80);
    *v6 = a1;

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_2527FAB7C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2527FABE0()
{
  sub_2528C1130();
  sub_2527FA6D0();
  return sub_2528C1180();
}

uint64_t sub_2527FAC24()
{
  sub_2528C1130();
  sub_2527FA6D0();
  return sub_2528C1180();
}

uint64_t sub_2527FAC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2527FDDAC(v5, v7) & 1;
}

uint64_t sub_2527FACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FAD48, 0, 0);
}

uint64_t sub_2527FAD48()
{
  v1 = v0[3];
  if (sub_2528BE9A0())
  {
    v2 = v0[4];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = type metadata accessor for HomeEntity(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2527FAE94;
  v7 = v0[4];
  v8 = v0[2];

  return sub_2527B0B0C(v8, v7);
}

uint64_t sub_2527FAE94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  sub_2527213D8(*(v4 + 32), &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FB014, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_2527FB014()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2527FB078(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return sub_2527FACAC(v4, v7, v5);
}

uint64_t sub_2527FB16C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  return sub_2528BE9B0() & 1;
}

uint64_t sub_2527FB1BC(_WORD *a1)
{
  *(v2 + 16) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 72) = *a1;

  return MEMORY[0x2822009F8](sub_2527FB264, 0, 0);
}

uint64_t sub_2527FB264()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_2528C3910;
  *(v4 + 32) = v1;
  sub_2527FB68C(v2);
  v5 = sub_2527FB7C4();
  *(v0 + 40) = v5;
  v6 = sub_2527FB888();
  *(v0 + 48) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_2527FB380;
  v8 = *(v0 + 24);

  return (sub_252836FA8)(v4, v8, v5, v6);
}

uint64_t sub_2527FB380(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[7];
  v6 = *v2;
  (*v2)[8] = v1;

  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  sub_2527213D8(v4[3], &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FB56C, 0, 0);
  }

  else
  {

    v10 = v6[1];

    return v10(a1);
  }
}

uint64_t sub_2527FB56C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2527FB5D0(uint64_t a1, _WORD *a2)
{
  *(v3 + 128) = a1;
  v5 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v5;
  *(v3 + 112) = v2[6];
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 136) = v8;
  *v8 = v3;
  v8[1] = sub_2527FECD4;

  return sub_2527FB1BC(a2);
}

uint64_t sub_2527FB68C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (sub_2528BE9A0() || (v5 = v2[3], sub_2528BE9A0()) || (v6 = v2[6], sub_2528BE9A0()) || (v7 = v2[9], sub_2528BE9A0()) || (v8 = v2[12], sub_2528BE9A0()))
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for HomeEntity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t sub_2527FB7C4()
{
  v1 = v0;
  v2 = v0[1];
  if (sub_2528BE9A0() || (v3 = v1[4], sub_2528BE9A0()) || (v4 = v1[7], sub_2528BE9A0()) || (v5 = v1[10], (result = sub_2528BE9A0()) != 0))
  {
    swift_getKeyPath();
    sub_2527FE944();
    sub_2528BE840();

    return v7;
  }

  return result;
}

uint64_t sub_2527FB888()
{
  v1 = v0;
  v2 = v0[2];
  if (sub_2528BE9A0() || (v3 = v1[5], sub_2528BE9A0()) || (v4 = v1[8], sub_2528BE9A0()) || (v5 = v1[11], sub_2528BE9A0()) || (v6 = v1[13], (result = sub_2528BE9A0()) != 0))
  {
    swift_getKeyPath();
    sub_2527FE8C0();
    sub_2528BE840();

    return v8;
  }

  return result;
}

uint64_t sub_2527FB968(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FBA14, 0, 0);
}

uint64_t sub_2527FBA14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 112))
  {
    sub_2527FB68C(*(v0 + 32));
    v3 = sub_2527FB7C4();
    *(v0 + 80) = v3;
    v4 = sub_2527FB888();
    *(v0 + 88) = v4;
    v9 = sub_252838B2C;
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_2527FBD50;
    v6 = *(v0 + 32);
  }

  else
  {
    sub_2527FB68C(*(v0 + 40));
    v3 = sub_2527FB7C4();
    *(v0 + 48) = v3;
    v4 = sub_2527FB888();
    *(v0 + 56) = v4;
    v9 = sub_252837E58;
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_2527FBB70;
    v6 = *(v0 + 40);
  }

  return v9(v1, v6, v3, v4);
}

uint64_t sub_2527FBB70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *v2;
  *(*v2 + 72) = v1;

  sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FBF30, 0, 0);
  }

  else
  {
    v11 = *(v4 + 32);
    v10 = *(v4 + 40);

    v12 = *(v9 + 8);

    return v12(a1);
  }
}

uint64_t sub_2527FBD50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 32);
  v9 = *v2;
  *(*v2 + 104) = v1;

  sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FBF9C, 0, 0);
  }

  else
  {
    v11 = *(v4 + 32);
    v10 = *(v4 + 40);

    v12 = *(v9 + 8);

    return v12(a1);
  }
}

uint64_t sub_2527FBF30()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2527FBF9C()
{
  v1 = v0[13];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2527FC008()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  sub_2527FE86C(&qword_27F4FEB18, &qword_27F4FCD30, &unk_2528CF3D0);
  sub_2528C0910();
  v3 = v0[1];
  sub_2528C0910();
  v4 = v0[2];
  sub_2528C0910();
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  sub_2527FE86C(&qword_27F4FEB20, &qword_27F4FCD38, &qword_2528C5BC8);
  sub_2528C0910();
  v6 = v0[4];
  sub_2528C0910();
  v7 = v0[5];
  sub_2528C0910();
  v8 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  sub_2527FE86C(&qword_27F4FEB28, &qword_27F4FCD40, &unk_2528CF3E0);
  sub_2528C0910();
  v9 = v0[7];
  sub_2528C0910();
  v10 = v0[8];
  sub_2528C0910();
  v11 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  sub_2527FE86C(&qword_27F4FEB30, &qword_27F4FCD48, &qword_2528C5C28);
  sub_2528C0910();
  v12 = v0[10];
  sub_2528C0910();
  v13 = v0[11];
  sub_2528C0910();
  v14 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  sub_2527FE86C(&qword_27F4FEB38, &qword_27F4FCD50, &qword_2528CF3F0);
  sub_2528C0910();
  v15 = v0[13];
  return sub_2528C0910();
}

uint64_t sub_2527FC2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v6;
  *(v3 + 112) = v2[6];
  v7 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 136) = v9;
  *v9 = v3;
  v9[1] = sub_2527FC3B0;

  return sub_2527FB968(v4, v5);
}

uint64_t sub_2527FC3B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 128) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2527FC4C0()
{
  sub_2528C1130();
  sub_2527FC008();
  return sub_2528C1180();
}

uint64_t sub_2527FC500()
{
  sub_2528C1130();
  sub_2527FC008();
  return sub_2528C1180();
}

uint64_t SceneEntityFromNameResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[5] = v6;
  v4[6] = v7;

  return MEMORY[0x2822009F8](sub_2527FC5E0, 0, 0);
}

uint64_t sub_2527FC5E0()
{
  v1 = v0[6];
  if (sub_2528BE9A0())
  {
    v2 = v0[5];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[5];
  v5 = type metadata accessor for HomeEntity(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2527FC72C;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_252746D74(v9, v7, v8);
}

uint64_t sub_2527FC72C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 40);
  v8 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {
    v6 = sub_2527FC9BC;
  }

  else
  {
    v6 = sub_2527FC870;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2527FC870()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for SceneEntity();
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for SceneEntity);

    v5 = 0;
  }

  else
  {
    v6 = v0[8];

    v3 = type metadata accessor for SceneEntity();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  v7 = v0[5];
  (*(v4 + 56))(v0[2], v5, 1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2527FC9BC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2527FCA20(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return SceneEntityFromNameResolver.resolve(from:context:)(a1, v4, v5);
}

uint64_t sub_2527FCACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *v5;
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_2527FE86C(a5, a3, a4);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527FCB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2527FE86C(a6, a4, a5);
  return sub_2528C0910();
}

uint64_t sub_2527FCBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v10 = *v6;
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2527FE86C(a6, a4, a5);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t SceneEntityFromSceneTypeResolver.resolve(from:context:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  *(v3 + 65) = *a2;
  v7 = *v2;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;

  return MEMORY[0x2822009F8](sub_2527FCD14, 0, 0);
}

uint64_t sub_2527FCD14()
{
  *(v0 + 64) = *(v0 + 65);
  v1 = *(v0 + 32);
  if (sub_2528BE9A0())
  {
    v2 = *(v0 + 24);
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 24);
  v5 = type metadata accessor for HomeEntity(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_2527FCE6C;
  v7 = *(v0 + 24);

  return sub_252747DF8((v0 + 64), v7);
}

uint64_t sub_2527FCE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {
    v6 = sub_2527FD0F8;
  }

  else
  {
    v6 = sub_2527FCFB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2527FCFB0()
{
  v1 = v0[6];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for SceneEntity();
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for SceneEntity);

    v5 = 0;
  }

  else
  {
    v6 = v0[6];

    v3 = type metadata accessor for SceneEntity();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  v7 = v0[3];
  (*(v4 + 56))(v0[2], v5, 1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2527FD0F8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t static SceneEntityFromSceneTypeResolver.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  return sub_2528BE9B0() & 1;
}

uint64_t sub_2527FD1B0()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  sub_2527FE86C(&qword_27F4FEA80, &qword_27F4FC450, &qword_2528C3F10);
  return sub_2528C0910();
}

uint64_t sub_2527FD234()
{
  v1 = *v0;
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  sub_2527FE86C(&qword_27F4FEA80, &qword_27F4FC450, &qword_2528C3F10);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527FD2C4(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25271F3AC;

  return SceneEntityFromSceneTypeResolver.resolve(from:context:)(a1, a2);
}

uint64_t ActivateSceneIntentHomeResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FD468, 0, 0);
}

uint64_t sub_2527FD468()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_2528BECA0();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_2527213D8(v0[5], &qword_27F4FC628, &qword_2528C4750);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_2527FD92C;
    v8 = v0[3];
    v7 = v0[4];

    return HomeEntityQuery.entities(matching:)(v8, v7);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    (*(v11 + 32))(v10, v0[5], v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v13 = *(v11 + 72);
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    v0[9] = v15;
    *(v15 + 16) = xmmword_2528C3910;
    (*(v11 + 16))(v15 + v14, v10, v12);
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_2527FD658;

    return HomeEntityQuery.entities(for:)(v15);
  }
}

uint64_t sub_2527FD658(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v6 = sub_2527FDB98;
  }

  else
  {
    v6 = sub_2527FD78C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2527FD78C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  if (*(v1 + 16))
  {
    v5 = v0[2];
    v6 = type metadata accessor for HomeEntity(0);
    v7 = *(v6 - 8);
    sub_2527FE034(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, type metadata accessor for HomeEntity);

    (*(v3 + 8))(v2, v4);
    v8 = 0;
  }

  else
  {
    v9 = v0[11];

    (*(v3 + 8))(v2, v4);
    v6 = type metadata accessor for HomeEntity(0);
    v7 = *(v6 - 8);
    v8 = 1;
  }

  v10 = v0[8];
  v11 = v0[5];
  (*(v7 + 56))(v0[2], v8, 1, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2527FD92C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_2527FDC20;
  }

  else
  {
    v5 = sub_2527FDA40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2527FDA40()
{
  v1 = v0[14];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for HomeEntity(0);
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for HomeEntity);

    v5 = 0;
  }

  else
  {
    v6 = v0[14];

    v3 = type metadata accessor for HomeEntity(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  v7 = v0[8];
  v8 = v0[5];
  (*(v4 + 56))(v0[2], v5, 1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2527FDB98()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2527FDC20()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2527FDCD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return ActivateSceneIntentHomeResolver.resolve(from:context:)(a1, v4, v5);
}

uint64_t sub_2527FDD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_2527FDDAC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  v4 = *a1;
  v5 = *a2;
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  v6 = a1[1];
  v7 = a2[1];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  v8 = a1[2];
  v9 = a2[2];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  v10 = a1[3];
  v11 = a2[3];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  v12 = a1[4];
  v13 = a2[4];
  return sub_2528BE9B0() & 1;
}

uint64_t sub_2527FDEA8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  v4 = *a1;
  v5 = *a2;
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  v10 = a1[3];
  v11 = a2[3];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a2[4];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[5];
  v15 = a2[5];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  v16 = a1[6];
  v17 = a2[6];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[7];
  v19 = a2[7];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[8];
  v21 = a2[8];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  v22 = a1[9];
  v23 = a2[9];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v24 = a1[10];
  v25 = a2[10];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v26 = a1[11];
  v27 = a2[11];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  v28 = a1[12];
  v29 = a2[12];
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  v30 = a1[13];
  v31 = a2[13];
  return sub_2528BE9B0() & 1;
}

uint64_t sub_2527FE034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2527FE0A0()
{
  result = qword_27F4FEA88;
  if (!qword_27F4FEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA88);
  }

  return result;
}

unint64_t sub_2527FE0F4()
{
  result = qword_27F4FEA90;
  if (!qword_27F4FEA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEA98, qword_2528CEC40);
    sub_25274690C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA90);
  }

  return result;
}

unint64_t sub_2527FE180()
{
  result = qword_27F4FEAA0;
  if (!qword_27F4FEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAA0);
  }

  return result;
}

unint64_t sub_2527FE1D8()
{
  result = qword_27F4FEAA8;
  if (!qword_27F4FEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAA8);
  }

  return result;
}

unint64_t sub_2527FE234()
{
  result = qword_27F4FEAB0;
  if (!qword_27F4FEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAB0);
  }

  return result;
}

unint64_t sub_2527FE28C()
{
  result = qword_27F4FEAB8;
  if (!qword_27F4FEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAB8);
  }

  return result;
}

unint64_t sub_2527FE2E0()
{
  result = qword_27F4FEAC0;
  if (!qword_27F4FEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAC0);
  }

  return result;
}

unint64_t sub_2527FE338()
{
  result = qword_27F4FEAC8;
  if (!qword_27F4FEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAC8);
  }

  return result;
}

unint64_t sub_2527FE390()
{
  result = qword_27F4FEAD0;
  if (!qword_27F4FEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAD0);
  }

  return result;
}

unint64_t sub_2527FE3E4()
{
  result = qword_27F4FEAD8;
  if (!qword_27F4FEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAD8);
  }

  return result;
}

unint64_t sub_2527FE43C()
{
  result = qword_27F4FEAE0;
  if (!qword_27F4FEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAE0);
  }

  return result;
}

unint64_t sub_2527FE494()
{
  result = qword_27F4FEAE8;
  if (!qword_27F4FEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAE8);
  }

  return result;
}

uint64_t sub_2527FE4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527FE534()
{
  result = qword_27F4FEAF0;
  if (!qword_27F4FEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAF0);
  }

  return result;
}

unint64_t sub_2527FE58C()
{
  result = qword_27F4FEAF8;
  if (!qword_27F4FEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAF8);
  }

  return result;
}

unint64_t sub_2527FE5E8()
{
  result = qword_27F4FEB00;
  if (!qword_27F4FEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB00);
  }

  return result;
}

unint64_t sub_2527FE640()
{
  result = qword_27F4FEB08;
  if (!qword_27F4FEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB08);
  }

  return result;
}

unint64_t sub_2527FE6E0()
{
  result = qword_27F4FEB10;
  if (!qword_27F4FEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB10);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_2527FE798(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2527FE7E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2527FE86C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2527FE8C0()
{
  result = qword_27F4FEB40;
  if (!qword_27F4FEB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEB48, &qword_2528CF428);
    sub_252756264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB40);
  }

  return result;
}

unint64_t sub_2527FE944()
{
  result = qword_27F4FEB50;
  if (!qword_27F4FEB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEB58, &qword_2528CF4F8);
    sub_25275636C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB50);
  }

  return result;
}

uint64_t keypath_get_44Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t keypath_set_45Tm(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_2527FEA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527FEAB0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v15 = sub_2528BE9C0();
  swift_getKeyPath();
  v14 = sub_2528BE9C0();
  swift_getKeyPath();
  v13 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v12 = sub_2528BE9C0();
  swift_getKeyPath();
  v11 = sub_2528BE9C0();
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  swift_getKeyPath();
  v4 = sub_2528BE9C0();
  swift_getKeyPath();
  v5 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v6 = sub_2528BE9C0();
  swift_getKeyPath();
  v7 = sub_2528BE9C0();
  swift_getKeyPath();
  v8 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v9 = sub_2528BE9C0();
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v13;
  a1[3] = v12;
  a1[4] = v11;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v5;
  a1[9] = v6;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v9;
  a1[13] = result;
  return result;
}

uint64_t sub_2527FED04()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FEB68);
  __swift_project_value_buffer(v0, qword_27F4FEB68);
  return sub_2528BE9D0();
}

uint64_t static DeviceType.SingleDeviceType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB840 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FEB68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527FEE10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEEB0, &qword_2528D0DF8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E8, &qword_2528D0E00);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CF890;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v20 = *(v0 + 48);
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v21 = *(v0 + 48);
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v22 = *(v0 + 48);
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v23 = *(v0 + 48);
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v24 = *(v0 + 48);
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v25 = *(v0 + 48);
  v4[20 * v1] = 20;
  sub_2528BE8C0();
  v26 = *(v0 + 48);
  v4[21 * v1] = 21;
  sub_2528BE8C0();
  v27 = *(v0 + 48);
  v4[22 * v1] = 22;
  sub_2528BE8C0();
  v28 = *(v0 + 48);
  v4[23 * v1] = 23;
  sub_2528BE8C0();
  v29 = *(v0 + 48);
  v4[24 * v1] = 24;
  sub_2528BE8C0();
  v30 = *(v0 + 48);
  v4[25 * v1] = 25;
  sub_2528BE8C0();
  v31 = *(v0 + 48);
  v4[26 * v1] = 26;
  sub_2528BE8C0();
  v32 = *(v0 + 48);
  v4[27 * v1] = 27;
  sub_2528BE8C0();
  v33 = *(v0 + 48);
  v4[28 * v1] = 28;
  sub_2528BE8C0();
  v34 = *(v0 + 48);
  v4[29 * v1] = 29;
  sub_2528BE8C0();
  v35 = *(v0 + 48);
  v4[30 * v1] = 30;
  sub_2528BE8C0();
  v36 = *(v0 + 48);
  v4[31 * v1] = 31;
  sub_2528BE8C0();
  v37 = *(v0 + 48);
  v4[32 * v1] = 32;
  sub_2528BE8C0();
  v38 = sub_252790AD0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FEB80 = v38;
  return result;
}

uint64_t static DeviceType.SingleDeviceType.caseDisplayRepresentations.getter()
{
  if (qword_27F4FB848 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2527FF5AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2528BF240();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D15650])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x277D15750])
  {
    v7 = 1;
  }

  else if (result == *MEMORY[0x277D156B0] || result == *MEMORY[0x277D157E8] || result == *MEMORY[0x277D157F0])
  {
    v7 = 3;
  }

  else if (result == *MEMORY[0x277D15798])
  {
    v7 = 4;
  }

  else if (result == *MEMORY[0x277D157B8])
  {
    v7 = 5;
  }

  else if (result == *MEMORY[0x277D156C0])
  {
    v7 = 6;
  }

  else if (result == *MEMORY[0x277D15828])
  {
    v7 = 7;
  }

  else
  {
    if (result == *MEMORY[0x277D15810])
    {
      goto LABEL_23;
    }

    if (result == *MEMORY[0x277D15868])
    {
      v7 = 9;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15760])
    {
      v7 = 10;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15698])
    {
      v7 = 11;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D157D8])
    {
      v7 = 12;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156F0])
    {
      v7 = 13;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15770])
    {
      v7 = 25;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15610])
    {
      v7 = 14;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15678])
    {
      v7 = 16;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D158D0])
    {
      v7 = 15;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156D8])
    {
      v7 = 17;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156A0])
    {
      v7 = 18;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15730])
    {
      v7 = 19;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15870])
    {
      v7 = 20;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15708])
    {
      v7 = 22;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15688])
    {
      v7 = 24;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15888])
    {
      v7 = 26;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15630])
    {
      v7 = 27;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15788])
    {
      v7 = 28;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15640])
    {
      v7 = 29;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15850])
    {
      v7 = 30;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15718])
    {
LABEL_23:
      v7 = 8;
    }

    else if (result == *MEMORY[0x277D15898])
    {
      v7 = 31;
    }

    else if (result == *MEMORY[0x277D15720])
    {
      v7 = 32;
    }

    else
    {
      result = (*(v5 + 8))(a1, v4);
      v7 = 33;
    }
  }

LABEL_70:
  *a2 = v7;
  return result;
}

uint64_t sub_2527FF9DC@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 0:
      v3 = MEMORY[0x277D15650];
      goto LABEL_32;
    case 1:
      v3 = MEMORY[0x277D15750];
      goto LABEL_32;
    case 4:
      v3 = MEMORY[0x277D15798];
      goto LABEL_32;
    case 5:
      v3 = MEMORY[0x277D157B8];
      goto LABEL_32;
    case 6:
      v3 = MEMORY[0x277D156C0];
      goto LABEL_32;
    case 7:
      v3 = MEMORY[0x277D15828];
      goto LABEL_32;
    case 8:
      v3 = MEMORY[0x277D15810];
      goto LABEL_32;
    case 9:
    case 0x17:
      v3 = MEMORY[0x277D15868];
      goto LABEL_32;
    case 0xA:
      v3 = MEMORY[0x277D15760];
      goto LABEL_32;
    case 0xB:
      v3 = MEMORY[0x277D15698];
      goto LABEL_32;
    case 0xC:
      v3 = MEMORY[0x277D157D8];
      goto LABEL_32;
    case 0xD:
      v3 = MEMORY[0x277D156F0];
      goto LABEL_32;
    case 0xE:
      v3 = MEMORY[0x277D15610];
      goto LABEL_32;
    case 0xF:
      v3 = MEMORY[0x277D158D0];
      goto LABEL_32;
    case 0x10:
      v3 = MEMORY[0x277D15678];
      goto LABEL_32;
    case 0x11:
      v3 = MEMORY[0x277D156D8];
      goto LABEL_32;
    case 0x12:
      v3 = MEMORY[0x277D156A0];
      goto LABEL_32;
    case 0x13:
      v3 = MEMORY[0x277D15730];
      goto LABEL_32;
    case 0x14:
      v3 = MEMORY[0x277D15870];
      goto LABEL_32;
    case 0x16:
      v3 = MEMORY[0x277D15708];
      goto LABEL_32;
    case 0x18:
      v3 = MEMORY[0x277D15688];
      goto LABEL_32;
    case 0x19:
      v3 = MEMORY[0x277D15770];
      goto LABEL_32;
    case 0x1A:
      v3 = MEMORY[0x277D15888];
      goto LABEL_32;
    case 0x1B:
      v3 = MEMORY[0x277D15630];
      goto LABEL_32;
    case 0x1C:
      v3 = MEMORY[0x277D15788];
      goto LABEL_32;
    case 0x1D:
      v3 = MEMORY[0x277D15640];
      goto LABEL_32;
    case 0x1E:
      v3 = MEMORY[0x277D15850];
      goto LABEL_32;
    case 0x1F:
      v3 = MEMORY[0x277D15898];
      goto LABEL_32;
    case 0x20:
      v3 = MEMORY[0x277D15720];
LABEL_32:
      v9 = *v3;
      v10 = sub_2528BF240();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a1, v9, v10);
      v5 = *(v12 + 56);
      v7 = a1;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_2528BF240();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a1;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

HomeAppIntents::DeviceType::SingleDeviceType_optional __swiftcall DeviceType.SingleDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C1070();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t DeviceType.SingleDeviceType.rawValue.getter()
{
  result = 0x6669727550726961;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 1919905636;
      break;
    case 8:
      result = 7233894;
      break;
    case 9:
      result = 0x746563756166;
      break;
    case 0xA:
      result = 0x6F44656761726167;
      break;
    case 0xB:
      result = 0x6F43726574616568;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0x79746964696D7568;
      break;
    case 0xE:
      result = 0x736E65536B61656CLL;
      break;
    case 0xF:
      result = 0x6C7562746867696CLL;
      break;
    case 0x10:
      v2 = 0x53746867696CLL;
      goto LABEL_12;
    case 0x11:
      result = 1801678700;
      break;
    case 0x12:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0x13:
      result = 0x636E61707563636FLL;
      break;
    case 0x14:
      result = 0x74656C74756FLL;
      break;
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 0x7974697275636573;
      break;
    case 0x17:
      result = 0x7265776F6873;
      break;
    case 0x18:
      v2 = 0x53656B6F6D73;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x19:
      result = 0x656C6B6E69727073;
      break;
    case 0x1A:
      result = 0x686374697773;
      break;
    case 0x1B:
      result = 0x69736976656C6574;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0x74736F6D72656874;
      break;
    case 0x1E:
      result = 0x65766C6176;
      break;
    case 0x1F:
      result = 0x776F646E6977;
      break;
    case 0x20:
      result = 0x6F43776F646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25280019C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = DeviceType.SingleDeviceType.rawValue.getter();
  v4 = v3;
  if (v2 == DeviceType.SingleDeviceType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2528C1060();
  }

  return v7 & 1;
}

uint64_t sub_252800238()
{
  v1 = *v0;
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528002A0()
{
  v2 = *v0;
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();
}

uint64_t sub_252800304()
{
  v1 = *v0;
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252800374@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceType.SingleDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252800470(uint64_t a1)
{
  v2 = sub_252804884();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2528004BC()
{
  if (qword_27F4FB848 != -1)
  {
    swift_once();
  }
}

uint64_t sub_252800518(uint64_t a1)
{
  v2 = sub_252804DDC();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t DeviceType.description.getter()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    sub_2528C0E70();
    if (v1 >> 14 == 1)
    {
      MEMORY[0x2530A80B0](0x547972616D697270, 0xED0000203A657079);
      sub_2528C0ED0();
      v2 = 0x6563697672657320;
      v3 = 0xEE00203A65707954;
    }

    else
    {
      MEMORY[0x2530A80B0](0x6C616E696769726FLL, 0xEE00203A65707954);
      sub_2528C0ED0();
      v3 = 0x80000002528E6310;
      v2 = 0xD000000000000012;
    }

    MEMORY[0x2530A80B0](v2, v3);
  }

  sub_2528C0ED0();
  return 0;
}

uint64_t sub_252800748()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  inited = swift_initStackObject();
  if ((v1 & 0xC000) == 0x8000)
  {
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = v1;
    *(inited + 34) = v1;
    *(inited + 36) = (v1 >> 8) & 0x3F;
  }

  else
  {
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v1;
  }

  v3 = sub_25274A250(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t static DeviceType.allIntentValueTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252804788();
  *(v0 + 32) = &type metadata for DeviceType.SingleTypeCase;
  *(v0 + 40) = v1;
  v2 = sub_2528047DC();
  *(v0 + 48) = &type metadata for DeviceType.ComponentTypeCase;
  *(v0 + 56) = v2;
  v3 = sub_252804830();
  *(v0 + 64) = &type metadata for DeviceType.UserDefinedTypeCase;
  *(v0 + 72) = v3;
  return v0;
}

unint64_t DeviceType.asIntentValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  if (v5 >> 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
    sub_2528BEC20();
    sub_252804884();
    v6 = sub_2528BE6E0();
    sub_2528BEC20();
    v7 = sub_2528BE6E0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    if (v5 >> 14 == 1)
    {
      a1[3] = &type metadata for DeviceType.ComponentTypeCase;
      result = sub_2528047DC();
    }

    else
    {
      a1[3] = &type metadata for DeviceType.UserDefinedTypeCase;
      result = sub_252804830();
    }

    a1[4] = result;
    *a1 = v6;
    a1[1] = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
    sub_2528BEC20();
    sub_252804884();
    v9 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for DeviceType.SingleTypeCase;
    result = sub_252804788();
    a1[4] = result;
    *a1 = v9;
  }

  return result;
}

uint64_t static DeviceType.defaultResolverSpecification.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBB0, &qword_2528CF8B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - v3;
  v5 = sub_2528048D8();
  MEMORY[0x2530A60E0](v5, &type metadata for DeviceType, &type metadata for DeviceType.SingleTypeCase.Resolver, v5);
  v6 = sub_25280492C();
  MEMORY[0x2530A60E0](v6, &type metadata for DeviceType, &type metadata for DeviceType.ComponentTypeCase.Resolver, v6);
  sub_2527FE2E0();
  sub_2528BEAA0();
  v8[0] = v5;
  v8[1] = &type metadata for DeviceType.SingleTypeCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_252800C60(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252800C84, 0, 0);
}

uint64_t sub_252800C84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252800CF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
  sub_2528BEC20();
  sub_252804884();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252800DB4(uint64_t a1)
{
  v2 = sub_25280677C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252800E00()
{
  sub_25280677C();

  return sub_2528BE550();
}

uint64_t sub_252800E70(uint64_t a1)
{
  v2 = sub_25280502C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252800EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  if (qword_27F4FB850 != -1)
  {
    swift_once();
  }

  v11 = sub_2528BE9F0();
  __swift_project_value_buffer(v11, qword_27F502A28);
  sub_2528BE9E0();
  (*(v9 + 56))(v7, 1, 1, v8);
  v12 = sub_2528BE8D0();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  return sub_2528BE900();
}

uint64_t sub_2528010CC(uint64_t a1)
{
  v2 = sub_25280527C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801144(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_25280116C, 0, 0);
}

uint64_t sub_25280116C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_2528BE6B0();
  v4 = *(v0 + 40);
  sub_2528BE6B0();
  *v3 = v4 | (*(v0 + 41) << 8) | 0x4000;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252801200(uint64_t a1)
{
  v2 = sub_252806728();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280124C()
{
  sub_252806728();

  return sub_2528BE550();
}

uint64_t sub_2528012BC(uint64_t a1)
{
  v2 = sub_252805420();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280132C(uint64_t a1)
{
  v2 = sub_252805670();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801378()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502A58);
  __swift_project_value_buffer(v0, qword_27F502A58);
  return sub_2528BE9D0();
}

uint64_t sub_2528013DC(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_252801404, 0, 0);
}

uint64_t sub_252801404()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_2528BE6B0();
  v4 = *(v0 + 40);
  sub_2528BE6B0();
  *v3 = v4 | (*(v0 + 41) << 8) | 0x8000;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252801498@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
  sub_2528BEC20();
  sub_252804884();
  v4 = sub_2528BE6E0();
  sub_2528BEC20();
  result = sub_2528BE6E0();
  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_252801584(uint64_t a1)
{
  v2 = sub_2528066D4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2528015D0()
{
  sub_2528066D4();

  return sub_2528BE550();
}

uint64_t sub_252801640(uint64_t a1)
{
  v2 = sub_252805814();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528016B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_2528BEC40();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  if (*a3 != -1)
  {
    swift_once();
  }

  v17 = sub_2528BE9F0();
  __swift_project_value_buffer(v17, a4);
  sub_2528BE9E0();
  (*(v15 + 56))(v13, 1, 1, v14);
  v18 = sub_2528BE8D0();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  return sub_2528BE900();
}

uint64_t sub_2528018BC(uint64_t a1)
{
  v2 = sub_252805A64();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801908()
{
  v1 = 0x6E656E6F706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6966654472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7954656C676E6973;
  }
}

uint64_t sub_252801980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252806454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2528019B4(uint64_t a1)
{
  v2 = sub_252804980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2528019F0(uint64_t a1)
{
  v2 = sub_252804980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801A2C()
{
  if (*v0)
  {
    result = 0x6E656E6F706D6F63;
  }

  else
  {
    result = 0x657079546E69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_252801A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546E69616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2528C1060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006570795474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2528C1060();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252801B58(uint64_t a1)
{
  v2 = sub_252804A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801B94(uint64_t a1)
{
  v2 = sub_252804A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2528C1060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252801C68(uint64_t a1)
{
  v2 = sub_252804AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801CA4(uint64_t a1)
{
  v2 = sub_252804AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801CE0()
{
  if (*v0)
  {
    result = 0x6966654472657375;
  }

  else
  {
    result = 0x6C616E696769726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_252801D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E696769726FLL && a2 == 0xEC00000065707954;
  if (v6 || (sub_2528C1060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF6570795464656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2528C1060();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252801E18(uint64_t a1)
{
  v2 = sub_2528049D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801E54(uint64_t a1)
{
  v2 = sub_2528049D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBC8, &qword_2528CF8B8);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBD0, &qword_2528CF8C0);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBD8, &qword_2528CF8C8);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBE0, &qword_2528CF8D0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_252804980();
  sub_2528C11A0();
  if (v19 >> 14)
  {
    if (v19 >> 14 == 1)
    {
      v42 = 1;
      sub_252804A7C();
      v21 = v15;
      sub_2528C0F90();
      v41 = v19;
      v40 = 0;
      sub_252804A28();
      v22 = v30;
      v23 = v34;
      sub_2528C1020();
      if (!v23)
      {
        v39 = BYTE1(v19) & 0x3F;
        v38 = 1;
        sub_2528C1020();
      }

      v24 = v29;
    }

    else
    {
      v47 = 2;
      sub_2528049D4();
      v10 = v31;
      v21 = v15;
      sub_2528C0F90();
      v46 = v19;
      v45 = 0;
      sub_252804A28();
      v22 = v33;
      v26 = v34;
      sub_2528C1020();
      if (!v26)
      {
        v44 = BYTE1(v19) & 0x3F;
        v43 = 1;
        sub_2528C1020();
      }

      v24 = v32;
    }

    (*(v24 + 8))(v10, v22);
    return (*(v35 + 8))(v18, v21);
  }

  else
  {
    v37 = 0;
    sub_252804AD0();
    sub_2528C0F90();
    v36 = v19;
    sub_252804A28();
    sub_2528C1020();
    (*(v28 + 8))(v14, v11);
    return (*(v35 + 8))(v18, v15);
  }
}

uint64_t DeviceType.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC10, &qword_2528CF8D8);
  v49 = *(v46 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  v51 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC18, &qword_2528CF8E0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC20, &qword_2528CF8E8);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC28, &qword_2528CF8F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_252804980();
  v21 = v52;
  sub_2528C1190();
  if (!v21)
  {
    v44 = v10;
    v22 = v51;
    v52 = v15;
    v23 = sub_2528C0F80();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
    {
      v27 = sub_2528C0EA0();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC30, &qword_2528CF8F8) + 48);
      *v29 = &type metadata for DeviceType;
      sub_2528C0F60();
      sub_2528C0E90();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v52 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*(v23 + 32))
      {
        v55 = 0;
        sub_252804AD0();
        v34 = v13;
        sub_2528C0F50();
        sub_252804B24();
        v35 = v44;
        sub_2528C0F70();
        (*(v45 + 8))(v34, v35);
        (*(v52 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v42 = v54;
        goto LABEL_15;
      }

      if (v25 == 1)
      {
        v60 = 1;
        sub_252804A7C();
        v32 = v9;
        sub_2528C0F50();
        v58 = 0;
        sub_252804B24();
        v33 = v47;
        sub_2528C0F70();
        v41 = v59;
        v56 = 1;
        sub_2528C0F70();
        (*(v48 + 8))(v32, v33);
        (*(v52 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v42 = v41 | (v57 << 8) | 0x4000;
LABEL_15:
        *v50 = v42;
        return __swift_destroy_boxed_opaque_existential_0Tm(v53);
      }

      v48 = v23;
      v65 = 2;
      sub_2528049D4();
      sub_2528C0F50();
      v36 = v50;
      v63 = 0;
      sub_252804B24();
      v37 = v46;
      v38 = v22;
      sub_2528C0F70();
      v39 = v52;
      v40 = v64;
      v61 = 1;
      sub_2528C0F70();
      (*(v49 + 8))(v38, v37);
      (*(v39 + 8))(v18, v14);
      swift_unknownObjectRelease();
      *v36 = v40 | (v62 << 8) | 0x8000;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v53);
}

uint64_t sub_252802A90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252804788();
  *(v0 + 32) = &type metadata for DeviceType.SingleTypeCase;
  *(v0 + 40) = v1;
  v2 = sub_2528047DC();
  *(v0 + 48) = &type metadata for DeviceType.ComponentTypeCase;
  *(v0 + 56) = v2;
  v3 = sub_252804830();
  *(v0 + 64) = &type metadata for DeviceType.UserDefinedTypeCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t DeviceType.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      v2 = DeviceType.SingleDeviceType.rawValue.getter();
      v4 = v3;
      if (v2 == DeviceType.SingleDeviceType.rawValue.getter() && v4 == v5)
      {
LABEL_5:

        goto LABEL_14;
      }

      v10 = sub_2528C1060();

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = DeviceType.SingleDeviceType.rawValue.getter();
      v8 = v7;
      if (v6 == DeviceType.SingleDeviceType.rawValue.getter() && v8 == v9)
      {
        goto LABEL_5;
      }

      v11 = sub_2528C1060();

      if (v11)
      {
        goto LABEL_14;
      }
    }

    DeviceType.SingleDeviceType.rawValue.getter();
    sub_2528C0A40();
  }

LABEL_14:
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();
}

uint64_t DeviceType.hashValue.getter()
{
  v2 = *v0;
  sub_2528C1130();
  DeviceType.hash(into:)();
  return sub_2528C1180();
}

uint64_t sub_252802D8C()
{
  v2 = *v0;
  sub_2528C1130();
  DeviceType.hash(into:)();
  return sub_2528C1180();
}

uint64_t sub_252802DDC()
{
  v2 = *v0;
  sub_2528C1130();
  DeviceType.hash(into:)();
  return sub_2528C1180();
}

uint64_t sub_252802E28(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x203A73656D616ELL;
  }

  else
  {
    v2 = 0x203A736469;
  }

  v5 = v2;
  v3 = MEMORY[0x2530A81A0](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v3);

  return v5;
}

uint64_t sub_252802EAC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return sub_252804258(v4, v5);
}

uint64_t sub_252802EDC()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84FA0];
  if (v1 <= 20)
  {
    if (v1 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v13 = sub_2528BFCF0();
      v14 = *(v13 - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2528C35E0;
      v18 = v17 + v16;
      v19 = *(v14 + 104);
      v19(v18, *MEMORY[0x277D15F00], v13);
      v19(v18 + v15, *MEMORY[0x277D15ED0], v13);
      v19(v18 + 2 * v15, *MEMORY[0x277D15F18], v13);
      v19(v18 + 3 * v15, *MEMORY[0x277D15F28], v13);
      v2 = sub_252749AA8(v17);
      swift_setDeallocating();
      goto LABEL_16;
    }

    if (v1 != 17)
    {
      if (v1 == 20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
        v3 = sub_2528BFCF0();
        v4 = *(v3 - 8);
        v5 = *(v4 + 72);
        v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_2528C17E0;
        v8 = v7 + v6;
        v9 = *(v4 + 104);
        v9(v8, *MEMORY[0x277D15F38], v3);
        v10 = MEMORY[0x277D15EF0];
LABEL_10:
        v9(v8 + v5, *v10, v3);
        v2 = sub_252749AA8(v7);
        swift_setDeallocating();
LABEL_16:
        swift_arrayDestroy();
        goto LABEL_17;
      }

      return v2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
    v20 = sub_2528BFCF0();
    v21 = *(v20 - 8);
    v27 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    v25 = v24;
    *(v24 + 16) = xmmword_2528C3910;
    v26 = MEMORY[0x277D15F30];
LABEL_14:
    (*(v21 + 104))(v24 + v23, *v26, v20);
    v2 = sub_252749AA8(v25);
    swift_setDeallocating();
    (*(v21 + 8))(v25 + v23, v20);
LABEL_17:
    swift_deallocClassInstance();
    return v2;
  }

  switch(v1)
  {
    case 21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v20 = sub_2528BFCF0();
      v21 = *(v20 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      v25 = v24;
      *(v24 + 16) = xmmword_2528C3910;
      v26 = MEMORY[0x277D15EE0];
      goto LABEL_14;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v28 = sub_2528BFCF0();
      v29 = *(v28 - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2528C17D0;
      v33 = v32 + v31;
      v34 = *(v29 + 104);
      v34(v33, *MEMORY[0x277D15EF8], v28);
      v34(v33 + v30, *MEMORY[0x277D15F08], v28);
      v34(v33 + 2 * v30, *MEMORY[0x277D15F10], v28);
      v2 = sub_252749AA8(v32);
      swift_setDeallocating();
      goto LABEL_16;
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v3 = sub_2528BFCF0();
      v11 = *(v3 - 8);
      v5 = *(v11 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2528C17E0;
      v8 = v7 + v12;
      v9 = *(v11 + 104);
      v9(v8, *MEMORY[0x277D15ED8], v3);
      v10 = MEMORY[0x277D15F20];
      goto LABEL_10;
  }

  return v2;
}

unint64_t sub_252803524@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = sub_2528BEC40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE80, &qword_2528D0DF0);

  sub_2528BEC20();
  v6 = sub_2528BE730();
  sub_2528BE6C0();
  if (a1)
  {
    v7 = &type metadata for DeviceEntityResolverInputType.NamesCase;
    result = sub_25280662C();
  }

  else
  {
    v7 = &type metadata for DeviceEntityResolverInputType.IdsCase;
    result = sub_252806680();
  }

  a2[3] = v7;
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_252803628()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE68, &qword_2528D0DE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - v3;
  v5 = sub_252806584();
  MEMORY[0x2530A60E0](v5, &type metadata for DeviceEntityResolverInputType, &type metadata for DeviceEntityResolverInputType.IdsCase.Resolver, v5);
  v6 = sub_2528065D8();
  MEMORY[0x2530A60E0](v6, &type metadata for DeviceEntityResolverInputType, &type metadata for DeviceEntityResolverInputType.NamesCase.Resolver, v6);
  sub_2527FE3E4();
  sub_2528BEAA0();
  v8[0] = v5;
  v8[1] = &type metadata for DeviceEntityResolverInputType.IdsCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2528037B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2528037DC, 0, 0);
}

uint64_t sub_2528037DC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_252803850(uint64_t a1)
{
  v2 = sub_25280704C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280389C()
{
  sub_25280704C();

  return sub_2528BE550();
}

uint64_t sub_252803928(uint64_t a1)
{
  v2 = sub_252806B14();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252803974(uint64_t a1)
{
  v2 = sub_2528068C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2528039DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE80, &qword_2528D0DF0);
  sub_2528BEC20();
  result = sub_2528BE730();
  *a1 = result;
  return result;
}

uint64_t sub_252803A84(uint64_t a1)
{
  v2 = sub_252806FF8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252803AD0()
{
  sub_252806FF8();

  return sub_2528BE550();
}

uint64_t sub_252803B5C(uint64_t a1)
{
  v2 = sub_252806E6C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252803BA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_252803D70(uint64_t a1)
{
  v2 = sub_252806C1C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252803DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17E0;
  v1 = sub_252806680();
  *(v0 + 32) = &type metadata for DeviceEntityResolverInputType.IdsCase;
  *(v0 + 40) = v1;
  v2 = sub_25280662C();
  *(v0 + 48) = &type metadata for DeviceEntityResolverInputType.NamesCase;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_252803E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xE600000000000000;
      v8 = 0x6D7575636176;
      switch(*v3)
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7368557;
          break;
        case 2:
          v8 = 0x68546D7575636176;
          v7 = 0xED0000706F4D6E65;
          break;
        case 3:
          v8 = 0x61656C4370656564;
          v7 = 0xE90000000000006ELL;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1869903201;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x7465697571;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x6B63697571;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v7 = 0xE900000000000079;
          v8 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F697461636176;
          break;
        case 0xA:
          v7 = 0xE500000000000000;
          v8 = 0x746867696ELL;
          break;
        case 0xB:
          v7 = 0xE300000000000000;
          v8 = 7954788;
          break;
        case 0xC:
          v7 = 0xE300000000000000;
          v8 = 7235949;
          break;
        case 0xD:
          v7 = 0xE300000000000000;
          v8 = 7889261;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6D7575636176;
      switch(*v4)
      {
        case 1:
          v9 = 0xE300000000000000;
          if (v8 == 7368557)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xED0000706F4D6E65;
          if (v8 != 0x68546D7575636176)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 3:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x61656C4370656564)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1869903201)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 5:
          v9 = 0xE500000000000000;
          if (v8 != 0x7465697571)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 6:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63697571)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 7:
          v9 = 0xE800000000000000;
          if (v8 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 8:
          v9 = 0xE900000000000079;
          if (v8 != 0x6772656E45776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 9:
          v9 = 0xE800000000000000;
          if (v8 != 0x6E6F697461636176)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xA:
          v9 = 0xE500000000000000;
          v10 = 0x746867696ELL;
          goto LABEL_45;
        case 0xB:
          v9 = 0xE300000000000000;
          if (v8 != 7954788)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xC:
          v9 = 0xE300000000000000;
          if (v8 != 7235949)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xD:
          v9 = 0xE300000000000000;
          if (v8 != 7889261)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        default:
LABEL_45:
          if (v8 != v10)
          {
            goto LABEL_5;
          }

LABEL_46:
          if (v7 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_2528C1060();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_2528041FC(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252804258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2528C1060() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2528042E8(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 14))
  {
    if (!(v3 >> 14))
    {
      goto LABEL_38;
    }

    v8 = *a2;
    if (v3 >> 14 == 1)
    {
LABEL_10:
      v9 = DeviceType.SingleDeviceType.rawValue.getter();
      v11 = v10;
      if (v9 == DeviceType.SingleDeviceType.rawValue.getter() && v11 == v12)
      {
        goto LABEL_32;
      }

      v14 = sub_2528C1060();

      if (v14)
      {
        goto LABEL_38;
      }

      goto LABEL_43;
    }

LABEL_26:
    v24 = DeviceType.SingleDeviceType.rawValue.getter();
    v26 = v25;
    if (v24 == DeviceType.SingleDeviceType.rawValue.getter() && v26 == v27)
    {
      goto LABEL_32;
    }

    v28 = sub_2528C1060();

    if (v28)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  if (v2 >> 14 != 1)
  {
    if (v3 >> 14)
    {
      if (v3 >> 14 != 1)
      {
        v29 = DeviceType.SingleDeviceType.rawValue.getter();
        v31 = v30;
        if (v29 == DeviceType.SingleDeviceType.rawValue.getter() && v31 == v32)
        {
          goto LABEL_32;
        }

        v35 = sub_2528C1060();

        if (v35)
        {
          goto LABEL_38;
        }

        goto LABEL_43;
      }

      v13 = *a2;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (!(v3 >> 14))
  {
    goto LABEL_10;
  }

  if (v3 >> 14 != 1)
  {
LABEL_19:
    v15 = DeviceType.SingleDeviceType.rawValue.getter();
    v17 = v16;
    if (v15 == DeviceType.SingleDeviceType.rawValue.getter() && v17 == v18)
    {
    }

    else
    {
      v19 = sub_2528C1060();

      if ((v19 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v20 = DeviceType.SingleDeviceType.rawValue.getter();
    v22 = v21;
    if (v20 == DeviceType.SingleDeviceType.rawValue.getter() && v22 == v23)
    {
      goto LABEL_32;
    }

    v33 = sub_2528C1060();

    if (v33)
    {
      goto LABEL_38;
    }

LABEL_43:
    v40 = 0;
    return v40 & 1;
  }

  v4 = DeviceType.SingleDeviceType.rawValue.getter();
  v6 = v5;
  if (v4 == DeviceType.SingleDeviceType.rawValue.getter() && v6 == v7)
  {
LABEL_32:

    goto LABEL_38;
  }

  v34 = sub_2528C1060();

  if ((v34 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  v36 = DeviceType.SingleDeviceType.rawValue.getter();
  v38 = v37;
  if (v36 == DeviceType.SingleDeviceType.rawValue.getter() && v38 == v39)
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_2528C1060();
  }

  return v40 & 1;
}

unint64_t sub_252804788()
{
  result = qword_27F4FEB88;
  if (!qword_27F4FEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB88);
  }

  return result;
}

unint64_t sub_2528047DC()
{
  result = qword_27F4FEB90;
  if (!qword_27F4FEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB90);
  }

  return result;
}

unint64_t sub_252804830()
{
  result = qword_27F4FEB98;
  if (!qword_27F4FEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB98);
  }

  return result;
}

unint64_t sub_252804884()
{
  result = qword_27F4FEBA8;
  if (!qword_27F4FEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBA8);
  }

  return result;
}

unint64_t sub_2528048D8()
{
  result = qword_27F4FEBB8;
  if (!qword_27F4FEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBB8);
  }

  return result;
}

unint64_t sub_25280492C()
{
  result = qword_27F4FEBC0;
  if (!qword_27F4FEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBC0);
  }

  return result;
}

unint64_t sub_252804980()
{
  result = qword_27F4FEBE8;
  if (!qword_27F4FEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBE8);
  }

  return result;
}

unint64_t sub_2528049D4()
{
  result = qword_27F4FEBF0;
  if (!qword_27F4FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBF0);
  }

  return result;
}

unint64_t sub_252804A28()
{
  result = qword_27F4FEBF8;
  if (!qword_27F4FEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBF8);
  }

  return result;
}

unint64_t sub_252804A7C()
{
  result = qword_27F4FEC00;
  if (!qword_27F4FEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC00);
  }

  return result;
}

unint64_t sub_252804AD0()
{
  result = qword_27F4FEC08;
  if (!qword_27F4FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC08);
  }

  return result;
}

unint64_t sub_252804B24()
{
  result = qword_27F4FEC38;
  if (!qword_27F4FEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC38);
  }

  return result;
}

unint64_t sub_252804B7C()
{
  result = qword_27F4FEC40;
  if (!qword_27F4FEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC40);
  }

  return result;
}

unint64_t sub_252804BD4()
{
  result = qword_27F4FEC48;
  if (!qword_27F4FEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC48);
  }

  return result;
}

unint64_t sub_252804C2C()
{
  result = qword_27F4FEC50;
  if (!qword_27F4FEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC50);
  }

  return result;
}

unint64_t sub_252804C84()
{
  result = qword_27F4FEC58;
  if (!qword_27F4FEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC58);
  }

  return result;
}

unint64_t sub_252804CDC()
{
  result = qword_27F4FEC60;
  if (!qword_27F4FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC60);
  }

  return result;
}

unint64_t sub_252804D30()
{
  result = qword_27F4FEC68;
  if (!qword_27F4FEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC68);
  }

  return result;
}

unint64_t sub_252804D84()
{
  result = qword_27F4FEC70;
  if (!qword_27F4FEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC70);
  }

  return result;
}

unint64_t sub_252804DDC()
{
  result = qword_27F4FEC78;
  if (!qword_27F4FEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC78);
  }

  return result;
}

unint64_t sub_252804E84()
{
  result = qword_27F4FEC80;
  if (!qword_27F4FEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC80);
  }

  return result;
}

unint64_t sub_252804EDC()
{
  result = qword_27F4FEC88;
  if (!qword_27F4FEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC88);
  }

  return result;
}

unint64_t sub_252804F7C()
{
  result = qword_27F4FECA0;
  if (!qword_27F4FECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECA0);
  }

  return result;
}

unint64_t sub_252804FD4()
{
  result = qword_27F4FECA8;
  if (!qword_27F4FECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECA8);
  }

  return result;
}

unint64_t sub_25280502C()
{
  result = qword_27F4FECB0;
  if (!qword_27F4FECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECB0);
  }

  return result;
}

unint64_t sub_252805084()
{
  result = qword_27F4FECB8;
  if (!qword_27F4FECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECB8);
  }

  return result;
}

unint64_t sub_2528050DC()
{
  result = qword_27F4FECC0;
  if (!qword_27F4FECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECC0);
  }

  return result;
}

unint64_t sub_252805134()
{
  result = qword_27F4FECC8;
  if (!qword_27F4FECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECC8);
  }

  return result;
}

unint64_t sub_2528051D0()
{
  result = qword_27F4FECE0;
  if (!qword_27F4FECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECE0);
  }

  return result;
}

unint64_t sub_252805224()
{
  result = qword_27F4FECE8;
  if (!qword_27F4FECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECE8);
  }

  return result;
}

unint64_t sub_25280527C()
{
  result = qword_27F4FECF0;
  if (!qword_27F4FECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECF0);
  }

  return result;
}

unint64_t sub_252805318()
{
  result = qword_27F4FED08;
  if (!qword_27F4FED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED08);
  }

  return result;
}

unint64_t sub_252805370()
{
  result = qword_27F4FED10;
  if (!qword_27F4FED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED10);
  }

  return result;
}

unint64_t sub_2528053C8()
{
  result = qword_27F4FED18;
  if (!qword_27F4FED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED18);
  }

  return result;
}

unint64_t sub_252805420()
{
  result = qword_27F4FED20;
  if (!qword_27F4FED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED20);
  }

  return result;
}

unint64_t sub_252805478()
{
  result = qword_27F4FED28;
  if (!qword_27F4FED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED28);
  }

  return result;
}

unint64_t sub_2528054D0()
{
  result = qword_27F4FED30;
  if (!qword_27F4FED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED30);
  }

  return result;
}

unint64_t sub_252805528()
{
  result = qword_27F4FED38;
  if (!qword_27F4FED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED38);
  }

  return result;
}

unint64_t sub_2528055C4()
{
  result = qword_27F4FED50;
  if (!qword_27F4FED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED50);
  }

  return result;
}

unint64_t sub_252805618()
{
  result = qword_27F4FED58;
  if (!qword_27F4FED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED58);
  }

  return result;
}

unint64_t sub_252805670()
{
  result = qword_27F4FED60;
  if (!qword_27F4FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED60);
  }

  return result;
}

unint64_t sub_25280570C()
{
  result = qword_27F4FED78;
  if (!qword_27F4FED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED78);
  }

  return result;
}

unint64_t sub_252805764()
{
  result = qword_27F4FED80;
  if (!qword_27F4FED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED80);
  }

  return result;
}

unint64_t sub_2528057BC()
{
  result = qword_27F4FED88;
  if (!qword_27F4FED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED88);
  }

  return result;
}

unint64_t sub_252805814()
{
  result = qword_27F4FED90;
  if (!qword_27F4FED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED90);
  }

  return result;
}

unint64_t sub_25280586C()
{
  result = qword_27F4FED98;
  if (!qword_27F4FED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED98);
  }

  return result;
}

unint64_t sub_2528058C4()
{
  result = qword_27F4FEDA0;
  if (!qword_27F4FEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDA0);
  }

  return result;
}

unint64_t sub_25280591C()
{
  result = qword_27F4FEDA8;
  if (!qword_27F4FEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDA8);
  }

  return result;
}

unint64_t sub_2528059B8()
{
  result = qword_27F4FEDC0;
  if (!qword_27F4FEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDC0);
  }

  return result;
}

unint64_t sub_252805A0C()
{
  result = qword_27F4FEDC8;
  if (!qword_27F4FEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDC8);
  }

  return result;
}

unint64_t sub_252805A64()
{
  result = qword_27F4FEDD0;
  if (!qword_27F4FEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDD0);
  }

  return result;
}

unint64_t sub_252805B00()
{
  result = qword_27F4FEDE8;
  if (!qword_27F4FEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDE8);
  }

  return result;
}

unint64_t sub_252805B74()
{
  result = qword_27F4FEDF0;
  if (!qword_27F4FEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 65522 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65522 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65522;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xC | (*a1 >> 14)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65522 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65522 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 16) + 1;
    *result = a2 - 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 16 * (-a2 & 0xC) - (a2 << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType.SingleDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceType.SingleDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252805EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252805F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_25280601C()
{
  result = qword_27F4FEE08;
  if (!qword_27F4FEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE08);
  }

  return result;
}

unint64_t sub_252806074()
{
  result = qword_27F4FEE10;
  if (!qword_27F4FEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE10);
  }

  return result;
}

unint64_t sub_2528060CC()
{
  result = qword_27F4FEE18;
  if (!qword_27F4FEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE18);
  }

  return result;
}

unint64_t sub_252806124()
{
  result = qword_27F4FEE20;
  if (!qword_27F4FEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE20);
  }

  return result;
}

unint64_t sub_252806198()
{
  result = qword_27F4FEE28;
  if (!qword_27F4FEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE28);
  }

  return result;
}

unint64_t sub_2528061F0()
{
  result = qword_27F4FEE30;
  if (!qword_27F4FEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE30);
  }

  return result;
}

unint64_t sub_252806248()
{
  result = qword_27F4FEE38;
  if (!qword_27F4FEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE38);
  }

  return result;
}

unint64_t sub_2528062A0()
{
  result = qword_27F4FEE40;
  if (!qword_27F4FEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE40);
  }

  return result;
}

unint64_t sub_2528062F8()
{
  result = qword_27F4FEE48;
  if (!qword_27F4FEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE48);
  }

  return result;
}

unint64_t sub_252806350()
{
  result = qword_27F4FEE50;
  if (!qword_27F4FEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE50);
  }

  return result;
}

unint64_t sub_2528063A8()
{
  result = qword_27F4FEE58;
  if (!qword_27F4FEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE58);
  }

  return result;
}

unint64_t sub_252806400()
{
  result = qword_27F4FEE60;
  if (!qword_27F4FEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE60);
  }

  return result;
}

uint64_t sub_252806454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656C676E6973 && a2 == 0xEA00000000006570;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006570795474 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF6570795464656ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_252806584()
{
  result = qword_27F4FEE70;
  if (!qword_27F4FEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE70);
  }

  return result;
}

unint64_t sub_2528065D8()
{
  result = qword_27F4FEE78;
  if (!qword_27F4FEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE78);
  }

  return result;
}

unint64_t sub_25280662C()
{
  result = qword_27F4FEE88;
  if (!qword_27F4FEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE88);
  }

  return result;
}

unint64_t sub_252806680()
{
  result = qword_27F4FEE90;
  if (!qword_27F4FEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE90);
  }

  return result;
}

unint64_t sub_2528066D4()
{
  result = qword_27F4FEE98;
  if (!qword_27F4FEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE98);
  }

  return result;
}

unint64_t sub_252806728()
{
  result = qword_27F4FEEA0;
  if (!qword_27F4FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEA0);
  }

  return result;
}

unint64_t sub_25280677C()
{
  result = qword_27F4FEEA8;
  if (!qword_27F4FEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEA8);
  }

  return result;
}

unint64_t sub_252806814()
{
  result = qword_27F4FEEC8;
  if (!qword_27F4FEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEC8);
  }

  return result;
}

unint64_t sub_25280686C()
{
  result = qword_27F4FEED0;
  if (!qword_27F4FEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEED0);
  }

  return result;
}

unint64_t sub_2528068C4()
{
  result = qword_27F4FEED8;
  if (!qword_27F4FEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEED8);
  }

  return result;
}

unint64_t sub_252806918()
{
  result = qword_27F4FEEE0;
  if (!qword_27F4FEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEE0);
  }

  return result;
}

unint64_t sub_252806970()
{
  result = qword_27F4FEEE8;
  if (!qword_27F4FEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEE8);
  }

  return result;
}

unint64_t sub_2528069C8()
{
  result = qword_27F4FEEF0;
  if (!qword_27F4FEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEF0);
  }

  return result;
}

unint64_t sub_252806A20()
{
  result = qword_27F4FEEF8;
  if (!qword_27F4FEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEF8);
  }

  return result;
}

unint64_t sub_252806A78()
{
  result = qword_27F4FEF00;
  if (!qword_27F4FEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF00);
  }

  return result;
}

unint64_t sub_252806B14()
{
  result = qword_27F4FEF18;
  if (!qword_27F4FEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF18);
  }

  return result;
}

unint64_t sub_252806B6C()
{
  result = qword_27F4FEF20;
  if (!qword_27F4FEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF20);
  }

  return result;
}

unint64_t sub_252806BC4()
{
  result = qword_27F4FEF28;
  if (!qword_27F4FEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF28);
  }

  return result;
}

unint64_t sub_252806C1C()
{
  result = qword_27F4FEF30;
  if (!qword_27F4FEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF30);
  }

  return result;
}

unint64_t sub_252806C70()
{
  result = qword_27F4FEF38;
  if (!qword_27F4FEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF38);
  }

  return result;
}

unint64_t sub_252806CC8()
{
  result = qword_27F4FEF40;
  if (!qword_27F4FEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF40);
  }

  return result;
}

unint64_t sub_252806D20()
{
  result = qword_27F4FEF48;
  if (!qword_27F4FEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF48);
  }

  return result;
}

unint64_t sub_252806D78()
{
  result = qword_27F4FEF50;
  if (!qword_27F4FEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF50);
  }

  return result;
}

unint64_t sub_252806DD0()
{
  result = qword_27F4FEF58;
  if (!qword_27F4FEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF58);
  }

  return result;
}

unint64_t sub_252806E6C()
{
  result = qword_27F4FEF70;
  if (!qword_27F4FEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF70);
  }

  return result;
}

unint64_t sub_252806F4C()
{
  result = qword_27F4FEF98;
  if (!qword_27F4FEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF98);
  }

  return result;
}

unint64_t sub_252806FA4()
{
  result = qword_27F4FEFA0;
  if (!qword_27F4FEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFA0);
  }

  return result;
}

unint64_t sub_252806FF8()
{
  result = qword_27F4FEFA8;
  if (!qword_27F4FEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFA8);
  }

  return result;
}

unint64_t sub_25280704C()
{
  result = qword_27F4FEFB0;
  if (!qword_27F4FEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFB0);
  }

  return result;
}

uint64_t sub_2528070FC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_2528BECF0();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v10, 0);
  v11 = v22;
  v12 = (a3 + 32);
  v16 = v6 + 32;
  while (1)
  {
    v20 = *v12;
    v21 = v20;
    sub_2528BEA50();
    sub_2528BEA50();
    v18(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_25282EFDC(v13 > 1, v14 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    ++v12;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528072E8(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  sub_25282F11C(0, v4, 0);
  v5 = v17;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v15 = v9;
    a1(&v16, &v15);
    if (v3)
    {
      break;
    }

    v10 = v16;
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v16;
      sub_25282F11C((v11 > 1), v12 + 1, 1);
      v10 = v14;
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 16 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528073F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v34 = a1;
  v4 = type metadata accessor for DeviceEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2528BECF0();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = sub_2528BFB20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a2, v14, &qword_27F4FCDB8, &unk_2528C5CC0);
  v24 = sub_2528C00D0();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    sub_2527213D8(v14, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_2527213D8(v18, &qword_27F4FCEF0, &unk_2528C6AB0);
    return MEMORY[0x277D84F90];
  }

  sub_252819FA8(v10);
  sub_2528C0080();
  (*(v7 + 8))(v10, v36);
  (*(v25 + 8))(v14, v24);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  v27 = (*(v20 + 32))(v23, v18, v19);
  MEMORY[0x28223BE20](v27);
  v29 = v33;
  v28 = v34;
  *(&v33 - 2) = v23;
  *(&v33 - 1) = v29;
  v30 = sub_2528072E8(sub_25279F25C, (&v33 - 4), v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC758, &unk_2528C8020);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2528C3910;
  v32 = v35;
  sub_25272E7DC(v37, v35);
  sub_2528084C4(v32, v30, (v31 + 32));
  (*(v20 + 8))(v23, v19);
  return v31;
}

uint64_t sub_252807840(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;
    sub_2528BEA50();
    sub_2528BEA50();
    v9 = a1(&v13);

    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

uint64_t sub_252807908(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_2528BFDE0();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if ((v20 & 1) == 0)
    {
      a2 = 0;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 1;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252807B20()
{
  v1 = *v0;
  if (*(v0 + 33) > 1u)
  {
    if (*(v0 + 33) != 2)
    {
      sub_2528C0E70();

      *v4 = 0xD000000000000013;
      *&v4[8] = 0x80000002528E5610;
      v7 = v1;
      v3 = sub_2528C1040();
      goto LABEL_9;
    }

    sub_2528C0E70();

    strcpy(v4, "device error: ");
    v4[15] = -18;
    LOBYTE(v7) = v1;
  }

  else
  {
    if (!*(v0 + 33))
    {
      *v4 = *v0;
      *&v4[8] = *(v0 + 1);
      v5 = v0[3];
      v6 = *(v0 + 32);
      return sub_252873604();
    }

    strcpy(v4, "error: ");
    *&v4[8] = 0xE700000000000000;
    LOBYTE(v7) = v1;
  }

  v3 = sub_2528C0A10();
LABEL_9:
  MEMORY[0x2530A80B0](v3);

  return *v4;
}

unint64_t sub_252807C78()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_252807B20();
}

uint64_t sub_252807CB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_2528C09B0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v15[14] = v15[15];
  sub_25272E9EC();
  sub_2528C0980();
  sub_2528C0990();
  sub_2528BEC30();
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = sub_2528BE8D0();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return sub_2528BE900();
}

uint64_t sub_252807F30()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502AA0);
  __swift_project_value_buffer(v0, qword_27F502AA0);
  return sub_2528BE9D0();
}

uint64_t sub_252807F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25280DBF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252807FC8(uint64_t a1)
{
  v2 = sub_25280D794();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252808014()
{
  sub_25280D794();

  return sub_2528BE550();
}

uint64_t sub_252808084(uint64_t a1)
{
  v2 = sub_25279F27C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528080D8(uint64_t a1)
{
  v2 = sub_25280CFDC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t DeviceResult.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = type metadata accessor for DeviceEntity();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2528C09B0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = *v0;
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v19 = *v15;
  sub_2528BE6B0();
  sub_25272E840(v15);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v20 = sub_2528BE8D0();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  return sub_2528BE900();
}

uint64_t static DeviceResult.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB880 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FEFB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528084C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for DeviceEntity();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = sub_2528BEC40();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  *a3 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  a3[1] = sub_2528BE6F0();
  sub_25272E7DC(a1, v12);
  sub_25272E7DC(v12, v10);
  sub_2528BE6C0();
  sub_25272E840(v12);
  v16[1] = a2;
  sub_2528BE6C0();
  return sub_25272E840(a1);
}

uint64_t DeviceResult.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DeviceEntity();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (v12 - v7);
  v9 = sub_2528BEC40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  *a1 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  a1[1] = sub_2528BE6F0();
  sub_252826AC0(v8);
  sub_25272E7DC(v8, v6);
  sub_2528BE6C0();
  sub_25272E840(v8);
  v12[1] = MEMORY[0x277D84F90];
  return sub_2528BE6C0();
}

uint64_t sub_2528088B8(uint64_t a1)
{
  v2 = sub_25280D740();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252808904()
{
  sub_25280D740();

  return sub_2528BE550();
}

uint64_t sub_252808974(uint64_t a1)
{
  v2 = sub_25280D0D0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528089C4(uint64_t a1)
{
  v2 = sub_25280D320();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252808A10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2528BEC40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for DeviceEntity();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v28[-v18];
  v29 = a2;
  v30 = a4;
  v20 = sub_2527A4850(sub_25280DEC4, v28, a3);
  sub_25272E7DC(a2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v21 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  v22 = sub_2528BE6F0();
  sub_25272E7DC(v19, v17);
  sub_25272E7DC(v17, v14);
  sub_2528BE6C0();
  sub_25272E840(v17);
  v31 = v20;
  sub_2528BE6C0();
  sub_25272E840(v19);
  v23 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252737BC0(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_252737BC0((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
  }

  *(v23 + 16) = v26 + 1;
  v27 = v23 + 16 * v26;
  *(v27 + 32) = v21;
  *(v27 + 40) = v22;
  *a1 = v23;
  return result;
}

uint64_t sub_252808CE4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v141 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v115 - v9;
  v10 = sub_2528C01C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v115 - v16;
  v17 = sub_2528BECF0();
  v137 = *(v17 - 8);
  v138 = v17;
  v18 = *(v137 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v134 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v115 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v132 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v115 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v133 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v115 - v33;
  v35 = sub_2528BF9D0();
  v142 = *(v35 - 8);
  v143 = v35;
  v36 = *(v142 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v131 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v139 = &v115 - v39;
  v140 = a2;
  v150 = *a1;
  LOBYTE(v145) = v150;
  v40 = *(a2 + 16);
  sub_2528BE6B0();
  LOWORD(v146) = v147;
  v41 = sub_252870A60(&v146);
  if (!*(v41 + 16))
  {

    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v129 = v22;
  v130 = v10;
  v42 = v41;
  sub_25272006C(v141, v28, &qword_27F4FCD98, &qword_2528C6200);
  v43 = sub_2528BF400();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v127 = v44 + 48;
  v126 = v45;
  if (v45(v28, 1, v43) == 1)
  {

    sub_2527213D8(v28, &qword_27F4FCD98, &qword_2528C6200);
    (*(v142 + 56))(v34, 1, 1, v143);
LABEL_12:
    sub_2527213D8(v34, &qword_27F4FD670, &qword_2528D3570);
    LOBYTE(v146) = v150;
    v147 = 0u;
    v148 = 0u;
    v149 = 256;
    result = sub_25280DA84(&v146, &v147);
    *a4 = result;
    a4[1] = v59;
    return result;
  }

  v124 = v40;
  v128 = v42;
  v125 = a4;
  v47 = sub_2528BF370();
  v48 = *(v44 + 8);
  v123 = v43;
  v122 = v44 + 8;
  v121 = v48;
  v48(v28, v43);
  v49 = v129;
  sub_252819FA8(v129);
  v50 = v144;
  if (*(v47 + 16))
  {
    v51 = sub_252785C40(v49);
    v52 = v143;
    v53 = v130;
    if (v54)
    {
      v55 = v142;
      (*(v142 + 16))(v34, *(v47 + 56) + *(v142 + 72) * v51, v143);
      v129 = *(v137 + 8);
      v129(v49, v138);

      v56 = 0;
    }

    else
    {

      v129 = *(v137 + 8);
      v129(v49, v138);
      v56 = 1;
      v55 = v142;
    }
  }

  else
  {

    v129 = *(v137 + 8);
    v129(v49, v138);
    v56 = 1;
    v55 = v142;
    v52 = v143;
    v53 = v130;
  }

  v57 = v55[7];
  v57(v34, v56, 1, v52);
  v58 = v55[6];
  v130 = v55 + 6;
  v120 = v58;
  if (v58(v34, 1, v52) == 1)
  {

    a4 = v125;
    goto LABEL_12;
  }

  v118 = v57;
  v119 = v55 + 7;
  v60 = v55[4];
  v61 = v139;
  v117 = v55 + 4;
  v116 = v60;
  v62 = (v60)(v139, v34, v52);
  MEMORY[0x28223BE20](v62);
  *(&v115 - 2) = v61;
  result = sub_2527A497C(sub_25280DEE0, (&v115 - 4), v128);
  v63 = result;
  v144 = v50;
  v64 = *(result + 16);
  if (v64)
  {
    v65 = 0;
    while (1)
    {
      if (v65 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      (*(v11 + 16))(v15, v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v65, v53);
      if (sub_2528C01B0())
      {
        break;
      }

      ++v65;
      result = (*(v11 + 8))(v15, v53);
      if (v64 == v65)
      {
        goto LABEL_18;
      }
    }

    v82 = v136;
    (*(v11 + 32))(v136, v15, v53);
    v83 = sub_2528C01A0();
    (*(v11 + 8))(v82, v53);
    if (!v83)
    {
      goto LABEL_19;
    }

    *&v147 = v83;
    type metadata accessor for HMError(0);
    sub_25280DE3C(&qword_27F4FC0D0, type metadata accessor for HMError);
    sub_2528BEBE0();
    sub_2527A0688(v146, &v145);
    v84 = v125;
    if (v145 == 20)
    {
      v151 = v150;
      v146 = v83;
      sub_2528BEBE0();
      v147 = v145;
      v148 = 0uLL;
      v149 = 768;
      v85 = &v151;
    }

    else
    {
      LOBYTE(v146) = v150;
      v147 = v145;
      v148 = 0uLL;
      v149 = 256;
      v85 = &v146;
    }

    v92 = sub_25280DA84(v85, &v147);
    v94 = v93;

    *v84 = v92;
    v84[1] = v94;
    goto LABEL_31;
  }

LABEL_18:

LABEL_19:
  v66 = v150;
  v151 = v150;
  sub_2528BE6B0();
  LOWORD(v145) = v146;
  v67 = v139;
  sub_252874784(&v151, &v145, &v147);
  v68 = v149;
  v69 = v125;
  if (v149 <= 0xFDu)
  {

    LOBYTE(v146) = v66;
    v149 = v68;
    *v69 = sub_25280DA84(&v146, &v147);
    v69[1] = v79;
    v80 = *(v142 + 8);
    v81 = v67;
    return v80(v81, v143);
  }

  v70 = sub_2528BF430();
  MEMORY[0x28223BE20](v70);
  *(&v115 - 16) = v66;
  *(&v115 - 1) = v140;
  v71 = sub_2527A4DC8(sub_25280DEFC, (&v115 - 4), v70);

  v72 = v143;
  if (!*(v71 + 16))
  {

    v86 = v135;
    sub_2528BF450();
    v88 = v137;
    v87 = v138;
    if ((*(v137 + 48))(v86, 1, v138) == 1)
    {
      v89 = &qword_27F4FC628;
      v90 = &qword_2528C4750;
      v91 = v86;
    }

    else
    {
      v95 = v86;
      v96 = v134;
      (*(v88 + 32))(v134, v95, v87);
      v97 = v132;
      sub_25272006C(v141, v132, &qword_27F4FCD98, &qword_2528C6200);
      v98 = v123;
      if (v126(v97, 1, v123) == 1)
      {
        v129(v96, v87);
        sub_2527213D8(v97, &qword_27F4FCD98, &qword_2528C6200);
        v99 = v133;
        v72 = v143;
        v118(v133, 1, 1, v143);
      }

      else
      {
        v100 = sub_2528BF370();
        v101 = v98;
        v102 = v100;
        v121(v97, v101);
        if (*(v102 + 16) && (v103 = sub_252785C40(v96), (v104 & 1) != 0))
        {
          (*(v142 + 16))(v133, *(v102 + 56) + *(v142 + 72) * v103, v143);
          v105 = 0;
        }

        else
        {
          v105 = 1;
        }

        v99 = v133;
        v72 = v143;
        v118(v133, v105, 1, v143);
        if (v120(v99, 1, v72) != 1)
        {
          v116(v131, v99, v72);
          v151 = v66;
          sub_2528BE6B0();
          LOWORD(v145) = v146;
          sub_252874784(&v151, &v145, &v147);
          v109 = v149;
          if (v149 < 0xFEu)
          {

            LOBYTE(v146) = v66;
            v149 = v109;
            v110 = sub_25280DA84(&v146, &v147);
            v112 = v111;
            v113 = v87;
            v114 = *(v142 + 8);
            v114(v131, v72);
            v129(v134, v113);
            *v69 = v110;
            v69[1] = v112;
            return (v114)(v139, v72);
          }

          (*(v142 + 8))(v131, v72);
          v106 = (v129)(v134, v87);
          goto LABEL_43;
        }

        v129(v134, v87);
      }

      v89 = &qword_27F4FD670;
      v90 = &qword_2528D3570;
      v91 = v99;
    }

    v106 = sub_2527213D8(v91, v89, v90);
LABEL_43:
    MEMORY[0x28223BE20](v106);
    *(&v115 - 2) = v67;
    v107 = sub_252807908(sub_25280DF6C, (&v115 - 4), v128);

    LOBYTE(v146) = v66;
    if (v107)
    {
      v147 = 1uLL;
      v148 = 0uLL;
    }

    else
    {
      v147 = 0u;
      v148 = 0u;
    }

    v149 = 256;
    *v69 = sub_25280DA84(&v146, &v147);
    v69[1] = v108;
    return (*(v142 + 8))(v67, v72);
  }

  if (*(v71 + 16))
  {
    v73 = *(v71 + 32);
    v74 = *(v71 + 40);
    v75 = *(v71 + 48);
    v76 = *(v71 + 56);
    v77 = *(v71 + 64);
    sub_252760C18(v73, v74, v75, v76, v77);

    LOBYTE(v146) = v66;
    *&v147 = v73;
    *(&v147 + 1) = v74;
    *&v148 = v75;
    *(&v148 + 1) = v76;
    v149 = v77;
    *v69 = sub_25280DA84(&v146, &v147);
    v69[1] = v78;
LABEL_31:
    v80 = *(v142 + 8);
    v81 = v139;
    return v80(v81, v143);
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_252809BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_2528BF760();
  v6 = sub_2528C01F0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2527213D8(v5, &qword_27F4FE8A8, &qword_2528CDF80);
    v8 = 1;
  }

  else
  {
    sub_2528C01D0();
    (*(v7 + 8))(v5, v6);
    v8 = 0;
  }

  v9 = sub_2528C01C0();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

BOOL sub_252809D44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_2528BF760();
  v4 = sub_2528C01F0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2527213D8(v3, &qword_27F4FE8A8, &qword_2528CDF80);
  return v5;
}

uint64_t sub_252809E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_2528C00D0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a4, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = sub_2528073F8(a3, v9, 0);
  sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
  return sub_252735C2C(v12);
}

uint64_t sub_252809F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v9 = sub_2528BEC40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for DeviceEntity();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v33 = a2;
  v34 = a4;
  v35 = a5;
  v21 = sub_2527A4850(sub_25280DDAC, v32, a3);
  sub_25272E7DC(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v22 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  v23 = sub_2528BE6F0();
  sub_25272E7DC(v20, v18);
  sub_25272E7DC(v18, v15);
  v24 = v31;
  sub_2528BE6C0();
  sub_25272E840(v18);
  v36 = v21;
  sub_2528BE6C0();
  sub_25272E840(v20);
  v25 = *v24;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252737BC0(0, *(v25 + 16) + 1, 1, v25);
    v25 = result;
  }

  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  if (v28 >= v27 >> 1)
  {
    result = sub_252737BC0((v27 > 1), v28 + 1, 1, v25);
    v25 = result;
  }

  *(v25 + 16) = v28 + 1;
  v29 = v25 + 16 * v28;
  *(v29 + 32) = v22;
  *(v29 + 40) = v23;
  *v24 = v25;
  return result;
}

void sub_25280A270(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v120 = a4;
  v113 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF120, &qword_2528D1AB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v101 - v10;
  v115 = sub_2528BFF90();
  v12 = *(v115 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v115);
  v105 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2528BFD50();
  v103 = *(v104 - 8);
  v15 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v112 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v114 = &v101 - v25;
  v111 = sub_2528BF9D0();
  v119 = *(v111 - 8);
  v26 = *(v119 + 64);
  MEMORY[0x28223BE20](v111);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2528BECF0();
  v116 = *(v29 - 8);
  v117 = v29;
  v30 = *(v116 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v107 = &v101 - v34;
  MEMORY[0x28223BE20](v33);
  v108 = &v101 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v101 - v41;
  v121 = *a1;
  v118 = a2;
  v43 = *(a2 + 16);
  sub_2528BE6B0();
  if (v124 >> 14 == 1)
  {
    v44 = BYTE1(v124) & 0x3F;
  }

  else
  {
    v44 = v124;
  }

  v109 = v11;
  v110 = v12;
  if (v121 == 41)
  {
    if (v44 == 2)
    {
      v45 = MEMORY[0x277D15F90];
      goto LABEL_9;
    }
  }

  else if (v121 == 33)
  {
    v45 = MEMORY[0x277D15F88];
LABEL_9:
    v46 = *v45;
    v47 = sub_2528BFD30();
    v48 = v22;
    v49 = a5;
    v50 = *(v47 - 8);
    (*(v50 + 104))(v40, v46, v47);
    (*(v50 + 56))(v40, 0, 1, v47);
    a5 = v49;
    v22 = v48;
    goto LABEL_11;
  }

  v47 = sub_2528BFD30();
  (*(*(v47 - 8) + 56))(v40, 1, 1, v47);
LABEL_11:
  sub_25280DDCC(v40, v42);
  sub_2528BFD30();
  v51 = (*(*(v47 - 8) + 48))(v42, 1, v47);
  sub_2527213D8(v42, &qword_27F4FD6B8, &unk_2528D1AC0);
  if (v51 == 1)
  {
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  v52 = v119;
  v53 = v113;
  if (!v113)
  {
LABEL_20:
    sub_25272006C(v120, v22, &qword_27F4FCD98, &qword_2528C6200);
    v61 = sub_2528BF400();
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    v64 = v63(v22, 1, v61);
    v101 = a5;
    if (v64 == 1)
    {
      sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);
      v65 = v114;
      (*(v52 + 56))(v114, 1, 1, v111);
      v66 = v112;
    }

    else
    {
      v67 = sub_2528BF370();
      (*(v62 + 8))(v22, v61);
      v68 = v107;
      sub_252819FA8(v107);
      if (*(v67 + 16) && (v69 = sub_252785C40(v68), (v70 & 1) != 0))
      {
        v71 = v111;
        (*(v119 + 16))(v114, *(v67 + 56) + *(v119 + 72) * v69, v111);
        (*(v116 + 8))(v68, v117);

        v72 = 0;
        v66 = v112;
      }

      else
      {

        (*(v116 + 8))(v68, v117);
        v72 = 1;
        v71 = v111;
        v66 = v112;
      }

      v73 = v119;
      v65 = v114;
      (*(v119 + 56))(v114, v72, 1, v71);
      if ((*(v73 + 48))(v65, 1, v71) != 1)
      {
        (*(v73 + 32))(v28, v65, v71);
        if (v121 == 33)
        {
          v85 = v102;
          v86 = v71;
          sub_2528BF640();
          v87 = sub_2528BFD10();
          (*(v103 + 8))(v85, v104);
          LOBYTE(v127) = 33;
          v124 = v87 & 1;
          v125 = 0uLL;
          v126 = 72;
          v88 = sub_25280DA84(&v127, &v124);
          v90 = v89;
          (*(v73 + 8))(v28, v86);
          v91 = v101;
          *v101 = v88;
          v91[1] = v90;
          return;
        }

        (*(v73 + 8))(v28, v71);
LABEL_28:
        sub_25272006C(v120, v66, &qword_27F4FCD98, &qword_2528C6200);
        v74 = v63(v66, 1, v61);
        v75 = v101;
        if (v74 == 1)
        {
          sub_2527213D8(v66, &qword_27F4FCD98, &qword_2528C6200);
          v76 = v109;
          (*(v110 + 56))(v109, 1, 1, v115);
          v77 = v121;
        }

        else
        {
          v78 = v66;
          v79 = sub_2528BF3A0();
          (*(v62 + 8))(v78, v61);
          v80 = v106;
          sub_252819FA8(v106);
          v76 = v109;
          v77 = v121;
          if (*(v79 + 16))
          {
            v81 = sub_252785C40(v80);
            v82 = v110;
            if (v83)
            {
              (*(v110 + 16))(v76, *(v79 + 56) + *(v110 + 72) * v81, v115);
              (*(v116 + 8))(v80, v117);

              v84 = 0;
            }

            else
            {

              (*(v116 + 8))(v80, v117);
              v84 = 1;
            }
          }

          else
          {

            (*(v116 + 8))(v80, v117);
            v84 = 1;
            v82 = v110;
          }

          v92 = v115;
          (*(v82 + 56))(v76, v84, 1, v115);
          if ((*(v82 + 48))(v76, 1, v92) != 1)
          {
            v94 = v105;
            (*(v82 + 32))();
            LOBYTE(v127) = v77;
            sub_252875310(&v127, &v124);
            if (v126 < 0xFEu)
            {
              LOBYTE(v127) = v77;
              v126 = v126;
              v95 = sub_25280DA84(&v127, &v124);
              v97 = v96;
              (*(v82 + 8))(v94, v115);
              *v75 = v95;
              v75[1] = v97;
              return;
            }

            (*(v82 + 8))(v94, v115);
LABEL_39:
            LOBYTE(v127) = v77;
            v124 = 0u;
            v125 = 0u;
            v126 = 256;
            *v75 = sub_25280DA84(&v127, &v124);
            v75[1] = v93;
            return;
          }
        }

        sub_2527213D8(v76, &qword_27F4FF120, &qword_2528D1AB8);
        goto LABEL_39;
      }
    }

    sub_2527213D8(v65, &qword_27F4FD670, &qword_2528D3570);
    goto LABEL_28;
  }

  v54 = v108;
  sub_252819FA8(v108);
  if (!*(v53 + 16) || (v55 = sub_252785C40(v54), (v56 & 1) == 0))
  {
    (*(v116 + 8))(v54, v117);
    goto LABEL_20;
  }

  v57 = *(*(v53 + 56) + 8 * v55);
  v58 = v57;
  (*(v116 + 8))(v54, v117);
  *&v124 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = v119;
    goto LABEL_20;
  }

  v59 = v127;
  *&v124 = v127;
  sub_25280DE3C(&qword_27F4FC0D0, type metadata accessor for HMError);
  sub_2528BEBE0();
  sub_2527A0688(v127, &v122);
  if (v122 == 20)
  {
    v123 = v121;
    v127 = v59;
    sub_2528BEBE0();
    v124 = v122;
    v125 = 0uLL;
    v126 = 768;
    v60 = &v123;
  }

  else
  {
    LOBYTE(v127) = v121;
    v124 = v122;
    v125 = 0uLL;
    v126 = 256;
    v60 = &v127;
  }

  v98 = sub_25280DA84(v60, &v124);
  v100 = v99;

  *a5 = v98;
  a5[1] = v100;
}

uint64_t sub_25280AFA4(char **a1, __int128 *a2)
{
  v6 = sub_2528BEC40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36[1] = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceEntity();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v36[0] = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v36 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (v36 - v16);
  v18 = *a2;
  v19 = *a1;
  v20 = *(*a1 + 2);
  v40 = v18;
  if (v20)
  {
    v36[2] = v2;
    v37 = a1;
    v21 = 0;
    v41 = v18;
    a1 = (v19 + 40);
    while (1)
    {
      if (v21 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_21;
      }

      v3 = *(a1 - 1);
      v22 = *a1;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      v23 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v17, v15);
      sub_25272E840(v15);
      sub_25272E840(v17);
      if (v23)
      {
        break;
      }

      ++v21;
      a1 += 2;
      if (v20 == v21)
      {
        v3 = 0;
        a1 = v37;
        goto LABEL_14;
      }
    }

    v39 = v19;
    v24 = *(v19 + 2);
    sub_2528BEA50();
    sub_2528BEA50();
    v38 = v24;
    if (!v24)
    {
LABEL_13:

      a1 = v37;
      v19 = v39;
      goto LABEL_14;
    }

    v25 = 0;
    v19 = v39 + 40;
    while (v25 < *(v39 + 2))
    {
      v26 = *(v19 - 1);
      a1 = *v19;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      v27 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v17, v15);

      sub_25272E840(v15);
      sub_25272E840(v17);
      if (v27)
      {

        v33 = v37;
        sub_25280B4D0(v25, &v42);

        sub_2528BE6B0();
        sub_2528BE6B0();
        sub_2528BE6B0();
        sub_252735DE0(v42);
        v41 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
        sub_2528BEC20();
        sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
        v34 = sub_2528BE6F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
        sub_2528BEC20();
        sub_25279F27C();
        v35 = sub_2528BE6F0();
        sub_25272E7DC(v17, v15);
        sub_25272E7DC(v15, v36[0]);
        sub_2528BE6C0();
        sub_25272E840(v15);
        *&v42 = v41;
        sub_2528BE6C0();
        result = sub_25272E840(v17);
        if (*(*v33 + 2) < v25)
        {
          __break(1u);
        }

        else
        {
          sub_25280D8E8(v25, v25, v34, v35);
        }

        return result;
      }

      ++v25;
      v19 += 16;
      if (v38 == v25)
      {
        goto LABEL_13;
      }
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = 0;
LABEL_14:
  sub_2528BEA50();
  sub_2528BEA50();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v19 = sub_252737BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v28 = v19;
  v29 = *(v19 + 2);
  v30 = v28;
  v31 = *(v28 + 3);
  if (v29 >= v31 >> 1)
  {
    v30 = sub_252737BC0((v31 > 1), v29 + 1, 1, v30);
  }

  result = sub_25280DE84(v3);
  *(v30 + 2) = v29 + 1;
  *&v30[16 * v29 + 32] = v40;
  *a1 = v30;
  return result;
}

uint64_t sub_25280B4D0@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25280D7E8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25280B55C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a2;
  v45 = a3;
  v46 = a4;
  v5 = sub_2528C0150();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC220, &qword_2528D1AB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_2528BF0B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = MEMORY[0x277D15528];
  v53 = v23;
  if (v23 <= 30)
  {
    if (v23 != 3 && v23 != 11)
    {
      goto LABEL_8;
    }

LABEL_10:
    (*(v19 + 104))(v17, *v24, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    (*(v19 + 32))(v22, v17, v18);
    v30 = sub_2528BFB10();
    if (*(v30 + 16) && (v31 = sub_252786BE8(v22), (v32 & 1) != 0))
    {
      (*(v10 + 16))(v13, *(v30 + 56) + *(v10 + 72) * v31, v9);

      v54 = v23;
      sub_252875590(&v54, &v48);
      (*(v10 + 8))(v13, v9);
      v29 = v51;
      if (v51 <= 0xFDu)
      {
        v26 = *(&v48 + 1);
        v25 = v48;
        v27 = v49;
        v28 = v50;
        (*(v19 + 8))(v22, v18);
        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_2528BFAC0();
    sub_252875B80(&v48);
    (*(v43 + 8))(v8, v44);
    (*(v19 + 8))(v22, v18);
    v26 = *(&v48 + 1);
    v25 = v48;
    v27 = v49;
    v28 = v50;
    v29 = v51;
    goto LABEL_16;
  }

  switch(v23)
  {
    case 31:
      goto LABEL_10;
    case 45:
      v24 = MEMORY[0x277D15540];
      goto LABEL_10;
    case 41:
      v24 = MEMORY[0x277D15548];
      goto LABEL_10;
  }

LABEL_8:
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_2527213D8(v17, &qword_27F4FC220, &qword_2528D1AB0);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 254;
LABEL_16:
  v33 = v46;
  v34 = v45;
  if (v45 && *(v45 + 16) && (v35 = sub_252785BA8(v53), (v36 & 1) != 0))
  {
    v37 = v35;
    sub_2527AAB1C(v25, v26, v27, v28, v29);
    v38 = *(v34 + 56) + 40 * v37;
    v25 = *v38;
    v26 = *(v38 + 8);
    v27 = *(v38 + 16);
    v28 = *(v38 + 24);
    LOBYTE(v29) = *(v38 + 32);
    v39 = *(v38 + 33);
    sub_25277B0C4(*v38, v26, v27, v28, v29, v39);
  }

  else if (v29 <= 0xFD)
  {
    v39 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LOBYTE(v29) = 0;
    v39 = 1;
  }

  v54 = v53;
  *&v48 = v25;
  *(&v48 + 1) = v26;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = v39;
  result = sub_25280DA84(&v54, &v48);
  *v33 = result;
  v33[1] = v41;
  return result;
}

unint64_t sub_25280BA3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  if (*(v1 + 33) > 1u)
  {
    if (*(v1 + 33) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0A0, &unk_2528D1A60);
      sub_2528BEC20();
      sub_2527A28E4();
      v10 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Outcome.DeviceFailureCase;
      result = sub_25280D4F4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v10 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Outcome.FailureWithHomeKitErrorCodeCase;
      result = sub_25280D4A0();
    }
  }

  else if (*(v1 + 33))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v10 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for Outcome.FailureCase;
    result = sub_25280D548();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    v8 = *(v1 + 8);
    v9 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0B8, &unk_2528D1A70);
    sub_252760C18(v5, v8, v7, v6, v9);
    sub_2528BEC20();
    sub_2527604A4();
    v10 = sub_2528BE700();
    sub_2528BE6C0();
    a1[3] = &type metadata for Outcome.SuccessCase;
    result = sub_25280D59C();
  }

  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_25280BC74@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0C8, &qword_2528D1A80);
  v22 = *(v24 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = &v16 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0D0, &qword_2528D1A88);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0D8, &unk_2528D1A90);
  v18 = *(v7 - 8);
  v19 = v7;
  v8 = *(v18 + 64);
  MEMORY[0x28223BE20](v7);
  v16 = &v16 - v9;
  v10 = sub_25280D5F0();
  MEMORY[0x2530A60E0](v10, &type metadata for Outcome, &type metadata for Outcome.SuccessCase.Resolver, v10);
  v11 = sub_25280D644();
  MEMORY[0x2530A60E0](v11, &type metadata for Outcome, &type metadata for Outcome.FailureCase.Resolver, v11);
  v12 = sub_25280D698();
  MEMORY[0x2530A60E0](v12, &type metadata for Outcome, &type metadata for Outcome.DeviceFailureCase.Resolver, v12);
  v13 = sub_25280D6EC();
  MEMORY[0x2530A60E0](v13, &type metadata for Outcome, &type metadata for Outcome.FailureWithHomeKitErrorCodeCase.Resolver, v13);
  sub_25280D44C();
  sub_2528BEAA0();
  v35 = v10;
  v36 = &type metadata for Outcome.SuccessCase.Resolver;
  sub_2528BEA90();
  v33 = &type metadata for Outcome.SuccessCase.Resolver;
  v34 = &type metadata for Outcome.FailureCase.Resolver;
  v31 = v10;
  v32 = v11;
  v14 = v17;
  sub_2528BEA90();
  v28 = &type metadata for Outcome.SuccessCase.Resolver;
  v29 = &type metadata for Outcome.FailureCase.Resolver;
  v30 = &type metadata for Outcome.DeviceFailureCase.Resolver;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  sub_2528BEA90();
  (*(v22 + 8))(v14, v24);
  (*(v20 + 8))(v6, v21);
  return (*(v18 + 8))(v16, v19);
}

uint64_t sub_25280C008(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_25280C02C, 0, 0);
}

uint64_t sub_25280C02C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_2528BE6B0();
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25280C0E0(uint64_t a1)
{
  v2 = sub_25280F1AC();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C12C()
{
  sub_25280F1AC();

  return sub_2528BE550();
}

uint64_t sub_25280C1C0(uint64_t a1)
{
  v2 = sub_25280E3E4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C20C(uint64_t a1)
{
  v2 = sub_25280E194();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C278(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25280C29C, 0, 0);
}

uint64_t sub_25280C29C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 256;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25280C354(uint64_t a1)
{
  v2 = sub_25280F158();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C3A0()
{
  sub_25280F158();

  return sub_2528BE550();
}

uint64_t sub_25280C434(uint64_t a1)
{
  v2 = sub_25280E73C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C480(uint64_t a1)
{
  v2 = sub_25280E4EC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C4F8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25280C51C, 0, 0);
}

uint64_t sub_25280C51C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 512;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25280C5D4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(char *, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = sub_2528BEC40();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = sub_2528BEC20();
  v15 = a3(v14);
  result = a4(v13, v15);
  *a5 = result;
  return result;
}

uint64_t sub_25280C69C(uint64_t a1)
{
  v2 = sub_25280F104();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C6E8()
{
  sub_25280F104();

  return sub_2528BE550();
}

uint64_t sub_25280C774(uint64_t a1)
{
  v2 = sub_25280EA94();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C7C0(uint64_t a1)
{
  v2 = sub_25280E844();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C80C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502B00);
  __swift_project_value_buffer(v0, qword_27F502B00);
  return sub_2528BE9D0();
}

uint64_t sub_25280C870(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_25280C894, 0, 0);
}

uint64_t sub_25280C894()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 768;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25280C910@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = result;
  return result;
}

uint64_t sub_25280C9B8(uint64_t a1)
{
  v2 = sub_25280F0B0();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280CA04()
{
  sub_25280F0B0();

  return sub_2528BE550();
}

uint64_t sub_25280CA90(uint64_t a1)
{
  v2 = sub_25280EDEC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280CADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_25280CCA4(uint64_t a1)
{
  v2 = sub_25280EB9C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280CCF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C35E0;
  v1 = sub_25280D59C();
  *(v0 + 32) = &type metadata for Outcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_25280D548();
  *(v0 + 48) = &type metadata for Outcome.FailureCase;
  *(v0 + 56) = v2;
  v3 = sub_25280D4F4();
  *(v0 + 64) = &type metadata for Outcome.DeviceFailureCase;
  *(v0 + 72) = v3;
  v4 = sub_25280D4A0();
  *(v0 + 80) = &type metadata for Outcome.FailureWithHomeKitErrorCodeCase;
  *(v0 + 88) = v4;
  return v0;
}

unint64_t sub_25280CD90()
{
  result = qword_27F4FEFD0;
  if (!qword_27F4FEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFD0);
  }

  return result;
}

unint64_t sub_25280CDE8()
{
  result = qword_27F4FEFD8;
  if (!qword_27F4FEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFD8);
  }

  return result;
}

unint64_t sub_25280CE40()
{
  result = qword_27F4FEFE0;
  if (!qword_27F4FEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFE0);
  }

  return result;
}

unint64_t sub_25280CEDC()
{
  result = qword_27F4FEFF8;
  if (!qword_27F4FEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFF8);
  }

  return result;
}

unint64_t sub_25280CF30()
{
  result = qword_27F4FF000;
  if (!qword_27F4FF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF000);
  }

  return result;
}

unint64_t sub_25280CF84()
{
  result = qword_27F4FF008;
  if (!qword_27F4FF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF008);
  }

  return result;
}

unint64_t sub_25280CFDC()
{
  result = qword_27F4FF010;
  if (!qword_27F4FF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF010);
  }

  return result;
}

unint64_t sub_25280D078()
{
  result = qword_27F4FF028;
  if (!qword_27F4FF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF028);
  }

  return result;
}

unint64_t sub_25280D0D0()
{
  result = qword_27F4FF030;
  if (!qword_27F4FF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF030);
  }

  return result;
}

unint64_t sub_25280D128()
{
  result = qword_27F4FF038;
  if (!qword_27F4FF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF038);
  }

  return result;
}

unint64_t sub_25280D180()
{
  result = qword_27F4FF040;
  if (!qword_27F4FF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF040);
  }

  return result;
}

unint64_t sub_25280D1D8()
{
  result = qword_27F4FF048;
  if (!qword_27F4FF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF048);
  }

  return result;
}

unint64_t sub_25280D274()
{
  result = qword_27F4FF060;
  if (!qword_27F4FF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF060);
  }

  return result;
}

unint64_t sub_25280D2C8()
{
  result = qword_27F4FF068;
  if (!qword_27F4FF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF068);
  }

  return result;
}

unint64_t sub_25280D320()
{
  result = qword_27F4FF070;
  if (!qword_27F4FF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF070);
  }

  return result;
}

unint64_t sub_25280D3BC()
{
  result = qword_27F4FF088;
  if (!qword_27F4FF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF088);
  }

  return result;
}

unint64_t sub_25280D44C()
{
  result = qword_27F4FF090;
  if (!qword_27F4FF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF090);
  }

  return result;
}

unint64_t sub_25280D4A0()
{
  result = qword_27F4FF098;
  if (!qword_27F4FF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF098);
  }

  return result;
}

unint64_t sub_25280D4F4()
{
  result = qword_27F4FF0A8;
  if (!qword_27F4FF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0A8);
  }

  return result;
}

unint64_t sub_25280D548()
{
  result = qword_27F4FF0B0;
  if (!qword_27F4FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0B0);
  }

  return result;
}

unint64_t sub_25280D59C()
{
  result = qword_27F4FF0C0;
  if (!qword_27F4FF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0C0);
  }

  return result;
}

unint64_t sub_25280D5F0()
{
  result = qword_27F4FF0E0;
  if (!qword_27F4FF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0E0);
  }

  return result;
}

unint64_t sub_25280D644()
{
  result = qword_27F4FF0E8;
  if (!qword_27F4FF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0E8);
  }

  return result;
}

unint64_t sub_25280D698()
{
  result = qword_27F4FF0F0;
  if (!qword_27F4FF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0F0);
  }

  return result;
}

unint64_t sub_25280D6EC()
{
  result = qword_27F4FF0F8;
  if (!qword_27F4FF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0F8);
  }

  return result;
}

unint64_t sub_25280D740()
{
  result = qword_27F4FF100;
  if (!qword_27F4FF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF100);
  }

  return result;
}

unint64_t sub_25280D794()
{
  result = qword_27F4FF108;
  if (!qword_27F4FF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF108);
  }

  return result;
}

unint64_t sub_25280D7FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    sub_2528BEA50();
    result = sub_2528BEA50();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_25280D8E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_252737BC0(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_25280D7FC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_25280D9C4(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_25280AFA4(&v6, &v5);

      ++v4;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

uint64_t sub_25280DA84(char *a1, __int128 *a2)
{
  v4 = sub_2528BEC40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v8 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF110, &unk_2528D1AA0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25280DD58();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  v11 = a2[1];
  v10 = *a2;
  sub_2528BE6C0();

  return v8;
}

uint64_t sub_25280DBF8()
{
  v0 = sub_2528BEC40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v2 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF110, &unk_2528D1AA0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25280DD58();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_2528BE6C0();

  return v2;
}

unint64_t sub_25280DD58()
{
  result = qword_27F4FF118;
  if (!qword_27F4FF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF118);
  }

  return result;
}

uint64_t sub_25280DDCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25280DE3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25280DE84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25280DEFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v7 = *(v1 + 16);
  v4 = *(v3 + 16);
  sub_2528BE6B0();
  v6[0] = v6[1];
  return sub_252874784(&v7, v6, a1);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25280E038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 34))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 33);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25280E080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

unint64_t sub_25280E0E4()
{
  result = qword_27F4FF138;
  if (!qword_27F4FF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF138);
  }

  return result;
}

unint64_t sub_25280E13C()
{
  result = qword_27F4FF140;
  if (!qword_27F4FF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF140);
  }

  return result;
}

unint64_t sub_25280E194()
{
  result = qword_27F4FF148;
  if (!qword_27F4FF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF148);
  }

  return result;
}

unint64_t sub_25280E1E8()
{
  result = qword_27F4FF150;
  if (!qword_27F4FF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF150);
  }

  return result;
}

unint64_t sub_25280E240()
{
  result = qword_27F4FF158;
  if (!qword_27F4FF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF158);
  }

  return result;
}

unint64_t sub_25280E298()
{
  result = qword_27F4FF160;
  if (!qword_27F4FF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF160);
  }

  return result;
}

unint64_t sub_25280E2F0()
{
  result = qword_27F4FF168;
  if (!qword_27F4FF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF168);
  }

  return result;
}

unint64_t sub_25280E348()
{
  result = qword_27F4FF170;
  if (!qword_27F4FF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF170);
  }

  return result;
}

unint64_t sub_25280E3E4()
{
  result = qword_27F4FF188;
  if (!qword_27F4FF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF188);
  }

  return result;
}

unint64_t sub_25280E43C()
{
  result = qword_27F4FF190;
  if (!qword_27F4FF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF190);
  }

  return result;
}

unint64_t sub_25280E494()
{
  result = qword_27F4FF198;
  if (!qword_27F4FF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF198);
  }

  return result;
}

unint64_t sub_25280E4EC()
{
  result = qword_27F4FF1A0;
  if (!qword_27F4FF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1A0);
  }

  return result;
}

unint64_t sub_25280E540()
{
  result = qword_27F4FF1A8;
  if (!qword_27F4FF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1A8);
  }

  return result;
}

unint64_t sub_25280E598()
{
  result = qword_27F4FF1B0;
  if (!qword_27F4FF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1B0);
  }

  return result;
}

unint64_t sub_25280E5F0()
{
  result = qword_27F4FF1B8;
  if (!qword_27F4FF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1B8);
  }

  return result;
}

unint64_t sub_25280E648()
{
  result = qword_27F4FF1C0;
  if (!qword_27F4FF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1C0);
  }

  return result;
}

unint64_t sub_25280E6A0()
{
  result = qword_27F4FF1C8;
  if (!qword_27F4FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1C8);
  }

  return result;
}

unint64_t sub_25280E73C()
{
  result = qword_27F4FF1E0;
  if (!qword_27F4FF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1E0);
  }

  return result;
}

unint64_t sub_25280E794()
{
  result = qword_27F4FF1E8;
  if (!qword_27F4FF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1E8);
  }

  return result;
}

unint64_t sub_25280E7EC()
{
  result = qword_27F4FF1F0;
  if (!qword_27F4FF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1F0);
  }

  return result;
}

unint64_t sub_25280E844()
{
  result = qword_27F4FF1F8;
  if (!qword_27F4FF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1F8);
  }

  return result;
}

unint64_t sub_25280E898()
{
  result = qword_27F4FF200;
  if (!qword_27F4FF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF200);
  }

  return result;
}

unint64_t sub_25280E8F0()
{
  result = qword_27F4FF208;
  if (!qword_27F4FF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF208);
  }

  return result;
}

unint64_t sub_25280E948()
{
  result = qword_27F4FF210;
  if (!qword_27F4FF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF210);
  }

  return result;
}

unint64_t sub_25280E9A0()
{
  result = qword_27F4FF218;
  if (!qword_27F4FF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF218);
  }

  return result;
}

unint64_t sub_25280E9F8()
{
  result = qword_27F4FF220;
  if (!qword_27F4FF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF220);
  }

  return result;
}

unint64_t sub_25280EA94()
{
  result = qword_27F4FF238;
  if (!qword_27F4FF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF238);
  }

  return result;
}

unint64_t sub_25280EAEC()
{
  result = qword_27F4FF240;
  if (!qword_27F4FF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF240);
  }

  return result;
}

unint64_t sub_25280EB44()
{
  result = qword_27F4FF248;
  if (!qword_27F4FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF248);
  }

  return result;
}

unint64_t sub_25280EB9C()
{
  result = qword_27F4FF250;
  if (!qword_27F4FF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF250);
  }

  return result;
}

unint64_t sub_25280EBF0()
{
  result = qword_27F4FF258;
  if (!qword_27F4FF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF258);
  }

  return result;
}

unint64_t sub_25280EC48()
{
  result = qword_27F4FF260;
  if (!qword_27F4FF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF260);
  }

  return result;
}

unint64_t sub_25280ECA0()
{
  result = qword_27F4FF268;
  if (!qword_27F4FF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF268);
  }

  return result;
}

unint64_t sub_25280ECF8()
{
  result = qword_27F4FF270;
  if (!qword_27F4FF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF270);
  }

  return result;
}

unint64_t sub_25280ED50()
{
  result = qword_27F4FF278;
  if (!qword_27F4FF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF278);
  }

  return result;
}

unint64_t sub_25280EDEC()
{
  result = qword_27F4FF290;
  if (!qword_27F4FF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF290);
  }

  return result;
}

unint64_t sub_25280EE44()
{
  result = qword_27F4FF298;
  if (!qword_27F4FF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF298);
  }

  return result;
}

unint64_t sub_25280EE9C()
{
  result = qword_27F4FF2A0;
  if (!qword_27F4FF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2A0);
  }

  return result;
}

unint64_t sub_25280EEF4()
{
  result = qword_27F4FF2A8;
  if (!qword_27F4FF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2A8);
  }

  return result;
}

unint64_t sub_25280EF4C()
{
  result = qword_27F4FF2B0;
  if (!qword_27F4FF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2B0);
  }

  return result;
}

unint64_t sub_25280F0B0()
{
  result = qword_27F4FF2F8;
  if (!qword_27F4FF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2F8);
  }

  return result;
}

unint64_t sub_25280F104()
{
  result = qword_27F4FF300;
  if (!qword_27F4FF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF300);
  }

  return result;
}

unint64_t sub_25280F158()
{
  result = qword_27F4FF308;
  if (!qword_27F4FF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF308);
  }

  return result;
}

unint64_t sub_25280F1AC()
{
  result = qword_27F4FF310;
  if (!qword_27F4FF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF310);
  }

  return result;
}

uint64_t sub_25280F23C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF318);
  __swift_project_value_buffer(v0, qword_27F4FF318);
  return sub_2528BEC20();
}

uint64_t static ShowNavigationIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25280F388(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

uint64_t ShowNavigationIntent.categoryType.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowNavigationIntent.categoryType.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280F52C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

uint64_t ShowNavigationIntent.dashboardViewType.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowNavigationIntent.dashboardViewType.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowNavigationIntent.deviceEntities.getter()
{
  v1 = *(v0 + 16);
  sub_2528BE790();
  return v3;
}

uint64_t sub_25280F6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowNavigationIntent.deviceEntities.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280F884(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

uint64_t ShowNavigationIntent.secondaryAccessoryControlDestination.setter(char *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowNavigationIntent.secondaryAccessoryControlDestination.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280FA70(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_25272006C(a1, &v18 - v9, &qword_27F4FD690, &unk_2528D2D30);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  sub_25272006C(v10, v8, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
  sub_2527213D8(v10, &qword_27F4FD690, &unk_2528D2D30);
}

uint64_t ShowNavigationIntent.roomEntity.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 40);
  sub_25272006C(a1, &v8 - v6, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BE7A0();
  return sub_2527213D8(a1, &qword_27F4FD690, &unk_2528D2D30);
}

uint64_t (*ShowNavigationIntent.roomEntity.modify(uint64_t *a1))()
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
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t ShowNavigationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v83 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v69 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v64 - v6;
  v82 = sub_2528BE950();
  v79 = *(v82 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v64 - v19;
  v21 = sub_2528BEC40();
  v78 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF330, &qword_2528D2D40);
  sub_2528BEC20();
  v26 = *(v22 + 56);
  v80 = v22 + 56;
  v81 = v26;
  v26(v20, 1, 1, v21);
  v87 = 8;
  v27 = sub_2528BE630();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v29(v16, 1, 1, v27);
  v29(v14, 1, 1, v27);
  v77 = *MEMORY[0x277CBA308];
  v31 = *(v79 + 104);
  v79 += 104;
  v76 = v31;
  v70 = v9;
  (v31)(v9);
  sub_2528167D8();
  v32 = v20;
  *v83 = sub_2528BE7D0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF340, &qword_2528D2D48);
  v33 = v25;
  sub_2528BEC20();
  v81(v20, 1, 1, v78);
  v86 = 3;
  v34 = v16;
  v73 = v27;
  v74 = v29;
  v75 = v30;
  v29(v16, 1, 1, v27);
  v64 = v14;
  v29(v14, 1, 1, v27);
  v35 = v70;
  v36 = v77;
  v37 = v82;
  v38 = v76;
  v76(v70, v77, v82);
  sub_2527C56B8();
  v39 = v33;
  v71 = v32;
  v65 = v34;
  v83[1] = sub_2528BE7D0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v81(v32, 1, 1, v78);
  v85 = 0;
  v41 = v73;
  v40 = v74;
  v74(v34, 1, 1, v73);
  v42 = v64;
  v40(v64, 1, 1, v41);
  v38(v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF348, &qword_2528D2D58);
  v67 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FF350, &qword_27F4FF348, &qword_2528D2D58);
  sub_2528170C4(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v72 = v39;
  v43 = v71;
  v44 = v65;
  v45 = sub_2528BE7E0();
  v46 = v83;
  v83[2] = v45;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v47 = v43;
  v48 = v78;
  v81(v47, 1, 1, v78);
  v84 = 2;
  v50 = v73;
  v49 = v74;
  v74(v44, 1, 1, v73);
  v51 = v42;
  v49(v42, 1, 1, v50);
  v52 = v77;
  v76(v35, v77, v82);
  sub_252816A44();
  v53 = v71;
  v54 = v51;
  v46[3] = sub_2528BE7D0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v81(v53, 1, 1, v48);
  v55 = type metadata accessor for HomeEntity(0);
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v56 = v44;
  v57 = v73;
  v58 = v74;
  v74(v44, 1, 1, v73);
  v58(v51, 1, 1, v57);
  v59 = v70;
  v60 = v76;
  v76(v70, v52, v82);
  sub_2528170C4(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v61 = v71;
  v83[4] = sub_2528BE7F0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF368, &qword_2528D2D70);
  sub_2528BEC20();
  v81(v61, 1, 1, v78);
  v62 = type metadata accessor for RoomEntity();
  (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
  v58(v56, 1, 1, v57);
  v58(v54, 1, 1, v57);
  v60(v59, v77, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF370, &qword_2528D2D78);
  sub_25272275C(&qword_27F4FF378, &qword_27F4FF370, &qword_2528D2D78);
  sub_2528170C4(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  result = sub_2528BE7E0();
  v83[5] = result;
  return result;
}

uint64_t ShowNavigationIntent.init(categoryType:dashboardViewType:deviceEntities:secondaryAccessoryControlDestination:roomEntity:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v91 = a3;
  v92 = a5;
  v105 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v90 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v76 - v16;
  v104 = sub_2528BE950();
  v17 = *(v104 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v104);
  v94 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v76 - v29;
  v31 = sub_2528BEC40();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v34) = *a2;
  v86 = *a1;
  v87 = v34;
  v88 = *a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF330, &qword_2528D2D40);
  sub_2528BEC20();
  v36 = *(v32 + 56);
  v100 = v32 + 56;
  v101 = v31;
  v96 = v36;
  v37 = v31;
  v36(v30, 1, 1, v31);
  LOBYTE(v107) = 8;
  v38 = sub_2528BE630();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v97 = v40;
  v41 = v39 + 56;
  v40(v26, 1, 1, v38);
  v99 = v41;
  v42 = v24;
  v40(v24, 1, 1, v38);
  v102 = *MEMORY[0x277CBA308];
  v93 = *(v17 + 104);
  v103 = v17 + 104;
  v43 = v94;
  v93(v94);
  sub_2528167D8();
  v98 = v35;
  v84 = sub_2528BE7D0();
  *v105 = v84;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF340, &qword_2528D2D48);
  sub_2528BEC20();
  v44 = v37;
  v45 = v96;
  v96(v30, 1, 1, v44);
  LOBYTE(v107) = 3;
  v76 = v26;
  v95 = v38;
  v46 = v97;
  v97(v26, 1, 1, v38);
  v47 = v42;
  v46(v42, 1, 1, v38);
  v48 = v102;
  v49 = v104;
  v50 = v93;
  (v93)(v43, v102, v104);
  sub_2527C56B8();
  v78 = v30;
  v83 = sub_2528BE7D0();
  v105[1] = v83;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v45(v30, 1, 1, v101);
  v107 = 0;
  v51 = v76;
  v52 = v95;
  v53 = v97;
  v97(v76, 1, 1, v95);
  v53(v47, 1, 1, v52);
  v54 = v53;
  v50(v43, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF348, &qword_2528D2D58);
  v81 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FF350, &qword_27F4FF348, &qword_2528D2D58);
  sub_2528170C4(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v55 = v78;
  v82 = sub_2528BE7E0();
  v56 = v105;
  v105[2] = v82;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v57 = v55;
  v58 = v55;
  v59 = v96;
  v96(v57, 1, 1, v101);
  LOBYTE(v106) = 2;
  v60 = v95;
  v54(v51, 1, 1, v95);
  v77 = v47;
  v54(v47, 1, 1, v60);
  v61 = v43;
  v62 = v93;
  (v93)(v61, v102, v104);
  sub_252816A44();
  v80 = sub_2528BE7D0();
  v56[3] = v80;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v63 = v58;
  v59(v58, 1, 1, v101);
  v64 = type metadata accessor for HomeEntity(0);
  (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
  v65 = v51;
  v66 = v95;
  v67 = v97;
  v97(v51, 1, 1, v95);
  v68 = v77;
  v67(v77, 1, 1, v66);
  v69 = v94;
  (v62)(v94, v102, v104);
  sub_2528170C4(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v70 = v68;
  v105[4] = sub_2528BE7F0();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF368, &qword_2528D2D70);
  sub_2528BEC20();
  v96(v63, 1, 1, v101);
  v71 = type metadata accessor for RoomEntity();
  v72 = v89;
  (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
  v73 = v97;
  v97(v65, 1, 1, v66);
  v73(v70, 1, 1, v66);
  (v62)(v69, v102, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF370, &qword_2528D2D78);
  sub_25272275C(&qword_27F4FF378, &qword_27F4FF370, &qword_2528D2D78);
  sub_2528170C4(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v105[5] = sub_2528BE7E0();
  LOBYTE(v106) = v86;
  sub_2528BE7A0();
  LOBYTE(v106) = v87;
  sub_2528BE7A0();
  v106 = v91;
  sub_2528BE7A0();
  LOBYTE(v106) = v88;
  sub_2528BE7A0();
  v74 = v92;
  sub_25272006C(v92, v72, &qword_27F4FD690, &unk_2528D2D30);
  sub_25272006C(v72, v90, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BE7A0();
  sub_2527213D8(v74, &qword_27F4FD690, &unk_2528D2D30);
  return sub_2527213D8(v72, &qword_27F4FD690, &unk_2528D2D30);
}