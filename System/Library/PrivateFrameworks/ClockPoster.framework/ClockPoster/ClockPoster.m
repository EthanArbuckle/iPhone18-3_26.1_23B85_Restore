uint64_t sub_1E48B2308(uint64_t a1, int a2)
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

uint64_t sub_1E48B2328(uint64_t result, int a2, int a3)
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

BOOL sub_1E48B23BC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1E48B2428@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E4997EEC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E48B245C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2494()
{
  v1 = sub_1E4996F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E48B256C(uint64_t a1, int a2)
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

uint64_t sub_1E48B258C(uint64_t result, int a2, int a3)
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

uint64_t sub_1E48B25BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B25FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B266C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B26AC()
{
  v1 = sub_1E4996A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E48B2790()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

id sub_1E48B2840()
{
  v0 = sub_1E48CBCF4();

  return v0;
}

uint64_t sub_1E48B2870(uint64_t a1, uint64_t *a2)
{
  sub_1E48C8304(a1, v5);
  v3 = *a2;
  return sub_1E48C48FC(v5);
}

uint64_t sub_1E48B28B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1E48B2914()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1E48B2974()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B29B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E48B2AB4(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  sub_1E499733C();
  swift_getTupleTypeMetadata2();
  sub_1E4997D5C();
  swift_getWitnessTable();
  sub_1E4997BBC();

  return swift_getWitnessTable();
}

uint64_t sub_1E48B2BC8()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2C00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B2C68()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2CA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B2CF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996F4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E48B2D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4996F4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B2E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996F4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1E48B2F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996F4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E48B3024(uint64_t a1, uint64_t *a2)
{
  sub_1E48C9DB4(a1, v5);
  v3 = *a2;
  return sub_1E48DD828(v5);
}

uint64_t sub_1E48B315C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48E4CE8(v4);
}

uint64_t sub_1E48B3188()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B31C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B320C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v2;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v3 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *a2;
  sub_1E48CCDD4(v9, v8);
  return sub_1E48DDAE4(v9);
}

uint64_t sub_1E48B32F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48DCE00(v4);
}

uint64_t sub_1E48B3328(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);

  return sub_1E48E3E54(v2, v3, v4, v6);
}

uint64_t sub_1E48B33B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1E48B3420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B34EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996D8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1E48B35C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E48F36FC();
  sub_1E4996B4C();
  __break(1u);
}

void sub_1E48B3678(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E48F37AC();
  sub_1E4996B6C();
  __break(1u);
}

uint64_t sub_1E48B36EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B3724()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B3774()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B37C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SolarPosition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E48B38C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SolarPosition(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E48B39CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B3A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B3AA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B3AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B3B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B3BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B3C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B3CD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996D8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1E48B3E08@<X0>(void *a1@<X8>)
{
  result = sub_1E499747C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E48B3E8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499751C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B3EB8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E499752C();
}

uint64_t sub_1E48B3F4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48DCCCC(v4);
}

uint64_t sub_1E48B3F88()
{
  sub_1E4911984(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1E48B3FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF78, &qword_1E49A0900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B40FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B4148()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B4188()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B41D0()
{
  v1 = (type metadata accessor for TimeString(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 56);

  v8 = v1[11];
  v9 = sub_1E4996F4C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[12];
  v11 = sub_1E4996D8C();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B4314()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B434C()
{
  v1 = sub_1E4996F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E48B45A4(uint64_t a1, uint64_t *a2)
{
  sub_1E48C12D0(a1, v5, &qword_1ECF7F338, &qword_1E499B8D0);
  v3 = *a2;
  return sub_1E491D6E4(v5);
}

uint64_t sub_1E48B4634()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B466C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B46AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B46F4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1E48B4798()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B47F4(uint64_t a1, uint64_t *a2)
{
  sub_1E48C9E64(a1, v5);
  v3 = *a2;
  return sub_1E49273D4(v5);
}

uint64_t sub_1E48B48B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4927130(v4);
}

void sub_1E48B4A74(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E48C1684();
  sub_1E4996B6C();
  __break(1u);
}

uint64_t sub_1E48B4AAC(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80388, &qword_1E49A20B0);
  return sub_1E4997E6C();
}

uint64_t sub_1E48B4CD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1E4926CD8(v2, v3);
}

uint64_t sub_1E48B4D10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B4D48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4DB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E491A394(v4);
}

uint64_t sub_1E48B4DE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1E48B4E18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B4E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C0, &qword_1E49A2678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B4ED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4F10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4F6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1E48B4FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B5044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B50B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996F4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4996D8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E48B51D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E4996F4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4996D8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E48B52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1E4996F4C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E48B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1E4996F4C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E48B53F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5458()
{
  v1 = (type metadata accessor for TimeString(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TextClockDescriptor(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(*v5 + 64);
  v8 = v2 | v6;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = (v0 + v3);
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  v14 = *(v11 + 7);

  v15 = v1[11];
  v16 = sub_1E4996F4C();
  v17 = *(*(v16 - 8) + 8);
  v17(&v11[v15], v16);
  v18 = v1[12];
  v19 = sub_1E4996D8C();
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v17((v0 + v5[7] + v7), v16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v21, v8 | 7);
}

uint64_t sub_1E48B563C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E48B5684()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B56CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B5714()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_1E4996D8C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B5858()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5890()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B58C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B5908()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B5994()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1E48B59CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B5A18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF0, &qword_1E49A4368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF8, &qword_1E49A4370);
  sub_1E494E2C0();
  sub_1E494E488();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E48B5AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499751C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5AD4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E499752C();
}

uint64_t sub_1E48B5B38(uint64_t a1, uint64_t *a2)
{
  sub_1E48C9C40(a1, v5);
  v3 = *a2;
  return sub_1E494FBC4(v5);
}

uint64_t sub_1E48B5BBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B5BF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1E494F830(v2, v3);
}

uint64_t sub_1E48B5C74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E494F6FC(v4);
}

uint64_t sub_1E48B5CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B5D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B5DA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B5E10()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5E48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B5EA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E49974FC();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5F30@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E691AD50]();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5F5C(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E691AD60](v2);
}

uint64_t sub_1E48B5F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColorProviderPoint.Sample(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E4996DBC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E48B6078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ColorProviderPoint.Sample(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E4996DBC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E48B6174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996DBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E48B6220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4996DBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B62C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E48B6390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E48B64AC()
{
  v1 = type metadata accessor for ColorProviderGraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 24);

  v8 = v0 + v3 + *(v1 + 24);
  v9 = type metadata accessor for ColorProviderPoint(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v10 = *(v8 + 8);

    v11 = type metadata accessor for ColorProviderPoint.Sample(0);
    v12 = *(v11 + 28);
    v26 = v4;
    v13 = sub_1E4996DBC();
    v27 = v0;
    v14 = *(*(v13 - 8) + 8);
    v14(v8 + v12, v13);
    v15 = v8 + v9[5];
    v16 = *(v15 + 8);

    v14(v15 + *(v11 + 28), v13);
    v17 = v8 + v9[6];
    v18 = *(v17 + 8);

    v19 = *(v11 + 28);
    v3 = (v2 + 16) & ~v2;
    v14(v17 + v19, v13);
    v20 = v13;
    v4 = v26;
    v14(v8 + v9[8], v20);
    v0 = v27;
  }

  v21 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160) + 28));

  v22 = (v5 + *(v1 + 28));
  v23 = *v22;

  v24 = v22[1];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B66DC()
{
  v1 = (type metadata accessor for ColorProviderPoint(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*v1 + 64);
  v4 = *(v0 + v3 + 8);

  v5 = type metadata accessor for ColorProviderPoint.Sample(0);
  v6 = *(v5 + 28);
  v7 = sub_1E4996DBC();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + v1[7];
  v10 = *(v9 + 8);

  v8(v9 + *(v5 + 28), v7);
  v11 = v0 + v3 + v1[8];
  v12 = *(v11 + 8);

  v8(v11 + *(v5 + 28), v7);
  v8(v0 + v3 + v1[10], v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v14, v2 | 7);
}

uint64_t sub_1E48B68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4996D8C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E48B69B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E4996D8C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E48B6ABC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B6AF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6B30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B6B7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B6C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1E48B6D54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocationAccuracy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E48B6E00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationAccuracy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B6EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48B6F1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E48B6FA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6FF4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7090()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B70CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1E48B7164(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E498FC10();
  sub_1E4996B5C();
  __break(1u);
}

uint64_t sub_1E48B719C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF81798, &qword_1E49A5FA8);
  return sub_1E4997E6C();
}

uint64_t sub_1E48B71EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B723C()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B72B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B7300()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7338()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B7378()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B73C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B73F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7448(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double RadiusForRectAtAngleWithInset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v12 = a6;
  v13 = fmodf(v12, 6.2832);
  v14 = v13;
  if (v13 < 0.0)
  {
    do
    {
      v14 = v14 + 6.28318531;
    }

    while (v14 < 0.0);
  }

  v15 = 1.57079633;
  if (v14 >= 1.57079633)
  {
    v16 = 3.14159265;
    if (v14 >= 3.14159265)
    {
      if (v14 < 4.71238898)
      {
        v14 = v14 + -3.14159265;
        goto LABEL_9;
      }

      v16 = 6.28318531;
    }

    v14 = v16 - v14;
  }

LABEL_9:
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  Height = CGRectGetHeight(v35);
  v36.size.height = a4;
  v18 = Height + a7 * -2.0;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v19 = CGRectGetWidth(v36) + a7 * -2.0;
  v20 = fmax((a5 - a7) * 1.52866, 0.0);
  v21 = v19 * 0.5;
  if (atan2(-(v20 - v18 * 0.5), v19 * 0.5) >= v14)
  {
    v22 = tan(v14) * v21;
LABEL_13:
    v23 = v22 * v22 + v21 * v21;
    return sqrt(v23);
  }

  v22 = v18 * 0.5;
  if (atan2(v22, v19 * 0.5 - v20) < v14)
  {
    v21 = v22 / tan(v14);
    goto LABEL_13;
  }

  v24 = 0;
  v33 = v22 - v20;
  v25 = 0.0;
  do
  {
    v26 = __sincos_stret((v25 + v15) * 0.5);
    v27 = v21 - v20 + v20 * pow(v26.__cosval, 0.622409222);
    v28 = v33 + v20 * pow(v26.__sinval, 0.622409222);
    v29 = v14 - atan2(v28, v27);
    if (v29 > 0.0)
    {
      v30 = (v25 + v15) * 0.5;
    }

    else
    {
      v30 = v25;
    }

    if (v29 < 0.0)
    {
      v15 = (v25 + v15) * 0.5;
    }

    else
    {
      v25 = v30;
    }

    if (fabs(v29) <= 0.01)
    {
      break;
    }
  }

  while (v24++ < 0x63);
  v23 = v28 * v28 + v27 * v27;
  return sqrt(v23);
}

uint64_t sub_1E48B81A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v31 = &v30 - v4;
  v5 = type metadata accessor for TextClockDescriptor(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4996F4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimeString(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v11 + 56);
  v30(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone, 1, 1, v10);
  (*(v17 + 56))(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__previousTimeString, 1, 1, v16);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v22 = qword_1ECF80790;
  sub_1E4996F3C();
  v23 = (*(v11 + 16))(&v9[*(v5 + 20)], v15, v10);
  *v9 = 0;
  v24 = *(v22 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock);
  MEMORY[0x1EEE9AC00](v23, v25);
  *(&v30 - 2) = v9;
  *(&v30 - 1) = v26;
  sub_1E4939498(sub_1E48BF0E4, (&v30 - 4), v21);
  (*(v11 + 8))(v15, v10);
  sub_1E48C1504(v9, type metadata accessor for TextClockDescriptor);
  sub_1E48BF0EC(v21, v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString);
  v27 = (v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged);
  *v27 = 0;
  v27[1] = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) = 0;
  sub_1E4996FFC();
  v28 = v31;
  sub_1E4996F3C();
  v30(v28, 0, 1, v10);
  sub_1E48B9930(v28);
  return v0;
}

uint64_t sub_1E48B8534(void *a1)
{
  v3 = type metadata accessor for TimeString(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v1 + v8, v7, type metadata accessor for TimeString);
  v9 = sub_1E48BF990(v7, a1);
  sub_1E48C1504(v7, type metadata accessor for TimeString);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C148C(a1, v7, type metadata accessor for TimeString);
    swift_beginAccess();
    sub_1E48BFAAC(v7, v1 + v8);
    swift_endAccess();
  }

  return sub_1E48C1504(a1, type metadata accessor for TimeString);
}

uint64_t sub_1E48B8744()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v42 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v39 - v9;
  v11 = sub_1E4996F4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v41 = &v39 - v17;
  swift_getKeyPath();
  v43 = v0;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v18 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver;
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) && (v19 = *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver), , sub_1E49981DC(), , *(v0 + v18)))
  {
    KeyPath = swift_getKeyPath();
    v39 = &v39;
    MEMORY[0x1EEE9AC00](KeyPath, v21);
    *(&v39 - 2) = v0;
    *(&v39 - 1) = 0;
    v43 = v0;
    sub_1E4996FBC();
  }

  else
  {
    *(v0 + v18) = 0;
  }

  swift_getKeyPath();
  v43 = v0;
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v22, v10, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v23 = v12;
  v24 = *(v12 + 48);
  v25 = v11;
  if (v24(v10, 1, v11) == 1)
  {
    v26 = v41;
    sub_1E4996F3C();
    if (v24(v10, 1, v25) != 1)
    {
      sub_1E48C1338(v10, &qword_1ECF7EC50, &qword_1E49A4BF0);
    }
  }

  else
  {
    v26 = v41;
    (*(v12 + 32))(v41, v10, v25);
  }

  v27 = sub_1E499816C();
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v12 + 16);
  v30 = v40;
  v29(v40, v26, v25);
  sub_1E499814C();

  v31 = sub_1E499813C();
  v32 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v33 = v26;
  v34 = v25;
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 16) = v31;
  *(v35 + 24) = v36;
  (*(v23 + 32))(v35 + v32, v30, v34);
  *(v35 + ((v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  v37 = sub_1E498DD1C(0, 0, v42, &unk_1E499A368, v35);
  sub_1E48B9F0C(v37);
  return (*(v23 + 8))(v33, v34);
}

uint64_t sub_1E48B8C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for TimeString(0);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = type metadata accessor for TextClockDescriptor(0);
  v5[20] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC70, &qword_1E499A380);
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = sub_1E499814C();
  v5[29] = sub_1E499813C();
  v19 = sub_1E499811C();
  v5[30] = v19;
  v5[31] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1E48B8EB0, v19, v18);
}

