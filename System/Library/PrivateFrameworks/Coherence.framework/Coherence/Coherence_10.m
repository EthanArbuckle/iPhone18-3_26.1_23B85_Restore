uint64_t sub_1ADEA1624()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADEA47EC();
          sub_1AE23C4EC();
        }

        else if (result == 4)
        {
          sub_1AE23C45C();
        }
      }

      else if (result == 1)
      {
        sub_1ADEA47EC();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C4BC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA173C()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA9058(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (!v1)
  {
    if (*v0)
    {
      sub_1AE23C63C();
    }

    if (*(*(v0 + 8) + 16))
    {
      sub_1ADEA47EC();
      sub_1AE23C65C();
    }

    if (*(*(v0 + 16) + 16))
    {
      sub_1AE23C57C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_1ADEA18F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void (*sub_1ADEA1930(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA1A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8F08();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA1A84(uint64_t a1)
{
  v2 = sub_1ADEA31EC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA1AC0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 6);
  v5 = *(v0 + 40);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1B3C()
{
  sub_1ADEA31EC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA1B88()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 6);
  v5 = *(v0 + 40);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1C00(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1ADEA5158(&v5, &v7) & 1;
}

uint64_t sub_1ADEA1C4C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77B0);
  __swift_project_value_buffer(v0, qword_1EB5D77B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "replicaUUID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "affinity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA1E60()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADEA8FB0();
          sub_1AE23C3CC();
          break;
        case 2:
          sub_1ADEA2F2C();
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C3DC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v9 = sub_1AE23C32C();
  v15 = *(v9 - 8);
  v10 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C5BC(), !v5))
  {
    if (!*(a3 + 16) || (sub_1ADEA2F2C(), result = sub_1AE23C65C(), !v5))
    {
      if (!a4 || (v16 = a4, v17 = v18 & 1, sub_1ADEA8FB0(), result = sub_1AE23C5AC(), !v5))
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v15 + 8))(v12, v9);
      }
    }
  }

  return result;
}

void sub_1ADEA212C(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void (*sub_1ADEA2164(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA225C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8F5C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA22CC(uint64_t a1)
{
  v2 = sub_1ADEA308C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA2308()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA237C()
{
  sub_1ADEA308C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA23C8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA245C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77C8);
  __swift_project_value_buffer(v0, qword_1EB5D77C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Backward";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Forward";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA2648()
{
  result = MEMORY[0x1B26FB670](0x65676E61522ELL, 0xE600000000000000);
  qword_1EB5D77E0 = 0xD000000000000010;
  *algn_1EB5D77E8 = 0x80000001AE260AB0;
  return result;
}

uint64_t sub_1ADEA26B0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77F0);
  __swift_project_value_buffer(v0, qword_1EB5D77F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fromChar";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toChar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA2878()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        sub_1ADEA47EC();
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA2930()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA9058(*v0, *(v0 + 8), *(v0 + 16));
  if (!v1)
  {
    sub_1ADEA9058(*(v0 + 24), *(v0 + 32), *(v0 + 40));
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_1ADEA2A78(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_1ADEA2AB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

void (*sub_1ADEA2B18(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA2BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA9004();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA2C6C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1AE23C6AC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1ADEA2D08(uint64_t a1)
{
  v2 = sub_1ADEA2F2C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA2D44()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA2DC0()
{
  sub_1ADEA2F2C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA2E0C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA2E84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1ADEA5B9C(&v5, &v7) & 1;
}

unint64_t sub_1ADEA2ED4()
{
  result = qword_1EB5BA558;
  if (!qword_1EB5BA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA558);
  }

  return result;
}

unint64_t sub_1ADEA2F2C()
{
  result = qword_1EB5BA560;
  if (!qword_1EB5BA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA560);
  }

  return result;
}

unint64_t sub_1ADEA2F84()
{
  result = qword_1EB5BA568;
  if (!qword_1EB5BA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA568);
  }

  return result;
}

unint64_t sub_1ADEA2FDC()
{
  result = qword_1EB5BA570;
  if (!qword_1EB5BA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA570);
  }

  return result;
}

unint64_t sub_1ADEA3034()
{
  result = qword_1EB5BA578;
  if (!qword_1EB5BA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA578);
  }

  return result;
}

unint64_t sub_1ADEA308C()
{
  result = qword_1EB5BA580;
  if (!qword_1EB5BA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA580);
  }

  return result;
}

unint64_t sub_1ADEA30E4()
{
  result = qword_1EB5BA588;
  if (!qword_1EB5BA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA588);
  }

  return result;
}

unint64_t sub_1ADEA313C()
{
  result = qword_1EB5BA590;
  if (!qword_1EB5BA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA590);
  }

  return result;
}

unint64_t sub_1ADEA3194()
{
  result = qword_1EB5BA598;
  if (!qword_1EB5BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA598);
  }

  return result;
}

unint64_t sub_1ADEA31EC()
{
  result = qword_1EB5BA5A0;
  if (!qword_1EB5BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5A0);
  }

  return result;
}

unint64_t sub_1ADEA3244()
{
  result = qword_1EB5BA5A8;
  if (!qword_1EB5BA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5A8);
  }

  return result;
}

unint64_t sub_1ADEA329C()
{
  result = qword_1EB5BA5B0;
  if (!qword_1EB5BA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5B0);
  }

  return result;
}

unint64_t sub_1ADEA32F4()
{
  result = qword_1EB5BA5B8;
  if (!qword_1EB5BA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5B8);
  }

  return result;
}

unint64_t sub_1ADEA334C()
{
  result = qword_1EB5BA5C0;
  if (!qword_1EB5BA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5C0);
  }

  return result;
}

unint64_t sub_1ADEA33A4()
{
  result = qword_1EB5BA5C8;
  if (!qword_1EB5BA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5C8);
  }

  return result;
}

unint64_t sub_1ADEA33FC()
{
  result = qword_1EB5BA5D0;
  if (!qword_1EB5BA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5D0);
  }

  return result;
}

unint64_t sub_1ADEA3454()
{
  result = qword_1EB5BA5D8;
  if (!qword_1EB5BA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5D8);
  }

  return result;
}

unint64_t sub_1ADEA34AC()
{
  result = qword_1EB5BA5E0;
  if (!qword_1EB5BA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5E0);
  }

  return result;
}

unint64_t sub_1ADEA3504()
{
  result = qword_1EB5BA5E8;
  if (!qword_1EB5BA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5E8);
  }

  return result;
}

unint64_t sub_1ADEA355C()
{
  result = qword_1EB5BA5F0;
  if (!qword_1EB5BA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5F0);
  }

  return result;
}

unint64_t sub_1ADEA35B4()
{
  result = qword_1EB5BA5F8;
  if (!qword_1EB5BA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5F8);
  }

  return result;
}

unint64_t sub_1ADEA360C()
{
  result = qword_1EB5BA600;
  if (!qword_1EB5BA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA600);
  }

  return result;
}

unint64_t sub_1ADEA3664()
{
  result = qword_1EB5BA608;
  if (!qword_1EB5BA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA608);
  }

  return result;
}

unint64_t sub_1ADEA36BC()
{
  result = qword_1EB5BA610;
  if (!qword_1EB5BA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA610);
  }

  return result;
}

unint64_t sub_1ADEA3714()
{
  result = qword_1EB5BA618;
  if (!qword_1EB5BA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA618);
  }

  return result;
}

unint64_t sub_1ADEA376C()
{
  result = qword_1EB5BA620;
  if (!qword_1EB5BA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA620);
  }

  return result;
}

unint64_t sub_1ADEA37C4()
{
  result = qword_1EB5BA628;
  if (!qword_1EB5BA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA628);
  }

  return result;
}

unint64_t sub_1ADEA381C()
{
  result = qword_1EB5BA630;
  if (!qword_1EB5BA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA630);
  }

  return result;
}

unint64_t sub_1ADEA3874()
{
  result = qword_1EB5BA638;
  if (!qword_1EB5BA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA638);
  }

  return result;
}

unint64_t sub_1ADEA38CC()
{
  result = qword_1EB5BA640;
  if (!qword_1EB5BA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA640);
  }

  return result;
}

unint64_t sub_1ADEA3924()
{
  result = qword_1EB5BA648;
  if (!qword_1EB5BA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA648);
  }

  return result;
}

unint64_t sub_1ADEA397C()
{
  result = qword_1EB5BA650;
  if (!qword_1EB5BA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA650);
  }

  return result;
}

unint64_t sub_1ADEA39D4()
{
  result = qword_1EB5BA658;
  if (!qword_1EB5BA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA658);
  }

  return result;
}

unint64_t sub_1ADEA3A2C()
{
  result = qword_1EB5BA660;
  if (!qword_1EB5BA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA660);
  }

  return result;
}

unint64_t sub_1ADEA3A84()
{
  result = qword_1EB5BA668;
  if (!qword_1EB5BA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA668);
  }

  return result;
}

unint64_t sub_1ADEA3ADC()
{
  result = qword_1EB5BA670;
  if (!qword_1EB5BA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA670);
  }

  return result;
}

unint64_t sub_1ADEA3B34()
{
  result = qword_1EB5BA678;
  if (!qword_1EB5BA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA678);
  }

  return result;
}

unint64_t sub_1ADEA3B8C()
{
  result = qword_1EB5BA680;
  if (!qword_1EB5BA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA680);
  }

  return result;
}

unint64_t sub_1ADEA3BE4()
{
  result = qword_1EB5BA688;
  if (!qword_1EB5BA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA688);
  }

  return result;
}

unint64_t sub_1ADEA3C3C()
{
  result = qword_1EB5BA690;
  if (!qword_1EB5BA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA690);
  }

  return result;
}

unint64_t sub_1ADEA3C94()
{
  result = qword_1EB5BA698;
  if (!qword_1EB5BA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA698);
  }

  return result;
}

unint64_t sub_1ADEA3CEC()
{
  result = qword_1EB5BA6A0;
  if (!qword_1EB5BA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6A0);
  }

  return result;
}

unint64_t sub_1ADEA3D44()
{
  result = qword_1EB5BA6A8;
  if (!qword_1EB5BA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6A8);
  }

  return result;
}

unint64_t sub_1ADEA3D9C()
{
  result = qword_1EB5BA6B0;
  if (!qword_1EB5BA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6B0);
  }

  return result;
}

unint64_t sub_1ADEA3DF4()
{
  result = qword_1EB5BA6B8;
  if (!qword_1EB5BA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6B8);
  }

  return result;
}

unint64_t sub_1ADEA3E4C()
{
  result = qword_1EB5BA6C0;
  if (!qword_1EB5BA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6C0);
  }

  return result;
}

unint64_t sub_1ADEA3EA4()
{
  result = qword_1EB5BA6C8;
  if (!qword_1EB5BA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6C8);
  }

  return result;
}

unint64_t sub_1ADEA3EFC()
{
  result = qword_1EB5BA6D0;
  if (!qword_1EB5BA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6D0);
  }

  return result;
}

unint64_t sub_1ADEA3F54()
{
  result = qword_1EB5BA6D8;
  if (!qword_1EB5BA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6D8);
  }

  return result;
}

unint64_t sub_1ADEA3FAC()
{
  result = qword_1EB5BA6E0;
  if (!qword_1EB5BA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6E0);
  }

  return result;
}

unint64_t sub_1ADEA4004()
{
  result = qword_1EB5BA6E8;
  if (!qword_1EB5BA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6E8);
  }

  return result;
}

unint64_t sub_1ADEA405C()
{
  result = qword_1EB5BA6F0;
  if (!qword_1EB5BA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6F0);
  }

  return result;
}

unint64_t sub_1ADEA40B4()
{
  result = qword_1EB5BA6F8;
  if (!qword_1EB5BA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6F8);
  }

  return result;
}

unint64_t sub_1ADEA410C()
{
  result = qword_1EB5BA700;
  if (!qword_1EB5BA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA700);
  }

  return result;
}

unint64_t sub_1ADEA4164()
{
  result = qword_1EB5BA708;
  if (!qword_1EB5BA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA708);
  }

  return result;
}

unint64_t sub_1ADEA41BC()
{
  result = qword_1EB5BA710;
  if (!qword_1EB5BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA710);
  }

  return result;
}

unint64_t sub_1ADEA4214()
{
  result = qword_1EB5BA718;
  if (!qword_1EB5BA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA718);
  }

  return result;
}

unint64_t sub_1ADEA426C()
{
  result = qword_1EB5BA720;
  if (!qword_1EB5BA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA720);
  }

  return result;
}

unint64_t sub_1ADEA42C4()
{
  result = qword_1EB5BA728;
  if (!qword_1EB5BA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA728);
  }

  return result;
}

unint64_t sub_1ADEA431C()
{
  result = qword_1EB5BA730;
  if (!qword_1EB5BA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA730);
  }

  return result;
}

unint64_t sub_1ADEA4374()
{
  result = qword_1EB5BA738;
  if (!qword_1EB5BA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA738);
  }

  return result;
}

unint64_t sub_1ADEA43CC()
{
  result = qword_1EB5BA740;
  if (!qword_1EB5BA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA740);
  }

  return result;
}

unint64_t sub_1ADEA4424()
{
  result = qword_1EB5BA748;
  if (!qword_1EB5BA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA748);
  }

  return result;
}

unint64_t sub_1ADEA447C()
{
  result = qword_1EB5BA750;
  if (!qword_1EB5BA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA750);
  }

  return result;
}

unint64_t sub_1ADEA44D4()
{
  result = qword_1EB5BA758;
  if (!qword_1EB5BA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA758);
  }

  return result;
}

unint64_t sub_1ADEA452C()
{
  result = qword_1EB5BA760;
  if (!qword_1EB5BA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA760);
  }

  return result;
}

unint64_t sub_1ADEA4584()
{
  result = qword_1EB5BA768;
  if (!qword_1EB5BA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA768);
  }

  return result;
}

unint64_t sub_1ADEA45DC()
{
  result = qword_1EB5BA770;
  if (!qword_1EB5BA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA770);
  }

  return result;
}

unint64_t sub_1ADEA4634()
{
  result = qword_1EB5BA778;
  if (!qword_1EB5BA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA778);
  }

  return result;
}

unint64_t sub_1ADEA468C()
{
  result = qword_1EB5BA780;
  if (!qword_1EB5BA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA780);
  }

  return result;
}

unint64_t sub_1ADEA46E4()
{
  result = qword_1EB5BA788;
  if (!qword_1EB5BA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA788);
  }

  return result;
}

unint64_t sub_1ADEA473C()
{
  result = qword_1EB5BA790;
  if (!qword_1EB5BA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA790);
  }

  return result;
}

unint64_t sub_1ADEA4794()
{
  result = qword_1EB5BA798;
  if (!qword_1EB5BA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA798);
  }

  return result;
}

unint64_t sub_1ADEA47EC()
{
  result = qword_1EB5BA7A0;
  if (!qword_1EB5BA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7A0);
  }

  return result;
}

unint64_t sub_1ADEA4844()
{
  result = qword_1EB5BA7A8;
  if (!qword_1EB5BA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7A8);
  }

  return result;
}

unint64_t sub_1ADEA489C()
{
  result = qword_1EB5BA7B0;
  if (!qword_1EB5BA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7B0);
  }

  return result;
}

unint64_t sub_1ADEA48F4()
{
  result = qword_1EB5BA7B8;
  if (!qword_1EB5BA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7B8);
  }

  return result;
}

unint64_t sub_1ADEA494C()
{
  result = qword_1EB5BA7C0;
  if (!qword_1EB5BA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7C0);
  }

  return result;
}

unint64_t sub_1ADEA49A4()
{
  result = qword_1EB5BA7C8;
  if (!qword_1EB5BA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7C8);
  }

  return result;
}

unint64_t sub_1ADEA49FC()
{
  result = qword_1EB5BA7D0;
  if (!qword_1EB5BA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7D0);
  }

  return result;
}

unint64_t sub_1ADEA4A54()
{
  result = qword_1EB5BA7D8;
  if (!qword_1EB5BA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7D8);
  }

  return result;
}

unint64_t sub_1ADEA4AAC()
{
  result = qword_1EB5BA7E0;
  if (!qword_1EB5BA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7E0);
  }

  return result;
}

unint64_t sub_1ADEA4B04()
{
  result = qword_1EB5BA7E8;
  if (!qword_1EB5BA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7E8);
  }

  return result;
}

unint64_t sub_1ADEA4B5C()
{
  result = qword_1EB5BA7F0;
  if (!qword_1EB5BA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7F0);
  }

  return result;
}

unint64_t sub_1ADEA4BB4()
{
  result = qword_1EB5BA7F8;
  if (!qword_1EB5BA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7F8);
  }

  return result;
}

unint64_t sub_1ADEA4C0C()
{
  result = qword_1EB5BA800;
  if (!qword_1EB5BA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA800);
  }

  return result;
}

unint64_t sub_1ADEA4C64()
{
  result = qword_1EB5BA808;
  if (!qword_1EB5BA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA808);
  }

  return result;
}

unint64_t sub_1ADEA4CBC()
{
  result = qword_1EB5BA810;
  if (!qword_1EB5BA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA810);
  }

  return result;
}

unint64_t sub_1ADEA4D14()
{
  result = qword_1EB5BA818;
  if (!qword_1EB5BA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA818);
  }

  return result;
}

unint64_t sub_1ADEA4D6C()
{
  result = qword_1EB5BA820;
  if (!qword_1EB5BA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA820);
  }

  return result;
}

unint64_t sub_1ADEA4DC4()
{
  result = qword_1EB5BA828;
  if (!qword_1EB5BA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA828);
  }

  return result;
}

unint64_t sub_1ADEA4E1C()
{
  result = qword_1EB5BA830;
  if (!qword_1EB5BA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA830);
  }

  return result;
}

unint64_t sub_1ADEA4E74()
{
  result = qword_1EB5BA838;
  if (!qword_1EB5BA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA838);
  }

  return result;
}

unint64_t sub_1ADEA4ED0()
{
  result = qword_1EB5BA840;
  if (!qword_1EB5BA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA840);
  }

  return result;
}

unint64_t sub_1ADEA4F28()
{
  result = qword_1EB5BA848;
  if (!qword_1EB5BA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA848);
  }

  return result;
}

unint64_t sub_1ADEA4F7C()
{
  result = qword_1EB5BA850;
  if (!qword_1EB5BA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA850);
  }

  return result;
}

uint64_t sub_1ADEA4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = 0;
  if (a1 == a3 && a2 == a4)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v16 = sub_1AE23CCBC();
    v17 = *(v9 + 8);
    v17(v12, v8);
    v17(v15, v8);
  }

  return v16 & 1;
}

