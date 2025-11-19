uint64_t sub_1D191D658()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    return sub_1D1E6923C();
  }

  else
  {
    if (*(v0 + 4))
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    return sub_1D1E6922C();
  }
}

uint64_t sub_1D191D704()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    sub_1D1E6923C();
  }

  else
  {
    if (v2)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

BOOL sub_1D191D7E8(unsigned int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) <= 1u)
  {
    if (!*(a1 + 4))
    {
      if (!*(a2 + 4))
      {
        v5 = BYTE1(v2) == BYTE1(v3);
        return *a1 == v3 && v5;
      }

      return 0;
    }

    if (v4 != 1)
    {
      return 0;
    }

    v7 = *a1;
    v8 = BYTE2(v2) == BYTE2(v3);
    return v7 == v3 && v8;
  }

  if (*(a1 + 4) == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v7 = *a1;
    v8 = (v3 ^ v2) < 0x10000;
    return v7 == v3 && v8;
  }

  v9 = *a1 == v3;
  return v4 == 3 && v9;
}

unint64_t sub_1D191D894()
{
  result = qword_1EC646EA8;
  if (!qword_1EC646EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EA8);
  }

  return result;
}

unint64_t sub_1D191D8E8()
{
  result = qword_1EC646EB0;
  if (!qword_1EC646EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EB0);
  }

  return result;
}

unint64_t sub_1D191D93C()
{
  result = qword_1EC646EB8;
  if (!qword_1EC646EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EB8);
  }

  return result;
}

unint64_t sub_1D191D990()
{
  result = qword_1EC646EC0;
  if (!qword_1EC646EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EC0);
  }

  return result;
}

unint64_t sub_1D191D9E4()
{
  result = qword_1EC646EC8;
  if (!qword_1EC646EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EC8);
  }

  return result;
}

uint64_t sub_1D191DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C444(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C6F4(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C894(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191CC2C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A98, &unk_1D1E858B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D191DDC8(uint64_t a1)
{
  result = sub_1D191DDF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D191DDF0()
{
  result = qword_1EC646F10;
  if (!qword_1EC646F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F10);
  }

  return result;
}

unint64_t sub_1D191DE48()
{
  result = qword_1EC646F18;
  if (!qword_1EC646F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F18);
  }

  return result;
}

uint64_t sub_1D191DE9C(uint64_t a1)
{
  result = sub_1D191DEF4(&qword_1EC646F20, type metadata accessor for StaticColorControlCluster);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D191DEF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D191DF3C(uint64_t a1)
{
  result = sub_1D191DF64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D191DF64()
{
  result = qword_1EC646F28;
  if (!qword_1EC646F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F28);
  }

  return result;
}

unint64_t sub_1D191DFBC()
{
  result = qword_1EC646F30;
  if (!qword_1EC646F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F30);
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D191E034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t sub_1D191E07C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D191E124()
{
  result = qword_1EC646F38;
  if (!qword_1EC646F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F38);
  }

  return result;
}

unint64_t sub_1D191E17C()
{
  result = qword_1EC646F40;
  if (!qword_1EC646F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F40);
  }

  return result;
}

unint64_t sub_1D191E1D4()
{
  result = qword_1EC646F48;
  if (!qword_1EC646F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F48);
  }

  return result;
}

unint64_t sub_1D191E22C()
{
  result = qword_1EC646F50;
  if (!qword_1EC646F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F50);
  }

  return result;
}

unint64_t sub_1D191E284()
{
  result = qword_1EC646F58;
  if (!qword_1EC646F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F58);
  }

  return result;
}

unint64_t sub_1D191E2DC()
{
  result = qword_1EC646F60;
  if (!qword_1EC646F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F60);
  }

  return result;
}

unint64_t sub_1D191E334()
{
  result = qword_1EC646F68;
  if (!qword_1EC646F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F68);
  }

  return result;
}

unint64_t sub_1D191E38C()
{
  result = qword_1EC646F70;
  if (!qword_1EC646F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F70);
  }

  return result;
}

unint64_t sub_1D191E3E4()
{
  result = qword_1EC646F78;
  if (!qword_1EC646F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F78);
  }

  return result;
}

unint64_t sub_1D191E43C()
{
  result = qword_1EC646F80;
  if (!qword_1EC646F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F80);
  }

  return result;
}

unint64_t sub_1D191E494()
{
  result = qword_1EC646F88;
  if (!qword_1EC646F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F88);
  }

  return result;
}

unint64_t sub_1D191E4EC()
{
  result = qword_1EC646F90;
  if (!qword_1EC646F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F90);
  }

  return result;
}

unint64_t sub_1D191E544()
{
  result = qword_1EC646F98;
  if (!qword_1EC646F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F98);
  }

  return result;
}

unint64_t sub_1D191E59C()
{
  result = qword_1EC646FA0;
  if (!qword_1EC646FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FA0);
  }

  return result;
}

unint64_t sub_1D191E5F4()
{
  result = qword_1EC646FA8;
  if (!qword_1EC646FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FA8);
  }

  return result;
}

uint64_t sub_1D191E648(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001D1EBE380 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EBE3C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x59586F5465766F6DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EBE3E0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D191E7BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191E8D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191E9D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EAD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EBD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191ECD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D19D6F24(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EDD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D191EF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D191EF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D191F090(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_79Tm()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t StaticRVCClusterGroup.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for StaticRVCClusterGroup()
{
  result = qword_1EE07C3D0;
  if (!qword_1EE07C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticRVCClusterGroup.runningMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticRVCClusterGroup() + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t StaticRVCClusterGroup.cleaningMode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticRVCClusterGroup() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1D191F3B0(v4, v5, v6);
}

uint64_t sub_1D191F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t StaticRVCClusterGroup.error.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StaticRVCClusterGroup.allStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRVCClusterGroup() + 36));
}

uint64_t StaticRVCClusterGroup.allRunningModes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRVCClusterGroup() + 40));
}

uint64_t StaticRVCClusterGroup.allCleaningModes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRVCClusterGroup() + 44));
}

uint64_t StaticRVCClusterGroup.serviceArea.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticRVCClusterGroup() + 60));
  v4 = v3[6];
  v6 = v3[4];
  v19 = v3[5];
  v5 = v19;
  v20[0] = v4;
  v7 = v3[4];
  v9 = v3[2];
  v17 = v3[3];
  v8 = v17;
  v18 = v7;
  v10 = v3[1];
  v16[0] = *v3;
  v11 = v3[2];
  v12 = *v3;
  v16[1] = v3[1];
  v16[2] = v11;
  *(a1 + 109) = *(v3 + 109);
  v13 = v3[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  *(a1 + 48) = v8;
  *(a1 + 64) = v6;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(v20 + 13) = *(v3 + 109);
  *a1 = v12;
  return sub_1D1741C08(v16, v15, &qword_1EC646FD0, &qword_1D1E841D0);
}

__n128 StaticRVCClusterGroup.init(endpointPath:state:runningMode:cleaningMode:serviceArea:error:allStates:allRunningModes:allCleaningModes:isGoHomeCommandSupported:supportsChangingRunModeWhileRunning:supportsChangingCleanModeWhileRunning:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13)
{
  v17 = *a2;
  v19 = *a3;
  v18 = a3[1];
  v20 = *a6;
  sub_1D191F714(a1, a9);
  v21 = type metadata accessor for StaticRVCClusterGroup();
  *(a9 + v21[5]) = v17;
  v22 = a9 + v21[6];
  *v22 = v19;
  *(v22 + 8) = v18;
  *(v22 + 16) = *(a3 + 1);
  v23 = (a9 + v21[7]);
  v24 = a4[1];
  *v23 = *a4;
  v23[1] = v24;
  *(a9 + v21[8]) = v20;
  *(a9 + v21[9]) = a7;
  *(a9 + v21[10]) = a8;
  *(a9 + v21[11]) = a10;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = a12;
  *(a9 + v21[14]) = a13;
  v25 = a9 + v21[15];
  v26 = *(a5 + 80);
  *(v25 + 64) = *(a5 + 64);
  *(v25 + 80) = v26;
  *(v25 + 96) = *(a5 + 96);
  *(v25 + 109) = *(a5 + 109);
  v27 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v27;
  result = *(a5 + 32);
  v29 = *(a5 + 48);
  *(v25 + 32) = result;
  *(v25 + 48) = v29;
  return result;
}

uint64_t sub_1D191F714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D191F794(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000025;
    if (a1 != 10)
    {
      v6 = 0x4165636976726573;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000023;
    }

    v7 = 0x696E6E75526C6C61;
    v8 = 0xD000000000000010;
    if (a1 != 7)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E696F70646E65;
    v2 = 0x676E696E61656C63;
    v3 = 0x726F727265;
    if (a1 != 4)
    {
      v3 = 0x65746174536C6C61;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6574617473;
    if (a1 != 1)
    {
      v4 = 0x4D676E696E6E7572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D191F94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D192F000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D191F974(uint64_t a1)
{
  v2 = sub_1D192CD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191F9B0(uint64_t a1)
{
  v2 = sub_1D192CD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FD8, &qword_1D1E841D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D192CD48();
  sub_1D1E6930C();
  LOBYTE(v41) = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D192F8C4(&qword_1EC646B18, type metadata accessor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticRVCClusterGroup();
    LOBYTE(v41) = *(v3 + v11[5]);
    LOBYTE(v34) = 1;
    sub_1D192CD9C();
    sub_1D1E68F1C();
    v12 = (v3 + v11[6]);
    v13 = *(v12 + 2);
    v14 = *(v12 + 3);
    v41 = *v12;
    *&v42 = v13;
    *(&v42 + 1) = v14;
    LOBYTE(v34) = 2;
    sub_1D192CDF0();

    sub_1D1E68F1C();

    v15 = (v3 + v11[7]);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    *&v41 = *v15;
    *(&v41 + 1) = v16;
    *&v42 = v17;
    *(&v42 + 1) = v18;
    LOBYTE(v34) = 3;
    sub_1D191F3B0(v41, v16, v17);
    sub_1D192CE44();
    sub_1D1E68E5C();
    sub_1D192F928(v41, *(&v41 + 1), v42);
    LOWORD(v41) = *(v3 + v11[8]);
    LOBYTE(v34) = 4;
    sub_1D192CE98();
    sub_1D1E68F1C();
    *&v41 = *(v3 + v11[9]);
    LOBYTE(v34) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192CEEC();
    sub_1D1E68F1C();
    *&v41 = *(v3 + v11[10]);
    LOBYTE(v34) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192CF70();
    sub_1D1E68F1C();
    *&v41 = *(v3 + v11[11]);
    LOBYTE(v34) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192CFF4();
    sub_1D1E68E5C();
    v19 = *(v3 + v11[12]);
    LOBYTE(v41) = 8;
    sub_1D1E68EDC();
    v20 = *(v3 + v11[13]);
    LOBYTE(v41) = 9;
    sub_1D1E68EDC();
    v21 = *(v3 + v11[14]);
    v48 = 10;
    sub_1D1E68EDC();
    v22 = (v3 + v11[15]);
    v23 = v22[5];
    v24 = v22[3];
    v45 = v22[4];
    v46 = v23;
    v25 = v22[5];
    *v47 = v22[6];
    v26 = v22[1];
    v41 = *v22;
    v42 = v26;
    v27 = v22[3];
    v29 = *v22;
    v28 = v22[1];
    v43 = v22[2];
    v44 = v27;
    v38 = v45;
    v39 = v25;
    v40[0] = v22[6];
    v34 = v29;
    v35 = v28;
    *&v47[13] = *(v22 + 109);
    *(v40 + 13) = *(v22 + 109);
    v36 = v43;
    v37 = v24;
    v33 = 11;
    sub_1D1741C08(&v41, v31, &qword_1EC646FD0, &qword_1D1E841D0);
    sub_1D192D078();
    sub_1D1E68E5C();
    v31[4] = v38;
    v31[5] = v39;
    *v32 = v40[0];
    *&v32[13] = *(v40 + 13);
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v31[3] = v37;
    sub_1D1741A30(v31, &qword_1EC646FD0, &qword_1D1E841D0);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticRVCClusterGroup.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D192F8C4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));
  sub_1D1E6923C();
  v5 = type metadata accessor for StaticRVCClusterGroup();
  MEMORY[0x1D3892850](*(v1 + v5[5]));
  v6 = (v1 + v5[6]);
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  MEMORY[0x1D3892850](*v6);
  sub_1D1E678EC();
  sub_1D176D34C(a1, v9);
  v10 = (v1 + v5[7]);
  if (v10[2])
  {
    v11 = v10[3];
    v13 = *v10;
    v12 = v10[1];
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v13);
    sub_1D1E678EC();
    sub_1D176D34C(a1, v11);
  }

  else
  {
    sub_1D1E6922C();
  }

  v14 = (v1 + v5[8]);
  v15 = *v14;
  v16 = v14[1];
  if (v16)
  {
    if (v16 == 1)
    {
      MEMORY[0x1D3892850](1);
      goto LABEL_10;
    }

    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1D3892850](v17);
LABEL_10:
  sub_1D1E6922C();
  sub_1D1771CBC(a1, *(v1 + v5[9]));
  sub_1D176DA04(a1, *(v1 + v5[10]));
  v18 = *(v1 + v5[11]);
  sub_1D1E6922C();
  if (v18)
  {
    sub_1D17705AC(a1, v18);
  }

  v19 = *(v1 + v5[12]);
  sub_1D1E6922C();
  v20 = *(v1 + v5[13]);
  sub_1D1E6922C();
  v21 = *(v1 + v5[14]);
  sub_1D1E6922C();
  v22 = (v1 + v5[15]);
  v23 = *v22;
  v24 = *(v22 + 7);
  v25 = *(v22 + 11);
  v42 = *(v22 + 9);
  v43[0] = v25;
  *(v43 + 13) = *(v22 + 101);
  v26 = *(v22 + 3);
  v38 = *(v22 + 1);
  v39 = v26;
  v40 = *(v22 + 5);
  v41 = v24;
  if (!v23)
  {
    return sub_1D1E6922C();
  }

  *&v28[56] = *(v22 + 7);
  *&v28[72] = *(v22 + 9);
  *&v28[88] = *(v22 + 11);
  *&v28[101] = *(v22 + 101);
  *&v28[8] = *(v22 + 1);
  *&v28[24] = *(v22 + 3);
  *&v28[40] = *(v22 + 5);
  *v28 = v23;
  sub_1D1E6922C();
  v33 = v41;
  v34 = v42;
  v35[0] = v43[0];
  *(v35 + 13) = *(v43 + 13);
  v30 = v38;
  v31 = v39;
  v29 = v23;
  v32 = v40;
  sub_1D192D0CC(&v29, v36);
  ServiceArea.hash(into:)(a1);
  v36[4] = *&v28[64];
  v36[5] = *&v28[80];
  v37[0] = *&v28[96];
  *(v37 + 13) = *&v28[109];
  v36[0] = *v28;
  v36[1] = *&v28[16];
  v36[2] = *&v28[32];
  v36[3] = *&v28[48];
  return sub_1D192D128(v36);
}

uint64_t StaticRVCClusterGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for EndpointPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647040, &unk_1D1E841F8);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D192CD48();
  v31 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v28;
  v26 = a1;
  LOBYTE(v32) = 0;
  sub_1D192F8C4(&qword_1EC646B80, type metadata accessor for EndpointPath);
  v16 = v29;
  sub_1D1E68D7C();
  sub_1D191F714(v16, v13);
  v39 = 1;
  sub_1D192D17C();
  sub_1D1E68D7C();
  v13[v10[5]] = v32;
  v39 = 2;
  sub_1D192D1D0();
  sub_1D1E68D7C();
  v17 = &v13[v10[6]];
  v18 = v33;
  *v17 = v32;
  *(v17 + 1) = v18;
  v39 = 3;
  sub_1D192D224();
  sub_1D1E68CBC();
  v19 = &v13[v10[7]];
  v20 = v33;
  *v19 = v32;
  *(v19 + 1) = v20;
  v39 = 4;
  sub_1D192D278();
  sub_1D1E68D7C();
  *&v13[v10[8]] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647008, &qword_1D1E841E0);
  v39 = 5;
  sub_1D192D2CC();
  sub_1D1E68D7C();
  *&v13[v10[9]] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647018, &qword_1D1E841E8);
  v39 = 6;
  sub_1D192D350();
  sub_1D1E68D7C();
  *&v13[v10[10]] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647028, &qword_1D1E841F0);
  v39 = 7;
  sub_1D192D3D4();
  sub_1D1E68CBC();
  *&v13[v10[11]] = v32;
  LOBYTE(v32) = 8;
  v13[v10[12]] = sub_1D1E68D3C() & 1;
  LOBYTE(v32) = 9;
  v13[v10[13]] = sub_1D1E68D3C() & 1;
  LOBYTE(v32) = 10;
  v13[v10[14]] = sub_1D1E68D3C() & 1;
  v39 = 11;
  sub_1D192D458();
  sub_1D1E68CBC();
  (*(v15 + 8))(v31, v30);
  v21 = &v13[v10[15]];
  v22 = v37;
  *(v21 + 4) = v36;
  *(v21 + 5) = v22;
  *(v21 + 6) = v38[0];
  *(v21 + 109) = *(v38 + 13);
  v23 = v33;
  *v21 = v32;
  *(v21 + 1) = v23;
  v24 = v35;
  *(v21 + 2) = v34;
  *(v21 + 3) = v24;
  sub_1D192DD58(v13, v27, type metadata accessor for StaticRVCClusterGroup);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1D192DCF8(v13, type metadata accessor for StaticRVCClusterGroup);
}

