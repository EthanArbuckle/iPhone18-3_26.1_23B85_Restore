uint64_t sub_1AB397884(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB181984, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t StandardMetricsIDService.queryID(forTopic:withType:on:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 65) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB397A00, 0, 0);
}

uint64_t sub_1AB397A00()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 40);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *(v0 + 64) = v1;
  v10 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1AB397B48;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v6, v0 + 64, v7, v3, v4);
}

uint64_t sub_1AB397B48(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB267F44, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t StandardMetricsIDService.resetID(forTopics:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB397CB8, 0, 0);
}

uint64_t sub_1AB397CB8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AB091FE4;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1AB397E04()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1AB38BE74;

  return v6(v2, v3);
}

uint64_t sub_1AB397F28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB397F4C, 0, 0);
}

uint64_t sub_1AB397F4C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1AB398734;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1AB398078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB39809C, 0, 0);
}

uint64_t sub_1AB39809C()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1AB398738;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1AB3981CC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 57) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB3981F8, 0, 0);
}

uint64_t sub_1AB3981F8()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *(v0 + 56) = v1;
  v9 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1AB39833C;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return v9(v7, v6, v0 + 56, v3, v4);
}

uint64_t sub_1AB39833C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB28EE60, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB39848C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3984AC, 0, 0);
}

uint64_t sub_1AB3984AC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AB091FE0;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1AB3985F8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1AB39872C;

  return v6(v2, v3);
}

void Dependency.init<A>(satisfying:with:)()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000005DLL, 0x80000001AB50C3B0);
  sub_1AB461884();
  __break(1u);
}

{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000005CLL, 0x80000001AB50C410);
  sub_1AB461884();
  __break(1u);
}

{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000005DLL, 0x80000001AB50C3B0);
  sub_1AB461884();
  __break(1u);
}

uint64_t JetPackAssetSQLiteRecord.cacheKey.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.fileName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.metadata.getter()
{
  v1 = *(v0 + 40);
  sub_1AB1B9C40(v1, *(v0 + 48));
  return v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t LocalizerDefaultValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 17) = 1;
  return result;
}

uint64_t LocalizerDefaultValue.description.getter()
{
  if (*(v0 + 17))
  {
    return sub_1AB461614();
  }

  v2 = *v0;

  return v2;
}

unint64_t sub_1AB398A04()
{
  result = qword_1EB43BC68;
  if (!qword_1EB43BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BC68);
  }

  return result;
}

uint64_t sub_1AB398A64()
{
  if (*(v0 + 17))
  {
    return sub_1AB461614();
  }

  v2 = *v0;

  return v2;
}