uint64_t sub_1E48B8EB0()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[12];
  v7 = v0[13];
  v8 = qword_1ECF80790;
  v9 = *(v0[20] + 20);
  v10 = sub_1E4996F4C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6, v10);
  *v5 = 0.0;
  v11 = *(v8 + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);
  v12 = swift_task_alloc();
  *(v12 + 16) = v8;
  *(v12 + 24) = v5;
  sub_1E491780C(v5, sub_1E48BFE74, v12, v2);

  sub_1E48C1504(v5, type metadata accessor for TextClockDescriptor);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[32] = 0;
  v13 = v0[28];
  v14 = sub_1E499813C();
  v0[33] = v14;
  v15 = *(MEMORY[0x1E69E8678] + 4);
  v16 = swift_task_alloc();
  v0[34] = v16;
  *v16 = v0;
  v16[1] = sub_1E48B90C0;
  v17 = v0[27];
  v18 = v0[25];
  v19 = v0[19];
  v20 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v19, v14, v20, v18);
}

uint64_t sub_1E48B90C0()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v7 = *v0;

  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E48B9204, v5, v4);
}

uint64_t sub_1E48B9204()
{
  v1 = v0[19];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[29];
    (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_23:
    v27 = v0[27];
    v28 = v0[24];
    v29 = v0[21];
    v31 = v0[18];
    v30 = v0[19];
    v33 = v0[16];
    v32 = v0[17];

    v34 = v0[1];

    return v34();
  }

  v3 = v0[13];
  sub_1E48BF0EC(v1, v0[18]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v22 = v0[29];
    v24 = v0[26];
    v23 = v0[27];
    v25 = v0[25];
    v26 = v0[18];

    sub_1E48C1504(v26, type metadata accessor for TimeString);
    (*(v24 + 8))(v23, v25);
    goto LABEL_23;
  }

  v5 = Strong;
  v6 = v0[17];
  v7 = v0[16];
  sub_1E48C148C(v0[18], v6, type metadata accessor for TimeString);
  v8 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v5 + v8, v7, type metadata accessor for TimeString);
  v9 = *v7 == *v6 && v7[1] == v6[1];
  if (!v9 && (sub_1E499884C() & 1) == 0)
  {
    v10 = v0[16];
    v11 = v0[17];
LABEL_27:
    v21 = v0[32];
    v36 = v0[18];
    sub_1E48C1504(v10, type metadata accessor for TimeString);
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v5;
    *(v37 + 24) = v11;
    v0[11] = v5;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    sub_1E4996FBC();

    sub_1E48C1504(v36, type metadata accessor for TimeString);

    goto LABEL_28;
  }

  v10 = v0[16];
  v11 = v0[17];
  if (v10[2] != v11[2] || v10[3] != v11[3])
  {
    v12 = v10[2];
    v13 = sub_1E499884C();
    v10 = v0[16];
    v11 = v0[17];
    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v10[4] != v11[4] || v10[5] != v11[5])
  {
    goto LABEL_27;
  }

  if (v10[6] != v11[6] || v10[7] != v11[7])
  {
    v14 = v10[6];
    v15 = sub_1E499884C();
    v10 = v0[16];
    v11 = v0[17];
    if ((v15 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v10[8] != v11[8])
  {
    goto LABEL_27;
  }

  if (v10[9] != v11[9])
  {
    goto LABEL_27;
  }

  v16 = *(v0[14] + 36);
  v17 = MEMORY[0x1E691A740](v10 + v16, v11 + v16);
  v10 = v0[16];
  v11 = v0[17];
  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = *(v0[14] + 40);
  v19 = sub_1E4996D2C();
  v10 = v0[16];
  v11 = v0[17];
  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = v0[18];
  sub_1E48C1504(v10, type metadata accessor for TimeString);
  sub_1E48C1504(v20, type metadata accessor for TimeString);
  swift_beginAccess();
  sub_1E48BFB2C(v11, v5 + v8);
  swift_endAccess();

  v21 = v0[32];
LABEL_28:
  sub_1E48C1504(v0[17], type metadata accessor for TimeString);
  v0[32] = v21;
  v38 = v0[28];
  v39 = sub_1E499813C();
  v0[33] = v39;
  v40 = *(MEMORY[0x1E69E8678] + 4);
  v41 = swift_task_alloc();
  v0[34] = v41;
  *v41 = v0;
  v41[1] = sub_1E48B90C0;
  v42 = v0[27];
  v43 = v0[25];
  v44 = v0[19];
  v45 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v44, v39, v45, v43);
}

uint64_t sub_1E48B96D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B97AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9884(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a1, &v11 - v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v9 = *a2;
  return sub_1E48B9930(v8);
}

uint64_t sub_1E48B9930(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v9 = sub_1E48BF670(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
    swift_beginAccess();
    sub_1E48BFB90(v7, v1 + v8);
    swift_endAccess();
    sub_1E48B8744();
    sub_1E48C1338(v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
  }

  return sub_1E48C1338(a1, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a2, &v11 - v7, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v9 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48BFB90(v8, a1 + v9);
  swift_endAccess();
  sub_1E48B8744();
  return sub_1E48C1338(v8, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9C38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  return sub_1E48C148C(v5 + v3, a1, type metadata accessor for TimeString);
}

uint64_t sub_1E48B9D14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48BFB2C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1E48B9D80()
{
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);
}

uint64_t sub_1E48B9E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);
}

uint64_t sub_1E48B9EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48B9F0C(v4);
}

uint64_t sub_1E48B9F0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);

  v5 = sub_1E49981CC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1E48BA09C()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone, &qword_1ECF7EC50, &qword_1E49A4BF0);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__previousTimeString, &qword_1ECF815D0, &unk_1E499A370);
  sub_1E48C1504(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString, type metadata accessor for TimeString);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged + 8);
  sub_1E48BFEC4(*(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged));
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);

  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel___observationRegistrar;
  v4 = sub_1E499700C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RollingClockViewModel()
{
  result = qword_1ECF7EBB0;
  if (!qword_1ECF7EBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48BA214()
{
  sub_1E48BA3A0(319, &qword_1ECF7EBC0, MEMORY[0x1E6969BC0]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1E48BA3A0(319, &qword_1ECF7EBC8, type metadata accessor for TimeString);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for TimeString(319);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1E499700C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E48BA3A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E48BA444(uint64_t a1, int a2)
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

uint64_t sub_1E48BA464(uint64_t result, int a2, int a3)
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

uint64_t sub_1E48BA4C8()
{
  v1 = *v0;
  sub_1E499892C();
  MEMORY[0x1E691C150](v1);
  return sub_1E499896C();
}

uint64_t sub_1E48BA510()
{
  v1 = *v0;
  sub_1E499892C();
  MEMORY[0x1E691C150](v1);
  return sub_1E499896C();
}

uint64_t sub_1E48BA578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC0, &qword_1E499B0F8);
  v3 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101, v4);
  v102 = &v77[-v5];
  v88 = sub_1E499777C();
  v6 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88, v7);
  v87 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  v9 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86, v10);
  v91 = &v77[-v11];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v12 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89, v13);
  v90 = &v77[-v14];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  v15 = *(*(v96 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v96, v16);
  v97 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v19);
  v99 = &v77[-v20];
  v95 = sub_1E499745C();
  v98 = *(v95 - 8);
  v21 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v95, v22);
  v24 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE30, &qword_1E499AFF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v92 = &v77[-v28];
  v29 = sub_1E4996A4C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v77[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v77[-v36];
  v38 = *(a1 + 73);
  sub_1E48BAEAC(&v77[-v36]);
  v39 = swift_allocObject();
  v40 = v39;
  v41 = *(a1 + 48);
  v39[3] = *(a1 + 32);
  v39[4] = v41;
  *(v39 + 74) = *(a1 + 58);
  v42 = *(a1 + 16);
  v39[1] = *a1;
  v39[2] = v42;
  v100 = v25;
  if (v38 != 3)
  {
    (*(v30 + 16))(v34, v37, v29);
    v56 = v29;
    v57 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v38;
    *(v58 + 24) = sub_1E48C13FC;
    *(v58 + 32) = v40;
    (*(v30 + 32))(v58 + v57, v34, v56);
    v59 = v102;
    *v102 = sub_1E48C1404;
    v59[1] = v58;
    swift_storeEnumTagMultiPayload();
    sub_1E48C05E0(a1, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE90, &qword_1E499B020);
    sub_1E48C09C4();
    sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020);
    sub_1E499772C();
    return (*(v30 + 8))(v37, v56);
  }

  v83 = v39;
  v93 = v37;
  v85 = v30;
  v94 = v29;
  sub_1E48C05E0(a1, v104);
  sub_1E48BAEAC(v34);
  v81 = sub_1E49978CC();
  v80 = v43;
  v78 = v44;
  v82 = v45;
  v46 = sub_1E48DAD54(v24, *(a1 + 64), *(a1 + 72));
  v47 = v98;
  v48 = v99;
  *v99 = v46;
  v49 = v48 + *(v96 + 48);
  v50 = *(v47 + 16);
  v84 = v24;
  v51 = v95;
  v50(v49, v24);
  v52 = v97;
  sub_1E48C12D0(v48, v97, &qword_1ECF7EFC8, &qword_1E499B100);
  v53 = *v52;
  v79 = v46;

  v54 = sub_1E499743C();
  v55 = sub_1E499744C();
  if (v54)
  {
    if ((v55 & ~v54) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v55)
  {
    v54 = 0;
    goto LABEL_9;
  }

  v54 |= v55;
LABEL_9:
  v96 = *(v96 + 48);
  v61 = v87;
  (v50)(v87, v49, v51);
  v62 = v88;
  *(v61 + *(v88 + 20)) = v53;
  *(v61 + *(v62 + 24)) = v54;
  v63 = v91;
  sub_1E48C148C(v61, &v91[*(v86 + 36)], MEMORY[0x1E6980738]);
  v64 = v81;
  v65 = v80;
  *v63 = v81;
  *(v63 + 8) = v65;
  v66 = v78 & 1;
  *(v63 + 16) = v78 & 1;
  *(v63 + 24) = v82;
  sub_1E48C14F4(v64, v65, v66);

  sub_1E48C1504(v61, MEMORY[0x1E6980738]);
  v67 = *(v98 + 8);
  v67(v97 + v96, v51);
  KeyPath = swift_getKeyPath();
  v69 = v90;
  v70 = &v90[*(v89 + 36)];
  v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010) + 28);
  sub_1E49973CC();

  sub_1E48C1564(v64, v65, v66);

  sub_1E48C1338(v99, &qword_1ECF7EFC8, &qword_1E499B100);
  v67(v84, v95);
  *v70 = KeyPath;
  sub_1E48C15C8(v63, v69, &qword_1ECF7EE50, &qword_1E499B000);
  v72 = v92;
  sub_1E48C15C8(v69, v92, &qword_1ECF7EE40, &qword_1E499AFF8);
  v73 = sub_1E4997D3C();
  v74 = &v72[*(v100 + 36)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE80, &qword_1E499B018);
  v76 = v85;
  (*(v85 + 16))(v74 + *(v75 + 36), v93, v94);
  *v74 = v73;
  sub_1E48C12D0(v72, v102, &qword_1ECF7EE30, &qword_1E499AFF0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE90, &qword_1E499B020);
  sub_1E48C09C4();
  sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020);
  sub_1E499772C();

  (*(v76 + 8))(v93, v94);
  return sub_1E48C1338(v72, &qword_1ECF7EE30, &qword_1E499AFF0);
}

uint64_t sub_1E48BAEAC@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v92 = v87 - v5;
  v95 = sub_1E499708C();
  v94 = *(v95 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95, v7);
  v93 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F010, &qword_1E499B178);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v98 = v87 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F018, &unk_1E499B180);
  v97 = *(v99 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99, v14);
  v90 = v87 - v15;
  v16 = sub_1E4996ABC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v19 = type metadata accessor for TimeString(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = (v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1E4996A4C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v96 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v102 = v87 - v31;
  v32 = sub_1E48BBFE4();
  v33 = *v1;
  v100 = v1;
  v34 = *(v1 + 8);
  v35 = sub_1E4961780(v33, v34);
  swift_getKeyPath();
  if (v32)
  {
    v103[0] = v35;
    v36 = sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    v91 = v24;
    v37 = v36;
    v38 = v34;
    sub_1E4996FCC();

    v39 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v35 + v39, v23, type metadata accessor for TimeString);

    v40 = v23[2];
    v41 = v23[3];

    sub_1E48C1504(v23, type metadata accessor for TimeString);
    sub_1E4996AAC();
    v89 = v25;
    v42 = v102;
    sub_1E4996A5C();
    v88 = v38;
    v43 = sub_1E4961780(v33, v38);
    swift_getKeyPath();
    v103[0] = v43;
    v87[1] = v37;
    sub_1E4996FCC();

    v44 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v43 + v44, v23, type metadata accessor for TimeString);

    v45 = v23[4];
    v46 = v23[5];
    sub_1E48C1504(v23, type metadata accessor for TimeString);
    v47 = v89;
    v48 = v91;
    (*(v89 + 16))(v96, v42, v91);
    sub_1E48BFE7C(&qword_1ECF7F028, MEMORY[0x1E6968848]);
    v49 = v98;
    sub_1E49982DC();
    v25 = v47;
    if ((*(v97 + 48))(v49, 1, v99) == 1)
    {
      v99 = v33;
      sub_1E48C1338(v49, &qword_1ECF7F010, &qword_1E499B178);
      v50 = v100;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v51 = qword_1EE2BB458;
      v52 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      v53 = v92;
      sub_1E48C12D0(v51 + v52, v92, &qword_1ECF7F008, &qword_1E499B170);
      v54 = v94;
      v55 = *(v94 + 48);
      v56 = v95;
      if (v55(v53, 1, v95) == 1)
      {
        v57 = v93;
        sub_1E4904BF4(v93);
        v58 = v57;
        if (v55(v53, 1, v56) != 1)
        {
          sub_1E48C1338(v53, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v58 = v93;
        (*(v54 + 32))(v93, v53, v56);
      }

      sub_1E48C05E0(v50, v103);
      v70 = sub_1E499706C();
      v71 = sub_1E499830C();
      sub_1E48C1180(v50);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v104 = v73;
        *v72 = 136315394;
        v74 = sub_1E4961780(v99, v88);
        swift_getKeyPath();
        v103[0] = v74;
        sub_1E4996FCC();
        v48 = v91;

        v75 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
        swift_beginAccess();
        sub_1E48C148C(v74 + v75, v23, type metadata accessor for TimeString);

        v76 = v23[4];
        v77 = v23[5];
        sub_1E48C1504(v23, type metadata accessor for TimeString);
        v78 = sub_1E49984AC();
        v80 = sub_1E48CA094(v78, v79, &v104);

        *(v72 + 4) = v80;
        *(v72 + 12) = 2080;
        v62 = v102;
        swift_beginAccess();
        sub_1E48BFE7C(&qword_1ECF7F030, MEMORY[0x1E6968848]);
        v81 = sub_1E49987FC();
        v83 = sub_1E48CA094(v81, v82, &v104);

        *(v72 + 14) = v83;
        _os_log_impl(&dword_1E48B0000, v70, v71, "Cannot format time designator. Range of designator in NSAttributedString provided by CLKTimeFormatter is unknown when converted to AttributedString. \nRange: '%s' \nAttributedString '%s'.", v72, 0x16u);
        swift_arrayDestroy();
        v25 = v89;
        MEMORY[0x1E691CED0](v73, -1, -1);
        MEMORY[0x1E691CED0](v72, -1, -1);

        (*(v94 + 8))(v93, v95);
      }

      else
      {

        (*(v54 + 8))(v58, v56);
        v62 = v102;
        v48 = v91;
      }
    }

    else
    {
      v63 = v90;
      sub_1E48C15C8(v49, v90, &qword_1ECF7F018, &unk_1E499B180);
      v50 = v100;
      v64 = *(v100 + 16);
      v65 = sub_1E499782C();
      sub_1E48C1B44(&qword_1ECF7F038, &qword_1ECF7F018, &unk_1E499B180);
      v62 = v102;
      v66 = sub_1E4996A7C();
      v104 = v65;
      sub_1E48C1630();
      sub_1E4996ACC();
      v66(v103, 0);
      if (!*(v50 + 48))
      {
        v67 = *(v50 + 32);
        if (v67)
        {
          v68 = *(v50 + 32);
          swift_retain_n();
          v69 = sub_1E4996A7C();
          v104 = v67;
          sub_1E48C1684();
          sub_1E4996ACC();
          v69(v103, 0);
        }
      }

      sub_1E48C1338(v63, &qword_1ECF7F018, &unk_1E499B180);
    }
  }

  else
  {
    v103[0] = v35;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    sub_1E4996FCC();

    v59 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v35 + v59, v23, type metadata accessor for TimeString);

    v60 = *v23;
    v61 = v23[1];

    sub_1E48C1504(v23, type metadata accessor for TimeString);
    sub_1E4996AAC();
    v62 = v102;
    sub_1E4996A5C();
    v50 = v100;
    v48 = v24;
  }

  v84 = *(v50 + 56);
  swift_beginAccess();
  v103[19] = v84;
  sub_1E48C1574();
  v85 = v84;
  sub_1E4996A6C();
  swift_endAccess();
  (*(v25 + 16))(v101, v62, v48);
  return (*(v25 + 8))(v62, v48);
}