uint64_t sub_1D1920B40()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1920B84()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.tileStatusAttributePaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433D8, &qword_1D1E71850);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E6F900;
  *(v1 + 32) = 24;
  *(v1 + 36) = 4;
  *(v1 + 40) = 24;
  *(v1 + 44) = 5;
  *(v1 + 48) = 25;
  *(v1 + 52) = 1;
  v2 = v1;
  v5 = v1;
  if (!*(v0 + *(type metadata accessor for StaticRVCClusterGroup() + 60)))
  {
    return v2;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = 27;
  *(inited + 36) = 5;
  *(inited + 40) = 27;
  *(inited + 44) = 2;
  *(inited + 48) = 27;
  *(inited + 52) = 3;
  sub_1D17A4A08(inited);
  return v5;
}

uint64_t StaticRVCClusterGroup.RunMode.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

BOOL StaticRVCClusterGroup.RunMode.isIdle.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = *(*(v1 + 48) + v5);
    result = v7 == 64;
    if (v7 == 64)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

BOOL StaticRVCClusterGroup.RunMode.isCleaning.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = *(*(v1 + 48) + v5);
    result = v7 == 65;
    if (v7 == 65)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

BOOL StaticRVCClusterGroup.RunMode.isMapping.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = *(*(v1 + 48) + v5);
    result = v7 == 66;
    if (v7 == 66)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