unint64_t sub_1AB398AB4()
{
  result = qword_1EB43BC70;
  if (!qword_1EB43BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BC70);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AB398B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t sub_1AB398B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB398C04()
{
  v1 = *(v0 + 40);
  sub_1AB2A0C24(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB398C74()
{
  v1 = *(v0 + 40);
  sub_1AB2A0F08(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB398CE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB398DD8;

  return v9(v6 + 16);
}

uint64_t sub_1AB398DD8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB398F58;
  }

  else
  {
    v2 = sub_1AB398EEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB398EEC()
{
  sub_1AB42E6FC(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB398F58()
{
  v1 = *(v0 + 40);
  sub_1AB2A14F4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB398FC8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AB399150;
  }

  else
  {
    v2 = sub_1AB3990DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3990DC()
{
  sub_1AB42E99C(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB399150()
{
  v1 = *(v0 + 48);
  sub_1AB2A17A8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB3991C0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB399340;
  }

  else
  {
    v2 = sub_1AB3992D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3992D4()
{
  sub_1AB023A18(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB399340()
{
  v1 = *(v0 + 40);
  sub_1AB2A0680(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB3993B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_1AB3994A4;

  return v9(v6 + 16);
}

uint64_t sub_1AB3994A4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB399624;
  }

  else
  {
    v2 = sub_1AB3995B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3995B8()
{
  sub_1AB42FC2C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB399624()
{
  v1 = *(v0 + 72);
  sub_1AB2A2DB4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB399694()
{
  v1 = *(v0 + 32);
  sub_1AB2A4754(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB399704()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB3998A0;
  }

  else
  {
    v2 = sub_1AB399818;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB399818()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 96);
  sub_1AB431B6C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB3998A0()
{
  v1 = *(v0 + 128);
  sub_1AB2A4A10(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB399910(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_1AB399A04;

  return v9(v6 + 16);
}

uint64_t sub_1AB399A04()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB39C670;
  }

  else
  {
    v2 = sub_1AB39C650;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB399B18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1AB399C0C;

  return v9(v6 + 40);
}

uint64_t sub_1AB399C0C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1AB399D84;
  }

  else
  {
    v2 = sub_1AB399D20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB399D20()
{
  sub_1AB431678(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB399D84()
{
  v1 = *(v0 + 32);
  sub_1AB2A4724(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB399DF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB399EE8;

  return v9(v6 + 16);
}

uint64_t sub_1AB399EE8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB39A068;
  }

  else
  {
    v2 = sub_1AB399FFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB399FFC()
{
  sub_1AB43520C(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB39A068()
{
  v1 = *(v0 + 40);
  sub_1AB2A7AC0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB39A0D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for JSIntentResult();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1AB39A208;

  return v11(v8);
}

uint64_t sub_1AB39A208()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB39A3A4;
  }

  else
  {
    v2 = sub_1AB39A31C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB39A31C()
{
  v1 = *(v0 + 24);
  sub_1AB43523C(v1);
  sub_1AB0438EC(v1, type metadata accessor for JSIntentResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB39A3A4()
{
  v1 = *(v0 + 40);
  sub_1AB2A7D5C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB39A41C()
{
  v1 = *(v0 + 40);
  sub_1AB2A8A1C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB39A48C()
{
  v1 = *(v0 + 40);
  sub_1AB2A9078(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t Bag.FetchConfiguration.init(profile:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = 0;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;
  if (qword_1EB4343E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1AB45FD64();
  v6 = __swift_project_value_buffer(v5, qword_1EB46C1D8);
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v8 = *(*(v5 - 8) + 16);
  v9 = a2 + *(Configuration + 28);

  return v8(v9, v6, v5);
}

uint64_t Bag.FetchConfiguration.profile.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Bag.FetchConfiguration.profile.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t Bag.FetchConfiguration.withProfile(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  sub_1AB043888(v2, a2);

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  return result;
}

void *Bag.FetchConfiguration.process.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void Bag.FetchConfiguration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB043888(v2, a2);
  v5 = *(a2 + 32);
  v6 = a1;

  *(a2 + 32) = a1;
}

uint64_t Bag.FetchConfiguration.withWantsAutomaticUpdates(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1AB043888(v2, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v4 = sub_1AB45FD64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v4 = sub_1AB45FD64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Bag.FetchConfiguration.withBagServicePolicy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB043888(v2, a2);
  v5 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v6 = sub_1AB45FD64();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1AB39AA08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB39AA74()
{
  v1 = *(*v0 + 112);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1AB39AC08;
  }

  else
  {
    v2 = sub_1AB39AB84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB39AB84()
{
  v1 = v0[38];

  swift_unknownObjectRelease();
  *v1 = v0[37];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB39AC08()
{
  swift_willThrow();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AB39AC90(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 32);
  v7 = sub_1AB460514();
  v8 = sub_1AB460514();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8 processInfo:v6];

  v10 = v9;
  a1(&v10);
}

uint64_t sub_1AB39AD50()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t static Bag.fetchBag(forProfile:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v4, 0, 0);
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:usingPolicy:)(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v11 = *(Configuration - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  *(v13 + 3) = a1[3];
  *(v13 + 4) = 0;
  *v13 = v18;
  *(v13 + 1) = v17;
  *(v13 + 2) = v19;
  v13[40] = 0;
  v20 = qword_1EB4343E0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FD64();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C1D8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(&v13[*(Configuration + 28)], v22, v21);
  *(v13 + 4) = a2;
  sub_1AB043888(v13, v16);
  v16[40] = a3 & 1;
  v24 = a2;
  sub_1AB0438EC(v13, type metadata accessor for Bag.FetchConfiguration);
  (*(v23 + 24))(&v16[*(Configuration + 28)], v34, v21);
  sub_1AB043888(v16, v13);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1AB04394C(v13, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = 0;
  v30 = sub_1AB460BE4();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_1AB4F0AC0;
  v31[5] = v26;
  v31[6] = v27;

  sub_1AB39BBA8(0, 0, v9, &unk_1AB4F0AC8, v31);

  sub_1AB0438EC(v16, type metadata accessor for Bag.FetchConfiguration);
  return v27;
}

uint64_t static Bag.fetchBag(forProfile:wantsAutomaticUpdates:)(__int128 *a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, 0, a2);
}

uint64_t Bag.withLatestChanges.getter()
{
  v1 = *v0;
  v25 = &unk_1F202C448;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = [v1 profile];
      v8 = sub_1AB460544();
      v10 = v9;

      v11 = [v1 profileVersion];
      v12 = sub_1AB460544();
      v14 = v13;

      v17 = v8;
      v18 = v10;
      v19 = v12;
      v20 = v14;
      v3 = static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v17, 0, 0);

      return v3;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
    v3 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v3 + 16) = v15;
    *(v3 + 24) = v1;
    *(v3 + 32) = 1;
    swift_unknownObjectRetain();
    return v3;
  }

  if (![v2 replacingSnapshotIfNeeded])
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  sub_1AB43FC5C();
  v23 = &type metadata for SyncTaskScheduler;
  v24 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0;
  v6 = swift_allocObject();
  v6[2] = sub_1AB39C658;
  v6[3] = 0;
  v6[4] = v3;
  v17 = sub_1AB39C56C;
  v18 = v6;
  v19 = sub_1AB39C578;
  v20 = v3;
  sub_1AB01494C(v22, v21);
  v21[40] = 0;
  swift_retain_n();

  sub_1AB044378(&v17);
  swift_unknownObjectRelease();

  sub_1AB014AC0(&v17, &unk_1EB437750);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v3;
}

uint64_t Bag.snapshot.getter()
{
  swift_getObjectType();
  sub_1AB43FC5C();
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  v3 = swift_allocObject();
  v3[2] = sub_1AB39C658;
  v3[3] = 0;
  v3[4] = v0;
  v5[0] = sub_1AB39C654;
  v5[1] = v3;
  v5[2] = sub_1AB39C674;
  v5[3] = v0;
  sub_1AB01494C(v7, v6);
  v6[40] = 0;
  swift_retain_n();

  sub_1AB044378(v5);

  sub_1AB014AC0(v5, &unk_1EB437750);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v0;
}

uint64_t Bag.withLatestChanges()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB39B6A4, 0, 0);
}

uint64_t sub_1AB39B6A4()
{
  v0[20] = v0[23];
  v0[24] = Bag.withLatestChanges.getter();

  return MEMORY[0x1EEE6DFA0](sub_1AB39B718, 0, 0);
}

uint64_t sub_1AB39B718()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1AB39B7E4;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB08E9F8(v2);
  sub_1AB014AC0(v2, &unk_1EB4397E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB39B7E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB199700;
  }

  else
  {
    v4 = *(v1 + 176);

    *v4 = *(v1 + 168);
    v3 = sub_1AB034560;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t Bag.snapshot()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB39B938, 0, 0);
}

uint64_t sub_1AB39B938()
{
  v0[20] = v0[23];
  v0[24] = Bag.snapshot.getter();

  return MEMORY[0x1EEE6DFA0](sub_1AB39B9AC, 0, 0);
}

uint64_t sub_1AB39B9AC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1AB39BA78;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB08E9F8(v2);
  sub_1AB014AC0(v2, &unk_1EB4397E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB39BA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB39C64C;
  }

  else
  {
    v4 = *(v1 + 176);

    *v4 = *(v1 + 168);
    v3 = sub_1AB085118;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB39BBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1AB014A58(a3, v23 - v10, &qword_1EB4384A0);
  v12 = sub_1AB460BE4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1AB014AC0(v11, &qword_1EB4384A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1AB460BD4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1AB460AE4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1AB460614() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1AB014AC0(a3, &qword_1EB4384A0);

    return v21;
  }

LABEL_8:
  sub_1AB014AC0(a3, &qword_1EB4384A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1AB39BEA4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1AB08FEA0(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AB39BF50(void *a1)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v40 = *(Configuration - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4601C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB435688 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  v39 = xmmword_1AB4D4720;
  *(v9 + 16) = xmmword_1AB4D4720;
  v47 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB50C470;
  v10._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *a1;
  v12 = a1[1];
  v46[3] = MEMORY[0x1E69E6158];
  v46[0] = v11;
  v46[1] = v12;
  sub_1AB014A58(v46, v42, &unk_1EB437E60);
  v43 = 0u;
  v44 = 0u;

  sub_1AB0169C4(v42, &v43);
  v45 = 0;
  v13 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v47 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v43;
  v18 = v44;
  v16[64] = v45;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v47 = v13;
  sub_1AB014AC0(v46, &unk_1EB437E60);
  v19._countAndFlagsBits = 0x5620676E69737520;
  v19._object = 0xE900000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v47;
  v20 = sub_1AB461094();
  if (os_log_type_enabled(v8, v20))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v21 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    v38 = a1;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v9;
    *(&v43 + 1) = sub_1AB0223E4;
    *&v44 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v24 = sub_1AB460484();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v27 = swift_allocObject();
    *(v27 + 16) = v39;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1AB016854();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_1AB45FF14();

    a1 = v38;
  }

  else
  {
  }

  sub_1AB016760(0, &qword_1ED4D2060);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F98], v4);
  v28 = sub_1AB461164();
  (*(v5 + 8))(v7, v4);
  v29 = a1;
  v30 = v41;
  sub_1AB043888(v29, v41);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  sub_1AB04394C(v30, v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BCA0);
  v33 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 16) = v34;
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  *(v33 + 32) = 0;
  v35 = swift_allocObject();
  v35[2] = sub_1AB39C5A8;
  v35[3] = v32;
  v35[4] = v33;

  OS_dispatch_queue.schedule(task:)(sub_1AB39C640, v35);

  return v33;
}

void sub_1AB39C5A8(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1AB39AC90(a1, a2, a3, a4, v10);
}

unint64_t sub_1AB39C68C()
{
  result = qword_1EB43BCB8;
  if (!qword_1EB43BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCB8);
  }

  return result;
}

uint64_t sub_1AB39C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(v4, ObjectType, a2);
  v8 = swift_getObjectType();
  return (*(a4 + 32))(v4, v8, a4);
}

uint64_t static URLRequestEncoder.PropertyScope.allProperties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s9JetEngine35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1AB39C84C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s9JetEngine35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1AB39C8F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(a1, a2);
}

uint64_t Encoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  a4[3] = &type metadata for _Wrapped_Encoder;
  a4[4] = sub_1AB39CA7C();
  v9 = swift_allocObject();
  *a4 = v9;
  v9[5] = a2;
  v9[6] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  v9[7] = a1;
}

unint64_t sub_1AB39CA7C()
{
  result = qword_1EB43BCC0;
  if (!qword_1EB43BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCC0);
  }

  return result;
}

uint64_t sub_1AB39CBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  return a3(v5, v6);
}

uint64_t JetpackBundle.url(forResource:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v13 = *v2;
  v8 = a1[1];
  v12[0] = *a1;
  v12[1] = v8;
  JetpackBundle.url(forOptionalResource:)(v12, v12 - v6);
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1AB03BCD0(v7);
  sub_1AB29894C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t JetpackBundle.init(bundleURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB45F6F4();
  v4 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v5 = sub_1AB460514();

  v6 = [v4 initWithPath_];

  v7 = sub_1AB45F764();
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *a2 = v6;
  return result;
}

uint64_t JetpackBundleError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t JetpackBundle.sourceFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AB460514();
  v5 = sub_1AB460514();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_1AB45F6C4();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1AB45F764();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t JetpackBundle.url(forOptionalResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *v2;
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = sub_1AB460514();
      v12 = sub_1AB460514();
      v13 = [v10 URLForResource:v11 withExtension:v12];

      if (v13)
      {
        sub_1AB45F6C4();

        v14 = sub_1AB45F764();
        v15 = *(*(v14 - 8) + 56);
        v16 = v14;
        v17 = a2;
        v18 = 0;
      }

      else
      {
        v25 = sub_1AB45F764();
        v15 = *(*(v25 - 8) + 56);
        v16 = v25;
        v17 = a2;
        v18 = 1;
      }

      return v15(v17, v18, 1, v16);
    }

    v19 = sub_1AB460514();
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = 0;
    if (!v9)
    {
LABEL_8:
      v20 = 0;
      goto LABEL_9;
    }
  }

  v20 = sub_1AB460514();
LABEL_9:
  v21 = [v10 URLForResource:v19 withExtension:v20];

  if (v21)
  {
    sub_1AB45F6C4();

    v22 = sub_1AB45F764();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  }

  else
  {
    v23 = sub_1AB45F764();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  }

  return sub_1AB2D0A88(v7, a2);
}

unint64_t sub_1AB39D238()
{
  result = qword_1EB43BCC8;
  if (!qword_1EB43BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCC8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine13JetpackBundleV8ResourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB39D2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_1AB39D32C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine17LocalizationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1AB39D388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AB39D3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB39D414(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1AB39D43C()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1AB461DA4();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = sub_1AB461DA4();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t JetPackAssetRequestSourcePolicy.debugDescription.getter()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

JetEngine::JetPackAssetRequestSourcePolicy_optional __swiftcall JetPackAssetRequestSourcePolicy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x647261646E617473 && rawValue._object == 0xE800000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6E4F65746F6D6572 && object == 0xEA0000000000796CLL || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C6E4F6C61636F6CLL && object == 0xE900000000000079)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_1AB461DA4();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1AB39D6E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F65746F6D6572;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E4F65746F6D6572;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x6C6E4F6C61636F6CLL;
    v8 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

unint64_t sub_1AB39D7F8()
{
  result = qword_1EB43BCD0;
  if (!qword_1EB43BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCD0);
  }

  return result;
}

uint64_t sub_1AB39D84C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB39D8F8()
{
  sub_1AB460684();
}

uint64_t sub_1AB39D990()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB39DAF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F65746F6D6572;
  if (v2 != 1)
  {
    v5 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AB39DB84()
{
  result = qword_1EB434218;
  if (!qword_1EB434218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434218);
  }

  return result;
}

uint64_t Logger.withOutputFiltered(byName:defaultVerbosityLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = type metadata accessor for OptionalLogger();
  v19 = v14;
  (*(v10 + 16))(v12, v5, a4);
  v16 = sub_1AB39E110(v12, a1, a2, &v19, v15, a4, a5);

  return v16;
}

uint64_t OptionalLogger.Key.lookupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OptionalLogger.Key.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

_BYTE *OptionalLogger.Key.encode(_:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6775626564;
  if (*result == 2)
  {
    v3 = 1868983913;
    v2 = 0xE400000000000000;
  }

  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (*result)
  {
    v5 = 0x676E696E726177;
    v4 = 0xE700000000000000;
  }

  if (*result <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*result <= 1u)
  {
    v2 = v4;
  }

  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v6;
  a2[1] = v2;
  return result;
}

char OptionalLogger.Key.decode(_:)@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AB0165C4(a1, v6);
  v3 = swift_dynamicCast();
  if (v3)
  {
    LOBYTE(v3) = LogMessageLevel.init(name:)(v5);
  }

  else
  {
    *a2 = 4;
  }

  return v3;
}

_BYTE *sub_1AB39DE74@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6775626564;
  if (*result == 2)
  {
    v3 = 1868983913;
    v2 = 0xE400000000000000;
  }

  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (*result)
  {
    v5 = 0x676E696E726177;
    v4 = 0xE700000000000000;
  }

  if (*result <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*result <= 1u)
  {
    v2 = v4;
  }

  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v6;
  a2[1] = v2;
  return result;
}

char sub_1AB39DEF0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AB0165C4(a1, v6);
  v3 = swift_dynamicCast();
  if (v3)
  {
    LOBYTE(v3) = LogMessageLevel.init(name:)(v5);
  }

  else
  {
    *a2 = 4;
  }

  return v3;
}

uint64_t static OptionalLogger.preferences.getter()
{
  if (qword_1ED4D03F0 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t OptionalLogger.levelNameKey.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t OptionalLogger.verbosityLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ED4D03F0 != -1)
  {
    swift_once();
  }

  v3 = unk_1ED4D0400;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + 64);
  v8[0] = *(v1 + 56);
  v8[1] = v5;

  Preferences.subscript.getter(v8, ObjectType, &type metadata for OptionalLogger.Key, v3, &protocol witness table for OptionalLogger.Key, &v9);

  v7 = v9;
  if (v9 == 4)
  {
    v7 = *(v1 + 72);
  }

  *a1 = v7;
  return result;
}

uint64_t OptionalLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t OptionalLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB39E110(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v18 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v13 = swift_allocObject();
  v14 = *a4;
  sub_1AB0149B0(&v16, v13 + 16);
  *(v13 + 56) = a2;
  *(v13 + 64) = a3;
  *(v13 + 72) = v14;
  return v13;
}

void static PageID.random.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1AB45F9E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F9D4();
  v6 = sub_1AB45F9C4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[4] = v6;
  v13[5] = v8;
  v13[2] = 45;
  v13[3] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1AB0273A8();
  v9 = sub_1AB461434();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    sub_1AB411ED4("JetEngine/PageID.swift", 0x16uLL, 2, 0x39uLL);
  }

  *a1 = v9;
  a1[1] = v11;
}

uint64_t PageID.init<A>(id:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB4608B4();
  MEMORY[0x1AC59BA20](a1, a2);

  sub_1AB0273A8();
  v10 = sub_1AB461434();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_1AB411ED4("JetEngine/PageID.swift", 0x16uLL, 2, 0x39uLL);
  }

  result = (*(*(a4 - 8) + 8))(a3, a4);
  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t sub_1AB39E4A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AB4616A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (v11 == *(*a1 + 16))
  {
    sub_1AB1F3034(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1AB461694();
    v12 = sub_1AB4616B4();
    swift_allocError();
    v14 = v13;
    (*(v7 + 16))(v13, v9, v6);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B00], v12);
    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v10 + 16))
  {
    v16 = (v10 + 32 * v11);
    v18 = v16[6];
    v17 = v16[7];
    v20 = v16[4];
    v19 = v16[5];
    a1[1] = v11 + 1;

    v21 = MEMORY[0x1AC59B960](v20, v19, v18, v17);
    v23 = v22;

    *a3 = v21;
    a3[1] = v23;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PageID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AB4616A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  v9 = sub_1AB461DB4();
  v27 = v6;
  v24 = 45;
  v25 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v22 - 2) = &v24;
  v12 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, (&v22 - 4), v10, v11, &v22);
  v24 = v12;
  v25 = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB4621E4();
  sub_1AB39E4A4(&v24, v13, v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = *(v12 + 16);

  if (v25 == v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    *a2 = v15;
    a2[1] = v16;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (v25 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v18 = sub_1AB4616B4();
    swift_allocError();
    v20 = v19;
    v21 = v27;
    (*(v27 + 16))(v19, v8, v5);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
    swift_willThrow();
    (*(v21 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t PageID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);

  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t PageID.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetEngine::ShelfID of)
{
  if (*of.parent.value._countAndFlagsBits == *v1 && *(of.parent.value._countAndFlagsBits + 8) == v1[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetEngine::ComponentID *of)
{
  if (of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t static PageID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t PageID.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB39EBD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);

  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

unint64_t sub_1AB39EC84()
{
  result = qword_1EB43BCD8;
  if (!qword_1EB43BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCD8);
  }

  return result;
}

__int128 *Models.ToastAction.init(actionMetrics:icon:title:message:duration:)@<X0>(__int128 *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *result;
  v9 = a2[2];
  v10 = a2[4];
  *(a7 + 64) = a2[3];
  *(a7 + 80) = v10;
  v11 = *a2;
  v12 = a2[1];
  *a7 = v8;
  *(a7 + 16) = v11;
  v13 = *(a2 + 10);
  *(a7 + 32) = v12;
  *(a7 + 48) = v9;
  *(a7 + 96) = v13;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
  *(a7 + 136) = a8;
  return result;
}

uint64_t sub_1AB39ED14()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852793705;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB39EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB39FF8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB39EDD8(uint64_t a1)
{
  v2 = sub_1AB39F4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB39EE14(uint64_t a1)
{
  v2 = sub_1AB39F4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ToastAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1AB39F4DC();
  sub_1AB462224();
  if (!v2)
  {
    v10 = v6;
    v61 = a2;
    LOBYTE(v68) = 0;
    sub_1AB24CE74();
    sub_1AB461A54();
    if (*&v74[0])
    {
      v11 = *&v74[0];
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (*&v74[0])
    {
      v12 = *(&v74[0] + 1);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCF0);
    LOBYTE(v66[0]) = 1;
    sub_1AB39F530();
    sub_1AB461A54();
    v60 = v12;
    if (v68)
    {
      sub_1AB30395C(&v68, v74);
      sub_1AB014AC0(&v68, &qword_1EB43BCF0);
    }

    else
    {
      sub_1AB014AC0(&v68, &qword_1EB43BD00);
      memset(v74, 0, sizeof(v74));
      v75 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
    LOBYTE(v66[0]) = 2;
    sub_1AB37DF54();
    sub_1AB461A54();
    v59 = v11;
    v14 = *(&v68 + 1);
    v58 = v68;
    if (*(&v68 + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v68;
    }

    if (*(&v68 + 1) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(&v68 + 1);
    }

    v56 = v16;
    v57 = v15;
    LOBYTE(v66[0]) = 3;
    sub_1AB461A54();
    v55 = v14;
    if (*(&v68 + 1) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v68;
    }

    v54 = *(&v68 + 1);
    if (*(&v68 + 1) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(&v68 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B28);
    LOBYTE(v66[0]) = 4;
    sub_1AB22CD4C();
    sub_1AB461A54();
    v55 = v18;
    v58 = v17;
    v19 = *&v68;
    v20 = BYTE9(v68);
    v21 = BYTE9(v68) | BYTE8(v68);
    sub_1AB014A58(v74, v66, &qword_1EB43BD08);
    v22 = v10;
    v23 = v59;
    if (*&v66[0])
    {
      sub_1AB014AC0(v74, &qword_1EB43BD08);
      (*(v10 + 8))(v8, v5);
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[4];
      v73 = v67;
      v68 = v66[0];
      v69 = v66[1];
    }

    else
    {
      *(&v72 + 1) = &_s12_EmptySourceVN;
      v73 = &off_1EE764AB0;
      sub_1AB01494C(&v71, v63);
      v53 = v20;
      v24 = v64;
      v25 = v65;
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v26 = *(v25 + 24);
      LODWORD(v54) = v21;
      v52 = v26(v24, v25);
      v27 = v64;
      v28 = v65;
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v51 = (*(v28 + 32))(v27, v28);
      v50 = v29;
      v30 = v64;
      v31 = v65;
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v49 = (*(v31 + 40))(v30, v31);
      v33 = v64;
      v32 = v65;
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v34 = *(v32 + 48);
      v35 = v32;
      v20 = v53;
      v36 = v34(v33, v35);
      LOBYTE(v21) = v54;
      v37 = v36;
      v39 = v38;
      sub_1AB014AC0(v74, &qword_1EB43BD08);
      (*(v22 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      *&v68 = v52;
      *(&v68 + 1) = v51;
      LOBYTE(v69) = v50 & 1;
      *(&v69 + 1) = v49;
      *&v70 = v37;
      *(&v70 + 1) = v39;
      if (*&v66[0])
      {
        sub_1AB014AC0(v66, &qword_1EB43BD08);
      }
    }

    v40 = 0.0;
    if (!v20)
    {
      v40 = v19;
    }

    v41 = v60;
    v42 = v61;
    *v61 = v23;
    v42[1] = v41;
    if (v21)
    {
      v40 = 1.5;
    }

    v43 = v71;
    *(v42 + 3) = v70;
    *(v42 + 4) = v43;
    *(v42 + 5) = v72;
    v44 = v73;
    v45 = v69;
    *(v42 + 1) = v68;
    *(v42 + 2) = v45;
    v47 = v56;
    v46 = v57;
    v42[12] = v44;
    v42[13] = v46;
    v48 = v58;
    v42[14] = v47;
    v42[15] = v48;
    v42[16] = v55;
    *(v42 + 17) = v40;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

unint64_t sub_1AB39F4DC()
{
  result = qword_1EB43BCE8;
  if (!qword_1EB43BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCE8);
  }

  return result;
}

unint64_t sub_1AB39F530()
{
  result = qword_1EB43BCF8;
  if (!qword_1EB43BCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BCF8);
  }

  return result;
}

double Models.ToastAction.init(deserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v41);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v43);

  v7 = sub_1AB37F7F4(v43, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v43);
  v35[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v43, v35, v38);
  sub_1AB066D84(v41);
  v8 = v38[0];
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v43);
  v38[0] = v6;
  MediaArtwork.init(deserializing:using:)(v43, v38, v41);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v43);
    sub_1AB014A58(v43, v38, &qword_1EB436BA0);
    v10 = v39;
    if (v39)
    {
      v11 = v40;
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      v12 = (*(v11 + 24))(v10, v11);
      v44 = v13;
      sub_1AB066D84(v43);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {
      sub_1AB066D84(v43);
      sub_1AB014AC0(v38, &qword_1EB436BA0);
      v12 = 0;
      v44 = 0;
    }

    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v38);
    sub_1AB014A58(v38, v35, &qword_1EB436BA0);
    v14 = v36;
    if (v36)
    {
      v15 = v37;
      __swift_project_boxed_opaque_existential_1Tm(v35, v36);
      v16 = (*(v15 + 24))(v14, v15);
      v30 = v17;
      v31 = v16;
      sub_1AB066D84(v38);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }

    else
    {
      sub_1AB066D84(v38);
      sub_1AB014AC0(v35, &qword_1EB436BA0);
      v30 = 0;
      v31 = 0;
    }

    JSONObject.subscript.getter(0x6E6F697461727564, 0xE800000000000000, v35);
    sub_1AB014A58(v35, v32, &qword_1EB436BA0);
    v18 = v33;
    if (v33)
    {
      v29 = v8;
      v19 = v7;
      v20 = v12;
      v21 = v34;
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v22 = (*(v21 + 80))(v18, v21);
      v24 = v23;
      sub_1AB066D84(a1);
      sub_1AB066D84(v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      if (v24)
      {
        v22 = 0x3FF8000000000000;
      }

      v12 = v20;
      v7 = v19;
      v8 = v29;
    }

    else
    {
      sub_1AB066D84(a1);
      sub_1AB066D84(v35);
      sub_1AB014AC0(v32, &qword_1EB436BA0);
      v22 = 0x3FF8000000000000;
    }

    v25 = v41[3];
    v26 = v41[4];
    v27 = v41[1];
    *(a3 + 48) = v41[2];
    *(a3 + 64) = v25;
    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 80) = v26;
    v28 = v42;
    result = *v41;
    *(a3 + 16) = v41[0];
    *(a3 + 32) = v27;
    *(a3 + 96) = v28;
    *(a3 + 104) = v12;
    *(a3 + 112) = v44;
    *(a3 + 120) = v31;
    *(a3 + 128) = v30;
    *(a3 + 136) = v22;
  }

  return result;
}

uint64_t Models.ToastAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ToastAction.title.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t Models.ToastAction.message.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Models.ToastAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB39F4DC();
  sub_1AB462274();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1AB24CA70();

  sub_1AB461BF4();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v12) = 1;
    sub_1AB39FC64();
    sub_1AB461BF4();
    LOBYTE(v12) = 2;
    sub_1AB461B44();
    LOBYTE(v12) = 3;
    sub_1AB461B44();
    LOBYTE(v12) = 4;
    sub_1AB461BD4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AB39FC64()
{
  result = qword_1EB43BD18;
  if (!qword_1EB43BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD18);
  }

  return result;
}

__n128 Models.ToastAction.init(actionMetrics:title:message:duration:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>, double a7@<D0>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EE764AB0;
  MediaArtwork.init(_:)(&v15, &a6[1]);
  result = *a1;
  *a6 = *a1;
  a6[6].n128_u64[1] = a2;
  a6[7].n128_u64[0] = a3;
  a6[7].n128_u64[1] = a4;
  a6[8].n128_u64[0] = a5;
  a6[8].n128_f64[1] = a7;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1AB39FDB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1AB39FE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB39FE88()
{
  result = qword_1EB43BD20;
  if (!qword_1EB43BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD20);
  }

  return result;
}

unint64_t sub_1AB39FEE0()
{
  result = qword_1EB43BD28;
  if (!qword_1EB43BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD28);
  }

  return result;
}

unint64_t sub_1AB39FF38()
{
  result = qword_1EB43BD30;
  if (!qword_1EB43BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD30);
  }

  return result;
}

uint64_t sub_1AB39FF8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t sub_1AB3A0140(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3A0188, 0, 0);
}

uint64_t sub_1AB3A0188()
{
  v12 = v0;
  v1 = *(v0[3] + 16);
  v2 = sub_1AB014B20();

  v3 = MEMORY[0x1AC59C180](v1, &type metadata for OpaqueMetatype, v2);
  if (v1)
  {
    v4 = (v0[3] + 32);
    do
    {
      v5 = *v4++;
      sub_1AB2497C8(&v11, v5);
      --v1;
    }

    while (v1);
  }

  else
  {
  }

  v0[6] = v3;
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1AB3A02D4;

  return sub_1AB0407C0((v0 + 2), &unk_1AB4EFD98, v8, v6);
}

uint64_t sub_1AB3A02D4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB3A03F8;
  }

  else
  {

    v2 = sub_1AB3275C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A03F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t bootstrap(objects:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3A0484, 0, 0);
}

uint64_t sub_1AB3A0484()
{
  *(v0 + 32) = (*(v0 + 16))();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1AB3A0528;

  return BaseObjectGraph._withAllDependenciesResolved.getter();
}

uint64_t sub_1AB3A0528(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1AB25662C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1AB3A0650;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB3A0650()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t partialBootstrap(_:objects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3A06DC, 0, 0);
}

uint64_t sub_1AB3A06DC()
{
  *(v0 + 40) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1AB3A0798;
  v2 = *(v0 + 16);

  return sub_1AB3A0140(v2);
}

uint64_t sub_1AB3A0798(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t JSIncident.IncidentType.displayName.getter()
{
  if (*v0)
  {
    return 0x20676E697373696DLL;
  }

  else
  {
    return 0x6570797420646162;
  }
}

uint64_t JSIncident.problemSummary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = v0[64];
  sub_1AB4615D4();

  strcpy(v17, "Encountered ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  if (v1)
  {
    v9 = 0x20676E697373696DLL;
  }

  else
  {
    v9 = 0x6570797420646162;
  }

  if (v1)
  {
    v10 = 0xED000065756C6176;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  MEMORY[0x1AC59BA20](v9, v10);

  MEMORY[0x1AC59BA20](0x6020726F6620, 0xE600000000000000);
  MEMORY[0x1AC59BA20](v6, v7);
  MEMORY[0x1AC59BA20](2109024, 0xE300000000000000);
  v11 = v17[0];
  sub_1AB4615D4();

  BYTE3(v17[1]) = 0;
  HIDWORD(v17[1]) = -369098752;
  MEMORY[0x1AC59BA20](v2, v3);
  MEMORY[0x1AC59BA20](0x6F66207475622060, 0xED00006020646E75);
  MEMORY[0x1AC59BA20](v4, v5);
  MEMORY[0x1AC59BA20](2109024, 0xE300000000000000);

  MEMORY[0x1AC59BA20](v17[0], v17[1]);

  sub_1AB4615D4();

  strcpy(v17, "Recovered by ");
  HIWORD(v17[1]) = -4864;
  v12 = "ignoring the value";
  v13 = 0xD000000000000015;
  if (v8 != 1)
  {
    v13 = 0xD000000000000012;
    v12 = "Missing <PageID> value";
  }

  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (v8)
  {
    v15 = v12;
  }

  else
  {
    v15 = "using a default value";
  }

  MEMORY[0x1AC59BA20](v14, v15 | 0x8000000000000000);

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);

  MEMORY[0x1AC59BA20](v17[0], v17[1]);

  return v11;
}

JetEngine::JSIncident::IncidentType_optional __swiftcall JSIncident.IncidentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t JSIncident.IncidentType.rawValue.getter()
{
  if (*v0)
  {
    return 0x756C61566C6C756ELL;
  }

  else
  {
    return 0x65707954646162;
  }
}

uint64_t sub_1AB3A0C84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x756C61566C6C756ELL;
  }

  else
  {
    v3 = 0x65707954646162;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x756C61566C6C756ELL;
  }

  else
  {
    v5 = 0x65707954646162;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB3A0D30()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3A0DB8()
{
  sub_1AB460684();
}

uint64_t sub_1AB3A0E2C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3A0EB0@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AB3A0F10(uint64_t *a1@<X8>)
{
  v2 = 0x65707954646162;
  if (*v1)
  {
    v2 = 0x756C61566C6C756ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t JSIncident.RecoveryAction.sentenceFragment.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

JetEngine::JSIncident::RecoveryAction_optional __swiftcall JSIncident.RecoveryAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AB3A1024(char *a1, char *a2)
{
  if (*&aCoercedvdefaul[8 * *a1] == *&aCoercedvdefaul[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AB461DA4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AB3A1098()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3A1100()
{
  sub_1AB460684();
}

uint64_t sub_1AB3A1154()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

__n128 sub_1AB3A1204@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1AB0B9254(a1, v19);
  v18 = a2;

  sub_1AB3A1480(v19, &v18, v20);
  if (v3)
  {
    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v17 = MEMORY[0x1E69E6158];
    v16[0] = 0xD000000000000032;
    v16[1] = 0x80000001AB50C5F0;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1AB0169C4(v16, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    swift_getErrorValue();
    v17 = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v14, v15);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    sub_1AB014A58(v16, v13, &unk_1EB437E60);
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1AB0169C4(v13, v10 + 32);
    *(v10 + 64) = 0;
    *(v7 + 40) = v10;
    sub_1AB014AC0(v16, &unk_1EB437E60);
    v16[0] = v6;
    v13[0] = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, v13);

    result.n128_u64[0] = 0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  else
  {
    v12 = v20[3];
    a3[2] = v20[2];
    a3[3] = v12;
    a3[4] = v20[4];
    result = v20[1];
    *a3 = v20[0];
    a3[1] = result;
  }

  return result;
}

uint64_t sub_1AB3A1480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 1701869940;
  v7 = *a2;
  JSONObject.subscript.getter(1701869940, 0xE400000000000000, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v8 = v68;
  if (!v68)
  {

    sub_1AB066D84(&v70);
    sub_1AB014AC0(v67, &qword_1EB436BA0);
    v14 = 0xE400000000000000;
    goto LABEL_42;
  }

  v9 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  (*(v9 + 24))(v8, v9);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (!v11)
  {

    sub_1AB066D84(&v70);
    v14 = 0xE400000000000000;
    goto LABEL_42;
  }

  v12 = sub_1AB4619B4();

  sub_1AB066D84(&v70);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v14 = 0xE400000000000000;
LABEL_42:
    sub_1AB163664();
    swift_allocError();
    *v54 = v6;
    v54[1] = v14;
    v54[2] = 0x20000001F2012D28uLL;
    v54[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v13 = 0;
LABEL_9:
  v6 = 0x6465746365707865;
  JSONObject.subscript.getter(0x6465746365707865, 0xE800000000000000, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v15 = v68;
  if (!v68)
  {
    sub_1AB066D84(&v70);

    sub_1AB014AC0(v67, &qword_1EB436BA0);
    v14 = 0xE800000000000000;
    goto LABEL_42;
  }

  v16 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  v17 = (*(v16 + 24))(v15, v16);
  v19 = v18;
  sub_1AB066D84(&v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (!v19)
  {

    v14 = 0xE800000000000000;
    goto LABEL_42;
  }

  v73 = v17;
  v6 = 0x6C6175746361;
  JSONObject.subscript.getter(0x6C6175746361, 0xE600000000000000, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v20 = v68;
  if (!v68)
  {
    sub_1AB066D84(&v70);

    sub_1AB014AC0(v67, &qword_1EB436BA0);
    v14 = 0xE600000000000000;
    goto LABEL_42;
  }

  v62 = v13;
  v21 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  v22 = (*(v21 + 24))(v20, v21);
  v24 = v23;
  sub_1AB066D84(&v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (!v24)
  {

    v14 = 0xE600000000000000;
    goto LABEL_42;
  }

  v60 = v22;
  v63 = v24;
  v14 = 0xEA00000000006874;
  v6 = 0x61507463656A626FLL;
  JSONObject.subscript.getter(0x61507463656A626FLL, 0xEA00000000006874, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v25 = v68;
  if (!v68)
  {
    sub_1AB066D84(&v70);

    v52 = &qword_1EB436BA0;
    v53 = v67;
LABEL_35:
    sub_1AB014AC0(v53, v52);
    goto LABEL_42;
  }

  v61 = v19;
  v26 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  v27 = (*(v26 + 24))(v25, v26);
  v29 = v28;
  sub_1AB066D84(&v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (!v29)
  {
LABEL_39:

LABEL_40:

    goto LABEL_41;
  }

  v58 = v27;
  v14 = 0xEC00000073656D61;
  v6 = 0x4E747865746E6F63;
  JSONObject.subscript.getter(0x4E747865746E6F63, 0xEC00000073656D61, v67);
  sub_1AB014A58(v67, v64, &qword_1EB436BA0);
  v30 = v65;
  if (!v65)
  {
    sub_1AB066D84(v67);

    sub_1AB014AC0(v64, &qword_1EB436BA0);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
LABEL_34:
    v52 = &qword_1EB437EF8;
    v53 = &v70;
    goto LABEL_35;
  }

  v59 = v29;
  v31 = v66;
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  (*(v31 + 152))(&v70, v30, v31);
  sub_1AB066D84(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v32 = *(&v71 + 1);
  if (!*(&v71 + 1))
  {

    goto LABEL_34;
  }

  v33 = v72;
  __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
  v34 = (*(v33 + 40))(MEMORY[0x1E69E6158], v32, v33);
  sub_1AB06A37C(&v70);
  if (!v34)
  {
LABEL_38:

    goto LABEL_39;
  }

  v14 = 0xEE006E6F69746341;
  v6 = 0x797265766F636572;
  JSONObject.subscript.getter(0x797265766F636572, 0xEE006E6F69746341, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v35 = v68;
  if (!v68)
  {
    sub_1AB066D84(&v70);
    sub_1AB014AC0(v67, &qword_1EB436BA0);

LABEL_41:

    goto LABEL_42;
  }

  v57 = v34;
  v36 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  (*(v36 + 24))(v35, v36);
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (!v38)
  {
    sub_1AB066D84(&v70);

    goto LABEL_38;
  }

  v39 = sub_1AB4619B4();

  v40 = v61;
  if (v39 >= 3)
  {
    sub_1AB066D84(&v70);

    goto LABEL_40;
  }

  v56 = v39;
  sub_1AB066D84(&v70);
  JSONObject.subscript.getter(0x6B63617473, 0xE500000000000000, &v70);
  sub_1AB014A58(&v70, v67, &qword_1EB436BA0);
  v41 = v68;
  if (v68)
  {
    v42 = v69;
    __swift_project_boxed_opaque_existential_1Tm(v67, v68);
    v43 = (*(v42 + 24))(v41, v42);
    v45 = v44;
    sub_1AB066D84(&v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v46 = v62;
    v47 = v60;
    if (v45)
    {

      v48 = sub_1AB0C481C(v43, v45);
      if (v3)
      {
        swift_bridgeObjectRelease_n();
        sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, v7, &v70);

        sub_1AB014A58(&v70, v67, &qword_1EB436EC0);
        v49 = v68;
        v40 = v61;
        if (v68)
        {
          v50 = v69;
          __swift_project_boxed_opaque_existential_1Tm(v67, v68);
          (*(v50 + 8))(MEMORY[0x1E69E6158], v3, v49, v50);

          sub_1AB066D84(a1);
          sub_1AB014AC0(&v70, &qword_1EB436EC0);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v67);
        }

        else
        {

          sub_1AB066D84(a1);
          sub_1AB014AC0(&v70, &qword_1EB436EC0);
          result = sub_1AB014AC0(v67, &qword_1EB436EC0);
        }

        v55 = 0;
        goto LABEL_51;
      }

      v55 = v48;
      swift_bridgeObjectRelease_n();
    }

    else
    {

      v55 = 0;
    }

    v40 = v61;
  }

  else
  {
    sub_1AB066D84(&v70);
    sub_1AB014AC0(v67, &qword_1EB436BA0);

    v55 = 0;
    v46 = v62;
    v47 = v60;
  }

  result = sub_1AB066D84(a1);
LABEL_51:
  *a3 = v46;
  *(a3 + 8) = v73;
  *(a3 + 16) = v40;
  *(a3 + 24) = v47;
  *(a3 + 32) = v63;
  *(a3 + 40) = v58;
  *(a3 + 48) = v59;
  *(a3 + 56) = v57;
  *(a3 + 64) = v56;
  *(a3 + 72) = v55;
  return result;
}

uint64_t JSIncident.expected.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JSIncident.actual.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t JSIncident.objectPath.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t JSIncident.contextSummary.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB04E498();
  v0 = sub_1AB460484();

  return v0;
}

uint64_t JSIncident.description.getter()
{
  if (*(*(v0 + 56) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v1 = sub_1AB460484();
    v3 = v2;

    MEMORY[0x1AC59BA20](2618, 0xE200000000000000);
    MEMORY[0x1AC59BA20](v1, v3);
  }

  v4 = JSIncident.problemSummary.getter();
  MEMORY[0x1AC59BA20](v4);

  return 0;
}

uint64_t _s9JetEngine10JSIncidentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v24 = *(a1 + 40);
  v25 = *(a1 + 32);
  v23 = *(a1 + 48);
  v18 = *(a1 + 64);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *a1 == 0;
  v22 = *(a2 + 40);
  v20 = *(a1 + 56);
  v21 = *(a2 + 48);
  if (*a1)
  {
    v10 = 0x756C61566C6C756ELL;
  }

  else
  {
    v10 = 0x65707954646162;
  }

  v19 = *(a2 + 56);
  v17 = *(a2 + 64);
  if (v9)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE900000000000065;
  }

  if (*a2)
  {
    v12 = 0x756C61566C6C756ELL;
  }

  else
  {
    v12 = 0x65707954646162;
  }

  if (*a2)
  {
    v13 = 0xE900000000000065;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = sub_1AB461DA4();

    if ((v14 & 1) == 0)
    {
LABEL_29:
      v15 = 0;
      return v15 & 1;
    }
  }

  if ((v2 != v6 || v3 != v5) && (sub_1AB461DA4() & 1) == 0 || (v4 != v7 || v25 != v8) && (sub_1AB461DA4() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1AB461DA4() & 1) == 0 || (sub_1AB16D86C(v20, v19) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*&aCoercedvdefaul[8 * v18] == *&aCoercedvdefaul[8 * v17])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1AB461DA4();
  }

  swift_bridgeObjectRelease_n();
  return v15 & 1;
}

unint64_t sub_1AB3A2298()
{
  result = qword_1EB43BD38;
  if (!qword_1EB43BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD38);
  }

  return result;
}

unint64_t sub_1AB3A22F0()
{
  result = qword_1EB43BD40;
  if (!qword_1EB43BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD40);
  }

  return result;
}

uint64_t sub_1AB3A2344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AB3A238C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AB3A242C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3A2498()
{
  v0 = sub_1AB461114();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AB015664();
  sub_1AB4601E4();
  sub_1AB4610D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1AB461154();
  qword_1EB435390 = result;
  return result;
}

id static InMemoryJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1EB435388 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB435390;

  return v1;
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F1FFFAB8;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t sub_1AB3A26C8(uint64_t a1, void *a2)
{
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v24 = sub_1AB0168A8(0, 63, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB50C630;
  v5._countAndFlagsBits = 0xD00000000000003ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1AB014A58(v23, v17, &unk_1EB437E60);
  v18 = 0u;
  v19 = 0u;
  sub_1AB0169C4(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1AB014AC0(v23, &unk_1EB437E60);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t sub_1AB3A2940()
{
  sub_1AB014A58((v0 + 5), v6, &qword_1EB437030);
  if (v7)
  {
    v1 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    sub_1AB1FD508();
    v2 = (*(v1 + 8))();

    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1AB014AC0(v6, &qword_1EB437030);
    v2 = sub_1AB1FD508();
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v3);
  (*(v4 + 8))(0xD000000000000025, 0x80000001AB503630, v2, v3, v4);
}

uint64_t sub_1AB3A2A60()
{
  v1 = [*v0 underlyingDictionary];
  v2 = sub_1AB4602F4();

  return v2;
}

unint64_t sub_1AB3A2AC4(uint64_t a1)
{
  result = sub_1AB3A2AEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AB3A2AEC()
{
  result = qword_1EB43BD50;
  if (!qword_1EB43BD50)
  {
    sub_1AB158C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BD50);
  }

  return result;
}

BOOL static IntentDispatchTimeout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1AB3A2B7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t getEnumTagSinglePayload for IntentDispatchTimeout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDispatchTimeout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1AB3A2C04(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB3A2C20(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t ValidatedJetPackAssetLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  swift_unknownObjectRetain();
  sub_1AB3A2CC0(a1, &v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AB3A2CC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  v13 = *a2;
  v16 = a3;
  v17 = a4;
  v18 = v4;
  v19 = v13;
  v20 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8790], v9);
  return sub_1AB460DD4();
}

uint64_t sub_1AB3A2E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v28 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v29 = &v28 - v10;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1AB460BE4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a2, a5);
  (*(v9 + 16))(v11, v30, v8);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v9 + 80) + v22 + 8) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v31;
  *(v24 + 4) = a5;
  *(v24 + 5) = v25;
  (*(v12 + 32))(&v24[v20], v15, a5);
  v26 = v33;
  *&v24[v21] = v32;
  *&v24[v22] = v26;
  (*(v9 + 32))(&v24[v23], v29, v28);
  swift_unknownObjectRetain();

  sub_1AB2313A4(0, 0, v18, &unk_1AB4F1D80, v24);
}

uint64_t sub_1AB3A30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BD70);
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[21] = v13;
  v16 = (*(v18 + 24) + **(v18 + 24));
  v14 = swift_task_alloc();
  v8[22] = v14;
  *v14 = v8;
  v14[1] = sub_1AB3A33E8;

  return v16(v13, a8);
}

uint64_t sub_1AB3A33E8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3A39FC, 0, 0);
  }

  else
  {
    v10 = (*(v2[9] + 32) + **(v2[9] + 32));
    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_1AB3A35E4;
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[8];
    v7 = v2[9];
    v8 = v2[5];

    return v10(v5, v4, v8, v6, v7);
  }
}

uint64_t sub_1AB3A35E4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3A3AC0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_1AB3A3764;
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[14];
    v8 = v2[15];

    return JetPackAssetSession.jetPack<A>(for:fetcher:)(v7, v4, v5, v8, v6);
  }
}

uint64_t sub_1AB3A3764()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1AB3A3B9C;
  }

  else
  {
    v2 = sub_1AB3A3878;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A3878()
{
  v1 = v0[20];
  v11 = v0[19];
  v12 = v0[21];
  v2 = v0[16];
  v3 = v0[14];
  v9 = v0[15];
  v10 = v0[17];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  sub_1AB058F08(v3, v0[13], type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D54();
  (*(v5 + 8))(v4, v6);
  v0[3] = 0;
  sub_1AB460D64();
  sub_1AB3AA1D8(v3, type metadata accessor for JetPackAsset);
  (*(v2 + 8))(v10, v9);
  (*(v1 + 8))(v12, v11);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB3A39FC()
{
  v0[2] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D64();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB3A3AC0()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v0[2] = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D64();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB3A3B9C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v0[2] = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D64();

  v4 = v0[1];

  return v4();
}

uint64_t ValidatedJetPackAssetLocations.URLLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:requestConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AB45F764();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a2 + result[5]) = 0;
  v6 = (a2 + result[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:requestConfiguration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{

  LOBYTE(a2) = *a2;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a3 + result[5]) = a2;
  v8 = (a3 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + result[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a3 + result[5]) = v5;
  v8 = (a3 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + result[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1AB45F764();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a5 + result[5]) = v9;
  v12 = (a5 + result[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = (a5 + result[7]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildRequest()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v5 = *(v4 + 24);
  v6 = *(v1 + *(v4 + 20));
  v8 = *(v1 + v5);
  v7 = *(v1 + v5 + 8);
  v9 = type metadata accessor for URLJetPackAssetRequest();
  *(a1 + *(v9 + 20)) = v6;
  v10 = (a1 + *(v9 + 24));
  *v10 = v8;
  v10[1] = v7;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 + 24);
  v8 = sub_1AB45F764();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = (v2 + *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() + 28));
  v10 = *v9;
  v11 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v6 + 28)] = v12;
  *a2 = v5;
  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  sub_1AB04B604(v10);
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = v2;
  v12 = a2;
  v13 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1AB460DD4();
}

uint64_t sub_1AB3A428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v26 = &v26 - v7;
  v9 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1AB460BE4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1AB058F08(v27, v12, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v17 = a1;
  v18 = v5;
  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v6 + 80) + v21 + 8) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1AB058F70(v12, v23 + v19, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v24 = v29;
  *(v23 + v20) = v28;
  *(v23 + v21) = v24;
  (*(v6 + 32))(v23 + v22, v26, v18);
  swift_unknownObjectRetain();

  sub_1AB2313A4(0, 0, v15, &unk_1AB4F1D70, v23);
}

uint64_t sub_1AB3A4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BD70);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for URLJetPackAssetFetcher();
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for URLJetPackAssetRequest();
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3A46EC, 0, 0);
}

uint64_t sub_1AB3A46EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v33 = v0[18];
  v4 = v0[8];
  v5 = v0[9];
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v4, v6);
  v8 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v9 = (v4 + v8[6]);
  v10 = *v9;
  v11 = v9[1];
  *(v1 + *(v2 + 20)) = *(v4 + v8[5]);
  v12 = (v1 + *(v2 + 24));
  *v12 = v10;
  v12[1] = v11;
  v13 = objc_opt_self();

  v14 = [v13 defaultSessionConfiguration];
  (*(v7 + 56))(&v3[*(v33 + 24)], 1, 1, v6);
  v15 = (v4 + v8[7]);
  v16 = *v15;
  v17 = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 16) = v19;
  *(v18 + 24) = v5;
  *(v18 + 32) = 1;
  *&v3[*(v33 + 28)] = v18;
  *v3 = v14;
  *(v3 + 1) = v16;
  *(v3 + 2) = v17;
  sub_1AB04B604(v16);
  swift_unknownObjectRetain();
  LOBYTE(v4) = sub_1AB3A98C4();
  v0[2] = sub_1AB45F614();
  v0[3] = v20;
  v0[4] = 0x776E647074656A2FLL;
  v0[5] = 0xE90000000000002FLL;
  sub_1AB0273A8();
  v21 = sub_1AB461474();

  if (v4)
  {
    v22 = swift_task_alloc();
    v0[22] = v22;
    *v22 = v0;
    v22[1] = sub_1AB3A4B74;
    v23 = v0[21];
    v24 = v0[19];
    v25 = v0[16];
    v26 = 3;
LABEL_5:

    return sub_1AB26BEA8(v25, v23, v24, v26);
  }

  if (v21)
  {
    v27 = swift_task_alloc();
    v0[24] = v27;
    *v27 = v0;
    v27[1] = sub_1AB3A4F44;
    v23 = v0[21];
    v24 = v0[19];
    v25 = v0[16];
    v26 = 2;
    goto LABEL_5;
  }

  v29 = swift_task_alloc();
  v0[25] = v29;
  *v29 = v0;
  v29[1] = sub_1AB3A5064;
  v30 = v0[21];
  v31 = v0[19];
  v32 = v0[16];

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v32, v30, v31);
}

uint64_t sub_1AB3A4B74()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1AB3A4E34;
  }

  else
  {
    v3 = sub_1AB3A4C94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A4C94()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  sub_1AB058F70(v0[16], v3, type metadata accessor for JetPackAsset);
  sub_1AB058F08(v3, v5, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D54();
  (*(v7 + 8))(v4, v6);
  v0[7] = 0;
  sub_1AB460D64();
  sub_1AB3AA1D8(v3, type metadata accessor for JetPackAsset);
  sub_1AB3AA1D8(v2, type metadata accessor for URLJetPackAssetFetcher);
  sub_1AB3AA1D8(v1, type metadata accessor for URLJetPackAssetRequest);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB3A4E34()
{
  v1 = v0[21];
  sub_1AB3AA1D8(v0[19], type metadata accessor for URLJetPackAssetFetcher);
  sub_1AB3AA1D8(v1, type metadata accessor for URLJetPackAssetRequest);
  v0[6] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D64();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB3A4F44()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1AB3A4E34;
  }

  else
  {
    v3 = sub_1AB3A4C94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A5064()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1AB3A4E34;
  }

  else
  {
    v3 = sub_1AB3A4C94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A5184(uint64_t a1, uint64_t a2)
{
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 16))(a1, v2, v6);
  v7 = *(a2 + 24);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v9 = *(v2 + v7);
  v8 = *(v2 + v7 + 8);
  v10 = type metadata accessor for URLJetPackAssetRequest();
  *(a1 + *(v10 + 20)) = a2;
  v11 = (a1 + *(v10 + 24));
  *v11 = v9;
  v11[1] = v8;
  v13 = *(v3 + 8);

  return v13();
}

uint64_t sub_1AB3A5270(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() defaultSessionConfiguration];
  v10 = type metadata accessor for URLJetPackAssetFetcher();
  v11 = *(v10 + 24);
  v12 = sub_1AB45F764();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = (v4 + *(a4 + 28));
  v14 = *v13;
  v15 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = a3;
  *(v16 + 32) = 1;
  *&a1[*(v10 + 28)] = v16;
  *a1 = v9;
  *(a1 + 1) = v14;
  *(a1 + 2) = v15;
  sub_1AB04B604(v14);
  v19 = *(v5 + 8);
  swift_unknownObjectRetain();

  return v19();
}

uint64_t sub_1AB3A53F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = v2;
  v12 = a2;
  v13 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1AB460DD4();
}

uint64_t sub_1AB3A5524()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB3A56A8;
  }

  else
  {
    v2 = sub_1AB3A5638;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A5638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3A56A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3A5718()
{

  (*(v0[27] + 56))(v0[32], 1, 1, v0[26]);
  sub_1AB014AC0(v0[32], &unk_1EB4395B0);
  sub_1AB3AA238();
  swift_allocError();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = sub_1AB064F68;
  }

  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *a5 = a2;
  *(a5 + 8) = a1;
  *(a5 + 16) = 0;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = v10;
  *(a5 + 64) = v11;
  return result;
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = *a3;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = sub_1AB064F68;
  }

  if (a4)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

  *a6 = a2;
  *(a6 + 8) = a1;
  *(a6 + 16) = v12;
  result = 0.0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = sub_1AB064F68;
  }

  *a6 = a2;
  *(a6 + 8) = result;
  *(a6 + 16) = v6;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  if (a4)
  {
    v8 = a5;
  }

  else
  {
    v8 = 0;
  }

  *(a6 + 56) = v7;
  *(a6 + 64) = v8;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:usageID:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = a2;
  *(a8 + 8) = result;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = sub_1AB064F68;
  }

  if (a6)
  {
    v10 = a7;
  }

  else
  {
    v10 = 0;
  }

  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildRequest()(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1AB45F764();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v5 = *(v1 + 16);
  *(v2 + 152) = v5;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v2 + 112) = v4;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = swift_task_alloc();
  *(v2 + 136) = v8;
  *v8 = v2;
  v8[1] = sub_1AB3A5AD8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v4);
}

