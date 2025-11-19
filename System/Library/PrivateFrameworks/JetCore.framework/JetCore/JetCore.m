uint64_t sub_1DB2F6DD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DB50A650();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DB2F6E04()
{
  v1 = *(v0 + 24);

  sub_1DB3013E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DB2F6E4C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F6E84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F6EE0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2F6F60()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2F6FE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7020()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2F7068()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F70A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F70F0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F7134()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 5);

  v7 = *(v0 + 6);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F7270()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F72AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F7318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F7388()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F73C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  v3 = *(v0 + 224);

  v4 = *(v0 + 240);

  v5 = *(v0 + 248);

  v6 = *(v0 + 256);

  v7 = *(v0 + 264);

  v8 = *(v0 + 280);

  return MEMORY[0x1EEE6BDD0](v0, 288, 7);
}

uint64_t sub_1DB2F7468()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  v3 = *(v0 + 224);

  v4 = *(v0 + 240);

  v5 = *(v0 + 248);

  v6 = *(v0 + 256);

  v7 = *(v0 + 264);

  return MEMORY[0x1EEE6BDD0](v0, 273, 7);
}

uint64_t sub_1DB2F7500()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7548()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F759C()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v2 = sub_1DB50AD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1DB2F7708@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = ScalarDictionary.subscript.getter(*a2, a2[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1DB2F775C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = ScalarDictionary.subscript.getter(*a2, a2[1]);
  *a3 = result;
  return result;
}

uint64_t sub_1DB2F77B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F77E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MonotonicTimeReference();
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

uint64_t sub_1DB2F78A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MonotonicTimeReference();
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

uint64_t sub_1DB2F7964()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F79B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F7A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F7A90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F7ADC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2F7B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F7BCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7C0C()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2F7C54()
{
  v1 = v0[4];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2F7C9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7CE4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7D20()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2F7D70()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2F7DC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F7DF8()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2F7E50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F7E88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7ED8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7F18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43930, &qword_1DB512568);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43938, &qword_1DB512570);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1DB2F7FD0()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v3 = sub_1DB50AB10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 112) & ~v5;
  v7 = *(v4 + 64);
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[6];

  v10 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1DB2F8150()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v3 = sub_1DB50AB10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1DB2F82EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F83C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = sub_1DB50ABF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1DB2F8470()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F84E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DB2F8518@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DB2F8590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DB2F8658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F8708()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F8770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DB2F87E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F8830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F8870(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB509CA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F891C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB509CA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F89C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB509930();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F8A70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB509930();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F8B14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DB2F8B80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F8BB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F8C18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F8C50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F8C94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F8CE8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F8D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(v5 - 8);
  type metadata accessor for NetRequest.ScopeContainer();
  return sub_1DB397F20(a1);
}

__n128 sub_1DB2F8DB4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1DB2F8DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  return sub_1DB398054(a1);
}

__n128 sub_1DB2F8E2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DB2F8E38@<X0>(void *a1@<X8>)
{
  result = NetRequest.subscript.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1DB2F8E74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;

  return sub_1DB398060(&v7, v4, v5);
}

uint64_t sub_1DB2F8ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DB2F8F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DB2F9050()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

double sub_1DB2F90CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30C4B8(a1 + 24, v6, &qword_1ECC44520, &qword_1DB5151E0);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1DB2F9140@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F914C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 120);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_1DB2F9190@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F919C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 136);

  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  return result;
}

uint64_t sub_1DB2F91EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 144);

  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_1DB2F9230(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NetRequest();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F92DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F9380()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F93E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F941C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1DB2F9478(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1DB2F94D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1DB2F94E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F9520()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9558()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F95B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F95E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F96B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F9740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F974C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1DB2F97A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1DB2F97BC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

uint64_t sub_1DB2F97D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NetRequest();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F987C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F993C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9974()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F99C0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F99F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB3BEB98(v0[7], v0[8]);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F9A48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F9A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9AC0()
{
  sub_1DB3BEB98(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9B24()
{
  sub_1DB3BEB98(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9B7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9BC8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9C08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9C58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9C98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9CD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9D20()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9D70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9DAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9E10()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9E70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9EB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9EF4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FA024@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1DB3E339C;
  a2[1] = v5;
}

uint64_t sub_1DB2FA094()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1DB3E4898(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB2FA118()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  sub_1DB3013E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2FA170(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FA21C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FA324()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA37C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FA3BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DB2FA3F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FA51C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1DB2FA5E4()
{
  v0 = sub_1DB50B680();

  return v0 != 0;
}

uint64_t sub_1DB2FA62C()
{
  v11 = *(v0 + 400);
  v12 = *(v0 + 408);
  v9 = *(v0 + 368);
  v10 = *(v0 + 384);
  v7 = *(v0 + 336);
  v8 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 288);
  v2 = *(v0 + 240);
  sub_1DB403808(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), *(v0 + 256), *(v0 + 264), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1));

  return MEMORY[0x1EEE6BDD0](v0, 416, 7);
}

uint64_t sub_1DB2FA6F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FA734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1DB2FA79C()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DB2FA8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DB2FA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB50A030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FAA4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB50A030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FAAF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FAB64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FAC20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FACD4()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FAD98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FADF4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URLJetPackAssetFetcher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FAEA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLJetPackAssetFetcher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FAF44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2FAF8C()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  sub_1DB3BEB98(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1DB2FB074()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FB0B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FB0EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FB130()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 144) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = *(v0 + v3);
  swift_unknownObjectRelease();
  v9 = v0 + v3 + v1[7];

  if (*(v9 + 1))
  {
    v10 = *(v9 + 2);
  }

  v11 = type metadata accessor for URLJetPackAssetFetcher();
  v12 = *(v11 + 24);
  v13 = sub_1DB509CA0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  v15 = *&v9[*(v11 + 28)];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2FB2C4()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 73) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[6];

  v8 = v0[8];

  v9 = *(v0 + v3);
  swift_unknownObjectRelease();
  v10 = v0 + v3 + v1[7];

  if (*(v10 + 1))
  {
    v11 = *(v10 + 2);
  }

  v12 = type metadata accessor for URLJetPackAssetFetcher();
  v13 = *(v12 + 24);
  v14 = sub_1DB509CA0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v10[v13], 1, v14))
  {
    (*(v15 + 8))(&v10[v13], v14);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *&v10[*(v12 + 28)];

  v19 = *(v0 + v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + v17));
  __swift_destroy_boxed_opaque_existential_0((v0 + v17 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v17 + 80, v2 | 7);
}

uint64_t sub_1DB2FB47C()
{
  v2 = v0[2];
  v1 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 112) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = v5 | v9;
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  v13 = *(v0 + v7);

  (*(v8 + 8))(v0 + v10, v2);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v11, v12 | 7);
}