uint64_t sub_1E48BBB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = sub_1E499777C();
  v3 = *(*(v66 - 1) + 64);
  MEMORY[0x1EEE9AC00](v66, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64, v8);
  v60 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v56 - v17);
  v19 = sub_1E499745C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4996A4C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  sub_1E48BAEAC(&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1E49978CC();
  v61 = v30;
  v62 = v29;
  v58 = v31;
  v63 = v32;
  v33 = sub_1E48DAD54(v24, *(a1 + 64), *(a1 + 72));
  *v18 = v33;
  v34 = v10;
  v35 = *(v10 + 48);
  v67 = v24;
  KeyPath = v20;
  v36 = *(v20 + 16);
  v37 = v24;
  v38 = v19;
  v36(v18 + v35, v37, v19);
  sub_1E48C12D0(v18, v15, &qword_1ECF7EFC8, &qword_1E499B100);
  v65 = v15;
  v39 = *v15;
  v59 = v33;

  v40 = sub_1E499743C();
  v41 = sub_1E499744C();
  if (v40)
  {
    if ((v41 & ~v40) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v41)
  {
    v40 = 0;
    goto LABEL_7;
  }

  v40 |= v41;
LABEL_7:
  v57 = *(v34 + 48);
  v42 = v38;
  v36(v6, v18 + v35, v38);
  v43 = v66;
  *&v6[*(v66 + 5)] = v39;
  *&v6[*(v43 + 24)] = v40;
  v44 = v60;
  sub_1E48C148C(v6, &v60[*(v64 + 36)], MEMORY[0x1E6980738]);
  v45 = v62;
  v46 = v63;
  v66 = v18;
  v47 = v61;
  *v44 = v62;
  *(v44 + 8) = v47;
  v48 = v58;
  v49 = v58 & 1;
  *(v44 + 16) = v58 & 1;
  *(v44 + 24) = v46;
  sub_1E48C14F4(v45, v47, v48 & 1);

  sub_1E48C1504(v6, MEMORY[0x1E6980738]);
  v50 = *(KeyPath + 8);
  v50(&v65[v57], v42);
  KeyPath = swift_getKeyPath();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v52 = v69;
  v53 = (v69 + *(v51 + 36));
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010) + 28);
  sub_1E49973CC();

  sub_1E48C1564(v45, v47, v49);

  sub_1E48C1338(v66, &qword_1ECF7EFC8, &qword_1E499B100);
  v50(v67, v42);
  *v53 = KeyPath;
  return sub_1E48C15C8(v44, v52, &qword_1ECF7EE50, &qword_1E499B000);
}

BOOL sub_1E48BBFE4()
{
  v26[0] = sub_1E4996D8C();
  v1 = *(v26[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v26[0], v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4996F4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeString(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4961780(*v0, *(v0 + 8));
  swift_getKeyPath();
  v26[1] = v18;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v19 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v18 + v19, v17, type metadata accessor for TimeString);

  (*(v7 + 16))(v11, &v17[*(v13 + 44)], v6);
  sub_1E48C1504(v17, type metadata accessor for TimeString);
  sub_1E4996D7C();
  v20 = sub_1E4996EFC();
  v21 = *(v1 + 8);
  v22 = v26[0];
  v21(v5, v26[0]);
  v23 = *(v7 + 8);
  v23(v11, v6);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v24 = sub_1E4996EFC();
  v21(v5, v22);
  v23(v11, v6);
  return v20 != v24;
}

uint64_t sub_1E48BC2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14[0] = v3;
  *(v14 + 10) = *(v1 + 58);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = *(&v4 + 1);
  v6 = v13;
  v7 = v3;
  sub_1E48C05E0(v12, &v11);
  sub_1E48BC704(v5, v6, *(&v6 + 1), v7, v12, a1);
  v8 = sub_1E4997D3C();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED70, &qword_1E499AF50) + 36);
  *v9 = v8;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 32) = v7;
  return sub_1E48C0618(v5, v6, *(&v6 + 1), v7);
}

double sub_1E48BC3C0@<D0>(unsigned __int8 a1@<W1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = sub_1E4997CEC();
  a4[1] = v8;
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFD0, &qword_1E499B138) + 44);
  *v9 = sub_1E49975AC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFD8, &qword_1E499B140);
  sub_1E48BC550(a1, a2, &v9[*(v10 + 44)]);
  v11 = sub_1E4997D3C();
  v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFE0, &qword_1E499B148) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE80, &qword_1E499B018) + 36);
  v14 = sub_1E4996A4C();
  (*(*(v14 - 8) + 16))(v12 + v13, a3, v14);
  *v12 = v11;
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFE8, &qword_1E499B150) + 36));
  *v15 = v17;
  v15[1] = v18;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_1E48BC550@<X0>(unsigned __int8 a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFF0, &qword_1E499B158);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v21 - v16;
  a2(v15);
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFF8, &qword_1E499B160) + 36)] = 257;
  *&v17[*(v8 + 44)] = 0x3FF0000000000000;
  sub_1E48C12D0(v17, v13, &qword_1ECF7EFF0, &qword_1E499B158);
  *a3 = 0;
  *(a3 + 8) = (v6 - 1) < 2;
  *(a3 + 9) = (v6 - 1) > 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F000, &qword_1E499B168);
  sub_1E48C12D0(v13, a3 + *(v18 + 48), &qword_1ECF7EFF0, &qword_1E499B158);
  v19 = a3 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = (a1 & 0xFD) == 0;
  *(v19 + 9) = (a1 & 0xFD) != 0;
  sub_1E48C1338(v17, &qword_1ECF7EFF0, &qword_1E499B158);
  return sub_1E48C1338(v13, &qword_1ECF7EFF0, &qword_1E499B158);
}

uint64_t sub_1E48BC704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v143 = a4;
  *(&v136 + 1) = a3;
  *&v136 = a2;
  v144 = a1;
  v142 = a6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED78, &qword_1E499AF58);
  v7 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132, v8);
  v134 = (&v115 - v9);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED80, &qword_1E499AF60);
  v10 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123, v11);
  v125 = (&v115 - v12);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED88, &qword_1E499AF68);
  v13 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133, v14);
  v126 = &v115 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED90, &qword_1E499AF70);
  v16 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141, v17);
  v135 = &v115 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED98, &qword_1E499AF78);
  v19 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124, v20);
  v22 = &v115 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDA0, &qword_1E499AF80);
  v23 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121, v24);
  v117 = &v115 - v25;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDA8, &qword_1E499AF88);
  v26 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119, v27);
  v120 = &v115 - v28;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDB0, &qword_1E499AF90);
  v29 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130, v30);
  v122 = &v115 - v31;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDB8, &qword_1E499AF98);
  v32 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118, v33);
  v116 = &v115 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDC0, &qword_1E499AFA0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v115 - v38;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDC8, &qword_1E499AFA8);
  v40 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137, v41);
  v139 = &v115 - v42;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDD0, &qword_1E499AFB0);
  v43 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127, v44);
  v129 = &v115 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDD8, &qword_1E499AFB8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v115 - v49;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDE0, &qword_1E499AFC0);
  v51 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128, v52);
  v54 = &v115 - v53;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDE8, &qword_1E499AFC8);
  v55 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138, v56);
  v131 = &v115 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF0, &qword_1E499AFD0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = &v115 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v65);
  v140 = &v115 - v66;
  v67 = swift_allocObject();
  v68 = a5[3];
  v67[3] = a5[2];
  v67[4] = v68;
  *(v67 + 74) = *(a5 + 58);
  v70 = *a5;
  v69 = a5[1];
  v145 = a5;
  v67[1] = v70;
  v67[2] = v69;
  if (v143 > 1u)
  {
    if (v143 == 2)
    {
      v84 = swift_allocObject();
      *(v84 + 2) = sub_1E48C073C;
      *(v84 + 3) = v67;
      v85 = v144;
      v86 = v136;
      *(v84 + 4) = v144;
      *(v84 + 5) = v86;
      v87 = v125;
      *v125 = sub_1E48C11B0;
      v87[1] = v84;
      swift_storeEnumTagMultiPayload();
      v76 = v145;
      sub_1E48C05E0(v145, v148);
      sub_1E48C0618(v85, v86, *(&v136 + 1), 2u);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EEB0, &qword_1E499B030);
      sub_1E48C0854();
      sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030);
      v88 = v126;
      sub_1E499772C();
      sub_1E48C12D0(v88, v134, &qword_1ECF7ED88, &qword_1E499AF68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0);
      v77 = v135;
      sub_1E499772C();
      sub_1E48C1338(v88, &qword_1ECF7ED88, &qword_1E499AF68);
    }

    else
    {
      v71 = v144;
      if (v143 != 3)
      {
        if (!(*(&v136 + 1) | v136 | v144))
        {
          v107 = v145;
          sub_1E48C05E0(v145, v148);
          sub_1E48BA578(v107, v39);
          v108 = &v39[*(v35 + 36)];
          sub_1E4997CDC();
          sub_1E48C12D0(v39, v50, &qword_1ECF7EDC0, &qword_1E499AFA0);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0D5C();
          sub_1E48C0E14();
          sub_1E499772C();
          sub_1E48C12D0(v54, v129, &qword_1ECF7EDE0, &qword_1E499AFC0);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0CD0();
          sub_1E48C0ECC();
          v109 = v131;
          sub_1E499772C();
          sub_1E48C1338(v54, &qword_1ECF7EDE0, &qword_1E499AFC0);
          sub_1E48C12D0(v109, v139, &qword_1ECF7EDE8, &qword_1E499AFC8);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0C44();
          sub_1E48C10C8();
          v83 = v140;
          sub_1E499772C();
          sub_1E48C1338(v109, &qword_1ECF7EDE8, &qword_1E499AFC8);
          v110 = v39;
          v76 = v107;
          sub_1E48C1338(v110, &qword_1ECF7EDC0, &qword_1E499AFA0);
          goto LABEL_19;
        }

        if (v144 != 1 || v136 != 0)
        {
          v76 = v145;
          sub_1E48C05E0(v145, v148);
          v111 = v117;
          sub_1E48BA578(v76, v117);
          v112 = *(v121 + 36);
          v146 = xmmword_1E499A120;
          v147 = 0;
          *v148 = xmmword_1E499A130;
          *&v148[16] = xmmword_1E499A140;
          *&v148[32] = xmmword_1E499A150;
          v149 = xmmword_1E499A160;
          v150 = xmmword_1E499A170;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF48, &qword_1E499B060);
          sub_1E48C11C0();
          sub_1E499794C();
          sub_1E48C12D0(v111, v120, &qword_1ECF7EDA0, &qword_1E499AF80);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0F58();
          sub_1E48C1010();
          v113 = v122;
          sub_1E499772C();
          sub_1E48C12D0(v113, v129, &qword_1ECF7EDB0, &qword_1E499AF90);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0CD0();
          sub_1E48C0ECC();
          v114 = v131;
          sub_1E499772C();
          sub_1E48C1338(v113, &qword_1ECF7EDB0, &qword_1E499AF90);
          sub_1E48C12D0(v114, v139, &qword_1ECF7EDE8, &qword_1E499AFC8);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0C44();
          sub_1E48C10C8();
          v83 = v140;
          sub_1E499772C();
          sub_1E48C1338(v114, &qword_1ECF7EDE8, &qword_1E499AFC8);
          sub_1E48C1338(v111, &qword_1ECF7EDA0, &qword_1E499AF80);
          goto LABEL_19;
        }

        v76 = v145;
        sub_1E48C05E0(v145, v148);
        v92 = v116;
        sub_1E48BA578(v76, v116);
        v89 = &qword_1E499AF98;
        sub_1E48C12D0(v92, v120, &qword_1ECF7EDB8, &qword_1E499AF98);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0F58();
        sub_1E48C1010();
        v93 = v122;
        sub_1E499772C();
        sub_1E48C12D0(v93, v129, &qword_1ECF7EDB0, &qword_1E499AF90);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0CD0();
        sub_1E48C0ECC();
        v94 = v131;
        sub_1E499772C();
        sub_1E48C1338(v93, &qword_1ECF7EDB0, &qword_1E499AF90);
        sub_1E48C12D0(v94, v139, &qword_1ECF7EDE8, &qword_1E499AFC8);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0C44();
        sub_1E48C10C8();
        v83 = v140;
        sub_1E499772C();
        sub_1E48C1338(v94, &qword_1ECF7EDE8, &qword_1E499AFC8);
        v90 = v92;
        v91 = &qword_1ECF7EDB8;
        goto LABEL_9;
      }

      v72 = swift_allocObject();
      *(v72 + 2) = sub_1E48C073C;
      *(v72 + 3) = v67;
      v73 = v136;
      *(v72 + 4) = v71;
      *(v72 + 5) = v73;
      v74 = *(&v136 + 1);
      *(v72 + 6) = *(&v136 + 1);
      v75 = v134;
      *v134 = sub_1E48C0744;
      v75[1] = v72;
      swift_storeEnumTagMultiPayload();
      v76 = v145;
      sub_1E48C05E0(v145, v148);
      sub_1E48C0618(v71, v73, v74, 3u);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0);
      v77 = v135;
      sub_1E499772C();
    }

    v89 = &qword_1E499AF70;
    sub_1E48C12D0(v77, v139, &qword_1ECF7ED90, &qword_1E499AF70);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0C44();
    sub_1E48C10C8();
    v83 = v140;
    sub_1E499772C();

    v90 = v77;
    v91 = &qword_1ECF7ED90;