uint64_t sub_1AB3A5AD8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB3A5CAC;
  }

  else
  {
    v2 = sub_1AB3A5BEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A5BEC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  (*(*(v0 + 104) + 32))(v4, *(v0 + 112), *(v0 + 96));
  v5 = type metadata accessor for URLJetPackAssetRequest();
  *(v4 + *(v5 + 20)) = v3;
  v6 = (v4 + *(v5 + 24));
  *v6 = v2;
  v6[1] = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1AB3A5CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = objc_opt_self();
  sub_1AB04B604(v5);
  v8 = [v7 defaultSessionConfiguration];
  v9 = type metadata accessor for URLJetPackAssetFetcher();
  v10 = *(v9 + 24);
  v11 = sub_1AB45F764();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v9 + 28)] = v12;
  *a2 = v8;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(v2 + 48);
  v16[2] = *(v2 + 32);
  v16[3] = v9;
  v17 = *(v2 + 64);
  v10 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v10;
  v13 = v16;
  v14 = a2;
  v15 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1AB460DD4();
}

uint64_t sub_1AB3A5F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23[-v13 - 8];
  v15 = sub_1AB460BE4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 120) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(a2 + 48);
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 80) = v18;
  v19 = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v20;
  *(v17 + 96) = v19;
  *(v17 + 104) = a3;
  *(v17 + 112) = a4;
  (*(v9 + 32))(v17 + v16, v11, v8);
  sub_1AB064F30(a2, v23);
  swift_unknownObjectRetain();

  sub_1AB2313A4(0, 0, v14, &unk_1AB4F1D28, v17);
}