uint64_t sub_1DB2FB5F4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = v5 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  (*(v7 + 8))(&v0[v9], v2);
  v15 = *&v0[v11];

  __swift_destroy_boxed_opaque_existential_0(&v0[v12]);
  __swift_destroy_boxed_opaque_existential_0(&v0[v12 + 40]);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 80, v10 | 7);
}

uint64_t sub_1DB2FB790()
{
  v1 = (type metadata accessor for URLJetPackAssetRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2FB884()
{
  v1 = (type metadata accessor for URLJetPackAssetRequest() - 8);
  v19 = *(*v1 + 80);
  v2 = (v19 + 96) & ~v19;
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v18 = *(*(v4 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = v0 + v2;
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  v17 = *(v9 + 8);
  v17(v7, v8);
  v10 = *(v7 + v1[8] + 8);

  v11 = *(v0 + v3);

  v12 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
    v13 = *(v12 + 16);
  }

  v14 = *(v4 + 24);
  if (!(*(v9 + 48))(v12 + v14, 1, v8))
  {
    v17(v12 + v14, v8);
  }

  v15 = *(v12 + *(v4 + 28));

  return MEMORY[0x1EEE6BDD0](v0, v6 + v18, v19 | v5 | 7);
}

uint64_t sub_1DB2FBAA0()
{
  v1 = (type metadata accessor for URLJetPackAssetRequest() - 8);
  v23 = *(*v1 + 80);
  v2 = (v23 + 40) & ~v23;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v22 = *(*(v4 - 8) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = v0 + v2;
  v10 = sub_1DB509CA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = *(v9 + v1[8] + 8);

  v14 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
    v15 = *(v14 + 16);
  }

  v16 = *(v4 + 24);
  if (!(*(v11 + 48))(v14 + v16, 1, v10))
  {
    v12(v14 + v16, v10);
  }

  v17 = (v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v14 + *(v4 + 28));

  v20 = *(v0 + v17);

  __swift_destroy_boxed_opaque_existential_0((v0 + v18));
  __swift_destroy_boxed_opaque_existential_0((v0 + v18 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v18 + 80, v23 | v5 | 7);
}

uint64_t get_enum_tag_for_layout_string_7JetCore17ContainerLocationC0C5ErrorO_0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DB2FBD50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DB2FBD68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FBE20()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FBE90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FBEC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FBF84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FC034(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FC0F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FC1A0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC1D8()
{
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  v1 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2FC220(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v6 = *a1;
  v4 = type metadata accessor for Lazy();
  return Lazy.wrappedValue.getter(v4);
}

uint64_t sub_1DB2FC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Lazy();
  return sub_1DB472944(a1, v6);
}

uint64_t sub_1DB2FC2C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(*(v0 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9) & ~v9;
  v11 = v3 | v9;
  v12 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, AssociatedTypeWitness);
  v13 = *(v0 + v12);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v11 | 7);
}

uint64_t sub_1DB2FC430()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC4C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1DB50ABD0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1DB2FC570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = sub_1DB50ABD0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DB2FC5E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC624()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43930, &qword_1DB512568);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43938, &qword_1DB512570);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1DB2FC744()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  sub_1DB3013E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2FC7C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC838()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FC88C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC8C4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC8FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2FC94C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC994(char a1)
{
  if (a1)
  {
    return 0x6C616974696E6924;
  }

  else
  {
    return 0x746E65746E6924;
  }
}

uint64_t sub_1DB2FC9CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FCA04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FCA60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DB2FCAA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  result = Preferences.subscript.getter(v9, a2, v5);
  *a4 = result;
  a4[1] = &off_1F56FF7E8;
  return result;
}

__n128 sub_1DB2FCB4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DB2FCBD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2FCC34()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FCC84()
{
  v1 = v0[6];

  v2 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DB2FCCCC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FCD04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FCD44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FCD94()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FCDD4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FCEC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FCF94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = *(v0 + 80);

  sub_1DB3013E0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v3 = *(v0 + 136);

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DB2FCFF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FD030(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1DB2FD040(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DB2FD050()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id sub_1DB2FD0AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedLongLongValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD0E0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 unsignedIntValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD114@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 unsignedShortValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD148@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unsignedCharValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD17C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedIntegerValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD1B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longLongValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD1E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 intValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD218@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 shortValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD24C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 charValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD280@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD2B4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v4;
  return result;
}

id sub_1DB2FD2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1DB2FD320()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FD368()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FD47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DB2FD548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DB2FD604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();

  v7 = *(v0 + 64);

  if (*(v0 + 72))
  {
    v8 = *(v0 + 80);
  }

  v9 = (v3 + 120) & ~v3;
  v10 = *(v0 + 96);

  v11 = *(v0 + 104);
  swift_unknownObjectRelease();
  v12 = *(v0 + 112);

  (*(v2 + 8))(v0 + v9, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v4, v3 | 7);
}

uint64_t sub_1DB2FD714()
{
  v1 = type metadata accessor for URLJetPackAssetRequest();
  v30 = *(*(v1 - 8) + 80);
  v2 = (v30 + 112) & ~v30;
  v3 = *(*(v1 - 8) + 64);
  v29 = type metadata accessor for URLJetPackAssetFetcher();
  v27 = *(*(v29 - 8) + 80);
  v4 = (v2 + v3 + v27) & ~v27;
  v26 = *(*(v29 - 8) + 64);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v5 = *(v28 - 8);
  v24 = *(v5 + 80);
  v25 = *(v5 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();

  v8 = *(v0 + 64);

  if (*(v0 + 72))
  {
    v9 = *(v0 + 80);
  }

  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = v0 + v2;
  v13 = sub_1DB509CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v12, v13);
  v16 = *(v12 + *(v1 + 24) + 8);

  v17 = v4;
  v18 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
    v19 = *(v18 + 16);
  }

  v20 = *(v29 + 24);
  if (!(*(v14 + 48))(v18 + v20, 1, v13))
  {
    v15(v18 + v20, v13);
  }

  v21 = (v26 + v17 + v24 + 2) & ~v24;
  v22 = *(v18 + *(v29 + 28));

  (*(v5 + 8))(v0 + v21, v28);

  return MEMORY[0x1EEE6BDD0](v0, v21 + v25, v30 | v27 | v24 | 7);
}