LABEL_9:
    sub_1E48C1338(v90, v91, v89);
    goto LABEL_19;
  }

  if (!v143)
  {
    v78 = v145;
    sub_1E48C05E0(v145, v148);
    sub_1E48BA578(v78, v62);
    KeyPath = swift_getKeyPath();
    v80 = &v62[*(v58 + 36)];
    v81 = v144;
    *v80 = KeyPath;
    v80[1] = v81;
    sub_1E48C12D0(v62, v50, &qword_1ECF7EDF0, &qword_1E499AFD0);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0D5C();
    sub_1E48C0E14();

    sub_1E499772C();
    sub_1E48C12D0(v54, v129, &qword_1ECF7EDE0, &qword_1E499AFC0);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0CD0();
    sub_1E48C0ECC();
    v82 = v131;
    sub_1E499772C();
    sub_1E48C1338(v54, &qword_1ECF7EDE0, &qword_1E499AFC0);
    sub_1E48C12D0(v82, v139, &qword_1ECF7EDE8, &qword_1E499AFC8);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0C44();
    sub_1E48C10C8();
    v83 = v140;
    sub_1E499772C();
    sub_1E48C1338(v82, &qword_1ECF7EDE8, &qword_1E499AFC8);
    v76 = v145;
    sub_1E48C1338(v62, &qword_1ECF7EDF0, &qword_1E499AFD0);
LABEL_19:
    sub_1E48B25FC(v83, v142);

    return sub_1E48C1180(v76);
  }

  v95 = v145;
  sub_1E48C05E0(v145, v148);
  sub_1E48BA578(v95, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF40, &qword_1E49A4B50);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E499A180;
  v97 = v144;
  v98 = *(v144 + 16);
  if (v98)
  {
    v99 = result;
    v100 = *(v144 + 32);

    result = sub_1E4997CAC();
    v99[4] = result;
    v99[5] = v101;
    if (v98 != 1)
    {
      v102 = *(v97 + 40);

      v99[6] = sub_1E4997CAC();
      v99[7] = v103;
      sub_1E4997D8C();
      sub_1E4997D9C();
      sub_1E4997CBC();
      sub_1E49972FC();
      v104 = &v22[*(v124 + 36)];
      *v104 = *v148;
      *(v104 + 8) = *&v148[8];
      *(v104 + 24) = *&v148[24];
      sub_1E48C12D0(v22, v125, &qword_1ECF7ED98, &qword_1E499AF78);
      swift_storeEnumTagMultiPayload();
      v144 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EEB0, &qword_1E499B030);
      sub_1E48C0854();
      sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030);
      v105 = v126;
      sub_1E499772C();
      sub_1E48C12D0(v105, v134, &qword_1ECF7ED88, &qword_1E499AF68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0);
      v106 = v135;
      sub_1E499772C();
      sub_1E48C1338(v105, &qword_1ECF7ED88, &qword_1E499AF68);
      sub_1E48C12D0(v106, v139, &qword_1ECF7ED90, &qword_1E499AF70);
      swift_storeEnumTagMultiPayload();
      sub_1E48C0C44();
      sub_1E48C10C8();
      v83 = v140;
      sub_1E499772C();
      sub_1E48C1338(v106, &qword_1ECF7ED90, &qword_1E499AF70);
      sub_1E48C1338(v144, &qword_1ECF7ED98, &qword_1E499AF78);
      v76 = v145;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1E48BDC88@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *&v39 = a2;
  *&v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF68, &qword_1E499B0A0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF70, &qword_1E499B0A8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v39 - v22;
  sub_1E499729C();
  sub_1E499729C();
  *a3 = sub_1E4997CEC();
  a3[1] = v24;
  v41 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF78, &qword_1E499B0B0);
  v26 = a3 + *(v25 + 44);
  (v40)(v25);
  *&v23[*(v15 + 44)] = 0x3FF0000000000000;

  MEMORY[0x1E691B4E0](v27);
  sub_1E499730C();
  v28 = v43;
  sub_1E4997CEC();
  sub_1E499722C();
  *&v42[7] = v46;
  *&v42[23] = v47;
  *&v42[39] = v48;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF80, &qword_1E499B0B8) + 36);
  v30 = *MEMORY[0x1E6981DB0];
  v31 = sub_1E4997D4C();
  v32 = *(*(v31 - 8) + 104);
  v40 = v44;
  v39 = v45;
  v32(&v13[v29], v30, v31);
  *v13 = v28;
  *(v13 + 24) = v39;
  *(v13 + 8) = v40;
  *(v13 + 5) = 0x403E000000000000;
  v13[48] = 0;
  v33 = *&v42[16];
  *(v13 + 49) = *v42;
  *(v13 + 65) = v33;
  *(v13 + 81) = *&v42[32];
  *(v13 + 12) = *&v42[47];
  *&v13[*(v5 + 44)] = 0xBFF0000000000000;
  sub_1E48C12D0(v23, v20, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C12D0(v13, v10, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C12D0(v20, v26, &qword_1ECF7EF70, &qword_1E499B0A8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF88, &qword_1E499B0C0);
  sub_1E48C12D0(v10, v26 + *(v34 + 48), &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v13, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v23, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C1338(v10, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v20, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF90, &qword_1E499B0C8);
  v36 = (v41 + *(v35 + 36));
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  result = *&v51;
  v36[2] = v51;
  return result;
}

double sub_1E48BE0D4@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v55[1] = a4;
  v55[0] = a3;
  v56 = sub_1E4997AEC();
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v56, v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF98, &qword_1E499B0D0);
  v15 = *(*(v59 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v59, v16);
  v60 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF70, &qword_1E499B0A8);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v57 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v55 - v29;
  sub_1E499729C();
  v61 = a1;
  sub_1E499729C();
  *a5 = sub_1E4997CEC();
  a5[1] = v31;
  v32 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFA0, &qword_1E499B0D8);
  v34 = *(v33 + 44);
  a2(v33, v35);
  *&v30[*(v23 + 44)] = 0x3FF0000000000000;
  v36 = qword_1ECF7EB48;

  if (v36 != -1)
  {
    swift_once();
  }

  v58 = v32;
  v37 = v32 + v34;
  v38 = qword_1ECF819A8;
  sub_1E4997B3C();
  v39 = v56;
  (*(v10 + 104))(v14, *MEMORY[0x1E6981630], v56);
  v40 = sub_1E4997B2C();

  (*(v10 + 8))(v14, v39);
  sub_1E4997CEC();
  sub_1E499722C();
  LOBYTE(v66) = 1;
  *&v62[6] = v63;
  *&v62[22] = v64;
  *&v62[38] = v65;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFA8, &qword_1E499B0E0) + 36);
  v42 = *MEMORY[0x1E6981DB0];
  v43 = sub_1E4997D4C();
  (*(*(v43 - 8) + 104))(&v21[v41], v42, v43);
  *v21 = v40;
  *(v21 + 1) = 0;
  *(v21 + 8) = 257;
  v44 = *&v62[16];
  *(v21 + 18) = *v62;
  *(v21 + 34) = v44;
  *(v21 + 50) = *&v62[32];
  *(v21 + 8) = *&v62[46];
  sub_1E4997DAC();
  v45 = &v21[*(v59 + 36)];
  *v45 = a6;
  *(v45 + 1) = v46;
  *(v45 + 2) = v47;
  v48 = v57;
  sub_1E48C12D0(v30, v57, &qword_1ECF7EF70, &qword_1E499B0A8);
  v49 = v60;
  sub_1E48C12D0(v21, v60, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C12D0(v48, v37, &qword_1ECF7EF70, &qword_1E499B0A8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFB0, &qword_1E499B0E8);
  sub_1E48C12D0(v49, v37 + *(v50 + 48), &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v21, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v30, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C1338(v49, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v48, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFB8, &qword_1E499B0F0);
  v52 = (v58 + *(v51 + 36));
  v53 = v67;
  *v52 = v66;
  v52[1] = v53;
  result = *&v68;
  v52[2] = v68;
  return result;
}

__n128 sub_1E48BE658@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4997CEC();
  sub_1E499736C();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

id sub_1E48BE720()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E818]);

  return [v0 init];
}

uint64_t sub_1E48BE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E48C1E5C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E48BE814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E48C1E5C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E48BE878()
{
  sub_1E48C1E5C();
  sub_1E49976FC();
  __break(1u);
}

uint64_t sub_1E48BE8C4(uint64_t a1)
{
  v2 = sub_1E49973DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E49974EC();
}

uint64_t sub_1E48BE994(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E691A840](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E48BE9E8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1E691A850](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1E48BEA68(uint64_t a1, id *a2)
{
  result = sub_1E4997ECC();
  *a2 = 0;
  return result;
}

uint64_t sub_1E48BEAE0(uint64_t a1, id *a2)
{
  v3 = sub_1E4997EDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E48BEB60@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4997EEC();
  v2 = sub_1E4997EAC();

  *a1 = v2;
  return result;
}

uint64_t sub_1E48BEBC4()
{
  sub_1E48BFE7C(&qword_1ECF7F098, type metadata accessor for AttributeName);
  sub_1E48BFE7C(&qword_1ECF7F0A0, type metadata accessor for AttributeName);

  return sub_1E499872C();
}

void *sub_1E48BEC80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1E48BEC90@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E48BEC9C()
{
  v2 = *v0;
  sub_1E48BFE7C(&qword_1ECF7F070, type metadata accessor for Weight);
  sub_1E48BFE7C(&qword_1ECF7F078, type metadata accessor for Weight);
  sub_1E48C16D8();
  return sub_1E499872C();
}

uint64_t sub_1E48BED64()
{
  sub_1E48BFE7C(&qword_1ECF7F0A8, type metadata accessor for FeatureKey);
  sub_1E48BFE7C(&qword_1ECF7F0B0, type metadata accessor for FeatureKey);

  return sub_1E499872C();
}

uint64_t sub_1E48BEE20()
{
  sub_1E48BFE7C(&qword_1ECF7F060, type metadata accessor for Key);
  sub_1E48BFE7C(&qword_1ECF7F068, type metadata accessor for Key);

  return sub_1E499872C();
}

uint64_t sub_1E48BEEDC()
{
  sub_1E48BFE7C(&qword_1ECF7F088, type metadata accessor for TraitKey);
  sub_1E48BFE7C(&qword_1ECF7F090, type metadata accessor for TraitKey);

  return sub_1E499872C();
}

uint64_t sub_1E48BEF98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4997EAC();

  *a2 = v5;
  return result;
}

uint64_t sub_1E48BEFE0()
{
  sub_1E48BFE7C(&qword_1ECF7F050, type metadata accessor for Name);
  sub_1E48BFE7C(&qword_1ECF7F058, type metadata accessor for Name);

  return sub_1E499872C();
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

uint64_t sub_1E48BF0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BF170()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1E691C170](*&v1);
}

uint64_t sub_1E48BF1AC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1E48BF1C4()
{
  v1 = *v0;
  v2 = sub_1E4997EEC();
  v3 = MEMORY[0x1E691B830](v2);

  return v3;
}

uint64_t sub_1E48BF200()
{
  v1 = *v0;
  sub_1E4997EEC();
  sub_1E4997F5C();
}

uint64_t sub_1E48BF254()
{
  v1 = *v0;
  sub_1E4997EEC();
  sub_1E499892C();
  sub_1E4997F5C();
  v2 = sub_1E499896C();

  return v2;
}

uint64_t sub_1E48BF2DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E4997EEC();
  v6 = v5;
  if (v4 == sub_1E4997EEC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E48BF364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499749C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48BF390(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E49974AC();
}

uint64_t sub_1E48BF3BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 != 1)
      {
        goto LABEL_48;
      }

      v20 = *(a1 + 16);
      if (v20 != *(a5 + 16))
      {
        goto LABEL_48;
      }

      if (v20 && a1 != a5)
      {
        v21 = (a1 + 32);
        v22 = (a5 + 32);
        do
        {
          v23 = *v21++;
          v24 = *v22++;

          v25 = sub_1E49979FC();

          if ((v25 & 1) == 0)
          {
            break;
          }

          --v20;
        }

        while (v20);
        return v25 & 1;
      }

      goto LABEL_46;
    }

    if (a8)
    {
      goto LABEL_48;
    }

    v8 = a2;
    v9 = a6;
    if ((sub_1E49979FC() & 1) == 0)
    {
      goto LABEL_48;
    }

    if (v8)
    {
      if (!v9)
      {
        goto LABEL_48;
      }

      v10 = sub_1E49979FC();

      if ((v10 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (!v9)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (a8 == 3 && (a1 == a5 && a2 == a6 || (sub_1E499884C() & 1) != 0))
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }

    if (!(a3 | a2 | a1))
    {
      if (a8 != 4 || a7 | a6 | a5)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a1 != 1 || a3 | a2)
    {
      if (a8 != 4 || a5 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (a8 != 4 || a5 != 1)
    {
      goto LABEL_48;
    }

    if (!(a7 | a6))
    {
LABEL_46:
      v25 = 1;
      return v25 & 1;
    }

LABEL_48:
    v25 = 0;
    return v25 & 1;
  }

  if (a8 != 2)
  {
    goto LABEL_48;
  }

  v11 = *(a1 + 16);
  if (v11 != *(a5 + 16))
  {
    goto LABEL_48;
  }

  if (v11 && a1 != a5)
  {
    v12 = (a1 + 32);
    v13 = (a5 + 32);
    do
    {
      v14 = a2;
      v15 = a6;
      v16 = *v12;
      v17 = *v13;

      v18 = sub_1E49979FC();

      if ((v18 & 1) == 0)
      {
        goto LABEL_48;
      }

      ++v12;
      ++v13;
      --v11;
      a6 = v15;
      a2 = v14;
    }

    while (v11);
  }

LABEL_23:

  return sub_1E49979CC();
}

uint64_t sub_1E48BF670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996F4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC78, &qword_1E499A388);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1E48C12D0(a1, &v27 - v19, &qword_1ECF7EC50, &qword_1E49A4BF0);
  sub_1E48C12D0(a2, &v20[v21], &qword_1ECF7EC50, &qword_1E49A4BF0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_1E48C12D0(v20, v14, &qword_1ECF7EC50, &qword_1E49A4BF0);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_1E48BFE7C(&qword_1ECF7EC80, MEMORY[0x1E6969BC0]);
      v24 = sub_1E4997E9C();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_1E48C1338(v20, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v20, &qword_1ECF7EC78, &qword_1E499A388);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v20, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1E48BF990(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E499884C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E499884C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = 1;
  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E499884C() & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = 1;
    if (a1[8] == a2[8] && a1[9] == a2[9])
    {
      v7 = type metadata accessor for TimeString(0);
      if (MEMORY[0x1E691A740](a1 + *(v7 + 36), a2 + *(v7 + 36)))
      {
        v8 = *(v7 + 40);
        v6 = sub_1E4996D2C() ^ 1;
        return v6 & 1;
      }

LABEL_20:
      v6 = 1;
    }
  }

  return v6 & 1;
}

uint64_t sub_1E48BFAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFC1C(uint64_t a1)
{
  v4 = *(sub_1E4996F4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48BFD3C;

  return sub_1E48B8C68(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E48BFD3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E48BFE30()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) = *(v0 + 24);
}

uint64_t sub_1E48BFE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E48BFEC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster07RollingA0V5StyleO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E48BFFE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1E48C0028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E48C0618(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2 && a4 != 3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

LABEL_7:
  }
}

uint64_t sub_1E48C06B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
LABEL_4:
    }

    if (a4 == 3)
    {
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  return result;
}