uint64_t sub_1AB3A61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 408) = a6;
  *(v7 + 416) = a7;
  *(v7 + 392) = a4;
  *(v7 + 400) = a5;
  v9 = sub_1AB460B34();
  *(v7 + 424) = v9;
  *(v7 + 432) = *(v9 - 8);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  *(v7 + 456) = v10;
  v11 = *(v10 - 8);
  *(v7 + 464) = v11;
  *(v7 + 472) = *(v11 + 64);
  *(v7 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  *(v7 + 488) = swift_task_alloc();
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  *(v7 + 496) = v12;
  v13 = *(v12 - 8);
  *(v7 + 504) = v13;
  *(v7 + 512) = *(v13 + 64);
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  v14 = sub_1AB45F764();
  *(v7 + 536) = v14;
  *(v7 + 544) = *(v14 - 8);
  v15 = swift_task_alloc();
  *(v7 + 552) = v15;
  v16 = type metadata accessor for URLJetPackAssetRequest();
  *(v7 + 560) = v16;
  v17 = *(v16 - 8);
  *(v7 + 568) = v17;
  *(v7 + 576) = *(v17 + 64);
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  v18 = *(a4 + 48);
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = v18;
  *(v7 + 80) = *(a4 + 64);
  v19 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v19;
  v20 = swift_task_alloc();
  *(v7 + 600) = v20;
  *v20 = v7;
  v20[1] = sub_1AB3A64E8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v15);
}