uint64_t sub_1DB2FD9F4()
{
  v1 = type metadata accessor for URLJetPackAssetRequest();
  v31 = *(*(v1 - 8) + 80);
  v2 = (v31 + 104) & ~v31;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = type metadata accessor for URLJetPackAssetFetcher();
  v28 = *(*(v30 - 8) + 80);
  v4 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 8) & ~v28;
  v27 = *(*(v30 - 8) + 64);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v5 = *(v29 - 8);
  v25 = *(v5 + 80);
  v26 = *(v5 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();

  v8 = *(v0 + 64);

  if (*(v0 + 72))
  {
    v9 = *(v0 + 80);
  }

  v10 = *(v0 + 96);

  v11 = v0 + v2;
  v12 = sub_1DB509CA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v11, v12);
  v15 = *(v11 + *(v1 + 24) + 8);

  v16 = *(v0 + v3);

  v17 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  v18 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 8) & ~v28;
  v19 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
    v20 = *(v19 + 16);
  }

  v21 = *(v30 + 24);
  if (!(*(v13 + 48))(v19 + v21, 1, v12))
  {
    v14(v19 + v21, v12);
  }

  v22 = (v27 + v18 + v25 + 2) & ~v25;
  v23 = *(v19 + *(v30 + 28));

  (*(v5 + 8))(v0 + v22, v29);

  return MEMORY[0x1EEE6BDD0](v0, v22 + v26, v31 | v28 | v25 | 7);
}

uint64_t sub_1DB2FDD14()
{
  v1 = (type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = (v0 + v3 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = v2 | v7;
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + v7 + 8) & ~v7;
  v18 = *(v0 + v15);
  swift_unknownObjectRelease();
  v19 = *(v0 + v16);

  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v8, v14 | 7);
}

uint64_t sub_1DB2FDEDC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v16 = *(v8 + 64);
  v11 = v3 | v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);
  swift_unknownObjectRelease();
  v14 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v16, v11 | 7);
}

uint64_t sub_1DB2FE0A8()
{
  if (*(v0 + 16))
  {

    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FE0F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2FE17C()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2FE1C4()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FE21C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FE31C(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = *a3;

  return sub_1DB4F0B98(a1, v4);
}

uint64_t sub_1DB2FE3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FE480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DB509DD0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DB2FE5DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1DB509DD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FE6B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FE824(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FE8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FEA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DB2FEB0C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DB2FEB60(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id JEGestaltGetSystemVersion()
{
  v4 = 0uLL;
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = v0;
  if (v0)
  {
    [v0 operatingSystemVersion];
  }

  else
  {
    v4 = 0uLL;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", v4, 0];

  return v2;
}

__CFString *JEGestaltGetMarketingDeviceFamilyName()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetMarketingName()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetDeviceClass()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetProductType()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetDeviceModel()
{
  v0 = MGGetStringAnswer();
  if ([(__CFString *)v0 isEqualToString:@"iPod"])
  {

    v0 = @"iPod touch";
  }

  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = @"Unknown";
  }

  v2 = v1;

  return v1;
}

__CFString *JEGestaltGetBuildVersion()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

id JEGestaltDiskUsageForKey(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:a1];

  return v3;
}

void *JEGestaltGetTotalSystemCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5138]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalSystemAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5130]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5120]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5118]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDiskCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5128]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076E0;
  }

  v3 = v2;

  return v2;
}

double JEGestaltGetMainScreenSize()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0 && (v2 = [v0 bytes], v3 = objc_msgSend(v1, "length"), v3 >= 0x10))
  {
    v5 = v2 + (v3 & 0xFFFFFFFFFFFFFFF0);
    v4 = *(v5 - 16);
    v6 = *(v5 - 8);
  }

  else
  {
    v4 = MGGetSInt32Answer();
    MGGetSInt32Answer();
  }

  return v4;
}

double InitializeProcessLaunchTimeInterval()
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  v0 = clock_gettime(_CLOCK_MONOTONIC_RAW, &v3);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      InitializeProcessLaunchTimeInterval_cold_1(v1);
    }
  }

  else
  {
    result = v3.tv_nsec / 1000000000.0 + v3.tv_sec;
    *&gProcessLaunchTimeInterval = result;
  }

  return result;
}

uint64_t sub_1DB2FF568(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v7;
  if (!a3)
  {

LABEL_9:
    v22[0] = 1597071153;
    v22[1] = 0xE400000000000000;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v14 = [v13 je_base62String];

    v15 = sub_1DB50A650();
    v17 = v16;

    MEMORY[0x1E1285C70](v15, v17);

    v22[3] = MEMORY[0x1E69E6158];
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v22, 0x7645746E65696C63, 0xED00006449746E65, v18, v19);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  if (!*(v7 + 16))
  {
  }

  v9 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v10 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v8 + 56) + 32 * v9, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v11 = sub_1DB33114C(v20, v21, a3);

  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

id default argument 0 of AppVersionFieldProvider.init(bundle:)()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

uint64_t sub_1DB2FF810(uint64_t a1, id *a2)
{
  result = sub_1DB50A630();
  *a2 = 0;
  return result;
}