uint64_t StaticRVCClusterGroup.RunMode.init(id:label:tags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1D1920F9C(uint64_t a1)
{
  v2 = sub_1D192D4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1920FD8(uint64_t a1)
{
  v2 = sub_1D192D4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL StaticRVCClusterGroup.CleanMode.isVacuum.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = v1 + 56;
  v5 = -1 << *(v1 + 32);
  v6 = v3 & ~v5;
  if (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_6:
    if (*(v1 + 16))
    {
      v8 = *(v1 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v9 = sub_1D1E6926C();
      v10 = -1 << *(v1 + 32);
      v11 = v9 & ~v10;
      if ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
      {
        v12 = ~v10;
        do
        {
          v13 = *(*(v1 + 48) + v11) & 0xBF;
          result = v13 == 131;
          if (v13 == 131)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
        }

        while (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  v7 = ~v5;
  while ((*(*(v1 + 48) + v6) & 0xBF) != 0x81)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t StaticRVCClusterGroup.CleanMode.isVacuumOnly.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while ((*(*(v1 + 48) + v5) & 0xBF) != 0x81)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D1929D78(&unk_1F4D65238, v1);
}

BOOL StaticRVCClusterGroup.CleanMode.isMop.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = v1 + 56;
  v5 = -1 << *(v1 + 32);
  v6 = v3 & ~v5;
  if (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_6:
    if (*(v1 + 16))
    {
      v8 = *(v1 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v9 = sub_1D1E6926C();
      v10 = -1 << *(v1 + 32);
      v11 = v9 & ~v10;
      if ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
      {
        v12 = ~v10;
        do
        {
          v13 = *(*(v1 + 48) + v11) & 0xBF;
          result = v13 == 131;
          if (v13 == 131)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
        }

        while (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  v7 = ~v5;
  while ((*(*(v1 + 48) + v6) & 0xBF) != 0x82)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t StaticRVCClusterGroup.CleanMode.isMopOnly.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while ((*(*(v1 + 48) + v5) & 0xBF) != 0x82)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D1929D78(&unk_1F4D65260, v1);
}

BOOL StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter()
{
  v1 = *(v0 + 24);
  if (sub_1D192D6B0(&unk_1F4D62178, v1))
  {
    return 1;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v4 = sub_1D1E6926C();
  v5 = -1 << *(v1 + 32);
  v6 = v4 & ~v5;
  if (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v1 + 48) + v6) & 0xBF;
    result = v8 == 131;
    if (v8 == 131)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t StaticRVCClusterGroup.CleanMode.primaryTags.getter()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v6);
    bzero(v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      v17 = *(*(v1 + 48) + v14);
      if (v17 < 0 && (v17 & 0x3Fu) - 1 <= 1)
      {
        *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E1A90((v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
          goto LABEL_18;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();

  v22 = sub_1D1929CE8(v21, v4, v1, sub_1D192190C);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v21, -1, -1);
  result = v22;
LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StaticRVCClusterGroup.CleanMode.secondaryTags.getter()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v6);
    bzero(v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      v17 = *(*(v1 + 48) + v14);
      if ((v17 & 0x80000000) == 0 || (v17 & 0x3F) != 1 && (v17 & 0x3E) != 2)
      {
        *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_18:
          result = sub_1D19E1A90((v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
          goto LABEL_19;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();

  v22 = sub_1D1929CE8(v21, v4, v1, sub_1D1921B9C);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v21, -1, -1);
  result = v22;
LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17A7B94(v2, v3);
}

uint64_t sub_1D1921C40(uint64_t a1)
{
  v2 = sub_1D192D860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1921C7C(uint64_t a1)
{
  v2 = sub_1D192D860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1921CFC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v12 = *v4;
  v11 = v4[1];
  v13 = v4[3];
  v18[1] = v4[2];
  v18[2] = v11;
  v18[0] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_1D1E6930C();
  v24 = 0;
  v15 = v20;
  sub_1D1E68F0C();
  if (!v15)
  {
    v17 = v18[0];
    v23 = 1;
    sub_1D1E68ECC();
    v21 = v17;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D500();
    sub_1D1E68F1C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV4hash4intoys6HasherVz_tF_0(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x1D3892850](*v1);
  sub_1D1E678EC();

  return sub_1D176D34C(a1, v5);
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  sub_1D176D34C(v6, v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1922028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D1E692FC();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v21;
  v26 = 0;
  v20 = sub_1D1E68D6C();
  v25 = 1;
  v14 = sub_1D1E68D2C();
  v16 = v15;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647098, &qword_1D1E84210);
  v24 = 2;
  sub_1D192D5D8();
  sub_1D1E68D7C();
  (*(v8 + 8))(v11, v22);
  v18 = v23;
  *v13 = v20;
  v13[1] = v17;
  v13[2] = v16;
  v13[3] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D19222A0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    v7 = 0x676E697461647075;
    if (a1 != 10)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x64656B636F64;
    v9 = 0x676E697974706D65;
    if (a1 != 7)
    {
      v9 = 0x676E696E61656C63;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E696E6E7572;
    v2 = 0x726F727265;
    v3 = 0x43676E696B656573;
    if (a1 != 4)
    {
      v3 = 0x676E696772616863;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646570706F7473;
    if (a1 != 1)
    {
      v4 = 0x646573756170;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D192243C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  sub_1D176D34C(v6, v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D19224E0(uint64_t a1)
{
  v2 = sub_1D192DB00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192251C(uint64_t a1)
{
  v2 = sub_1D192DB00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922558(uint64_t a1)
{
  v2 = sub_1D192DA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922594(uint64_t a1)
{
  v2 = sub_1D192DA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19225D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D192F4EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1922600(uint64_t a1)
{
  v2 = sub_1D192D8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192263C(uint64_t a1)
{
  v2 = sub_1D192D8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922678(uint64_t a1)
{
  v2 = sub_1D192DAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19226B4(uint64_t a1)
{
  v2 = sub_1D192DAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19226F0(uint64_t a1)
{
  v2 = sub_1D192DA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192272C(uint64_t a1)
{
  v2 = sub_1D192DA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922768(uint64_t a1)
{
  v2 = sub_1D192DBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19227A4(uint64_t a1)
{
  v2 = sub_1D192DBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19227E0(uint64_t a1)
{
  v2 = sub_1D192D9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192281C(uint64_t a1)
{
  v2 = sub_1D192D9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922858(uint64_t a1)
{
  v2 = sub_1D192DBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922894(uint64_t a1)
{
  v2 = sub_1D192DBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19228D0(uint64_t a1)
{
  v2 = sub_1D192DCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192290C(uint64_t a1)
{
  v2 = sub_1D192DCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922948(uint64_t a1)
{
  v2 = sub_1D192DB54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922984(uint64_t a1)
{
  v2 = sub_1D192DB54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19229C0(uint64_t a1)
{
  v2 = sub_1D192DC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19229FC(uint64_t a1)
{
  v2 = sub_1D192DC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922A38(uint64_t a1)
{
  v2 = sub_1D192D908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922A74(uint64_t a1)
{
  v2 = sub_1D192D908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922AB0(uint64_t a1)
{
  v2 = sub_1D192D95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922AEC(uint64_t a1)
{
  v2 = sub_1D192D95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470E0, &qword_1D1E84230);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470E8, &qword_1D1E84238);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470F0, &qword_1D1E84240);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470F8, &qword_1D1E84248);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647100, &qword_1D1E84250);
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647108, &qword_1D1E84258);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647110, &qword_1D1E84260);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v57 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647118, &qword_1D1E84268);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647120, &qword_1D1E84270);
  v64 = *(v65 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647128, &qword_1D1E84278);
  v61 = *(v62 - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - v28;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647130, &qword_1D1E84280);
  v58 = *(v59 - 8);
  v29 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647138, &qword_1D1E84288);
  v57 = *(v32 - 8);
  v33 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - v34;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647140, &qword_1D1E84290);
  v36 = *(v91 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v39 = &v57 - v38;
  v40 = *v1;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(v41, v43);
  sub_1D192D8B4();
  v90 = v39;
  sub_1D1E6930C();
  v44 = (v36 + 8);
  if (v40 > 5)
  {
    if (v40 > 8)
    {
      if (v40 == 9)
      {
        v101 = 9;
        sub_1D192D9B0();
        v48 = v81;
        v50 = v90;
        v49 = v91;
        sub_1D1E68DFC();
        v52 = v82;
        v51 = v83;
      }

      else if (v40 == 10)
      {
        v102 = 10;
        sub_1D192D95C();
        v48 = v84;
        v50 = v90;
        v49 = v91;
        sub_1D1E68DFC();
        v52 = v85;
        v51 = v86;
      }

      else
      {
        v103 = 11;
        sub_1D192D908();
        v48 = v87;
        v50 = v90;
        v49 = v91;
        sub_1D1E68DFC();
        v52 = v88;
        v51 = v89;
      }
    }

    else if (v40 == 6)
    {
      v98 = 6;
      sub_1D192DAAC();
      v48 = v72;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      v52 = v73;
      v51 = v74;
    }

    else if (v40 == 7)
    {
      v99 = 7;
      sub_1D192DA58();
      v48 = v75;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      v52 = v76;
      v51 = v77;
    }

    else
    {
      v100 = 8;
      sub_1D192DA04();
      v48 = v78;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      v52 = v79;
      v51 = v80;
    }

    (*(v52 + 8))(v48, v51);
  }

  else if (v40 > 2)
  {
    if (v40 == 3)
    {
      v95 = 3;
      sub_1D192DBA8();
      v54 = v63;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      (*(v64 + 8))(v54, v65);
    }

    else if (v40 == 4)
    {
      v96 = 4;
      sub_1D192DB54();
      v53 = v66;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      (*(v67 + 8))(v53, v68);
    }

    else
    {
      v97 = 5;
      sub_1D192DB00();
      v56 = v69;
      v50 = v90;
      v49 = v91;
      sub_1D1E68DFC();
      (*(v70 + 8))(v56, v71);
    }
  }

  else if (v40)
  {
    if (v40 == 1)
    {
      v93 = 1;
      sub_1D192DC50();
      v45 = v90;
      v46 = v91;
      sub_1D1E68DFC();
      (*(v58 + 8))(v31, v59);
      return (*v44)(v45, v46);
    }

    v94 = 2;
    sub_1D192DBFC();
    v55 = v60;
    v50 = v90;
    v49 = v91;
    sub_1D1E68DFC();
    (*(v61 + 8))(v55, v62);
  }

  else
  {
    v92 = 0;
    sub_1D192DCA4();
    v50 = v90;
    v49 = v91;
    sub_1D1E68DFC();
    (*(v57 + 8))(v35, v32);
  }

  return (*v44)(v50, v49);
}

uint64_t StaticRVCClusterGroup.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471B0, &qword_1D1E84298);
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471B8, &qword_1D1E842A0);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v70 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471C0, &qword_1D1E842A8);
  v92 = *(v93 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v99 = &v70 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471C8, &qword_1D1E842B0);
  v90 = *(v91 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v101 = &v70 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471D0, &qword_1D1E842B8);
  v88 = *(v89 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v100 = &v70 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471D8, &qword_1D1E842C0);
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v107 = &v70 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471E0, &qword_1D1E842C8);
  v85 = *(v84 - 8);
  v17 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v106 = &v70 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471E8, &qword_1D1E842D0);
  v83 = *(v82 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v105 = &v70 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471F0, &qword_1D1E842D8);
  v80 = *(v81 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v104 = &v70 - v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471F8, &qword_1D1E842E0);
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v98 = &v70 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647200, &qword_1D1E842E8);
  v76 = *(v77 - 8);
  v25 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647208, &qword_1D1E842F0);
  v75 = *(v28 - 8);
  v29 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647210, &unk_1D1E842F8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v70 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D192D8B4();
  v39 = v109;
  sub_1D1E692FC();
  if (!v39)
  {
    v72 = v31;
    v71 = v28;
    v73 = v27;
    v40 = v104;
    v41 = v105;
    v43 = v106;
    v42 = v107;
    v109 = v33;
    v44 = v108;
    v74 = v32;
    v45 = sub_1D1E68DDC();
    v46 = (2 * *(v45 + 16)) | 1;
    v111 = v45;
    v112 = v45 + 32;
    v113 = 0;
    v114 = v46;
    v47 = sub_1D18085C0();
    if (v47 != 12 && v113 == v114 >> 1)
    {
      v115 = v47;
      if (v47 > 5u)
      {
        if (v47 > 8u)
        {
          v57 = v74;
          if (v47 != 9)
          {
            v60 = v109;
            if (v47 == 10)
            {
              v116 = 10;
              sub_1D192D95C();
              v61 = v102;
              sub_1D1E68C4C();
              (*(v94 + 8))(v61, v95);
            }

            else
            {
              v116 = 11;
              sub_1D192D908();
              v69 = v103;
              sub_1D1E68C4C();
              (*(v96 + 8))(v69, v97);
            }

            (*(v60 + 8))(v36, v57);
            goto LABEL_33;
          }

          v116 = 9;
          sub_1D192D9B0();
          v66 = v99;
          sub_1D1E68C4C();
          v63 = v109;
          (*(v92 + 8))(v66, v93);
        }

        else
        {
          v57 = v74;
          if (v47 != 6)
          {
            v58 = v109;
            if (v47 == 7)
            {
              v116 = 7;
              sub_1D192DA58();
              v59 = v100;
              sub_1D1E68C4C();
              (*(v88 + 8))(v59, v89);
            }

            else
            {
              v116 = 8;
              sub_1D192DA04();
              v68 = v101;
              sub_1D1E68C4C();
              (*(v90 + 8))(v68, v91);
            }

            goto LABEL_31;
          }

          v116 = 6;
          sub_1D192DAAC();
          sub_1D1E68C4C();
          v63 = v109;
          (*(v86 + 8))(v42, v87);
        }

        (*(v63 + 8))(v36, v57);
      }

      else
      {
        if (v47 <= 2u)
        {
          if (v47)
          {
            if (v47 == 1)
            {
              v116 = 1;
              sub_1D192DC50();
              v48 = v73;
              v49 = v74;
              sub_1D1E68C4C();
              (*(v76 + 8))(v48, v77);
            }

            else
            {
              v116 = 2;
              sub_1D192DBFC();
              v67 = v98;
              v49 = v74;
              sub_1D1E68C4C();
              (*(v78 + 8))(v67, v79);
            }
          }

          else
          {
            v116 = 0;
            sub_1D192DCA4();
            v62 = v72;
            v49 = v74;
            sub_1D1E68C4C();
            (*(v75 + 8))(v62, v71);
          }

          (*(v109 + 8))(v36, v49);
          goto LABEL_33;
        }

        if (v47 != 3)
        {
          v58 = v109;
          v57 = v74;
          if (v47 == 4)
          {
            v116 = 4;
            sub_1D192DB54();
            sub_1D1E68C4C();
            (*(v83 + 8))(v41, v82);
          }

          else
          {
            v116 = 5;
            sub_1D192DB00();
            sub_1D1E68C4C();
            (*(v85 + 8))(v43, v84);
          }

LABEL_31:
          (*(v58 + 8))(v36, v57);
          goto LABEL_33;
        }

        v116 = 3;
        sub_1D192DBA8();
        v64 = v74;
        sub_1D1E68C4C();
        v65 = v109;
        (*(v80 + 8))(v40, v81);
        (*(v65 + 8))(v36, v64);
      }

LABEL_33:
      swift_unknownObjectRelease();
      *v44 = v115;
      return __swift_destroy_boxed_opaque_existential_1(v110);
    }

    v50 = sub_1D1E688EC();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v52 = &type metadata for StaticRVCClusterGroup.State;
    v54 = v36;
    v55 = v74;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v109 + 8))(v54, v55);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

uint64_t StaticRVCClusterGroup.firstIdleRunningMode.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(v3 + 40));
  v5 = 1 << *(v4 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + *(v3 + 40));

  v11 = 0;
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v4 + 48) + ((v11 << 11) | (32 * v13)));
    v15 = v14[3];
    if (*(v15 + 16))
    {
      v16 = *v14;
      v23 = v14[1];
      v17 = v14[2];
      v18 = *(v15 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v19 = sub_1D1E6926C();
      v20 = -1 << *(v15 + 32);
      v21 = v19 & ~v20;
      if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(v15 + 48) + v21) != 64)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        *a1 = v16;
        a1[1] = v23;
        a1[2] = v17;
        a1[3] = v15;
        return result;
      }

LABEL_15:
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *a1 = 0u;
      *(a1 + 1) = 0u;
      return result;
    }

    v7 = *(v4 + 56 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.firstCleaningRunningMode.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(v3 + 40));
  v5 = 1 << *(v4 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + *(v3 + 40));

  v11 = 0;
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v4 + 48) + ((v11 << 11) | (32 * v13)));
    v15 = v14[3];
    if (*(v15 + 16))
    {
      v16 = *v14;
      v23 = v14[1];
      v17 = v14[2];
      v18 = *(v15 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v19 = sub_1D1E6926C();
      v20 = -1 << *(v15 + 32);
      v21 = v19 & ~v20;
      if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(v15 + 48) + v21) != 65)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        *a1 = v16;
        a1[1] = v23;
        a1[2] = v17;
        a1[3] = v15;
        return result;
      }

LABEL_15:
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *a1 = 0u;
      *(a1 + 1) = 0u;
      return result;
    }

    v7 = *(v4 + 56 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.firstVacuumCleaningMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v15 = *v7;
        v9 = *(v7 + 16);
        v10 = *(v8 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v11 = sub_1D1E6926C();
        v12 = -1 << *(v8 + 32);
        v13 = v11 & ~v12;
        if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while ((*(*(v8 + 48) + v13) & 0xBF) != 0x81)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          result = sub_1D1929D78(&unk_1F4D652B8, v8);
          if (result)
          {
            *a1 = v15;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }
        }

LABEL_5:
      }

      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.firstMopCleaningMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v15 = *v7;
        v9 = *(v7 + 16);
        v10 = *(v8 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v11 = sub_1D1E6926C();
        v12 = -1 << *(v8 + 32);
        v13 = v11 & ~v12;
        if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while ((*(*(v8 + 48) + v13) & 0xBF) != 0x82)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          result = sub_1D1929D78(&unk_1F4D652E0, v8);
          if (result)
          {
            *a1 = v15;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }
        }

LABEL_5:
      }

      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.firstVacuumAndMopCleaningMode.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v15 = *(v4 + 16)) != 0)
  {
    v5 = 0;
    while (v5 < *(v4 + 16))
    {
      v6 = (v4 + 32 + 32 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];

      result = sub_1D192D6B0(&unk_1F4D62178, v10);
      if (result)
      {
        goto LABEL_14;
      }

      if (*(v10 + 16))
      {
        v11 = *(v10 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v12 = -1 << *(v10 + 32);
        v13 = result & ~v12;
        if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while ((*(*(v10 + 48) + v13) & 0xBF) != 0x83)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_14:
          *a1 = v7;
          a1[1] = v8;
          a1[2] = v9;
          a1[3] = v10;
          return result;
        }
      }

LABEL_4:
      ++v5;

      if (v5 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.runMode(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v6 = 0;
  v7 = *(v2 + *(result + 40));
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v6;
LABEL_10:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v7 + 48);
    if (*(v15 + 32 * v14) == a1)
    {
      v16 = (v15 + 32 * v14);
      v17 = v16[2];
      v18 = v16[3];
      v19 = v16[1];
      *a2 = a1;
      a2[1] = v19;
      a2[2] = v17;
      a2[3] = v18;
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      *a2 = 0u;
      *(a2 + 1) = 0u;
      return result;
    }

    v10 = *(v7 + 56 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double StaticRVCClusterGroup.cleanMode(with:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for StaticRVCClusterGroup() + 44));
  if (v5)
  {
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = v6 + 4;
      v9 = *v6;
      v6 += 4;
      if (v9 == a1)
      {
        v11 = *(v8 - 3);
        v10 = *(v8 - 2);
        v12 = *(v8 - 1);
        *a2 = a1;
        a2[1] = v11;
        a2[2] = v10;
        a2[3] = v12;

        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

double StaticRVCClusterGroup.firstRunMode(with:)@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v4 = type metadata accessor for StaticRVCClusterGroup();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = v2;
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v48 = v6;
  v9 = *(v2 + *(v6 + 40));
  v10 = 1 << *(v9 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v9 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = *(v2 + *(v6 + 40));

  v15 = 0;
  while (v12)
  {
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (*(v9 + 48) + ((v15 << 11) | (32 * v17)));
    v19 = v18[3];
    if (*(v19 + 16))
    {
      v20 = *v18;
      v51 = v18[1];
      v21 = v18[2];
      v22 = *(v19 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v23 = sub_1D1E6926C();
      v24 = -1 << *(v19 + 32);
      v25 = v23 & ~v24;
      if ((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v27 = *(v19 + 48);
        while ((*(v27 + v25) & 0xC0) != 0x40 || (*(v27 + v25) & 0x3F) != v8)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v45 = v51;
        v44 = v52;
        *v52 = v20;
        v44[1] = v45;
        v44[2] = v21;
        v44[3] = v19;
        return result;
      }

LABEL_18:
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 56 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_20;
  }

LABEL_26:
  swift_once();
LABEL_20:
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EE07A0B0);
  v30 = v50;
  sub_1D192DD58(v49, v50, type metadata accessor for StaticRVCClusterGroup);
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6833C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v54[0] = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EBE400, v54);
    *(v33 + 12) = 2082;
    v53 = v8;
    v35 = sub_1D1E678BC();
    v37 = sub_1D1B1312C(v35, v36, v54);

    *(v33 + 14) = v37;
    *(v33 + 22) = 2082;
    v38 = *(v30 + *(v48 + 40));
    sub_1D17859B8();
    v39 = sub_1D1E6817C();
    v41 = v40;
    sub_1D192DCF8(v30, type metadata accessor for StaticRVCClusterGroup);
    v42 = sub_1D1B1312C(v39, v41, v54);

    *(v33 + 24) = v42;
    _os_log_impl(&dword_1D16EC000, v31, v32, "%s Couldn't find a run mode that contained the specified tag: %{public}s allRunningModes: %{public}s'", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    sub_1D192DCF8(v30, type metadata accessor for StaticRVCClusterGroup);
  }

  v46 = v52;
  result = 0.0;
  *v52 = 0u;
  *(v46 + 1) = 0u;
  return result;
}

uint64_t sub_1D1925450()
{
  result = sub_1D179B598(&unk_1F4D5F480);
  qword_1EC646FC8 = result;
  return result;
}

uint64_t StaticRVCClusterGroup.representedClusterKinds.getter()
{
  if (qword_1EC642250 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC646FC8;
  v1 = type metadata accessor for StaticRVCClusterGroup();
  v2 = *(v0 + *(v1 + 44));
  if (v2 && *(v2 + 16))
  {

    sub_1D1761BE0(&v4, 26);
  }

  else
  {
  }

  if (*(v0 + *(v1 + 60)))
  {
    sub_1D1761BE0(&v5, 27);
  }

  return v6;
}

uint64_t StaticRVCClusterGroup.init(endpointPath:valueSource:)@<X0>(uint64_t a1@<X0>, int64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v173 = a3;
  v5 = type metadata accessor for EndpointPath(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClusterPath(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v168 = &v152 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v152 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v152 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v171 = &v152 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v152 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v172 = &v152 - v26;
  v28 = *a2;
  v27 = a2[1];
  v29 = *(a1 + *(v6 + 32));
  v182 = *a2;
  v183 = v27;
  LOWORD(v184) = v29;
  BYTE2(v184) = 0;
  v185 = 0;
  v186 = 0;

  v30 = DescriptorClusterDecoder.availableClusterKinds.getter();
  if (qword_1EC642250 != -1)
  {
    swift_once();
  }

  if ((sub_1D192A600(v30, qword_1EC646FC8) & 1) == 0)
  {
    sub_1D192DCF8(a1, type metadata accessor for EndpointPath);

    swift_bridgeObjectRelease_n();
    goto LABEL_23;
  }

  v167 = v14;
  v165 = v9;
  v31 = v172;
  sub_1D192DD58(a1, v172, type metadata accessor for EndpointPath);
  *(v31 + *(v10 + 20)) = 24;
  v32 = v170;
  sub_1D192DD58(a1, v170, type metadata accessor for EndpointPath);
  *(v32 + *(v10 + 20)) = 25;
  v33 = v171;
  sub_1D192DD58(a1, v171, type metadata accessor for EndpointPath);
  *(v33 + *(v10 + 20)) = 26;
  v182 = v28;
  v183 = v27;
  v34 = sub_1D19268A4(v32);
  if (!v34)
  {

    swift_bridgeObjectRelease_n();
    sub_1D192DCF8(a1, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v33, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v32, type metadata accessor for ClusterPath);
    v55 = v31;
    goto LABEL_21;
  }

  v35 = v34;
  v166 = a1;
  v182 = v28;
  v183 = v27;
  v36 = sub_1D1927778(v32, "Couldn't get value for current run mode: (%{public}s path:'%{public}s'");
  if ((v36 & 0x10000) != 0)
  {

    swift_bridgeObjectRelease_n();
    sub_1D192DCF8(v166, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v33, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v32, type metadata accessor for ClusterPath);
    v55 = v172;
    goto LABEL_21;
  }

  v37 = 0;
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v35 + 56);
  v41 = (v38 + 63) >> 6;
  v42 = v36;
  v43 = v166;
  v44 = v167;
  while (v40)
  {
    v45 = v37;
LABEL_15:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = v46 | (v45 << 6);
    v48 = *(v35 + 48);
    if (*(v48 + 32 * v47) == v36)
    {
      v164 = v30;
      v49 = (v48 + 32 * v47);
      v50 = v49[2];
      v160 = v49[1];
      v51 = v49[3];
      v163 = v50;

      v162 = v51;

      v52 = v32;
      v53 = v169;
      sub_1D192DD58(v52, v169, type metadata accessor for ClusterPath);
      v54 = sub_1D192B170(65532, v53, v28, v27);
      sub_1D192DCF8(v53, type metadata accessor for ClusterPath);
      if ((v54 & 0x100000000) != 0)
      {
        if (qword_1EE07A0A8 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_116;
      }

      v153 = (v54 >> 16) & 1;
      goto LABEL_29;
    }
  }

  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v41)
    {

      swift_bridgeObjectRelease_n();
      sub_1D192DCF8(v43, type metadata accessor for EndpointPath);
      sub_1D192DCF8(v33, type metadata accessor for ClusterPath);
      sub_1D192DCF8(v32, type metadata accessor for ClusterPath);
      sub_1D192DCF8(v172, type metadata accessor for ClusterPath);

      goto LABEL_23;
    }

    v40 = *(v35 + 56 + 8 * v45);
    ++v37;
    if (v40)
    {
      v37 = v45;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_106:
  v95 = v30;
  if (v37)
  {
    if (v37 == 1)
    {
      v91 = 5;
    }

    else
    {
      v91 = 6;
    }
  }

  else
  {
    v91 = 4;
  }

  while (v95)
  {
    v96 = v41;
    LODWORD(v167) = v91;
    v19 = (v95 + 56);
    v97 = 1 << *(v95 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v95 + 56);
    v28 = (v97 + 63) >> 6;

    v44 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v99; i[v110 + 32] = v169)
    {
LABEL_81:
      v102 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v103 = (*(v95 + 48) + ((v44 << 7) | (2 * v102)));
      v104 = *v103;
      v105 = v103[1];
      v106 = 0x3020001u >> (8 * v104);
      v107 = v104 + 4;
      if (v105 != 1)
      {
        v107 = 11;
      }

      if (v105)
      {
        v108 = v107;
      }

      else
      {
        v108 = v106;
      }

      LODWORD(v169) = v108;
      v109 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1D177E51C(0, *(v109 + 2) + 1, 1, v109);
      }

      i = v109;
      v110 = *(v109 + 2);
      v111 = *(i + 3);
      v112 = v110 + 1;
      if (v110 >= v111 >> 1)
      {
        v152 = v110 + 1;
        v113 = sub_1D177E51C((v111 > 1), v110 + 1, 1, i);
        v112 = v152;
        i = v113;
      }

      *(i + 2) = v112;
    }

    while (1)
    {
      v101 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v101 >= v28)
      {
        LODWORD(v169) = v42;
        v114 = v166;
        v115 = i;

        v116 = sub_1D17848D4(v115);

        v117 = v172;
        v118 = sub_1D192C254(v172, v154, v27);
        v119 = *(v118 + 16);
        v120 = 32;
        do
        {
          v121 = v119;
          if (v119-- == 0)
          {
            break;
          }

          v123 = *(v118 + v120);
          v120 += 4;
        }

        while (v123 != 128);
        v124 = v35;

        v125 = sub_1D17198DC(27, v164);

        if (v125)
        {
          v126 = v165;
          sub_1D192DD58(v114, v165, type metadata accessor for EndpointPath);
          v182 = v154;
          v183 = v27;
          sub_1D196E798(v126, &v182, &v174);

          sub_1D192DCF8(v171, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v170, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v117, type metadata accessor for ClusterPath);
        }

        else
        {
          swift_bridgeObjectRelease_n();
          sub_1D192DCF8(v171, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v170, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v117, type metadata accessor for ClusterPath);
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v179 = 0u;
          memset(v180, 0, sizeof(v180));
        }

        v138 = v114;
        v139 = v173;
        sub_1D191F714(v138, v173);
        v140 = type metadata accessor for StaticRVCClusterGroup();
        *(v139 + v140[5]) = v167;
        v141 = (v139 + v140[6]);
        v142 = v160;
        *v141 = v161;
        v141[1] = v142;
        v143 = v162;
        v141[2] = v163;
        v141[3] = v143;
        v144 = (v139 + v140[7]);
        v145 = v157;
        *v144 = v158;
        v144[1] = v145;
        v146 = v155;
        v144[2] = v156;
        v144[3] = v146;
        v147 = (v139 + v140[8]);
        *v147 = v96;
        v147[1] = v169;
        *(v139 + v140[9]) = v116;
        *(v139 + v140[10]) = v124;
        *(v139 + v140[11]) = v159;
        *(v139 + v140[12]) = v121 != 0;
        *(v139 + v140[13]) = v153;
        *(v139 + v140[14]) = v168;
        v148 = v139 + v140[15];
        v149 = v179;
        *(v148 + 64) = v178;
        *(v148 + 80) = v149;
        *(v148 + 96) = *v180;
        *(v148 + 109) = *&v180[13];
        v150 = v175;
        *v148 = v174;
        *(v148 + 16) = v150;
        v151 = v177;
        *(v148 + 32) = v176;
        *(v148 + 48) = v151;
        return (*(*(v140 - 1) + 56))(v139, 0, 1, v140);
      }

      v99 = *&v19[8 * v101];
      ++v44;
      if (v99)
      {
        v44 = v101;
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_25:
    v59 = sub_1D1E6709C();
    __swift_project_value_buffer(v59, qword_1EE07A0B0);
    sub_1D192DD58(v170, v19, type metadata accessor for ClusterPath);
    v60 = sub_1D1E6707C();
    v61 = sub_1D1E6833C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v182 = v63;
      *v62 = 136446210;
      LODWORD(v159) = v61;
      v158 = ClusterPath.description.getter();
      v65 = v64;
      sub_1D192DCF8(v19, type metadata accessor for ClusterPath);
      v66 = sub_1D1B1312C(v158, v65, &v182);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1D16EC000, v60, v159, "Couldn't read runMode FeatureMap '%{public}s'", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D3893640](v63, -1, -1);
      MEMORY[0x1D3893640](v62, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v19, type metadata accessor for ClusterPath);
    }

    v153 = 0;
LABEL_29:
    v67 = v171;
    if (sub_1D17198DC(26, v164) && (v182 = v28, v183 = v27, v68 = sub_1D1927018(v67), v182 = v28, v183 = v27, v69 = sub_1D1927778(v67, "Couldn't get value for current clean mode: (%{public}s path:'%{public}s'"), v68))
    {
      v70 = v68 + 32;
      v71 = *(v68 + 2) + 1;
      v159 = v68;
      while (--v71)
      {
        v72 = v70;
        v70 += 32;
        if ((v69 & 0x10000) == 0 && *v72 == v69)
        {
          v158 = v69;
          v73 = *(v70 - 2);
          v157 = *(v70 - 3);
          v74 = *(v70 - 1);
          v156 = v73;

          v155 = v74;

          goto LABEL_38;
        }
      }

      v158 = 0;
      v157 = 0;
      v156 = 0;
      v75 = &v180[8];
    }

    else
    {
      v158 = 0;
      v157 = 0;
      v156 = 0;
      v155 = 0;
      v75 = &v183;
    }

    *(v75 - 32) = 0;
LABEL_38:
    v76 = v169;
    sub_1D192DD58(v67, v169, type metadata accessor for ClusterPath);
    v77 = sub_1D192B170(65532, v76, v28, v27);
    sub_1D192DCF8(v76, type metadata accessor for ClusterPath);
    v161 = v42;
    if ((v77 & 0x100000000) != 0)
    {
      if (sub_1D17198DC(26, v164))
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v79 = sub_1D1E6709C();
        __swift_project_value_buffer(v79, qword_1EE07A0B0);
        v80 = v168;
        sub_1D192DD58(v67, v168, type metadata accessor for ClusterPath);
        v81 = sub_1D1E6707C();
        v82 = sub_1D1E6833C();
        if (os_log_type_enabled(v81, v82))
        {
          v78 = v163;
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v182 = v84;
          *v83 = 136446210;
          v169 = ClusterPath.description.getter();
          v86 = v85;
          sub_1D192DCF8(v80, type metadata accessor for ClusterPath);
          v87 = v28;
          v88 = sub_1D1B1312C(v169, v86, &v182);

          *(v83 + 4) = v88;
          v28 = v87;
          _os_log_impl(&dword_1D16EC000, v81, v82, "Couldn't read cleanMode FeatureMap '%{public}s' even though there is a clean mode cluster", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x1D3893640](v84, -1, -1);
          MEMORY[0x1D3893640](v83, -1, -1);
        }

        else
        {
          v78 = v163;

          sub_1D192DCF8(v80, type metadata accessor for ClusterPath);
        }

        v168 = 0;
        v44 = v167;
      }

      else
      {
        v78 = v163;
        v168 = 0;
      }
    }

    else
    {
      v78 = v163;
      v168 = (v77 >> 16) & 1;
    }

    v182 = v28;
    v183 = v27;
    v89 = v28;
    v28 = v172;
    v30 = sub_1D1927BBC(v172);
    v182 = v89;
    v183 = v27;
    sub_1D1927E9C(v28, &v181);
    v90 = HIBYTE(v181);
    v154 = v89;
    if (v90 >= 0xFF)
    {
      v182 = v161;
      v183 = v160;
      v184 = v78;
      v185 = v162;
      v91 = StaticRVCClusterGroup.RunMode.isCleaning.getter();
      v182 = v89;
      v183 = v27;
      sub_1D1928144(v28, &v181);
      v92 = HIBYTE(v181);
      if (v92 <= 0xFE)
      {
        LOBYTE(v41) = v181;
      }

      else
      {
        LOBYTE(v41) = 0;
      }

      if (v92 <= 0xFE)
      {
        v42 = v92;
      }

      else
      {
        v42 = 0;
      }

      goto LABEL_69;
    }

    v93 = v181;
    v182 = v89;
    v183 = v27;
    sub_1D1928144(v28, &v181);
    v94 = HIBYTE(v181);
    if (v94 <= 0xFE)
    {
      LOBYTE(v41) = v181;
    }

    else
    {
      LOBYTE(v41) = 0;
    }

    if (v94 <= 0xFE)
    {
      v42 = v94;
    }

    else
    {
      v42 = 0;
    }

    if (v90)
    {
      if (v90 == 1)
      {
        LODWORD(v37) = v93;
        if (v93 <= 2u)
        {
          goto LABEL_106;
        }

        if (v93 > 4u)
        {
          v95 = v30;
          if (v37 == 5)
          {
            v91 = 9;
          }

          else
          {
            v91 = 10;
          }
        }

        else
        {
          v95 = v30;
          if (v37 == 3)
          {
            v91 = 7;
          }

          else
          {
            v91 = 8;
          }
        }
      }

      else
      {
        v91 = 11;
        v95 = v30;
      }
    }

    else
    {
      v91 = v93;
LABEL_69:
      v95 = v30;
      if (v91 <= 1u)
      {
        v91 = v91 == 0;
      }
    }
  }

  sub_1D192F928(v158, v157, v156);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v127 = sub_1D1E6709C();
  __swift_project_value_buffer(v127, qword_1EE07A0B0);
  sub_1D192DD58(v28, v44, type metadata accessor for ClusterPath);
  v128 = sub_1D1E6707C();
  v129 = sub_1D1E6833C();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = v44;
    v132 = swift_slowAlloc();
    v182 = v132;
    *v130 = 136446210;
    v133 = v28;
    v134 = ClusterPath.description.getter();
    v136 = v135;
    sub_1D192DCF8(v131, type metadata accessor for ClusterPath);
    v137 = sub_1D1B1312C(v134, v136, &v182);

    *(v130 + 4) = v137;
    _os_log_impl(&dword_1D16EC000, v128, v129, "Failed to fetch operationalStateList %{public}s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    MEMORY[0x1D3893640](v132, -1, -1);
    MEMORY[0x1D3893640](v130, -1, -1);

    sub_1D192DCF8(v166, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v171, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v170, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v133, type metadata accessor for ClusterPath);
    goto LABEL_23;
  }

  sub_1D192DCF8(v166, type metadata accessor for EndpointPath);
  sub_1D192DCF8(v44, type metadata accessor for ClusterPath);
  sub_1D192DCF8(v171, type metadata accessor for ClusterPath);
  sub_1D192DCF8(v170, type metadata accessor for ClusterPath);
  v55 = v28;
LABEL_21:
  sub_1D192DCF8(v55, type metadata accessor for ClusterPath);
LABEL_23:
  v56 = v173;
  v57 = type metadata accessor for StaticRVCClusterGroup();
  return (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
}

uint64_t sub_1D19268A4(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v65 = v5;
  v66 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v62[0] = v9;
  v62[1] = v8;
  AttributeValueSet.value(for:in:)(0, v64, v67);
  __swift_destroy_boxed_opaque_existential_1(v64);
  sub_1D1741C08(v67, v64, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v65)
  {
    sub_1D1741A30(v64, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_33:
    if (qword_1EE07A0A8 == -1)
    {
LABEL_34:
      v35 = sub_1D1E6709C();
      __swift_project_value_buffer(v35, qword_1EE07A0B0);
      sub_1D1741C08(v67, v64, &qword_1EC645D58, &unk_1D1E7E530);
      sub_1D192DD58(a1, v7, type metadata accessor for ClusterPath);
      v36 = sub_1D1E6707C();
      v37 = sub_1D1E6833C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v63 = v39;
        *v38 = 136446466;
        sub_1D1741C08(v64, v62, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
        v40 = sub_1D1E678BC();
        v42 = v41;
        sub_1D1741A30(v64, &qword_1EC645D58, &unk_1D1E7E530);
        v43 = sub_1D1B1312C(v40, v42, &v63);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2082;
        v44 = ClusterPath.description.getter();
        v46 = v45;
        sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
        v47 = sub_1D1B1312C(v44, v46, &v63);

        *(v38 + 14) = v47;
        _os_log_impl(&dword_1D16EC000, v36, v37, "Couldn't create MTRRVCRunModeClusterModeOptionStruct from value '%{public}s' path:'%{public}s'", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v39, -1, -1);
        MEMORY[0x1D3893640](v38, -1, -1);
      }

      else
      {

        sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
        sub_1D1741A30(v64, &qword_1EC645D58, &unk_1D1E7E530);
      }

      sub_1D1741A30(v67, &qword_1EC645D58, &unk_1D1E7E530);
      return 0;
    }

LABEL_43:
    swift_once();
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647390, &qword_1D1E85510);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v7 = v62[0];
  if (v62[0] >> 62)
  {
    v11 = sub_1D1E6873C();
  }

  else
  {
    v11 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v7;
  if (v11)
  {
    v12 = 0;
    a1 = 0;
    v55 = v51 & 0xC000000000000001;
    v54 = v51 & 0xFFFFFFFFFFFFFF8;
    v53 = (v51 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v52 = v11;
    while (1)
    {
      if (v55)
      {
        v14 = MEMORY[0x1D3891EF0](v12, v51);
      }

      else
      {
        if (v12 >= *(v54 + 16))
        {
          goto LABEL_42;
        }

        v14 = *&v53[8 * v12];
      }

      v15 = v14;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v61 = v13;
      v17 = [v14 mode];
      v60 = [v17 unsignedIntegerValue];

      v18 = [v15 label];
      v19 = sub_1D1E6781C();
      v58 = v20;
      v59 = v19;

      v21 = [v15 modeTags];
      v7 = sub_1D1E67C1C();

      v22 = *(v7 + 2);
      if (v22)
      {
        v23 = 0;
        v24 = v7 + 32;
        v56 = v22 - 1;
        v25 = MEMORY[0x1E69E7CC0];
        v57 = v7 + 32;
        do
        {
          v26 = &v24[32 * v23];
          v27 = v23;
          while (1)
          {
            if (v27 >= *(v7 + 2))
            {
              __break(1u);
              goto LABEL_41;
            }

            sub_1D1741970(v26, v64);
            sub_1D192880C(v64, v62);
            __swift_destroy_boxed_opaque_existential_1(v64);
            v28 = v62[0];
            if (LOBYTE(v62[0]) <= 0xEFu)
            {
              break;
            }

            ++v27;
            v26 += 32;
            if (v22 == v27)
            {
              goto LABEL_25;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1D177E2EC(0, *(v25 + 2) + 1, 1, v25);
          }

          v30 = *(v25 + 2);
          v29 = *(v25 + 3);
          if (v30 >= v29 >> 1)
          {
            v25 = sub_1D177E2EC((v29 > 1), v30 + 1, 1, v25);
          }

          v23 = v27 + 1;
          *(v25 + 2) = v30 + 1;
          v25[v30 + 32] = v28;
          v11 = v52;
          v24 = v57;
        }

        while (v56 != v27);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

LABEL_25:

      v7 = sub_1D17847E8(v25);

      v13 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D177E2D0(0, *(v13 + 2) + 1, 1, v13);
      }

      v32 = *(v13 + 2);
      v31 = *(v13 + 3);
      if (v32 >= v31 >> 1)
      {
        v13 = sub_1D177E2D0((v31 > 1), v32 + 1, 1, v13);
      }

      *(v13 + 2) = v32 + 1;
      v33 = &v13[32 * v32];
      v34 = v59;
      *(v33 + 4) = v60;
      *(v33 + 5) = v34;
      *(v33 + 6) = v58;
      *(v33 + 7) = v7;
      if (v12 == v11)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v49 = sub_1D178472C(v13);

  sub_1D1741A30(v67, &qword_1EC645D58, &unk_1D1E7E530);
  return v49;
}

char *sub_1D1927018(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v64 = v5;
  v65 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v61[0] = v9;
  v61[1] = v8;
  AttributeValueSet.value(for:in:)(0, v63, v66);
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_1D1741C08(v66, v63, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v64)
  {
    sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_33:
    if (qword_1EE07A0A8 == -1)
    {
LABEL_34:
      v35 = sub_1D1E6709C();
      __swift_project_value_buffer(v35, qword_1EE07A0B0);
      sub_1D1741C08(v66, v63, &qword_1EC645D58, &unk_1D1E7E530);
      sub_1D192DD58(a1, v7, type metadata accessor for ClusterPath);
      v36 = sub_1D1E6707C();
      v37 = sub_1D1E6833C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v62 = v39;
        *v38 = 136446466;
        sub_1D1741C08(v63, v61, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
        v40 = sub_1D1E678BC();
        v42 = v41;
        sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
        v43 = sub_1D1B1312C(v40, v42, &v62);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2082;
        v44 = ClusterPath.description.getter();
        v46 = v45;
        sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
        v47 = sub_1D1B1312C(v44, v46, &v62);

        *(v38 + 14) = v47;
        _os_log_impl(&dword_1D16EC000, v36, v37, "Couldn't create MTRRVCCleanModeClusterModeOptionStruct from value (%{public}s) path:'%{public}s'", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v39, -1, -1);
        MEMORY[0x1D3893640](v38, -1, -1);
      }

      else
      {

        sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
        sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
      }

      sub_1D1741A30(v66, &qword_1EC645D58, &unk_1D1E7E530);
      return 0;
    }

LABEL_44:
    swift_once();
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647358, &unk_1D1E854E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v7 = v61[0];
  if (v61[0] >> 62)
  {
    v11 = sub_1D1E6873C();
  }

  else
  {
    v11 = *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v7;
  if (v11)
  {
    v12 = 0;
    a1 = 0;
    v54 = v50 & 0xC000000000000001;
    v53 = v50 & 0xFFFFFFFFFFFFFF8;
    v52 = (v50 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v51 = v11;
    while (1)
    {
      if (v54)
      {
        v14 = MEMORY[0x1D3891EF0](v12, v50);
      }

      else
      {
        if (v12 >= *(v53 + 16))
        {
          goto LABEL_43;
        }

        v14 = *&v52[8 * v12];
      }

      v15 = v14;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v60 = v13;
      v17 = [v14 mode];
      v59 = [v17 unsignedIntegerValue];

      v18 = [v15 label];
      v19 = sub_1D1E6781C();
      v57 = v20;
      v58 = v19;

      v21 = [v15 modeTags];
      v7 = sub_1D1E67C1C();

      v22 = *(v7 + 2);
      if (v22)
      {
        v23 = 0;
        v24 = v7 + 32;
        v55 = v22 - 1;
        v25 = MEMORY[0x1E69E7CC0];
        v56 = v7 + 32;
        do
        {
          v26 = &v24[32 * v23];
          v27 = v23;
          while (1)
          {
            if (v27 >= *(v7 + 2))
            {
              __break(1u);
              goto LABEL_42;
            }

            sub_1D1741970(v26, v63);
            sub_1D1928B7C(v63, v61);
            __swift_destroy_boxed_opaque_existential_1(v63);
            v28 = v61[0];
            if (LOBYTE(v61[0]) <= 0xEFu)
            {
              break;
            }

            ++v27;
            v26 += 32;
            if (v22 == v27)
            {
              goto LABEL_25;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1D177E2EC(0, *(v25 + 2) + 1, 1, v25);
          }

          v30 = *(v25 + 2);
          v29 = *(v25 + 3);
          if (v30 >= v29 >> 1)
          {
            v25 = sub_1D177E2EC((v29 > 1), v30 + 1, 1, v25);
          }

          v23 = v27 + 1;
          *(v25 + 2) = v30 + 1;
          v25[v30 + 32] = v28;
          v11 = v51;
          v24 = v56;
        }

        while (v55 != v27);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

LABEL_25:

      v7 = sub_1D17847E8(v25);

      v13 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D177E3E0(0, *(v13 + 2) + 1, 1, v13);
      }

      v32 = *(v13 + 2);
      v31 = *(v13 + 3);
      if (v32 >= v31 >> 1)
      {
        v13 = sub_1D177E3E0((v31 > 1), v32 + 1, 1, v13);
      }

      *(v13 + 2) = v32 + 1;
      v33 = &v13[32 * v32];
      v34 = v58;
      *(v33 + 4) = v59;
      *(v33 + 5) = v34;
      *(v33 + 6) = v57;
      *(v33 + 7) = v7;
      if (v12 == v11)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_39:

  sub_1D1741A30(v66, &qword_1EC645D58, &unk_1D1E7E530);
  return v13;
}

uint64_t sub_1D1927778(uint64_t a1, const char *a2)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v10 = *(v2 + 8);
  v34 = v7;
  v35 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v31[0] = v11;
  v31[1] = v10;
  AttributeValueSet.value(for:in:)(1, v33, v36);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1D1741C08(v36, v33, &qword_1EC645D58, &unk_1D1E7E530);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v13 = v31[0];
      v14 = [v31[0] unsignedShortValue];

      sub_1D1741A30(v36, &qword_1EC645D58, &unk_1D1E7E530);
      v15 = 0;
      return v14 | (v15 << 16);
    }
  }

  else
  {
    sub_1D1741A30(v33, &qword_1EC645D58, &unk_1D1E7E530);
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07A0B0);
  sub_1D1741C08(v36, v33, &qword_1EC645D58, &unk_1D1E7E530);
  sub_1D192DD58(a1, v9, type metadata accessor for ClusterPath);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6833C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v19 = 136446466;
    sub_1D1741C08(v33, v31, &qword_1EC645D58, &unk_1D1E7E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v21 = sub_1D1E678BC();
    v23 = v22;
    sub_1D1741A30(v33, &qword_1EC645D58, &unk_1D1E7E530);
    v24 = sub_1D1B1312C(v21, v23, v32);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = ClusterPath.description.getter();
    v27 = v26;
    sub_1D192DCF8(v9, type metadata accessor for ClusterPath);
    v28 = sub_1D1B1312C(v25, v27, v32);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v17, v18, a2, v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  else
  {

    sub_1D192DCF8(v9, type metadata accessor for ClusterPath);
    sub_1D1741A30(v33, &qword_1EC645D58, &unk_1D1E7E530);
  }

  sub_1D1741A30(v36, &qword_1EC645D58, &unk_1D1E7E530);
  v14 = 0;
  v15 = 1;
  return v14 | (v15 << 16);
}

uint64_t sub_1D1927BBC(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D192B9A0(3, a1, *v1, v1[1]);
  if (v7)
  {
    v8 = v7;
    MEMORY[0x1EEE9AC00](v7);
    v24[-2] = a1;
    v9 = sub_1D178868C(sub_1D192F90C, &v24[-4], v8);

    v10 = sub_1D178485C(v9);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE07A0B0);
    sub_1D192DD58(a1, v6, type metadata accessor for ClusterPath);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[2] = 0;
      v25 = v15;
      *v14 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647378, &qword_1D1E85500);
      v16 = sub_1D1E678BC();
      v18 = sub_1D1B1312C(v16, v17, &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = ClusterPath.description.getter();
      v21 = v20;
      sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
      v22 = sub_1D1B1312C(v19, v21, &v25);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Couldn't create MTRRVCOperationalStateClusterOperationalStateStruct from value '%{public}s' path:'%{public}s'", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
    }

    return 0;
  }

  return v10;
}

void sub_1D1927E9C(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D192BDF8(4, a1, *v2, v2[1]);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 unsignedCharValue];
    LOBYTE(v25) = *(a1 + *(v5 + 20));
    StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v11, &v25, a2);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D192DD58(a1, v8, type metadata accessor for ClusterPath);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = 0;
      v25 = v16;
      *v15 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647370, &qword_1D1E854F8);
      v17 = sub_1D1E678BC();
      v19 = sub_1D1B1312C(v17, v18, &v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = ClusterPath.description.getter();
      v22 = v21;
      sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
      v23 = sub_1D1B1312C(v20, v22, &v25);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Couldn't get value for operationalState: (%{public}s path:'%{public}s'", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
    }

    *a2 = -256;
  }
}

uint64_t sub_1D1928144@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v10 = v2[1];
  v36 = v7;
  v37 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v33 = v11;
  *(&v33 + 1) = v10;
  AttributeValueSet.value(for:in:)(5, v35, v38);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D1741C08(v38, &v33, &qword_1EC645D58, &unk_1D1E7E530);
  if (v34)
  {
    sub_1D1742194(&v33, v35);
    sub_1D1741970(v35, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC647368, 0x1E696F678);
    if (swift_dynamicCast())
    {
      v13 = v31[0];
      v14 = [v31[0] errorStateID];
      v15 = [v14 unsignedCharValue];

      StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v15, a2);
      __swift_destroy_boxed_opaque_existential_1(v35);
      return sub_1D1741A30(v38, &qword_1EC645D58, &unk_1D1E7E530);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE07A0B0);
    sub_1D1741970(v35, &v33);
    sub_1D192DD58(a1, v9, type metadata accessor for ClusterPath);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446466;
      sub_1D1741970(&v33, v31);
      v23 = sub_1D1E678BC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v26 = sub_1D1B1312C(v23, v25, &v32);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2082;
      v27 = ClusterPath.description.getter();
      v29 = v28;
      sub_1D192DCF8(v9, type metadata accessor for ClusterPath);
      v30 = sub_1D1B1312C(v27, v29, &v32);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1D16EC000, v19, v20, "Couldn't get value for operationalStateError: (%{public}s path:'%{public}s'", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v9, type metadata accessor for ClusterPath);
      __swift_destroy_boxed_opaque_existential_1(&v33);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v17 = v38;
  }

  else
  {
    sub_1D1741A30(v38, &qword_1EC645D58, &unk_1D1E7E530);
    v17 = &v33;
  }

  result = sub_1D1741A30(v17, &qword_1EC645D58, &unk_1D1E7E530);
  *a2 = -256;
  return result;
}

void sub_1D192858C(void **a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(type metadata accessor for ClusterPath(0) + 20));
  sub_1D19285F0(v4, &v5, a3);
}

void sub_1D19285F0(void *a1@<X0>, char *a2@<X1>, __int16 *a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 operationalStateID];
  v7 = [v6 unsignedCharValue];

  LOBYTE(v19) = v5;
  StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v7, &v19, &v20);
  v8 = v20;
  if (v20 >> 8 <= 0xFEu)
  {
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    v10 = a1;
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v10;
      v20 = v14;
      *v13 = 136446210;
      sub_1D1741B10(0, &qword_1EC647380, 0x1E696F688);
      v15 = v10;
      v16 = sub_1D1E678BC();
      v18 = sub_1D1B1312C(v16, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D16EC000, v11, v12, "Couldn't create OperationalState from value '%{public}s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {
    }

    v8 = -256;
  }

  *a3 = v8;
}

void sub_1D192880C(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D1741970(a1, v24);
  sub_1D1741B10(0, &qword_1EC647398, 0x1E696F6A8);
  if (swift_dynamicCast())
  {
    v4 = [v22[0] value];
    LOWORD(v24[0]) = 0;
    BYTE2(v24[0]) = 1;
    sub_1D1E692BC();

    if ((v24[0] & 0x10000) == 0)
    {
      v21 = v24[0];

      LOBYTE(v24[0]) = 25;
      ModeClusterSemanticTag.init(rawValue:for:)(v21, v24, a2);
      return;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE07A0B0);
    v6 = v22[0];
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Couldn't get run mode tag value from modeTag: '%{public}@'", v9, 0xCu);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D1741970(a1, v24);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      sub_1D1741970(v24, v22);
      v17 = sub_1D1E678BC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Couldn't create MTRRVCRunModeClusterModeTagStruct from value '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  *a2 = -16;
}

void sub_1D1928B7C(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D1741970(a1, v24);
  sub_1D1741B10(0, &qword_1EC647360, 0x1E696F670);
  if (swift_dynamicCast())
  {
    v4 = [v22[0] value];
    LOWORD(v24[0]) = 0;
    BYTE2(v24[0]) = 1;
    sub_1D1E692BC();

    if ((v24[0] & 0x10000) == 0)
    {
      v21 = v24[0];

      LOBYTE(v24[0]) = 26;
      ModeClusterSemanticTag.init(rawValue:for:)(v21, v24, a2);
      return;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE07A0B0);
    v6 = v22[0];
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Couldn't get clean mode tag value from modeTag: '%{public}@'", v9, 0xCu);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D1741970(a1, v24);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      sub_1D1741970(v24, v22);
      v17 = sub_1D1E678BC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Couldn't create MTRRVCCleanModeClusterModeTagStruct from value '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  *a2 = -16;
}

void sub_1D1928EEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 64;
  v8 = *(a1 + 64);
  v10 = 1 << *(a1 + 32);
  v156 = 0u;
  memset(v157, 0, 21);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v154 = 0uLL;
  v155 = 0uLL;
  v13 = (v10 + 63) >> 6;
  v152 = 0uLL;
  v153 = 0uLL;
  v151 = 0uLL;
  v121 = a1;

  v112 = 0;
  v116 = 0;
  v117 = 0;
  v114 = v3;
  v115 = 0;
  v14 = 0;
  v122 = 0;
  v15 = 0;
  v16 = 0;
  v118 = 12;
  v119 = v13;
  v120 = v9;
  v17 = 0;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v123 = v18;
      v124 = (v12 - 1) & v12;
      v19 = __clz(__rbit64(v12)) | (v18 << 6);
      v20 = *(v121 + 48) + 8 * v19;
      v21 = *v20;
      v22 = *(v20 + 4);
      v23 = *(v121 + 56) + 16 * v19;
      v24 = *v23;
      v25 = *(v23 + 8);
      if (*v20 != 1)
      {
        break;
      }

      if (v22 != 25)
      {
        if (((1 << v22) & 0x39FFFFFF) != 0)
        {
          sub_1D1741AF8(v24, v25);
LABEL_40:
          sub_1D1757AE8(v24, v25);
          goto LABEL_41;
        }

        sub_1D1741AF8(v24, v25);
        if (v25 <= 1)
        {
          if (!v25)
          {
            *(&v142 + 1) = MEMORY[0x1E69E6370];
            LOBYTE(v141) = v24 & 1;
            goto LABEL_72;
          }

          v57 = MEMORY[0x1E69E6530];
        }

        else
        {
          if (v25 != 2)
          {
            if (v25 == 3)
            {
              v53 = &qword_1EC646A50;
              v54 = &unk_1D1E910D0;
            }

            else
            {
              v53 = &unk_1EC646DE8;
              v54 = &unk_1D1E85520;
            }

            *(&v142 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
            *&v141 = v24;

LABEL_72:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              sub_1D1757AE8(v24, v25);
              sub_1D192F928(v112, v116, v117);
              v58 = v134;
              v59 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup() + 44));
              if (v59)
              {
                v125 = v58;
                v117 = *(v59 + 16);
                if (v117)
                {
                  v60 = 0;
                  v61 = (v59 + 56);
                  while (1)
                  {
                    v62 = v59;
                    if (v60 >= *(v59 + 16))
                    {
                      goto LABEL_144;
                    }

                    v63 = *(v61 - 2);
                    v112 = *(v61 - 3);
                    v64 = *(v61 - 1);
                    v65 = *v61;

                    v66 = [v125 unsignedShortValue];
                    if (v112 == v66)
                    {
                      break;
                    }

                    ++v60;
                    v61 += 4;
                    v59 = v62;
                    if (v117 == v60)
                    {
                      goto LABEL_79;
                    }
                  }

                  v115 = v65;
                  v116 = v63;
                  v117 = v64;

                  v3 = v114;
                }

                else
                {
LABEL_79:

                  v112 = 0;
                  v116 = 0;
                  v117 = 0;
                  v115 = 0;
                  v3 = v114;
                }
              }

              else
              {

                v112 = 0;
                v116 = 0;
                v117 = 0;
                v115 = 0;
              }

              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v57 = MEMORY[0x1E69E6810];
        }

        *(&v142 + 1) = v57;
        *&v141 = v24;
        goto LABEL_72;
      }

      if (*(v23 + 8) <= 1u)
      {
        if (!*(v23 + 8))
        {
          *(&v142 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v141) = v24 & 1;
          goto LABEL_22;
        }

        v28 = MEMORY[0x1E69E6530];
        goto LABEL_21;
      }

      if (v25 == 2)
      {
        v28 = MEMORY[0x1E69E6810];
LABEL_21:
        *(&v142 + 1) = v28;
        *&v141 = v24;
        goto LABEL_22;
      }

      if (v25 == 3)
      {
        v26 = &qword_1EC646A50;
        v27 = &unk_1D1E910D0;
      }

      else
      {
        v26 = &unk_1EC646DE8;
        v27 = &unk_1D1E85520;
      }

      *(&v142 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      *&v141 = v24;

LABEL_22:
      sub_1D1741AF8(v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      sub_1D192F928(v14, v122, v15);
      sub_1D1757AE8(v24, v25);
      v125 = v134;
      v29 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup() + 40));
      v30 = 1 << *(v29 + 32);
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v29 + 56);
      v33 = (v30 + 63) >> 6;

      v34 = 0;
      if (v32)
      {
        while (1)
        {
          v35 = v34;
LABEL_31:
          v36 = (*(v29 + 48) + ((v35 << 11) | (32 * __clz(__rbit64(v32)))));
          v37 = *v36;
          v38 = v36[1];
          v15 = v36[2];
          v16 = v36[3];

          if (v37 == [v125 unsignedShortValue])
          {
            break;
          }

          v32 &= v32 - 1;

          v34 = v35;
          if (!v32)
          {
            goto LABEL_28;
          }
        }

        v122 = v38;

        v17 = v123;
        v3 = v114;
        v14 = v37;
      }

      else
      {
        while (1)
        {
LABEL_28:
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            return;
          }

          if (v35 >= v33)
          {
            break;
          }

          v32 = *(v29 + 56 + 8 * v35);
          ++v34;
          if (v32)
          {
            goto LABEL_31;
          }
        }

        v14 = 0;
        v122 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v123;
        v3 = v114;
      }

      v13 = v119;
      v9 = v120;
      v12 = v124;
      if (!v124)
      {
        goto LABEL_6;
      }
    }

    sub_1D1741AF8(*v23, *(v23 + 8));
    if (v21 == 2)
    {
      if (v22 != 27)
      {
        goto LABEL_40;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          v150 = MEMORY[0x1E69E6370];
          LOBYTE(v149) = v24 & 1;
          goto LABEL_106;
        }

        v72 = MEMORY[0x1E69E6530];
      }

      else
      {
        if (v25 != 2)
        {
          if (v25 == 3)
          {
            v55 = &qword_1EC646A50;
            v56 = &unk_1D1E910D0;
          }

          else
          {
            v55 = &unk_1EC646DE8;
            v56 = &unk_1D1E85520;
          }

          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
          goto LABEL_105;
        }

        v72 = MEMORY[0x1E69E6810];
      }

      v150 = v72;
LABEL_105:
      v149 = v24;
LABEL_106:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
      if (swift_dynamicCast())
      {
        sub_1D1741A30(&v151, &qword_1EC646FD0, &qword_1D1E841D0);
        v73 = v148;
        v74 = v3 + *(type metadata accessor for StaticRVCClusterGroup() + 60);
        v75 = *v74;
        if (!*v74)
        {

          v45 = 0;
          v46 = 0;
          v49 = 0;
          v39 = 0uLL;
          v40 = 0uLL;
          v42 = 0uLL;
          v41 = 0uLL;
          v44 = 0uLL;
          v43 = 0uLL;
          goto LABEL_43;
        }

        *v126 = *v74;
        *&v126[56] = *(v74 + 56);
        *&v126[72] = *(v74 + 72);
        *&v126[88] = *(v74 + 88);
        v76 = *&v126[88];
        *&v126[101] = *(v74 + 101);
        *&v126[8] = *(v74 + 8);
        *&v126[24] = *(v74 + 24);
        *&v126[40] = *(v74 + 40);
        v127 = v75;
        v128 = *&v126[8];
        v129 = *&v126[24];
        v130 = *&v126[40];
        *(v133 + 13) = *&v126[101];
        v133[0] = v76;
        v131 = *&v126[56];
        v132 = *&v126[72];
        sub_1D192D0CC(&v127, &v134);
        ServiceArea.copyApplying(selectedAreaIDs:)(v73, &v141);

        v138 = *&v126[64];
        v139 = *&v126[80];
        v140[0] = *&v126[96];
        *(v140 + 13) = *&v126[109];
        v134 = *v126;
        v135 = *&v126[16];
        v136 = *&v126[32];
        v137 = *&v126[48];
        sub_1D192D128(&v134);
        v39 = v141;
        v40 = v142;
        v42 = v143;
        v41 = v144;
        v44 = v145;
        v43 = v146;
        v45 = *v147;
        v46 = *&v147[8];
        v47 = v147[20];
        v48 = *&v147[16];
LABEL_42:
        v49 = v48 | (v47 << 32);
LABEL_43:
        v13 = v119;
        v9 = v120;
        v12 = v124;
        goto LABEL_44;
      }

LABEL_41:
      v39 = v151;
      v40 = v152;
      v42 = v153;
      v41 = v154;
      v44 = v155;
      v43 = v156;
      v46 = *(&v157[0] + 1);
      v45 = *&v157[0];
      v47 = BYTE4(v157[1]);
      v48 = LODWORD(v157[1]);
      goto LABEL_42;
    }

    v50 = v21 == 4 && v22 == 24;
    if (!v50)
    {
      goto LABEL_40;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        *(&v142 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v141) = v24 & 1;
        goto LABEL_91;
      }

      v67 = MEMORY[0x1E69E6530];
LABEL_90:
      *(&v142 + 1) = v67;
      *&v141 = v24;
      goto LABEL_91;
    }

    if (v25 == 2)
    {
      v67 = MEMORY[0x1E69E6810];
      goto LABEL_90;
    }

    if (v25 == 3)
    {
      v51 = &qword_1EC646A50;
      v52 = &unk_1D1E910D0;
    }

    else
    {
      v51 = &unk_1EC646DE8;
      v52 = &unk_1D1E85520;
    }

    *(&v142 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    *&v141 = v24;

LABEL_91:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    v68 = v134;
    v69 = [v134 unsignedCharValue];
    LOBYTE(v134) = 24;
    StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v69, &v134, &v141);

    v70 = v141;
    v71 = BYTE1(v141);
    if (v71 > 0xFE)
    {
      goto LABEL_40;
    }

    sub_1D1757AE8(v24, v25);
    v39 = v151;
    v40 = v152;
    v42 = v153;
    v41 = v154;
    v44 = v155;
    v43 = v156;
    v46 = *(&v157[0] + 1);
    v45 = *&v157[0];
    v49 = LODWORD(v157[1]) | (BYTE4(v157[1]) << 32);
    if (v71)
    {
      v50 = v71 == 1;
      v13 = v119;
      v9 = v120;
      v12 = v124;
      if (v50)
      {
        if (v70 <= 2u)
        {
          if (v70)
          {
            if (v70 == 1)
            {
              v118 = 5;
            }

            else
            {
              v118 = 6;
            }
          }

          else
          {
            v118 = 4;
          }
        }

        else if (v70 > 4u)
        {
          if (v70 == 5)
          {
            v118 = 9;
          }

          else
          {
            v118 = 10;
          }
        }

        else if (v70 == 3)
        {
          v118 = 7;
        }

        else
        {
          v118 = 8;
        }
      }

      else
      {
        v118 = 11;
      }
    }

    else
    {
      v13 = v119;
      v9 = v120;
      v12 = v124;
      if (v70 > 1u)
      {
        v118 = v70;
      }

      else
      {
        v118 = v70 == 0;
      }
    }

LABEL_44:
    v151 = v39;
    v152 = v40;
    v153 = v42;
    v154 = v41;
    v155 = v44;
    v156 = v43;
    *&v157[0] = v45;
    *(&v157[0] + 1) = v46;
    LODWORD(v157[1]) = v49;
    BYTE4(v157[1]) = BYTE4(v49);
    v17 = v123;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_143;
    }

    if (v18 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v18);
    ++v17;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (v118 == 4)
  {
    sub_1D192F928(v14, v122, v15);
    StaticRVCClusterGroup.firstIdleRunningMode.getter(&v141);
    v77 = *(&v141 + 1);
    v14 = v141;
    v16 = *(&v142 + 1);
    v78 = v142;
    sub_1D192DD58(v3, v113, type metadata accessor for EndpointPath);
    v118 = 4;
    v80 = v116;
    v79 = v117;
    v81 = v115;
    v125 = v78;
    if (v78)
    {
      goto LABEL_124;
    }

LABEL_140:
    v108 = (v3 + *(type metadata accessor for StaticRVCClusterGroup() + 24));
    v14 = *v108;
    v77 = v108[1];
    v109 = v108[3];
    v125 = v108[2];

    v124 = v109;

    if (!v79)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v125 = v15;
    v80 = v116;
    v79 = v117;
    v81 = v115;
    v77 = v122;
    if (v118 == 12 && v125)
    {
      *&v141 = v14;
      *(&v141 + 1) = v122;
      *&v142 = v125;
      *(&v142 + 1) = v16;
      if (StaticRVCClusterGroup.RunMode.isCleaning.getter())
      {
        v86 = 0;
      }

      else
      {
        v86 = 2;
      }

      v118 = v86;
      sub_1D192DD58(v3, v113, type metadata accessor for EndpointPath);
      v124 = v16;
      if (!v79)
      {
        goto LABEL_125;
      }
    }

    else
    {
      sub_1D192DD58(v3, v113, type metadata accessor for EndpointPath);
      if (v118 == 12)
      {
        v118 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup() + 20));
      }

      if (!v125)
      {
        goto LABEL_140;
      }

LABEL_124:
      v124 = v16;
      if (!v79)
      {
LABEL_125:
        v82 = (v3 + *(type metadata accessor for StaticRVCClusterGroup() + 28));
        v80 = v82[1];
        v79 = v82[2];
        v81 = v82[3];
        v112 = *v82;
        sub_1D191F3B0(v112, v80, v79);
      }
    }
  }

  v122 = v77;
  v115 = v81;
  v116 = v80;
  v117 = v79;
  v83 = v14;
  if (v151)
  {
    v145 = v155;
    v146 = v156;
    *v147 = v157[0];
    *&v147[13] = *(v157 + 13);
    v141 = v151;
    v142 = v152;
    v84 = v153;
    v85 = v154;
  }

  else
  {
    v87 = v3 + *(type metadata accessor for StaticRVCClusterGroup() + 60);
    v88 = *(v87 + 80);
    v138 = *(v87 + 64);
    v139 = v88;
    v140[0] = *(v87 + 96);
    *(v140 + 13) = *(v87 + 109);
    v89 = *(v87 + 16);
    v134 = *v87;
    v135 = v89;
    v90 = *(v87 + 48);
    v136 = *(v87 + 32);
    v137 = v90;
    sub_1D1741C08(&v134, &v141, &qword_1EC646FD0, &qword_1D1E841D0);
    v145 = v138;
    v146 = v139;
    *v147 = v140[0];
    *&v147[13] = *(v140 + 13);
    v141 = v134;
    v142 = v135;
    v84 = v136;
    v85 = v137;
  }

  v143 = v84;
  v144 = v85;
  v91 = type metadata accessor for StaticRVCClusterGroup();
  v92 = *(v3 + v91[8]);
  v93 = *(v3 + v91[9]);
  v94 = *(v3 + v91[10]);
  v95 = *(v3 + v91[11]);
  v96 = *(v3 + v91[12]);
  v97 = v111;
  sub_1D191F714(v113, v111);
  *(v97 + v91[5]) = v118;
  v98 = (v97 + v91[6]);
  v99 = v122;
  *v98 = v83;
  v98[1] = v99;
  v100 = v124;
  v98[2] = v125;
  v98[3] = v100;
  v101 = (v97 + v91[7]);
  v103 = v116;
  v102 = v117;
  *v101 = v112;
  v101[1] = v103;
  v101[2] = v102;
  v101[3] = v115;
  *(v97 + v91[8]) = v92;
  *(v97 + v91[9]) = v93;
  *(v97 + v91[10]) = v94;
  *(v97 + v91[11]) = v95;
  *(v97 + v91[12]) = v96;
  *(v97 + v91[13]) = 0;
  *(v97 + v91[14]) = 0;
  v104 = v97 + v91[15];
  v105 = v146;
  *(v104 + 64) = v145;
  *(v104 + 80) = v105;
  *(v104 + 96) = *v147;
  *(v104 + 109) = *&v147[13];
  v106 = v142;
  *v104 = v141;
  *(v104 + 16) = v106;
  v107 = v144;
  *(v104 + 32) = v143;
  *(v104 + 48) = v107;
}

void *sub_1D1929CE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D19FB048(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D1929D78(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 56;
    while (1)
    {
      if (*(a2 + 16))
      {
        v7 = *(v5 + v4);
        v8 = *(a2 + 40);
        sub_1D1E6920C();
        v9 = v7 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v10 = sub_1D1E6926C();
        v11 = -1 << *(a2 + 32);
        v12 = v10 & ~v11;
        if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          break;
        }
      }

LABEL_4:
      if (++v4 == v2)
      {
        return 1;
      }
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(a2 + 48) + v12);
      if (v14 >> 6)
      {
        if (v14 >> 6 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_9;
          }
        }

        else if (v9 != 2)
        {
          goto LABEL_9;
        }

        if (((v14 ^ v7) & 0x3F) == 0)
        {
          return 0;
        }
      }

      else if (v7 <= 0x3F && v14 == v7)
      {
        return 0;
      }

LABEL_9:
      v12 = (v12 + 1) & v13;
      if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return 1;
}

uint64_t sub_1D1929F38(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
    return 1;
  }

  v3 = 0;
  v18 = a1 + 32;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v18 + v3);
      v6 = *(a2 + 40);
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v7 = sub_1D1E6926C();
      v8 = -1 << *(a2 + 32);
      v9 = v7 & ~v8;
      if ((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v19)
    {
      return 1;
    }
  }

  v10 = ~v8;
  while (1)
  {
    v11 = "takeSnaphotsWhenBusy";
    switch(*(*(a2 + 48) + v9))
    {
      case 1:
        v12 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 2:
        v12 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 3:
        v12 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 4:
        v12 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 5:
        v12 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 6:
        v12 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 7:
        v12 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 8:
        v12 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 9:
        v12 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xA:
        v12 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xB:
        v12 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xC:
        v12 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xD:
        v12 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xE:
        v12 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xF:
        v12 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x10:
        v12 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x11:
        v12 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x12:
        v12 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x13:
        v12 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x14:
        v12 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x15:
        v12 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x16:
        v12 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x17:
        v12 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x18:
        v12 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x19:
        v12 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1A:
        v12 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1B:
        v12 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1C:
        v12 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1D:
        v12 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1E:
        v12 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1F:
        v12 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x20:
        v12 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x21:
        v12 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x22:
        v12 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x23:
        v12 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x24:
        v12 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x25:
        v12 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x26:
        v12 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x27:
        v12 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x28:
        v12 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x29:
        v12 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2A:
        v12 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2B:
        v12 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2C:
        v12 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2D:
        v12 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2E:
        v12 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2F:
        v12 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x30:
        v12 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x31:
        v12 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x32:
        v12 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x33:
        v12 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x34:
        v12 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_61:
        v11 = v12 - 32;
        break;
      default:
        break;
    }

    v13 = v11 | 0x8000000000000000;
    v14 = "takeSnaphotsWhenBusy";
    switch(v5)
    {
      case 1:
        v15 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 2:
        v15 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 3:
        v15 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 4:
        v15 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 5:
        v15 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 6:
        v15 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 7:
        v15 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 8:
        v15 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 9:
        v15 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 10:
        v15 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 11:
        v15 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 12:
        v15 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 13:
        v15 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 14:
        v15 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 15:
        v15 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 16:
        v15 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 17:
        v15 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 18:
        v15 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 19:
        v15 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 20:
        v15 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 21:
        v15 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 22:
        v15 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 23:
        v15 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 24:
        v15 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 25:
        v15 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 26:
        v15 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 27:
        v15 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 28:
        v15 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 29:
        v15 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 30:
        v15 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 31:
        v15 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 32:
        v15 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 33:
        v15 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 34:
        v15 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 35:
        v15 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 36:
        v15 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 37:
        v15 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 38:
        v15 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 39:
        v15 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 40:
        v15 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 41:
        v15 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 42:
        v15 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 43:
        v15 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 44:
        v15 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 45:
        v15 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 46:
        v15 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 47:
        v15 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 48:
        v15 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 49:
        v15 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 50:
        v15 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 51:
        v15 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 52:
        v15 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_115:
        v14 = v15 - 32;
        break;
      default:
        break;
    }

    if (v13 == (v14 | 0x8000000000000000))
    {
      break;
    }

    v16 = sub_1D1E6904C();

    if (v16)
    {
      return 0;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1D192A600(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
    v13 = *(v3 + 40);
    sub_1D1E6920C();
    v14 = dword_1D1E85534[v12];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v15 = -1 << *(v3 + 32);
    v16 = result & ~v15;
    if (((*(i + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v17 = ~v15;
    while (dword_1D1E85534[*(*(v3 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(i + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D192A784(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
LABEL_6:
  if (v7)
  {
    v12 = v11;
LABEL_11:
    if (*(a1 + 16))
    {
      v13 = *(*(a2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = *(a1 + 40);
      sub_1D1E6920C();
      v15 = v13 >> 6;
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v16 = -1 << *(a1 + 32);
      v17 = result & ~v16;
      if ((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v7 &= v7 - 1;
        v18 = ~v16;
        do
        {
          v19 = *(*(a1 + 48) + v17);
          if (v19 >> 6)
          {
            if (v19 >> 6 == 1)
            {
              if (v15 == 1 && ((v19 ^ v13) & 0x3F) == 0)
              {
                v11 = v12;
                goto LABEL_6;
              }
            }

            else if (v15 == 2 && ((v19 ^ v13) & 0x3F) == 0)
            {
              v11 = v12;
              goto LABEL_6;
            }
          }

          else if (v13 <= 0x3F && v19 == v13)
          {
            v11 = v12;
            goto LABEL_6;
          }

          v17 = (v17 + 1) & v18;
        }

        while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
      }
    }

    return 0;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D192A9D0(uint64_t a1, uint64_t a2)
{
  v77 = sub_1D1E66A7C();
  v4 = *(v77 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v77);
  v75 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v68 = a1 + 56;
  v73 = v4 + 16;
  v64 = v4 + 32;
  v74 = (v4 + 8);

  v18 = 0;
  v63 = v16;
  if (v15)
  {
LABEL_6:
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_67:

    return 0;
  }

  do
  {
LABEL_10:
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v22 >= v16)
    {

      return 1;
    }

    v15 = *(v12 + 8 * v22);
    ++v18;
  }

  while (!v15);
  v18 = v22;
  if (!*(a1 + 16))
  {
    goto LABEL_67;
  }

LABEL_7:
  v19 = *(*(a2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
  v20 = *(a1 + 40);
  sub_1D1E6920C();
  v66 = v18;
  if (v19 == 2)
  {
    v21 = 2;
    goto LABEL_16;
  }

  if (v19 == 1)
  {
    v21 = 0;
LABEL_16:
    MEMORY[0x1D3892850](v21);
    goto LABEL_19;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E6922C();
  if (v19)
  {

    sub_1D176D4E8(v78, v19);
  }

LABEL_19:
  v23 = sub_1D1E6926C();
  v24 = -1 << *(a1 + 32);
  v25 = v23 & ~v24;
  v26 = v68;
  if (((*(v68 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_64:

    sub_1D1771B10(v19);
    return 0;
  }

  v65 = (v15 - 1) & v15;
  v27 = ~v24;
  v69 = v19 - 1;
  v72 = v19 + 56;
  while (1)
  {
    v28 = *(*(a1 + 48) + 8 * v25);
    if (v28 == 2)
    {
      v29 = 2;
      if (v19 == 2)
      {
        goto LABEL_60;
      }

      sub_1D1771B24(v19);
      v30 = 2;
      goto LABEL_29;
    }

    if (v28 == 1)
    {
      v29 = 1;
      if (v19 == 1)
      {
        goto LABEL_60;
      }

      sub_1D1771B24(v19);
      v30 = 1;
      goto LABEL_29;
    }

    if (v69 >= 2)
    {
      if (!v28)
      {
        sub_1D1771B24(v19);
        sub_1D1771B24(v19);
        sub_1D1771B24(0);
        sub_1D1771B10(0);
        sub_1D1771B10(v19);
        if (!v19)
        {
          v28 = 0;
          goto LABEL_61;
        }

        goto LABEL_30;
      }

      if (!v19)
      {
        sub_1D1771B24(0);
        sub_1D1771B24(0);
        sub_1D1771B24(v28);
        sub_1D1771B10(v28);
        v31 = 0;
        goto LABEL_31;
      }

      if (v28 == v19)
      {
        sub_1D1771B24(v19);
        v29 = v19;
        v28 = v19;
LABEL_60:
        sub_1D1771B10(v29);
LABEL_61:
        result = sub_1D1771B10(v28);
        v16 = v63;
        v15 = v65;
        v18 = v66;
        if (!v65)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }

      if (*(v28 + 16) == *(v19 + 16))
      {
        break;
      }
    }

    sub_1D1771B24(v19);
    sub_1D1771B24(v28);
    v30 = v28;
LABEL_29:
    sub_1D1771B10(v30);
LABEL_30:
    v31 = v19;
LABEL_31:
    sub_1D1771B10(v31);
LABEL_32:
    v25 = (v25 + 1) & v27;
    if (((*(v26 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  v67 = v4;
  v32 = v11;
  v58 = a2;
  v33 = *(v28 + 56);
  v55 = v28 + 56;
  v34 = 1 << *(v28 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & v33;
  sub_1D1771B24(v28);
  sub_1D1771B24(v19);
  sub_1D1771B24(v28);
  sub_1D1771B24(v19);
  result = sub_1D1771B24(v28);
  v37 = 0;
  v38 = (v34 + 63) >> 6;
  v56 = v38;
  v62 = a1;
  v61 = v32;
  v60 = v12;
  v57 = v27;
  if (v36)
  {
    while (1)
    {
      v59 = (v36 - 1) & v36;
      v39 = __clz(__rbit64(v36)) | (v37 << 6);
      v11 = v32;
      v4 = v67;
LABEL_48:
      v42 = *(v4 + 72);
      v43 = *(v28 + 48) + v42 * v39;
      v44 = v77;
      v70 = *(v4 + 16);
      v71 = v42;
      v70(v11, v43, v77);
      (*(v4 + 32))(v76, v11, v44);
      v45 = *(v19 + 40);
      sub_1D192F8C4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v46 = sub_1D1E676DC();
      v47 = -1 << *(v19 + 32);
      v48 = v46 & ~v47;
      if (((*(v72 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
        break;
      }

      v49 = ~v47;
      while (1)
      {
        v50 = v75;
        v51 = v77;
        v70(v75, *(v19 + 48) + v48 * v71, v77);
        sub_1D192F8C4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v52 = sub_1D1E6775C();
        v53 = *v74;
        (*v74)(v50, v51);
        if (v52)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v72 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      result = (v53)(v76, v77);
      a1 = v62;
      v32 = v61;
      v12 = v60;
      v38 = v56;
      v36 = v59;
      if (!v59)
      {
        goto LABEL_43;
      }
    }

LABEL_58:
    sub_1D1771B10(v19);
    sub_1D1771B10(v28);
    sub_1D1771B10(v28);
    sub_1D1771B10(v19);
    sub_1D1771B10(v28);
    (*v74)(v76, v77);
    a2 = v58;
    a1 = v62;
    v4 = v67;
    v26 = v68;
    v11 = v61;
    v12 = v60;
    v27 = v57;
    goto LABEL_32;
  }

LABEL_43:
  v40 = v37;
  v11 = v32;
  v4 = v67;
  while (1)
  {
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      sub_1D1771B10(v19);
      sub_1D1771B10(v19);
      sub_1D1771B10(v28);
      sub_1D1771B10(v28);
      v29 = v19;
      a2 = v58;
      goto LABEL_60;
    }

    v41 = *(v55 + 8 * v37);
    ++v40;
    if (v41)
    {
      v59 = (v41 - 1) & v41;
      v39 = __clz(__rbit64(v41)) | (v37 << 6);
      goto LABEL_48;
    }
  }

LABEL_69:
  __break(1u);
  return result;
}

unint64_t sub_1D192B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v34, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D1741C08(v40, &v34, &qword_1EC645D58, &unk_1D1E7E530);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v28 = &v34;
  }

  sub_1D1741A30(v28, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  LOBYTE(v41[0]) = v30;
  return v29 | (v30 << 32);
}

unint64_t sub_1D192B5B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIWORD(a2);
  v40[3] = &type metadata for BasicClusterPath;
  v40[4] = sub_1D18F6128();
  LOWORD(v40[0]) = v6;
  BYTE2(v40[0]) = v8;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v40, v39);
  sub_1D1741C08(v39, &v33, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    v37 = 0;
  }

  v38 = v9 ^ 1;
  sub_1D1741C08(v39, &v33, &qword_1EC645D58, &unk_1D1E7E530);
  if (v34)
  {
    sub_1D1742194(&v33, v36);
    if (v38)
    {
      LOBYTE(v33) = BYTE2(v40[0]);
      v10 = sub_1D1A38104(a1, &v33);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v36, v35);
      sub_1D17419CC(v40, &v33);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v32);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v32);
      *(v16 + 22) = 2082;
      sub_1D1741970(v35, &v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v22 = sub_1D1B1312C(v19, v21, &v32);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v23 = BasicClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v26 = sub_1D1B1312C(v23, v25, &v32);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    v27 = v39;
  }

  else
  {
    sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
    v27 = &v33;
  }

  sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v28 = v37;
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(v40);
  LOBYTE(v40[0]) = v29;
  return v28 | (v29 << 32);
}

uint64_t sub_1D192B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647388, &qword_1D1E85508);
  *&v35 = a3;
  *(&v35 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
  }

  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  if (v36)
  {
    sub_1D1742194(&v35, v38);
    if (!v39)
    {
      LOBYTE(v35) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v35);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v38, v37);
      sub_1D17419CC(v41, &v35);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v34);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1D1E6940C();
      v21 = sub_1D1B1312C(v19, v20, &v34);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      sub_1D1741970(v37, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v25 = sub_1D1B1312C(v22, v24, &v34);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v26 = ClusterPath.description.getter();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v29 = sub_1D1B1312C(v26, v28, &v34);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v30 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v30 = &v35;
  }

  sub_1D1741A30(v30, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v31 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v31;
}

uint64_t sub_1D192BDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *&v35 = a3;
  *(&v35 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
  }

  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  if (v36)
  {
    sub_1D1742194(&v35, v38);
    if (!v39)
    {
      LOBYTE(v35) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v35);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v38, v37);
      sub_1D17419CC(v41, &v35);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v34);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1D1E6940C();
      v21 = sub_1D1B1312C(v19, v20, &v34);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      sub_1D1741970(v37, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v25 = sub_1D1B1312C(v22, v24, &v34);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v26 = ClusterPath.description.getter();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v29 = sub_1D1B1312C(v26, v28, &v34);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v30 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v30 = &v35;
  }

  sub_1D1741A30(v30, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v31 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v31;
}

uint64_t sub_1D192C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for ClusterPath(0);
  v21[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v7 = sub_1D19C56F8(65529, boxed_opaque_existential_1, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = ClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get command list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for StaticRVCClusterGroup();
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 != *v9)
  {
    return 0;
  }

  v65 = v5;
  v10 = v7[3];
  v11 = v9[3];
  if (v7[1] != v9[1] || v7[2] != v9[2])
  {
    v13 = v7[2];
    v14 = v9[2];
    if ((sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  v15 = sub_1D17A7B94(v10, v11);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = v65[7];
  v18 = *(a1 + v16);
  v17 = *(a1 + v16 + 8);
  v20 = *(a1 + v16 + 16);
  v19 = *(a1 + v16 + 24);
  v21 = (a2 + v16);
  v23 = *v21;
  v22 = v21[1];
  v25 = v21[2];
  v24 = v21[3];
  if (!v20)
  {
    sub_1D191F3B0(v18, v17, 0);
    if (!v25)
    {
      sub_1D191F3B0(v23, v22, 0);
      sub_1D192F928(v18, v17, 0);
      goto LABEL_29;
    }

    sub_1D191F3B0(v23, v22, v25);
    goto LABEL_24;
  }

  if (!v25)
  {
    sub_1D191F3B0(v18, v17, v20);
    sub_1D191F3B0(v23, v22, 0);
    sub_1D191F3B0(v18, v17, v20);

LABEL_24:
    sub_1D192F928(v18, v17, v20);
    v29 = v23;
    v30 = v22;
    v31 = v25;
    goto LABEL_25;
  }

  if (v18 != v23 || (v17 != v22 || v20 != v25) && (v26 = v21[1], v27 = v21[2], v23 = v18, (sub_1D1E6904C() & 1) == 0))
  {
    sub_1D191F3B0(v18, v17, v20);
    sub_1D191F3B0(v23, v22, v25);
    sub_1D191F3B0(v18, v17, v20);
    sub_1D192F928(v23, v22, v25);

    v29 = v18;
    v30 = v17;
    v31 = v20;
LABEL_25:
    sub_1D192F928(v29, v30, v31);
    return 0;
  }

  sub_1D191F3B0(v18, v17, v20);
  sub_1D191F3B0(v18, v22, v25);
  sub_1D191F3B0(v18, v17, v20);
  v28 = sub_1D17A7B94(v19, v24);
  sub_1D192F928(v18, v22, v25);

  sub_1D192F928(v18, v17, v20);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v33 = v65[8];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 1);
  v36 = a2 + v33;
  v37 = *(a2 + v33);
  v38 = *(v36 + 1);
  if (v35)
  {
    if (v35 == 1)
    {
      result = 0;
      if (v38 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v38 != 2)
      {
        return result;
      }
    }

LABEL_36:
    if (v34 != v37)
    {
      return result;
    }

    if ((sub_1D17B30F0(*(a1 + v65[9]), *(a2 + v65[9])) & 1) == 0 || (sub_1D17A9034(*(a1 + v65[10]), *(a2 + v65[10])) & 1) == 0)
    {
      return 0;
    }

    v39 = v65[11];
    v40 = *(a1 + v39);
    v41 = *(a2 + v39);
    if (v40)
    {
      if (!v41)
      {
        return 0;
      }

      v42 = *(a2 + v39);

      v43 = sub_1D177AC5C(v40, v41);

      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v41)
    {
      return 0;
    }

    if (*(a1 + v65[12]) != *(a2 + v65[12]) || *(a1 + v65[13]) != *(a2 + v65[13]) || *(a1 + v65[14]) != *(a2 + v65[14]))
    {
      return 0;
    }

    v44 = a1 + v65[15];
    v45 = *(v44 + 80);
    v98[4] = *(v44 + 64);
    v98[5] = v45;
    v99[0] = *(v44 + 96);
    *(v99 + 13) = *(v44 + 109);
    v46 = *(v44 + 16);
    v98[0] = *v44;
    v98[1] = v46;
    v47 = *(v44 + 32);
    v98[3] = *(v44 + 48);
    v98[2] = v47;
    v48 = (a2 + v65[15]);
    v49 = v48[3];
    v50 = v48[4];
    *(v101 + 13) = *(v48 + 109);
    v51 = v48[6];
    v100[5] = v48[5];
    v101[0] = v51;
    v100[3] = v49;
    v100[4] = v50;
    v52 = *v48;
    v53 = v48[2];
    v100[1] = v48[1];
    v100[2] = v53;
    v100[0] = v52;
    v54 = *&v98[0];
    v55 = *(v44 + 56);
    v56 = *(v44 + 88);
    v96 = *(v44 + 72);
    v97[0] = v56;
    *(v97 + 13) = *(v44 + 101);
    v57 = *(v44 + 24);
    v92 = *(v44 + 8);
    v93 = v57;
    v94 = *(v44 + 40);
    v95 = v55;
    v58 = v52;
    v59 = *(v48 + 24);
    v60 = *(v48 + 40);
    v86 = *(v48 + 8);
    v87 = v59;
    v61 = *(v48 + 56);
    v62 = *(v48 + 72);
    *(v91 + 13) = *(v48 + 101);
    v63 = *(v48 + 88);
    v90 = v62;
    v91[0] = v63;
    v88 = v60;
    v89 = v61;
    if (*&v98[0])
    {
      *v78 = *&v98[0];
      *&v78[8] = *(v44 + 8);
      *&v78[24] = *(v44 + 24);
      *&v78[40] = *(v44 + 40);
      *&v78[56] = *(v44 + 56);
      *&v78[101] = *(v44 + 101);
      *&v78[88] = *(v44 + 88);
      *&v78[72] = *(v44 + 72);
      v73 = *&v78[32];
      v74 = *&v78[48];
      v71 = *v78;
      v72 = *&v78[16];
      *(v77 + 13) = *&v78[109];
      v76 = *&v78[80];
      v77[0] = *&v78[96];
      v75 = *&v78[64];
      if (v58)
      {
        *&v70[56] = *(v48 + 56);
        *&v70[72] = *(v48 + 72);
        *&v70[88] = *(v48 + 88);
        *&v70[101] = *(v48 + 101);
        *&v70[8] = *(v48 + 8);
        *&v70[24] = *(v48 + 24);
        *&v70[40] = *(v48 + 40);
        *v70 = v58;
        sub_1D1741C08(v98, v68, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v100, v68, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v78, v68, &qword_1EC646FD0, &qword_1D1E841D0);
        v64 = _s13HomeDataModel11ServiceAreaV2eeoiySbAC_ACtFZ_0(&v71, v70);
        v66[4] = *&v70[64];
        v66[5] = *&v70[80];
        v67[0] = *&v70[96];
        *(v67 + 13) = *&v70[109];
        v66[0] = *v70;
        v66[1] = *&v70[16];
        v66[2] = *&v70[32];
        v66[3] = *&v70[48];
        sub_1D192D128(v66);
        v68[4] = v75;
        v68[5] = v76;
        v69[0] = v77[0];
        *(v69 + 13) = *(v77 + 13);
        v68[0] = v71;
        v68[1] = v72;
        v68[2] = v73;
        v68[3] = v74;
        sub_1D192D128(v68);
        *&v70[56] = v95;
        *&v70[72] = v96;
        *&v70[88] = v97[0];
        *&v70[101] = *(v97 + 13);
        *&v70[8] = v92;
        *&v70[24] = v93;
        *v70 = v54;
        *&v70[40] = v94;
        sub_1D1741A30(v70, &qword_1EC646FD0, &qword_1D1E841D0);
        return (v64 & 1) != 0;
      }

      *&v70[64] = *&v78[64];
      *&v70[80] = *&v78[80];
      *&v70[96] = *&v78[96];
      *&v70[109] = *&v78[109];
      *v70 = *v78;
      *&v70[16] = *&v78[16];
      *&v70[32] = *&v78[32];
      *&v70[48] = *&v78[48];
      sub_1D1741C08(v98, v68, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v100, v68, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v78, v68, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D192D128(v70);
    }

    else
    {
      if (!v58)
      {
        *v78 = 0;
        *&v78[56] = *(v44 + 56);
        *&v78[72] = *(v44 + 72);
        *&v78[88] = *(v44 + 88);
        *&v78[101] = *(v44 + 101);
        *&v78[8] = *(v44 + 8);
        *&v78[24] = *(v44 + 24);
        *&v78[40] = *(v44 + 40);
        sub_1D1741C08(v98, &v71, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v100, &v71, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741A30(v78, &qword_1EC646FD0, &qword_1D1E841D0);
        return 1;
      }

      sub_1D1741C08(v98, v78, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v100, v78, &qword_1EC646FD0, &qword_1D1E841D0);
    }

    *&v78[56] = v95;
    *&v78[72] = v96;
    *&v78[88] = v97[0];
    *&v78[101] = *(v97 + 13);
    *&v78[8] = v92;
    *&v78[24] = v93;
    *&v78[40] = v94;
    *v78 = v54;
    v79 = v58;
    v80 = v86;
    v81 = v87;
    *(v85 + 13) = *(v91 + 13);
    v84 = v90;
    v85[0] = v91[0];
    v82 = v88;
    v83 = v89;
    sub_1D1741A30(v78, &qword_1EC6473A0, &qword_1D1E85518);
    return 0;
  }

  result = 0;
  if (!v38)
  {
    goto LABEL_36;
  }

  return result;
}

unint64_t sub_1D192CD48()
{
  result = qword_1EC646FE0;
  if (!qword_1EC646FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FE0);
  }

  return result;
}

unint64_t sub_1D192CD9C()
{
  result = qword_1EC646FE8;
  if (!qword_1EC646FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FE8);
  }

  return result;
}

unint64_t sub_1D192CDF0()
{
  result = qword_1EC646FF0;
  if (!qword_1EC646FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FF0);
  }

  return result;
}

unint64_t sub_1D192CE44()
{
  result = qword_1EC646FF8;
  if (!qword_1EC646FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FF8);
  }

  return result;
}

unint64_t sub_1D192CE98()
{
  result = qword_1EC647000;
  if (!qword_1EC647000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647000);
  }

  return result;
}

unint64_t sub_1D192CEEC()
{
  result = qword_1EC647010;
  if (!qword_1EC647010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192CD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647010);
  }

  return result;
}

unint64_t sub_1D192CF70()
{
  result = qword_1EC647020;
  if (!qword_1EC647020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192CDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647020);
  }

  return result;
}

unint64_t sub_1D192CFF4()
{
  result = qword_1EC647030;
  if (!qword_1EC647030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192CE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647030);
  }

  return result;
}

unint64_t sub_1D192D078()
{
  result = qword_1EC647038;
  if (!qword_1EC647038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647038);
  }

  return result;
}

unint64_t sub_1D192D17C()
{
  result = qword_1EC647048;
  if (!qword_1EC647048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647048);
  }

  return result;
}

unint64_t sub_1D192D1D0()
{
  result = qword_1EC647050;
  if (!qword_1EC647050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647050);
  }

  return result;
}

unint64_t sub_1D192D224()
{
  result = qword_1EC647058;
  if (!qword_1EC647058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647058);
  }

  return result;
}

unint64_t sub_1D192D278()
{
  result = qword_1EC647060;
  if (!qword_1EC647060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647060);
  }

  return result;
}

unint64_t sub_1D192D2CC()
{
  result = qword_1EC647068;
  if (!qword_1EC647068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647068);
  }

  return result;
}

unint64_t sub_1D192D350()
{
  result = qword_1EC647070;
  if (!qword_1EC647070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192D1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647070);
  }

  return result;
}

unint64_t sub_1D192D3D4()
{
  result = qword_1EC647078;
  if (!qword_1EC647078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192D224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647078);
  }

  return result;
}

unint64_t sub_1D192D458()
{
  result = qword_1EC647080;
  if (!qword_1EC647080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647080);
  }

  return result;
}

unint64_t sub_1D192D4AC()
{
  result = qword_1EC647090;
  if (!qword_1EC647090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647090);
  }

  return result;
}

unint64_t sub_1D192D500()
{
  result = qword_1EC6470A0;
  if (!qword_1EC6470A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470A0);
  }

  return result;
}

unint64_t sub_1D192D584()
{
  result = qword_1EC6470A8;
  if (!qword_1EC6470A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470A8);
  }

  return result;
}

unint64_t sub_1D192D5D8()
{
  result = qword_1EC6470B8;
  if (!qword_1EC6470B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470B8);
  }

  return result;
}

unint64_t sub_1D192D65C()
{
  result = qword_1EC6470C0;
  if (!qword_1EC6470C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470C0);
  }

  return result;
}

uint64_t sub_1D192D6B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    v7 = *(v5 + v4);
    v8 = *(a2 + 40);
    sub_1D1E6920C();
    v9 = v7 >> 6;
    sub_1D1E6923C();
    sub_1D1E678EC();
    v10 = sub_1D1E6926C();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }

    ++v4;
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(a2 + 48) + v12);
      if (!(v14 >> 6))
      {
        break;
      }

      if (v14 >> 6 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v9 != 2)
      {
        goto LABEL_7;
      }

      if (((v14 ^ v7) & 0x3F) == 0)
      {
        goto LABEL_17;
      }

LABEL_7:
      v12 = (v12 + 1) & v13;
      if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 > 0x3F || v14 != v7)
    {
      goto LABEL_7;
    }

LABEL_17:
    result = 1;
  }

  while (v4 != v2);
  return result;
}

unint64_t sub_1D192D860()
{
  result = qword_1EC6470D0;
  if (!qword_1EC6470D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470D0);
  }

  return result;
}

unint64_t sub_1D192D8B4()
{
  result = qword_1EC647148;
  if (!qword_1EC647148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647148);
  }

  return result;
}

unint64_t sub_1D192D908()
{
  result = qword_1EC647150;
  if (!qword_1EC647150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647150);
  }

  return result;
}

unint64_t sub_1D192D95C()
{
  result = qword_1EC647158;
  if (!qword_1EC647158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647158);
  }

  return result;
}

unint64_t sub_1D192D9B0()
{
  result = qword_1EC647160;
  if (!qword_1EC647160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647160);
  }

  return result;
}

unint64_t sub_1D192DA04()
{
  result = qword_1EC647168;
  if (!qword_1EC647168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647168);
  }

  return result;
}

unint64_t sub_1D192DA58()
{
  result = qword_1EC647170;
  if (!qword_1EC647170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647170);
  }

  return result;
}

unint64_t sub_1D192DAAC()
{
  result = qword_1EC647178;
  if (!qword_1EC647178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647178);
  }

  return result;
}

unint64_t sub_1D192DB00()
{
  result = qword_1EC647180;
  if (!qword_1EC647180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647180);
  }

  return result;
}

unint64_t sub_1D192DB54()
{
  result = qword_1EC647188;
  if (!qword_1EC647188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647188);
  }

  return result;
}

unint64_t sub_1D192DBA8()
{
  result = qword_1EC647190;
  if (!qword_1EC647190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647190);
  }

  return result;
}

unint64_t sub_1D192DBFC()
{
  result = qword_1EC647198;
  if (!qword_1EC647198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647198);
  }

  return result;
}

unint64_t sub_1D192DC50()
{
  result = qword_1EC6471A0;
  if (!qword_1EC6471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6471A0);
  }

  return result;
}