uint64_t sub_1AB3A64E8()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1AB3A74E0;
  }

  else
  {
    v2 = sub_1AB3A65FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A65FC()
{
  v69 = *(v0 + 608);
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 496);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  (*(v3 + 32))(v1, *(v0 + 552), v4);
  v9 = *(v8 + 16);
  *(v0 + 232) = *(v8 + 24);
  *(v1 + *(v2 + 20)) = v9;
  *(v1 + *(v2 + 24)) = *(v0 + 232);
  sub_1AB014A58(v0 + 232, v0 + 248, &qword_1EB439AC0);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = objc_opt_self();
  sub_1AB04B604(v10);
  v13 = [v12 defaultSessionConfiguration];
  (*(v3 + 56))(&v5[*(v6 + 24)], 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = v7;
  *(v14 + 32) = 1;
  *&v5[*(v6 + 28)] = v14;
  *v5 = v13;
  *(v5 + 1) = v10;
  *(v5 + 2) = v11;
  swift_unknownObjectRetain();
  v16 = sub_1AB3A9B24();
  if (v69)
  {
    v17 = *(v0 + 592);
    sub_1AB3AA1D8(*(v0 + 528), type metadata accessor for URLJetPackAssetFetcher);
    sub_1AB3AA1D8(v17, type metadata accessor for URLJetPackAssetRequest);
    *(v0 + 328) = v69;
    sub_1AB460D64();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v66 = *(v0 + 576);
    v56 = *(v0 + 568);
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);
    v63 = v23;
    v65 = *(v0 + 512);
    v54 = *(v0 + 504);
    v24 = *(v0 + 488);
    v68 = *(v0 + 480);
    v70 = *(v0 + 464);
    v67 = *(v0 + 456);
    v25 = *(v0 + 416);
    v57 = v25;
    v64 = *(v0 + 408);
    v26 = *(v0 + 392);
    v59 = v20;
    v62 = v16;
    *(v0 + 264) = sub_1AB45F614();
    *(v0 + 272) = v27;
    *(v0 + 280) = 0x776E647074656A2FLL;
    *(v0 + 288) = 0xE90000000000002FLL;
    sub_1AB0273A8();
    v53 = sub_1AB461474();

    v61 = sub_1AB460BE4();
    v60 = *(*(v61 - 8) + 56);
    v60(v24, 1, 1, v61);
    sub_1AB058F08(v20, v21, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB058F08(v22, v23, type metadata accessor for URLJetPackAssetFetcher);
    v58 = *(v70 + 16);
    v58(v68, v25, v67);
    v28 = (*(v56 + 80) + 112) & ~*(v56 + 80);
    v50 = *(v56 + 80);
    v51 = *(v54 + 80);
    v29 = (v66 + v51 + v28) & ~v51;
    v55 = *(v70 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = *(v26 + 64);
    v33 = *(v26 + 32);
    v32 = *(v26 + 48);
    *(v30 + 48) = *(v26 + 16);
    *(v30 + 64) = v33;
    *(v30 + 80) = v32;
    *(v30 + 96) = v31;
    *(v30 + 32) = *v26;
    *(v30 + 104) = v64;
    sub_1AB058F70(v21, v30 + v28, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB058F70(v23, v30 + v29, type metadata accessor for URLJetPackAssetFetcher);
    v34 = (v30 + v29 + v65);
    v62 &= 1u;
    *v34 = v62;
    v53 &= 1u;
    v34[1] = v53;
    v52 = *(v70 + 32);
    v52(v30 + ((v29 + v65 + v55 + 2) & ~v55), v68, v67);

    sub_1AB064F30(v26, v0 + 88);
    v49 = sub_1AB3B2A60(0, 0, v24, &unk_1AB4F1D40, v30);
    *(v0 + 616) = v49;
    v60(v24, 1, 1, v61);
    v35 = v21;
    sub_1AB058F08(v59, v21, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB058F08(v22, v23, type metadata accessor for URLJetPackAssetFetcher);
    v58(v68, v57, v67);
    v36 = (v50 + 104) & ~v50;
    v37 = (v66 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v51 + v38 + 8) & ~v51;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    v41 = *(v26 + 16);
    v42 = *(v26 + 32);
    v43 = *(v26 + 48);
    *(v40 + 96) = *(v26 + 64);
    *(v40 + 64) = v42;
    *(v40 + 80) = v43;
    *(v40 + 48) = v41;
    *(v40 + 32) = *v26;
    sub_1AB058F70(v35, v40 + v36, type metadata accessor for URLJetPackAssetRequest);
    *(v40 + v37) = v49;
    *(v40 + v38) = v64;
    sub_1AB058F70(v63, v40 + v39, type metadata accessor for URLJetPackAssetFetcher);
    v44 = (v40 + v39 + v65);
    *v44 = v62;
    v44[1] = v53;
    v52(v40 + ((v39 + v65 + v55 + 2) & ~v55), v68, v67);

    sub_1AB064F30(v26, v0 + 160);

    *(v0 + 624) = sub_1AB3B2A60(0, 0, v24, &unk_1AB4F1D50, v40);
    v45 = swift_task_alloc();
    *(v0 + 632) = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    *(v0 + 640) = v46;
    *v45 = v0;
    v45[1] = sub_1AB3A6DAC;
    v47 = MEMORY[0x1E69E7288];
    v48 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 296, v49, v48, v46, v47);
  }
}

uint64_t sub_1AB3A6DAC()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 648) = *(v1 + 296);
  *(v1 + 305) = *(v1 + 304);
  v3 = swift_task_alloc();
  *(v1 + 656) = v3;
  *v3 = v2;
  v3[1] = sub_1AB3A6F40;
  v4 = *(v1 + 640);
  v5 = *(v1 + 624);
  v6 = MEMORY[0x1E69E7288];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v1 + 312, v5, v7, v4, v6);
}

uint64_t sub_1AB3A6F40()
{

  return MEMORY[0x1EEE6DFA0](sub_1AB3A703C, 0, 0);
}

uint64_t sub_1AB3A703C()
{
  v1 = *(v0 + 312);
  if (*(v0 + 305) != 1)
  {
    v10 = *(v0 + 592);
    v11 = *(v0 + 528);
    sub_1AB04E6E4(*(v0 + 312), *(v0 + 320));
    *(v0 + 336) = 0;
    sub_1AB460D64();

    sub_1AB3AA1D8(v11, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v10;
LABEL_6:
    sub_1AB3AA1D8(v12, type metadata accessor for URLJetPackAssetRequest);
    goto LABEL_7;
  }

  v2 = *(v0 + 648);
  if (*(v0 + 320))
  {
    *(v0 + 368) = v2;
    v3 = v2;
    v4 = swift_dynamicCast();
    v5 = *(v0 + 648);
    v27 = *(v0 + 528);
    v28 = *(v0 + 592);
    if (v4)
    {
      v6 = *(v0 + 448);
      v7 = *(v0 + 424);
      v8 = *(v0 + 432);
      *(v0 + 384) = v1;
      v9 = v1;
      sub_1AB460D64();

      sub_1AB04E6E4(v5, 1);
      sub_1AB04E6E4(v1, 1);

      sub_1AB3AA1D8(v27, type metadata accessor for URLJetPackAssetFetcher);
      sub_1AB3AA1D8(v28, type metadata accessor for URLJetPackAssetRequest);
      (*(v8 + 8))(v6, v7);

      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D47F0;
    *(v22 + 32) = v2;
    *(v22 + 40) = v1;
    sub_1AB1BA4A4();
    v23 = swift_allocError();
    v25 = v24;
    sub_1AB053C94(v5, 1);
    sub_1AB053C94(v1, 1);
    *v25 = v22;
    *(v0 + 376) = v23;
    sub_1AB460D64();

    sub_1AB04E6E4(v5, 1);
    sub_1AB04E6E4(v1, 1);

    sub_1AB3AA1D8(v27, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v28;
    goto LABEL_6;
  }

  *(v0 + 344) = v2;
  v15 = v2;
  v16 = swift_dynamicCast();
  v17 = *(v0 + 648);
  v18 = *(v0 + 592);
  v19 = *(v0 + 528);
  if (!v16)
  {

    *(v0 + 352) = v17;
    v26 = v2;
    sub_1AB460D64();

    sub_1AB04E6E4(v17, 1);

    sub_1AB3AA1D8(v19, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v18;
    goto LABEL_6;
  }

  v20 = *(v0 + 432);
  v29 = *(v0 + 440);
  v21 = *(v0 + 424);
  *(v0 + 360) = 0;
  sub_1AB460D64();

  sub_1AB04E6E4(v17, 1);

  sub_1AB3AA1D8(v19, type metadata accessor for URLJetPackAssetFetcher);
  sub_1AB3AA1D8(v18, type metadata accessor for URLJetPackAssetRequest);
  (*(v20 + 8))(v29, v21);

LABEL_7:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1AB3A74E0()
{
  v0[41] = v0[76];
  sub_1AB460D64();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB3A75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v24;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BD70);
  v8[3] = v12;
  v8[4] = *(v12 - 8);
  v8[5] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;
  v8[8] = swift_task_alloc();
  if (a8)
  {
    v14 = swift_task_alloc();
    v8[9] = v14;
    *v14 = v8;
    v14[1] = sub_1AB3A783C;
    v15 = v13;
    v16 = a6;
    v17 = a7;
    v18 = 3;
LABEL_5:

    return sub_1AB26BEA8(v15, v16, v17, v18);
  }

  if (v23)
  {
    v19 = swift_task_alloc();
    v8[12] = v19;
    *v19 = v8;
    v19[1] = sub_1AB3A7B7C;
    v15 = v13;
    v16 = a6;
    v17 = a7;
    v18 = 2;
    goto LABEL_5;
  }

  v21 = swift_task_alloc();
  v8[13] = v21;
  *v21 = v8;
  v21[1] = sub_1AB3A7CA0;

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v13, a6, a7);
}

uint64_t sub_1AB3A783C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1AB3A7AF4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1AB3A7960;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A7960()
{
  v1 = v0[10];
  sub_1AB058F70(v0[7], v0[8], type metadata accessor for JetPackAsset);
  sub_1AB460CC4();
  if (v1)
  {
    sub_1AB3AA1D8(v0[8], type metadata accessor for JetPackAsset);
  }

  else
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[3];
    v6 = v0[4];
    sub_1AB058F08(v3, v0[6], type metadata accessor for JetPackAsset);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
    sub_1AB460D54();
    (*(v6 + 8))(v4, v5);
    sub_1AB3AA1D8(v3, type metadata accessor for JetPackAsset);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB3A7AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3A7B7C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1AB3A7AF4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1AB3A7960;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A7CA0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1AB3A7AF4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1AB3A7960;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A7DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v18;
  *(v8 + 192) = a8;
  *(v8 + 200) = v19;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BD70);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for URLJetPackAssetRequest();
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_1AB45F764();
  *(v8 + 272) = v11;
  *(v8 + 280) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 288) = v12;
  v13 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v13;
  *(v8 + 80) = *(a4 + 64);
  v14 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v14;
  v15 = swift_task_alloc();
  *(v8 + 296) = v15;
  *v15 = v8;
  v15[1] = sub_1AB3A7FD8;

  return sub_1AB0567BC(v12);
}

uint64_t sub_1AB3A7FD8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1AB3A8B08;
  }

  else
  {
    v2 = sub_1AB3A80EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A80EC()
{
  sub_1AB3AA190(&qword_1ED4D1AE8, MEMORY[0x1E6968FB0]);
  if (sub_1AB460504())
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v1 = *(v0 + 8);

    return v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460CA4();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 288);
  v5 = *(v0 + 256);
  v24 = *(v0 + 344);
  v21 = *(v0 + 160);
  sub_1AB4622E4();
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  *(v0 + 152) = MEMORY[0x1E69E6158];
  *(v0 + 128) = 0xD000000000000055;
  *(v0 + 136) = 0x80000001AB50C670;
  *(v9 + 48) = 0u;
  *(v9 + 32) = 0u;
  sub_1AB0169C4(v0 + 128, v9 + 32);
  *(v9 + 64) = 0;
  *(v8 + 32) = v9;
  Logger.info(_:)(v8, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  (*(v3 + 16))(v4, v23, v22);
  *(v4 + *(v5 + 20)) = *(v21 + 16);
  v10 = (v4 + *(v5 + 24));
  *v10 = 0;
  v10[1] = 0;
  if (v24 == 1)
  {
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    *v11 = v0;
    v11[1] = sub_1AB3A8548;
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);
    v15 = 3;
LABEL_11:

    return sub_1AB26BEA8(v13, v12, v14, v15);
  }

  if (*(v0 + 345) == 1)
  {
    v16 = swift_task_alloc();
    *(v0 + 328) = v16;
    *v16 = v0;
    v16[1] = sub_1AB3A88C8;
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);
    v15 = 2;
    goto LABEL_11;
  }

  v17 = swift_task_alloc();
  *(v0 + 336) = v17;
  *v17 = v0;
  v17[1] = sub_1AB3A89E8;
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 192);

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v19, v18, v20);
}

uint64_t sub_1AB3A8548()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1AB3A87E8;
  }

  else
  {
    v3 = sub_1AB3A8668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A8668()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  sub_1AB058F70(v0[30], v2, type metadata accessor for JetPackAsset);
  sub_1AB058F08(v2, v4, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  sub_1AB460D54();
  (*(v6 + 8))(v3, v5);
  sub_1AB3AA1D8(v2, type metadata accessor for JetPackAsset);
  sub_1AB3AA1D8(v1, type metadata accessor for URLJetPackAssetRequest);
  (*(v0[35] + 8))(v0[36], v0[34]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB3A87E8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  sub_1AB3AA1D8(v0[33], type metadata accessor for URLJetPackAssetRequest);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB3A88C8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1AB3A87E8;
  }

  else
  {
    v3 = sub_1AB3A8668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A89E8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1AB3A87E8;
  }

  else
  {
    v3 = sub_1AB3A8668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB3A8B08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3A8BB0(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1AB45F764();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v5 = *(v1 + 16);
  *(v2 + 152) = v5;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v2 + 112) = v4;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = swift_task_alloc();
  *(v2 + 136) = v8;
  *v8 = v2;
  v8[1] = sub_1AB3A8CEC;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v4);
}

uint64_t sub_1AB3A8CEC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB3AA748;
  }

  else
  {
    v2 = sub_1AB3AA74C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3A8E00(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = objc_opt_self();
  sub_1AB04B604(v7);
  v10 = [v9 defaultSessionConfiguration];
  v11 = type metadata accessor for URLJetPackAssetFetcher();
  v12 = *(v11 + 24);
  v13 = sub_1AB45F764();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = a3;
  *(v14 + 32) = 1;
  *&a1[*(v11 + 28)] = v14;
  *a1 = v10;
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  v17 = *(v4 + 8);
  swift_unknownObjectRetain();

  return v17();
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildRequest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildFetcher(_:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB3A9218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AB3A9260(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB3A61D4(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1AB3A9374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BDA8);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 64) = 0;
  sub_1AB22532C([*(v0 + 16) valuePromise]);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v7 = sub_1AB015664();
  swift_retain_n();

  v11[3] = v7;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = sub_1AB461124();
  v9[0] = sub_1AB3AA674;
  v9[1] = v6;
  v9[2] = sub_1AB3AA6D4;
  v9[3] = v1;
  sub_1AB01494C(v11, v10);
  v10[40] = 0;

  sub_1AB1991E4(v9);
  sub_1AB014AC0(v9, &unk_1EB439870);

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v1;
}

uint64_t sub_1AB3A9510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BD98);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  sub_1AB22532C([*(v0 + 16) valuePromise]);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v7 = sub_1AB015664();
  swift_retain_n();

  v11[3] = v7;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = sub_1AB461124();
  v9[0] = sub_1AB3AA5C4;
  v9[1] = v6;
  v9[2] = sub_1AB3AA62C;
  v9[3] = v1;
  sub_1AB01494C(v11, v10);
  v10[40] = 0;

  sub_1AB1991E4(v9);
  sub_1AB014AC0(v9, &unk_1EB439870);

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v1;
}

void sub_1AB3A96AC(void *a1)
{
  swift_getErrorValue();
  if (sub_1AB044DF8(v4))
  {
    memset(v2, 0, sizeof(v2));
    v3 = xmmword_1AB4CE300;
    sub_1AB435A10(v2);
    sub_1AB014AC0(v2, &qword_1EB43BDB0);
  }

  else
  {
    sub_1AB2A9438(a1);
  }
}

void sub_1AB3A9744(void *a1)
{
  swift_getErrorValue();
  if (sub_1AB044DF8(v2))
  {
    sub_1AB435D98(0);
  }

  else
  {
    sub_1AB2A9764(a1);
  }
}

void sub_1AB3A97B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v6 - v3;
  swift_getErrorValue();
  if (sub_1AB044DF8(v6[1]))
  {
    v5 = sub_1AB45F764();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1AB09829C(v4);
    sub_1AB014AC0(v4, &unk_1EB4395B0);
  }

  else
  {
    sub_1AB2A9A08(a1);
  }
}