uint64_t sub_1DB2FF888(uint64_t a1, id *a2)
{
  v3 = sub_1DB50A640();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DB2FF908@<X0>(uint64_t *a1@<X8>)
{
  sub_1DB50A650();
  v2 = sub_1DB50A620();

  *a1 = v2;
  return result;
}

uint64_t sub_1DB2FF94C(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1EE30C808, type metadata accessor for FileAttributeKey);
  v3 = sub_1DB300288(&qword_1ECC42610, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFA08(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC425E8, type metadata accessor for FileProtectionType);
  v3 = sub_1DB300288(&qword_1ECC425F0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFAC4(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42528, type metadata accessor for AMSMediaArtworkFormat);
  v3 = sub_1DB300288(&qword_1ECC42530, type metadata accessor for AMSMediaArtworkFormat);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFB80(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42518, type metadata accessor for AMSMediaArtworkCropStyle);
  v3 = sub_1DB300288(&qword_1ECC42520, type metadata accessor for AMSMediaArtworkCropStyle);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFC3C(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC425F8, type metadata accessor for AMSMediaArtworkColorKind);
  v3 = sub_1DB300288(&unk_1ECC42600, type metadata accessor for AMSMediaArtworkColorKind);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFCF8(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42538, type metadata accessor for AMSBagKey);
  v3 = sub_1DB300288(&unk_1ECC42540, type metadata accessor for AMSBagKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFDB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50A620();

  *a2 = v5;
  return result;
}

uint64_t sub_1DB2FFDFC(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42618, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1DB300288(&unk_1ECC42620, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFEB8()
{
  v1 = *v0;
  v2 = sub_1DB50A650();
  v3 = MEMORY[0x1E1285D20](v2);

  return v3;
}

uint64_t sub_1DB2FFEF4()
{
  v1 = *v0;
  sub_1DB50A650();
  sub_1DB50A740();
}

uint64_t sub_1DB2FFF48()
{
  v1 = *v0;
  sub_1DB50A650();
  sub_1DB50BCF0();
  sub_1DB50A740();
  v2 = sub_1DB50BD30();

  return v2;
}

uint64_t sub_1DB2FFFBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DB50A650();
  v6 = v5;
  if (v4 == sub_1DB50A650() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MonotonicTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonotonicTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LRUIntentCache.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LRUIntentCache.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DB300288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB300628(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB300648(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1DB300688(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DB300B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SandboxExtensionFileAsset.filePath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DB300BC8()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB300C10()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB300C54()
{
  if (*v0)
  {
    result = 0x68746150656C6966;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DB300C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB529480 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x68746150656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DB300D88(uint64_t a1)
{
  v2 = sub_1DB30138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB300DC4(uint64_t a1)
{
  v2 = sub_1DB30138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtensionFileAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42690, &unk_1DB50EEA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB30138C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v40) = 0;
  sub_1DB3013EC();
  sub_1DB50B780();
  v12 = v45;
  v38 = v44;
  v35 = v46;
  v36 = v47;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v33 = v48;
  v34 = v47;
  v32[1] = __swift_project_boxed_opaque_existential_1(&v44, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  v49 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
  v14._countAndFlagsBits = 0xD000000000000033;
  v14._object = 0x80000001DB5293B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v43[3] = MEMORY[0x1E69E6158];
  v43[0] = v38;
  v43[1] = v12;
  sub_1DB301CDC(v43, v39);
  v40 = 0u;
  v41 = 0u;

  sub_1DB301D4C(v39, &v40);
  v42 = 2;
  v15 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = a2;
  v37 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
    v49 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[40 * v18];
  v20 = v40;
  v21 = v41;
  v19[64] = v42;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  v49 = v15;
  sub_1DB301DBC(v43);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v13 + 32) = v49;
  Logger.debug(_:)(v13, v34, v33);

  __swift_destroy_boxed_opaque_existential_0(&v44);
  v44 = v38;
  v45 = v37;
  v46 = v35;
  v47 = v36;
  v23 = SandboxExtensionToken.consume()();

  if (!v23)
  {
    v24 = sub_1DB50B3E0();
    swift_allocError();
    v38 = v25;
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    v27 = v38;
    sub_1DB50B3C0();
    (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v44) = 1;
  v28 = sub_1DB50B740();
  v30 = v29;
  (*(v6 + 8))(v9, v5);
  v31 = v32[0];
  *v32[0] = v28;
  *(v31 + 8) = v30;
  *(v31 + 16) = v23;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 1;

  sub_1DB301E24(v23, 0, 0, 0, 1);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_1DB3013E0(v23, 0, 0, 0, 1);
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

unint64_t sub_1DB30138C()
{
  result = qword_1EE30CB48[0];
  if (!qword_1EE30CB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30CB48);
  }

  return result;
}

uint64_t sub_1DB3013E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_1DB3013EC()
{
  result = qword_1ECC426A0;
  if (!qword_1ECC426A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC426A0);
  }

  return result;
}

uint64_t SandboxExtensionFileAsset.encode(to:)(void *a1)
{
  v60 = sub_1DB50A6B0();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B8, &qword_1DB50EEB8);
  v8 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v51 - v10;
  v12 = *(v1 + 8);
  v62 = *v1;
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v16 = *(v1 + 32);
  v15 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v17 = *(v1 + 40);
    v18 = *(v1 + 32);
    v61 = sub_1DB50B410();
    v59 = swift_allocError();
    v20 = v19;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v20[3] = &type metadata for SandboxExtensionFileAsset;
    v21 = swift_allocObject();
    *v20 = v21;
    *(v21 + 16) = v62;
    *(v21 + 24) = v12;
    *(v21 + 32) = v13;
    *(v21 + 40) = v14;
    *(v21 + 48) = v18;
    *(v21 + 56) = v17;
    *(v21 + 64) = 1;
    v22 = a1[3];
    v62 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);

    sub_1DB301E24(v13, v14, v18, v17, 1);
    sub_1DB50BE00();
    sub_1DB50B3C0();
    (*(*(v61 - 8) + 104))(v20, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }

  else
  {
    v58 = v2;
    v59 = v9;
    v52 = HIDWORD(v13);
    v54 = HIDWORD(v14);
    v56 = HIDWORD(v16);
    v51 = v14;
    v24 = a1[3];
    v25 = a1[4];
    v55 = HIDWORD(v15);
    v26 = a1;
    v53 = v15;
    v27 = v16;
    __swift_project_boxed_opaque_existential_1(v26, v24);
    sub_1DB30138C();
    v57 = v11;
    sub_1DB50BE40();
    v28 = *MEMORY[0x1E69E9BA8];
    v29 = v62;
    v68 = v62;
    v69 = v12;
    sub_1DB50A690();
    sub_1DB301E30();
    sub_1DB50B1D0();
    (*(v4 + 8))(v7, v60);
    v68 = __PAIR64__(v52, v13);
    v69 = __PAIR64__(v54, v51);
    v70 = __PAIR64__(v56, v27);
    v71 = __PAIR64__(v55, v53);
    v30 = sandbox_extension_issue_file_to_process();

    v31 = v12;
    if (v30)
    {
      v32 = v29;
      v33 = sub_1DB50A790();
      v35 = v34;

      free(v30);
      v60 = v31;
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v32 = 0;
      v60 = 0;
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v71;
    v56 = v72;
    v55 = __swift_project_boxed_opaque_existential_1(&v68, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB50EE90;
    v73 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v38._object = 0x80000001DB529460;
    v38._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    if (v35)
    {

      v39 = v33;
      v40 = v35;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v67[3] = MEMORY[0x1E69E6158];
    v67[0] = v39;
    v67[1] = v40;
    sub_1DB301CDC(v67, v63);
    v64 = 0u;
    v65 = 0u;
    sub_1DB301D4C(v63, &v64);
    v66 = 2;
    v41 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DB301BC0(0, *(v41 + 2) + 1, 1, v41);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1DB301BC0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[40 * v43];
    v45 = v64;
    v46 = v65;
    v44[64] = v66;
    *(v44 + 2) = v45;
    *(v44 + 3) = v46;
    v73 = v41;
    sub_1DB301DBC(v67);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(v37 + 32) = v73;
    Logger.debug(_:)(v37, v36, v56);

    __swift_destroy_boxed_opaque_existential_0(&v68);
    v68 = v33;
    v69 = v35;
    v70 = v32;
    v71 = v60;
    LOBYTE(v64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426D0, &qword_1DB50EEC8);
    sub_1DB301E84();
    v48 = v61;
    v49 = v57;
    v50 = v58;
    sub_1DB50B8A0();
    if (v50)
    {
      (*(v59 + 8))(v49, v48);
      return sub_1DB301FA4(v33, v35);
    }

    else
    {
      sub_1DB301FA4(v33, v35);
      LOBYTE(v68) = 1;
      sub_1DB50B860();
      return (*(v59 + 8))(v49, v48);
    }
  }
}

char *sub_1DB301BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DB301CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB301D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB301DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB301E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_1DB301E30()
{
  result = qword_1EE30C870[0];
  if (!qword_1EE30C870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30C870);
  }

  return result;
}

unint64_t sub_1DB301E84()
{
  result = qword_1EE30CFD8;
  if (!qword_1EE30CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC426D0, &qword_1DB50EEC8);
    sub_1DB301F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFD8);
  }

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

unint64_t sub_1DB301F50()
{
  result = qword_1EE30CFE0;
  if (!qword_1EE30CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFE0);
  }

  return result;
}

uint64_t sub_1DB301FA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB302010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DB302058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB3020CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1DB302114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionFileAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionFileAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB3022DC()
{
  result = qword_1ECC426D8;
  if (!qword_1ECC426D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC426D8);
  }

  return result;
}

unint64_t sub_1DB302334()
{
  result = qword_1EE30CB30;
  if (!qword_1EE30CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB30);
  }

  return result;
}

unint64_t sub_1DB30238C()
{
  result = qword_1EE30CB38;
  if (!qword_1EE30CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB38);
  }

  return result;
}

char *sub_1DB302404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB302534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42938, &unk_1DB50F3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB302744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42710, &qword_1DB50F188);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB302898(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E0, &unk_1DB50F160);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1DB302A34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC429B0, &qword_1DB50F468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB302D80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42790, &qword_1DB50F208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42970, &qword_1DB50F428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1DB303014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42988, &qword_1DB50F440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB303148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42940, &qword_1DB5112F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1DB30324C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42708, &qword_1DB50F180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB303390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42930, &qword_1DB50F3E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3034B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42910, qword_1DB50F390);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB3035BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42720, &qword_1DB50F198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB303748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB303868(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42978, &qword_1DB50F430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 400);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[50 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 400 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42980, &qword_1DB50F438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3039BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D8, &qword_1DB50F358);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB303BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42830, &qword_1DB50F2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB303E24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB303F58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42958, &qword_1DB50F410);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB304088(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB3041D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC427A8, &qword_1DB50F220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3042F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC427A0, &qword_1DB50F218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DB30446C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB304690(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t CodeByKind.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t CodeByKind.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t CodeByKind.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t CodeByKind.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1DB50BA00();
  return 0;
}

uint64_t CodeByKind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v7 = sub_1DB50B3D0();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v10 = *(v80 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v74 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  v87 = *(v85 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v96 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v74 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v74 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v74 - v29;
  v89 = a2;
  v91 = a3;
  v31 = type metadata accessor for CodeByKind();
  v78 = *(v31 - 8);
  v79 = v31;
  v32 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v77 = &v74 - v33;
  v34 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  v36 = v90;
  sub_1DB50BDF0();
  if (v36)
  {
    *v28 = v36;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1DB3053FC(v25, v28);
  }

  v37 = v30;
  sub_1DB3053FC(v28, v30);
  sub_1DB30546C(v30, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = v96;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1DB30623C(v22, &qword_1ECC42A48, &qword_1DB50F510);
    v40 = v35;
  }

  else
  {
    v41 = v87;
    v42 = v85;
    (*(v87 + 32))(v96, v22, v85);
    v90 = xmmword_1DB50F500;
    v94 = xmmword_1DB50F500;
    v95 = 1;
    v40 = v35;
    if (sub_1DB50B7B0())
    {
      v94 = v90;
      v95 = 1;
      v43 = sub_1DB50B740();
      v45 = v91;
      v61 = v43;
      v62 = v44;
      v63 = (*(v91 + 16))();
      if (*(v63 + 16))
      {
        v64 = sub_1DB306160(v61, v62);
        if (v65)
        {
          v66 = v64;

          v67 = *(*(v63 + 56) + 8 * v66);

          v49 = v75;
          (*(v45 + 40))(v67, v40);
          (*(v87 + 8))(v96, v42);
          goto LABEL_11;
        }
      }

      v68 = v89;
      v69 = (*(v45 + 32))(v89, v45);
      if (v69)
      {
        v70 = v69;

        v71 = v76;
        (*(v45 + 40))(v70, v40, v68, v45);
        (*(v87 + 8))(v96, v42);
        sub_1DB30623C(v37, &qword_1ECC42A48, &qword_1DB50F510);
        v50 = v71;
        goto LABEL_12;
      }

      v94 = v90;
      v95 = 1;
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1DB50B320();

      v92 = 1008758606;
      v93 = 0xE400000000000000;
      v72 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v72);

      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB529510);
      MEMORY[0x1E1285C70](v61, v62);

      MEMORY[0x1E1285C70](96, 0xE100000000000000);
      sub_1DB50B3E0();
      swift_allocError();
      sub_1DB3061D8();
      v73 = v96;
      sub_1DB50B3B0();

      swift_willThrow();
      (*(v87 + 8))(v73, v42);
LABEL_14:
      sub_1DB30623C(v37, &qword_1ECC42A48, &qword_1DB50F510);
      return __swift_destroy_boxed_opaque_existential_0(v40);
    }

    (*(v41 + 8))(v39, v42);
  }

  v46 = v91;
  v47 = v89;
  v48 = (*(v91 + 24))(v89, v91);
  v49 = v88;
  if (!v48)
  {
    v52 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_1DB50BDB0();
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB5294A0);
    v53 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v53);

    MEMORY[0x1E1285C70](0xD000000000000039, 0x80000001DB5294D0);
    v54 = v82;
    sub_1DB50B3C0();
    v55 = sub_1DB50B3E0();
    swift_allocError();
    v57 = v56;
    v59 = v83;
    v58 = v84;
    (*(v83 + 16))(v56, v54, v84);
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6B00], v55);
    swift_willThrow();
    (*(v59 + 8))(v54, v58);
    goto LABEL_14;
  }

  (*(v46 + 40))(v48, v40, v47, v46);