uint64_t sub_1ADEA5158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    if (*(a2 + 40))
    {
      return v13 & 1;
    }

    if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return v13 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v15 = sub_1AE23CCBC();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v12, v4);
    if ((v15 & 1) == 0)
    {
LABEL_15:
      v13 = 0;
      return v13 & 1;
    }
  }

  if (*a1 != *a2 || (sub_1ADE522BC(*(a1 + 8), *(a2 + 8), v10) & 1) == 0 || (sub_1ADE4A3AC(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v13 = sub_1AE23CCBC();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v12, v4);
  return v13 & 1;
}

uint64_t sub_1ADEA53BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (a1 == a2 || (, , v14 = sub_1ADE9F7A8(a1, a2, a3), , , v14))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v15 = sub_1AE23CCBC();
    v16 = *(v7 + 8);
    v16(v10, v6);
    v16(v13, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1ADEA556C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26[-v18];
  if (!a3)
  {
    v29 = v13;
    if (!a6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  if (!a6)
  {
    goto LABEL_10;
  }

  sub_1ADE4E9A0(v20, a6);
  if ((v21 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v27 = sub_1AE23CCBC();
  v28 = a1;
  v29 = v13;
  v22 = *(v13 + 8);
  v22(v16, v12);
  v22(v19, v12);
  a1 = v28;

  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((sub_1ADDD6F8C(a1, a2, a4, a5) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v23 = sub_1AE23CCBC();
  v24 = *(v29 + 8);
  v24(v16, v12);
  v24(v19, v12);
  return v23 & 1;
}

uint64_t sub_1ADEA5810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = sub_1ADDD6F8C(a1, a2, a4, a5);
  v21 = 0;
  if ((v20 & 1) != 0 && a3 == a6)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v21 = sub_1AE23CCBC();
    v22 = *(v13 + 8);
    v22(v16, v12);
    v22(v19, v12);
  }

  return v21 & 1;
}

uint64_t sub_1ADEA59B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v27 = a7;
  v15 = sub_1AE23C32C();
  v26 = *(v15 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  if ((sub_1ADE4AF74(a1, a5) & 1) == 0 || (sub_1ADE522C0(a2, a6) & 1) == 0)
  {
    goto LABEL_8;
  }

  v22 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v22 = a3;
  }

  if ((a8 & 1) == 0)
  {
    if (v22 != v27)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v23 = sub_1AE23CCBC();
    v25 = *(v26 + 8);
    v25(v18, v15);
    v25(v21, v15);
    return v23 & 1;
  }

  if (!v27)
  {
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v22 == 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1ADEA5B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
    if (*(a2 + 16))
    {
      return v12 & 1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return v12 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v14 = sub_1AE23CCBC();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v11, v4);
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
LABEL_13:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v12 = sub_1AE23CCBC();
      v17 = *(v5 + 8);
      v17(v8, v4);
      v17(v11, v4);
      return v12 & 1;
    }

LABEL_18:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  if ((*(a2 + 40) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v18 = sub_1AE23CCBC();
    v19 = *(v5 + 8);
    v19(v8, v4);
    v19(v11, v4);
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  return v12 & 1;
}

uint64_t sub_1ADEA5E98(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (!v12 && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1ADE4B64C(a1[2], a2[2]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1ADE4BC88(a1[3], a2[3]);
  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = a2[4];
  if (a1[4])
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = a2[4];

    sub_1ADE4E9A0(v17, v15);
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v28 = sub_1AE23CCBC();
    v19 = *(v5 + 8);
    v19(v8, v4);
    v19(v11, v4);

    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v15)
  {
    goto LABEL_20;
  }

  v20 = a2[5];
  if (!a1[5])
  {
    if (!v20)
    {
LABEL_23:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      LOBYTE(v20) = sub_1AE23CCBC();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v11, v4);
      return v20 & 1;
    }

LABEL_20:
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  if (v20)
  {

    sub_1ADE4E9A0(v21, v20);
    if (v22)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v23 = sub_1AE23CCBC();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v11, v4);

      if (v23)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  return v20 & 1;
}

uint64_t sub_1ADEA621C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-v10];
  if (a1 == a2)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v12)
  {
    if (v13)
    {

      if (v12 == v13 || (sub_1ADE9604C(v12, v13) & 1) != 0)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
        v19 = sub_1AE23CCBC();
        v14 = *(v5 + 8);
        v14(v8, v4);
        v14(v11, v4);

        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_13:

    v15 = 0;
    return v15 & 1;
  }

  if (v13)
  {
    goto LABEL_13;
  }

LABEL_9:

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v15 = sub_1AE23CCBC();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v11, v4);
  return v15 & 1;
}

uint64_t sub_1ADEA6504(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  if ((sub_1ADDD6F8C(a1, a2, a4, a5) & 1) == 0 || (v20 = *(a3 + 16), v20 != *(a6 + 16)))
  {
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  if (v20 && a3 != a6)
  {
    v21 = (a3 + 32);
    v22 = (a6 + 32);
    while (*v21 == *v22)
    {
      ++v21;
      ++v22;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v23 = sub_1AE23CCBC();
  v24 = *(v13 + 8);
  v24(v16, v12);
  v24(v19, v12);
  return v23 & 1;
}

uint64_t sub_1ADEA66EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v15 = sub_1AE23C32C();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if ((sub_1ADDD6F8C(a1, a2, a5, a6) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    if (!a7)
    {
      goto LABEL_14;
    }

    sub_1ADE4E9A0(v22, a7);
    if ((v23 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v24 = sub_1AE23CCBC();
    v25 = *(v35 + 8);
    v25(v18, v15);
    v25(v21, v15);

    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (a7)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    v26 = v34;
    if (!v34)
    {
      goto LABEL_14;
    }

    sub_1ADE4E9A0(v27, v26);
    if (v28)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v29 = sub_1AE23CCBC();
      v30 = *(v35 + 8);
      v30(v18, v15);
      v30(v21, v15);

      if (v29)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v34)
  {
LABEL_17:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v31 = sub_1AE23CCBC();
    v33 = *(v35 + 8);
    v33(v18, v15);
    v33(v21, v15);
    return v31 & 1;
  }

LABEL_14:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1ADEA6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  if ((v20 != a4 || a2 != a5) && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a6)
    {
LABEL_11:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      LOBYTE(a6) = sub_1AE23CCBC();
      v23 = *(v13 + 8);
      v23(v16, v12);
      v23(v19, v12);
      return a6 & 1;
    }

LABEL_13:
    LOBYTE(a6) = 0;
    return a6 & 1;
  }

  if (a6)
  {

    if (a3 == a6 || sub_1ADE97EF4(a3, a6))
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v21 = sub_1AE23CCBC();
      v22 = *(v13 + 8);
      v22(v16, v12);
      v22(v19, v12);

      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return a6 & 1;
}

uint64_t sub_1ADEA6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  if (!a2)
  {
    v23 = v9;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  if (a2 != a4 && !sub_1ADE97EF4(a2, a4))
  {

    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v16 = sub_1AE23CCBC();
  v23 = v9;
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v15, v8);

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1ADE4E764(a1, a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v19 = sub_1AE23CCBC();
  v20 = *(v23 + 8);
  v20(v12, v8);
  v20(v15, v8);
  return v19 & 1;
}

uint64_t sub_1ADEA6F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (a1 == a2 || (, , v14 = a3(a1, a2), , , (v14 & 1) != 0))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v15 = sub_1AE23CCBC();
    v16 = *(v7 + 8);
    v16(v10, v6);
    v16(v13, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1ADEA712C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 48);
  if (v16 <= 3)
  {
    if (*(a1 + 48) > 1u)
    {
      if (v16 != 2)
      {
        if (*(a2 + 48) != 3)
        {
          goto LABEL_38;
        }

        sub_1ADE4D4A4(v12, *a2);
        if ((v32 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (*(a2 + 48) != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          goto LABEL_38;
        }

        v20 = *a2;
        if (*a2 == v12)
        {
          goto LABEL_34;
        }

        v21 = *a1;
        sub_1ADEA842C(a1, &v39);
        sub_1ADEA842C(a2, &v39);
        v19 = sub_1ADE9A71C(v21, v20);
        goto LABEL_13;
      }

      if (*(a2 + 48) != 1)
      {
        goto LABEL_38;
      }
    }

    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    v30 = *a2;
    v31 = *(a2 + 8);

    return sub_1ADEA74BC(v12, v13, v14, v15, v30, v31, v28, v29);
  }

  else
  {
    if (*(a1 + 48) <= 5u)
    {
      if (v16 == 4)
      {
        v39 = *a1;
        v40 = v13;
        v41 = v14;
        v42 = v15;
        v43 = *(a1 + 32);
        if (*(a2 + 48) != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v39 = *a1;
        v40 = v13;
        v41 = v14;
        v42 = v15;
        v43 = *(a1 + 32);
        if (*(a2 + 48) != 5)
        {
          goto LABEL_38;
        }
      }

      v37 = *(a2 + 16);
      v44[0] = *a2;
      v44[1] = v37;
      v44[2] = *(a2 + 32);
      v36 = sub_1ADEA5E98(&v39, v44);
      return v36 & 1;
    }

    if (v16 != 6)
    {
      if (v16 != 7)
      {
        if (*(a2 + 48) != 8)
        {
          goto LABEL_38;
        }

        sub_1ADE4A5B0(v12, *a2);
        if ((v33 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (*(a2 + 48) != 7)
      {
        goto LABEL_38;
      }

      v17 = *a2;
      if (*a2 == v12)
      {
LABEL_34:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
        v34 = sub_1AE23CCBC();
        v35 = *(v5 + 8);
        v35(v8, v4);
        v35(v11, v4);
        if (v34)
        {
          v36 = 1;
          return v36 & 1;
        }

LABEL_38:
        v36 = 0;
        return v36 & 1;
      }

      v18 = *a1;
      sub_1ADEA842C(a1, &v39);
      sub_1ADEA842C(a2, &v39);
      v19 = sub_1ADE9F7A8(v18, v17, sub_1ADE97EF4);
LABEL_13:
      v22 = v19;
      sub_1ADEA8464(a1);
      sub_1ADEA8464(a2);
      if (!v22)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (*(a2 + 48) != 6)
    {
      goto LABEL_38;
    }

    v23 = *(a2 + 16);
    v24 = *(a2 + 24);
    v25 = *a2;
    v26 = *(a2 + 8);

    return sub_1ADEA66EC(v12, v13, v14, v15, v25, v26, v23, v24);
  }
}

uint64_t sub_1ADEA74BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v15 = sub_1AE23C32C();
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  if ((sub_1ADDD6F8C(a1, a2, a5, a6) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!a4)
  {
    if (!a8)
    {
      goto LABEL_8;
    }

LABEL_11:
    v26 = 0;
    return v26 & 1;
  }

  if (!a8)
  {
    goto LABEL_11;
  }

  sub_1ADE4E9A0(v22, a8);
  if ((v23 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v24 = sub_1AE23CCBC();

  v25 = *(v30 + 8);
  v25(v18, v15);
  v25(v21, v15);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((sub_1ADE4ED9C(a3, v29) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v26 = sub_1AE23CCBC();
  v27 = *(v30 + 8);
  v27(v18, v15);
  v27(v21, v15);
  return v26 & 1;
}

uint64_t sub_1ADEA7754(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v88 = a2;
  v2 = sub_1AE23C32C();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v79 - v6;
  v7 = sub_1AE23C2FC();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v79 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v79 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v79 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v79 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v79 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v79 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA868, &qword_1AE244FF0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v79 - v36;
  v39 = (&v79 + *(v38 + 56) - v36);
  sub_1ADEA8554(v87, &v79 - v36);
  sub_1ADEA8554(v88, v39);
  v88 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v41 = v88;
      if (EnumCaseMultiPayload)
      {
        sub_1ADEA8554(v88, v30);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = *v30 == *v39;
LABEL_24:
          v47 = v42;
          goto LABEL_34;
        }
      }

      else
      {
        sub_1ADEA8554(v88, v33);
        if (!swift_getEnumCaseMultiPayload())
        {
          v42 = *v33 == *v39;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    v41 = v88;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1ADEA8554(v88, v24);
      v64 = *v24;
      v65 = v24[1];
      v66 = swift_getEnumCaseMultiPayload();
      if (v66 == 3)
      {
        v67 = *v39;
        v68 = v39[1];
        v47 = sub_1ADDD6F8C(v64, v65, *v39, v68);
        sub_1ADDCC35C(*&v67, v68);
        sub_1ADDCC35C(v64, v65);
        goto LABEL_34;
      }

      sub_1ADDCC35C(v64, v65);
LABEL_46:
      sub_1ADDCEDE0(v41, &qword_1EB5BA868, &qword_1AE244FF0);
LABEL_47:
      v47 = 0;
      return v47 & 1;
    }

    sub_1ADEA8554(v88, v27);
    v50 = *v27;
    v49 = v27[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_46;
    }

    if (v50 == *v39 && v49 == v39[1])
    {
      v78 = v39[1];
    }

    else
    {
      v52 = v39[1];
      v53 = sub_1AE23E00C();

      if ((v53 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    v63 = v41;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v41 = v88;
      sub_1ADEA8554(v88, v16);
      v54 = *v16;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v47 = sub_1ADEA621C(v54, *v39);

        goto LABEL_34;
      }
    }

    else
    {
      v41 = v88;
      sub_1ADEA8554(v88, v13);
      v69 = *v13;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v70 = *v39;
        if (v69 != *v39)
        {

          v71 = sub_1ADE9F7A8(v69, v70, sub_1ADE9604C);

          if (!v71)
          {

LABEL_55:
            sub_1ADEA8494(v41);
            goto LABEL_47;
          }
        }

        v72 = v81;
        sub_1AE23C31C();
        v73 = v80;
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
        v74 = v83;
        v75 = sub_1AE23CCBC();
        v76 = *(v82 + 8);
        v76(v73, v74);
        v76(v72, v74);

        if ((v75 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_1ADEA8554(v88, v19);
    v55 = *v19;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v41 = v88;
      goto LABEL_46;
    }

    v56 = *v39;
    if (v55 == *v39 || (, , v57 = sub_1ADE9DC04(v55, v56), , , v57))
    {
      v58 = v81;
      sub_1AE23C31C();
      v59 = v80;
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v60 = v83;
      v61 = sub_1AE23CCBC();
      v62 = *(v82 + 8);
      v62(v59, v60);
      v62(v58, v60);

      v63 = v88;
      if (v61)
      {
LABEL_51:
        sub_1ADEA8494(v63);
        v47 = 1;
        return v47 & 1;
      }
    }

    else
    {

      v63 = v88;
    }

    sub_1ADEA8494(v63);
    goto LABEL_47;
  }

  v41 = v88;
  v43 = v84;
  sub_1ADEA8554(v88, v84);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v85 + 8))(v43, v86);
    goto LABEL_46;
  }

  v45 = v85;
  v44 = v86;
  v46 = v79;
  (*(v85 + 32))(v79, v39, v86);
  v47 = sub_1AE23C29C();
  v48 = *(v45 + 8);
  v48(v46, v44);
  v48(v43, v44);
LABEL_34:
  sub_1ADEA8494(v41);
  return v47 & 1;
}

uint64_t sub_1ADEA7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31[-v18];
  if (a1)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    if (a1 != a4 && !sub_1ADE9604C(a1, a4))
    {
      goto LABEL_23;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v32 = sub_1AE23CCBC();
    v33 = a2;
    v34 = a3;
    v20 = a6;
    v21 = *(v13 + 8);
    v21(v16, v12);
    v21(v19, v12);
    a6 = v20;
    a2 = v33;
    a3 = v34;

    if ((v32 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (a4)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    if (!a5)
    {
      goto LABEL_24;
    }

    if (a2 == a5 || sub_1ADE97EF4(a2, a5))
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      LODWORD(v34) = sub_1AE23CCBC();
      v22 = v13;
      v23 = *(v13 + 8);
      v23(v16, v12);
      v23(v19, v12);
      v13 = v22;

      if ((v34 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (a5)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (!a3)
  {
    if (!a6)
    {
LABEL_22:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      LOBYTE(a6) = sub_1AE23CCBC();
      v29 = *(v13 + 8);
      v29(v16, v12);
      v29(v19, v12);
      return a6 & 1;
    }

LABEL_24:
    LOBYTE(a6) = 0;
    return a6 & 1;
  }

  if (a6)
  {

    sub_1ADE4E9A0(v24, a6);
    if (v25)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
      v26 = sub_1AE23CCBC();

      v27 = v13;
      v28 = *(v13 + 8);
      v28(v16, v12);
      v28(v19, v12);
      v13 = v27;
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

  return a6 & 1;
}

uint64_t sub_1ADEA8494(uint64_t a1)
{
  v2 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADEA84F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADEA8554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADEA85B8()
{
  result = qword_1EB5BA870;
  if (!qword_1EB5BA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA870);
  }

  return result;
}

uint64_t sub_1ADEA860C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADEA8654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADEA86C4()
{
  result = qword_1EB5BA880;
  if (!qword_1EB5BA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA880);
  }

  return result;
}

uint64_t sub_1ADEA8718(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

uint64_t sub_1ADEA8764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ADEA87D4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

unint64_t sub_1ADEA8824()
{
  result = qword_1EB5BA888;
  if (!qword_1EB5BA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA888);
  }

  return result;
}

unint64_t sub_1ADEA8878()
{
  result = qword_1EB5BA890;
  if (!qword_1EB5BA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA890);
  }

  return result;
}

unint64_t sub_1ADEA88CC()
{
  result = qword_1EB5BA898;
  if (!qword_1EB5BA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA898);
  }

  return result;
}

unint64_t sub_1ADEA8920()
{
  result = qword_1EB5BA8A0;
  if (!qword_1EB5BA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8A0);
  }

  return result;
}

unint64_t sub_1ADEA8974()
{
  result = qword_1EB5BA8A8;
  if (!qword_1EB5BA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8A8);
  }

  return result;
}

unint64_t sub_1ADEA89C8()
{
  result = qword_1EB5BA8B0;
  if (!qword_1EB5BA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8B0);
  }

  return result;
}

unint64_t sub_1ADEA8A1C()
{
  result = qword_1EB5BA8B8;
  if (!qword_1EB5BA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8B8);
  }

  return result;
}

unint64_t sub_1ADEA8A70()
{
  result = qword_1EB5BA8C0;
  if (!qword_1EB5BA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8C0);
  }

  return result;
}

unint64_t sub_1ADEA8AC4()
{
  result = qword_1EB5BA8C8;
  if (!qword_1EB5BA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8C8);
  }

  return result;
}

unint64_t sub_1ADEA8B18()
{
  result = qword_1EB5BA8D0;
  if (!qword_1EB5BA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8D0);
  }

  return result;
}

unint64_t sub_1ADEA8B6C()
{
  result = qword_1EB5BA8D8;
  if (!qword_1EB5BA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8D8);
  }

  return result;
}

uint64_t sub_1ADEA8BC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (result)
  {
    a5();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1ADEA8C44()
{
  result = qword_1EB5BA8E0;
  if (!qword_1EB5BA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8E0);
  }

  return result;
}

unint64_t sub_1ADEA8C98()
{
  result = qword_1EB5BA8E8;
  if (!qword_1EB5BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8E8);
  }

  return result;
}

unint64_t sub_1ADEA8CEC()
{
  result = qword_1EB5BA8F0;
  if (!qword_1EB5BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8F0);
  }

  return result;
}

unint64_t sub_1ADEA8D40()
{
  result = qword_1EB5BA8F8;
  if (!qword_1EB5BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8F8);
  }

  return result;
}

unint64_t sub_1ADEA8D94()
{
  result = qword_1EB5BA900;
  if (!qword_1EB5BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA900);
  }

  return result;
}

unint64_t sub_1ADEA8DE8()
{
  result = qword_1EB5BA908;
  if (!qword_1EB5BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA908);
  }

  return result;
}

unint64_t sub_1ADEA8E3C()
{
  result = qword_1EB5BA910;
  if (!qword_1EB5BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA910);
  }

  return result;
}

uint64_t sub_1ADEA8E90(uint64_t result)
{
  if (result)
  {
    sub_1ADEA468C();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1ADEA8F08()
{
  result = qword_1EB5BA918;
  if (!qword_1EB5BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA918);
  }

  return result;
}

unint64_t sub_1ADEA8F5C()
{
  result = qword_1EB5BA920;
  if (!qword_1EB5BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA920);
  }

  return result;
}

unint64_t sub_1ADEA8FB0()
{
  result = qword_1EB5BA928;
  if (!qword_1EB5BA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA928);
  }

  return result;
}

unint64_t sub_1ADEA9004()
{
  result = qword_1EB5BA930;
  if (!qword_1EB5BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA930);
  }

  return result;
}

uint64_t sub_1ADEA9058(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1ADEA47EC();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADEA90D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1ADEA911C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1ADEA9158(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ADEA91B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ADEA9208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1ADEA9250(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1ADEA9290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1ADEA92EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ADEA9354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1ADEA939C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1ADEA93FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1ADEA9444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1ADEA94BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADEA94DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1ADEA9524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1ADEA9580(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
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

uint64_t sub_1ADEA95E8(uint64_t a1, int a2)
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

uint64_t sub_1ADEA9630(uint64_t result, int a2, int a3)
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

unint64_t sub_1ADEA9680()
{
  result = qword_1EB5BA938;
  if (!qword_1EB5BA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA938);
  }

  return result;
}

unint64_t sub_1ADEA96D8()
{
  result = qword_1EB5BA940;
  if (!qword_1EB5BA940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA948, qword_1AE245518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA940);
  }

  return result;
}

unint64_t sub_1ADEA9740()
{
  result = qword_1EB5BA950;
  if (!qword_1EB5BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA950);
  }

  return result;
}

unint64_t sub_1ADEA9798()
{
  result = qword_1EB5BA958;
  if (!qword_1EB5BA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA958);
  }

  return result;
}

void sub_1ADEA980C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return;
  }

  v6 = v4;
  v7 = *a2;
  v8 = a2[1];
  swift_beginAccess();
  v9 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 48);
  v23 = v11;
  *(v6 + 48) = 0x8000000000000000;
  v12 = sub_1ADDDE7CC(v7, v8);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v13;
  if (v11[3] >= v17)
  {
    goto LABEL_6;
  }

  sub_1ADE1D52C(v17, isUniquelyReferenced_nonNull_native);
  v12 = sub_1ADDDE7CC(v7, v8);
  if ((v5 & 1) != (v18 & 1))
  {
    v12 = sub_1AE23E27C();
    __break(1u);
LABEL_6:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  *(v6 + 48) = v11;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_8:
  v6 = v12;
  sub_1ADDE8C98(v12, v7, v8, 0, v11);
  sub_1ADDD86D8(v7, v8);
  v12 = v6;
LABEL_9:
  while (1)
  {
    v19 = v11[7];
    v20 = *(v19 + 8 * v12);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v22 = v12;
    sub_1ADF6F1AC();
    v12 = v22;
    v11 = v23;
    *(v6 + 48) = v23;
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(v19 + 8 * v12) = v21;
  swift_endAccess();
}

uint64_t sub_1ADEA9974@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = v3;
  swift_beginAccess();
  v9 = *(v3 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 40);
  v25 = v11;
  *(v5 + 40) = 0x8000000000000000;
  v12 = sub_1ADDDE7CC(a1, a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v4) = v13;
  if (v11[3] < v17)
  {
    sub_1ADF69618(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1ADDDE7CC(a1, a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v5 + 40) = v11;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v12;
  sub_1ADDE8C98(v12, a1, a2, 0, v11);
  sub_1ADDD86D8(a1, a2);
  v12 = v4;
LABEL_8:
  while (1)
  {
    v19 = v11[7];
    v20 = *(v19 + 8 * v12);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v24 = v12;
    sub_1ADF6F314();
    v12 = v24;
    v11 = v25;
    *(v5 + 40) = v25;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v19 + 8 * v12) = v21;
  swift_endAccess();
  v22 = *(v5 + 32);
  return sub_1AE1A3880(a1, a2, a3);
}

uint64_t sub_1ADEA9AF4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
}

uint64_t sub_1ADEA9B24()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADEA9BC0(int a1, int a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v77 = a2;
  v78 = a1;
  v85 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v74 - v10;
  v11 = a4[1];
  v75 = *a4;
  v74 = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v14 = sub_1ADDD9ECC(v12);
  v98 = v13;
  v99 = v14;
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  swift_beginAccess();
  v16 = *(v5 + v15);

  sub_1ADDDBFE0(v17);

  v76 = v15;
  v18 = *(v5 + v15);
  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  v23 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v83 = v18;

  v89 = v23;
  result = swift_beginAccess();
  v25 = 0;
  v26 = (v20 + 63) >> 6;
  v80 = v19;
  v79 = v26;
  v84 = v5;
  while (v22)
  {
    v27 = v5;
    v28 = v25;
LABEL_12:
    v29 = (*(v83 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v22)))));
    v31 = *v29;
    v30 = v29[1];
    v32 = type metadata accessor for RetainVisitor();
    v33 = swift_allocObject();
    sub_1ADDD86D8(v31, v30);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ADDD9ECC(v34);
    *(v33 + 16) = v35;
    v88 = v33;
    *(v33 + 24) = v36;
    v37 = v82;
    sub_1ADECD9E8(v27 + v89, v82, type metadata accessor for PartiallyOrderedReferenceMap);
    v38 = v37 + *(v85 + 20);
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(v38 + 16);
    sub_1ADDD86D8(v31, v30);
    sub_1ADDDF7A8(v31, v30, v39, &v93);
    v86 = v31;
    v87 = v30;
    sub_1ADDCC35C(v31, v30);
    result = sub_1ADDD872C(v37, type metadata accessor for PartiallyOrderedReferenceMap);
    v42 = v95;
    if (!v95)
    {
      goto LABEL_23;
    }

    v43 = v93;
    v44 = v94;

    result = sub_1ADDDC21C(v45, v44, v42);
    if (!v43)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v92[3] = v32;
    v92[4] = &off_1F23C4550;
    v46 = v88;
    v92[0] = v88;
    v47 = *(*v43 + 128);

    v47(v92);

    __swift_destroy_boxed_opaque_existential_1(v92);
    swift_beginAccess();
    v48 = *(v46 + 16);
    v49 = *(v46 + 24);

    sub_1ADDDC8DC(v48, v49);

    v5 = v84;
    v50 = v81;
    sub_1ADECD9E8(v84 + v89, v81, type metadata accessor for PartiallyOrderedReferenceMap);
    v51 = v50 + *(v85 + 20);
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = v86;
    v56 = v87;
    sub_1ADDD86D8(v86, v87);
    sub_1ADDDF7A8(v55, v56, v52, &v93);
    sub_1ADDCC35C(v55, v56);
    sub_1ADDD872C(v50, type metadata accessor for PartiallyOrderedReferenceMap);
    v57 = v95;
    if (v95)
    {
      v59 = v96;
      v58 = v97;
      v61 = v93;
      v60 = v94;

      v62 = v61;
      v56 = v87;
      v63 = v60;
      v55 = v86;
      sub_1ADDDC21C(v62, v63, v57);
      sub_1ADDDCE90(v59, v58);
    }

    v22 &= v22 - 1;
    swift_beginAccess();
    v90 = v55;
    v91 = v56;
    sub_1ADDD86D8(v55, v56);
    v65 = sub_1ADDDD4A0(&v93, &v90);
    if (*(v64 + 16))
    {
      v66 = v64;
      swift_beginAccess();
      v67 = *(v88 + 24);
      v68 = *(v66 + 32);
      v69 = *(v66 + 40);
      *(v66 + 32) = *(v88 + 16);
      *(v66 + 40) = v67;

      (v65)(&v93, 0);
      swift_endAccess();

      sub_1ADDCC35C(v55, v56);
      v5 = v84;

      result = sub_1ADDCC35C(v90, v91);
    }

    else
    {
      (v65)(&v93, 0);
      sub_1ADDCC35C(v90, v91);
      swift_endAccess();
      sub_1ADDCC35C(v55, v56);
    }

    v25 = v28;
    v19 = v80;
    v26 = v79;
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v28 >= v26)
    {
      break;
    }

    v22 = *(v19 + 8 * v28);
    ++v25;
    if (v22)
    {
      v27 = v5;
      goto LABEL_12;
    }
  }

  sub_1ADEB3780(v98, v99, v77 & 1, v75, v74);

  v70 = v76;
  if (v78)
  {
    v71 = *(v5 + v76);

    sub_1ADEB41A8(v72, 0);
  }

  v73 = *(v5 + v70);
  *(v5 + v70) = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1ADEAA2FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a3;
  v106 = a4;
  v104 = a5;
  v138 = *MEMORY[0x1E69E9840];
  v113 = sub_1AE23BFEC();
  v8 = *(v113 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v113);
  *&v118 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PartiallyOrderedReferenceMap();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v109 = a1[1];
  v110 = v16;
  v17 = *a2;
  v107 = a2[1];
  v108 = v17;
  v18 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  v127 = v18;
  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v103 = v5;
  sub_1ADECD9E8(v5 + v19, v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v20 = &v15[*(v12 + 28)];
  v21 = *v20;
  v22 = *(v20 + 1);
  sub_1AE23C1FC();
  sub_1ADDD872C(v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v112 = (v8 + 8);
  while (1)
  {
    v26 = v120;
    if (v120 < DWORD1(v120))
    {
      v27 = *(&v119 + 1);
      LODWORD(v120) = v120 + 1;
      goto LABEL_7;
    }

    v27 = sub_1AE23C20C();
    if (!v27)
    {
      v136 = v125;
      v137[0] = v126[0];
      *(v137 + 11) = *(v126 + 11);
      v132 = v121;
      v133 = v122;
      v134 = v123;
      v135 = v124;
      v130 = v119;
      v131 = v120;
      sub_1ADDFD834(&v130);
      if (!v18[2])
      {
        goto LABEL_58;
      }

      v90 = sub_1ADDDE7CC(v110, v109);
      if (v91)
      {
        if (v18[2])
        {
          v92 = (v18[7] + 16 * v90);
          v93 = *v92;
          v94 = v92[1];
          sub_1ADDD86D8(*v92, v94);
          v95 = sub_1ADDDE7CC(v108, v107);
          if (v96)
          {
            v118 = *(v18[7] + 16 * v95);
            v129 = v118;
            v97 = v118;
            sub_1ADDD86D8(v118, *(&v118 + 1));
            sub_1ADDD86D8(v97, *(&v97 + 1));
            v98 = v103;

            v99 = sub_1ADECC43C(&v129, &v127, v98);

            *&v129 = v93;
            *(&v129 + 1) = v94;
            v128 = v118;
            sub_1AE1EB038(&v129, &v128, v99, v104);

            v101 = *MEMORY[0x1E69E9840];
            return result;
          }

LABEL_61:
          __break(1u);
        }
      }

      else
      {
LABEL_59:
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_7:
    v28 = (v27 + *(v27 + 24) + (~v26 << 6));
    v30 = v28[4];
    v29 = v28[5];
    v31 = v28[6];
    v33 = v28[8];
    v32 = v28[9];
    v34 = v28[10];
    v35 = v28[11];
    sub_1ADDD86D8(v30, v29);

    v117 = v32;

    v116 = v34;

    v115 = v35;

    sub_1ADDD86D8(v30, v29);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v36 = qword_1ED96F298;
    v37 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v38 = ((v37 / 0xF4240) << 12) | (4095 * (v37 % 0xF4240) / 0xF4240);
    v39 = *(v36 + 24);
    os_unfair_lock_lock((v39 + 32));
    v40 = *(v39 + 16);
    if (v40 <= v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = *(v39 + 16);
    }

    if (v40 < v38)
    {
      *&v130 = 0;
      MEMORY[0x1B26FDA70](&v130, 8);
      v42 = v130 >> 3;
LABEL_24:
      *(v39 + 16) = v41;
      *(v39 + 24) = v42;
      goto LABEL_28;
    }

    v43 = *(v36 + 16);
    if (v43 > 0x4000000000000000)
    {
      goto LABEL_53;
    }

    v44 = *(v39 + 24);
    if (v43)
    {
      *&v130 = 0;
      MEMORY[0x1B26FDA70](&v130, 8);
      v45 = (v130 * v43) >> 64;
      if (v43 > v130 * v43)
      {
        v46 = -v43 % v43;
        if (v46 > v130 * v43)
        {
          do
          {
            *&v130 = 0;
            MEMORY[0x1B26FDA70](&v130, 8);
          }

          while (v46 > v130 * v43);
          v45 = (v130 * v43) >> 64;
        }
      }
    }

    else
    {
      v45 = 0;
    }

    v47 = v44 + 1;
    if (v44 == -1)
    {
      goto LABEL_54;
    }

    v42 = v47 + v45;
    if (__CFADD__(v47, v45))
    {
      goto LABEL_55;
    }

    if (!(v42 >> 62))
    {
      goto LABEL_24;
    }

    if (__CFADD__(v41++, 1))
    {
      goto LABEL_57;
    }

    v49 = sub_1ADDCC2D0(0x2000000000000000uLL);
    *(v39 + 16) = v41;
    *(v39 + 24) = v49;
    if (v49 >> 62)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v42 = v49;
LABEL_28:
    os_unfair_lock_unlock((v39 + 32));
    sub_1AE001F28(v41 >> 12, v41 & 0xFFF, v42);
    sub_1AE23BFBC();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
    *(&v131 + 1) = v50;
    *&v132 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928);
    *&v130 = &unk_1F23BBEC8;
    v51 = __swift_project_boxed_opaque_existential_1(&v130, v50);
    v52 = *v51;
    v53 = *(*v51 + 16);
    v114 = v33;
    if (v53)
    {
      if (v53 <= 0xE)
      {
        *&v129 = sub_1AE1A3858(v53);
        DWORD2(v129) = v61;
        BYTE14(v129) = v62;
        WORD6(v129) = v63;
        memcpy(&v129, (v52 + 32), v53);
        v59 = v129;
        v60 = v111 & 0xF00000000000000 | DWORD2(v129) | ((WORD6(v129) | (BYTE14(v129) << 16)) << 32);
        v111 = v60;
      }

      else
      {
        v54 = sub_1AE23BBCC();
        v55 = *(v54 + 48);
        v56 = *(v54 + 52);
        swift_allocObject();
        v57 = sub_1AE23BB6C();
        v58 = v57;
        if (v53 >= 0x7FFFFFFF)
        {
          sub_1AE23BE2C();
          v59 = swift_allocObject();
          *(v59 + 16) = 0;
          *(v59 + 24) = v53;
          v60 = v58 | 0x8000000000000000;
        }

        else
        {
          v59 = v53 << 32;
          v60 = v57 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v59 = 0;
      v60 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v130);
    *&v129 = v59;
    *(&v129 + 1) = v60;
    v64 = v118;
    *&v128 = sub_1AE23BFCC();
    WORD4(v128) = v65;
    BYTE10(v128) = v66;
    BYTE11(v128) = v67;
    BYTE12(v128) = v68;
    BYTE13(v128) = v69;
    BYTE14(v128) = v70;
    HIBYTE(v128) = v71;
    sub_1AE23BFCC();
    v72 = sub_1ADDD8EE0(&v128, 16);
    v74 = v73;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v72, v74);
    (*v112)(v64, v113);
    v75 = v129;
    v76 = v127;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v76;
    v79 = sub_1ADDDE7CC(v30, v29);
    v80 = *(v76 + 16);
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_52;
    }

    v83 = v78;
    if (*(v76 + 24) < v82)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v128;
      if (v78)
      {
        goto LABEL_2;
      }
    }

    else
    {
      sub_1ADF70D5C();
      v18 = v128;
      if (v83)
      {
LABEL_2:
        v23 = (v18[7] + 16 * v79);
        v24 = *v23;
        v25 = v23[1];
        *v23 = v75;
        sub_1ADDCC35C(v24, v25);
        sub_1ADDCC35C(v30, v29);
        goto LABEL_3;
      }
    }

LABEL_42:
    v18[(v79 >> 6) + 8] |= 1 << v79;
    v86 = (v18[6] + 16 * v79);
    *v86 = v30;
    v86[1] = v29;
    *(v18[7] + 16 * v79) = v75;
    v87 = v18[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      goto LABEL_56;
    }

    v18[2] = v89;
LABEL_3:
    sub_1ADDCC35C(v30, v29);

    v127 = v18;
  }

  sub_1ADF6BDB0(v82, isUniquelyReferenced_nonNull_native);
  v84 = sub_1ADDDE7CC(v30, v29);
  if ((v83 & 1) == (v85 & 1))
  {
    v79 = v84;
    v18 = v128;
    if (v83)
    {
      goto LABEL_2;
    }

    goto LABEL_42;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEAAC3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v36 = a1;
  v40 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v7 = *a2;
  v8 = (*a2 + 64);
  v9 = 1 << *(*a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *v8;
  v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v42 = v7;

  v41 = a3;
  v38 = v12;
  result = swift_beginAccess();
  v14 = 0;
  v15 = (v9 + 63) >> 6;
  v35 = v8;
  v34 = v15;
  if (v11)
  {
    while (1)
    {
      v16 = v14;
LABEL_8:
      v17 = (v16 << 10) | (16 * __clz(__rbit64(v11)));
      v18 = (*(v42 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v42 + 56) + v17);
      v22 = *v21;
      v23 = v21[1];
      v24 = v39;
      sub_1ADECD9E8(v41 + v38, v39, type metadata accessor for PartiallyOrderedReferenceMap);
      v25 = v24 + *(v40 + 20);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      sub_1ADDD86D8(v20, v19);
      sub_1ADDD86D8(v22, v23);
      sub_1ADDD86D8(v20, v19);
      sub_1ADDD86D8(v22, v23);
      sub_1ADDDF7A8(v20, v19, v26, &v47);
      sub_1ADDCC35C(v20, v19);
      result = sub_1ADDD872C(v24, type metadata accessor for PartiallyOrderedReferenceMap);
      v29 = v49;
      if (!v49)
      {
        break;
      }

      v43 = v50;
      v44 = v51;
      v30 = v47;
      v31 = v48;

      result = sub_1ADDDC21C(v32, v31, v29);
      if (!v30)
      {
        goto LABEL_14;
      }

      v11 &= v11 - 1;
      sub_1ADDCC35C(v22, v23);
      v33 = (*(*v30 + 80))(v37);

      v46 = v33;
      sub_1ADDD86D8(v20, v19);
      sub_1ADDD86D8(v22, v23);
      sub_1ADDCC35C(v20, v19);
      v45[0] = v22;
      v45[1] = v23;
      sub_1ADEAAF7C(&v46, v45, &v47);
      sub_1ADDCC35C(v20, v19);
      sub_1ADDCC35C(v22, v23);
      sub_1ADDE158C(v22, v23);

      result = sub_1ADDCC35C(v47, v48);
      v14 = v16;
      v8 = v35;
      v15 = v34;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v15)
      {
      }

      v11 = v8[v16];
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADEAAF7C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v40 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v15 = *a2;
  v16 = a2[1];
  v17 = *a2;
  v18 = v16;
  if (v16 >> 60 == 15)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v45 = sub_1ADDCC6B4(&unk_1F23BBEA0);
    *(&v45 + 1) = v19;
    v20 = sub_1ADDD8E0C();
    v22 = v21;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v20, v22);
    (*(v11 + 8))(v14, v10);
    v18 = *(&v45 + 1);
    v17 = v45;
  }

  v23 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v23, v9, type metadata accessor for PartiallyOrderedReferenceMap);
  v24 = &v9[*(v40 + 20)];
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = *(v24 + 2);
  sub_1ADDD86D8(v17, v18);
  sub_1ADDE0F78(v15, v16);
  sub_1ADDDF7A8(v17, v18, v25, &v45);
  sub_1ADDCC35C(v17, v18);
  sub_1ADDD872C(v9, type metadata accessor for PartiallyOrderedReferenceMap);
  if (v46)
  {
    sub_1ADDDC21C(v45, *(&v45 + 1), v46);
    swift_beginAccess();
    v43 = v17;
    v44 = v18;
    sub_1ADDD86D8(v17, v18);
    v29 = sub_1ADDDD4A0(&v45, &v43);
    if (v28[2])
    {
      v30 = *v28;
      *v28 = v39;

      (v29)(&v45, 0);
      swift_endAccess();

      sub_1ADDCC35C(v43, v44);
    }

    else
    {
      (v29)(&v45, 0);
      sub_1ADDCC35C(v43, v44);
      swift_endAccess();
    }
  }

  else
  {
    v31 = v39;

    v32 = MEMORY[0x1E69E7CC0];
    v33 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1ADDD9ECC(v32);
    sub_1ADDDA5BC(v32);
    sub_1ADDD9ECC(v32);

    v35 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v45 = v31;
    v46 = v35;
    v47 = v35;
    v48 = v33;
    v49 = v34;
    v43 = v17;
    v44 = v18;
    swift_beginAccess();
    sub_1ADDD82B0(&v45, &v43);
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1ADDD86D8(v17, v18);
  sub_1ADDE0110(v42, v17, v18);
  swift_endAccess();
  result = sub_1ADDCC35C(v42[0], v42[1]);
  v37 = v41;
  *v41 = v17;
  v37[1] = v18;
  return result;
}

void (*sub_1ADEAB444@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>))(__n128 *, void)
{
  v113 = a3;
  v114 = a4;
  v131 = a1;
  v108 = a5;
  v130 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v128 = &v107 - v13;
  v14 = sub_1AE23BFEC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v111 = a2[1];
  v112 = v19;
  if (qword_1ED969288 != -1)
  {
LABEL_39:
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_1ED96F228);
  (*(v15 + 16))(v18, v20, v14);
  v21 = type metadata accessor for ReplicaState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v26 = type metadata accessor for Replica();
  v27 = *(*(v26 - 8) + 56);
  v27(v24 + v25, 1, 1, v26);
  (*(v15 + 32))(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v18, v14);
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v28 = v128;
  v27(v128, 1, 1, v26);
  swift_beginAccess();
  sub_1ADDD85E4(v28, v24 + v25);
  swift_endAccess();
  v109 = sub_1ADDD94CC(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  v31 = v111;
  v30 = v112;
  *(inited + 32) = v112;
  *(inited + 40) = v31;
  sub_1ADDD86D8(v30, v31);
  v32 = sub_1ADF7E6A4(inited);
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  v142 = v32;
  v33 = MEMORY[0x1E69E7CC0];
  v141 = MEMORY[0x1E69E7CC0];
  v34 = type metadata accessor for RetainVisitor();
  v35 = swift_allocObject();
  v36 = sub_1ADDDA5BC(v33);
  v37 = sub_1ADDD9ECC(v33);
  *(v35 + 16) = v36;
  *(v35 + 24) = v37;
  v145 = v34;
  v146 = &off_1F23C4550;
  *&v143 = v35;
  v38 = *(v114 + 16);
  v39 = *(v38 + 48);
  v14 = v38 + 48;
  v110 = v35;

  v39(&v143, v113, v38);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  swift_beginAccess();
  v128 = (v35 + 16);
  v40 = *(v35 + 16);

  sub_1ADFB6A38(v41);
  v131 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v42 = v129;
  swift_beginAccess();
  v18 = v141;
  if (!*(v141 + 2))
  {
    goto LABEL_14;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v43 = *(v18 + 2);
    if (!v43)
    {
      goto LABEL_12;
    }

LABEL_7:
    v44 = v43 - 1;
    v45 = &v18[16 * v44];
    v47 = *(v45 + 4);
    v46 = *(v45 + 5);
    *(v18 + 2) = v44;
    v141 = v18;
    sub_1ADDD86D8(v47, v46);
    v48 = sub_1ADDE0110(&v143, v47, v46);
    sub_1ADDCC35C(v143, *(&v143 + 1));
    if ((v48 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_1ADECD9E8(v42 + v131, v10, type metadata accessor for PartiallyOrderedReferenceMap);
    v49 = &v10[*(v130 + 20)];
    v50 = *v49;
    v14 = *(v49 + 1);
    v51 = *(v49 + 2);
    sub_1ADDD86D8(v47, v46);
    sub_1ADDDF7A8(v47, v46, v50, &v143);
    sub_1ADDCC35C(v47, v46);
    sub_1ADDD872C(v10, type metadata accessor for PartiallyOrderedReferenceMap);
    v52 = v144;
    if (v144)
    {
      v53 = v146;
      v14 = v147;
      v54 = *(&v143 + 1);
      v55 = v143;

      v56 = v55;
      v42 = v129;
      sub_1ADDDC21C(v56, v54, v52);

      sub_1ADFB6A38(v57);
      swift_beginAccess();
      sub_1ADDDC8DC(v53, v14);
      swift_endAccess();

      sub_1ADDCC35C(v47, v46);
      v18 = v141;
      if (!*(v141 + 2))
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_4:
      sub_1ADDCC35C(v47, v46);
      if (!*(v18 + 2))
      {
        goto LABEL_13;
      }
    }
  }

  v18 = sub_1ADF79A04(v18);
  v43 = *(v18 + 2);
  if (v43)
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v32 = v142;
LABEL_14:
  v58 = v32 + 56;
  v59 = 1 << *(v32 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v15 = v60 & *(v32 + 56);

  swift_beginAccess();
  v61 = 0;
  v62 = (v59 + 63) >> 6;
  v63 = MEMORY[0x1E69E7CC8];
  v115 = v62;
  v116 = v32 + 56;
  v117 = v32;
  while (v15)
  {
    v126 = v63;
LABEL_25:
    v73 = (*(v32 + 48) + ((v61 << 10) | (16 * __clz(__rbit64(v15)))));
    v74 = *v73;
    v75 = v73[1];
    v76 = v118;
    sub_1ADECD9E8(v129 + v131, v118, type metadata accessor for PartiallyOrderedReferenceMap);
    v77 = v76 + *(v130 + 20);
    v78 = *v77;
    v79 = *(v77 + 8);
    v80 = *(v77 + 16);
    sub_1ADDD86D8(v74, v75);
    v127 = v75;
    sub_1ADDDF7A8(v74, v75, v78, &v136);
    result = sub_1ADDD872C(v76, type metadata accessor for PartiallyOrderedReferenceMap);
    if (!v137)
    {
      goto LABEL_41;
    }

    v82 = v137;
    v83 = v138;
    v122 = v139;
    v123 = v136;
    v124 = v140;
    v84 = *v128;
    v85 = *(*v128 + 16);

    v125 = v74;
    if (v85)
    {

      v86 = sub_1ADDDE7CC(v74, v127);
      if (v87)
      {
        v88 = *(*(v84 + 56) + 8 * v86);
      }

      else
      {
        v88 = 0;
      }

      v121 = v88;
    }

    else
    {
      v121 = 0;
    }

    v15 &= v15 - 1;
    v64 = v82;
    v119 = v82;

    v65 = v83;

    v10 = v122;

    v14 = v124;

    v120 = v65;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    sub_1ADDD9ECC(v66);

    swift_bridgeObjectRelease_n();
    v67 = v123.n128_u64[0];
    *&v143 = v123.n128_u64[0];
    *(&v143 + 1) = v121;
    v144 = v64;
    v145 = v65;
    v146 = v10;
    v147 = v14;
    v68 = v126;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136.n128_u64[0] = v68;
    v70 = v125;
    v71 = v127;
    sub_1ADEBF7C0(&v143, v125, v127, isUniquelyReferenced_nonNull_native);
    sub_1ADDDC21C(v67, v123.n128_i64[1], v119);
    sub_1ADDCC35C(v70, v71);
    v63 = v136.n128_u64[0];
    v58 = v116;
    v32 = v117;
    v62 = v115;
  }

  while (1)
  {
    v72 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v72 >= v62)
    {
      break;
    }

    v15 = *(v58 + 8 * v72);
    ++v61;
    if (v15)
    {
      v126 = v63;
      v61 = v72;
      goto LABEL_25;
    }
  }

  v89 = (v129 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v90 = v89[1];
  v135[0] = *v89;
  v135[1] = v90;
  v91 = v109;
  swift_beginAccess();

  sub_1ADE18DC0(v63, v135);
  swift_endAccess();

  v92 = *(v110 + 24);
  v93 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  v94 = *(v91 + v93);
  *(v91 + v93) = v92;

  v96 = *v89;
  v95 = v89[1];
  v97 = (v91 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  *v97 = v96;
  v97[1] = v95;

  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v100 = v97[1];
  v136.n128_u64[0] = MEMORY[0x1E69E7CC8];
  v136.n128_u64[1] = v100;

  sub_1ADDE1CB8(&v136);

  swift_beginAccess();
  v102 = v111;
  v101 = v112;
  v132 = v112;
  v133 = v111;
  sub_1ADDD86D8(v112, v111);
  result = sub_1ADDDD4A0(&v136, &v132);
  if (!*(v103 + 16))
  {
    result(&v136, 0);
    sub_1ADDCC35C(v132, v133);
    swift_endAccess();
    goto LABEL_37;
  }

  v104 = *(v103 + 8);
  v105 = __OFADD__(v104, 1);
  v106 = v104 + 1;
  if (!v105)
  {
    *(v103 + 8) = v106;
    result(&v136, 0);
    swift_endAccess();
    sub_1ADDCC35C(v132, v133);
LABEL_37:
    v136.n128_u64[0] = v101;
    v136.n128_u64[1] = v102;
    *&v134 = v101;
    *(&v134 + 1) = v102;
    sub_1AE1EB038(&v136, &v134, v91, v108);
    sub_1ADDD86D8(v101, v102);
    sub_1ADDD86D8(v101, v102);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1ADEABF90(uint64_t a1, uint64_t *a2, _UNKNOWN **a3, uint64_t a4)
{
  v5 = v4;
  v91 = a3;
  v90 = a1;
  v82 = sub_1AE23C96C();
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C9BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PartiallyOrderedReferenceMap();
  v14 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v92 = (v77 - v17);
  v19 = *a2;
  v18 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v19;
  *(inited + 40) = v18;
  sub_1ADDD86D8(v19, v18);
  v21 = sub_1ADF7E6A4(inited);
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  v100 = v21;
  v22 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
  v23 = type metadata accessor for RetainVisitor();
  v24 = swift_allocObject();
  v25 = sub_1ADDDA5BC(v22);
  v26 = sub_1ADDD9ECC(v22);
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  v96 = v23;
  v97 = &off_1F23C4550;
  v93 = v24;
  v27 = *(a4 + 16);
  v28 = *(v27 + 48);
  v79 = v24;

  v28(&v93, v91, v27);
  __swift_destroy_boxed_opaque_existential_1(&v93);
  swift_beginAccess();
  v91 = (v24 + 16);
  v29 = *(v24 + 16);

  sub_1ADFB6A38(v30);
  v90 = v5;
  v89 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v31 = v99;
  v32 = *(v99 + 2);
  v83 = v10;
  if (!v32)
  {
    v50 = v21;
    goto LABEL_14;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v33 = *(v31 + 2);
    if (!v33)
    {
      goto LABEL_11;
    }

LABEL_6:
    v34 = v33 - 1;
    v35 = &v31[16 * v34];
    v37 = *(v35 + 4);
    v36 = *(v35 + 5);
    *(v31 + 2) = v34;
    v99 = v31;
    sub_1ADDD86D8(v37, v36);
    v38 = sub_1ADDE0110(&v93, v37, v36);
    sub_1ADDCC35C(v93, v94);
    if ((v38 & 1) == 0)
    {
      goto LABEL_3;
    }

    v39 = v92;
    sub_1ADECD9E8(v90 + v89, v92, type metadata accessor for PartiallyOrderedReferenceMap);
    v40 = v39 + *(v88 + 20);
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = *(v40 + 2);
    sub_1ADDD86D8(v37, v36);
    sub_1ADDDF7A8(v37, v36, v41, &v93);
    sub_1ADDCC35C(v37, v36);
    sub_1ADDD872C(v39, type metadata accessor for PartiallyOrderedReferenceMap);
    v44 = v95;
    if (v95)
    {
      v46 = v97;
      v45 = v98;
      v47 = v93;
      v48 = v94;

      sub_1ADDDC21C(v47, v48, v44);

      sub_1ADFB6A38(v49);
      swift_beginAccess();
      sub_1ADDDC8DC(v46, v45);
      swift_endAccess();

      sub_1ADDCC35C(v37, v36);
      v31 = v99;
      if (!*(v99 + 2))
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_3:
      sub_1ADDCC35C(v37, v36);
      if (!*(v31 + 2))
      {
        goto LABEL_12;
      }
    }
  }

  v31 = sub_1ADF79A04(v31);
  v33 = *(v31 + 2);
  if (v33)
  {
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v50 = v100;
LABEL_14:
  sub_1AE23C9AC();
  v51 = *(v50 + 16);
  v78 = v11;
  v77[1] = v31;
  v77[0] = v50;
  if (v51)
  {
    v52 = sub_1AE1941D0(v51, 0);
    v92 = sub_1AE03A790(&v93, v52 + 2, v51, v50);

    sub_1ADDDCE74();
    if (v92 != v51)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
LABEL_17:
    v52 = MEMORY[0x1E69E7CC0];
  }

  v93 = v52;
  sub_1ADEBD3F8(&v93);
  v86 = v93;
  v53 = *(v93 + 2);
  swift_beginAccess();
  v84 = v53;
  if (v53)
  {
    v54 = 0;
    v55 = (v86 + 40);
    while (v54 < *(v86 + 2))
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      v58 = v85;
      sub_1ADECD9E8(v90 + v89, v85, type metadata accessor for PartiallyOrderedReferenceMap);
      v59 = v58 + *(v88 + 20);
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      sub_1ADDD86D8(v56, v57);
      sub_1ADDD86D8(v56, v57);
      sub_1ADDDF7A8(v56, v57, v60, &v93);
      sub_1ADDCC35C(v56, v57);
      sub_1ADDD872C(v58, type metadata accessor for PartiallyOrderedReferenceMap);
      v63 = v95;
      if (!v95)
      {
        goto LABEL_25;
      }

      ++v54;
      v92 = v98;
      v91 = v97;
      v64 = v96;
      v65 = v93;
      v66 = v94;
      sub_1ADDD86D8(v56, v57);
      v67 = v87;
      sub_1AE1B1DC4(v56, v57);
      sub_1ADDCC35C(v56, v57);

      sub_1ADF65B3C(v67, v64);
      sub_1ADF65B3C(v67, v63);
      sub_1ADDDC21C(v65, v66, v63);
      sub_1ADDCC35C(v56, v57);

      v55 += 2;
      if (v84 == v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_23:

    v68 = v80;
    v69 = v87;
    sub_1AE23C99C();
    sub_1ADDE5F54(&qword_1ED9664C0, MEMORY[0x1E69663E0]);
    v70 = v82;
    v71 = sub_1AE23C97C();
    v73 = v72;
    (*(v81 + 8))(v68, v70);
    v74 = sub_1AE03C8CC(v71, v73);

    v75 = sub_1ADDCC6B4(v74);

    (*(v78 + 8))(v69, v83);
    return v75;
  }

  return result;
}

uint64_t sub_1ADEAC8A8(uint64_t a1)
{
  v2 = v1;
  if (sub_1ADEACB44(v1))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v4 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v5 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    v20 = *v5;
    v8 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v18 = *v8;
    v19 = v8[1];
    v9 = *(v19 + 16);

    if (v9)
    {
      sub_1ADDF8898(v21, v22, v23);
    }

    if (*(v7 + 16))
    {
      sub_1ADDF8898(v21, v22, v23);

      v6 = v20;
    }

    else
    {
    }

    if (sub_1ADF637A8(v7, v19))
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1ADF637A8(v6, v18);
    }

    goto LABEL_16;
  }

  v10 = (v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];

  if ((sub_1ADF637A8(v12, v15) & 1) == 0)
  {
    v16 = sub_1ADF637A8(v11, v14);

LABEL_16:

    return v16 & 1;
  }

  v16 = 1;
  return v16 & 1;
}

BOOL sub_1ADEACB44(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v4 = *(*(v3 + 8) + 16);
  if (v4)
  {
    v5 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (!*(*(v5 + 8) + 16) && *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) < *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration))
    {
      return 1;
    }
  }

  v7 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v8 = *(*(v7 + 8) + 16);
  if (v8)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) < *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
  }

  if (v4)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  return !v10 && *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) != *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
}

uint64_t sub_1ADEACC78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v4 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  v137 = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v87 = v2;
  v83 = v12;
  sub_1ADECD9E8(v2 + v12, v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v13 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v4 + 20);
  v17 = *(v4 + 24);
  v96 = v4;
  v18 = &v11[v16];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = *(v18 + 2);
  v22 = *&v11[v17];

  v24 = sub_1ADEBE8DC(v23);
  v82 = v11;
  sub_1ADDD872C(v11, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADECD850(&v138);
  *(&v134[5] + 8) = v143;
  *(&v134[6] + 8) = v144;
  *(&v134[7] + 8) = v145[0];
  *(&v134[8] + 3) = *(v145 + 11);
  *(&v134[1] + 8) = v139;
  *(&v134[2] + 8) = v140;
  *(&v134[3] + 8) = v141;
  *(&v134[4] + 8) = v142;
  *(v134 + 8) = v138;
  *&v132 = v19;
  *(&v132 + 1) = v20;
  *&v133 = v21;
  *(&v133 + 1) = v24;
  *&v134[0] = 0;
  *(&v134[9] + 1) = v14;
  *&v135 = v15;
  BYTE8(v135) = 0;
  v136 = 0;
  v88 = a1;
  v86 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1AE03163C(&v118);
  v25 = v120;
  if (!v120)
  {
LABEL_11:
    v128 = v134[8];
    v129 = v134[9];
    v130 = v135;
    v131 = v136;
    v124 = v134[4];
    v125 = v134[5];
    v126 = v134[6];
    v127 = v134[7];
    v120 = v134[0];
    v121 = v134[1];
    v122 = v134[2];
    v123 = v134[3];
    v118 = v132;
    v119 = v133;
    sub_1ADECD8C8(&v118);
    v42 = v82;
    sub_1ADECD9E8(v88 + v86, v82, type metadata accessor for PartiallyOrderedReferenceMap);
    v43 = (v87 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v44 = *v43;
    v45 = v43[1];
    v46 = (v42 + *(v96 + 20));
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    v50 = *(v42 + *(v96 + 24));

    v52 = sub_1ADEBE8DC(v51);
    sub_1ADDD872C(v42, type metadata accessor for PartiallyOrderedReferenceMap);
    *(&v115[5] + 8) = v143;
    *(&v115[6] + 8) = v144;
    *(&v115[7] + 8) = v145[0];
    *(&v115[8] + 3) = *(v145 + 11);
    *(&v115[1] + 8) = v139;
    *(&v115[2] + 8) = v140;
    *(&v115[3] + 8) = v141;
    *(&v115[4] + 8) = v142;
    *(v115 + 8) = v138;
    *&v113 = v47;
    *(&v113 + 1) = v48;
    *&v114 = v49;
    *(&v114 + 1) = v52;
    *&v115[0] = 0;
    *(&v115[9] + 1) = v44;
    *&v116 = v45;
    BYTE8(v116) = 0;
    v117 = 0;
    sub_1AE03163C(&v99);
    if (v101)
    {
      v53 = *(&v99 + 1);
      v54 = v99;
      v55 = v100;
      v56 = *(&v101 + 1);
      v57 = v102;
      do
      {
        v94 = v57;
        v95 = v56;
        v58 = v84;
        sub_1ADECD9E8(v87 + v83, v84, type metadata accessor for PartiallyOrderedReferenceMap);
        v59 = v58 + *(v96 + 20);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 16);
        sub_1ADDD86D8(v54, v53);
        sub_1ADDDF7A8(v54, v53, v60, &v99);
        sub_1ADDCC35C(v54, v53);
        sub_1ADDD872C(v58, type metadata accessor for PartiallyOrderedReferenceMap);
        if (v100)
        {
          v63 = v99;
          if (!v99)
          {
            goto LABEL_30;
          }

          v93 = v100;
          if (!v55)
          {
            goto LABEL_31;
          }

          v91 = v101;
          v92 = *(&v100 + 1);
          v89 = *(&v99 + 1);
          v90 = *(&v101 + 1);
          v64 = *(*v99 + 136);

          v64(&v99, v65);

          if (*(&v100 + 1))
          {
            sub_1ADDEE390(&v99, v98);
            v66 = v137;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v97 = v66;
            sub_1ADEBFD44(v98, v54, v53, isUniquelyReferenced_nonNull_native);

            sub_1ADDDC21C(v63, v89, v93);
            sub_1ADDCC35C(v54, v53);
            v137 = v97;
          }

          else
          {
            sub_1ADDCEDE0(&v99, &qword_1EB5BAA00, &qword_1AE2587A0);
            sub_1ADEBF000(v54, v53, v98);
            sub_1ADDCC35C(v54, v53);

            sub_1ADDDC21C(v63, v89, v93);
            sub_1ADDCEDE0(v98, &qword_1EB5BAA00, &qword_1AE2587A0);
          }
        }

        else
        {
          sub_1ADDCC35C(v54, v53);
        }

        sub_1AE03163C(&v99);
        v53 = *(&v99 + 1);
        v54 = v99;
        v55 = v100;
        v56 = *(&v101 + 1);
        v57 = v102;
      }

      while (v101);
    }

    v109 = v115[8];
    v110 = v115[9];
    v111 = v116;
    v112 = v117;
    v105 = v115[4];
    v106 = v115[5];
    v107 = v115[6];
    v108 = v115[7];
    v101 = v115[0];
    v102 = v115[1];
    v103 = v115[2];
    v104 = v115[3];
    v99 = v113;
    v100 = v114;
    sub_1ADECD8C8(&v99);
    v68 = v137;

    v70 = sub_1ADF7BBFC(v69);
    v71 = v88;
    v72 = sub_1ADEAD708(v70, v87);
    v74 = v73;

    v75 = sub_1ADECB734(v72, v71);

    if (*(v75 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
      v76 = sub_1AE23DCDC();
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC8];
    }

    *&v98[0] = v76;

    sub_1ADEC07E0(v77, 1, v98);

    v78 = *&v98[0];
    if (*(v68 + 16))
    {
    }

    else
    {

      v68 = 0;
      v78 = 0;
      v74 = 0;
    }

    v80 = v81;
    *v81 = v68;
    v80[1] = v78;
    v80[2] = v74;
    return result;
  }

  v27 = *(&v118 + 1);
  v26 = v118;
  v28 = v119;
  v29 = *(&v120 + 1);
  v30 = v121;
  while (1)
  {
    v94 = v30;
    v95 = v29;
    v31 = v85;
    sub_1ADECD9E8(v88 + v86, v85, type metadata accessor for PartiallyOrderedReferenceMap);
    v32 = v31 + *(v96 + 20);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    sub_1ADDD86D8(v26, v27);
    sub_1ADDDF7A8(v26, v27, v33, &v118);
    sub_1ADDCC35C(v26, v27);
    sub_1ADDD872C(v31, type metadata accessor for PartiallyOrderedReferenceMap);
    v36 = v119;
    if (!v119)
    {
      sub_1ADDCC35C(v26, v27);

      goto LABEL_4;
    }

    if (!v28)
    {
      break;
    }

    v93 = v25;
    v37 = v118;
    if (!v118)
    {
      goto LABEL_29;
    }

    v91 = v120;
    v92 = *(&v119 + 1);
    v89 = *(&v118 + 1);
    v90 = *(&v120 + 1);
    v38 = *(*v28 + 136);

    v38(&v118, v39);

    if (*(&v119 + 1))
    {
      sub_1ADDEE390(&v118, &v113);
      v40 = v137;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v99 = v40;
      sub_1ADEBFD44(&v113, v26, v27, v41);
      sub_1ADDDC21C(v37, v89, v36);

      sub_1ADDCC35C(v26, v27);
      v137 = v99;
    }

    else
    {
      sub_1ADDCEDE0(&v118, &qword_1EB5BAA00, &qword_1AE2587A0);
      sub_1ADEBF000(v26, v27, &v113);
      sub_1ADDCC35C(v26, v27);
      sub_1ADDDC21C(v37, v89, v36);

      sub_1ADDCEDE0(&v113, &qword_1EB5BAA00, &qword_1AE2587A0);
    }

LABEL_4:
    sub_1AE03163C(&v118);
    v27 = *(&v118 + 1);
    v26 = v118;
    v28 = v119;
    v29 = *(&v120 + 1);
    v25 = v120;
    v30 = v121;
    if (!v120)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1ADEAD708(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;

  v12 = sub_1ADECC810(v11, a2);
  v84 = v3;
  v100 = a2;

  v109 = v12;
  v107 = a1;
  v108 = MEMORY[0x1E69E7CD0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v88 = sub_1AE1941D0(*(a1 + 16), 0);
    v99 = sub_1AE03A790(&v101, v88 + 2, v13, a1);
    swift_bridgeObjectRetain_n();
    result = sub_1ADDDCE74();
    if (v99 != v13)
    {
      goto LABEL_52;
    }

    v15 = v88;
    if (!*(v88 + 2))
    {
      goto LABEL_48;
    }
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_48:

      return v109;
    }
  }

  v92 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v95 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  result = swift_beginAccess();
  v16 = 0;
  v17 = *(v15 + 2);
  v86 = v2;
  v85 = v10;
  while (1)
  {
    if (v16 >= v17)
    {
      goto LABEL_51;
    }

    v94 = v16;
    v18 = &v15[16 * v16];
    v19 = *(v18 + 4);
    v20 = *(v18 + 5);
    sub_1ADECD9E8(v2 + v95, v10, type metadata accessor for PartiallyOrderedReferenceMap);
    v21 = &v10[*(v93 + 20)];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    sub_1ADDD86D8(v19, v20);
    sub_1ADDDF7A8(v19, v20, v22, &v101);
    sub_1ADDD872C(v10, type metadata accessor for PartiallyOrderedReferenceMap);
    v25 = v103;
    if (v103)
    {
      break;
    }

    v82 = v19;
LABEL_47:
    result = sub_1ADDCC35C(v82, v20);
LABEL_8:
    v16 = v94 + 1;
    v17 = *(v15 + 2);
    if (v94 + 1 >= v17)
    {
      goto LABEL_48;
    }
  }

  v99 = v19;
  v26 = v101;
  v27 = v102;

  sub_1ADDDC21C(v28, v27, v25);
  if (!v26)
  {
    v82 = v99;
    goto LABEL_47;
  }

  v88 = v15;
  v29 = type metadata accessor for RetainVisitor();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v33 = sub_1ADDD9ECC(v31);
  *(v30 + 16) = v32;
  *(v30 + 24) = v33;
  v104 = v29;
  v105 = &off_1F23C4550;
  v101 = v30;
  v34 = *(*v26 + 128);

  v34(&v101);

  __swift_destroy_boxed_opaque_existential_1(&v101);
  swift_beginAccess();
  v35 = *(v30 + 16);
  v36 = *(v30 + 24);

  v97 = v36;

  v38 = v35 + 64;
  v37 = *(v35 + 64);
  v96 = v35;
  v39 = 1 << *(v35 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  result = swift_beginAccess();
  v42 = 0;
  v43 = (v39 + 63) >> 6;
  v98 = v20;
  while (v41)
  {
    v44 = v42;
LABEL_22:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = (*(v96 + 48) + ((v44 << 10) | (16 * v45)));
    v47 = *v46;
    v48 = v46[1];
    sub_1ADDD86D8(*v46, v48);
    sub_1ADDD86D8(v47, v48);
    v49 = sub_1ADDE0110(&v101, v47, v48);
    sub_1ADDCC35C(v101, v102);
    if (v49)
    {
      v50 = v87;
      sub_1ADECD9E8(v100 + v95, v87, type metadata accessor for PartiallyOrderedReferenceMap);
      v51 = v50 + *(v93 + 20);
      v52 = *(v51 + 8);
      v53 = *(v51 + 16);
      sub_1ADDDF7A8(v47, v48, *v51, &v101);
      sub_1ADDD872C(v50, type metadata accessor for PartiallyOrderedReferenceMap);
      v54 = v103;
      if (v103)
      {
        v91 = v106;
        v90 = v105;
        v89 = v104;
        v55 = v101;
        v56 = v102;
        sub_1ADDCC35C(v47, v48);
        v57 = v56;
        v20 = v98;
        result = sub_1ADDDC21C(v55, v57, v54);
        v42 = v44;
      }

      else
      {
        sub_1ADDD86D8(v47, v48);
        sub_1ADDE0110(&v101, v47, v48);
        sub_1ADDCC35C(v101, v102);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1ADE5534C(0, *(v88 + 2) + 1, 1, v88);
          v88 = result;
        }

        v59 = *(v88 + 2);
        v58 = *(v88 + 3);
        if (v59 >= v58 >> 1)
        {
          result = sub_1ADE5534C((v58 > 1), v59 + 1, 1, v88);
          v88 = result;
        }

        v60 = v88;
        *(v88 + 2) = v59 + 1;
        v61 = &v60[16 * v59];
        *(v61 + 4) = v47;
        *(v61 + 5) = v48;
        v42 = v44;
      }
    }

    else
    {
      result = sub_1ADDCC35C(v47, v48);
      v42 = v44;
    }
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v43)
    {

      v62 = 0;
      v63 = v97 + 64;
      v64 = 1 << *(v97 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & *(v97 + 64);
      v67 = (v64 + 63) >> 6;
      result = v99;
      if (v66)
      {
        goto LABEL_38;
      }

      while (1)
      {
        do
        {
          v68 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_50;
          }

          if (v68 >= v67)
          {
            sub_1ADDCC35C(result, v20);

            v2 = v86;
            v10 = v85;
            v15 = v88;
            goto LABEL_8;
          }

          v66 = *(v63 + 8 * v68);
          ++v62;
        }

        while (!v66);
        v62 = v68;
        do
        {
LABEL_38:
          v69 = __clz(__rbit64(v66));
          v66 &= v66 - 1;
          v70 = (v62 << 10) | (16 * v69);
          v71 = (*(v97 + 48) + v70);
          v73 = *v71;
          v72 = v71[1];
          v74 = *(*(v97 + 56) + v70);
          v75 = v100;
          v76 = v92;
          swift_beginAccess();
          v77 = *(v75 + v76);
          v78 = *(v77 + 16);
          sub_1ADDD86D8(v73, v72);

          if (v78 && (v79 = sub_1ADDDE7CC(v73, v72), (v80 & 1) != 0) && (v81 = *(*(v77 + 56) + 16 * v79), , v81))
          {
            swift_endAccess();
            sub_1ADDCC35C(v73, v72);
          }

          else
          {
            swift_endAccess();

            sub_1ADEC1658(&v101, v74);
            sub_1ADDCC35C(v73, v72);
          }

          v20 = v98;
          result = v99;
        }

        while (v66);
      }
    }

    v41 = *(v38 + 8 * v44);
    ++v42;
    if (v41)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1ADEADF58(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v33 - v7 + 16;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v14 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v15 = *(v14 + 1);
  v33[0] = MEMORY[0x1E69E7CC8];
  v33[1] = v15;

  sub_1ADDE1CB8(v33);

  v16 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  if (a1)
  {
    v17 = qword_1ED967EE8;
    v18 = *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);

    if (v17 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v19 = sub_1AE1FEFC0(&dword_1ED96F1F8, v16);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
  }

  else
  {
    v20 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    (*(v10 + 16))(v13, v16 + v20, v9);
    v21 = type metadata accessor for ReplicaState();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v19 = swift_allocObject();
    v24 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v25 = type metadata accessor for Replica();
    v26 = *(*(v25 - 8) + 56);
    v32 = v4;
    v26(v19 + v24, 1, 1, v25);
    (*(v10 + 32))(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v13, v9);
    *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v26(v8, 1, 1, v25);
    v4 = v32;
    swift_beginAccess();
    sub_1ADDD85E4(v8, v19 + v24);
    swift_endAccess();
  }

  v27 = *(v4 + 48);
  v28 = *(v4 + 52);
  swift_allocObject();

  v30 = sub_1ADDE1CF0(v29, v19);

  return v30;
}

void (*sub_1ADEAE30C(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x1E8uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[52] = a3;
  v8[53] = v3;
  v10 = *(a3 - 8);
  v8[54] = v10;
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = *a2;
  v13 = a2[1];
  *(v9 + 440) = v11;
  *(v9 + 448) = v12;
  *(v9 + 456) = v13;
  *(v9 + 368) = v12;
  *(v9 + 376) = v13;
  v14 = type metadata accessor for Ref();
  *(v9 + 464) = v14;
  WitnessTable = swift_getWitnessTable();
  *(v9 + 472) = WitnessTable;
  Reference.identity.getter(v14, WitnessTable);
  v16 = *(v9 + 384);
  v17 = *(v9 + 392);
  v18 = v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v19 = (v18 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  ++v19[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v20 = sub_1AE23E34C();
  v21 = *v19;
  swift_beginAccess();
  v22 = *(v21 + 16) != 0;
  *v9 = v16;
  *(v9 + 8) = v17;
  sub_1ADDD86D8(v16, v17);
  sub_1ADDDC21C(0, 0, 0);
  *(v9 + 16) = 0u;
  v23 = (v9 + 16);
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = v20;
  *(v9 + 72) = 0;
  *(v9 + 80) = v21;
  *(v9 + 88) = 0;
  *(v9 + 92) = 0;
  *(v9 + 93) = v22;
  *(v9 + 94) = 0;
  result = sub_1ADDDD688(v9);
  if (!*(v9 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = *v23;
  if (!*v23)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = *v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = (*(*v25 + 168))();

    *v23 = v27;
    v25 = v27;
  }

  v28 = type metadata accessor for CRDTBox();
  *(v9 + 480) = v28;
  *(v9 + 216) = v28;
  *(v9 + 224) = &off_1F23C9908;
  *(v9 + 192) = v25;

  sub_1ADDDD94C(v19, v9);
  v29 = *(v9 + 48);
  *(v9 + 128) = *(v9 + 32);
  *(v9 + 144) = v29;
  *(v9 + 160) = *(v9 + 64);
  *(v9 + 175) = *(v9 + 79);
  v30 = *(v9 + 16);
  *(v9 + 96) = *v9;
  *(v9 + 112) = v30;
  sub_1ADDCEDE0(v9 + 96, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();
  v31 = sub_1ADDCC35C(v16, v17);
  (*(*v25 + 248))(v31);
  swift_dynamicCast();
  return sub_1ADEAE67C;
}

void sub_1ADEAE67C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[55];
    (*(v2[54] + 8))(v3, v2[52]);
  }

  else
  {
    v11 = v2[59];
    v5 = v2[57];
    v4 = v2[58];
    v3 = v2[55];
    v6 = v2[56];
    v8 = v2[53];
    v7 = v2[54];
    v9 = v2[52];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v2[60]);
    v2[36] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 33);
    (*(v7 + 16))(boxed_opaque_existential_1, v3, v9);
    off_1F23C9918();
    __swift_destroy_boxed_opaque_existential_1(v2 + 33);
    v2[50] = v6;
    v2[51] = v5;
    Reference.identity.getter(v4, v11);
    swift_beginAccess();
    sub_1ADDE0110(v12, v12[2], v12[3]);
    swift_endAccess();
    sub_1ADDCC35C(v12[0], v12[1]);
    (*(v7 + 8))(v3, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  free(v3);

  free(v2);
}

uint64_t sub_1ADEAE800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for PartiallyOrderedReferenceMap();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v3 + v14, v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v33 = v13;
  v34 = v12;
  v15 = type metadata accessor for WeakRef();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v15, WitnessTable);
  v17 = v31;
  v18 = v32;
  v19 = &v11[*(v8 + 28)];
  v20 = *(v19 + 1);
  v21 = *(v19 + 2);
  sub_1ADDDF7A8(v31, v32, *v19, v29);
  sub_1ADDCC35C(v17, v18);
  sub_1ADDD872C(v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v22 = v30;
  if (!v30)
  {
    memset(v35, 0, sizeof(v35));
    goto LABEL_5;
  }

  v23 = v29[0];
  v24 = v29[1];

  result = sub_1ADDDC21C(v25, v24, v22);
  if (v23)
  {
    (*(*v23 + 88))(v35, result);

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
    v27 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a3, v27 ^ 1u, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADEAEA50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = a4;
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = *a2;
  v22 = a2[1];
  (*(v8 + 16))(v11, a1, v7, v18);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    v23 = *(v8 + 8);
    v23(a1, v7);
    sub_1ADDCC35C(v21, v22);
    return (v23)(v11, v7);
  }

  else
  {
    v35 = v7;
    v37 = a1;
    (*(v12 + 32))(v20, v11, a3);
    v25 = *(v12 + 16);
    v36 = v20;
    v25(v16, v20, a3);
    sub_1ADDD9FE4(v16, a3, v40);
    v38 = v40[0];
    v46 = v21;
    v47 = v22;
    v26 = type metadata accessor for WeakRef();
    WitnessTable = swift_getWitnessTable();
    Reference.identity.getter(v26, WitnessTable);
    v27 = v44;
    v28 = v45;
    swift_beginAccess();
    v41 = v27;
    v42 = v28;
    v30 = sub_1ADDDD4A0(v40, &v41);
    if (v29[2])
    {
      v31 = *v29;
      *v29 = v38;

      (v30)(v40, 0);
      swift_endAccess();

      sub_1ADDCC35C(v41, v42);
    }

    else
    {
      (v30)(v40, 0);
      sub_1ADDCC35C(v41, v42);
      swift_endAccess();
    }

    v32 = v35;
    v46 = v21;
    v47 = v22;
    Reference.identity.getter(v26, WitnessTable);
    sub_1ADDCC35C(v21, v22);
    v33 = v44;
    v34 = v45;
    swift_beginAccess();
    sub_1ADDE0110(v43, v33, v34);
    swift_endAccess();

    (*(v8 + 8))(v37, v32);
    sub_1ADDCC35C(v43[0], v43[1]);
    return (*(v12 + 8))(v36, a3);
  }
}

uint64_t sub_1ADEAEE48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[4];
  type metadata accessor for TypedReference();
  v10.n128_u64[0] = v1;
  v10.n128_u64[1] = v2;
  sub_1ADF97074(&v10);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2455D0;
  *(inited + 32) = v5;

  sub_1ADDD86D8(v1, v2);
  v7 = sub_1ADF7E8E4(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  result = swift_arrayDestroy();
  if (v3)
  {
    sub_1ADEAEF54(v3, 0, 0, v7, &v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEAEF54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = v5;
  v78 = a4;
  v76 = a3;
  v75 = a2;
  v79 = a5;
  v73 = sub_1AE23C88C();
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AE23C8CC();
  v69 = *(v71 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v63 - v18;
  v66 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = sub_1ADEACB44(a1);
  v80 = v22;
  if (v23)
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v24 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v25 = aBlock;
    v26 = v83;
    v27 = v84;
    v28 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (*(*(v28 + 8) + 16))
    {
      a1 = sub_1ADEADF58(0);
      sub_1ADEB0918(v25, v26, v27, 0);
    }

    else
    {
    }

    v29 = v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (*(*(v29 + 8) + 16))
    {
      sub_1ADEB0918(v25, v26, v27, 0);
    }
  }

  else
  {
  }

  v30 = *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  v31 = qword_1ED967EE8;

  if (v31 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v32 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDCEE40(v30 + v32, v80, &unk_1EB5B9E70, &unk_1AE240EC0);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v33 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;
  v34 = *(v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v35 = v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v36 = *(v35 + 8);

  v37 = sub_1ADEB1ADC(&aBlock, a1, v75, v76, v78);
  LODWORD(v76) = aBlock;
  LODWORD(v75) = BYTE1(aBlock);
  v74 = BYTE2(aBlock);
  swift_beginAccess();
  sub_1AE00F014(v37);
  swift_endAccess();
  v38 = *(v6 + v33);

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v39 = *(v35 + 8);
  v40 = qword_1ED96B308;

  if (v40 != -1)
  {
    swift_once();
  }

  v78 = a1;
  v41 = qword_1ED96F2F8;
  v42 = *(v6 + v33);

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v43 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  v44 = v77;
  sub_1ADDCEE40(v42 + v43, v77, &unk_1EB5B9E70, &unk_1AE240EC0);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  if (*(v36 + 16) || *(v39 + 16))
  {
    v63 = *(v41 + 40);
    v45 = v64;
    sub_1ADDCEE40(v44, v64, &unk_1EB5B9E70, &unk_1AE240EC0);
    v46 = v67;
    sub_1ADDCEE40(v80, v67, &unk_1EB5B9E70, &unk_1AE240EC0);
    v47 = *(v65 + 80);
    v48 = (v47 + 56) & ~v47;
    v49 = (v66 + v47 + v48) & ~v47;
    v50 = swift_allocObject();
    v51 = MEMORY[0x1E69E7CC8];
    v50[2] = MEMORY[0x1E69E7CC8];
    v50[3] = v36;
    v50[4] = v51;
    v50[5] = v39;
    v50[6] = v41;
    sub_1ADECD978(v45, v50 + v48);
    sub_1ADECD978(v46, v50 + v49);
    v86 = sub_1ADE4315C;
    v87 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1ADDD2200;
    v85 = &block_descriptor_30;
    v52 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();

    v53 = v44;
    v54 = v68;
    sub_1AE23C8AC();
    v81 = MEMORY[0x1E69E7CC0];
    sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v55 = v70;
    v56 = v73;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v54, v55, v52);
    v57 = v80;
    _Block_release(v52);

    swift_bridgeObjectRelease_n();
    (*(v72 + 8))(v55, v56);
    (*(v69 + 8))(v54, v71);
    sub_1ADDCEDE0(v53, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v44, &unk_1EB5B9E70, &unk_1AE240EC0);
    v57 = v80;
  }

  v58 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);

  sub_1ADDCEDE0(v57, &unk_1EB5B9E70, &unk_1AE240EC0);
  v59 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  swift_beginAccess();
  v60 = *(v6 + v59);
  *(v6 + v59) = v58;

  v62 = v79;
  *v79 = v76;
  v62[1] = v75;
  v62[2] = v74;
  return result;
}

uint64_t sub_1ADEAF914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedReference();
  v8 = *(a5 + 48);
  v8(&v21, a3, a5);
  v20 = v21;
  sub_1ADF97074(&v20);
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2455D0;
  *(inited + 32) = v10;

  v12 = sub_1ADF7E8E4(inited);
  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AE2418F0;
  (v8)(a3, a5);
  v15 = sub_1ADF7E6A4(v14);
  swift_setDeallocating();
  sub_1ADECDAB4(v14 + 32);
  v16 = sub_1ADF99278(v15, v19);

  if (v7)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_1ADEAEF54(v7, sub_1ADECDBD8, v18, v12, &v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEAFB4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for TypedRefVisitor();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CD0];
  v14 = *a1;
  v23 = a1[1];
  v22 = v14;
  v24 = v11;
  v15 = type metadata accessor for Capsule();
  Capsule.root.getter(v15);
  v21[3] = v12;
  v21[4] = &off_1F23C45A0;
  v21[0] = v13;
  v16 = *(a3 + 16);
  v17 = *(v16 + 48);

  v17(v21, a2, v16);
  (*(v6 + 8))(v9, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (v11)
  {
    swift_beginAccess();
    v19 = *(v13 + 16);

    sub_1ADEAEF54(v11, 0, 0, v19, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEAFD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = v9[1];
  (*(v12 + 16))(v8, v13, v6);
  sub_1ADDD9FE4(v8, a2, &v17);
  v15[1] = v11;
  v16 = v17;
  v15[0] = v10;
  sub_1ADEAAF7C(&v16, v15, a3);
}

uint64_t sub_1ADEAFE28@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v42 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v15 = *a2;
  v16 = v14;
  if (v14 >> 60 == 15)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v48 = sub_1ADDCC6B4(&unk_1F23BBEF0);
    *(&v48 + 1) = v17;
    v18 = sub_1ADDD8E0C();
    v20 = v19;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v18, v20);
    (*(v9 + 8))(v12, v8);
    v16 = *(&v48 + 1);
    v15 = v48;
  }

  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v22 = v43;
  swift_beginAccess();
  sub_1ADECD9E8(v22 + v21, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v23 = &v7[*(v42 + 20)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = *(v23 + 2);
  sub_1ADDD86D8(v15, v16);
  sub_1ADDE0F78(v13, v14);
  sub_1ADDDF7A8(v15, v16, v24, &v48);
  sub_1ADDCC35C(v15, v16);
  sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  if (!v49)
  {
    v34 = v40;

    v35 = MEMORY[0x1E69E7CC0];
    v36 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v37 = sub_1ADDD9ECC(v35);
    sub_1ADDDA5BC(v35);
    sub_1ADDD9ECC(v35);

    v38 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v48 = v34;
    v49 = v38;
    v50 = v38;
    v51 = v36;
    v52 = v37;
    v46 = v15;
    v47 = v16;
    swift_beginAccess();
    sub_1ADDD82B0(&v48, &v46);
    swift_endAccess();

LABEL_17:
    swift_beginAccess();
    sub_1ADDD86D8(v15, v16);
    sub_1ADDE0110(v45, v15, v16);
    swift_endAccess();
    result = sub_1ADDCC35C(v45[0], v45[1]);
    v39 = v41;
    *v41 = v15;
    v39[1] = v16;
    return result;
  }

  sub_1ADDDC21C(v48, *(&v48 + 1), v49);
  swift_beginAccess();
  v46 = v15;
  v47 = v16;
  sub_1ADDD86D8(v15, v16);
  v28 = sub_1ADDDD4A0(&v48, &v46);
  if (!v27[2])
  {
    (v28)(&v48, 0);
    sub_1ADDCC35C(v46, v47);
    swift_endAccess();
    goto LABEL_17;
  }

  v29 = v27;
  result = *v27;
  if (*v27)
  {
    v31 = v40;
    if (v40 == result)
    {
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = (*(**v29 + 168))();
        v33 = *v29;
        *v29 = v32;
      }

      (*(**v29 + 96))(&v44, v31);
    }

    (v28)(&v48, 0);
    swift_endAccess();
    sub_1ADDCC35C(v46, v47);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_1ADEB03A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v41 = a1;
  v42 = a4;
  v40 = *(a2 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PartiallyOrderedReferenceMap();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23BFEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v48.n128_u64[0] = sub_1ADDCC6B4(&unk_1F23BBF18);
  v48.n128_u64[1] = v17;
  v18 = sub_1ADDD8E0C();
  v20 = v19;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v18, v20);
  (*(v13 + 8))(v16, v12);
  v21 = v48;
  v22 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v22, v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v23 = &v11[*(v8 + 20)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = *(v23 + 2);
  sub_1ADDD86D8(v21.n128_i64[0], v21.n128_u64[1]);
  sub_1ADDDF7A8(v21.n128_i64[0], v21.n128_u64[1], v24, &v48);
  sub_1ADDCC35C(v21.n128_i64[0], v21.n128_u64[1]);
  sub_1ADDD872C(v11, type metadata accessor for PartiallyOrderedReferenceMap);
  if (v49)
  {
    sub_1ADDDC21C(v48.n128_i64[0], v48.n128_i64[1], v49);
    swift_beginAccess();
    v47 = v21;
    sub_1ADDD86D8(v21.n128_i64[0], v21.n128_u64[1]);
    v28 = sub_1ADDDD4A0(&v48, &v47);
    if (v27[2])
    {
      v29 = v27;
      v30 = v43;
      (*(v40 + 16))(v7, v41, v43);
      sub_1ADDD9FE4(v7, v30, &v45);
      v31 = *v29;
      *v29 = v45;

      (v28)(&v48, 0);
      swift_endAccess();
      sub_1ADDCC35C(v47.n128_i64[0], v47.n128_u64[1]);
    }

    else
    {
      (v28)(&v48, 0);
      sub_1ADDCC35C(v47.n128_i64[0], v47.n128_u64[1]);
      swift_endAccess();
    }
  }

  else
  {
    v32 = v43;
    (*(v40 + 16))(v7, v41, v43);
    sub_1ADDD9FE4(v7, v32, &v48);
    v33 = v48.n128_u64[0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ADDD9ECC(v34);
    sub_1ADDDA5BC(v34);
    sub_1ADDD9ECC(v34);

    v37 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v48 = v33;
    v49 = v37;
    v50 = v37;
    v51 = v35;
    v52 = v36;
    v47 = v21;
    swift_beginAccess();
    sub_1ADDD82B0(&v48, &v47);
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1ADDD86D8(v21.n128_i64[0], v21.n128_u64[1]);
  sub_1ADDE0110(v46, v21.n128_i64[0], v21.n128_u64[1]);
  swift_endAccess();
  sub_1ADDCC35C(v46[0], v46[1]);
  v48 = v21;
  *&result = WeakRef.init(id:)(&v48, v42).n128_u64[0];
  return result;
}

void sub_1ADEB0918(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1AE23C88C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1AE23C8CC();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  if (*(a3 + 16))
  {
    v53 = v10;
    v27 = v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    if (a4)
    {
      swift_beginAccess();
      sub_1ADDF8898(a1, a2 & 1, a3);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(a1, a2 & 1, a3);
      swift_endAccess();
      *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = a1;
    }

    else
    {
      v50 = v26;
      v52 = &v49 - v25;
      swift_beginAccess();
      v28 = *(v27 + 8);
      swift_beginAccess();
      v51 = v28;

      sub_1ADDF8898(a1, a2 & 1, a3);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(a1, a2 & 1, a3);
      swift_endAccess();
      *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = a1;
      v29 = *(v27 + 8);
      v30 = qword_1ED96B308;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = qword_1ED96F2F8;
      v32 = *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
      v33 = qword_1ED967EE8;

      if (v33 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1ED96F1F8);
      v34 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
      swift_beginAccess();
      v35 = v32 + v34;
      v36 = v52;
      sub_1ADDCEE40(v35, v52, &unk_1EB5B9E70, &unk_1AE240EC0);
      os_unfair_lock_unlock(&dword_1ED96F1F8);

      v37 = type metadata accessor for Replica();
      (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
      v38 = v51;
      if (*(v51 + 16) || *(v29 + 16))
      {
        v49 = *(v31 + 40);
        sub_1ADDCEE40(v36, v20, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEE40(v23, v17, &unk_1EB5B9E70, &unk_1AE240EC0);
        v39 = *(v50 + 80);
        v40 = (v39 + 56) & ~v39;
        v41 = (v16 + v39 + v40) & ~v39;
        v42 = v29;
        v43 = swift_allocObject();
        v44 = MEMORY[0x1E69E7CC8];
        v43[2] = MEMORY[0x1E69E7CC8];
        v43[3] = v38;
        v43[4] = v44;
        v43[5] = v42;
        v43[6] = v31;
        sub_1ADECD978(v20, v43 + v40);
        sub_1ADECD978(v17, v43 + v41);
        aBlock[4] = sub_1ADE4315C;
        aBlock[5] = v43;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1ADDD2200;
        aBlock[3] = &block_descriptor_21;
        v45 = _Block_copy(aBlock);
        swift_bridgeObjectRetain_n();

        v46 = v54;
        sub_1AE23C8AC();
        v59 = MEMORY[0x1E69E7CC0];
        sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
        sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
        v47 = v56;
        v48 = v53;
        sub_1AE23D8DC();
        MEMORY[0x1B26FBF60](0, v46, v47, v45);
        _Block_release(v45);

        swift_bridgeObjectRelease_n();
        (*(v58 + 8))(v47, v48);
        (*(v55 + 8))(v46, v57);
        sub_1ADDCEDE0(v23, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEDE0(v52, &unk_1EB5B9E70, &unk_1AE240EC0);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_1ADDCEDE0(v23, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEDE0(v36, &unk_1EB5B9E70, &unk_1AE240EC0);
      }
    }
  }
}

uint64_t sub_1ADEB10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v75 = a6;
  v9 = v8;
  v72 = a4;
  v73 = a5;
  v63 = a2;
  v70 = a8;
  v13 = *v8;
  v14 = sub_1AE23C88C();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v66 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1AE23C8CC();
  v65 = *(v67 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v60 = *(v19 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v62 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v61 = v59 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v71 = v59 - v24;
  v25 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;
  v26 = *(v9 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  v27 = qword_1ED967EE8;

  if (v27 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v28 = v9 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v29 = *(v28 + 1);
  v30 = sub_1ADDE5F54(&qword_1EB5BA9D8, type metadata accessor for CapsuleRef);

  v31 = v30;
  v32 = v74;
  v33 = sub_1ADF9975C(aBlock, a1, a3, v72, v73, v13, v75, v31, a7);
  if (v32)
  {
  }

  else
  {
    v75 = 0;
    LODWORD(v74) = LOBYTE(aBlock[0]);
    LODWORD(v73) = BYTE1(aBlock[0]);
    LODWORD(v72) = BYTE2(aBlock[0]);
    v35 = v33;
    swift_beginAccess();
    sub_1AE00F014(v35);
    swift_endAccess();
    v36 = *(v9 + v25);

    os_unfair_lock_lock(&dword_1ED96F1F8);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v37 = *(v28 + 1);
    v38 = qword_1ED96B308;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = qword_1ED96F2F8;
    v40 = *(v9 + v25);

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v41 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    v42 = v71;
    sub_1ADDCEE40(v40 + v41, v71, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    if (*(v29 + 16) || *(v37 + 16))
    {
      v59[2] = *(v39 + 40);
      v43 = v42;
      v44 = v61;
      sub_1ADDCEE40(v43, v61, &unk_1EB5B9E70, &unk_1AE240EC0);
      v45 = v62;
      sub_1ADDCEE40(v63, v62, &unk_1EB5B9E70, &unk_1AE240EC0);
      v46 = *(v60 + 80);
      v47 = (v46 + 56) & ~v46;
      v48 = (v20 + v46 + v47) & ~v46;
      v49 = swift_allocObject();
      v50 = MEMORY[0x1E69E7CC8];
      v49[2] = MEMORY[0x1E69E7CC8];
      v49[3] = v29;
      v49[4] = v50;
      v49[5] = v37;
      v59[1] = v37;
      v49[6] = v39;
      sub_1ADECD978(v44, v49 + v47);
      sub_1ADECD978(v45, v49 + v48);
      aBlock[4] = sub_1ADE42B98;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1ADDD2200;
      aBlock[3] = &block_descriptor_3;
      v51 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();

      v52 = v64;
      sub_1AE23C8AC();
      aBlock[14] = MEMORY[0x1E69E7CC0];
      sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
      v53 = v66;
      v54 = v69;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v52, v53, v51);
      _Block_release(v51);

      swift_bridgeObjectRelease_n();
      (*(v68 + 8))(v53, v54);
      (*(v65 + 8))(v52, v67);
      sub_1ADDCEDE0(v71, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1ADDCEDE0(v42, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    v55 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
    v56 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    swift_beginAccess();
    v57 = *(v9 + v56);
    *(v9 + v56) = v55;

    v58 = v70;
    *v70 = v74;
    v58[1] = v73;
    v58[2] = v72;
  }

  return result;
}

uint64_t sub_1ADEB18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  if (*(*(v11 + 8) + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v12 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    if (*(*(v11 + 8) + 16))
    {
      sub_1ADEB0918(v15, v16, v17, 0);
    }
  }

  v13 = type metadata accessor for Replica();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1ADEB10CC(a1, v10, 0, 0, 0, a2, a3, &v15);
  return sub_1ADDCEDE0(v10, &unk_1EB5B9E70, &unk_1AE240EC0);
}

uint64_t sub_1ADEB1ADC(_WORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v248 = a5;
  v261 = a4;
  v277 = a3;
  v222 = a1;
  v219 = sub_1AE23BFEC();
  v221 = *(v219 - 8);
  v7 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for PartiallyOrderedReferenceMap();
  v9 = *(*(v258 - 8) + 64);
  MEMORY[0x1EEE9AC00](v258);
  v241 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v231 = &v218 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v232 = &v218 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v250 = &v218 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v233 = &v218 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v234 = &v218 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v251 = &v218 - v22;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CD0];
  v230 = v23;
  *(v23 + 16) = MEMORY[0x1E69E7CD0];
  v25 = v24;
  v244 = (v23 + 16);
  v26 = swift_allocObject();
  v228 = v26;
  *(v26 + 16) = v25;
  v260 = v26 + 16;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC8];
  v229 = v27;
  *(v27 + 16) = MEMORY[0x1E69E7CC8];
  v243 = (v27 + 16);
  v29 = swift_allocObject();
  v247 = v29;
  *(v29 + 16) = v28;
  v242 = (v29 + 16);
  v30 = (a2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  v33 = v5;
  v34 = (v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v35 = *v34;
  v223 = v34;
  v36 = v34[1];
  v220 = v34 + 1;
  *&v268 = v35;
  *(&v268 + 1) = v36;
  v226 = v32;

  v225 = v31;

  v253 = a2;
  v37 = sub_1ADEB86C4(&v268);
  v38 = v33;

  v39 = swift_allocObject();
  v227 = v39;
  *(v39 + 16) = MEMORY[0x1E69E7CD0];
  v224 = (v39 + 16);
  v40 = *v30;
  v41 = v30[1];
  *&v268 = v40;
  *(&v268 + 1) = v41;

  v256 = sub_1ADEB86C4(&v268);

  v42 = swift_allocObject();
  if (qword_1ED9670C0 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v43 = byte_1ED96F222;
    *(v42 + 16) = word_1ED96F220;
    v252 = v42;
    *(v42 + 18) = v43;
    v44 = *(v37 + 16);
    v259 = v38;
    v45 = v37;
    v255 = v37;
    v37 = v256;
    v38 = v277;
    v257 = v44;
    if (!v44)
    {
      break;
    }

    v46 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

    v254 = v46;
    swift_beginAccess();
    v42 = swift_beginAccess();
    v47 = 0;
    while (v47 < *(v45 + 16))
    {
      v48 = v45 + 16 * v47;
      v49 = *(v48 + 32);
      v50 = *(v48 + 40);
      v262 = v49;
      if (v38)
      {
        v268 = v49;
        v51 = v49;
        sub_1ADDD86D8(v49, v50);
        sub_1ADE74334(v38);
        v52 = v38;
        v53 = (v38)(&v268);
        sub_1ADDDCE80(v52);
        if ((v53 & 1) == 0)
        {
          v42 = sub_1ADDCC35C(v51, v50);
          goto LABEL_29;
        }
      }

      else
      {
        sub_1ADDD86D8(v49, v50);
      }

      swift_beginAccess();
      v54 = v262;
      sub_1ADDD86D8(v262, v50);
      v55 = sub_1ADDE0110(&v263, v54, v50);
      swift_endAccess();
      sub_1ADDCC35C(v263, v264);
      if ((v55 & 1) == 0)
      {
        goto LABEL_28;
      }

      v56 = v251;
      sub_1ADECD9E8(v259 + v254, v251, type metadata accessor for PartiallyOrderedReferenceMap);
      v57 = v56 + *(v258 + 20);
      v58 = *(v57 + 8);
      v59 = *(v57 + 16);
      sub_1ADDDF7A8(v54, v50, *v57, &v268);
      sub_1ADDD872C(v56, type metadata accessor for PartiallyOrderedReferenceMap);
      v60 = v269;
      if (v269)
      {
        v61 = v268;

        sub_1ADDDC21C(v62, *(&v61 + 1), v60);
        if (v61)
        {

          sub_1ADEB6B04(v54, v50, v61, sub_1ADEB7364, &v268);

          v63 = v268;
          v37 = v256;
          if (v268)
          {
            v64 = *(&v268 + 1);
            v246 = v269;
            v65 = v243;
            swift_beginAccess();
            sub_1ADDD86D8(v54, v50);

            v66 = *v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v263 = *v65;
            v238 = v61;
            sub_1ADEBFB8C(v61, v63, v54, v50, isUniquelyReferenced_nonNull_native);
            sub_1ADDCC35C(v54, v50);
            *v65 = v263;
            swift_endAccess();
            v263 = v54;
            v264 = v50;
            v239 = v63;
            v275[0] = v63;
            v237 = v64;
            v276[0] = v64;
            v276[1] = v246;
            v68 = v259;
            v69 = v254;
            swift_beginAccess();
            sub_1AE0323AC(&v263, v275, v276, v274);
            swift_endAccess();
            v245 = LOBYTE(v274[0]);
            LODWORD(v262) = BYTE1(v274[0]);
            LODWORD(v240) = BYTE2(v274[0]);
            v70 = v234;
            sub_1ADECD9E8(v68 + v69, v234, type metadata accessor for PartiallyOrderedReferenceMap);
            v71 = v70 + *(v258 + 20);
            v72 = *(v71 + 8);
            v73 = *(v71 + 16);
            sub_1ADDDF7A8(v54, v50, *v71, &v268);
            result = sub_1ADDD872C(v70, type metadata accessor for PartiallyOrderedReferenceMap);
            v75 = v269;
            if (!v269)
            {
              goto LABEL_150;
            }

            v76 = v268;

            result = sub_1ADDDC21C(v77, *(&v76 + 1), v75);
            v236 = v76;
            if (!v76)
            {
              goto LABEL_149;
            }

            v78 = v233;
            sub_1ADECD9E8(v259 + v254, v233, type metadata accessor for PartiallyOrderedReferenceMap);
            v79 = v78 + *(v258 + 20);
            v80 = *(v79 + 8);
            v81 = *(v79 + 16);
            sub_1ADDDF7A8(v54, v50, *v79, &v263);
            result = sub_1ADDD872C(v78, type metadata accessor for PartiallyOrderedReferenceMap);
            v82 = v265;
            if (!v265)
            {
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
              return result;
            }

            v235 = v267;
            v83 = v266;
            v84 = v263;
            v85 = v264;

            v246 = v82;
            v237 = v83;
            sub_1ADDDC21C(v84, v85, v82);
            v86 = v245;
            LOBYTE(v268) = v245;
            v87 = v262;
            BYTE1(v268) = v262;
            v88 = v240;
            BYTE2(v268) = v240;
            v89 = &v268;
            MergeResult.merge(_:)(v89);
            v90 = v242;
            swift_beginAccess();
            v91 = *v90;
            v92 = swift_isUniquelyReferenced_nonNull_native();
            v263 = *v90;
            if (v88)
            {
              v93 = 0x10000;
            }

            else
            {
              v93 = 0;
            }

            sub_1ADEBFA40(v93 | (v87 << 8) | v86, v54, v50, v92);
            *v90 = v263;
            swift_endAccess();
            if (v86 > 1 || v262 >= 2)
            {
              swift_beginAccess();
              sub_1ADDD86D8(v54, v50);
              sub_1ADDE0110(&v263, v54, v50);
              swift_endAccess();
              sub_1ADDCC35C(v263, v264);
            }

            v45 = v255;
            v37 = v256;
            if (qword_1EB5B9920 != -1)
            {
              swift_once();
            }

            v38 = v277;
            if (v245 == word_1EB5D750E && v262 == HIBYTE(word_1EB5D750E) && v240 == byte_1EB5D7510)
            {
              swift_beginAccess();
              sub_1ADDE0110(&v263, v54, v50);
              v38 = v277;
              swift_endAccess();

              v42 = sub_1ADDCC35C(v263, v264);
            }

            else
            {
              sub_1ADDCC35C(v54, v50);
            }

            goto LABEL_30;
          }

          sub_1ADDCC35C(v54, v50);

          v45 = v255;
        }

        else
        {
          v42 = sub_1ADDCC35C(v54, v50);
          v45 = v255;
          v37 = v256;
        }
      }

      else
      {
LABEL_28:
        v42 = sub_1ADDCC35C(v54, v50);
      }

LABEL_29:
      v38 = v277;
LABEL_30:
      if (v257 == ++v47)
      {

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    v217 = v42;
    swift_once();
    v42 = v217;
  }

LABEL_35:
  v257 = *(v37 + 16);
  if (!v257)
  {
    goto LABEL_68;
  }

  v94 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v254 = v94;
  swift_beginAccess();
  v42 = swift_beginAccess();
  v95 = 0;
  while (2)
  {
    if (v95 >= *(v37 + 16))
    {
      goto LABEL_145;
    }

    v96 = v37 + 16 * v95;
    v97 = *(v96 + 32);
    v98 = *(v96 + 40);
    v262 = v97;
    if (v38)
    {
      v268 = v97;
      sub_1ADE74334(v38);
      v99 = v262;
      sub_1ADDD86D8(v262, v98);
      v100 = v38;
      v101 = (v38)(&v268);
      sub_1ADDDCE80(v100);
      if ((v101 & 1) == 0)
      {
        v42 = sub_1ADDCC35C(v99, v98);
        goto LABEL_62;
      }
    }

    else
    {
      sub_1ADDD86D8(v97, v98);
    }

    swift_beginAccess();
    v102 = v262;
    sub_1ADDD86D8(v262, v98);
    v103 = sub_1ADDE0110(&v263, v102, v98);
    swift_endAccess();
    sub_1ADDCC35C(v263, v264);
    if ((v103 & 1) == 0)
    {
      goto LABEL_61;
    }

    v104 = v250;
    sub_1ADECD9E8(v259 + v254, v250, type metadata accessor for PartiallyOrderedReferenceMap);
    v105 = v104 + *(v258 + 20);
    v106 = *(v105 + 8);
    v107 = *(v105 + 16);
    sub_1ADDDF7A8(v102, v98, *v105, &v268);
    sub_1ADDD872C(v104, type metadata accessor for PartiallyOrderedReferenceMap);
    v108 = v269;
    if (!v269)
    {
LABEL_61:
      v42 = sub_1ADDCC35C(v102, v98);
LABEL_62:
      v38 = v277;
      goto LABEL_63;
    }

    v109 = v268;

    sub_1ADDDC21C(v110, *(&v109 + 1), v108);
    if (!v109)
    {
      v42 = sub_1ADDCC35C(v102, v98);
      v37 = v256;
      goto LABEL_62;
    }

    sub_1ADEB6B04(v102, v98, v109, sub_1ADEB7364, &v268);

    v111 = v268;
    v37 = v256;
    if (!v268)
    {
      sub_1ADDCC35C(v102, v98);

      goto LABEL_62;
    }

    v112 = *(&v268 + 1);
    v251 = v269;
    v113 = v243;
    swift_beginAccess();
    sub_1ADDD86D8(v102, v98);

    v114 = *v113;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v263 = *v113;
    v239 = v109;
    sub_1ADEBFB8C(v109, v111, v102, v98, v115);
    sub_1ADDCC35C(v102, v98);
    *v113 = v263;
    swift_endAccess();
    v263 = v102;
    v264 = v98;
    v240 = v111;
    v272[0] = v111;
    v238 = v112;
    v274[0] = v112;
    v274[1] = v251;
    v116 = v259;
    v117 = v254;
    swift_beginAccess();
    sub_1AE0323AC(&v263, v272, v274, &v270);
    swift_endAccess();
    LODWORD(v262) = HIBYTE(v270);
    v245 = v271;
    LODWORD(v246) = v270;
    v118 = v232;
    sub_1ADECD9E8(v116 + v117, v232, type metadata accessor for PartiallyOrderedReferenceMap);
    v119 = v118 + *(v258 + 20);
    v120 = *(v119 + 8);
    v121 = *(v119 + 16);
    sub_1ADDDF7A8(v102, v98, *v119, &v268);
    result = sub_1ADDD872C(v118, type metadata accessor for PartiallyOrderedReferenceMap);
    v122 = v269;
    if (!v269)
    {
      goto LABEL_153;
    }

    v123 = v268;

    result = sub_1ADDDC21C(v124, *(&v123 + 1), v122);
    v237 = v123;
    if (!v123)
    {
      goto LABEL_152;
    }

    v125 = v231;
    sub_1ADECD9E8(v259 + v254, v231, type metadata accessor for PartiallyOrderedReferenceMap);
    v126 = v125 + *(v258 + 20);
    v127 = *(v126 + 8);
    v128 = *(v126 + 16);
    sub_1ADDDF7A8(v102, v98, *v126, &v263);
    result = sub_1ADDD872C(v125, type metadata accessor for PartiallyOrderedReferenceMap);
    v129 = v265;
    if (!v265)
    {
      goto LABEL_151;
    }

    v236 = v267;
    v130 = v266;
    v131 = v263;
    v132 = v264;

    v251 = v129;
    v238 = v130;
    sub_1ADDDC21C(v131, v132, v129);
    v133 = v245;
    v134 = v246;
    LOBYTE(v268) = v246;
    v135 = v262;
    BYTE1(v268) = v262;
    BYTE2(v268) = v245;
    v136 = &v268;
    MergeResult.merge(_:)(v136);
    v137 = v242;
    swift_beginAccess();
    v138 = *v137;
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v263 = *v137;
    if (v133)
    {
      v140 = 0x10000;
    }

    else
    {
      v140 = 0;
    }

    sub_1ADEBFA40(v140 | (v135 << 8) | v134, v102, v98, v139);
    *v137 = v263;
    swift_endAccess();
    if (v134 > 1 || v262 >= 2)
    {
      swift_beginAccess();
      sub_1ADDD86D8(v102, v98);
      sub_1ADDE0110(&v263, v102, v98);
      swift_endAccess();
      sub_1ADDCC35C(v263, v264);
    }

    v37 = v256;
    if (qword_1EB5B9920 != -1)
    {
      swift_once();
    }

    v38 = v277;
    if (v246 == word_1EB5D750E && v262 == HIBYTE(word_1EB5D750E) && v245 == byte_1EB5D7510)
    {
      swift_beginAccess();
      sub_1ADDE0110(&v263, v102, v98);
      v38 = v277;
      swift_endAccess();

      v42 = sub_1ADDCC35C(v263, v264);
    }

    else
    {
      sub_1ADDCC35C(v102, v98);
    }

LABEL_63:
    if (v257 != ++v95)
    {
      continue;
    }

    break;
  }

LABEL_68:
  if (!v248)
  {
    i = v247;
    goto LABEL_114;
  }

  if ((v248 & 0xC000000000000001) != 0)
  {

    v38 = sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADDE5F54(&qword_1EB5B9508, type metadata accessor for AnyReference);
    sub_1AE23D36C();
    v42 = v276[15];
    v141 = v276[16];
    v142 = v276[17];
    v143 = v276[18];
    v144 = v276[19];
  }

  else
  {
    v146 = -1 << *(v248 + 32);
    v141 = v248 + 56;
    v142 = ~v146;
    v147 = -v146;
    if (v147 < 64)
    {
      v148 = ~(-1 << v147);
    }

    else
    {
      v148 = -1;
    }

    v144 = v148 & *(v248 + 56);

    v42 = v248;
    v143 = 0;
  }

  v149 = (v142 + 64) >> 6;
  v248 = v42;
  v250 = v142;
  v251 = v149;
  v254 = v141;
  v257 = v143;
  if ((v42 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v153 = v143;
      v154 = v144;
      for (i = v247; !v154; ++v153)
      {
        v143 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_146;
        }

        if (v143 >= v149)
        {
          goto LABEL_113;
        }

        v154 = *(v141 + 8 * v143);
      }

      v152 = (v154 - 1) & v154;
      v151 = *(*(v42 + 48) + ((v143 << 9) | (8 * __clz(__rbit64(v154)))));

      if (!v151)
      {
        goto LABEL_113;
      }

LABEL_85:
      *&v262 = v152;
      v155 = *(v151 + 16);
      v156 = *(v151 + 24);
      v157 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
      v158 = v259;
      swift_beginAccess();
      v159 = v158 + v157;
      v160 = v241;
      sub_1ADECD9E8(v159, v241, type metadata accessor for PartiallyOrderedReferenceMap);
      v161 = v160 + *(v258 + 20);
      v162 = *(v161 + 8);
      v163 = *(v161 + 16);
      sub_1ADDDF7A8(v155, v156, *v161, &v268);
      sub_1ADDD872C(v160, type metadata accessor for PartiallyOrderedReferenceMap);
      v38 = v269;
      if (!v269)
      {
        break;
      }

      v165 = *(&v268 + 1);
      v164 = v268;

      sub_1ADDDC21C(v164, v165, v38);
      v144 = v262;
      v37 = v256;
      v42 = v248;
      v141 = v254;
LABEL_111:
      v149 = v251;
      v257 = v143;
      if (v42 < 0)
      {
        goto LABEL_77;
      }
    }

    v166 = *(v151 + 16);
    v167 = *(v151 + 24);
    swift_beginAccess();
    sub_1ADDD86D8(v166, v167);
    sub_1ADDE0110(&v263, v166, v167);
    swift_endAccess();
    sub_1ADDCC35C(v263, v264);
    v168 = v249;
    sub_1ADEB7670(v151, &v268);
    v249 = v168;
    if (v168)
    {

      sub_1ADDDCE74();

      goto LABEL_116;
    }

    v37 = v256;
    v141 = v254;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v169 = word_1EB5D750B;
    v170 = HIBYTE(word_1EB5D750B);
    v38 = byte_1EB5D750D;

    v171 = v252;
    swift_beginAccess();
    v42 = v248;
    v144 = v262;
    if (v169)
    {
      v172 = v171[16];
      if (v172 != v169)
      {
        if (v171[16] <= 1u)
        {
          if (!v171[16])
          {
LABEL_99:
            v171[16] = v169;
            goto LABEL_100;
          }

          v173 = v169 == 2;
LABEL_97:
          if (v173)
          {
            LOBYTE(v169) = 3;
          }

          goto LABEL_99;
        }

        if (v172 == 2)
        {
          v173 = v169 == 1;
          goto LABEL_97;
        }
      }
    }

LABEL_100:
    if (!v170)
    {
      goto LABEL_110;
    }

    v174 = v171[17];
    if (v174 == v170)
    {
      goto LABEL_110;
    }

    if (v171[17] > 1u)
    {
      if (v174 != 2)
      {
LABEL_110:
        v171[18] = (v171[18] | v38) & 1;
        goto LABEL_111;
      }

      v175 = v170 == 1;
    }

    else
    {
      if (!v171[17])
      {
LABEL_109:
        v171[17] = v170;
        goto LABEL_110;
      }

      v175 = v170 == 2;
    }

    if (v175)
    {
      LOBYTE(v170) = 3;
    }

    goto LABEL_109;
  }

LABEL_77:
  v150 = sub_1AE23D9AC();
  i = v247;
  if (v150)
  {
    v263 = v150;
    type metadata accessor for AnyReference();
    swift_dynamicCast();
    v151 = v268;
    v152 = v144;
    if (v268)
    {
      goto LABEL_85;
    }
  }

LABEL_113:
  sub_1ADDDCE74();
LABEL_114:
  v176 = v259;
  v177 = v244;
  swift_beginAccess();
  v178 = v253;
  v179 = v249;
  v180 = sub_1ADEB89D8(*v177, v253);
  v249 = v179;
  if (!v179)
  {
    v182 = v180;
    swift_beginAccess();

    sub_1AE00F014(v183);
    swift_endAccess();
    swift_beginAccess();
    sub_1AE00F014(v182);
    swift_endAccess();
    v184 = v227;
    v181 = v230;
    v185 = i;
    v187 = v228;
    v186 = v229;
    v188 = v277;
    v189 = v261;
    v190 = v249;
    sub_1ADEBD93C(0, v185, v229, v176, v277, v261, v228, v178, v252, v230, v227);
    if (v190)
    {
      v249 = v190;

      goto LABEL_120;
    }

    sub_1ADEBD93C(1, v247, v186, v176, v188, v189, v187, v178, v252, v181, v184);
    v249 = 0;
    v191 = v223;
    swift_beginAccess();
    sub_1ADF5F770(v225, v274);
    sub_1ADF5F770(v226, v272);
    v270 = v272[0];
    v271 = BYTE2(v272[0]);
    v192 = &v270;
    MergeResult.merge(_:)(v192);
    LOWORD(v272[0]) = v274[0];
    BYTE2(v272[0]) = BYTE2(v274[0]);
    v193 = v252;
    swift_beginAccess();
    v194 = v272;
    MergeResult.merge(_:)(v194);
    swift_endAccess();

    v195 = v193[16];
    v196 = v193[17];
    v197 = v193[18];
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v198 = v221;
    if (v195 == word_1EB5D750B && v196 == HIBYTE(word_1EB5D750B) && ((v197 ^ byte_1EB5D750D) & 1) == 0)
    {
      v199 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v200 = v253;
      swift_beginAccess();
      v201 = v200 + v199;
      v203 = v218;
      v202 = v219;
      (*(v198 + 16))(v218, v201, v219);
      v204 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v205 = v259;
      swift_beginAccess();
      v206 = v205 + v204;
      v207 = v203;
      v191 = v223;
      (*(v198 + 24))(v206, v207, v202);
    }

    else
    {
      if (v195 <= 1 && v196 < 2)
      {
        goto LABEL_137;
      }

      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v208 = v218;
      sub_1AE23BFBC();
      v209 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v210 = v259;
      swift_beginAccess();
      v211 = v210 + v209;
      v207 = v208;
      v212 = v208;
      v202 = v219;
      (*(v198 + 24))(v211, v212, v219);
    }

    swift_endAccess();
    (*(v198 + 8))(v207, v202);
LABEL_137:
    if (qword_1EB5B9920 != -1)
    {
      swift_once();
    }

    if (v195 == word_1EB5D750E && v196 == HIBYTE(word_1EB5D750E) && ((v197 ^ byte_1EB5D7510) & 1) == 0)
    {
      v213 = v224;
      swift_beginAccess();
      sub_1ADEB41A8(*v213, 1);
    }

    v214 = v191[1];
    v273[0] = *v191;
    v273[1] = v214;
    swift_beginAccess();

    sub_1AE032778(v273);
    swift_endAccess();

    v181 = *(v230 + 16);
    v215 = *(v252 + 18);
    v216 = v222;
    *v222 = *(v252 + 16);
    *(v216 + 2) = v215;

    return v181;
  }

LABEL_116:
  v181 = v230;
LABEL_120:

  return v181;
}

uint64_t sub_1ADEB3780(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v11 = sub_1ADDD9ECC(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v152[0] = v11;
  sub_1ADDDCB94(a2, sub_1ADF9811C, 0, isUniquelyReferenced_nonNull_native, v152);

  v13 = *&v152[0];
  v151 = v5;
  if (!a1[2])
  {
    goto LABEL_47;
  }

  v141 = *&v152[0];

  v143 = a3;
  while (1)
  {
    v139 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    v149 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v154 = sub_1ADDD9ECC(v16);
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & a1[8];
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_13:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v23 | (v17 << 6);
      v25 = *(a1[7] + 8 * v24);
      if ((a3 & 1) != 0 || v25)
      {
        v152[0] = *(a1[6] + 16 * v24);
        v153[0] = a4;
        v153[1] = a5;
        v26 = *(&v152[0] + 1);
        v27 = *&v152[0];
        sub_1ADDD86D8(*&v152[0], *(&v152[0] + 1));
        v28 = sub_1ADEB5924(v152, v25, v153);
        v30 = v28;
        if ((v28 - 1) < 2)
        {
          sub_1ADDDDEAC(v28);
        }

        else if (v28 != 3 && v28 != 0)
        {
          v120 = v29;
          v32 = v28 + 64;
          v33 = 1 << *(v28 + 32);
          if (v33 < 64)
          {
            v34 = ~(-1 << v33);
          }

          else
          {
            v34 = -1;
          }

          v35 = v34 & *(v28 + 64);
          v123 = (v33 + 63) >> 6;

          v36 = 0;
          v37 = 0;
          while (1)
          {
            v129 = v36;
            if (!v35)
            {
              while (1)
              {
                v38 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_94;
                }

                if (v38 >= v123)
                {

                  sub_1ADDDD108(v120);
                  sub_1ADDDCE80(v129);
                  sub_1ADDCC35C(v27, v26);

                  goto LABEL_44;
                }

                v35 = *(v32 + 8 * v38);
                ++v37;
                if (v35)
                {
                  goto LABEL_29;
                }
              }
            }

            v38 = v37;
LABEL_29:
            v125 = v38;
            v39 = __clz(__rbit64(v35)) | (v38 << 6);
            v40 = (*(v30 + 48) + 16 * v39);
            v137 = *v40;
            v135 = v40[1];
            v127 = *(*(v30 + 56) + 8 * v39);
            sub_1ADDD86D8(*v40, v135);
            sub_1ADDDCE80(v129);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *&v152[0] = v149;
            v42 = sub_1ADDDE7CC(v137, v135);
            v43 = v149[2];
            v44 = (v41 & 1) == 0;
            v45 = v43 + v44;
            if (__OFADD__(v43, v44))
            {
              goto LABEL_95;
            }

            if (v149[3] >= v45)
            {
              if (v130)
              {
                if (v41)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v132 = v42;
                v122 = v41;
                sub_1ADF6F1AC();
                v42 = v132;
                v149 = *&v152[0];
                if (v122)
                {
                  goto LABEL_38;
                }
              }
            }

            else
            {
              v121 = v41;
              sub_1ADE1D52C(v45, v130);
              v149 = *&v152[0];
              v46 = sub_1ADDDE7CC(v137, v135);
              if ((v121 & 1) != (v47 & 1))
              {
                goto LABEL_102;
              }

              v42 = v46;
              if (v121)
              {
                goto LABEL_38;
              }
            }

            v131 = v42;
            sub_1ADF98C94(v152);
            v48 = *&v152[0];
            v149[(v131 >> 6) + 8] |= 1 << v131;
            v49 = (v149[6] + 16 * v131);
            *v49 = v137;
            v49[1] = v135;
            *(v149[7] + 8 * v131) = v48;
            v50 = v149[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_97;
            }

            v149[2] = v52;
            sub_1ADDD86D8(v137, v135);
            v42 = v131;
LABEL_38:
            v53 = v149[7];
            v54 = *(v53 + 8 * v42);
            v51 = __OFSUB__(v54, v127);
            v55 = v54 - v127;
            if (v51)
            {
              goto LABEL_96;
            }

            v35 &= v35 - 1;
            *(v53 + 8 * v42) = v55;
            sub_1ADDCC35C(v137, v135);
            v36 = sub_1ADF98C94;
            v37 = v125;
            v32 = v30 + 64;
          }
        }

        sub_1ADDCC35C(v27, v26);
LABEL_44:
        a3 = v143;
      }
    }

LABEL_9:
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 < v21)
    {
      v20 = a1[v22 + 8];
      ++v17;
      if (v20)
      {
        v17 = v22;
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v14 = v154;

    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&v152[0] = v141;
    sub_1ADDDCB94(v14, sub_1ADF9811C, 0, v15, v152);
    v7 = v139;
    swift_bridgeObjectRelease_n();
    v141 = *&v152[0];
    a1 = v149;
    if (!v149[2])
    {

      v13 = v141;
LABEL_47:
      v56 = 0;
      v57 = v13 + 64;
      v58 = 1 << *(v13 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v13 + 64);
      v61 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
      v62 = (v58 + 63) >> 6;
      v63 = MEMORY[0x1E69E7CC0];
      for (i = MEMORY[0x1E69E7CC0]; ; i = v126)
      {
        while (1)
        {
          do
          {
            if (!v60)
            {
              while (1)
              {
                v69 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_93;
                }

                if (v69 >= v62)
                {

                  return i;
                }

                v60 = *(v57 + 8 * v69);
                ++v56;
                if (v60)
                {
                  v56 = v69;
                  break;
                }
              }
            }

            v65 = __clz(__rbit64(v60));
            v60 &= v60 - 1;
            v66 = v65 | (v56 << 6);
            v67 = (*(v13 + 56) + 16 * v66);
            v68 = v67[1];
          }

          while (!v68);
          v126 = i;
          v128 = v63;
          v70 = (*(v13 + 48) + 16 * v66);
          v71 = v61;
          v142 = v13;
          v144 = *v70;
          v138 = v70[1];
          v72 = *v67;
          v146 = *(*v67 + 24);
          v148 = *(*v67 + 16);
          swift_beginAccess();
          v136 = v71;
          v73 = *(v151 + v71);
          v74 = *(v73 + 16);
          v150 = v72;
          swift_retain_n();
          sub_1ADDD86D8(v144, v138);
          sub_1ADDD86D8(v148, v146);
          if (v74)
          {
            v75 = sub_1ADDDE7CC(v148, v146);
            if (v76)
            {
              v77 = (*(v73 + 56) + 16 * v75);
              v78 = *v77;
              v79 = v77[1];
              if ()
              {
                break;
              }
            }
          }

          v140 = v7;
          if (v68 <= 0)
          {
            goto LABEL_103;
          }

          v84 = *(v72 + 16);
          v83 = *(v150 + 24);

          sub_1ADDD86D8(v84, v83);
          v85 = *(v151 + v136);
          v124 = swift_isUniquelyReferenced_nonNull_native();
          *&v152[0] = *(v151 + v136);
          v86 = *&v152[0];
          *(v151 + v136) = 0x8000000000000000;
          v133 = v84;
          v134 = v83;
          v88 = sub_1ADDDE7CC(v84, v83);
          v89 = *(v86 + 16);
          v90 = (v87 & 1) == 0;
          v91 = v89 + v90;
          if (__OFADD__(v89, v90))
          {
            goto LABEL_98;
          }

          v92 = v87;
          if (*(v86 + 24) >= v91)
          {
            if ((v124 & 1) == 0)
            {
              sub_1ADF703A0();
            }
          }

          else
          {
            sub_1ADF6AF70(v91, v124);
            v93 = sub_1ADDDE7CC(v84, v134);
            if ((v92 & 1) != (v94 & 1))
            {
              goto LABEL_104;
            }

            v88 = v93;
          }

          v61 = v136;
          v95 = *&v152[0];
          if (v92)
          {
            v96 = (*(*&v152[0] + 56) + 16 * v88);
            v97 = *v96;
            *v96 = v150;
            v96[1] = v68;

            sub_1ADDCC35C(v133, v134);
            *(v151 + v136) = v95;
            v7 = v140;
            v98 = v126;
            goto LABEL_77;
          }

          *(*&v152[0] + 8 * (v88 >> 6) + 64) |= 1 << v88;
          v99 = (v95[6] + 16 * v88);
          *v99 = v133;
          v99[1] = v134;
          v100 = (v95[7] + 16 * v88);
          *v100 = v150;
          v100[1] = v68;
          v101 = v95[2];
          v51 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v51)
          {
            goto LABEL_99;
          }

          v95[2] = v102;
          *(v151 + v136) = v95;
          v7 = v140;
LABEL_76:
          v98 = v126;
LABEL_77:
          swift_endAccess();

          sub_1ADDCC35C(v148, v146);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1ADE556B0(0, *(v98 + 2) + 1, 1, v98);
          }

          v104 = *(v98 + 2);
          v103 = *(v98 + 3);
          v105 = v98;
          if (v104 >= v103 >> 1)
          {
            v105 = sub_1ADE556B0((v103 > 1), v104 + 1, 1, v98);
          }

          sub_1ADDCC35C(v144, v138);
          *(v105 + 2) = v104 + 1;
          v106 = &v105[8 * v104];
          i = v105;
          *(v106 + 4) = v150;
          v13 = v142;
          v63 = v128;
        }

        v51 = __OFADD__(v79, v68);
        v80 = v79 + v68;
        if (v51)
        {
          goto LABEL_100;
        }

        v61 = v136;
        if (v80 < 0)
        {
          goto LABEL_101;
        }

        if (v80)
        {
          v82 = sub_1ADF5EFC4(v152, v148, v146);
          if (*v81)
          {
            v81[1] = v80;
          }

          (v82)(v152, 0);
          goto LABEL_76;
        }

        v107 = sub_1ADDDE7CC(v148, v146);
        if (v108)
        {
          v109 = v107;
          v110 = *(v151 + v136);
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v112 = *(v151 + v136);
          *&v152[0] = v112;
          *(v151 + v136) = 0x8000000000000000;
          if (!v111)
          {
            sub_1ADF703A0();
            v112 = *&v152[0];
          }

          sub_1ADDCC35C(*(*(v112 + 48) + 16 * v109), *(*(v112 + 48) + 16 * v109 + 8));
          v113 = *(*(v112 + 56) + 16 * v109);

          sub_1ADF6DA1C(v109, v112);
          *(v151 + v136) = v112;
        }

        swift_endAccess();

        sub_1ADDCC35C(v148, v146);
        v114 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1ADE55498(0, *(v128 + 2) + 1, 1, v128);
        }

        v116 = *(v114 + 2);
        v115 = *(v114 + 3);
        v117 = v114;
        if (v116 >= v115 >> 1)
        {
          v117 = sub_1ADE55498((v115 > 1), v116 + 1, 1, v114);
        }

        *(v117 + 2) = v116 + 1;
        v63 = v117;
        v118 = &v117[16 * v116];
        v13 = v142;
        *(v118 + 4) = v144;
        *(v118 + 5) = v138;
      }
    }
  }

  __break(1u);
LABEL_93:
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
LABEL_101:
  __break(1u);
LABEL_102:
  sub_1AE23E27C();
  __break(1u);
LABEL_103:
  sub_1AE23DC5C();
  __break(1u);
LABEL_104:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADEB41A8(uint64_t a1, char a2)
{
  v33 = a1;
  v3 = type metadata accessor for Timestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || *(v33 + 16))
  {
    v7 = v32;
    sub_1ADDD7B68(v6);
    sub_1ADDD872C(v6, type metadata accessor for Timestamp);
    v8 = v33 + 56;
    v9 = 1 << *(v33 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v33 + 56);
    v30 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    v29 = (v7 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v16 = v13;
LABEL_13:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = (*(v33 + 48) + ((v16 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];
      swift_beginAccess();
      v35 = v19;
      v36 = v20;
      sub_1ADDD86D8(v19, v20);
      sub_1ADDD86D8(v19, v20);
      v22 = sub_1ADDE13D8(v34, &v35);
      if (*(v21 + 16))
      {
        v23 = v21;
        v24 = v29;
        swift_beginAccess();
        v25 = *v24;
        v26 = v24[1];
        v27 = *(v23 + 16);
        v31 = *(v23 + 24);
        *(v23 + 16) = v25;
        *(v23 + 24) = v26;

        v22(v34, 0);
        swift_endAccess();

        sub_1ADDCC35C(v19, v20);
        v14 = v35;
        v15 = v36;
      }

      else
      {
        v22(v34, 0);
        sub_1ADDCC35C(v35, v36);
        swift_endAccess();
        v14 = v19;
        v15 = v20;
      }

      sub_1ADDCC35C(v14, v15);
      v13 = v16;
    }

    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADEB4434(uint64_t *a1, uint64_t *a2)
{
  v229 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v163 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v168 = a1[1];
  v169 = v8;
  v9 = *a2;
  v166 = a2[1];
  v167 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v12 = sub_1ADDD9ECC(v10);
  v184 = v11;
  v185 = v12;
  v13 = v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v164 = 0;
  swift_beginAccess();
  v165 = v5;
  v14 = *(v5 + 20);
  v170 = v13;
  v15 = (v13 + v14);
  v16 = *v15;
  v17 = v15[1];
  sub_1AE23C1FC();
  v18 = &qword_1EB5BA9E8;
  for (i = &qword_1AE251DE0; ; sub_1ADDCEDE0(&v213, v18, i))
  {
    v20 = v177;
    if (v177 < DWORD1(v177))
    {
      v21 = *(&v176 + 1);
      LODWORD(v177) = v177 + 1;
      goto LABEL_5;
    }

    v21 = sub_1AE23C20C();
    if (!v21)
    {
      v227 = v182;
      v228[0] = v183[0];
      *(v228 + 11) = *(v183 + 11);
      v223 = v178;
      v224 = v179;
      v226 = v181;
      v225 = v180;
      v221 = v176;
      v222 = v177;
      sub_1ADDCEDE0(&v221, &qword_1EB5BA9F0, &unk_1AE25A260);
      v55 = (v170 + *(v165 + 20));
      v56 = *v55;
      v57 = v55[1];
      sub_1AE23C1FC();
      if (v169)
      {
        v58 = 0;
      }

      else
      {
        v58 = v168 == 0xC000000000000000;
      }

      v59 = !v58;
      LODWORD(v171) = v59;
      v173 = v168 >> 62;
      v60 = __OFSUB__(HIDWORD(v169), v169);
      v159 = v60;
      v158 = HIDWORD(v169) - v169;
      v162 = BYTE6(v168);
      if (v167)
      {
        v61 = 0;
      }

      else
      {
        v61 = v166 == 0xC000000000000000;
      }

      v62 = !v61;
      v161 = v62;
      v172 = v166 >> 62;
      v63 = __OFSUB__(HIDWORD(v167), v167);
      v157 = v63;
      v156 = HIDWORD(v167) - v167;
      v160 = BYTE6(v166);
      while (1)
      {
        while (1)
        {
          v64 = v214;
          if (v214 >= DWORD1(v214))
          {
            v65 = sub_1AE23C20C();
            if (!v65)
            {
              v211 = v219;
              v212[0] = v220[0];
              *(v212 + 11) = *(v220 + 11);
              v207 = v215;
              v208 = v216;
              v209 = v217;
              v210 = v218;
              v205 = v213;
              v206 = v214;
              sub_1ADDCEDE0(&v205, &qword_1EB5BA9F0, &unk_1AE25A260);
              v135 = v163;
              sub_1ADECD9E8(v170, v163, type metadata accessor for PartiallyOrderedReferenceMap);
              v136 = (v135 + *(v165 + 20));
              v137 = *v136;
              v138 = v136[1];
              sub_1AE23C1FC();
              sub_1ADDD872C(v135, type metadata accessor for PartiallyOrderedReferenceMap);
              do
              {
                v153 = v198;
                if (v198 < DWORD1(v198))
                {
                  v139 = *(&v197 + 1);
                  LODWORD(v198) = v198 + 1;
                }

                else
                {
                  v139 = sub_1AE23C20C();
                  if (!v139)
                  {
                    v195 = v203;
                    v196[0] = v204[0];
                    *(v196 + 11) = *(v204 + 11);
                    v191 = v199;
                    v192 = v200;
                    v193 = v201;
                    v194 = v202;
                    v189 = v197;
                    v190 = v198;
                    sub_1ADDFD834(&v189);
                    v52 = 1;
                    goto LABEL_19;
                  }
                }

                v140 = (v139 + *(v139 + 24) + (~v153 << 6));
                v141 = v140[5];
                v143 = v140[2];
                v142 = v140[3];
                v187 = v140[4];
                v188 = v141;
                v186[0] = v143;
                v186[1] = v142;
                v144 = v143;
                sub_1ADDCEE40(v186, &v189, &qword_1EB5BA9E8, &qword_1AE251DE0);
                sub_1ADDCEE40(v186, &v189, &qword_1EB5BA9E8, &qword_1AE251DE0);
                sub_1ADDCC35C(v144, *(&v144 + 1));
                v145 = *(&v187 + 1);

                v146 = *(v145 + 16);

                v147 = (v170 + *(v165 + 28));
                v148 = *v147;
                v149 = v147[1];
                sub_1AE23E31C();

                sub_1AE23BECC();
                v150 = sub_1AE23E34C();
                v152 = sub_1ADECB280(0, v144, *(&v144 + 1), v150, v148, v151);

                sub_1ADDCEDE0(v186, &qword_1EB5BA9E8, &qword_1AE251DE0);
              }

              while ((((v146 == 0) ^ v152) & 1) != 0);
              v195 = v203;
              v196[0] = v204[0];
              *(v196 + 11) = *(v204 + 11);
              v191 = v199;
              v192 = v200;
              v193 = v201;
              v194 = v202;
              v189 = v197;
              v190 = v198;
              sub_1ADDFD834(&v189);
              goto LABEL_18;
            }
          }

          else
          {
            v65 = *(&v213 + 1);
            LODWORD(v214) = v214 + 1;
          }

          v66 = (v65 + *(v65 + 24) + (~v64 << 6));
          v68 = v66[4];
          v67 = v66[5];
          v69 = v66[3];
          v197 = v66[2];
          v198 = v69;
          v199 = v68;
          v200 = v67;
          v70 = *(&v197 + 1);
          v71 = v197;
          v72 = v69;
          v73 = v68;
          sub_1ADDCEE40(&v197, &v205, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1ADDCEE40(&v197, &v205, &qword_1EB5BA9E8, &qword_1AE251DE0);

          v174 = v73;

          v175 = v72;

          v74 = v168;
          if (v70 >> 60 == 15)
          {
            break;
          }

          if (v168 >> 60 != 15)
          {
            v86 = v70 >> 62;
            v87 = v169;
            if (v70 >> 62 == 3)
            {
              if (v71)
              {
                v88 = 0;
              }

              else
              {
                v88 = v70 == 0xC000000000000000;
              }

              v90 = !v88 || v173 < 3;
              if (((v90 | v171) & 1) == 0)
              {
LABEL_70:
                sub_1ADDE0F78(0, 0xC000000000000000);
                sub_1ADDE0F78(0, 0xC000000000000000);
                v91 = 0;
                v92 = 0xC000000000000000;
                goto LABEL_119;
              }

LABEL_108:
              v107 = 0;
              if (v173 > 1)
              {
                goto LABEL_109;
              }

LABEL_105:
              v110 = v162;
              if (v173)
              {
                v110 = v158;
                if (v159)
                {
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
                }
              }

LABEL_111:
              if (v107 == v110)
              {
                if (v107 < 1)
                {
                  goto LABEL_118;
                }

                if (v86 > 1)
                {
                  if (v86 == 2)
                  {
                    v119 = *(v71 + 16);
                    v154 = *(v71 + 24);
                    v155 = v119;
                    sub_1ADDE0F78(v169, v168);
                    sub_1ADDE0F78(v71, v70);
                    sub_1ADDD86D8(v71, v70);
                    sub_1ADDE0F78(v87, v74);
                    v120 = sub_1AE23BB7C();
                    if (v120)
                    {
                      v121 = v120;
                      v122 = sub_1AE23BBAC();
                      v123 = v155;
                      if (__OFSUB__(v155, v122))
                      {
                        goto LABEL_173;
                      }

                      v124 = v155 - v122 + v121;
                    }

                    else
                    {
                      v124 = 0;
                      v123 = v155;
                    }

                    if (__OFSUB__(v154, v123))
                    {
                      goto LABEL_172;
                    }

                    sub_1AE23BB9C();
                    v131 = v124;
                    goto LABEL_153;
                  }

                  *(&v205 + 6) = 0;
                  *&v205 = 0;
                  sub_1ADDE0F78(v169, v168);
                  sub_1ADDE0F78(v71, v70);
                  sub_1ADDD86D8(v71, v70);
                  sub_1ADDE0F78(v87, v74);
LABEL_147:
                  v129 = v164;
                  sub_1ADDD8820(&v205, v87, v74, &v189);
                  v164 = v129;
                  sub_1ADDCC35C(v71, v70);
                  sub_1ADDE158C(v87, v74);
                  sub_1ADDE158C(v87, v74);
                  v130 = v189;
                }

                else
                {
                  if (!v86)
                  {
                    *&v205 = v71;
                    WORD4(v205) = v70;
                    BYTE10(v205) = BYTE2(v70);
                    BYTE11(v205) = BYTE3(v70);
                    BYTE12(v205) = BYTE4(v70);
                    BYTE13(v205) = BYTE5(v70);
                    sub_1ADDE0F78(v169, v168);
                    sub_1ADDE0F78(v71, v70);
                    sub_1ADDD86D8(v71, v70);
                    sub_1ADDE0F78(v87, v74);
                    goto LABEL_147;
                  }

                  v155 = (v71 >> 32) - v71;
                  if (v71 >> 32 < v71)
                  {
                    goto LABEL_171;
                  }

                  sub_1ADDE0F78(v169, v168);
                  sub_1ADDE0F78(v71, v70);
                  sub_1ADDD86D8(v71, v70);
                  sub_1ADDE0F78(v87, v74);
                  v125 = sub_1AE23BB7C();
                  if (v125)
                  {
                    v126 = v125;
                    v127 = sub_1AE23BBAC();
                    if (__OFSUB__(v71, v127))
                    {
                      goto LABEL_174;
                    }

                    v128 = v71 - v127 + v126;
                  }

                  else
                  {
                    v128 = 0;
                  }

                  sub_1AE23BB9C();
                  v131 = v128;
LABEL_153:
                  v133 = v168;
                  v132 = v169;
                  v134 = v164;
                  sub_1ADDD8820(v131, v169, v168, &v205);
                  v164 = v134;
                  sub_1ADDCC35C(v71, v70);
                  sub_1ADDE158C(v132, v133);
                  sub_1ADDE158C(v132, v133);
                  v130 = v205;
                }

                sub_1ADDCC35C(v71, v70);
                sub_1ADDE158C(v71, v70);
                if (v130)
                {
                  goto LABEL_155;
                }

                goto LABEL_50;
              }
            }

            else
            {
              if (v86 <= 1)
              {
                if (v86)
                {
                  LODWORD(v107) = HIDWORD(v71) - v71;
                  if (__OFSUB__(HIDWORD(v71), v71))
                  {
                    goto LABEL_165;
                  }

                  v107 = v107;
                  if (v173 > 1)
                  {
                    goto LABEL_109;
                  }
                }

                else
                {
                  v107 = BYTE6(v70);
                  if (v173 > 1)
                  {
                    goto LABEL_109;
                  }
                }

                goto LABEL_105;
              }

              if (v86 != 2)
              {
                goto LABEL_108;
              }

              v109 = *(v71 + 16);
              v108 = *(v71 + 24);
              v101 = __OFSUB__(v108, v109);
              v107 = v108 - v109;
              if (v101)
              {
                goto LABEL_166;
              }

              if (v173 <= 1)
              {
                goto LABEL_105;
              }

LABEL_109:
              if (v173 == 2)
              {
                v112 = *(v169 + 16);
                v111 = *(v169 + 24);
                v101 = __OFSUB__(v111, v112);
                v110 = v111 - v112;
                if (v101)
                {
                  goto LABEL_164;
                }

                goto LABEL_111;
              }

              if (!v107)
              {
LABEL_118:
                sub_1ADDE0F78(v169, v168);
                sub_1ADDE0F78(v71, v70);
                v91 = v87;
                v92 = v74;
                goto LABEL_119;
              }
            }

            sub_1ADDE0F78(v169, v168);
            sub_1ADDE0F78(v71, v70);
            sub_1ADDE158C(v87, v74);
            sub_1ADDCC35C(v71, v70);
            v76 = v71;
            v77 = v70;
            goto LABEL_49;
          }

          v75 = v169;
          sub_1ADDE0F78(v169, v168);
          sub_1ADDE0F78(v71, v70);
          sub_1ADDCC35C(v71, v70);
LABEL_48:
          sub_1ADDE158C(v71, v70);
          v76 = v75;
          v77 = v74;
LABEL_49:
          sub_1ADDE158C(v76, v77);
LABEL_50:
          sub_1ADDCEE40(&v197, &v205, &qword_1EB5BA9E8, &qword_1AE251DE0);

          if (v70 >> 60 == 15)
          {
            v78 = v166;
            v79 = v167;
            sub_1ADDE0F78(v167, v166);
            if (v78 >> 60 == 15)
            {
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          v78 = v166;
          v79 = v167;
          if (v166 >> 60 == 15)
          {
            sub_1ADDE0F78(v167, v166);
            sub_1ADDE0F78(v71, v70);
            sub_1ADDCC35C(v71, v70);
LABEL_55:
            sub_1ADDE158C(v71, v70);
            v80 = v79;
            v81 = v78;
LABEL_56:
            sub_1ADDE158C(v80, v81);
LABEL_57:
            sub_1ADDCEE40(&v197, &v205, &qword_1EB5BA9E8, &qword_1AE251DE0);

            swift_beginAccess();
            *&v186[0] = v71;
            *(&v186[0] + 1) = v70;
            v83 = sub_1AE031554(&v205, v186);
            v84 = *(v82 + 16);
            if (v84)
            {
              v85 = *(v82 + 8);
              (v83)(&v205, 0);
              swift_endAccess();
              sub_1ADDCC35C(*&v186[0], *(&v186[0] + 1));
            }

            else
            {
              (v83)(&v205, 0);
              sub_1ADDCC35C(*&v186[0], *(&v186[0] + 1));
              swift_endAccess();
              v85 = 0;
            }

            sub_1ADDCEE40(&v197, &v205, &qword_1EB5BA9E8, &qword_1AE251DE0);

            v103 = v184;
            if (*(v184 + 16) && (v104 = sub_1ADDDE7CC(v71, v70), (v105 & 1) != 0))
            {
              v106 = *(*(v103 + 56) + 8 * v104);
              sub_1ADDCC35C(v71, v70);
              sub_1ADDCEDE0(&v197, &qword_1EB5BA9E8, &qword_1AE251DE0);
              if (!v84 || v85 != v106)
              {
LABEL_162:
                v211 = v219;
                v212[0] = v220[0];
                *(v212 + 11) = *(v220 + 11);
                v207 = v215;
                v208 = v216;
                v209 = v217;
                v210 = v218;
                v205 = v213;
                v206 = v214;
                v51 = &v205;
                goto LABEL_16;
              }
            }

            else
            {
              sub_1ADDCC35C(v71, v70);
              sub_1ADDCEDE0(&v197, &qword_1EB5BA9E8, &qword_1AE251DE0);
              if (v84)
              {
                goto LABEL_162;
              }
            }
          }

          else
          {
            v93 = v70 >> 62;
            if (v70 >> 62 == 3)
            {
              if (v71)
              {
                v94 = 0;
              }

              else
              {
                v94 = v70 == 0xC000000000000000;
              }

              v95 = v172;
              v97 = !v94 || v172 < 3;
              if (((v97 | v161) & 1) == 0)
              {
                goto LABEL_70;
              }

              v98 = 0;
              if (v172 > 1)
              {
LABEL_83:
                if (v95 != 2)
                {
                  if (v98)
                  {
                    goto LABEL_134;
                  }

LABEL_135:
                  sub_1ADDE0F78(v167, v166);
                  sub_1ADDE0F78(v71, v70);
                  v91 = v79;
                  v92 = v78;
LABEL_119:
                  sub_1ADDE158C(v91, v92);
                  sub_1ADDCC35C(v71, v70);
                  sub_1ADDE158C(v71, v70);
                  goto LABEL_155;
                }

                v100 = *(v167 + 16);
                v99 = *(v167 + 24);
                v101 = __OFSUB__(v99, v100);
                v102 = v99 - v100;
                if (v101)
                {
                  goto LABEL_168;
                }

                goto LABEL_130;
              }
            }

            else
            {
              v95 = v172;
              if (v93 == 2)
              {
                v114 = *(v71 + 16);
                v113 = *(v71 + 24);
                v101 = __OFSUB__(v113, v114);
                v98 = v113 - v114;
                if (v101)
                {
                  goto LABEL_169;
                }

                if (v172 > 1)
                {
                  goto LABEL_83;
                }
              }

              else if (v93 == 1)
              {
                LODWORD(v98) = HIDWORD(v71) - v71;
                if (__OFSUB__(HIDWORD(v71), v71))
                {
                  goto LABEL_170;
                }

                v98 = v98;
                if (v172 > 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v98 = BYTE6(v70);
                if (v172 > 1)
                {
                  goto LABEL_83;
                }
              }
            }

            v102 = v160;
            if (v95)
            {
              v102 = v156;
              if (v157)
              {
                goto LABEL_167;
              }
            }

LABEL_130:
            if (v98 != v102)
            {
LABEL_134:
              sub_1ADDE0F78(v167, v166);
              sub_1ADDE0F78(v71, v70);
              sub_1ADDE158C(v79, v78);
              sub_1ADDCC35C(v71, v70);
              v80 = v71;
              v81 = v70;
              goto LABEL_56;
            }

            if (v98 < 1)
            {
              goto LABEL_135;
            }

            v115 = v166;
            sub_1ADDD86D8(v71, v70);
            sub_1ADDE0F78(v79, v78);
            sub_1ADDE0F78(v71, v70);
            sub_1ADDE0F78(v79, v78);
            v116 = v78;
            v117 = v164;
            v118 = sub_1ADDD1544(v71, v70, v79, v116);
            v164 = v117;
            sub_1ADDCC35C(v71, v70);
            sub_1ADDE158C(v79, v115);
            sub_1ADDCC35C(v71, v70);
            sub_1ADDE158C(v71, v70);
            if ((v118 & 1) == 0)
            {
              goto LABEL_57;
            }

LABEL_155:
            sub_1ADDCEDE0(&v197, &qword_1EB5BA9E8, &qword_1AE251DE0);
          }
        }

        v75 = v169;
        sub_1ADDE0F78(v169, v168);
        if (v74 >> 60 != 15)
        {
          goto LABEL_48;
        }

LABEL_52:
        sub_1ADDCEDE0(&v197, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDE158C(v71, v70);
      }
    }

LABEL_5:
    v22 = (v21 + *(v21 + 24) + (~v20 << 6));
    v23 = v22[5];
    v25 = v22[2];
    v24 = v22[3];
    v215 = v22[4];
    v216 = v23;
    v213 = v25;
    v214 = v24;
    v26 = type metadata accessor for RetainVisitor();
    v27 = swift_allocObject();
    sub_1ADDCEE40(&v213, &v221, v18, i);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v30 = sub_1ADDD9ECC(v28);
    *(v27 + 16) = v29;
    v172 = v27 + 16;
    *(v27 + 24) = v30;
    v31 = v214;
    v32 = v215;
    v33 = i;
    v34 = v216;
    sub_1ADDCEE40(&v213, &v221, v18, v33);

    v173 = v34;

    v174 = *(&v32 + 1);

    v175 = v32;

    if (!v31)
    {
      goto LABEL_175;
    }

    i = v33;
    v35 = v18;
    v37 = *(&v213 + 1);
    v36 = v213;
    sub_1ADDCC35C(v213, *(&v213 + 1));
    *&v223 = &off_1F23C4550;
    *(&v222 + 1) = v26;
    *&v221 = v27;
    v38 = *(*v31 + 128);
    swift_retain_n();
    v38(&v221);

    v171 = v27;

    __swift_destroy_boxed_opaque_existential_1(&v221);
    sub_1ADDCEE40(&v213, &v221, v35, i);

    swift_beginAccess();
    v197 = __PAIR128__(v37, v36);
    v40 = sub_1AE031554(&v221, &v197);
    v18 = v35;
    if (v39[2])
    {
      v41 = v39[4];
      v42 = v39[5];

      (v40)(&v221, 0);
      swift_endAccess();
      sub_1ADDCC35C(v197, *(&v197 + 1));
    }

    else
    {
      (v40)(&v221, 0);
      sub_1ADDCC35C(v197, *(&v197 + 1));
      swift_endAccess();
      v41 = 0;
      v42 = 0;
    }

    swift_beginAccess();
    v43 = v171;
    v44 = *(v171 + 16);
    v45 = *(v171 + 24);
    if (!v41)
    {
      v50 = *(v171 + 16);

      sub_1ADDCEDE0(&v213, &qword_1EB5BA9E8, &qword_1AE251DE0);

      goto LABEL_15;
    }

    v46 = *(v171 + 16);

    if ((sub_1ADF65450(v41, v44) & 1) == 0)
    {
      break;
    }

    v47 = sub_1ADF655B8(v42, v45);

    sub_1ADECDB08(v41, v42, MEMORY[0x1E69E7CF8]);
    if (!v47)
    {
      v227 = v182;
      v228[0] = v183[0];
      *(v228 + 11) = *(v183 + 11);
      v223 = v178;
      v224 = v179;
      v226 = v181;
      v225 = v180;
      v221 = v176;
      v222 = v177;
      sub_1ADDCEDE0(&v221, &qword_1EB5BA9F0, &unk_1AE25A260);
      sub_1ADDCEDE0(&v213, &qword_1EB5BA9E8, &qword_1AE251DE0);

      goto LABEL_18;
    }

    v48 = *(v43 + 16);
    v49 = *(v43 + 24);

    sub_1ADDDC8DC(v48, v49);
  }

  sub_1ADDCEDE0(&v213, &qword_1EB5BA9E8, &qword_1AE251DE0);

  sub_1ADECDB08(v41, v42, MEMORY[0x1E69E7CF8]);
LABEL_15:
  v227 = v182;
  v228[0] = v183[0];
  *(v228 + 11) = *(v183 + 11);
  v223 = v178;
  v224 = v179;
  v226 = v181;
  v225 = v180;
  v221 = v176;
  v222 = v177;
  v51 = &v221;
LABEL_16:
  sub_1ADDCEDE0(v51, &qword_1EB5BA9F0, &unk_1AE25A260);
LABEL_18:
  v52 = 0;
LABEL_19:

  v53 = *MEMORY[0x1E69E9840];
  return v52;
}