uint64_t sub_1AB3A98C4()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v10 = [ObjCClassFromObject uninitializedToken];
    sub_1AB0550D0(&unk_1F1FF4288);
    sub_1AB0589A8(&unk_1F1FF42A8);
    v3 = sub_1AB460E34();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB428540;
    aBlock[3] = &block_descriptor_60;
    v4 = _Block_copy(aBlock);
    v5 = [v1 cachedValuesForKeys:v3 observationToken:&v10 updateHandler:v4];
    _Block_release(v4);

    v6 = sub_1AB4602F4();
    [v1 removeObserverWithToken_];
    if (*(v6 + 16) && (v7 = sub_1AB014DB4(0xD000000000000015, 0x80000001AB4FED70), (v8 & 1) != 0))
    {
      sub_1AB0165C4(*(v6 + 56) + 32 * v7, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v9 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AB3A9B24()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v10 = [ObjCClassFromObject uninitializedToken];
    sub_1AB0550D0(&unk_1F1FF42B8);
    sub_1AB0589A8(&unk_1F1FF42D8);
    v3 = sub_1AB460E34();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB428540;
    aBlock[3] = &block_descriptor_44;
    v4 = _Block_copy(aBlock);
    v5 = [v1 cachedValuesForKeys:v3 observationToken:&v10 updateHandler:v4];
    _Block_release(v4);

    v6 = sub_1AB4602F4();
    [v1 removeObserverWithToken_];
    if (*(v6 + 16) && (v7 = sub_1AB014DB4(0xD000000000000015, 0x80000001AB4FED70), (v8 & 1) != 0))
    {
      sub_1AB0165C4(*(v6 + 56) + 32 * v7, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v9 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AB3A9D84(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[13];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1AB027554;

  return sub_1AB3A75C8(a1, v9, v10, (v1 + 4), v11, v1 + v4, v1 + v7, v12);
}

uint64_t sub_1AB3A9F78(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v14 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v4);
  v11 = *(v1 + v5);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1AB027554;

  return sub_1AB3A7DC4(a1, v8, v9, v1 + 32, v1 + v14, v10, v11, v1 + v7);
}

uint64_t sub_1AB3AA190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB3AA1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AB3AA238()
{
  result = qword_1EB4343B8;
  if (!qword_1EB4343B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4343B8);
  }

  return result;
}

uint64_t sub_1AB3AA294(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1AB027554;

  return sub_1AB3A4578(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_1AB3AA42C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1AB027460;

  return sub_1AB3A30F4(a1, v10, v11, v1 + v5, v12, v13, v1 + v9, v4);
}

uint64_t sub_1AB3AA5C4(void *a1)
{
  (*(v1 + 24))(&v3, *a1);
  sub_1AB435D98(v3);
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB3AA674(void *a1)
{
  (*(v1 + 24))(v3, *a1);
  sub_1AB435A10(v3);
  return sub_1AB014AC0(v3, &qword_1EB43BDB0);
}

unint64_t sub_1AB3AA6F0()
{
  result = qword_1EB43BDB8;
  if (!qword_1EB43BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BDB8);
  }

  return result;
}

uint64_t static DeepLinkRouterBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t _CodeByKind_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  v5 = sub_1AB461354();
  v6 = *(*(v5 - 8) + 40);

  return v6(a2, a1, v5);
}

uint64_t _CodeByKind_OrNil.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1AB461354();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _CodeByKind_OrNil.wrappedValue.setter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1AB461354();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _CodeByKind_OrNil.description.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_1AB461354();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  (*(v3 + 16))(v5, v0, v2, v8);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v3 + 8))(v5, v2);
    return 7104878;
  }

  else
  {
    (*(v6 + 32))(v10, v5, AssociatedTypeWitness);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1AB461D64();
    v11 = v13[0];
    (*(v6 + 8))(v10, AssociatedTypeWitness);
  }

  return v11;
}

uint64_t _CodeByKind_OrNil.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AB461354();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v22 - v10;
  type metadata accessor for CodeByKind();
  v11 = sub_1AB461354();
  v23 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v12);
  sub_1AB01494C(a1, v27);
  swift_getWitnessTable();
  v15 = v28;
  v16 = sub_1AB461394();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v17 = type metadata accessor for _CodeByKind_OrNil();
    return (*(*(v17 - 8) + 8))(a4, v17);
  }

  else
  {
    v28 = a4;
    MEMORY[0x1EEE9AC00](v16);
    *(&v22 - 2) = a2;
    *(&v22 - 1) = a3;
    KeyPath = swift_getKeyPath();
    v20 = v24;
    sub_1AB04EB88(sub_1AB3ABFEC, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v21, v24);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v23 + 8))(v14, v11);
    return (*(v25 + 40))(v28, v20, v26);
  }
}

uint64_t _CodeByKind_OrNil.init(_partiallyFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1AB461354();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CodeByKind();
  v12 = sub_1AB461354();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v14);
  v17 = v23;
  sub_1AB01494C(v23, v27);
  swift_getWitnessTable();
  Optional<A>.init(_partiallyFrom:)(v27, v11, v16);
  v25 = a2;
  v26 = a3;
  KeyPath = swift_getKeyPath();
  sub_1AB04EB88(sub_1AB3AB18C, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v19, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  (*(v13 + 8))(v16, v12);
  return (*(v8 + 40))(v22, v10, v24);
}

uint64_t _CodeByKind_OrNil.encode(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = type metadata accessor for CodeByKind();
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v12 = v2;
  v13 = v3;
  swift_getAssociatedTypeWitness();
  sub_1AB461354();
  sub_1AB04EB88(sub_1AB3ABFD4, v11, MEMORY[0x1E69E73E0], v4, v9, v8);
  swift_getWitnessTable();
  sub_1AB461364();
  return (*(v6 + 8))(v8, v5);
}

uint64_t _CodeByKind_OrNil._partiallyEncode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for CodeByKind();
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-v8];
  v14 = v3;
  v15 = v4;
  swift_getAssociatedTypeWitness();
  sub_1AB461354();
  sub_1AB04EB88(sub_1AB3AB5DC, v13, MEMORY[0x1E69E73E0], v5, v10, v9);
  WitnessTable = swift_getWitnessTable();
  Optional<A>._partiallyEncode(to:)(a1, v6, WitnessTable);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AB3AB4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return CodeByKind.init(wrappedValue:)(v7, a2);
}

BOOL static _CodeByKind_OrNil<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v26 - v9;
  v10 = sub_1AB461354();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v26 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v26 - v15;
  v18 = *(v17 + 48);
  v30 = v11;
  v19 = *(v11 + 16);
  v19(&v26 - v15, a1, v10, v14);
  (v19)(&v16[v18], a2, v10);
  v20 = *(v8 + 48);
  if (v20(v16, 1, AssociatedTypeWitness) != 1)
  {
    (v19)(v31, v16, v10);
    if (v20(&v16[v18], 1, AssociatedTypeWitness) != 1)
    {
      v22 = v27;
      (*(v8 + 32))(v27, &v16[v18], AssociatedTypeWitness);
      v23 = v31;
      v24 = sub_1AB460504();
      v25 = *(v8 + 8);
      v25(v22, AssociatedTypeWitness);
      v25(v23, AssociatedTypeWitness);
      (*(v30 + 8))(v16, v10);
      return (v24 & 1) != 0;
    }

    (*(v8 + 8))(v31, AssociatedTypeWitness);
LABEL_6:
    (*(v29 + 8))(v16, TupleTypeMetadata2);
    return 0;
  }

  if (v20(&v16[v18], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_6;
  }

  (*(v30 + 8))(v16, v10);
  return 1;
}

uint64_t _CodeByKind_OrNil<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();
  sub_1AB461354();

  return sub_1AB461374();
}

uint64_t _CodeByKind_OrNil<>.hashValue.getter()
{
  sub_1AB4620A4();
  _CodeByKind_OrNil<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB3ABAC0()
{
  sub_1AB4620A4();
  _CodeByKind_OrNil<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB3ABB5C()
{
  swift_getAssociatedTypeWitness();
  result = sub_1AB461354();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB3ABBE8(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v10 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_26;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v8 > 3)
        {
          v12 = 0;
        }

        if (v8)
        {
          if (v8 > 3)
          {
            LODWORD(v8) = 4;
          }

          if (v8 > 2)
          {
            if (v8 == 3)
            {
              LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v8) = *a1;
            }
          }

          else if (v8 == 1)
          {
            LODWORD(v8) = *a1;
          }

          else
          {
            LODWORD(v8) = *a1;
          }
        }

        return v7 + (v8 | v12) + 1;
      }

      v10 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v6 < 2)
  {
    return 0;
  }

  v14 = (*(v5 + 48))(a1);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AB3ABD88(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (v8)
  {
    v10 = *(v7 + 64);
  }

  else
  {
    v9 = 0;
    v10 = *(v7 + 64) + 1;
  }

  if (a3 <= v9)
  {
    goto LABEL_15;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v11))
    {
      v6 = 4;
      if (v9 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 >= 2)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

LABEL_15:
    if (v9 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v6 = 1;
  if (v9 >= a2)
  {
LABEL_25:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v10] = 0;
    }

    else if (v6)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v8 >= 2)
    {
      v16 = *(v7 + 56);

      v16(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v13 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v13;
    v14 = 1;
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_39:
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v10 == 2)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_43:
      if (v6 == 2)
      {
        *&a1[v10] = v14;
      }

      else
      {
        *&a1[v10] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v6 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6)
  {
    a1[v10] = v14;
  }
}

id LookupBagContract.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  *&v3[OBJC_IVAR____TtC9JetEngine17LookupBagContract_backing] = v4;
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v4;
  v5 = type metadata accessor for MescalBagContract();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain_n();
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v8, sel_init);
}

id LookupBagContract.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine17LookupBagContract_backing] = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v2;
  v3 = type metadata accessor for MescalBagContract();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain_n();
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v7, sel_init);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AB3AC208()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine17LookupBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id LookupBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LookupBagContract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AB3AC33C()
{
  result = qword_1EB43BE30;
  if (!qword_1EB43BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE30);
  }

  return result;
}