LABEL_11:
  sub_1DB30623C(v37, &qword_1ECC42A48, &qword_1DB50F510);
  v50 = v49;
LABEL_12:
  v51 = v77;
  (*(v80 + 32))(v77, v50, AssociatedTypeWitness);
  (*(v78 + 32))(v81, v51, v79);
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

unint64_t sub_1DB3053A8()
{
  result = qword_1ECC42A50;
  if (!qword_1ECC42A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42A50);
  }

  return result;
}

uint64_t sub_1DB3053FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB30546C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CodeByKind.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v12 = a2 + 16;
  v10 = *(a2 + 16);
  v11 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = *(v14 + 16);
  v16(&v45 - v17, v3, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A68, &qword_1DB50F518);
  if (swift_dynamicCast())
  {
    v18 = a1;
    sub_1DB2FEA0C(&v49, v52);
    v19 = (*(v11 + 16))(v10, v11);
    MEMORY[0x1EEE9AC00](v19);
    *(&v45 - 2) = v52;
    v20 = v54;
    sub_1DB305DFC(sub_1DB306300, (&v45 - 4), v19);
    v22 = v21;

    if (v22)
    {
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB3053A8();
      sub_1DB50BE40();
      v49 = xmmword_1DB50F500;
      LOBYTE(v50) = 1;
      v24 = v46;
      sub_1DB50B860();

      if (!v20)
      {
        __swift_project_boxed_opaque_existential_1(v52, v53);
        sub_1DB50A5B0();
      }

      (*(v45 + 8))(v9, v24);
    }

    else
    {
      v32 = sub_1DB50B410();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
      v36 = v53;
      v37 = __swift_project_boxed_opaque_existential_1(v52, v53);
      *(&v50 + 1) = v36;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v49);
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v37, v36);
      v39 = runtimeType(of:)(&v49);
      __swift_destroy_boxed_opaque_existential_0(&v49);
      v34[3] = swift_getMetatypeMetadata();
      *v34 = v39;
      v40 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_1DB50BE00();
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      v47 = 0xD000000000000017;
      v48 = 0x80000001DB529550;
      v41 = v53;
      v42 = __swift_project_boxed_opaque_existential_1(v52, v53);
      *(&v50 + 1) = v41;
      v43 = __swift_allocate_boxed_opaque_existential_0(&v49);
      (*(*(v41 - 8) + 16))(v43, v42, v41);
      runtimeType(of:)(&v49);
      __swift_destroy_boxed_opaque_existential_0(&v49);
      v44 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v44);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      sub_1DB50B3C0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B30], v32);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_1DB30623C(&v49, qword_1ECC42A70, &qword_1DB50F520);
    v54 = sub_1DB50B410();
    v45 = swift_allocError();
    v26 = v25;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v26[3] = AssociatedTypeWitness;
    v27 = __swift_allocate_boxed_opaque_existential_0(v26);
    v16(v27, v3, AssociatedTypeWitness);
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    sub_1DB50B320();

    *&v49 = 60;
    *(&v49 + 1) = 0xE100000000000000;
    v53 = AssociatedTypeWitness;
    v29 = __swift_allocate_boxed_opaque_existential_0(v52);
    v16(v29, v3, AssociatedTypeWitness);
    runtimeType(of:)(v52);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v30 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v30);

    MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB529530);
    sub_1DB50B3C0();
    (*(*(v54 - 8) + 104))(v26, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }
}