unint64_t sub_1E48C0754()
{
  result = qword_1ECF7EE08;
  if (!qword_1ECF7EE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED88, &qword_1E499AF68);
    sub_1E48C0854();
    sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE08);
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

unint64_t sub_1E48C0854()
{
  result = qword_1ECF7EE10;
  if (!qword_1ECF7EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED98, &qword_1E499AF78);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EE98, &qword_1ECF7EEA0, &qword_1E499B028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE10);
  }

  return result;
}

unint64_t sub_1E48C090C()
{
  result = qword_1ECF7EE18;
  if (!qword_1ECF7EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE20, &qword_1E499AFE8);
    sub_1E48C09C4();
    sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE18);
  }

  return result;
}

unint64_t sub_1E48C09C4()
{
  result = qword_1ECF7EE28;
  if (!qword_1ECF7EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE30, &qword_1E499AFF0);
    sub_1E48C0A7C();
    sub_1E48C1B44(&qword_1ECF7EE78, &qword_1ECF7EE80, &qword_1E499B018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE28);
  }

  return result;
}

unint64_t sub_1E48C0A7C()
{
  result = qword_1ECF7EE38;
  if (!qword_1ECF7EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE40, &qword_1E499AFF8);
    sub_1E48C0B34();
    sub_1E48C1B44(&qword_1ECF7EE68, &qword_1ECF7EE70, &qword_1E499B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE38);
  }

  return result;
}

unint64_t sub_1E48C0B34()
{
  result = qword_1ECF7EE48;
  if (!qword_1ECF7EE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE50, &qword_1E499B000);
    sub_1E48C0BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE48);
  }

  return result;
}

unint64_t sub_1E48C0BC0()
{
  result = qword_1ECF7EE58;
  if (!qword_1ECF7EE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE60, &qword_1E499B008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE58);
  }

  return result;
}

unint64_t sub_1E48C0C44()
{
  result = qword_1ECF7EEC0;
  if (!qword_1ECF7EEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDE8, &qword_1E499AFC8);
    sub_1E48C0CD0();
    sub_1E48C0ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEC0);
  }

  return result;
}

unint64_t sub_1E48C0CD0()
{
  result = qword_1ECF7EEC8;
  if (!qword_1ECF7EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDE0, &qword_1E499AFC0);
    sub_1E48C0D5C();
    sub_1E48C0E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEC8);
  }

  return result;
}

unint64_t sub_1E48C0D5C()
{
  result = qword_1ECF7EED0;
  if (!qword_1ECF7EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDF0, &qword_1E499AFD0);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EED8, &qword_1ECF7EEE0, &qword_1E499B038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EED0);
  }

  return result;
}

unint64_t sub_1E48C0E14()
{
  result = qword_1ECF7EEE8;
  if (!qword_1ECF7EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDC0, &qword_1E499AFA0);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EEF0, &qword_1ECF7EEF8, &qword_1E499B040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEE8);
  }

  return result;
}

unint64_t sub_1E48C0ECC()
{
  result = qword_1ECF7EF00;
  if (!qword_1ECF7EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDB0, &qword_1E499AF90);
    sub_1E48C0F58();
    sub_1E48C1010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF00);
  }

  return result;
}

unint64_t sub_1E48C0F58()
{
  result = qword_1ECF7EF08;
  if (!qword_1ECF7EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDB8, &qword_1E499AF98);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EF10, &qword_1ECF7EF18, &qword_1E499B048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF08);
  }

  return result;
}

unint64_t sub_1E48C1010()
{
  result = qword_1ECF7EF20;
  if (!qword_1ECF7EF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDA0, &qword_1E499AF80);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EF28, &qword_1ECF7EF30, &unk_1E499B050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF20);
  }

  return result;
}

unint64_t sub_1E48C10C8()
{
  result = qword_1ECF7EF38;
  if (!qword_1ECF7EF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED90, &qword_1E499AF70);
    sub_1E48C0754();
    sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF38);
  }

  return result;
}

double sub_1E48C11B0@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1E48BDC88(v1[2], v1[3], a1);
}

unint64_t sub_1E48C11C0()
{
  result = qword_1ECF7EF50;
  if (!qword_1ECF7EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EF48, &qword_1E499B060);
    sub_1E48C124C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF50);
  }

  return result;
}

unint64_t sub_1E48C124C()
{
  result = qword_1ECF7EF58;
  if (!qword_1ECF7EF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EF60, &qword_1E499B068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF58);
  }

  return result;
}

uint64_t sub_1E48C12D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48C1338(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_120Tm()
{
  v1 = *(v0 + 16);

  sub_1E48C06B0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 90, 7);
}

double sub_1E48C1404@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1E4996A4C() - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1E48BC3C0(v6, v4, v7, a1);
}

uint64_t sub_1E48C148C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48C14F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E48C1504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48C1564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E48C1574()
{
  result = qword_1ECF7F020;
  if (!qword_1ECF7F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F020);
  }

  return result;
}

uint64_t sub_1E48C15C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E48C1630()
{
  result = qword_1ECF7F040;
  if (!qword_1ECF7F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F040);
  }

  return result;
}

unint64_t sub_1E48C1684()
{
  result = qword_1ECF7F048;
  if (!qword_1ECF7F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F048);
  }

  return result;
}

unint64_t sub_1E48C16D8()
{
  result = qword_1ECF7F080;
  if (!qword_1ECF7F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RollingClock.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RollingClock.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E48C189C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E48C18B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
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

uint64_t sub_1E48C18E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48C192C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E48C1974(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_1E48C19B4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1E48C1A00()
{
  result = qword_1ECF7F0C0;
  if (!qword_1ECF7F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED70, &qword_1E499AF50);
    sub_1E48C1AB8();
    sub_1E48C1B44(&qword_1ECF7F0D0, &qword_1ECF7F0D8, qword_1E499B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0C0);
  }

  return result;
}

unint64_t sub_1E48C1AB8()
{
  result = qword_1ECF7F0C8;
  if (!qword_1ECF7F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
    sub_1E48C0C44();
    sub_1E48C10C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0C8);
  }

  return result;
}

uint64_t sub_1E48C1B44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for RollingClock.Layout.Alignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RollingClock.Layout.Alignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E48C1D14()
{
  result = qword_1ECF7F0E0;
  if (!qword_1ECF7F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F0E8, qword_1E499B360);
    sub_1E48C1DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0E0);
  }

  return result;
}

unint64_t sub_1E48C1DA0()
{
  result = qword_1ECF7F0F0;
  if (!qword_1ECF7F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0F0);
  }

  return result;
}

unint64_t sub_1E48C1DF8()
{
  result = qword_1ECF7F0F8;
  if (!qword_1ECF7F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0F8);
  }

  return result;
}

unint64_t sub_1E48C1E5C()
{
  result = qword_1ECF7F100;
  if (!qword_1ECF7F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F100);
  }

  return result;
}

id sub_1E48C1F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499B4C0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.662745098 green:0.462745098 blue:0.847058824 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.952941176 green:0.337254902 blue:0.576470588 alpha:1.0];
  v1 = objc_opt_self();
  *(v0 + 48) = [v1 systemOrangeColor];
  *(v0 + 56) = [v1 systemYellowColor];
  *(v0 + 64) = [v1 systemGreenColor];
  *(v0 + 72) = [v1 systemBlueColor];
  *(v0 + 80) = [v1 systemIndigoColor];
  *(v0 + 88) = [v1 systemPurpleColor];
  result = [v1 systemPinkColor];
  *(v0 + 96) = result;
  qword_1ECF818F8 = v0;
  return result;
}

void sub_1E48C2170(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ClockFaceViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = a5;
}

void sub_1E48C21E0(char a1)
{
  v3 = sub_1E499709C();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = *(v1 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(&v30, v6);
  v8 = *(v1 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode);
  if (v30 == 2)
  {
    v16 = v7;
    v10 = v16;
    if (v8)
    {
      v17 = [v16 window];
      if (v17)
      {

        v18 = [v10 superview];
        if (v18)
        {

          v13 = objc_opt_self();
          v19 = swift_allocObject();
          *(v19 + 16) = v10;
          *(v19 + 24) = a1 & 1;
          v28 = sub_1E48C2958;
          v29 = v19;
          aBlock = MEMORY[0x1E69E9820];
          v25 = 1107296256;
          v15 = &block_descriptor;
          goto LABEL_11;
        }
      }
    }

    type metadata accessor for RedModeCustomColorTrait();
    sub_1E499843C();
    v22 = &qword_1ECF7F128;
    v23 = type metadata accessor for RedModeCustomColorTrait;
LABEL_16:
    sub_1E48C297C(v22, v23);
    sub_1E49970AC();
    sub_1E499844C();
    goto LABEL_17;
  }

  if (v30 == 1)
  {
    v9 = v7;
    v10 = v9;
    if (v8)
    {
      v11 = [v9 window];
      if (v11)
      {

        v12 = [v10 superview];
        if (v12)
        {

          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v10;
          *(v14 + 24) = a1 & 1;
          v28 = sub_1E48C29C4;
          v29 = v14;
          aBlock = MEMORY[0x1E69E9820];
          v25 = 1107296256;
          v15 = &block_descriptor_14;
LABEL_11:
          v26 = sub_1E4913064;
          v27 = v15;
          v20 = _Block_copy(&aBlock);
          v10 = v10;

          [v13 transitionWithView:v10 duration:5242882 options:v20 animations:0 completion:1.2];
          _Block_release(v20);
LABEL_17:

          return;
        }
      }
    }

    type metadata accessor for RedModeTrait();
    sub_1E499843C();
    v22 = &qword_1ECF7F130;
    v23 = type metadata accessor for RedModeTrait;
    goto LABEL_16;
  }

  if (a1)
  {
    v21 = sel_amui_applyRedModeFilterAnimated_withCompletion_;
  }

  else
  {
    v21 = sel_amui_clearRedModeFilterAnimated_withCompletion_;
  }

  [v7 v21];
}

uint64_t (*sub_1E48C25CC(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1E48C2600;
}

uint64_t sub_1E48C2600(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  result = *(a1 + 16);
  v4 = *(v2 + v1);
  *(v2 + v1) = result;
  if (result != v4)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))();
  }

  return result;
}

id sub_1E48C2714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockFaceViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E48C277C(char a1)
{
  v2 = *v1;
  v3 = *(v2 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode);
  v4 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode) = a1;
  if (v3 != (a1 & 1))
  {
    sub_1E48C21E0(a1 & 1);
    *(*(v2 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace) + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = v4;
    sub_1E494B0D8();
  }
}

uint64_t (*sub_1E48C27E0(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_1E48C25CC(v3);
  return sub_1E48C29DC;
}

uint64_t sub_1E48C2854(char a1)
{
  result = a1 & 1;
  v4 = *v1;
  v5 = *(v4 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode);
  *(v4 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode) = a1;
  if (v5 != result)
  {
    return sub_1E4961114(result);
  }

  return result;
}

uint64_t (*sub_1E48C2898(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_1E48C25CC(v3);
  return sub_1E48C290C;
}

void sub_1E48C2910(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48C297C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E48C29F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48C2A14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E691C170](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E691C170](*&v3);
}

uint64_t CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  sub_1E499892C();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1E691C170](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1E691C170](*&v5);
  return sub_1E499896C();
}

uint64_t sub_1E48C2B54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_1E499896C();
}

uint64_t sub_1E48C2BB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_1E499896C();
}

unint64_t sub_1E48C2C04()
{
  result = qword_1ECF7F138[0];
  if (!qword_1ECF7F138[0])
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF7F138);
  }

  return result;
}