unint64_t sub_1D192DCA4()
{
  result = qword_1EC6471A8;
  if (!qword_1EC6471A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6471A8);
  }

  return result;
}

uint64_t sub_1D192DCF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D192DD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D192DE0C()
{
  result = qword_1EE07C3E8;
  if (!qword_1EE07C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3E8);
  }

  return result;
}

unint64_t sub_1D192DE70()
{
  result = qword_1EC647220;
  if (!qword_1EC647220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647220);
  }

  return result;
}

unint64_t sub_1D192DEC8()
{
  result = qword_1EE07C3F8;
  if (!qword_1EE07C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3F8);
  }

  return result;
}

unint64_t sub_1D192DF20()
{
  result = qword_1EC647228;
  if (!qword_1EC647228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647230, &qword_1D1E84668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647228);
  }

  return result;
}

void sub_1D192DFAC()
{
  type metadata accessor for EndpointPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07C3E0);
    if (v1 <= 0x3F)
    {
      sub_1D192E124(319, &qword_1EE07B6A8, sub_1D1785910);
      if (v2 <= 0x3F)
      {
        sub_1D192E124(319, &qword_1EE07B6A0, sub_1D17859B8);
        if (v3 <= 0x3F)
        {
          sub_1D192E184();
          if (v4 <= 0x3F)
          {
            sub_1D17BDF80(319, qword_1EE07CDD0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D192E124(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D1E681FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D192E184()
{
  if (!qword_1EE07B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B718);
    }
  }
}

uint64_t sub_1D192E1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D192E240(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D192E3A4()
{
  result = qword_1EC647238;
  if (!qword_1EC647238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647238);
  }

  return result;
}

unint64_t sub_1D192E3FC()
{
  result = qword_1EC647240;
  if (!qword_1EC647240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647240);
  }

  return result;
}

unint64_t sub_1D192E454()
{
  result = qword_1EC647248;
  if (!qword_1EC647248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647248);
  }

  return result;
}

unint64_t sub_1D192E4AC()
{
  result = qword_1EC647250;
  if (!qword_1EC647250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647250);
  }

  return result;
}

unint64_t sub_1D192E504()
{
  result = qword_1EC647258;
  if (!qword_1EC647258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647258);
  }

  return result;
}