uint64_t runtimeType(of:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

BOOL sub_1DB305BE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = a2[3];
  v4 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v8[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v4, v3);
  v6 = runtimeType(of:)(v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2 == v6;
}

uint64_t sub_1DB305C84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = *(a3 + 56);
      v15 = (*(a3 + 48) + v13);
      v17 = *v15;
      v16 = v15[1];
      v19[0] = *v15;
      v19[1] = v16;
      v20 = *(v14 + v13);

      v18 = v21(v19);
      if (v3)
      {

        return v17;
      }

      if (v18)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v17;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB305DFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v20 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v20 + 56) + 8 * v12);
      v19[0] = *v13;
      v19[1] = v14;
      v19[2] = v16;

      v17 = a1(v19);
      if (v3)
      {

        return v15;
      }

      if (v17)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB306010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static CodeByKind<>.== infix(_:_:)();
}

uint64_t CodeByKind<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();

  return sub_1DB50A5D0();
}

uint64_t CodeByKind<>.hashValue.getter(uint64_t a1)
{
  sub_1DB50BCF0();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB30610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  CodeByKind<>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

unint64_t sub_1DB306160(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v6 = sub_1DB50BD30();

  return sub_1DB3067A8(a1, a2, v6);
}

unint64_t sub_1DB3061D8()
{
  result = qword_1ECC42A58;
  if (!qword_1ECC42A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A40, &unk_1DB516260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42A58);
  }

  return result;
}

uint64_t sub_1DB30623C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_1DB306368(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB3063E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1DB30657C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

unint64_t sub_1DB3067A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DB50BA30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t AsyncObjectGraphBuilder.withDependenciesSatisfied.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a2[3] = result;
  a2[4] = &off_1F56F7748;
  v5 = MEMORY[0x1E69E7CC0];
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB307600(a1, a2, a3, a4, a5, a6, &unk_1F56F1048, sub_1DB3069D4);
}

{
  return sub_1DB307600(a1, a2, a3, a4, a5, a6, &unk_1F56F1098, sub_1DB30BCE8);
}

char *sub_1DB306914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Promise();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a1;

  v13 = sub_1DB498380(&unk_1DB50F778, v12);

  return v13;
}

uint64_t sub_1DB3069EC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DB306AF4;

  return v10(a1, a4);
}