uint64_t sub_1E48C2C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E48C2CFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v5;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for CPUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t sub_1E48C2EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  sub_1E48C2C5C(a1);
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_1E48C2F10(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1E48C33B8(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_1E48C2F8C(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1E48C2EA8(v9);
  return sub_1E48C30A0;
}

void sub_1E48C30A0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1E48C33B8(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1E48C33B8((*a1)[4], a2);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E48C3264(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_1E48C3658();
  v5 = sub_1E499839C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1E48C36A4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E496F580;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48C33B8(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  v9 = v2[2];
  swift_beginAccess();
  os_unfair_lock_lock(v9 + 4);
  swift_endAccess();
  (*(v5 + 16))(v8, a1, v4);
  sub_1E48C2CFC(v8);
  swift_beginAccess();
  os_unfair_lock_unlock(v9 + 4);
  return swift_endAccess();
}

uint64_t sub_1E48C34DC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E48C3658()
{
  result = qword_1ECF809E0;
  if (!qword_1ECF809E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF809E0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E48C36F4()
{
  [v0 pointSize];
  [v0 pointSize];
  if (v1 >= 0.0)
  {
    [v0 pointSize];
    v2 = 26.0;
    v4 = 0.76;
    if (v6 <= 26.0)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.76;
    }

    if (v6 <= 26.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 26.0;
    }

    [v0 pointSize];
    if (v7 >= 26.0)
    {
      [v0 pointSize];
      v2 = 98.0;
      v4 = 0.45;
      if (v8 > 98.0)
      {
        v3 = 0.45;
        v5 = 98.0;
      }

      [v0 pointSize];
      if (v9 >= 98.0)
      {
        [v0 pointSize];
        v2 = 200.0;
        v4 = 0.25;
        if (v10 > 200.0)
        {
          v3 = 0.25;
          v5 = 200.0;
        }

        [v0 pointSize];
      }
    }
  }

  else
  {
    v2 = 0.0;
    v3 = 1.0;
    v4 = 1.0;
    v5 = 0.0;
  }

  [v0 pointSize];
  v12 = v3 + (v4 - v3) * ((v11 - v5) / (v2 - v5));
  [v0 pointSize];
  v14 = floor(v13 * v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1C0, &qword_1E499B680);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E499B670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1C8, &qword_1E499B688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499A180;
  v17 = *MEMORY[0x1E69DDCF0];
  *(inited + 32) = *MEMORY[0x1E69DDCF0];
  v18 = *MEMORY[0x1E69DDCE8];
  *(inited + 40) = 38;
  *(inited + 48) = v18;
  *(inited + 56) = 1;
  v19 = v17;
  v20 = v18;
  v21 = sub_1E4949148(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D0, &qword_1E499B690);
  swift_arrayDestroy();
  *(v15 + 32) = v21;
  v22 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D8, &qword_1E499B698);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1E499B670;
  v24 = *MEMORY[0x1E69DB8B0];
  *(v23 + 32) = *MEMORY[0x1E69DB8B0];
  *(v23 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1E0, &qword_1E499B6A0);
  *(v23 + 40) = v15;
  v25 = v24;
  sub_1E4949234(v23);
  swift_setDeallocating();
  sub_1E48C1338(v23 + 32, &qword_1ECF7F1E8, &qword_1E49A3DF0);
  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v26 = sub_1E4997E2C();

  v27 = [objc_opt_self() fontWithDescriptor:v22 size:v14];
  return v27;
}

uint64_t sub_1E48C3A60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F208, &qword_1E499B6C0);
    v1 = sub_1E499871C();
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
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F210, &qword_1E499B6C8);
    swift_dynamicCast();
    sub_1E48C42DC((v26 + 8), v24);
    sub_1E48C42DC(v24, v26);
    v14 = *(v1 + 40);
    sub_1E4997EEC();
    sub_1E499892C();
    sub_1E4997F5C();
    v15 = sub_1E499896C();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_1E48C42DC(v26, (*(v1 + 56) + 32 * v9));
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

uint64_t sub_1E48C3D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F218, &qword_1E49A3E50);
    v1 = sub_1E499871C();
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
    type metadata accessor for CTFont(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1E48C42DC((v28 + 8), v26);
    sub_1E48C42DC(v26, v28);
    v16 = *(v1 + 40);
    sub_1E4997EEC();
    sub_1E499892C();
    sub_1E4997F5C();
    v17 = sub_1E499896C();

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
    result = sub_1E48C42DC(v28, (*(v1 + 56) + 32 * v9));
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

unint64_t sub_1E48C3FBC()
{
  result = qword_1ECF7F098;
  if (!qword_1ECF7F098)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F098);
  }

  return result;
}

CTFontRef sub_1E48C4014(CGFloat a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1E4997EAC();

  v8 = CTFontCreateWithNameAndOptions(v7, a1, 0, 0x400uLL);

  if (a4)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1F0, &qword_1E499B6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  *(inited + 32) = TextToFourCharCode();
  *(inited + 40) = a3;
  v11 = sub_1E494935C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1F8, &qword_1E499B6B0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1E499B670;
  v13 = *MEMORY[0x1E69658F8];
  sub_1E4997EEC();
  v14 = sub_1E4997EAC();

  *(v12 + 32) = v14;
  *(v12 + 40) = v11;
  v15 = sub_1E494943C(v12);
  swift_setDeallocating();
  sub_1E48C1338(v12 + 32, &qword_1ECF7F200, &qword_1E499B6B8);
  v16 = [(__CTFont *)v8 fontDescriptor];
  sub_1E48C3A60(v15);

  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v17 = sub_1E4997E2C();

  v18 = [v16 fontDescriptorByAddingAttributes_];

  v19 = [objc_opt_self() fontWithDescriptor:v18 size:a1];
  return v19;
}

_OWORD *sub_1E48C42DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E48C42EC(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1E48C4318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F220, &unk_1E499B6E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499B6D0;
  *(v0 + 32) = 0;
  sub_1E4997A6C();
  v1 = sub_1E4997A8C();

  *(v0 + 40) = v1;
  *(v0 + 48) = 0x3FA999999999999ALL;
  *(v0 + 56) = sub_1E4997A6C();
  *(v0 + 64) = 0x3FC999999999999ALL;
  *(v0 + 72) = sub_1E4997A6C();
  *(v0 + 80) = 0x3FE3333333333333;
  sub_1E4997A6C();
  v2 = sub_1E4997A8C();

  *(v0 + 88) = v2;
  return v0;
}

uint64_t getEnumTagSinglePayload for WorldConstants.Pins.SelectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for WorldConstants.Pins.SelectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E48C45BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = *(v7 + 8);
  swift_unknownObjectRetain();
  v8(ObjectType, v7);
  result = swift_unknownObjectRelease();
  *(a1 + 97) = *(v2 + 16);
  return result;
}

uint64_t sub_1E48C4664()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  result = 0;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1E48C46E4()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    if (*(v0 + 16))
    {

      return sub_1E48D4D14();
    }

    else
    {

      return sub_1E48D5058();
    }
  }

  else if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E499B670;
    sub_1E49347A0(v3 + 32);
    return v3;
  }

  else if (v1 == 3)
  {

    return sub_1E48D57B4();
  }

  else
  {

    return sub_1E48D5B04();
  }
}

uint64_t sub_1E48C47CC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  v6 = *(v5 + 8);
  swift_unknownObjectRetain();
  v6(ObjectType, v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E48C4860()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 8);
  v5 = *(v4 + 8);
  swift_unknownObjectRetain();
  v5(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E48C48FC(uint64_t a1)
{
  sub_1E48C5010();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1E48C83B4(a1, v27);
    sub_1E48C9F14(v27, v26);
    v8 = *(v6 + 16);
    sub_1E48C9F14(v26, v25);

    sub_1E491AEE0(v25);
    swift_unknownObjectRelease();

    sub_1E48C8360(a1);
    sub_1E48C9F70(v26);
    return sub_1E48C9F70(v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = qword_1ECF7EAD8;
      swift_unknownObjectRetain();
      if (v12 != -1)
      {
        swift_once();
      }

      sub_1E48C89BC(a1, v27);
      sub_1E48C9E64(v27, v26);
      v13 = *(v11 + 16);
      sub_1E48C9E64(v26, v25);

      sub_1E49273D4(v25);
      swift_unknownObjectRelease();

      sub_1E48C8360(a1);
      sub_1E48C9EC0(v26);
      return sub_1E48C9EC0(v27);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = qword_1ECF7EAD8;
        swift_unknownObjectRetain();
        if (v16 != -1)
        {
          swift_once();
        }

        sub_1E48C8FCC(a1, v27);
        sub_1E48C9DB4(v27, v26);
        v17 = *(v15 + 16);
        sub_1E48C9DB4(v26, v25);

        sub_1E48DD828(v25);
        swift_unknownObjectRelease();

        sub_1E48C8360(a1);
        sub_1E48C9E10(v26);
        return sub_1E48C9E10(v27);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F248, &unk_1E499B780);
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;
          v20 = qword_1ECF7EAD8;
          swift_unknownObjectRetain();
          if (v20 != -1)
          {
            swift_once();
          }

          sub_1E48C9608(a1, v27);
          sub_1E48C9C40(v27, v26);
          v21 = *(v19 + 16);
          sub_1E48C9C40(v26, v25);

          sub_1E494FBC4(v25);
          swift_unknownObjectRelease();

          sub_1E48C8360(a1);
          sub_1E48C9D60(v26);
          return sub_1E48C9D60(v27);
        }

        else
        {
          ObjectType = swift_getObjectType();
          sub_1E48C8304(a1, v27);
          v23 = *(v3 + 8);
          v24 = *(v23 + 16);
          swift_unknownObjectRetain();
          v24(v27, ObjectType, v23);
          swift_unknownObjectRelease();
          return sub_1E48C8360(a1);
        }
      }
    }
  }
}

void (*sub_1E48C4CE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  *a1 = v3;
  *(v3 + 232) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v7 = *(v4 + 8);
  v8 = *(v7 + 8);
  swift_unknownObjectRetain();
  v8(ObjectType, v7);
  swift_unknownObjectRelease();
  return sub_1E48C4DBC;
}

void sub_1E48C4DBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 232);
  if (a2)
  {
    sub_1E48C8304(*a1, v2 + 104);
    sub_1E48C48FC(v2 + 104);
    sub_1E48C8360(v2);
  }

  else
  {
    sub_1E48C48FC(*a1);
  }

  free(v2);
}

uint64_t sub_1E48C4E24()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

void sub_1E48C4EB4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  v7 = [v6 view];

  if (v7)
  {
    [v7 removeFromSuperview];

    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = swift_getObjectType();
    v11 = *(v8 + 32);
    swift_unknownObjectRetain();
    v12 = v11(v10, v8);
    swift_unknownObjectRelease();
    [v12 removeFromParentViewController];

    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493C6E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E48C5010()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECF81908;
    v7 = *(v4 + 16);

    sub_1E491B630(v43);

    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    v10 = *(v1 + 16);
    ObjectType = swift_getObjectType();
    v12 = *(v9 + 8);
    v13 = *(v12 + 8);
    swift_unknownObjectRetain();
    v13(v44, ObjectType, v12);
    swift_unknownObjectRelease();
    sub_1E48CA874(v43, v10, v44, v6);
    swift_unknownObjectRelease();
    sub_1E48C8360(v44);
    sub_1E48C9F70(v43);
    v14 = *(v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_1ECF81908;
    v19 = *(v16 + 16);
    v20 = sub_1E48CD118(&qword_1ECF7F258, 255, type metadata accessor for DigitalClockViewModel);
    v21 = *(v20 + 40);
    v22 = type metadata accessor for DigitalClockViewModel();

    v21(v43, v22, v20);

    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    LOBYTE(v20) = *(v1 + 16);
    v25 = swift_getObjectType();
    v26 = *(v24 + 8);
    v27 = *(v26 + 8);
    swift_unknownObjectRetain();
    v27(v44, v25, v26);
    swift_unknownObjectRelease();
    sub_1E48CAF40(v43, v20, v44, v18);
    swift_unknownObjectRelease();
    sub_1E48C8360(v44);
    sub_1E48C9EC0(v43);
    v28 = *(v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
  result = swift_dynamicCastClass();
  if (result)
  {
    v30 = result;
    v31 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = qword_1ECF81908;
    v33 = *(v30 + 16);
    v34 = sub_1E48CD118(&qword_1ECF7F250, 255, type metadata accessor for WorldViewModel);
    v35 = *(v34 + 40);
    v36 = type metadata accessor for WorldViewModel(0);

    v35(v43, v36, v34);

    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 16);
    v40 = swift_getObjectType();
    v41 = *(v38 + 8);
    v42 = *(v41 + 8);
    swift_unknownObjectRetain();
    v42(v44, v40, v41);
    swift_unknownObjectRelease();
    sub_1E48CB60C(v43, v39, v44, v32, &type metadata for WorldViewModelContext, sub_1E48CD370, &unk_1F5E83AA0, sub_1E48C9DB4);
    swift_unknownObjectRelease();
    sub_1E48C8360(v44);
    return sub_1E48C9E10(v43);
  }

  return result;
}

uint64_t ClockFaceController.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ClockFaceController.init(with:)(a1);
  return v2;
}

void ClockFaceController.init(with:)(uint64_t a1)
{
  *(v1 + 16) = *(a1 + 97);
  v3 = sub_1E48CC348(a1);
  v5 = v4;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 32);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  swift_unknownObjectRelease();
  v9 = [v8 view];

  if (v9)
  {
    strcpy(v20, "clock-poster-");
    HIWORD(v20[1]) = -4864;
    v10 = 0xE700000000000000;
    v11 = 0x6C617469676964;
    v12 = *(a1 + 97);
    v13 = 0xE500000000000000;
    v14 = 0x646C726F77;
    v15 = 0xE500000000000000;
    v16 = 0x72616C6F73;
    if (v12 != 3)
    {
      v16 = 2036427888;
      v15 = 0xE400000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(a1 + 97))
    {
      v11 = 0x676F6C616E61;
      v10 = 0xE600000000000000;
    }

    if (*(a1 + 97) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(a1 + 97) <= 1u)
    {
      v18 = v10;
    }

    else
    {
      v18 = v13;
    }

    MEMORY[0x1E691B7A0](v17, v18);

    v19 = sub_1E4997EAC();

    [v9 setAccessibilityIdentifier_];

    sub_1E48CC924(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E48C5648(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v40 - v9;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v18 = *(v3 + 24);
    v17 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v20 = *(v17 + 32);
    v21 = a1;
    swift_unknownObjectRetain();
    v22 = v20(ObjectType, v17);
    swift_unknownObjectRelease();
    [v21 bs:v22 addChildViewController:a2 withSuperview:?];

LABEL_13:
    return;
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE2BB458;
  v24 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
  swift_beginAccess();
  sub_1E48CC978(v23 + v24, v10);
  v25 = *(v12 + 48);
  if (v25(v10, 1, v11) == 1)
  {
    sub_1E4904BF4(v16);
    if (v25(v10, 1, v11) != 1)
    {
      sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
  }

  v26 = sub_1E499706C();
  v27 = sub_1E499830C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = a2;
    v42[0] = v29;
    v30 = v29;
    *v28 = 136446210;
    v31 = sub_1E48C6114(v29, type metadata accessor for ClockFaceController);
    v33 = sub_1E48CA094(v31, v32, v42);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1E48B0000, v26, v27, "[%{public}s]: No parent view controller provided", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v34 = v30;
    a2 = v41;
    MEMORY[0x1E691CED0](v34, -1, -1);
    MEMORY[0x1E691CED0](v28, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  swift_beginAccess();
  v35 = *(v3 + 24);
  v36 = *(v3 + 32);
  v37 = swift_getObjectType();
  v38 = *(v36 + 32);
  swift_unknownObjectRetain();
  v39 = v38(v37, v36);
  swift_unknownObjectRelease();
  v22 = [v39 view];

  if (v22)
  {
    [a2 addSubview_];
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1E48C5A68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  result = (*(*(v5 + 24) + 8))(ObjectType);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E48C5AE4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(v2, ObjectType);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return swift_endAccess();
}

uint64_t sub_1E48C5B70()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 24) + 8))(ObjectType) & 1;
}

uint64_t sub_1E48C5BD8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(a1, ObjectType);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  return swift_endAccess();
}