void *MutableStateRef.init(pointingTo:in:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 MutableStateRef.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t MutableStateRef<>.current.getter(void *a1, uint64_t a2)
{
  v9 = *v2;
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(v4 + 24);
  v7 = a1[2];

  v6(&v9, v5, a2, v7, v4);
}

uint64_t MutableStateRef<>.reset()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v2 + 32);

  v9(v3, v2);
  v13 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v13, 0, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v2 + 40))(v7, v3, v2);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t MutableStateRef<>.performChanges(_:)(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4)
{
  v30 = a4;
  v31 = a2;
  v32 = a1;
  v6 = a3[3];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = *(v13 + 32);
  v15 = *(v13 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v29 - v17;
  v20 = *v4;
  v19 = v4[1];
  (*(v14 + 32))(v15, v14, v16);
  v35 = v20;
  v37[0] = v20;
  v37[1] = v19;
  v33 = v19;
  v21 = a3;
  v22 = v30;
  MutableStateRef<>.current.getter(v21, v30);
  (*(v7 + 16))(v9, v12, v6);
  v32(v9);
  if ((sub_1AB460504() & 1) == 0)
  {
    v37[0] = v35;
    v31 = v14;
    v23 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = v15;
    v25 = AssociatedConformanceWitness;
    v29 = *(AssociatedConformanceWitness + 40);

    v26 = v23;
    v14 = v31;
    v15 = v32;
    v29(v37, v9, v6, v22, v26, v25);
  }

  v27 = *(v7 + 8);
  v27(v9, v6);
  v27(v12, v6);
  sub_1AB3AC8DC(v35, v33, v18, v15, v6, v14);
  return (*(v34 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_1AB3AC8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, a3, AssociatedTypeWitness, v11);
  (*(a6 + 40))(v13, a4, a6);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

double sub_1AB3ACA10@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  StateRef.init(pointingTo:in:)(&v5, v3, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_1AB3ACA60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB3ACAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v6 = sub_1AB3AE144(a1, a2, a3);
  v7 = *(v6 + 16);
  if (!v7)
  {

    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_32:
      v46 = *(v10 + 48);
      v47 = *(v10 + 80);
      v84 = *(v10 + 64);
      v85 = v47;
      v86 = *(v10 + 96);
      v82 = *(v10 + 32);
      v83 = v46;
      sub_1AB09DF1C(&v82, &v77);

      v48 = v85;
      *(a4 + 32) = v84;
      *(a4 + 48) = v48;
      *(a4 + 64) = v86;
      v49 = v83;
      *a4 = v82;
      *(a4 + 16) = v49;
      return result;
    }

    goto LABEL_34;
  }

  v52 = a4;
  v87 = MEMORY[0x1E69E7CC0];
  result = sub_1AB1778BC(0, v7, 0);
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = v87;
    v58 = v6;
    v59 = v6 + 32;
    v56 = v4;
    v57 = v4 + 32;
    v11 = 1;
    v60 = v7;
    while (1)
    {
      v62 = v10;
      v12 = v59 + 72 * v9;
      v13 = *(v12 + 64);
      v14 = *(v12 + 16);
      v15 = *(v12 + 48);
      v84 = *(v12 + 32);
      v85 = v15;
      v83 = v14;
      v82 = *v12;
      v86 = v13;
      v16 = v15;
      v63 = BYTE8(v84);
      v64 = *(&v14 + 1);
      v65 = v84;
      v66 = v14;
      v17 = *(&v82 + 1);
      v68 = v13;
      v69 = v82;
      v61 = v11;
      v67 = *(&v15 + 1);
      if (!v15)
      {
        v26 = *(v4 + 16);
        result = sub_1AB09DF1C(&v82, &v72);
        if (!v26)
        {
          v25 = 0;
          goto LABEL_26;
        }

        v27 = v57;
        while (1)
        {
          v28 = v27[3];
          v74 = v27[2];
          v75 = v28;
          v76 = *(v27 + 8);
          v29 = v27[1];
          v72 = *v27;
          v73 = v29;
          v25 = v75;
          if (v75)
          {
            *&v71 = v69;
            *(&v71 + 1) = v17;
            MEMORY[0x1EEE9AC00](result);
            v51 = &v71;
            sub_1AB09DF1C(&v72, v70);

            v30 = sub_1AB0A1064(sub_1AB29A030, v50, v25);

            if (v30)
            {
              v79 = v74;
              v80 = v75;
              v31 = *(&v75 + 1);
              v32 = v76;
              v81 = v76;
              v77 = v72;
              v78 = v73;
              v34 = *(&v73 + 1);
              v33 = v74;
              v35 = BYTE8(v74);
              v23 = *(&v72 + 1);
              v22 = v72;
              if ((v73 & 1) == 0)
              {
                goto LABEL_23;
              }

LABEL_18:
              v53 = v35;
              v54 = v32;
              v55 = v31;
              v36 = sub_1AB461DA4();

              if (v36)
              {
                result = sub_1AB09DEB0(&v82);
                v66 = 1;
                v17 = v23;
                v64 = v34;
                v65 = v33;
                v63 = v53;
                v67 = v55;
                v68 = v54;
                v69 = v22;
              }

              else
              {
                result = sub_1AB3AED3C(&v77);
                v25 = v16;
              }

LABEL_25:
              v6 = v58;
              v4 = v56;
              goto LABEL_26;
            }

            result = sub_1AB09DEB0(&v72);
          }

          v27 = (v27 + 72);
          if (!--v26)
          {
            v25 = 0;
            v6 = v58;
            goto LABEL_26;
          }
        }
      }

      v18 = *(v4 + 16);
      result = sub_1AB09DF1C(&v82, &v72);
      if (v18)
      {
        v19 = v57;
        while (1)
        {
          v20 = v19[1];
          v72 = *v19;
          v73 = v20;
          v21 = v19[3];
          v74 = v19[2];
          v75 = v21;
          v76 = *(v19 + 8);
          v23 = *(&v72 + 1);
          v22 = v72;
          v71 = v72;
          MEMORY[0x1EEE9AC00](result);
          v51 = &v71;
          sub_1AB09DF1C(&v72, v70);

          v24 = sub_1AB0A1064(sub_1AB29A030, v50, v16);

          if (v24)
          {
            break;
          }

          result = sub_1AB09DEB0(&v72);
          v19 = (v19 + 72);
          if (!--v18)
          {
            v25 = v16;
            v4 = v56;
            v6 = v58;
            goto LABEL_26;
          }
        }

        v79 = v74;
        v80 = v75;
        v31 = *(&v75 + 1);
        v32 = v76;
        v81 = v76;
        v77 = v72;
        v78 = v73;
        v25 = v75;
        v34 = *(&v73 + 1);
        v33 = v74;
        v35 = BYTE8(v74);
        if (v73)
        {
          goto LABEL_18;
        }

LABEL_23:
        v55 = v31;
        v37 = v35;

        result = sub_1AB09DEB0(&v82);
        v66 = 0;
        v68 = v32;
        v69 = v22;
        v17 = v23;
        v64 = v34;
        v65 = v33;
        v63 = v37;
        v67 = v55;
        goto LABEL_25;
      }

      v25 = v16;
LABEL_26:
      v38 = v62;
      v87 = v62;
      v40 = *(v62 + 16);
      v39 = *(v62 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1AB1778BC((v39 > 1), v40 + 1, 1);
        v38 = v87;
      }

      LOBYTE(v71) = v63;
      *(v38 + 16) = v40 + 1;
      v41 = v38 + 72 * v40;
      *(v41 + 32) = v69;
      *(v41 + 40) = v17;
      *(v41 + 48) = v66;
      v42 = *(&v72 + 3);
      *(v41 + 49) = v72;
      *(v41 + 52) = v42;
      v43 = v65;
      *(v41 + 56) = v64;
      *(v41 + 64) = v43;
      *(v41 + 72) = v71;
      LODWORD(v43) = *v70;
      *(v41 + 76) = *&v70[3];
      *(v41 + 73) = v43;
      v45 = v67;
      v44 = v68;
      *(v41 + 80) = v25;
      *(v41 + 88) = v45;
      *(v41 + 96) = v44;
      v9 = v61;
      v10 = v38;
      if (v61 == v60)
      {
        break;
      }

      v11 = v61 + 1;
      if (v61 >= *(v6 + 16))
      {
        goto LABEL_35;
      }
    }

    a4 = v52;
    if (*(v10 + 16))
    {
      goto LABEL_32;
    }

LABEL_34:

    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1AB3ACFF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v36 = a5;
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    if (*a3)
    {
      v8 = 0x6469746E65696C63;
    }

    else
    {
      v8 = 0x646972657375;
    }

    if (*a3)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    v10 = a4 + 32;
    v11 = MEMORY[0x1E69E7CC0];
    v35 = a4 + 32;
    while (1)
    {
      v37 = v11;
      v12 = (v10 + 72 * v7);
      v13 = v7;
      while (1)
      {
        if (v13 >= v5)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        v16 = v12[3];
        v42 = v12[2];
        v43 = v16;
        v44 = *(v12 + 8);
        v17 = v12[1];
        v40 = *v12;
        v41 = v17;
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_39;
        }

        v18 = v41 ? 0x6469746E65696C63 : 0x646972657375;
        v19 = v41 ? 0xE800000000000000 : 0xE600000000000000;
        if (v18 == v8 && v19 == v9)
        {
          sub_1AB09DF1C(&v40, v39);
        }

        else
        {
          v21 = sub_1AB461DA4();
          sub_1AB09DF1C(&v40, v39);

          if ((v21 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v39[0] = v6;
        v39[1] = v38;
        MEMORY[0x1EEE9AC00](v14);
        v34[2] = v39;
        if (sub_1AB0A1064(sub_1AB29A030, v34, v15))
        {
          break;
        }

LABEL_12:
        result = sub_1AB09DEB0(&v40);
        ++v13;
        v12 = (v12 + 72);
        if (v7 == v5)
        {
          v11 = v37;
          goto LABEL_34;
        }
      }

      v11 = v37;
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v11;
      if ((result & 1) == 0)
      {
        result = sub_1AB1778BC(0, *(v11 + 16) + 1, 1);
        v11 = v45;
      }

      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1AB1778BC((v22 > 1), v23 + 1, 1);
        v11 = v45;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 72 * v23;
      *(v24 + 32) = v40;
      v25 = v41;
      v26 = v42;
      v27 = v43;
      *(v24 + 96) = v44;
      *(v24 + 64) = v26;
      *(v24 + 80) = v27;
      *(v24 + 48) = v25;
      v10 = v35;
      if (v7 == v5)
      {
LABEL_34:
        if (!*(v11 + 16))
        {
          goto LABEL_37;
        }

LABEL_35:
        v28 = *(v11 + 48);
        v29 = *(v11 + 80);
        v42 = *(v11 + 64);
        v43 = v29;
        v44 = *(v11 + 96);
        v40 = *(v11 + 32);
        v41 = v28;
        sub_1AB09DF1C(&v40, v39);

        v30 = v43;
        v31 = v36;
        *(v36 + 32) = v42;
        *(v31 + 48) = v30;
        *(v31 + 64) = v44;
        v32 = v41;
        *v31 = v40;
        *(v31 + 16) = v32;
        return result;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_35;
  }

LABEL_37:

  v33 = v36;
  *(v36 + 64) = 0;
  v33[2] = 0u;
  v33[3] = 0u;
  *v33 = 0u;
  v33[1] = 0u;
  return result;
}

__n128 sub_1AB3AD338@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[6];
  if (!v4)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = (a2 + 32);
      while (1)
      {
        v15 = v14[3];
        v25 = v14[2];
        v26 = v15;
        v27 = *(v14 + 8);
        result = v14[1];
        v23 = *v14;
        v24 = result;
        v16 = v26;
        if (v26)
        {
          *&v22 = v12;
          *(&v22 + 1) = v13;
          MEMORY[0x1EEE9AC00](a1);
          v20 = &v22;
          sub_1AB09DF1C(&v23, v21);

          v17 = sub_1AB0A1064(sub_1AB29A030, v19, v16);

          if (v17)
          {
            goto LABEL_14;
          }

          a1 = sub_1AB09DEB0(&v23);
        }

        v14 = (v14 + 72);
        if (!--v11)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_13:
    *(a3 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v6 = (a2 + 32);
  while (1)
  {
    v7 = v6[1];
    v23 = *v6;
    v24 = v7;
    v8 = v6[3];
    v25 = v6[2];
    v26 = v8;
    v27 = *(v6 + 8);
    v22 = v23;
    MEMORY[0x1EEE9AC00](a1);
    v20 = &v22;
    sub_1AB09DF1C(&v23, v21);

    v9 = sub_1AB0A1064(sub_1AB29A030, v19, v4);

    if (v9)
    {
      break;
    }

    a1 = sub_1AB09DEB0(&v23);
    v6 = (v6 + 72);
    if (!--v5)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v18 = v26;
  *(a3 + 32) = v25;
  *(a3 + 48) = v18;
  *(a3 + 64) = v27;
  result = v24;
  *a3 = v23;
  *(a3 + 16) = result;
  return result;
}

JetEngine::MetricsIdentifierType_optional __swiftcall MetricsIdentifierType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricsIdentifierType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6469746E65696C63;
  }

  else
  {
    return 0x646972657375;
  }
}

uint64_t sub_1AB3AD5D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6469746E65696C63;
  }

  else
  {
    v3 = 0x646972657375;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6469746E65696C63;
  }

  else
  {
    v5 = 0x646972657375;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

unint64_t sub_1AB3AD678()
{
  result = qword_1EB432650;
  if (!qword_1EB432650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432650);
  }

  return result;
}

uint64_t sub_1AB3AD6CC()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3AD74C()
{
  sub_1AB460684();
}

uint64_t sub_1AB3AD7B8()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB3AD834(uint64_t *a1@<X8>)
{
  v2 = 0x646972657375;
  if (*v1)
  {
    v2 = 0x6469746E65696C63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AB3AD8F4()
{
  sub_1AB460684();
}

uint64_t sub_1AB3AD9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3AEF70();
  *a1 = result;
  return result;
}

void sub_1AB3ADA1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x63617073656D616ELL;
  v5 = 0xE800000000000000;
  v6 = 0x6E6170736566696CLL;
  v7 = 0xEC000000736E6F69;
  v8 = 0x74616C6572726F63;
  if (v2 != 4)
  {
    v8 = 0x6E6F697461746F72;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (v2 != 1)
  {
    v10 = 0x736369706F74;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AB3ADADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3AEF70();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3ADB04(uint64_t a1)
{
  v2 = sub_1AB09E200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3ADB40(uint64_t a1)
{
  v2 = sub_1AB09E200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3ADB7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  result = sub_1AB460484();
  qword_1EB433B48 = result;
  unk_1EB433B50 = v1;
  return result;
}

uint64_t sub_1AB3ADC00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v20 = *(v1 + 16);
  v7 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v7;
  v15 = *(v1 + 40);
  v8 = *(v1 + 48);
  v13[0] = *(v1 + 56);
  v13[1] = *(v1 + 64);
  v14 = v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB09E200();
  sub_1AB462274();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1AB461BB4();
  if (!v9)
  {
    v10 = v17;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_1AB3AF530();
    sub_1AB461BF4();
    v19 = v10;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    v12 = sub_1AB09E038(&qword_1EB43BE80);
    sub_1AB461BF4();
    v18 = v12;
    LOBYTE(v19) = 3;
    sub_1AB461B64();
    v19 = v14;
    v21 = 4;
    sub_1AB461B84();
    LOBYTE(v19) = 5;
    sub_1AB461B44();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB3ADEDC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  sub_1AB460684();
  sub_1AB460684();

  MEMORY[0x1AC59D3F0](*(v1 + 16));
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v1 + 40;
    do
    {

      sub_1AB460684();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  if (v3)
  {
    sub_1AB4620C4();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB4620C4();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v2;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC59D420](v11);
    if (v4)
    {
LABEL_6:
      sub_1AB4620C4();
      MEMORY[0x1AC59D3F0](*(v4 + 16));
      v8 = *(v4 + 16);
      if (v8)
      {
        v9 = v4 + 40;
        do
        {

          sub_1AB460684();

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      if (v5)
      {
        goto LABEL_10;
      }

      return sub_1AB4620C4();
    }
  }

  sub_1AB4620C4();
  if (!v5)
  {
    return sub_1AB4620C4();
  }

LABEL_10:
  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t sub_1AB3AE0C0()
{
  sub_1AB4620A4();
  sub_1AB3ADEDC();
  return sub_1AB462104();
}

uint64_t sub_1AB3AE104()
{
  sub_1AB4620A4();
  sub_1AB3ADEDC();
  return sub_1AB462104();
}

uint64_t sub_1AB3AE144(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v22 = a3 + 32;
  do
  {
    v23 = v8;
    v9 = (v7 + 72 * v6);
    for (i = v6; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v11 = v9[3];
      v28 = v9[2];
      v29 = v11;
      v30 = *(v9 + 8);
      v12 = v9[1];
      v26 = *v9;
      v27 = v12;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v13 = *(&v27 + 1);
      v25[0] = v5;
      v25[1] = a2;
      MEMORY[0x1EEE9AC00](result);
      v21[2] = v25;
      sub_1AB09DF1C(&v26, v24);

      v14 = sub_1AB0A1064(sub_1AB29A030, v21, v13);

      if (v14)
      {
        break;
      }

      result = sub_1AB09DEB0(&v26);
      v9 = (v9 + 72);
      if (v6 == v3)
      {
        return v23;
      }
    }

    v8 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1AB1778BC(0, *(v8 + 16) + 1, 1);
      v8 = v31;
    }

    v7 = v22;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1AB1778BC((v15 > 1), v16 + 1, 1);
      v8 = v31;
    }

    *(v8 + 16) = v16 + 1;
    v17 = v8 + 72 * v16;
    *(v17 + 32) = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    *(v17 + 96) = v30;
    *(v17 + 64) = v19;
    *(v17 + 80) = v20;
    *(v17 + 48) = v18;
  }

  while (v6 != v3);
  return v8;
}

uint64_t sub_1AB3AE34C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  v4 = 0;
  v26 = a2 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  v25 = v2;
LABEL_4:
  while (2)
  {
    if (v4 >= v2)
    {
LABEL_19:
      __break(1u);
    }

    else
    {
      v5 = (v26 + 72 * v4);
      v6 = v5[3];
      v31 = v5[2];
      v32 = v6;
      v33 = *(v5 + 8);
      v7 = v5[1];
      v29 = *v5;
      v30 = v7;
      if (!__OFADD__(v4++, 1))
      {
        v9 = *(&v30 + 1);
        v10 = *(*(&v30 + 1) + 16);
        sub_1AB09DF1C(&v29, v28);

        v11 = (v9 + 40);
        v12 = -v10;
        v13 = -1;
        do
        {
          if (v12 + v13 == -1)
          {

            result = sub_1AB09DEB0(&v29);
            v2 = v25;
            if (v4 == v25)
            {
              return v27;
            }

            goto LABEL_4;
          }

          if (++v13 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v14 = v11 + 2;
          v15 = *v11;
          v28[0] = *(v11 - 1);
          v28[1] = v15;
          MEMORY[0x1EEE9AC00](result);
          v24[2] = v28;

          v16 = sub_1AB0A1064(sub_1AB29A030, v24, v3);

          v11 = v14;
        }

        while ((v16 & 1) == 0);

        v17 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        v34 = v17;
        if ((result & 1) == 0)
        {
          result = sub_1AB1778BC(0, *(v17 + 16) + 1, 1);
          v17 = v34;
        }

        v2 = v25;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_1AB1778BC((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v27 = v17;
        v20 = v17 + 72 * v19;
        *(v20 + 32) = v29;
        v21 = v30;
        v22 = v31;
        v23 = v32;
        *(v20 + 96) = v33;
        *(v20 + 64) = v22;
        *(v20 + 80) = v23;
        *(v20 + 48) = v21;
        if (v4 != v2)
        {
          continue;
        }

        return v27;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

char *sub_1AB3AE5D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1AB1778BC(0, v2, 0);
    v6 = 0;
    v3 = v80;
    v52 = (a2 + 32);
    v53 = a1 + 32;
    v7 = a2;
    v54 = v2;
    v51 = a2;
    do
    {
      v55 = v3;
      v8 = v53 + 72 * v6;
      v9 = *(v8 + 48);
      v77 = *(v8 + 32);
      v78 = v9;
      v10 = *(v8 + 16);
      v76[0] = *v8;
      v76[1] = v10;
      v79 = *(v8 + 64);
      v11 = v78;
      v56 = BYTE8(v77);
      v57 = *(&v10 + 1);
      v58 = v77;
      v62 = *(&v76[0] + 1);
      v63 = *&v76[0];
      v60 = *(&v78 + 1);
      v61 = v79;
      v59 = v10;
      if (!v78)
      {
        v20 = *(v7 + 16);
        v21 = sub_1AB09DF1C(v76, &v66);
        if (!v20)
        {
LABEL_15:
          v25 = 0;
          goto LABEL_25;
        }

        v22 = v52;
        while (1)
        {
          v23 = v22[3];
          v68 = v22[2];
          v69 = v23;
          v70 = *(v22 + 8);
          v24 = v22[1];
          v66 = *v22;
          v67 = v24;
          v25 = v69;
          if (v69)
          {
            *&v65 = v63;
            *(&v65 + 1) = v62;
            MEMORY[0x1EEE9AC00](v21);
            v47 = &v65;
            sub_1AB09DF1C(&v66, v64);

            v26 = sub_1AB0A1064(sub_1AB021538, v46, v25);

            if (v26)
            {
              v73 = v68;
              v74 = v69;
              v27 = *(&v69 + 1);
              v28 = v70;
              v75 = v70;
              v71 = v66;
              v72 = v67;
              v30 = *(&v67 + 1);
              v29 = v68;
              v31 = BYTE8(v68);
              v18 = *(&v66 + 1);
              v17 = v66;
              if ((v67 & 1) == 0)
              {
                goto LABEL_21;
              }

LABEL_18:
              v48 = v31;
              v49 = v28;
              v50 = v27;
              v32 = sub_1AB461DA4();

              if (v32)
              {
                sub_1AB09DEB0(v76);
                v59 = 1;
                v62 = v18;
                v63 = v17;
                v57 = v30;
                v58 = v29;
                v56 = v48;
                v60 = v50;
                v61 = v49;
              }

              else
              {
                sub_1AB3AED3C(&v71);
LABEL_23:
                v25 = v11;
              }

LABEL_24:
              v7 = v51;
              goto LABEL_25;
            }

            v21 = sub_1AB09DEB0(&v66);
          }

          v22 = (v22 + 72);
          if (!--v20)
          {
            goto LABEL_15;
          }
        }
      }

      v12 = *(v7 + 16);
      v13 = sub_1AB09DF1C(v76, &v66);
      if (v12)
      {
        v14 = v52;
        while (1)
        {
          v15 = v14[1];
          v66 = *v14;
          v67 = v15;
          v16 = v14[3];
          v68 = v14[2];
          v69 = v16;
          v70 = *(v14 + 8);
          v18 = *(&v66 + 1);
          v17 = v66;
          v65 = v66;
          MEMORY[0x1EEE9AC00](v13);
          v47 = &v65;
          sub_1AB09DF1C(&v66, v64);

          v19 = sub_1AB0A1064(sub_1AB29A030, v46, v11);

          if (v19)
          {
            break;
          }

          v13 = sub_1AB09DEB0(&v66);
          v14 = (v14 + 72);
          if (!--v12)
          {
            goto LABEL_23;
          }
        }

        v73 = v68;
        v74 = v69;
        v27 = *(&v69 + 1);
        v28 = v70;
        v75 = v70;
        v71 = v66;
        v72 = v67;
        v25 = v69;
        v30 = *(&v67 + 1);
        v29 = v68;
        v31 = BYTE8(v68);
        if (v67)
        {
          goto LABEL_18;
        }

LABEL_21:
        v50 = v27;
        v33 = v31;

        sub_1AB09DEB0(v76);
        v59 = 0;
        v62 = v18;
        v63 = v17;
        v57 = v30;
        v58 = v29;
        v56 = v33;
        v60 = v50;
        v61 = v28;
        goto LABEL_24;
      }

      v25 = v11;
LABEL_25:
      v3 = v55;
      v80 = v55;
      v35 = *(v55 + 16);
      v34 = *(v55 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AB1778BC((v34 > 1), v35 + 1, 1);
        v3 = v80;
      }

      ++v6;
      LOBYTE(v65) = v56;
      *(v3 + 16) = v35 + 1;
      v36 = v3 + 72 * v35;
      v37 = v62;
      *(v36 + 32) = v63;
      *(v36 + 40) = v37;
      *(v36 + 48) = v59;
      LODWORD(v37) = *(&v66 + 3);
      *(v36 + 49) = v66;
      *(v36 + 52) = v37;
      v38 = v58;
      *(v36 + 56) = v57;
      *(v36 + 64) = v38;
      *(v36 + 72) = v65;
      LODWORD(v38) = *v64;
      *(v36 + 76) = *&v64[3];
      *(v36 + 73) = v38;
      v40 = v60;
      v39 = v61;
      *(v36 + 80) = v25;
      *(v36 + 88) = v40;
      *(v36 + 96) = v39;
    }

    while (v6 != v54);
  }

  v41 = sub_1AB1BF1D8(v3);

  v42 = *(v41 + 16);
  if (!v42)
  {
    goto LABEL_31;
  }

  v43 = sub_1AB1B0220(*(v41 + 16), 0);
  v44 = sub_1AB1AFCE4(v76, v43 + 32, v42, v41);
  sub_1AB0309A4();
  if (v44 != v42)
  {
    __break(1u);
LABEL_31:

    return MEMORY[0x1E69E7CC0];
  }

  return v43;
}

uint64_t sub_1AB3AEA94(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE48);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB09F198();
  sub_1AB462274();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE40);
  sub_1AB09E134(&qword_1EB43BE50, sub_1AB3AF010);
  sub_1AB461BF4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AB3AEC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656D65686373 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3AECA8(uint64_t a1)
{
  v2 = sub_1AB09F198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3AECE4(uint64_t a1)
{
  v2 = sub_1AB09F198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3AED3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1AB3AEDA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 56);
  v13 = *(a2 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v23 = v11;
  if (v2)
  {
    v14 = 0x6469746E65696C63;
  }

  else
  {
    v14 = 0x646972657375;
  }

  if (v2)
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v8)
  {
    v16 = 0x6469746E65696C63;
  }

  else
  {
    v16 = 0x646972657375;
  }

  if (v8)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE600000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {
  }

  else
  {
    v18 = sub_1AB461DA4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1AB16D86C(v3, v9))
  {
    if (v5)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v19 = v23;
      if (v4 != v10)
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!v12 || (sub_1AB16D86C(v6, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (v7)
    {
      return v13 && (v22 == v21 && v7 == v13 || (sub_1AB461DA4() & 1) != 0);
    }

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AB3AEF70()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AB3AEFBC()
{
  result = qword_1EB433B30;
  if (!qword_1EB433B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B30);
  }

  return result;
}

unint64_t sub_1AB3AF010()
{
  result = qword_1EB43BE58;
  if (!qword_1EB43BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE58);
  }

  return result;
}

id sub_1AB3AF064(void **a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v21[0] = sub_1AB460514();
  swift_unknownObjectRetain();
  v3 = v21[0];
  v4 = [v2 dictionaryForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = sub_1AB098790;
  v5[4] = 0;
  v6 = sub_1AB0A332C();

  if (v6)
  {
    v7 = v3;
    v8 = [v2 dictionaryForKey_];
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1AB098790;
    v9[4] = 0;
    v10 = sub_1AB0A332C();

    result = swift_unknownObjectRelease();
    if (v10)
    {
      sub_1AB3AF354(v21);
      swift_unknownObjectRelease();
      sub_1AB45F0D4();
      swift_allocObject();
      sub_1AB45F0C4();
      v12 = objc_opt_self();
      v13 = sub_1AB4602D4();

      v20[0] = 0;
      v14 = [v12 dataWithJSONObject:v13 options:0 error:v20];

      v15 = v20[0];
      if (v14)
      {
        v16 = sub_1AB45F854();
        v18 = v17;

        sub_1AB09EF64();
        sub_1AB45F0B4();

        result = sub_1AB017254(v16, v18);
        if (!v1)
        {
          return v20[1];
        }
      }

      else
      {
        v19 = v15;

        sub_1AB45F594();

        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1AB3AF354(v21);
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1AB3AF354(uint64_t a1)
{
  type metadata accessor for AMSBagKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB3AF3D4()
{
  result = qword_1EB43BE60;
  if (!qword_1EB43BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE60);
  }

  return result;
}

unint64_t sub_1AB3AF42C()
{
  result = qword_1EB433B10;
  if (!qword_1EB433B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B10);
  }

  return result;
}

unint64_t sub_1AB3AF484()
{
  result = qword_1EB433B18;
  if (!qword_1EB433B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B18);
  }

  return result;
}

unint64_t sub_1AB3AF4DC()
{
  result = qword_1EB4325C0;
  if (!qword_1EB4325C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325C0);
  }

  return result;
}

unint64_t sub_1AB3AF530()
{
  result = qword_1EB43BE78;
  if (!qword_1EB43BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE78);
  }

  return result;
}

unint64_t sub_1AB3AF598()
{
  result = qword_1EB43BE88;
  if (!qword_1EB43BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE88);
  }

  return result;
}

unint64_t sub_1AB3AF5F0()
{
  result = qword_1EB433B58;
  if (!qword_1EB433B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B58);
  }

  return result;
}

unint64_t sub_1AB3AF648()
{
  result = qword_1EB433B60;
  if (!qword_1EB433B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B60);
  }

  return result;
}

unint64_t AsyncObjectGraphError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    v4 = *(v1 + 32);
    swift_getErrorValue();
    v5 = v4;
    v3 = sub_1AB462024();
  }

  else if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AB03BD38(0, v2, 0);
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      swift_getErrorValue();
      v8 = v7;
      v9 = sub_1AB462024();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AB03BD38((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v6;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v3 = sub_1AB460484();
  }

  else
  {
    return 0xD000000000000036;
  }

  return v3;
}

unint64_t AsyncObjectGraphError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1AB01B220(inited);
    swift_setDeallocating();
    sub_1AB1BA43C(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EF0);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1AB01B220(v3);
}

uint64_t sub_1AB3AF9F8(uint64_t a1)
{
  v2 = sub_1AB3AFA80();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB3AFA34(uint64_t a1)
{
  v2 = sub_1AB3AFA80();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1AB3AFA80()
{
  result = qword_1EB433740;
  if (!qword_1EB433740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433740);
  }

  return result;
}

unint64_t JetPackageWriterError.errorDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_1AB3AFB30()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t JetPackageWriter.init(encryption:compression:serialization:versionIdentifier:keyIdentifier:keyURL:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = *a2;
  *a7 = *a1;
  *(a7 + 1) = v8;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 26) = BYTE2(a5) & 1;
  v9 = a7 + *(type metadata accessor for JetPackageWriter() + 36);

  return sub_1AB2D0A88(a6, v9);
}

uint64_t type metadata accessor for JetPackageWriter()
{
  result = qword_1EB43BEA8;
  if (!qword_1EB43BEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *JetPackageWriter.writePackage(to:source:artifactStoreURL:progressCallback:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), void (*a4)(__int128 *, double), uint64_t a5)
{
  v11 = sub_1AB45F764();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  v16 = type metadata accessor for FileOutputStream();
  swift_allocObject();
  result = sub_1AB2516A4(v14);
  if (!v5)
  {
    v19[3] = v16;
    v19[4] = &off_1F2001F78;
    v19[0] = result;

    sub_1AB3AFDE8(v19, a2, a3, a4, a5);

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return result;
}

uint64_t sub_1AB3AFDE8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), void (*a4)(__int128 *, double), uint64_t a5)
{
  v115 = a5;
  v117 = a4;
  v122 = a3;
  v114 = a2;
  v108 = a1;
  v137 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v107 = &v101 - v6;
  v7 = type metadata accessor for FileArtifact();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v101 - v14;
  v15 = sub_1AB45F9E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1AB45F764();
  v19 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v105 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v101 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v101 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v101 - v29;
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v120 = v15;
  v118 = v32;
  v32(v18, v15);
  sub_1AB45F664();

  v33 = [objc_opt_self() defaultManager];
  v34 = sub_1AB45F654();
  *&v126 = 0;
  LODWORD(v15) = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:0 attributes:0 error:&v126];

  v35 = v126;
  if (v15)
  {
    v103 = v25;
    v37 = v19 + 16;
    v36 = *(v19 + 16);
    v38 = v119;
    v110 = v30;
    v39 = v30;
    v40 = v31;
    v41 = v19;
    v42 = v123;
    v122 = v36;
    v36(v119, v39, v123);
    v43 = v35;
    sub_1AB45F9D4();
    sub_1AB45F9C4();
    v102 = v18;
    v118(v18, v120);
    v44 = v40;
    v45 = v121;
    sub_1AB45F664();

    v101 = v41;
    v46 = (v41 + 8);
    v109 = *(v41 + 8);
    v109(v38, v42);
    v47 = v117;
    v48 = v44;
    if (v117)
    {
      LOBYTE(v126) = 0;
      v117(&v126, 0.0);
    }

    v49 = v103;
    v122(v103, v45, v42);
    v50 = v37;
    v51 = type metadata accessor for FileOutputStream();
    swift_allocObject();
    v52 = v116;
    v53 = sub_1AB2516A4(v49);
    if (v52)
    {
      goto LABEL_5;
    }

    v116 = v50;
    *(&v127 + 1) = v51;
    *&v128 = &off_1F2001F78;
    *&v126 = v53;
    sub_1AB2D29F8(v114, &v126, 0x19000uLL);
    v114 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(&v126);
    if (v47)
    {
      LOBYTE(v126) = 0;
      v47(&v126, 1.0);
    }

    v57 = v113;
    sub_1AB3B1134(v45, v113);
    v58 = v112;
    if ((*(v112 + 1) & 1) == 0)
    {
      v67 = v119;
      v68 = v123;
      v122(v119, v110, v123);
      v69 = v102;
      sub_1AB45F9D4();
      sub_1AB45F9C4();
      v118(v69, v120);
      sub_1AB45F664();

      v109(v67, v68);
      sub_1AB45F6F4();
      v70 = type metadata accessor for FileInputStream();
      swift_allocObject();
      v71 = sub_1AB251E1C();
      v103 = v46;
      *(&v131 + 1) = v70;
      *&v132 = &off_1F2001F90;
      *&v130 = v71;
      v76 = v106;
      v77 = v111;
      v122(v106, v111, v123);
      swift_allocObject();
      v78 = sub_1AB2516A4(v76);
      v135 = v51;
      v136 = &off_1F2001F78;
      *&v134 = v78;
      sub_1AB0149B0(&v130, &v126);
      sub_1AB0149B0(&v134, &v128 + 8);
      v82 = swift_allocObject();
      v83 = v117;
      v84 = v115;
      *(v82 + 16) = v117;
      *(v82 + 24) = v84;
      sub_1AB04B604(v83);
      sub_1AB1DF9CC(sub_1AB3B141C);
      v45 = v121;

      sub_1AB2BB230(&v126);
      v100 = v77;
      v57 = v113;
      sub_1AB2BB1D4(v113);
      sub_1AB3B13B8(v100, v57);
      v46 = v103;
      v58 = v112;
    }

    if (*v58)
    {
      v59 = 1;
      v60 = v110;
    }

    else
    {
      v72 = v58 + *(type metadata accessor for JetPackageWriter() + 36);
      v73 = v107;
      sub_1AB03BC60(v72, v107);
      v74 = v101;
      if ((*(v101 + 48))(v73, 1, v123) == 1)
      {
        sub_1AB03BCD0(v73);
        sub_1AB3B0D44();
        swift_allocError();
        *v75 = 2;
        swift_willThrow();
        sub_1AB2BB1D4(v57);
LABEL_5:
        sub_1AB2BB1D4(v45);
        v55 = v110;
        sub_1AB3B0F4C();
        return (v109)(v55, v123);
      }

      (*(v74 + 32))(v105, v73, v123);
      v79 = sub_1AB45F784();
      *(&v131 + 1) = &type metadata for CommonCryptoPackageEncryption;
      *&v132 = &off_1F20152C8;
      *&v130 = v79;
      *(&v130 + 1) = v85;
      *&v131 = 0x20000;
      sub_1AB0149B0(&v130, &v126);
      v86 = v119;
      v122(v119, v110, v123);
      v87 = v102;
      sub_1AB45F9D4();
      sub_1AB45F9C4();
      v118(v87, v120);
      v88 = v104;
      sub_1AB45F664();
      v89 = v117;

      v90 = v109;
      v109(v86, v123);
      if (v89)
      {
        LOBYTE(v130) = 2;
        v89(&v130, 0.0);
        sub_1AB3B1198(&v126, v57, v88);
        LOBYTE(v130) = 2;
        v89(&v130, 1.0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v126);
        v90(v105, v123);
        sub_1AB2BB1D4(v57);
        v58 = v112;
      }

      else
      {
        sub_1AB3B1198(&v126, v57, v88);
        v58 = v112;
        __swift_destroy_boxed_opaque_existential_1Tm(&v126);
        v90(v105, v123);
        sub_1AB2BB1D4(v57);
      }

      v60 = v110;
      sub_1AB3B13B8(v104, v57);
      v59 = *v58;
    }

    v61 = *(v58 + 1);
    v62 = v58;
    v63 = *(v58 + 8);
    v64 = *(v58 + 16);
    v65 = *(v62 + 24);
    if (*(v62 + 26))
    {
      v65 = 0;
    }

    v125 = v61;
    v124 = v59;
    LOBYTE(v126) = 0;
    *(&v126 + 1) = v61;
    *(&v126 + 3) = v59;
    *(&v126 + 1) = v63;
    *&v127 = v64;
    WORD4(v127) = v65;
    v128 = 0uLL;
    v129 = 0xF000000000000000;
    sub_1AB01494C(v108, &v134);
    type metadata accessor for JetPackageFormatWriter();
    inited = swift_initStackObject();
    *(inited + 56) = 0;
    sub_1AB0149B0(&v134, inited + 16);
    v130 = v126;
    v131 = v127;
    v132 = v128;
    v133 = v129;

    sub_1AB23B1A8(&v130);
    v103 = v46;
    sub_1AB45F6F4();
    v80 = type metadata accessor for FileInputStream();
    swift_allocObject();
    v81 = sub_1AB251E1C();
    *(&v131 + 1) = v80;
    *&v132 = &off_1F2001F90;
    *&v130 = v81;
    __swift_project_boxed_opaque_existential_1Tm(&v130, v80);
    if (off_1F2001F98())
    {
      while (1)
      {
        v91 = *(&v131 + 1);
        v92 = v132;
        __swift_project_boxed_opaque_existential_1Tm(&v130, *(&v131 + 1));
        v93 = (*(v92 + 24))(0x20000, v91, v92);
        v95 = v94;
        if ((*(inited + 56) & 1) == 0)
        {
          break;
        }

        v96 = *(inited + 40);
        v97 = *(inited + 48);
        __swift_project_boxed_opaque_existential_1Tm((inited + 16), v96);
        (*(v97 + 8))(v93, v95, v96, v97);
        sub_1AB017254(v93, v95);
        v98 = *(&v131 + 1);
        v99 = v132;
        __swift_project_boxed_opaque_existential_1Tm(&v130, *(&v131 + 1));
        if (((*(v99 + 8))(v98, v99) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_1AB23B534();
      swift_allocError();
      swift_willThrow();
      sub_1AB2BB180(&v126);
      sub_1AB017254(v93, v95);
    }

    else
    {
LABEL_23:
      sub_1AB2BB180(&v126);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 16);
    }

    sub_1AB2BB1D4(v113);
    sub_1AB2BB1D4(v121);
    __swift_destroy_boxed_opaque_existential_1Tm(&v130);
    sub_1AB3B0F4C();
    return (v109)(v60, v123);
  }

  else
  {
    v54 = v126;
    sub_1AB45F594();

    swift_willThrow();
    return (*(v19 + 8))(v30, v123);
  }
}