uint64_t sub_1DB306AF4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AsyncObjectGraphBuilder.satisfying(allOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1DB30BB08(sub_1DB306E9C, v9, v8);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a5[3] = result;
  a5[4] = &off_1F56F7748;
  v12 = MEMORY[0x1E69E7CC0];
  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t sub_1DB306CC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = 0;
  v15 = sub_1DB50ABA0();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DB50F760;
  v16[5] = v11;
  v16[6] = v12;

  sub_1DB419B9C(0, 0, v9, &unk_1DB50F768, v16);

  return v12;
}

uint64_t sub_1DB306EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB306EC8, 0, 0);
}

uint64_t sub_1DB306EC8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();
  *(v0 + 48) = sub_1DB40D210(v3);

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DB306F8C;

  return BaseObjectGraph._withAllDependenciesResolved.getter();
}

uint64_t sub_1DB306F8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1DB3070E0;
  }

  else
  {
    v8 = *(v4 + 48);

    *(v4 + 72) = a1;
    v7 = sub_1DB3070BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB3070E0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t AsyncObjectGraphBuilder.makeObjectGraph()(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB307168, 0, 0);
}

uint64_t sub_1DB307168()
{
  v1 = v0[23];
  v0[24] = (*(v0[22] + 16))(v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1DB3071E8, 0, 0);
}

uint64_t sub_1DB3071E8()
{
  v1 = v0 + 2;
  v2 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3072B4;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308088(v3);
  sub_1DB30623C(v3, &unk_1ECC44FC0, &unk_1DB50F4E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3072B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB307408, 0, 0);
  }

  else
  {
    v4 = *(v1 + 192);

    v5 = *(v1 + 160);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB307408()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t static BaseObjectGraph.build(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1DB30BC94();
  v10 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v6);
  v7 = MEMORY[0x1E69E7CC0];
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v8 = swift_allocObject();
  v8[4] = a2;
  v8[2] = v10;
  v8[3] = a1;
  a3[3] = &type metadata for StandaloneObjectGraphBuilder;
  a3[4] = &off_1F56F8D18;
  *a3 = v8;
  a3[1] = v7;
}

uint64_t BaseObjectGraph.buildUpon.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for StandaloneObjectGraphBuilder;
  a1[4] = &off_1F56F8D18;
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = v1;
  a1[1] = v2;
}

uint64_t Promise<A>.withDependenciesSatisfied.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1DB3BA100();
  v5 = v4;
  v7 = v6;
  v8 = *(v3 + 80);
  a1[3] = type metadata accessor for DependentObjectGraphBuilder();
  a1[4] = &off_1F56F7748;
  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_1DB307600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a2;
  v14[6] = a3;
  v15 = *(a6 + 8);

  v15(a1, a8, v14, a5, a4, a6);
}

char *sub_1DB3076D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  type metadata accessor for Promise();
  v12 = _s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(v10);
  (*(v6 + 8))(v10, a5);
  return v12;
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  (*(a5 + 8))(a1, sub_1DB30BD18, v13, a4, a3, a5);
}