void (*sub_1E48C5C68(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  *(v4 + 24) = v5;
  *(v4 + 64) = (*(*(v6 + 24) + 8))(ObjectType) & 1;
  return sub_1E48C5D28;
}

void sub_1E48C5D28(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v1[6] = v4;
  (*(*(v5 + 24) + 16))(v2, ObjectType);
  *(v3 + 24) = v1[6];
  *(v3 + 32) = v5;
  swift_endAccess();

  free(v1);
}

uint64_t sub_1E48C5DCC()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 24) + 32))(ObjectType);
}

uint64_t ClockFaceController.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ClockFaceController.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E48C5E98()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v3 + 24) + 8))(ObjectType) & 1;
}

uint64_t sub_1E48C5F04(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(a1, ObjectType);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return swift_endAccess();
}

void (*sub_1E48C5F90(uint64_t **a1))(void *a1)
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
  v4 = *v1;
  v3[4] = sub_1E48C5C68(v3);
  return sub_1E48C2910;
}

uint64_t sub_1E48C6004()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v3 + 24) + 32))(ObjectType);
}

uint64_t sub_1E48C607C(uint64_t a1)
{
  swift_getWitnessTable();

  return CustomStringConvertibleViaMirror.description.getter(a1);
}

uint64_t sub_1E48C6114(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_1E499899C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2(a1);
  v19 = v2;

  sub_1E499897C();
  sub_1E499898C();
  (*(v6 + 8))(v10, v5);
  v11 = sub_1E499868C();

  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v12 = sub_1E4997E8C();
  v14 = v13;

  v19 = 60;
  v20 = 0xE100000000000000;
  v15 = *v2;
  v16 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v16);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v12, v14);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v19;
}

uint64_t sub_1E48C63A0(float a1)
{
  v2 = sub_1E499899C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for FixedColorChannel;
  *&v15 = a1;
  sub_1E499897C();
  sub_1E499898C();
  (*(v3 + 8))(v7, v2);
  v8 = sub_1E499868C();

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v9 = sub_1E4997E8C();
  v11 = v10;

  v15 = 60;
  v16 = 0xE100000000000000;
  v12 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v12);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v9, v11);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v15;
}

uint64_t sub_1E48C6618(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v19 = swift_allocObject();
  a3(v3, v19 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v11, v6);
  v12 = sub_1E499868C();

  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v13 = sub_1E4997E8C();
  v15 = v14;

  v19 = 60;
  v20 = 0xE100000000000000;
  v16 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v16);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v19;
}

uint64_t sub_1E48C68B8()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &type metadata for DigitalClockContext;
  v14 = swift_allocObject();
  sub_1E48C9E64(v0, v14 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v6, v1);
  v7 = sub_1E499868C();

  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v8 = sub_1E4997E8C();
  v10 = v9;

  v14 = 60;
  v15 = 0xE100000000000000;
  v11 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v11);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v14;
}

uint64_t sub_1E48C6B1C(char a1)
{
  v2 = sub_1E499899C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for ClockTimeInterval;
  LOBYTE(v15) = a1;
  sub_1E499897C();
  sub_1E499898C();
  (*(v3 + 8))(v7, v2);
  v8 = sub_1E499868C();

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v9 = sub_1E4997E8C();
  v11 = v10;

  v15 = 60;
  v16 = 0xE100000000000000;
  v12 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v12);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v9, v11);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v15;
}

uint64_t sub_1E48C6D6C()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &type metadata for ClockPosterConfiguration;
  v14 = swift_allocObject();
  sub_1E48CCF0C(v0, v14 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v6, v1);
  v7 = sub_1E499868C();

  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v8 = sub_1E4997E8C();
  v10 = v9;

  v14 = 60;
  v15 = 0xE100000000000000;
  v11 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v11);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v14;
}

uint64_t sub_1E48C6FFC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = sub_1E499899C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a1(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1E48CCD6C(v2, boxed_opaque_existential_0, a2);
  sub_1E499897C();
  sub_1E499898C();
  (*(v6 + 8))(v10, v5);
  v12 = sub_1E499868C();

  v19[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v13 = sub_1E4997E8C();
  v15 = v14;

  v19[0] = 60;
  v19[1] = 0xE100000000000000;
  v16 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v16);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v19[0];
}

uint64_t sub_1E48C72E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v19 = swift_allocObject();
  a3(v3, v19 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v11, v6);
  v12 = sub_1E499868C();

  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v13 = sub_1E4997E8C();
  v15 = v14;

  v19 = 60;
  v20 = 0xE100000000000000;
  v16 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v16);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v19;
}

uint64_t sub_1E48C7558(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for LocationSource.Source;
  v19 = a1;
  v20 = a2;
  v21 = a3 & 1;
  sub_1E48CCD00();
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v11, v6);
  v12 = sub_1E499868C();

  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v13 = sub_1E4997E8C();
  v15 = v14;

  v19 = 60;
  v20 = 0xE100000000000000;
  v16 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v16);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v19;
}

uint64_t sub_1E48C77C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E499899C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v17 = v1;

  sub_1E499897C();
  sub_1E499898C();
  (*(v4 + 8))(v8, v3);
  v9 = sub_1E499868C();

  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v10 = sub_1E4997E8C();
  v12 = v11;

  v17 = 60;
  v18 = 0xE100000000000000;
  v13 = *v1;
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v10, v12);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1E48C7A84(double a1, double a2, double a3, double a4)
{
  v8 = sub_1E499899C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &type metadata for WorldMap.DotFillSpec;
  v14 = swift_allocObject();
  v22 = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_1E499897C();
  sub_1E499898C();
  (*(v9 + 8))(v13, v8);
  v15 = sub_1E499868C();

  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v16 = sub_1E4997E8C();
  v18 = v17;

  v22 = 60;
  v23 = 0xE100000000000000;
  v19 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v19);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v16, v18);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v22;
}

uint64_t sub_1E48C7D04()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 112);
  v24[6] = *(v0 + 96);
  v24[7] = v7;
  v24[8] = *(v0 + 128);
  v25 = *(v0 + 144);
  v8 = *(v0 + 48);
  v24[2] = *(v0 + 32);
  v24[3] = v8;
  v9 = *(v0 + 80);
  v24[4] = *(v0 + 64);
  v24[5] = v9;
  v10 = *(v0 + 16);
  v24[0] = *v0;
  v24[1] = v10;
  v23[22] = &type metadata for WorldMap;
  v11 = swift_allocObject();
  v23[19] = v11;
  v12 = *(v0 + 112);
  *(v11 + 112) = *(v0 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(v0 + 128);
  *(v11 + 160) = *(v0 + 144);
  v13 = *(v0 + 48);
  *(v11 + 48) = *(v0 + 32);
  *(v11 + 64) = v13;
  v14 = *(v0 + 80);
  *(v11 + 80) = *(v0 + 64);
  *(v11 + 96) = v14;
  v15 = *(v0 + 16);
  *(v11 + 16) = *v0;
  *(v11 + 32) = v15;
  sub_1E48CCDD4(v24, v23);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v6, v1);
  v16 = sub_1E499868C();

  v23[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v17 = sub_1E4997E8C();
  v19 = v18;

  v23[0] = 60;
  v23[1] = 0xE100000000000000;
  v20 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v20);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v17, v19);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v23[0];
}

uint64_t ClockFaceController.shouldRecieveTapEvents.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return v7 & 1;
}

Swift::Void __swiftcall ClockFaceController.didReceive(tapAt:)(CGPoint tapAt)
{
  y = tapAt.y;
  x = tapAt.x;
  swift_beginAccess();
  v4 = *(v1 + 24);
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9(ObjectType, v7, x, y);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E48C8174()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return v7 & 1;
}

uint64_t sub_1E48C8238(double a1, double a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v10(ObjectType, v8, a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E48C83B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v49[-v9];
  v52 = sub_1E499708C();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v52, v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v2 + 16);
  v17 = *(v16 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();

  if (*(v18 + 16) && (v20 = sub_1E4948258(3u), (v21 & 1) != 0) && (v22 = *(*(v18 + 56) + 8 * v20), , , *(v22 + 16)) && (v23 = sub_1E49481EC(a1), (v24 & 1) != 0))
  {
    sub_1E48CD210(*(v22 + 56) + 40 * v23, v63);

    sub_1E48CD210(v63, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v63);
      v26 = v60;
      *(a2 + 64) = v59;
      *(a2 + 80) = v26;
      *(a2 + 96) = v61;
      *(a2 + 112) = v62;
      v27 = v56;
      *a2 = v55;
      *(a2 + 16) = v27;
      v28 = v58;
      *(a2 + 32) = v57;
      *(a2 + 48) = v28;
      return result;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v62 = 0;
    v61 = 0xFFuLL;
    sub_1E48C1338(&v55, &qword_1ECF7F338, &qword_1E499B8D0);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE2BB458;
    v30 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v29 + v30, v10);
    v31 = v11;
    v32 = *(v11 + 48);
    v33 = v52;
    v51 = v32;
    if (v32(v10, 1, v52) == 1)
    {
      sub_1E4904BF4(v15);
      v34 = v33;
      if (v51(v10, 1, v33) != 1)
      {
        sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v31 + 32))(v15, v10, v33);
      v34 = v33;
    }

    sub_1E48C8304(a1, &v55);
    sub_1E48CD210(v63, v54);
    v35 = sub_1E499706C();
    v36 = sub_1E499830C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v37 = 136446722;
      *(v37 + 4) = sub_1E48CA094(0x72616C6F73, 0xE500000000000000, v53);
      *(v37 + 12) = 2082;
      v50 = v36;
      v38 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v40 = v39;
      sub_1E48C8360(&v55);
      v41 = sub_1E48CA094(v38, v40, v53);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2080;
      v42 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v54[3]);
      v43 = *(*(v42 + 8) + 8);
      v44 = sub_1E49987FC();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v47 = sub_1E48CA094(v44, v46, v53);

      *(v37 + 24) = v47;
      _os_log_impl(&dword_1E48B0000, v35, v50, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v37, 0x20u);
      v48 = v51;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v48, -1, -1);
      MEMORY[0x1E691CED0](v37, -1, -1);

      (*(v31 + 8))(v15, v52);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
    }

    else
    {

      sub_1E48C8360(&v55);
      (*(v31 + 8))(v15, v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, &v55);
  sub_1E4918ECC(&v55, a2);
  sub_1E48C9F14(a2, &v55);
  sub_1E48CA874(&v55, 3u, a1, v3);
  return sub_1E48C9F70(&v55);
}