unint64_t sub_1D192E55C()
{
  result = qword_1EC647260;
  if (!qword_1EC647260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647260);
  }

  return result;
}

unint64_t sub_1D192E5B4()
{
  result = qword_1EC647268;
  if (!qword_1EC647268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647268);
  }

  return result;
}

unint64_t sub_1D192E60C()
{
  result = qword_1EC647270;
  if (!qword_1EC647270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647270);
  }

  return result;
}

unint64_t sub_1D192E664()
{
  result = qword_1EC647278;
  if (!qword_1EC647278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647278);
  }

  return result;
}

unint64_t sub_1D192E6BC()
{
  result = qword_1EC647280;
  if (!qword_1EC647280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647280);
  }

  return result;
}

unint64_t sub_1D192E714()
{
  result = qword_1EC647288;
  if (!qword_1EC647288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647288);
  }

  return result;
}

unint64_t sub_1D192E76C()
{
  result = qword_1EC647290;
  if (!qword_1EC647290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647290);
  }

  return result;
}

unint64_t sub_1D192E7C4()
{
  result = qword_1EC647298;
  if (!qword_1EC647298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647298);
  }

  return result;
}

unint64_t sub_1D192E81C()
{
  result = qword_1EC6472A0;
  if (!qword_1EC6472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472A0);
  }

  return result;
}