uint64_t AsyncObjectGraphBuilder.subtracting<A>(allDependenciesExcept:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v23 = (*(v14 + 16))(v15, v14);
  (*(v12 + 16))(&v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v26[3] = &type metadata for SyncTaskScheduler;
  v26[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0;
  v21 = swift_allocObject();
  v21[2] = sub_1DB30BD80;
  v21[3] = v17;
  v21[4] = v18;
  v24[0] = sub_1DB30BE80;
  v24[1] = v21;
  v24[2] = sub_1DB30BE8C;
  v24[3] = v18;
  sub_1DB30BE90(v26, v25);
  v25[40] = 0;
  swift_retain_n();

  sub_1DB308088(v24);

  sub_1DB30623C(v24, &unk_1ECC44FC0, &unk_1DB50F4E0);
  __swift_destroy_boxed_opaque_existential_0(v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a6[3] = result;
  a6[4] = &off_1F56F7748;
  *a6 = v18;
  a6[1] = v20;
  return result;
}

uint64_t sub_1DB307BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = sub_1DB40D6FC(a2, a3, a4);
  swift_beginAccess();
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  swift_beginAccess();
  v10 = *(v7 + 32);
  *(v7 + 24) = v9;
  *(v7 + 32) = v8;

  *a5 = v7;
  return result;
}

uint64_t sub_1DB307C9C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1DB30C420(i, &v27);
    v5 = v27;
    sub_1DB300B14(&v28, v24);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    v23 = *v3;
    *v3 = 0x8000000000000000;
    v9 = sub_1DB30EE50(v5);
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      sub_1DB31A6AC(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1DB30EE50(v5);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v17 = v23;
      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v20 = v9;
    sub_1DB311D10();
    v9 = v20;
    v17 = v23;
    if ((v15 & 1) == 0)
    {
LABEL_14:
      v17[(v9 >> 6) + 8] |= 1 << v9;
      *(v17[6] + 8 * v9) = v5;
      sub_1DB30C200(v24, (v17[7] + 32 * v9));
      v21 = v17[2];
      v13 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v13)
      {
        goto LABEL_18;
      }

      v17[2] = v22;
      v25 = 0u;
      v26 = 0u;
      *v3 = v17;
      goto LABEL_3;
    }

LABEL_11:
    v18 = 32 * v9;
    sub_1DB30C200((v17[7] + 32 * v9), &v25);
    sub_1DB30C200(v24, (v17[7] + v18));
    v19 = *(&v26 + 1);
    *v3 = v17;
    if (v19)
    {
      sub_1DB30623C(&v25, &qword_1ECC426B0, &qword_1DB50EEB0);
      sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340);
      result = sub_1DB30BF1C(&v27);
      goto LABEL_4;
    }

LABEL_3:
    sub_1DB30BF1C(&v27);
    result = sub_1DB30623C(&v25, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void sub_1DB307EB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &qword_1ECC42B18, &qword_1DB50F688);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E26EC(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    *&v18 = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE288(&v16);
    sub_1DB30BF1C(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &qword_1ECC42700, &unk_1DB50F690);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302848(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302848((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v18) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &qword_1ECC42B18, &qword_1DB50F688);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308088(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E271C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E271C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE3F4(v4);
    v16 = MEMORY[0x1E69E7D48];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &unk_1ECC44FC0, &unk_1DB50F4E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB3029C4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB3029C4((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30828C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E289C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E289C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE424(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &unk_1ECC45030, &qword_1DB50F4D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB3029E8(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB3029E8((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB308440(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E28CC(v4);
      v16 = MEMORY[0x1E69E7CF8];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E28CC(v4);
      v16 = MEMORY[0x1E69E7CF8];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE454(v4);
    v16 = MEMORY[0x1E69E7CF8];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &qword_1ECC42840, &qword_1DB5142D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302B8C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB302B8C((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB308644(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, qword_1ECC42BF0, &qword_1DB50F728);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E28FC(v12);
  }

  else if (v20)
  {
    sub_1DB2FEA0C(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE5A4(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &qword_1ECC42950, &unk_1DB50F730);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302BB0(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302BB0((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, qword_1ECC42BF0, &qword_1DB50F728);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308810(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    v15 = *(v1 + 24);
    if (*(v1 + 40) == 2)
    {
      v16 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E292C(v4);
      v17 = v4;
      v18 = v5;
      v19 = 2;
    }

    else
    {
      v21 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E292C(v4);
      v17 = v4;
      v18 = v5;
      v19 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {
    v20 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE700(v4, v5);
    v17 = v4;
    v18 = v5;
    v19 = 1;
LABEL_12:
    sub_1DB30C340(v17, v18, v19);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC429C0, &qword_1DB518FD0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302BD4(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB302BD4((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1DB30C340(v12, v13, v14);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB3089DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E295C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E295C(v4);
      v16 = v4;
      v17 = 3;
    }

    sub_1DB30C3C4(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE868(v4);
  }

  else
  {
    sub_1DB30C4B8(a1, v22, &qword_1ECC429D0, &unk_1DB50F740);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302C1C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_1DB302C1C((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308B80(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E298C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E298C(v4);
      v16 = v4;
      v17 = 3;
    }

    sub_1DB30C3C4(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE9A0();
  }

  else
  {
    sub_1DB30C4B8(a1, v22, &qword_1ECC429E0, &qword_1DB50F498);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302C40(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_1DB302C40((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308D20(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, &unk_1ECC42BC0, &unk_1DB51A950);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E29BC(v12);
  }

  else if (v20)
  {
    sub_1DB30C200(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FEAB0(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &unk_1ECC45020, &unk_1DB50F700);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302FCC(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302FCC((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    LOBYTE(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, &unk_1ECC42BC0, &unk_1DB51A950);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308EE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E29EC(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E29EC(v4);
      v16 = v4;
      v17 = 3;
    }

    sub_1DB30C3C4(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FEC0C(v4 & 1);
  }

  else
  {
    sub_1DB30C4B8(a1, v22, &unk_1ECC44FD0, &qword_1DB50F1D0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303124(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_1DB303124((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30908C(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v15, v13, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3E2A1C(v24);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v13, v6, type metadata accessor for InMemoryJetPackResourceBundle);
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3FED4C(v6);
    sub_1DB30C278(v6, type metadata accessor for InMemoryJetPackResourceBundle);
  }

  else
  {
    v17 = *v13;
    sub_1DB30C4B8(a1, v26, qword_1ECC453B0, &qword_1DB50F720);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB303700(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB303700((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v10, v1 + v15, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

void sub_1DB309368(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v15, v13, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3E2A4C(v24);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v13, v6, type metadata accessor for DiskJetPackResourceBundle);
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3FEF68(v6);
    sub_1DB30C278(v6, type metadata accessor for DiskJetPackResourceBundle);
  }

  else
  {
    v17 = *v13;
    sub_1DB30C4B8(a1, v26, &unk_1ECC453A0, &unk_1DB50F710);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB303724(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB303724((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v10, v1 + v15, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

void sub_1DB309644(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2A7C(v4);
      v16 = MEMORY[0x1E69E7D60];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2A7C(v4);
      v16 = MEMORY[0x1E69E7D60];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF184(v4);
    v16 = MEMORY[0x1E69E7D60];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &qword_1ECC428D0, &qword_1DB50F350);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303AC0(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB303AC0((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309848(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2AAC(v4);
      v16 = MEMORY[0x1E69E7D60];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2AAC(v4);
      v16 = MEMORY[0x1E69E7D60];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF1B4(v4);
    v16 = MEMORY[0x1E69E7D60];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &qword_1ECC428C0, &unk_1DB50F6F0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303AE4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB303AE4((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309A4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 48) > 1u)
  {
    v17 = *(v1 + 24);
    if (*(v1 + 48) == 2)
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2ADC(v4);
      v19 = v4;
      v20 = v6;
      v21 = v5;
      v22 = 2;
    }

    else
    {
      v24 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2ADC(v4);
      v19 = v4;
      v20 = v6;
      v21 = v5;
      v22 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 48))
  {
    sub_1DB30C1AC(*(v1 + 24), *(v1 + 32));
    v23 = v5;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF324(v4, v6, v23);
    v19 = v4;
    v20 = v6;
    v21 = v5;
    v22 = 1;
LABEL_12:
    sub_1DB30C0D4(v19, v20, v21, v22);
    return;
  }

  sub_1DB30C4B8(a1, v25, &qword_1ECC428A0, &unk_1DB50F6E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B08(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1DB303B08((v7 > 1), v8 + 1, 1, v4);
  }

  v4[2] = v8 + 1;
  v9 = &v4[10 * v8];
  v9[2] = v25[0];
  v10 = v25[1];
  v11 = v25[2];
  v12 = v26[0];
  *(v9 + 89) = *(v26 + 9);
  v9[4] = v11;
  v9[5] = v12;
  v9[3] = v10;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v16 = *(v1 + 48);
  *(v1 + 48) = 0;
  sub_1DB30C0D4(v13, v14, v15, v16);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309C44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v15, v13, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3E2B0C(v24);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C06C(v13, v6, &unk_1ECC45380, &qword_1DB51BBA0);
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3FF498(v6);
    sub_1DB30623C(v6, &unk_1ECC45380, &qword_1DB51BBA0);
  }

  else
  {
    v17 = *v13;
    sub_1DB30C4B8(a1, v26, &qword_1ECC42870, &unk_1DB518F90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB303B2C(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB303B2C((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v10, v1 + v15, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

void sub_1DB309F2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B3C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B3C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF6C8(v4);
    v16 = MEMORY[0x1E69E7D48];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &qword_1ECC428B0, &qword_1DB51CCF0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B50(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB303B50((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30A130(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B6C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B6C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF838(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &qword_1ECC42880, &unk_1DB50F6D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B74(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB303B74((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30A2E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B9C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B9C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF99C(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &qword_1ECC42890, &unk_1DB518FA0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B98(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB303B98((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}