uint64_t sub_1E48C89BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v48[-v9];
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v2 + 16);
  v18 = *(v17 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (*(v19 + 16) && (v21 = sub_1E4948258(0), (v22 & 1) != 0) && (v23 = *(*(v19 + 56) + 8 * v21), , , *(v23 + 16)) && (v24 = sub_1E49481EC(a1), (v25 & 1) != 0))
  {
    sub_1E48CD210(*(v23 + 56) + 40 * v24, v60);

    sub_1E48CD210(v60, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v27 = v58;
      *(a2 + 64) = v57;
      *(a2 + 80) = v27;
      *(a2 + 96) = v59;
      v29 = v54;
      v28 = v55;
      *a2 = v53;
      *(a2 + 16) = v29;
      v30 = v56;
      *(a2 + 32) = v28;
      *(a2 + 48) = v30;
      return result;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v59 = xmmword_1E499B740;
    sub_1E48C1338(&v53, &qword_1ECF7F340, &qword_1E499B8D8);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE2BB458;
    v32 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v31 + v32, v10);
    v33 = *(v12 + 48);
    if (v33(v10, 1, v11) == 1)
    {
      sub_1E4904BF4(v16);
      if (v33(v10, 1, v11) != 1)
      {
        sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
    }

    sub_1E48C8304(a1, &v53);
    sub_1E48CD210(v60, v52);
    v34 = sub_1E499706C();
    v35 = sub_1E499830C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v36 = 136446722;
      *(v36 + 4) = sub_1E48CA094(0x6C617469676964, 0xE700000000000000, &v51);
      *(v36 + 12) = 2082;
      v49 = v35;
      v37 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v39 = v38;
      sub_1E48C8360(&v53);
      v40 = sub_1E48CA094(v37, v39, &v51);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      v41 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v42 = *(*(v41 + 8) + 8);
      v43 = sub_1E49987FC();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v46 = sub_1E48CA094(v43, v45, &v51);

      *(v36 + 24) = v46;
      _os_log_impl(&dword_1E48B0000, v34, v49, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v36, 0x20u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v47, -1, -1);
      MEMORY[0x1E691CED0](v36, -1, -1);

      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }

    else
    {

      sub_1E48C8360(&v53);
      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  *(a2 + 104) = 0;
  sub_1E48C9E64(a2, &v53);
  sub_1E48CAF40(&v53, 0, a1, v3);
  return sub_1E48C9EC0(&v53);
}

uint64_t sub_1E48C8FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v48[-v9];
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v2 + 16);
  v18 = *(v17 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (*(v19 + 16) && (v21 = sub_1E4948258(2u), (v22 & 1) != 0) && (v23 = *(*(v19 + 56) + 8 * v21), , , *(v23 + 16)) && (v24 = sub_1E49481EC(a1), (v25 & 1) != 0))
  {
    sub_1E48CD210(*(v23 + 56) + 40 * v24, v60);

    sub_1E48CD210(v60, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v27 = v58;
      *(a2 + 64) = v57;
      *(a2 + 80) = v27;
      *(a2 + 96) = v59;
      v29 = v54;
      v28 = v55;
      *a2 = v53;
      *(a2 + 16) = v29;
      v30 = v56;
      *(a2 + 32) = v28;
      *(a2 + 48) = v30;
      return result;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v59 = -1;
    sub_1E48C1338(&v53, &qword_1ECF7F348, &qword_1E499B8E0);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE2BB458;
    v32 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v31 + v32, v10);
    v33 = *(v12 + 48);
    if (v33(v10, 1, v11) == 1)
    {
      sub_1E4904BF4(v16);
      if (v33(v10, 1, v11) != 1)
      {
        sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
    }

    sub_1E48C8304(a1, &v53);
    sub_1E48CD210(v60, v52);
    v34 = sub_1E499706C();
    v35 = sub_1E499830C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v36 = 136446722;
      *(v36 + 4) = sub_1E48CA094(0x646C726F77, 0xE500000000000000, &v51);
      *(v36 + 12) = 2082;
      v49 = v35;
      v37 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v39 = v38;
      sub_1E48C8360(&v53);
      v40 = sub_1E48CA094(v37, v39, &v51);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      v41 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v42 = *(*(v41 + 8) + 8);
      v43 = sub_1E49987FC();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v46 = sub_1E48CA094(v43, v45, &v51);

      *(v36 + 24) = v46;
      _os_log_impl(&dword_1E48B0000, v34, v49, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v36, 0x20u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v47, -1, -1);
      MEMORY[0x1E691CED0](v36, -1, -1);

      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }

    else
    {

      sub_1E48C8360(&v53);
      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  sub_1E48C9DB4(a2, &v53);
  sub_1E48CB60C(&v53, 2u, a1, v3, &type metadata for WorldViewModelContext, sub_1E48CD370, &unk_1F5E83AA0, sub_1E48C9DB4);
  return sub_1E48C9E10(&v53);
}

uint64_t sub_1E48C9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v48[-v9];
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v2 + 16);
  v18 = *(v17 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (*(v19 + 16) && (v21 = sub_1E4948258(4u), (v22 & 1) != 0) && (v23 = *(*(v19 + 56) + 8 * v21), , , *(v23 + 16)) && (v24 = sub_1E49481EC(a1), (v25 & 1) != 0))
  {
    sub_1E48CD210(*(v23 + 56) + 40 * v24, v60);

    sub_1E48CD210(v60, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v27 = v58;
      *(a2 + 64) = v57;
      *(a2 + 80) = v27;
      *(a2 + 96) = v59;
      v29 = v54;
      v28 = v55;
      *a2 = v53;
      *(a2 + 16) = v29;
      v30 = v56;
      *(a2 + 32) = v28;
      *(a2 + 48) = v30;
      return result;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v59 = -1;
    sub_1E48C1338(&v53, &qword_1ECF7F350, &qword_1E499B8E8);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE2BB458;
    v32 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v31 + v32, v10);
    v33 = *(v12 + 48);
    if (v33(v10, 1, v11) == 1)
    {
      sub_1E4904BF4(v16);
      if (v33(v10, 1, v11) != 1)
      {
        sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
    }

    sub_1E48C8304(a1, &v53);
    sub_1E48CD210(v60, v52);
    v34 = sub_1E499706C();
    v35 = sub_1E499830C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v36 = 136446722;
      *(v36 + 4) = sub_1E48CA094(2036427888, 0xE400000000000000, &v51);
      *(v36 + 12) = 2082;
      v49 = v35;
      v37 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v39 = v38;
      sub_1E48C8360(&v53);
      v40 = sub_1E48CA094(v37, v39, &v51);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      v41 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v42 = *(*(v41 + 8) + 8);
      v43 = sub_1E49987FC();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v46 = sub_1E48CA094(v43, v45, &v51);

      *(v36 + 24) = v46;
      _os_log_impl(&dword_1E48B0000, v34, v49, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v36, 0x20u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v47, -1, -1);
      MEMORY[0x1E691CED0](v36, -1, -1);

      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }

    else
    {

      sub_1E48C8360(&v53);
      (*(v12 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  sub_1E48C9C40(a2, &v53);
  sub_1E48CB60C(&v53, 4u, a1, v3, &type metadata for PlayViewModelContext, sub_1E48CD408, &unk_1F5E83AC8, sub_1E48C9C40);
  return sub_1E48C9D60(&v53);
}

void (*sub_1E48C9C9C(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1E48CA5D8(v4, a2);
  return sub_1E48C9D14;
}

void sub_1E48C9D14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1E48C9FC4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1E48CA038(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1E48CA094(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1E48CA094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E48CA160(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E48CCF68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1E48CA160(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E48CA26C(a5, a6);
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
    result = sub_1E49985DC();
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

uint64_t sub_1E48CA26C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E48CA2B8(a1, a2);
  sub_1E48CA3E8(&unk_1F5E825B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E48CA2B8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E495E37C(v5, 0);
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

  result = sub_1E49985DC();
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
        v10 = sub_1E4997FAC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E495E37C(v10, 0);
        result = sub_1E499858C();
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

uint64_t sub_1E48CA3E8(uint64_t result)
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

  result = sub_1E48CA4D4(result, v12, 1, v3);
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

char *sub_1E48CA4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F280, &qword_1E499B8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1E48CA5C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void (*sub_1E48CA5D8(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1E48CA840(v6);
  v6[9] = sub_1E48CA6DC((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1E48CA67C;
}

void sub_1E48CA67C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1E48CA6DC(uint64_t a1, unsigned __int8 a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1E4948258(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E4987DBC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E498274C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1E4948258(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_1E48CA7F8;
}

unint64_t sub_1E48CA7F8(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1E49874B8(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_1E4984F08(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1E48CA840(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E48CA868;
}

uint64_t sub_1E48CA874(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v45 = sub_1E499708C();
  v11 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for SolarContext;
  v50[4] = sub_1E48CD1BC();
  v50[0] = swift_allocObject();
  sub_1E48C9F14(a1, v50[0] + 16);
  v15 = *(a4 + 16);
  v16 = *(v15 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v16 + 4);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v18 + 4);
  swift_endAccess();

  v19 = *(v17 + 16);
  v44[1] = v14;
  if (!v19)
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_5:
    v22 = *(a4 + 16);
    v23 = *(v22 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    swift_beginAccess();
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47[0] = v24;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v27 = v47[0];
    v28 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    v29 = *(v22 + 24);
    *(v22 + 24) = v27;

    v30 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();
  }

  v31 = sub_1E48EE7F8(v49);
  v32 = sub_1E48C9C9C(v48, a2);
  if (*v33)
  {
    sub_1E48C8304(a3, v47);
    sub_1E48CD210(v50, v46);
    sub_1E496F86C(v46, v47);
  }

  (v32)(v48, 0);
  (v31)(v49, 0);
  v34 = sub_1E4996B3C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  v47[0] = sub_1E48EE450();
  sub_1E48CD274();
  v37 = sub_1E4996B1C();
  v39 = v38;

  v40 = [objc_opt_self() standardUserDefaults];
  v41 = sub_1E4996B7C();

  v42 = sub_1E4997EAC();

  [v40 setObject:v41 forKey:v42];

  sub_1E48CD2C8(v37, v39);
  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t sub_1E48CAF40(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v45 = sub_1E499708C();
  v11 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for DigitalClockContext;
  v50[4] = sub_1E48CD31C();
  v50[0] = swift_allocObject();
  sub_1E48C9E64(a1, v50[0] + 16);
  v15 = *(a4 + 16);
  v16 = *(v15 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v16 + 4);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v18 + 4);
  swift_endAccess();

  v19 = *(v17 + 16);
  v44[1] = v14;
  if (!v19)
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_5:
    v22 = *(a4 + 16);
    v23 = *(v22 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    swift_beginAccess();
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47[0] = v24;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v27 = v47[0];
    v28 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    v29 = *(v22 + 24);
    *(v22 + 24) = v27;

    v30 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();
  }

  v31 = sub_1E48EE7F8(v49);
  v32 = sub_1E48C9C9C(v48, a2);
  if (*v33)
  {
    sub_1E48C8304(a3, v47);
    sub_1E48CD210(v50, v46);
    sub_1E496F86C(v46, v47);
  }

  (v32)(v48, 0);
  (v31)(v49, 0);
  v34 = sub_1E4996B3C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  v47[0] = sub_1E48EE450();
  sub_1E48CD274();
  v37 = sub_1E4996B1C();
  v39 = v38;

  v40 = [objc_opt_self() standardUserDefaults];
  v41 = sub_1E4996B7C();

  v42 = sub_1E4997EAC();

  [v40 setObject:v41 forKey:v42];

  sub_1E48CD2C8(v37, v39);
  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t sub_1E48CB60C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v17 = sub_1E499708C();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v53[3] = a5;
  v53[4] = a6(v20);
  v53[0] = swift_allocObject();
  a8(a1, v53[0] + 16);
  v21 = *(a4 + 16);
  v22 = *(v21 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();

  if (!*(v23 + 16))
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_5:
    v27 = *(a4 + 16);
    v28 = *(v27 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    swift_beginAccess();
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v29;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v32 = *(v27 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v32 + 4);
    swift_endAccess();
    v33 = *(v27 + 24);
    *(v27 + 24) = v29;

    v34 = *(v27 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v34 + 4);
    swift_endAccess();
  }

  v35 = sub_1E48EE7F8(v52);
  v36 = sub_1E48C9C9C(v51, a2);
  if (*v37)
  {
    sub_1E48C8304(a3, v50);
    sub_1E48CD210(v53, v49);
    sub_1E496F86C(v49, v50);
  }

  (v36)(v51, 0);
  (v35)(v52, 0);
  v38 = sub_1E4996B3C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  v50[0] = sub_1E48EE450();
  sub_1E48CD274();
  v41 = sub_1E4996B1C();
  v43 = v42;

  v44 = [objc_opt_self() standardUserDefaults];
  v45 = sub_1E4996B7C();

  v46 = sub_1E4997EAC();

  [v44 setObject:v45 forKey:v46];

  sub_1E48CD2C8(v41, v43);
  return __swift_destroy_boxed_opaque_existential_0Tm(v53);
}

id sub_1E48CBCFC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2C8, &qword_1E499B8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  LOBYTE(v17) = a2 & 1;
  *(v3 + qword_1ECF81820) = 0;
  *(v3 + qword_1ECF81828) = 0;
  v9 = type metadata accessor for DigitalClockViewModel();
  v10 = sub_1E48CD070();
  v11 = sub_1E48CD118(&qword_1ECF7F2D8, 255, type metadata accessor for DigitalClockViewModel);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  v16 = sub_1E4997C3C();
  v12 = sub_1E499765C();
  result = [v12 view];
  if (result)
  {
    v14 = result;

    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CBF04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2E0, &qword_1E499B8B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  *(v0 + qword_1ECF81820) = 0;
  *(v0 + qword_1ECF81828) = 0;
  type metadata accessor for SolarViewModel();
  sub_1E48CD0C4();
  sub_1E48CD118(&qword_1ECF7F2F0, 255, type metadata accessor for SolarViewModel);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  sub_1E4997C3C();
  v4 = sub_1E499765C();
  result = [v4 view];
  if (result)
  {
    v6 = result;

    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CC118(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2F8, &qword_1E499B8C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  *(v1 + qword_1ECF81820) = 0;
  *(v1 + qword_1ECF81828) = 0;
  type metadata accessor for WorldClockFace(0);
  v6 = type metadata accessor for WorldViewModel(0);
  v7 = sub_1E48CD118(&qword_1ECF7F300, 255, type metadata accessor for WorldClockFace);
  v8 = sub_1E48CD118(&qword_1ECF7F308, 255, type metadata accessor for WorldViewModel);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  v13 = sub_1E4997C3C();
  v9 = sub_1E499765C();
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];

    sub_1E48CD160(a1);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CC348(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockFace(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EAD8 != -1)
  {
    v41 = v5;
    swift_once();
    v5 = v41;
  }

  v8 = *(a1 + 97);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v28 = v5;
      sub_1E48C8FCC(a1, v46);
      sub_1E48C9DB4(v46, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
      v9 = swift_allocObject();
      sub_1E48C9DB4(v45, &v43);
      v29 = type metadata accessor for WorldViewModel(0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      *(v9 + 16) = sub_1E48DC558(&v43);
      v32 = sub_1E48CD118(&qword_1ECF7F290, 255, type metadata accessor for WorldClockFace);
      v33 = *(v32 + 32);

      v33(v28, v32);
      v34 = objc_allocWithZone(type metadata accessor for ClockHostingController());
      v35 = sub_1E48CC118(v7);

      *(v9 + 24) = v35;
      result = [v35 view];
      if (result)
      {
        v36 = result;
        [result setClipsToBounds_];

        sub_1E48C9E10(v45);
        sub_1E48C9E10(v46);
        v17 = &unk_1ECF7F298;
        v18 = &qword_1ECF7F240;
        v19 = &qword_1E499B778;
        goto LABEL_13;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v8 == 3)
    {
      sub_1E48C83B4(a1, v46);
      sub_1E48C9F14(v46, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
      v9 = swift_allocObject();
      sub_1E48C9F14(v45, &v43);
      v10 = type metadata accessor for SolarViewModel();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      *(v9 + 16) = sub_1E491A1A4(&v43);
      v13 = sub_1E48CCFC8();
      (*(v13 + 32))(&v43);
      objc_allocWithZone(type metadata accessor for ClockHostingController());

      v14 = sub_1E48CBF04();

      *(v9 + 24) = v14;
      result = [v14 view];
      if (result)
      {
        v16 = result;
        [result setClipsToBounds_];

        sub_1E48C9F70(v45);
        sub_1E48C9F70(v46);
        v17 = &unk_1ECF7F2A8;
        v18 = &qword_1ECF7F230;
        v19 = &qword_1E499B768;
LABEL_13:
        sub_1E48C1B44(v17, v18, v19);
        return v9;
      }

      goto LABEL_19;
    }

    sub_1E48C8304(a1, v46);
    v37 = objc_allocWithZone(type metadata accessor for PlayClockFaceViewController());
    v9 = sub_1E495F3AC(v46);
    v38 = &unk_1ECF7F288;
    v39 = type metadata accessor for PlayClockFaceViewController;
LABEL_16:
    sub_1E48CD118(v38, 255, v39);
    return v9;
  }

  if (*(a1 + 97))
  {
    sub_1E48C8304(a1, v46);
    v40 = objc_allocWithZone(type metadata accessor for AnalogClockFaceViewController());
    v9 = sub_1E48D76E8(v46);
    v38 = &unk_1ECF7F2C0;
    v39 = type metadata accessor for AnalogClockFaceViewController;
    goto LABEL_16;
  }

  sub_1E48C89BC(a1, v46);
  sub_1E48C9E64(v46, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
  v9 = swift_allocObject();
  sub_1E48C9E64(v45, &v43);
  v20 = type metadata accessor for DigitalClockViewModel();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v9 + 16) = sub_1E4925D6C(&v43);
  v23 = sub_1E48CD01C();
  (*(v23 + 32))(&v43);
  v24 = v43;
  v25 = v44;
  objc_allocWithZone(type metadata accessor for ClockHostingController());

  v26 = sub_1E48CBCFC(v24, v25);

  *(v9 + 24) = v26;
  result = [v26 view];
  if (result)
  {
    v27 = result;
    [result setClipsToBounds_];

    sub_1E48C9EC0(v45);
    sub_1E48C9EC0(v46);
    v17 = &unk_1ECF7F2B8;
    v18 = &qword_1ECF7F238;
    v19 = &qword_1E499B770;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E48CC978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48CC9E8(uint64_t a1, uint64_t a2)
{
  result = sub_1E48CD118(&qword_1ECF7F260, a2, type metadata accessor for ClockFaceController);
  *(a1 + 8) = result;
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

uint64_t sub_1E48CCD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroy_8Tm(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3 == 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
    v4 = 104;
  }

  else if (v3 == 1)
  {
    v5 = *(v1 + 16);

    v4 = 32;
  }

  else
  {
    if (*(v1 + 112))
    {
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v4 = 64;
  }

  v6 = *(v1 + v4);

LABEL_8:

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1E48CCF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E48CCFC8()
{
  result = qword_1ECF7F2A0;
  if (!qword_1ECF7F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2A0);
  }

  return result;
}