unint64_t sub_1D192E874()
{
  result = qword_1EC6472A8;
  if (!qword_1EC6472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472A8);
  }

  return result;
}

unint64_t sub_1D192E8CC()
{
  result = qword_1EC6472B0;
  if (!qword_1EC6472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472B0);
  }

  return result;
}

unint64_t sub_1D192E924()
{
  result = qword_1EC6472B8;
  if (!qword_1EC6472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472B8);
  }

  return result;
}

unint64_t sub_1D192E97C()
{
  result = qword_1EC6472C0;
  if (!qword_1EC6472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472C0);
  }

  return result;
}

unint64_t sub_1D192E9D4()
{
  result = qword_1EC6472C8;
  if (!qword_1EC6472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472C8);
  }

  return result;
}

unint64_t sub_1D192EA2C()
{
  result = qword_1EC6472D0;
  if (!qword_1EC6472D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472D0);
  }

  return result;
}

unint64_t sub_1D192EA84()
{
  result = qword_1EC6472D8;
  if (!qword_1EC6472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472D8);
  }

  return result;
}

unint64_t sub_1D192EADC()
{
  result = qword_1EC6472E0;
  if (!qword_1EC6472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472E0);
  }

  return result;
}

unint64_t sub_1D192EB34()
{
  result = qword_1EC6472E8;
  if (!qword_1EC6472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472E8);
  }

  return result;
}

unint64_t sub_1D192EB8C()
{
  result = qword_1EC6472F0;
  if (!qword_1EC6472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472F0);
  }

  return result;
}

unint64_t sub_1D192EBE4()
{
  result = qword_1EC6472F8;
  if (!qword_1EC6472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472F8);
  }

  return result;
}

unint64_t sub_1D192EC3C()
{
  result = qword_1EC647300;
  if (!qword_1EC647300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647300);
  }

  return result;
}

unint64_t sub_1D192EC94()
{
  result = qword_1EC647308;
  if (!qword_1EC647308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647308);
  }

  return result;
}

unint64_t sub_1D192ECEC()
{
  result = qword_1EC647310;
  if (!qword_1EC647310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647310);
  }

  return result;
}

unint64_t sub_1D192ED44()
{
  result = qword_1EC647318;
  if (!qword_1EC647318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647318);
  }

  return result;
}

unint64_t sub_1D192ED9C()
{
  result = qword_1EC647320;
  if (!qword_1EC647320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647320);
  }

  return result;
}

unint64_t sub_1D192EDF4()
{
  result = qword_1EC647328;
  if (!qword_1EC647328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647328);
  }

  return result;
}

unint64_t sub_1D192EE4C()
{
  result = qword_1EC647330;
  if (!qword_1EC647330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647330);
  }

  return result;
}

unint64_t sub_1D192EEA4()
{
  result = qword_1EC647338;
  if (!qword_1EC647338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647338);
  }

  return result;
}

unint64_t sub_1D192EEFC()
{
  result = qword_1EC647340;
  if (!qword_1EC647340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647340);
  }

  return result;
}

unint64_t sub_1D192EF54()
{
  result = qword_1EC647348;
  if (!qword_1EC647348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647348);
  }

  return result;
}

unint64_t sub_1D192EFAC()
{
  result = qword_1EC647350;
  if (!qword_1EC647350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647350);
  }

  return result;
}

uint64_t sub_1D192F000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D676E696E6E7572 && a2 == 0xEB0000000065646FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEC00000065646F4DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746174536C6C61 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696E6E75526C6C61 && a2 == 0xEF7365646F4D676ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE420 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EBE440 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D1EBE460 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D1EBE490 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4165636976726573 && a2 == 0xEB00000000616572)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D192F3E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D192F4EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43676E696B656573 && a2 == 0xEE00726567726168 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E696772616863 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656B636F64 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E697974706D65 && a2 == 0xEF6E694274737544 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEB00000000706F4DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE4C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E697461647075 && a2 == 0xEC0000007370614DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D192F8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D192F928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t StaticRVCClusterGroup.vacuumMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v19 = *v7;
        v9 = *(v7 + 16);
        v10 = *(v8 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v11 = v8 + 56;
        v12 = -1 << *(v8 + 32);
        v13 = result & ~v12;
        if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while ((*(*(v8 + 48) + v13) & 0xBF) != 0x81)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (!*(v8 + 16) || (v15 = *(v8 + 40), sub_1D1E6920C(), sub_1D1E6923C(), sub_1D1E678EC(), result = sub_1D1E6926C(), v16 = -1 << *(v8 + 32), v17 = result & ~v16, ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
          {
LABEL_18:
            *a1 = v19;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }

          v18 = ~v16;
          while ((*(*(v8 + 48) + v17) & 0xBF) != 0x82)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_4:
      }

      if (++v6 == v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.mopMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v19 = *v7;
        v9 = *(v7 + 16);
        v10 = *(v8 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v11 = v8 + 56;
        v12 = -1 << *(v8 + 32);
        v13 = result & ~v12;
        if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while ((*(*(v8 + 48) + v13) & 0xBF) != 0x82)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (!*(v8 + 16) || (v15 = *(v8 + 40), sub_1D1E6920C(), sub_1D1E6923C(), sub_1D1E678EC(), result = sub_1D1E6926C(), v16 = -1 << *(v8 + 32), v17 = result & ~v16, ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
          {
LABEL_18:
            *a1 = v19;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }

          v18 = ~v16;
          while ((*(*(v8 + 48) + v17) & 0xBF) != 0x81)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_4:
      }

      if (++v6 == v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.vacuumAndMopCleaningMode.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      result = sub_1D192D6B0(&unk_1F4D65308, v11);
      if (result)
      {
        *a1 = v8;
        a1[1] = v9;
        a1[2] = v10;
        a1[3] = v11;
        return result;
      }

      ++v6;
      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

BOOL sub_1D192FEEC(void (*a1)(uint64_t *__return_ptr))
{
  a1(v3);
  v1 = v4;
  if (v4)
  {
    sub_1D192F928(v3[0], v3[1], v4);
  }

  return v1 != 0;
}

uint64_t StaticRVCClusterGroup.canVacuumAndMopSimultaneously.getter()
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v2 = *(v0 + *(result + 44));
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 56);
  v4 = -*(v2 + 16);
  v5 = -1;
  do
  {
    v6 = v4 + v5 != -1;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v3 + 4;
    v9 = *(v3 - 1);
    v8 = *v3;

    v10 = sub_1D192D6B0(&unk_1F4D65330, v8);

    v3 = v7;
  }

  while ((v10 & 1) == 0);
  return v6;
}

uint64_t StaticRVCClusterGroup.secondaryCleanModeTagsCompatible(vacuum:mop:)(char a1, char a2)
{
  v5 = *(v2 + *(type metadata accessor for StaticRVCClusterGroup() + 44));
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 16))
  {
    v33 = MEMORY[0x1E69E7CC0];
    v7 = sub_1D177E2EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (a1)
    {
      if (v8 >> 1 <= v9)
      {
        v7 = sub_1D177E2EC((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v10;
      v7[v9 + 32] = -127;
      v33 = v7;
      v11 = MEMORY[0x1E69E7CC0];
      if ((a2 & 1) == 0)
      {
LABEL_7:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D177E2EC(0, *(v11 + 2) + 1, 1, v11);
        }

        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        if (v13 >= v12 >> 1)
        {
          v11 = sub_1D177E2EC((v12 > 1), v13 + 1, 1, v11);
        }

        *(v11 + 2) = v13 + 1;
        v11[v13 + 32] = -126;
LABEL_21:
        v16 = MEMORY[0x1E69E7CD0];
        v32 = MEMORY[0x1E69E7CD0];
        v17 = *(v5 + 16);
        if (!v17)
        {
          goto LABEL_30;
        }

        v18 = (v5 + 56);
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;

          v22 = sub_1D192D6B0(v21, v20);

          if (v22)
          {

            v24 = sub_1D1929D78(v23, v20);

            if (v24)
            {

              v26 = sub_1D1951268(v25, &v33);
              sub_1D19308E8(v26);
            }
          }

          v18 += 4;
          --v17;
        }

        while (v17);
        v16 = v32;
        v27 = *(v32 + 16);
        if (v27)
        {
          while (1)
          {
            v28 = sub_1D1804408(v27, 0);
            v30 = sub_1D1805908(&v31, v28 + 32, v27, v16);

            sub_1D1716918();
            if (v30 == v27)
            {
              break;
            }

            __break(1u);
LABEL_30:
            v27 = *(v16 + 16);
            if (!v27)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          v28 = MEMORY[0x1E69E7CC0];
        }

        v31 = v28;
        sub_1D1932F38(&v31, sub_1D1E0C094, &type metadata for ModeClusterSemanticTag, sub_1D1934C4C, sub_1D1933420);

        return v31;
      }
    }

    else
    {
      if (v8 >> 1 <= v9)
      {
        v7 = sub_1D177E2EC((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v10;
      v7[v9 + 32] = -127;
      v11 = v7;
      v7 = MEMORY[0x1E69E7CC0];
      if ((a2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D177E2EC(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1D177E2EC((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    v7[v15 + 32] = -126;
    v33 = v7;
    goto LABEL_21;
  }

  return v6;
}