uint64_t TVEpisode.season.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  if (qword_1EC7E92B8 != -1)
  {
    OUTLINED_FUNCTION_13_63();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_34_40();
  sub_1D4E737E0(v8, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v9, v0);
  OUTLINED_FUNCTION_21_6();
  v10 = OUTLINED_FUNCTION_43_0(v6);
  if (v11)
  {
    sub_1D4E50004(v6, &qword_1EC7ED1F8, &qword_1D5634780);
    type metadata accessor for TVSeason();
    OUTLINED_FUNCTION_33();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    sub_1D4EC998C(v10);
    OUTLINED_FUNCTION_24_0(v7);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_46_1();
    return v19(v18);
  }
}

uint64_t TVEpisode.show.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  if (qword_1EC7E92C0 != -1)
  {
    OUTLINED_FUNCTION_42_27();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_34_40();
  sub_1D4E737E0(v8, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v9, v0);
  OUTLINED_FUNCTION_21_6();
  v10 = OUTLINED_FUNCTION_43_0(v6);
  if (v11)
  {
    sub_1D4E50004(v6, &qword_1EC7ECBA0, &unk_1D56270F0);
    type metadata accessor for TVShow();
    OUTLINED_FUNCTION_33();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    sub_1D4EC935C(v10);
    OUTLINED_FUNCTION_24_0(v7);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_46_1();
    return v19(v18);
  }
}

uint64_t TVEpisode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for TVEpisode() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_35_38();
  sub_1D4E737E0(v4, v5);
  return sub_1D5614CB8();
}

uint64_t TVEpisode.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for TVEpisode() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_35_38();
  sub_1D4E737E0(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5227C90(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4E737E0(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5227D34@<X0>(uint64_t *a1@<X8>)
{
  result = TVEpisode.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVEpisode.subscript.getter(void *a1)
{
  return sub_1D5227D9C(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5227D9C(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_33_40();
  sub_1D4E737E0(v5, v1);
  OUTLINED_FUNCTION_39_30(&qword_1EDD54508);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5227D9C(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_33_40();
  sub_1D4E737E0(v5, v2);
  OUTLINED_FUNCTION_39_30(&qword_1EDD54508);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5227F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E737E0(&qword_1EDD54508, type metadata accessor for TVEpisode);
  v12 = sub_1D4E737E0(&qword_1EC7EAB00, type metadata accessor for TVEpisode);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D52280C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E737E0(&qword_1EDD54508, type metadata accessor for TVEpisode);
  v14 = sub_1D4E737E0(&qword_1EC7EAB00, type metadata accessor for TVEpisode);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5228204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E737E0(&qword_1EDD54508, type metadata accessor for TVEpisode);
  v14 = sub_1D4E737E0(&qword_1EC7EAB00, type metadata accessor for TVEpisode);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5228348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_39();
  sub_1D4E737E0(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C388 = v0;
  return result;
}

uint64_t sub_1D52283DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D522B6CC();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C390 = v0;
  return result;
}

uint64_t sub_1D5228494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(&qword_1EDD533C0, MEMORY[0x1E6975930]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C398 = v0;
  return result;
}

uint64_t sub_1D5228544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D503853C();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3A0 = v0;
  return result;
}

uint64_t sub_1D52285BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3A8 = v0;
  return result;
}

uint64_t sub_1D5228634()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_83();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_56_18();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3B0 = v0;
  return result;
}

uint64_t sub_1D52286C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3B8 = v0;
  return result;
}

uint64_t sub_1D522873C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EC87C3C0 = v0;
  return result;
}

uint64_t sub_1D52287F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_39();
  sub_1D4E737E0(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3C8 = v0;
  return result;
}

uint64_t sub_1D5228894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D50384C0();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3D0 = v0;
  return result;
}

uint64_t sub_1D522890C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3D8 = v0;
  return result;
}

uint64_t sub_1D5228988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3E0 = v0;
  return result;
}

uint64_t sub_1D5228A08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3E8 = v0;
  return result;
}

uint64_t sub_1D5228A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(qword_1EDD52EF0, MEMORY[0x1E69768B0]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3F0 = v0;
  return result;
}

uint64_t sub_1D5228B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(&qword_1EDD52ED8, MEMORY[0x1E69768E8]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(23);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C3F8 = v0;
  return result;
}

uint64_t sub_1D5228BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(&qword_1EDD52EC0, MEMORY[0x1E6976A18]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(30);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C400 = v0;
  return result;
}

uint64_t sub_1D5228C7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D522B4E4();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C408 = v0;
  return result;
}

uint64_t sub_1D5228CE8@<X0>(_BYTE *a1@<X8>)
{
  result = TVEpisode.kind.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D5228D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_83();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_56_18();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C410 = v0;
  return result;
}

uint64_t sub_1D5228DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_83();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C418 = v0;
  return result;
}

uint64_t sub_1D5228E4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(&qword_1EDD52A48, MEMORY[0x1E69774A0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C420 = v0;
  return result;
}

uint64_t sub_1D5228EFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C428 = v0;
  return result;
}

uint64_t sub_1D5228F7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D503840C();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C430 = v0;
  return result;
}

uint64_t sub_1D5228FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_39();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C438 = v0;
  return result;
}

uint64_t sub_1D5229084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D51896D0();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C440 = v0;
  return result;
}

double sub_1D52290FC@<D0>(uint64_t a1@<X8>)
{
  TVEpisode.playbackPosition.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D5229140()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D4E737E0(&qword_1EDD53160, MEMORY[0x1E6975E88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C448 = v0;
  return result;
}

uint64_t sub_1D52291E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_39();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_76_13();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C450 = v0;
  return result;
}

uint64_t sub_1D522927C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D522B430();
  OUTLINED_FUNCTION_76_13();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C458 = v0;
  return result;
}

uint64_t sub_1D52292E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_83();
  sub_1D4E737E0(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C460 = v0;
  return result;
}

uint64_t sub_1D5229380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C468 = v0;
  return result;
}

uint64_t sub_1D52293FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C470 = v0;
  return result;
}

uint64_t sub_1D5229478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C478 = v0;
  return result;
}

uint64_t sub_1D52294F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C480 = v0;
  return result;
}

uint64_t sub_1D522956C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(16);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C488 = v0;
  return result;
}

uint64_t sub_1D52295E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D51895C8();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(16);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C490 = v0;
  return result;
}

uint64_t sub_1D5229660()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C498 = v0;
  return result;
}

uint64_t sub_1D52296CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_76();
  sub_1D4E737E0(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C4A0 = v0;
  return result;
}

uint64_t sub_1D5229758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D522B538();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F21C8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.credits.getter()
{
  return sub_1D50355DC(&qword_1EC7E9290);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E9340, &qword_1EC7F25D0);
}

{
  return sub_1D50355DC(&qword_1EC7E9598);
}

uint64_t sub_1D5229894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E737E0(&qword_1EC7F2238, MEMORY[0x1E6975BA8]);
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F21D8 = v0;
  return result;
}

uint64_t sub_1D52299D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_10_76();
  sub_1D4E737E0(v6, v7);
  OUTLINED_FUNCTION_61();
  v8 = sub_1D560D138();

  *a5 = v8;
  return result;
}

uint64_t sub_1D5229AD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E737E0(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F21E8 = v0;
  return result;
}

uint64_t sub_1D5229BB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D4E737E0(&qword_1EC7EAB20, type metadata accessor for TVSeason);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F21F0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.seasons.getter()
{
  return sub_1D50355DC(&qword_1EC7E92B8);
}

{
  return sub_1D50355DC(&qword_1EC7E95C8);
}

uint64_t sub_1D5229C98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D4E737E0(&qword_1EC7EAB40, type metadata accessor for TVShow);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F21F8 = v0;
  return result;
}

uint64_t sub_1D5229D74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E737E0(&unk_1EDD52E00, MEMORY[0x1E6976F28]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F2200 = v0;
  return result;
}

uint64_t sub_1D5229E64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_3_110();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F2208 = v0;
  return result;
}

uint64_t sub_1D5229F44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E737E0(qword_1EDD52A80, MEMORY[0x1E69773E0]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F2210 = v0;
  return result;
}

uint64_t sub_1D522A03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D522A0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D522A134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D522A1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D522A22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D522A2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D522A324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D522A3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D522A41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D522A498()
{
  sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return sub_1D5613028();
}

uint64_t sub_1D522A514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D522A598()
{
  sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return sub_1D5612FD8();
}

uint64_t sub_1D522A61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D522A698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D522A714()
{
  sub_1D4E737E0(&qword_1EDD54508, type metadata accessor for TVEpisode);
  sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return sub_1D560CBD8();
}

uint64_t static TVEpisode.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D522A908()
{
  sub_1D4E737E0(&qword_1EC7EC490, type metadata accessor for TVEpisode);

  return sub_1D5610C58();
}

uint64_t sub_1D522A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E737E0(&qword_1EDD54508, type metadata accessor for TVEpisode);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t TVEpisode.init(from:)(uint64_t *a1)
{
  type metadata accessor for TVEpisode();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_3_110();
  sub_1D4E737E0(v3, v4);
  OUTLINED_FUNCTION_36_34();
  sub_1D4E737E0(v5, v1);
  OUTLINED_FUNCTION_40_34(&qword_1EDD57148);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TVEpisode.encode(to:)()
{
  type metadata accessor for TVEpisode();
  OUTLINED_FUNCTION_3_110();
  sub_1D4E737E0(v1, v2);
  OUTLINED_FUNCTION_36_34();
  sub_1D4E737E0(v3, v0);
  OUTLINED_FUNCTION_40_34(&qword_1EDD57148);
  return sub_1D5612688();
}

uint64_t TVEpisode.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_75_16();
  v8 = v1;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v5 = TVEpisode.title.getter();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](0x4E776F6873202C22, 0xEE0022203A656D61);
  v6 = TVEpisode.showName.getter();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v8;
}

uint64_t sub_1D522ADA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F2218 = v4;
  return result;
}

uint64_t sub_1D522AF04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6975208], v0);
  result = (v8)(v7 + v4, *MEMORY[0x1E6975218], v0);
  qword_1EC7F2220 = v6;
  return result;
}

uint64_t sub_1D522B038()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D522B090()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D522B0E8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD54518);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for TVEpisode();
  OUTLINED_FUNCTION_3_110();
  sub_1D4E737E0(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D522B194()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53C40);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD54510 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD54518);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D522B278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D522B318(uint64_t a1)
{
  result = sub_1D4E737E0(&qword_1EC7F2230, type metadata accessor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D522B430()
{
  result = qword_1EC7F2240;
  if (!qword_1EC7F2240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDBB0, L"X\b\t");
    sub_1D4E737E0(&qword_1EC7F2238, MEMORY[0x1E6975BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2240);
  }

  return result;
}

unint64_t sub_1D522B4E4()
{
  result = qword_1EC7F2248;
  if (!qword_1EC7F2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2248);
  }

  return result;
}

unint64_t sub_1D522B538()
{
  result = qword_1EC7F2250;
  if (!qword_1EC7F2250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED208, &unk_1D5623F80);
    sub_1D522B5C4();
    sub_1D522B618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2250);
  }

  return result;
}

unint64_t sub_1D522B5C4()
{
  result = qword_1EC7F2258;
  if (!qword_1EC7F2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2258);
  }

  return result;
}

unint64_t sub_1D522B618()
{
  result = qword_1EC7F2260;
  if (!qword_1EC7F2260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2268, &qword_1D5660330);
    sub_1D4E737E0(&qword_1EC7F2270, type metadata accessor for VideoCredit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2260);
  }

  return result;
}

unint64_t sub_1D522B6CC()
{
  result = qword_1EC7F2278;
  if (!qword_1EC7F2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2278);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_45()
{
  v2 = *(v0 - 280);

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_42_27()
{

  return swift_once();
}

void sub_1D522B800()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_3();
  v74 = sub_1D5614408();
  v10 = OUTLINED_FUNCTION_4(v74);
  v71 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v70 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v67 - v20;
  OUTLINED_FUNCTION_70_0();
  v21 = sub_1D5614898();
  v22 = OUTLINED_FUNCTION_4(v21);
  v73 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v72 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40_2();
  v32 = sub_1D5613AF8();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v76 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v38 = OUTLINED_FUNCTION_14(v76);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;
  sub_1D4E62938(v3, v82);
  sub_1D4E62938(v3, &v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65B0, &unk_1D5663EA0);
  if (swift_dynamicCast())
  {
    v68 = v1;
    v69 = v5;
    sub_1D4E48324(&v77, v81);
    v44 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v45 = *(v44 + 8);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v82);
      sub_1D4E48324(&v77, v82);
    }

    else
    {
      v79 = 0;
      v77 = 0u;
      v78 = 0u;
      sub_1D4E50004(&v77, &unk_1EC7F65C0, &qword_1D562E6B0);
    }

    __swift_destroy_boxed_opaque_existential_1(v81);
    v5 = v69;
    v1 = v68;
  }

  else
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D4E50004(&v77, &qword_1EC7EDCB8, &unk_1D5628170);
  }

  sub_1D4E62938(v82, v81);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v32);
    __swift_destroy_boxed_opaque_existential_1(v82);
    v46 = *(v35 + 32);
    v47 = OUTLINED_FUNCTION_99_4();
    v46(v47);
    v48 = OUTLINED_FUNCTION_44_27();
    v46(v48);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v32);
    sub_1D4E50004(v0, &qword_1EC7EEC30, &unk_1D5620CE0);
    sub_1D4E62938(v82, v81);
    v52 = v75;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v21);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v53 = *(v73 + 32);
      v53(v72, v52, v21);
      v54 = OUTLINED_FUNCTION_45_3();
      (v53)(v54);
    }

    else
    {
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v21);
      sub_1D4E50004(v52, &unk_1EC7F1990, &unk_1D561CEF0);
      sub_1D4E48324(v82, v81);
      v58 = v74;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v63 = 1;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v58);
        sub_1D4E50004(v1, &unk_1EC7F65A0, &unk_1D561D200);
        v61 = v76;
        goto LABEL_14;
      }

      __swift_storeEnumTagSinglePayload(v1, 0, 1, v58);
      v59 = *(v71 + 32);
      v59(v70, v1, v58);
      v60 = OUTLINED_FUNCTION_45_3();
      (v59)(v60);
    }
  }

  v61 = v76;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_48();
  sub_1D4F172CC(v43, v5, v62);
  v63 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v5, v63, 1, v61);
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.title.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v7 = sub_1D5614408();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_39_31();
  v12 = OUTLINED_FUNCTION_4(v11);
  v42 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_111();
  v16 = sub_1D5613AF8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  v22 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_82();
  v26 = OUTLINED_FUNCTION_59_19();
  sub_1D4F1732C(v26, v27);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = OUTLINED_FUNCTION_147_0(v42);
      v41(v40);
      sub_1D56146D8();
      OUTLINED_FUNCTION_32_40();
      v31 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 2u:
      v33 = OUTLINED_FUNCTION_21_49();
      v34(v33);
      sub_1D5614388();
      OUTLINED_FUNCTION_86_2();
      v35 = OUTLINED_FUNCTION_33_41();
      v36(v35);
      break;
    case 3u:
      OUTLINED_FUNCTION_8_75();
      sub_1D4F172CC(v2, v0, v37);
      TVSeason.title.getter();
      OUTLINED_FUNCTION_86_2();
      v38 = OUTLINED_FUNCTION_159();
      sub_1D522D4E4(v38, v39);
      break;
    default:
      v28 = OUTLINED_FUNCTION_16_62(v19);
      v29(v28);
      sub_1D5613AB8();
      OUTLINED_FUNCTION_32_40();
      v31 = v1;
      v32 = v16;
LABEL_6:
      v30(v31, v32);
      break;
  }

  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v7 = sub_1D5614408();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_39_31();
  v12 = OUTLINED_FUNCTION_4(v11);
  v42 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_111();
  v16 = sub_1D5613AF8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  v22 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_82();
  v26 = OUTLINED_FUNCTION_59_19();
  sub_1D4F1732C(v26, v27);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = OUTLINED_FUNCTION_147_0(v42);
      v41(v40);
      sub_1D5614468();
      OUTLINED_FUNCTION_32_40();
      v31 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 2u:
      v33 = OUTLINED_FUNCTION_21_49();
      v34(v33);
      _s8MusicKit7StationV0aB8InternalE12providerNameSSSgvg_0();
      OUTLINED_FUNCTION_86_2();
      v35 = OUTLINED_FUNCTION_33_41();
      v36(v35);
      break;
    case 3u:
      OUTLINED_FUNCTION_8_75();
      sub_1D4F172CC(v2, v0, v37);
      TVSeason.showName.getter();
      OUTLINED_FUNCTION_86_2();
      v38 = OUTLINED_FUNCTION_159();
      sub_1D522D4E4(v38, v39);
      break;
    default:
      v28 = OUTLINED_FUNCTION_16_62(v19);
      v29(v28);
      sub_1D5613868();
      OUTLINED_FUNCTION_32_40();
      v31 = v1;
      v32 = v16;
LABEL_6:
      v30(v31, v32);
      break;
  }

  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = type metadata accessor for TVSeason();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v43 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614408();
  v11 = OUTLINED_FUNCTION_4(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v15 = sub_1D5614898();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = sub_1D5613AF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_82();
  v27 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  sub_1D4F1732C(v0, v3);
  OUTLINED_FUNCTION_99_4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81();
      v36 = OUTLINED_FUNCTION_44_27();
      v37(v36);
      sub_1D5614848();
      v38 = *(v18 + 8);
      v39 = OUTLINED_FUNCTION_45_3();
      v40(v39);
      break;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v33(v1, v3, v42);
      sub_1D56143B8();
      (*(v41 + 8))(v1, v42);
      break;
    case 3u:
      OUTLINED_FUNCTION_4_11();
      sub_1D4F172CC(v3, v43, v34);
      if (qword_1EC7E8B58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D522FB68(&unk_1EDD546A0, type metadata accessor for TVSeason);
      sub_1D522FB68(&qword_1EC7EA3C8, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_128();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_141();
      sub_1D522D4E4(v43, v35);
      break;
    default:
      OUTLINED_FUNCTION_33_1();
      v31 = OUTLINED_FUNCTION_0_33();
      v32(v31);
      sub_1D5613AE8();
      (*(v24 + 8))(v2, v21);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v85 = v3;
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v78 = v6;
  v79 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v75[4] = v10 - v9;
  OUTLINED_FUNCTION_70_0();
  v76 = type metadata accessor for TVSeason();
  v11 = OUTLINED_FUNCTION_14(v76);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v77 = v15 - v14;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D5614408();
  v17 = OUTLINED_FUNCTION_4(v16);
  v75[2] = v18;
  v75[3] = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v75[1] = v22 - v21;
  OUTLINED_FUNCTION_70_0();
  v23 = sub_1D5614898();
  v24 = OUTLINED_FUNCTION_4(v23);
  v81 = v25;
  v82 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v80 = v29 - v28;
  OUTLINED_FUNCTION_70_0();
  v30 = sub_1D5613AF8();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v36 = sub_1D5610088();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v37);
  v44 = v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v84 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v45 = OUTLINED_FUNCTION_14(v84);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v83 = v49 - v48;
  v50 = v2[3];
  v51 = v2[4];
  v86 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v50);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_24_46();
  sub_1D522FB68(v52, v53);
  v54 = OUTLINED_FUNCTION_18_60();
  v57 = *(v39 + 8);
  v55 = (v39 + 8);
  v56 = v57;
  (v57)(v44, v36);
  if (v54)
  {
    v59 = OUTLINED_FUNCTION_57_24();
    v56(v59);
    OUTLINED_FUNCTION_42_28();
    sub_1D5613978();
    v54 = v83;
    (*(v33 + 32))(v83, v0, v30);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_48();
    sub_1D4F172CC(v54, v85, v60);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_18_60();
  v58 = OUTLINED_FUNCTION_22_45();
  v56(v58);
  sub_1D5610038();
  OUTLINED_FUNCTION_18_60();
  v61 = OUTLINED_FUNCTION_22_45();
  v56(v61);
  if (v54)
  {
    v63 = OUTLINED_FUNCTION_57_24();
    v56(v63);
    OUTLINED_FUNCTION_42_28();
    sub_1D56145A8();
    v64 = OUTLINED_FUNCTION_52_24();
    v65(v64);
    goto LABEL_4;
  }

  sub_1D560FF58();
  OUTLINED_FUNCTION_18_60();
  v62 = OUTLINED_FUNCTION_22_45();
  v56(v62);
  sub_1D5610008();
  OUTLINED_FUNCTION_18_60();
  v66 = OUTLINED_FUNCTION_22_45();
  v56(v66);
  if (v54)
  {
    v67 = OUTLINED_FUNCTION_57_24();
    v56(v67);
    OUTLINED_FUNCTION_42_28();
    sub_1D5614288();
    v68 = OUTLINED_FUNCTION_52_24();
    v69(v68);
    goto LABEL_4;
  }

  sub_1D5610068();
  OUTLINED_FUNCTION_18_60();
  v70 = OUTLINED_FUNCTION_22_45();
  v56(v70);
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000067, 0x80000001D5688520);
  v71 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_24_46();
  sub_1D522FB68(v72, v73);
  v74 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v74);

  (v56)(v44, v36);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000039);
  sub_1D5615E08();
  __break(1u);
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.id.getter()
{
  InternalMusicPlayer.Queue.Entry.Container.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_128();
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D4F1732C(v3, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = sub_1D5614898();
      v10 = v9;
      v11 = MEMORY[0x1E69773A0];
      goto LABEL_6;
    case 2u:
      v9 = sub_1D5614408();
      v10 = v9;
      v11 = MEMORY[0x1E6977150];
      goto LABEL_6;
    case 3u:
      a1[3] = type metadata accessor for TVSeason();
      a1[4] = sub_1D522FB68(&unk_1EDD546A0, type metadata accessor for TVSeason);
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_4_11();
      return sub_1D4F172CC(v1, v12, v13);
    default:
      v9 = sub_1D5613AF8();
      v10 = v9;
      v11 = MEMORY[0x1E6976CF0];
LABEL_6:
      a1[3] = v9;
      a1[4] = v11;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v10);
      return (*(v15 + 32))();
  }
}

void InternalMusicPlayer.Queue.Entry.Container.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v41 = v4;
  v40 = type metadata accessor for TVSeason();
  v5 = OUTLINED_FUNCTION_14(v40);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v8 = sub_1D5614408();
  v9 = OUTLINED_FUNCTION_4(v8);
  v39 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_111();
  v13 = sub_1D5614898();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_0();
  v17 = sub_1D5613AF8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v23 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D4F1732C(v1, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v38(v2, v0, v13);
      sub_1D5614598();
      v32 = OUTLINED_FUNCTION_113_0();
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v29 = OUTLINED_FUNCTION_13_8();
      v30(v29);
      sub_1D5614278();
      v31 = *(v39 + 8);
      v32 = OUTLINED_FUNCTION_13_8();
LABEL_6:
      v33(v32);
      break;
    case 3u:
      OUTLINED_FUNCTION_28_45();
      sub_1D4F172CC(v0, v1, v34);
      v35 = *(v40 + 20);
      v36 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v36);
      (*(v37 + 16))(v41, v1 + v35);
      sub_1D522D4E4(v1, v20);
      break;
    default:
      OUTLINED_FUNCTION_81();
      v27 = OUTLINED_FUNCTION_99_4();
      v28(v27);
      sub_1D5613968();
      (*(v20 + 8))(v3, v17);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v40 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_111();
  v14 = sub_1D5613AF8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_0();
  v20 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_82();
  sub_1D4F1732C(v0, v2);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v34 = OUTLINED_FUNCTION_147_0(v11);
      v35(v34);
      sub_1D5614518();
      v36 = *(v11 + 8);
      v37 = OUTLINED_FUNCTION_15_2();
      v39(v37, v38);
      break;
    case 2u:
      v26 = *(v40 + 32);
      v27 = OUTLINED_FUNCTION_184();
      v28(v27);
      sub_1D5614248();
      (*(v40 + 8))(v0, v3);
      break;
    case 3u:
      sub_1D56109F8();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      OUTLINED_FUNCTION_6_78();
      sub_1D522D4E4(v2, v33);
      break;
    default:
      v24 = OUTLINED_FUNCTION_16_62(v17);
      v25(v24);
      sub_1D5613918();
      (*(v17 + 8))(v1, v14);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D522D4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v81 = v2;
  v82 = v3;
  v73 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_14(v73);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v75 = (v8 - v7);
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5614408();
  v10 = OUTLINED_FUNCTION_4(v9);
  v79 = v11;
  v80 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v74 = v15 - v14;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D5614898();
  v17 = OUTLINED_FUNCTION_4(v16);
  v77 = v18;
  v78 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = sub_1D5613AF8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v76 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v29 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v73 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v73 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v73 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22A8, &qword_1D5647480);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_40_2();
  v49 = *(v48 + 56);
  sub_1D4F1732C(v81, v0);
  sub_1D4F1732C(v82, v0 + v49);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F1732C(v0, v41);
      if (OUTLINED_FUNCTION_61_23() == 1)
      {
        v63 = v77;
        v64 = v0 + v49;
        v65 = v78;
        (*(v77 + 32))(v23, v64, v78);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v66 = *(v63 + 8);
        v66(v23, v65);
        v66(v41, v65);
        goto LABEL_21;
      }

      (*(v77 + 8))(v41, v78);
      goto LABEL_19;
    case 2u:
      sub_1D4F1732C(v0, v38);
      if (OUTLINED_FUNCTION_61_23() == 2)
      {
        v51 = v79;
        v50 = v80;
        OUTLINED_FUNCTION_81();
        v52 = v0 + v49;
        v53 = v74;
        v54(v74, v52, v50);
        sub_1D5614368();
        v55 = *(v51 + 8);
        v55(v53, v50);
        v55(v38, v50);
        goto LABEL_21;
      }

      (*(v79 + 8))(v38, v80);
      goto LABEL_19;
    case 3u:
      sub_1D4F1732C(v0, v35);
      if (OUTLINED_FUNCTION_61_23() != 3)
      {
        OUTLINED_FUNCTION_0_141();
        sub_1D522D4E4(v35, v67);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_4_11();
      v56 = v75;
      sub_1D4F172CC(v0 + v49, v75, v57);
      v58 = *v35 == *v56 && v35[1] == v56[1];
      if (v58 || (sub_1D5616168() & 1) != 0)
      {
        v59 = *(v73 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_0_141();
        sub_1D522D4E4(v56, v60);
      }

      else
      {
        OUTLINED_FUNCTION_0_141();
        sub_1D522D4E4(v56, v72);
      }

      OUTLINED_FUNCTION_0_141();
      sub_1D522D4E4(v35, v61);
      OUTLINED_FUNCTION_6_78();
      sub_1D522D4E4(v0, v62);
      break;
    default:
      sub_1D4F1732C(v0, v43);
      if (OUTLINED_FUNCTION_61_23())
      {
        (*(v76 + 8))(v43, v24);
LABEL_19:
        sub_1D4E50004(v0, &qword_1EC7F22A8, &qword_1D5647480);
      }

      else
      {
        v68 = v76;
        OUTLINED_FUNCTION_81();
        v69(v1, v0 + v49, v24);
        sub_1D5613A68();
        v70 = *(v68 + 8);
        v70(v1, v24);
        v70(v43, v24);
LABEL_21:
        OUTLINED_FUNCTION_6_78();
        sub_1D522D4E4(v0, v71);
      }

      break;
  }

  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v52 = type metadata accessor for TVSeason();
  v3 = OUTLINED_FUNCTION_14(v52);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = sub_1D5614408();
  v10 = OUTLINED_FUNCTION_4(v9);
  v51 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_111();
  v14 = sub_1D5614898();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_0();
  v18 = sub_1D5613AF8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v24 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v28 = OUTLINED_FUNCTION_159();
  sub_1D4F1732C(v28, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v48(v1, v0, v14);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_11_77();
      sub_1D522FB68(v49, v50);
      sub_1D5614CB8();
      v40 = OUTLINED_FUNCTION_113_0();
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v35 = OUTLINED_FUNCTION_13_8();
      v36(v35);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_12_62();
      sub_1D522FB68(v37, v38);
      sub_1D5614CB8();
      v39 = *(v51 + 8);
      v40 = OUTLINED_FUNCTION_13_8();
LABEL_6:
      v41(v40);
      break;
    case 3u:
      OUTLINED_FUNCTION_28_45();
      sub_1D4F172CC(v0, v8, v42);
      MEMORY[0x1DA6EC0D0](3);
      v43 = *v8;
      v44 = v8[1];
      sub_1D5614E28();
      v45 = *(v52 + 20);
      sub_1D5611AB8();
      sub_1D522FB68(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
      sub_1D5614CB8();
      v46 = OUTLINED_FUNCTION_46_1();
      sub_1D522D4E4(v46, v47);
      break;
    default:
      v30 = *(v21 + 32);
      v31 = OUTLINED_FUNCTION_99_4();
      v32(v31);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_13_64();
      sub_1D522FB68(v33, v34);
      sub_1D5614CB8();
      (*(v21 + 8))(v2, v18);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.hashValue.getter()
{
  sub_1D56162D8();
  InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D522DED8()
{
  sub_1D56162D8();
  InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D522DF14@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.Entry.Container.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D522DF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D522DFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D522E038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D522E0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D522E130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D522E1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D522E228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D522E2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D522E320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D522E39C()
{
  sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return sub_1D5613028();
}

uint64_t sub_1D522E418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D522E49C()
{
  sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return sub_1D5612FD8();
}

uint64_t sub_1D522E520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D522E59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D522FB68(&qword_1EC7F22C8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

void InternalMusicPlayer.Queue.Entry.Container.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v43 = v4;
  v5 = type metadata accessor for TVSeason();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v9 = sub_1D5614408();
  v10 = OUTLINED_FUNCTION_4(v9);
  v41 = v11;
  v42 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v14 = sub_1D5614898();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = sub_1D5613AF8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_82();
  v26 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  sub_1D4F1732C(v0, v3);
  OUTLINED_FUNCTION_99_4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81();
      v36 = OUTLINED_FUNCTION_44_27();
      v37(v36);
      Playlist.siriRepresentation.getter();
      v38 = *(v17 + 8);
      v39 = OUTLINED_FUNCTION_45_3();
      v40(v39);
      break;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v32(v1, v3, v42);
      Station.siriRepresentation.getter(v43);
      (*(v41 + 8))(v1, v42);
      break;
    case 3u:
      OUTLINED_FUNCTION_8_75();
      sub_1D4F172CC(v3, v0, v33);
      TVSeason.siriRepresentation.getter(v43);
      v34 = OUTLINED_FUNCTION_159();
      sub_1D522D4E4(v34, v35);
      break;
    default:
      OUTLINED_FUNCTION_33_1();
      v30 = OUTLINED_FUNCTION_0_33();
      v31(v30);
      Album.siriRepresentation.getter();
      (*(v23 + 8))(v2, v20);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.description.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for TVSeason();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v48 = sub_1D5614408();
  v6 = OUTLINED_FUNCTION_4(v48);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_39_31();
  v10 = OUTLINED_FUNCTION_4(v9);
  v49 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_111();
  v14 = sub_1D5613AF8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_0();
  v20 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_82();
  v24 = OUTLINED_FUNCTION_184();
  sub_1D4F1732C(v24, v25);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = OUTLINED_FUNCTION_147_0(v49);
      v44(v43);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_33_3();
      MEMORY[0x1DA6EAC70](0xD000000000000033);
      OUTLINED_FUNCTION_11_77();
      sub_1D522FB68(v45, v46);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v47 = *(v49 + 8);
      v30 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 2u:
      v32 = OUTLINED_FUNCTION_21_49();
      v33(v32);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5688610);
      OUTLINED_FUNCTION_12_62();
      sub_1D522FB68(v34, v35);
      v36 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v36);

      OUTLINED_FUNCTION_56_2();
      v37 = OUTLINED_FUNCTION_33_41();
      v38(v37);
      break;
    case 3u:
      OUTLINED_FUNCTION_27_42();
      sub_1D4F172CC(v1, v0, v39);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_33_3();
      MEMORY[0x1DA6EAC70](0xD000000000000033);
      v40 = TVSeason.description.getter();
      MEMORY[0x1DA6EAC70](v40);

      OUTLINED_FUNCTION_56_2();
      v41 = OUTLINED_FUNCTION_128();
      sub_1D522D4E4(v41, v42);
      break;
    default:
      v26 = OUTLINED_FUNCTION_16_62(v17);
      v27(v26);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D5688690);
      OUTLINED_FUNCTION_13_64();
      sub_1D522FB68(v28, v29);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v30 = OUTLINED_FUNCTION_113_0();
LABEL_6:
      v31(v30);
      break;
  }

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Container.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = type metadata accessor for TVSeason();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v50 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614408();
  v11 = OUTLINED_FUNCTION_4(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = OUTLINED_FUNCTION_39_31();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v21 = sub_1D5613AF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_11_0();
  v27 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_82();
  v31 = OUTLINED_FUNCTION_184();
  sub_1D4F1732C(v31, v32);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v18 + 32))(v1, v3, v15);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_33_3();
      MEMORY[0x1DA6EAC70](0xD000000000000036);
      v47 = sub_1D5614588();
      OUTLINED_FUNCTION_7_4(v47, v48);
      OUTLINED_FUNCTION_4_2();

      v49 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v49);

      OUTLINED_FUNCTION_53();
      (*(v18 + 8))(v1, v15);
      break;
    case 2u:
      (*(v51 + 32))(v0, v3, v52);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D5688710);
      v36 = sub_1D5614268();
      OUTLINED_FUNCTION_7_4(v36, v37);
      v38 = OUTLINED_FUNCTION_4_2();
      v40 = v39;

      MEMORY[0x1DA6EAC70](v38, v40);

      OUTLINED_FUNCTION_53();
      (*(v51 + 8))(v0, v52);
      break;
    case 3u:
      OUTLINED_FUNCTION_8_75();
      sub_1D4F172CC(v3, v50, v41);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_33_3();
      MEMORY[0x1DA6EAC70](0xD000000000000036);
      v42 = TVSeason.debugDescription.getter();
      OUTLINED_FUNCTION_7_4(v42, v43);
      v44 = OUTLINED_FUNCTION_4_2();
      v46 = v45;

      MEMORY[0x1DA6EAC70](v44, v46);

      OUTLINED_FUNCTION_53();
      sub_1D522D4E4(v50, v21);
      break;
    default:
      (*(v24 + 32))(v2, v3, v21);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5688790);
      v33 = sub_1D5613958();
      OUTLINED_FUNCTION_7_4(v33, v34);
      OUTLINED_FUNCTION_4_2();

      v35 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v35);

      OUTLINED_FUNCTION_53();
      (*(v24 + 8))(v2, v21);
      break;
  }

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_46();
}

void sub_1D522F1B8()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for TVSeason();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v48 = sub_1D5614408();
  v6 = OUTLINED_FUNCTION_4(v48);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_39_31();
  v10 = OUTLINED_FUNCTION_4(v9);
  v49 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_111();
  v14 = sub_1D5613AF8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_0();
  v20 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_82();
  v24 = OUTLINED_FUNCTION_184();
  sub_1D4F1732C(v24, v25);
  OUTLINED_FUNCTION_0_33();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = OUTLINED_FUNCTION_147_0(v49);
      v44(v43);
      OUTLINED_FUNCTION_11_77();
      sub_1D522FB68(v45, v46);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v47 = *(v49 + 8);
      v30 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 2u:
      v32 = OUTLINED_FUNCTION_21_49();
      v33(v32);
      OUTLINED_FUNCTION_12_62();
      sub_1D522FB68(v34, v35);
      v36 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v36);

      OUTLINED_FUNCTION_56_2();
      v37 = OUTLINED_FUNCTION_33_41();
      v38(v37);
      break;
    case 3u:
      OUTLINED_FUNCTION_27_42();
      sub_1D4F172CC(v1, v0, v39);
      v40 = TVSeason.description.getter();
      MEMORY[0x1DA6EAC70](v40);

      OUTLINED_FUNCTION_56_2();
      v41 = OUTLINED_FUNCTION_128();
      sub_1D522D4E4(v41, v42);
      break;
    default:
      v26 = OUTLINED_FUNCTION_16_62(v17);
      v27(v26);
      OUTLINED_FUNCTION_13_64();
      sub_1D522FB68(v28, v29);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v30 = OUTLINED_FUNCTION_113_0();
LABEL_6:
      v31(v30);
      break;
  }

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D522F5AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F2280 = v4;
  return result;
}

uint64_t sub_1D522F710()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F2288);
  __swift_project_value_buffer(v0, qword_1EC7F2288);
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  sub_1D522FB68(&qword_1EC7F22B8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  return sub_1D560D978();
}

uint64_t sub_1D522F7E8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53CA8);
  v1 = __swift_project_value_buffer(v0, qword_1EDD53CA8);
  if (qword_1EC7E92F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F2288);
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D522F8D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561CA30;
  v5 = v4 + v3;
  sub_1D560D908();
  sub_1D560D968();
  sub_1D560D958();
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53C60);
  result = (*(v1 + 16))(v5 + 3 * v2, v6, v0);
  qword_1EC7F22A0 = v4;
  return result;
}

uint64_t sub_1D522FA80(uint64_t a1)
{
  result = sub_1D522FB68(&qword_1EC7F22B8, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D522FB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_42_28()
{
  v2 = *(v0 - 136);

  return sub_1D4E62938(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_61_23()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1D522FC2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v156 = a2;
  v163 = a1;
  v4 = type metadata accessor for UploadedVideo();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v155 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v154 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for TVSeason();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v153 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = type metadata accessor for TVEpisode();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v152 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D5613838();
  v25 = OUTLINED_FUNCTION_4(v24);
  v150 = v26;
  v151 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v149 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = sub_1D5614898();
  v31 = OUTLINED_FUNCTION_4(v30);
  v147 = v32;
  v148 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v146 = v35;
  OUTLINED_FUNCTION_70_0();
  v145 = sub_1D560EEA8();
  v36 = OUTLINED_FUNCTION_4(v145);
  v144 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v143 = v40;
  OUTLINED_FUNCTION_70_0();
  v41 = type metadata accessor for MusicMovie();
  v42 = OUTLINED_FUNCTION_22(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v142 = v45;
  OUTLINED_FUNCTION_70_0();
  v141 = sub_1D5613EF8();
  v46 = OUTLINED_FUNCTION_4(v141);
  v140 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v139 = v50;
  OUTLINED_FUNCTION_70_0();
  v138 = sub_1D5613AF8();
  v51 = OUTLINED_FUNCTION_4(v138);
  v137[2] = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v137[1] = v55;
  OUTLINED_FUNCTION_70_0();
  v162 = type metadata accessor for GenericMusicItem();
  v56 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_5_0();
  v157 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E8, &unk_1D5647918);
  v59 = OUTLINED_FUNCTION_4(v58);
  v160 = v60;
  v161 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  v159 = v137 - v64;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E0, &qword_1D56478C8);
  OUTLINED_FUNCTION_4(v158);
  v66 = v65;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v137 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D8, &qword_1D5647878);
  OUTLINED_FUNCTION_4(v72);
  v74 = v73;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  v79 = v137 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D0, &qword_1D5647828);
  OUTLINED_FUNCTION_4(v80);
  v82 = v81;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  v87 = v137 - v86;
  v88 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__addStatus;
  LOBYTE(v164) = -16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22F0, &qword_1D5647988);
  OUTLINED_FUNCTION_21_50();
  sub_1D560C8B8();
  v90 = *(v82 + 32);
  v89 = v82 + 32;
  v91 = v3 + v88;
  v92 = v157;
  v90(v91, v87, v80);
  v93 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__downloadStatus;
  v164 = 0;
  v165 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22F8, &qword_1D5647990);
  OUTLINED_FUNCTION_21_50();
  sub_1D560C8B8();
  v94 = v72;
  v95 = v163;
  (*(v74 + 32))(v3 + v93, v79, v94);
  v96 = v3;
  v97 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__downloadWarnings;
  v164 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2300, &qword_1D5647998);
  OUTLINED_FUNCTION_21_50();
  sub_1D560C8B8();
  (*(v66 + 32))(v3 + v97, v71, v158);
  v98 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__favoriteStatus;
  LOBYTE(v164) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2308, &qword_1D56479A0);
  OUTLINED_FUNCTION_21_50();
  v99 = v159;
  sub_1D560C8B8();
  (*(v160 + 32))(v3 + v98, v99, v161);
  *(v3 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = 0;
  v100 = (v3 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState);
  *v100 = 0u;
  v100[1] = 0u;
  sub_1D4F26680(v95, v92);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67(&v167);
      v124 = OUTLINED_FUNCTION_16_63();
      v104 = v141;
      v125(v124);
      OUTLINED_FUNCTION_7_85();
      sub_1D558FD90();
      OUTLINED_FUNCTION_10_77();
      sub_1D52311D4(v126);
      goto LABEL_11;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x15u:
      sub_1D52336BC(v95, type metadata accessor for GenericMusicItem);

      v101 = v92;
      v102 = type metadata accessor for GenericMusicItem;
      goto LABEL_15;
    case 7u:
      v112 = OUTLINED_FUNCTION_127_0();
      v108 = v142;
      sub_1D5233654(v112, v142, v113);
      OUTLINED_FUNCTION_6_79();
      sub_1D558FDCC();
      OUTLINED_FUNCTION_10_77();
      sub_1D52313AC(v114);

      OUTLINED_FUNCTION_0_142();
      v111 = type metadata accessor for MusicMovie;
      goto LABEL_14;
    case 8u:
      OUTLINED_FUNCTION_67(&v168);
      v115 = OUTLINED_FUNCTION_16_63();
      v104 = v145;
      v116(v115);
      OUTLINED_FUNCTION_7_85();
      sub_1D558FBC8();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231554(v117);
      goto LABEL_11;
    case 9u:
      v79 = v146;
      v89 = v147;
      v103 = OUTLINED_FUNCTION_22_46();
      v104 = v148;
      v105(v103);
      OUTLINED_FUNCTION_7_85();
      sub_1D558FD54();
      OUTLINED_FUNCTION_10_77();
      sub_1D523172C(v106);
      goto LABEL_11;
    case 0xEu:
      v79 = v149;
      v89 = v150;
      v127 = OUTLINED_FUNCTION_22_46();
      v104 = v151;
      v128(v127);
      OUTLINED_FUNCTION_7_85();
      sub_1D558FC04();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231904(v129);
      goto LABEL_11;
    case 0x10u:
      v130 = OUTLINED_FUNCTION_127_0();
      v108 = v152;
      sub_1D5233654(v130, v152, v131);
      OUTLINED_FUNCTION_6_79();
      sub_1D558FE58();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231ADC(v132);

      OUTLINED_FUNCTION_0_142();
      v111 = type metadata accessor for TVEpisode;
      goto LABEL_14;
    case 0x11u:
      v118 = OUTLINED_FUNCTION_127_0();
      v108 = v153;
      sub_1D5233654(v118, v153, v119);
      OUTLINED_FUNCTION_6_79();
      sub_1D558FEE4();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231C84(v120);

      OUTLINED_FUNCTION_0_142();
      v111 = type metadata accessor for TVSeason;
      goto LABEL_14;
    case 0x13u:
      v133 = OUTLINED_FUNCTION_127_0();
      v108 = v154;
      sub_1D5233654(v133, v154, v134);
      OUTLINED_FUNCTION_6_79();
      sub_1D558FF70();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231E2C(v135);

      OUTLINED_FUNCTION_0_142();
      v111 = type metadata accessor for UploadedAudio;
      goto LABEL_14;
    case 0x14u:
      v107 = OUTLINED_FUNCTION_127_0();
      v108 = v155;
      sub_1D5233654(v107, v155, v109);
      OUTLINED_FUNCTION_6_79();
      sub_1D558FFFC();
      OUTLINED_FUNCTION_10_77();
      sub_1D5231FD4(v110);

      OUTLINED_FUNCTION_0_142();
      v111 = type metadata accessor for UploadedVideo;
LABEL_14:
      v102 = v111;
      v101 = v108;
LABEL_15:
      sub_1D52336BC(v101, v102);
      break;
    default:
      OUTLINED_FUNCTION_67(&v166);
      v121 = OUTLINED_FUNCTION_16_63();
      v104 = v138;
      v122(v121);
      OUTLINED_FUNCTION_7_85();
      sub_1D558FD18();
      OUTLINED_FUNCTION_10_77();
      sub_1D5230FFC(v123);
LABEL_11:

      OUTLINED_FUNCTION_0_142();
      (*(v89 + 8))(v79, v104);
      break;
  }

  return v96;
}

uint64_t sub_1D5230654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D52306C8();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5230690(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D52306DC(&v4);
}

uint64_t sub_1D523070C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2328, &qword_1D56479F0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D0, &qword_1D5647828);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D52307F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5230878();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1D5230838(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return sub_1D52308F0(&v5);
}

uint64_t sub_1D5230878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D52308F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D5230970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = *a2;
  return a7(v15);
}

uint64_t sub_1D5230A50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2320, &qword_1D56479E8);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D8, &qword_1D5647878);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D5230B38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5230B90();
  *a2 = result;
  return result;
}

uint64_t sub_1D5230B64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D5230C04();
}

uint64_t sub_1D5230B90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D5230C04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D5230C90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2318, &qword_1D56479E0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E0, &qword_1D56478C8);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D5230D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5230DEC();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5230DB4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D5230E00(&v4);
}

uint64_t sub_1D5230E14(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D5230E9C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D5230F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2310, &qword_1D56479D8);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E8, &unk_1D5647918);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D5230FFC(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2330, &qword_1D5672B30);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232D2C(a1, MEMORY[0x1E6976D28], &protocol witness table for Album, sub_1D5579168);
  sub_1D4E62A60(&qword_1EDD53468, &qword_1EC7F2330, &qword_1D5672B30);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D52311D4(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2338, &qword_1D5647B00);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232D2C(a1, MEMORY[0x1E6976F28], &protocol witness table for Artist, sub_1D55793AC);
  sub_1D4E62A60(&qword_1EDD53460, &qword_1EC7F2338, &qword_1D5647B00);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D52313AC(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2340, &qword_1D5647B08);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232EAC();
  sub_1D4E62A60(&qword_1EC7F2348, &qword_1EC7F2340, &qword_1D5647B08);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231554(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2350, &unk_1D5647B10);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232D2C(a1, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo, sub_1D5579128);
  sub_1D4E62A60(qword_1EDD53478, &qword_1EC7F2350, &unk_1D5647B10);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D523172C(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2358, &qword_1D5672860);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232D2C(a1, MEMORY[0x1E69773E0], &protocol witness table for Playlist, sub_1D5579188);
  sub_1D4E62A60(&qword_1EC7F2360, &qword_1EC7F2358, &qword_1D5672860);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231904(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2368, &qword_1D5647B20);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232D2C(a1, MEMORY[0x1E6976BE8], &protocol witness table for Song, sub_1D5579148);
  sub_1D4E62A60(&qword_1EDD53470, &qword_1EC7F2368, &qword_1D5647B20);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231ADC(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2370, &qword_1D5647B28);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232B58();
  sub_1D4E62A60(&qword_1EC7F2378, &qword_1EC7F2370, &qword_1D5647B28);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231C84(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2380, &qword_1D5647B30);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D5232984();
  sub_1D4E62A60(&qword_1EC7F2388, &qword_1EC7F2380, &qword_1D5647B30);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231E2C(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2390, &qword_1D5647B38);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D52327B0();
  sub_1D4E62A60(&qword_1EC7F2398, &qword_1EC7F2390, &qword_1D5647B38);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5231FD4(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23A0, &unk_1D5647B40);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D52325DC();
  sub_1D4E62A60(&qword_1EC7F23A8, &qword_1EC7F23A0, &unk_1D5647B40);
  v11[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D523217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1D560C988();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v31 = sub_1D560C9B8();
  v15 = OUTLINED_FUNCTION_4(v31);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D4E699CC();
  v30 = sub_1D5615738();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  v24 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  aBlock[4] = a5;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4E735E0;
  aBlock[3] = a6;
  v26 = _Block_copy(aBlock);

  sub_1D560C9A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5233C4C(&qword_1EDD5D840, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v22, v14, v26);
  _Block_release(v26);

  (*(v9 + 8))(v14, v6);
  return (*(v17 + 8))(v22, v31);
}

uint64_t sub_1D52324AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_59();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    OUTLINED_FUNCTION_59();
    if (swift_weakLoadStrong())
    {
      a3(v5);
    }
  }

  return result;
}

uint64_t sub_1D5232538(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_59();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_59();
    if (swift_weakLoadStrong())
    {
      sub_1D5232D2C(v9, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_1D52325DC()
{
  type metadata accessor for UploadedVideo();
  sub_1D5233C4C(&qword_1EC7F23B0, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  sub_1D52306DC(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v3;
  v2 = v4;
  sub_1D52308F0(&v1);
  sub_1D55791A8();
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  return sub_1D5230E00(&v1);
}

uint64_t sub_1D52327B0()
{
  type metadata accessor for UploadedAudio();
  sub_1D5233C4C(&qword_1EC7F08D0, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  sub_1D52306DC(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v3;
  v2 = v4;
  sub_1D52308F0(&v1);
  sub_1D55791F0();
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  return sub_1D5230E00(&v1);
}

uint64_t sub_1D5232984()
{
  type metadata accessor for TVSeason();
  sub_1D5233C4C(qword_1EC7EE608, type metadata accessor for TVSeason);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  sub_1D52306DC(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v3;
  v2 = v4;
  sub_1D52308F0(&v1);
  sub_1D55792D4();
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  return sub_1D5230E00(&v1);
}

uint64_t sub_1D5232B58()
{
  type metadata accessor for TVEpisode();
  sub_1D5233C4C(&qword_1EC7F2230, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  sub_1D52306DC(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v3;
  v2 = v4;
  sub_1D52308F0(&v1);
  sub_1D557931C();
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  return sub_1D5230E00(&v1);
}

uint64_t sub_1D5232D2C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  a2(0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_61();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_23_47();
  sub_1D52306DC(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_61();
  sub_1D560C8F8();

  v9 = v11;
  v10 = v12;
  v6 = sub_1D52308F0(&v9);
  a4(v6);
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_61();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_23_47();
  return sub_1D5230E00(v7);
}

uint64_t sub_1D5232EAC()
{
  type metadata accessor for MusicMovie();
  sub_1D5233C4C(&qword_1EC7F1078, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  sub_1D52306DC(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v3;
  v2 = v4;
  sub_1D52308F0(&v1);
  sub_1D5579364();
  sub_1D5230C04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v1) = v3;
  return sub_1D5230E00(&v1);
}

uint64_t MusicLibrary.GenericItemState.deinit()
{
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__addStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D0, &qword_1D5647828);
  OUTLINED_FUNCTION_4_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__downloadStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22D8, &qword_1D5647878);
  OUTLINED_FUNCTION_4_0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__downloadWarnings;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E0, &qword_1D56478C8);
  OUTLINED_FUNCTION_4_0(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState__favoriteStatus;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F22E8, &unk_1D5647918);
  OUTLINED_FUNCTION_4_0(v11);
  (*(v12 + 8))(v0 + v10);
  v13 = *(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemStateDidChangeObserver);

  sub_1D50B8C70(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary16GenericItemState_itemState);
  return v0;
}

uint64_t MusicLibrary.GenericItemState.__deallocating_deinit()
{
  MusicLibrary.GenericItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5233218@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicLibrary.GenericItemState();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

uint64_t MusicLibrary.state(for:)(uint64_t a1)
{
  v3 = type metadata accessor for GenericMusicItem();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D4F26680(a1, v8 - v7);
  v10 = type metadata accessor for MusicLibrary.GenericItemState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();

  sub_1D522FC2C(v9, v1);
  return v13;
}

uint64_t type metadata accessor for MusicLibrary.GenericItemState()
{
  result = qword_1EDD53888;
  if (!qword_1EDD53888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5233350()
{
  sub_1D4FE1C04(319, &qword_1EDD543E0, &qword_1EC7F22F0, &qword_1D5647988);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1D4FE1C04(319, &qword_1EDD543F0, &qword_1EC7F22F8, &qword_1D5647990);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1D4FE1C04(319, &qword_1EDD543C8, &qword_1EC7F2300, &qword_1D5647998);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1D4FE1C04(319, &qword_1EDD54428, &qword_1EC7F2308, &qword_1D56479A0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D5233654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D52336BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5233C4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5233CE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v55 = *(a3 - 8);
  v10 = *(v55 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = sub_1D560D838();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - v22;
  v54 = a2;
  if (sub_1D560F0C8())
  {
    *a5 = 5;
    return;
  }

  v52 = a5;
  v24 = *(a4 + 8);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v16 + 8))(v19, v15);
  v25 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    sub_1D4E6C9CC(v23, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v26 = sub_1D560D488();
    v28 = v27;
    (*(*(v25 - 8) + 8))(v23, v25);
    if (v26 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v28 == v29)
    {
    }

    else
    {
      v31 = sub_1D5616168();

      if ((v31 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_143(5);
        return;
      }
    }
  }

  v32 = *(v55 + 16);
  v32(v14, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_1D4E6C9CC(&v65, &qword_1EC7EC510, &unk_1D5621040);
LABEL_24:
    *v52 = 0;
    return;
  }

  sub_1D4E48324(&v65, v68);
  v33 = v69;
  v34 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  (*(v34 + 24))(v64, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_1D4E6C9CC(&v61, &qword_1EC7EC510, &unk_1D5621040);
    __swift_destroy_boxed_opaque_existential_1(v68);
    goto LABEL_24;
  }

  sub_1D4E48324(&v61, &v65);
  __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
  OUTLINED_FUNCTION_1_10();
  sub_1D4F68014(v35, v36, v37);
  if (LOBYTE(v64[0]) == 1)
  {
    v32(v53, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v61, v64);
      __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      sub_1D560DB68();
      if (v57)
      {
        if (swift_dynamicCast())
        {
          if (*(&v59 + 1))
          {
            sub_1D4E48324(&v58, &v61);
            __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
            OUTLINED_FUNCTION_1_10();
            sub_1D4F67E14(v38, v39, v40);
            if ((v58 & 0xC0) == 0x40)
            {
              switch(v58 & 0x3F)
              {
                case 1:
                  v41 = 3;
                  break;
                case 2:
                  v41 = 6;
                  break;
                case 3:
                  v41 = 7;
                  break;
                case 4:
                  v41 = 8;
                  break;
                case 5:
                  v41 = 9;
                  break;
                case 6:
                  v41 = 2;
                  break;
                case 7:
                  v41 = 5;
                  break;
                case 8:
                  v41 = 10;
                  break;
                default:
                  v41 = 4;
                  break;
              }

              OUTLINED_FUNCTION_0_143(v41);
              __swift_destroy_boxed_opaque_existential_1(&v61);
              __swift_destroy_boxed_opaque_existential_1(v64);
              goto LABEL_43;
            }

            __swift_destroy_boxed_opaque_existential_1(&v61);
            __swift_destroy_boxed_opaque_existential_1(v64);
            goto LABEL_40;
          }
        }

        else
        {
          v60 = 0;
          v59 = 0u;
          v58 = 0u;
        }
      }

      else
      {
        sub_1D4E6C9CC(v56, &qword_1EC7EEC40, &unk_1D561C070);
        v58 = 0u;
        v59 = 0u;
        v60 = 0;
      }

      sub_1D4E6C9CC(&v58, &qword_1EC7EC548, &qword_1D5621090);
      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      sub_1D4E6C9CC(&v61, &qword_1EC7EC548, &qword_1D5621090);
    }

    v43 = objc_opt_self();
    v44 = [objc_opt_self() autoupdatingActiveAccount];
    v45 = [v43 sharedMonitorForIdentity_];

    v46 = [v45 subscriptionStatus];
    if (!v46 || (v47 = [v46 capabilities], v46, (v47 & 1) != 0))
    {
      v48 = *(sub_1D4E5A1CC() + 48);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v64[0]) != 2)
      {
        if (LOBYTE(v64[0]) == 3)
        {
          v49 = v52;
        }

        else
        {
          v49 = v52;
          if ((v64[0] & 1) == 0)
          {
LABEL_41:
            v50 = 11;
            goto LABEL_42;
          }
        }

        v50 = 3;
LABEL_42:
        *v49 = v50;
        goto LABEL_43;
      }

LABEL_40:
      v49 = v52;
      goto LABEL_41;
    }

    v42 = 2;
  }

  else
  {
    v42 = 1;
  }

  OUTLINED_FUNCTION_0_143(v42);
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(&v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t MusicLibrary.UndoFavoriteAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5234570()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibrary.UndoFavoriteAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D52345C0()
{
  result = qword_1EC7F23B8;
  if (!qword_1EC7F23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F23B8);
  }

  return result;
}

_BYTE *_s18UndoFavoriteActionVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s18UndoFavoriteActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t RecentlyAddedMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v164 = a4;
  v171 = a3;
  v169 = a1;
  v166 = a5;
  v6 = type metadata accessor for TVSeason();
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v157 = v10;
  OUTLINED_FUNCTION_70_0();
  v156 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v156);
  v155 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v15);
  v16 = type metadata accessor for MusicMovie();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v20);
  v149 = sub_1D560EEA8();
  v21 = OUTLINED_FUNCTION_4(v149);
  v148[2] = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v25);
  v26 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v152 = sub_1D5613858();
  v31 = OUTLINED_FUNCTION_4(v152);
  v151 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v35);
  v36 = sub_1D5613AF8();
  v37 = OUTLINED_FUNCTION_4(v36);
  v158 = v38;
  v159 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v160 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = v148 - v46;
  v167 = sub_1D560E728();
  v48 = OUTLINED_FUNCTION_4(v167);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v51 = sub_1D560D9A8();
  v52 = OUTLINED_FUNCTION_4(v51);
  v162 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v58 = (v57 - v56);
  v170 = sub_1D560D838();
  v59 = OUTLINED_FUNCTION_4(v170);
  v61 = v60;
  v63 = *(v62 + 64);
  v64 = MEMORY[0x1EEE9AC00](v59);
  v163 = v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v168 = v148 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v161 = v148 - v68;
  sub_1D560F7E8();
  sub_1D52355AC();
  sub_1D5614C68();

  v70 = sub_1D5235600(v69);
  v165 = a2;
  if (sub_1D560F7B8())
  {

    if (v70 == 4)
    {
      v72 = 0;
    }

    else
    {
      v72 = v70;
    }

    v73 = v169;
    switch(v72)
    {
      case 1:
        if (qword_1EDD53D48 != -1)
        {
          v71 = swift_once();
        }

        OUTLINED_FUNCTION_31_35(v71, qword_1EDD53D50);
        sub_1D560D588();
        sub_1D560D4F8();
        OUTLINED_FUNCTION_11_78();
        sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
        v121 = OUTLINED_FUNCTION_16_64();
        v122(v121);
        v123 = OUTLINED_FUNCTION_9_77();
        v124(v123);
        OUTLINED_FUNCTION_25_46();
        v125 = v153;
        OUTLINED_FUNCTION_14_60();
        MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
        swift_unknownObjectRelease();
        sub_1D4E50004(v58, &qword_1EC7EEC40, &unk_1D561C070);
        v126 = OUTLINED_FUNCTION_24_47();
        v58(v126);
        v127 = OUTLINED_FUNCTION_116();
        v58(v127);
        OUTLINED_FUNCTION_6_80();
        sub_1D52368BC(v125, v166, v128);
        goto LABEL_22;
      case 2:
        sub_1D560D968();
        sub_1D560D588();
        sub_1D560D4F8();
        OUTLINED_FUNCTION_11_78();
        sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
        v101 = OUTLINED_FUNCTION_16_64();
        v102(v101);
        v103 = *(v162 + 8);
        v104 = OUTLINED_FUNCTION_29_40();
        v105(v104);
        v106 = OUTLINED_FUNCTION_9_77();
        v107(v106);
        OUTLINED_FUNCTION_25_46();
        v108 = v154;
        OUTLINED_FUNCTION_14_60();
        sub_1D56144C8();
        swift_unknownObjectRelease();
        sub_1D4E50004(v58, &qword_1EC7EEC40, &unk_1D561C070);
        v109 = OUTLINED_FUNCTION_24_47();
        v58(v109);
        v110 = OUTLINED_FUNCTION_116();
        v58(v110);
        v111 = OUTLINED_FUNCTION_19_55();
        v112(v111, v108, v156);
        goto LABEL_22;
      case 3:
        if (qword_1EDD53C58 != -1)
        {
          v71 = swift_once();
        }

        OUTLINED_FUNCTION_31_35(v71, qword_1EDD53C60);
        sub_1D560D588();
        sub_1D560D4F8();
        OUTLINED_FUNCTION_11_78();
        sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
        v113 = OUTLINED_FUNCTION_16_64();
        v114(v113);
        v115 = OUTLINED_FUNCTION_9_77();
        v116(v115);
        OUTLINED_FUNCTION_25_46();
        v117 = v157;
        OUTLINED_FUNCTION_14_60();
        TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
        swift_unknownObjectRelease();
        sub_1D4E50004(v58, &qword_1EC7EEC40, &unk_1D561C070);
        v118 = OUTLINED_FUNCTION_24_47();
        v58(v118);
        v119 = OUTLINED_FUNCTION_116();
        v58(v119);
        OUTLINED_FUNCTION_7_86();
        sub_1D52368BC(v117, v166, v120);
        goto LABEL_22;
      default:
        sub_1D560D908();
        sub_1D560D588();
        sub_1D560D4F8();
        v74 = v161;
        OUTLINED_FUNCTION_11_78();
        sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
        v75 = OUTLINED_FUNCTION_16_64();
        v155 = v76;
        v76(v75);
        v77 = *(v162 + 8);
        v78 = OUTLINED_FUNCTION_29_40();
        v162 = v79;
        v154 = v80;
        v80(v78);
        v156 = *(v61 + 16);
        v157 = v61 + 16;
        v156(v168, v74, v170);
        sub_1D4EC76A8(v171, &v172);
        swift_unknownObjectRetain();
        v81 = v160;
        sub_1D56138E8();
        if ((sub_1D5613A48() & 1) != 0 && sub_1D5613878() == 1)
        {
          sub_1D560F7E8();
          v153 = sub_1D4E77B64(&qword_1EC7F23C0, MEMORY[0x1E6976C48]);
          v82 = v152;
          OUTLINED_FUNCTION_116();
          v164 = sub_1D5614C68();

          v83 = v151;
          v84 = v150;
          (*(v151 + 104))(v150, *MEMORY[0x1E6976C20], v82);
          v153 = sub_1D560F7C8();

          (*(v83 + 8))(v84, v82);
          if (v153)
          {
            v85 = sub_1D5613A98();
            v86 = v169;
            if (v85)
            {
              if (qword_1EDD53CE8 != -1)
              {
                v85 = swift_once();
              }

              OUTLINED_FUNCTION_31_35(v85, qword_1EDD53CF0);
              v87 = v86;
              sub_1D560D588();
              sub_1D560D4F8();
              v88 = v168;
              sub_1D560F7D8();
              sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
              v89 = OUTLINED_FUNCTION_28_46();
              v90(v89);
              v91 = OUTLINED_FUNCTION_71();
              v92 = v170;
              (v156)(v91);
              v174 = 0;
              v172 = 0u;
              v173 = 0u;
              v93 = v148[0];
              v94 = OUTLINED_FUNCTION_29_40();
              UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v94, v95, v96, v97, v98);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_1D4E50004(v171, &qword_1EC7EEC40, &unk_1D561C070);
              v99 = *(v61 + 8);
              v99(v87, v92);
              v99(v88, v92);
              (*(v158 + 8))(v160, v159);
              v99(v161, v92);
              OUTLINED_FUNCTION_5_84();
              sub_1D52368BC(v93, v166, v100);
            }

            else
            {
              sub_1D560D878();
              v137 = v86;
              sub_1D560D588();
              sub_1D560D4F8();
              v138 = v168;
              sub_1D560F7D8();
              sub_1D4E50004(v47, &unk_1EC7EBF30, &qword_1D561C8C0);
              v139 = OUTLINED_FUNCTION_28_46();
              v140(v139);
              v141 = OUTLINED_FUNCTION_29_40();
              v154(v141);
              v142 = OUTLINED_FUNCTION_71();
              v143 = v170;
              (v156)(v142);
              v174 = 0;
              v172 = 0u;
              v173 = 0u;
              v144 = v148[1];
              sub_1D560ED38();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_1D4E50004(v171, &qword_1EC7EEC40, &unk_1D561C070);
              v145 = *(v61 + 8);
              v145(v137, v143);
              v145(v138, v143);
              (*(v158 + 8))(v160, v159);
              v145(v161, v143);
              v146 = OUTLINED_FUNCTION_19_55();
              v147(v146, v144, v149);
            }

            goto LABEL_22;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1D4E50004(v171, &qword_1EC7EEC40, &unk_1D561C070);
          v135 = *(v61 + 8);
          v136 = v170;
          v135(v169, v170);
          v135(v161, v136);
          v131 = OUTLINED_FUNCTION_19_55();
          v133 = v160;
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1D4E50004(v171, &qword_1EC7EEC40, &unk_1D561C070);
          v129 = *(v61 + 8);
          v130 = v170;
          v129(v73, v170);
          v129(v161, v130);
          v131 = OUTLINED_FUNCTION_19_55();
          v133 = v81;
        }

        v132(v131, v133, v159);
LABEL_22:
        type metadata accessor for RecentlyAddedMusicItem();
        return swift_storeEnumTagMultiPayload();
    }
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

unint64_t sub_1D52355AC()
{
  result = qword_1EDD5CDB8[0];
  if (!qword_1EDD5CDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5CDB8);
  }

  return result;
}

uint64_t sub_1D5235600(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_1D4F15A70(), (v3 & 1) == 0))
  {

    return 4;
  }

  sub_1D4E5194C(*(a1 + 56) + 32 * v2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  result = sub_1D52367AC(v5);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t RecentlyAddedMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v111 = a3;
  v96 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_14(v96);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v7);
  v95 = type metadata accessor for TVSeason();
  v8 = OUTLINED_FUNCTION_14(v95);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v11);
  v12 = sub_1D5614898();
  v13 = OUTLINED_FUNCTION_4(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v97 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D560EEA8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v101 = v20;
  v102 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v100 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D560D838();
  v25 = OUTLINED_FUNCTION_4(v24);
  v106 = v26;
  v107 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v105 = v29;
  OUTLINED_FUNCTION_70_0();
  v103 = type metadata accessor for MusicMovie();
  v30 = OUTLINED_FUNCTION_14(v103);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v104 = v33;
  OUTLINED_FUNCTION_70_0();
  v34 = sub_1D5613AF8();
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v43 = sub_1D5610088();
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v44);
  v51 = (&v95 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v109 = type metadata accessor for RecentlyAddedMusicItem();
  v52 = OUTLINED_FUNCTION_14(v109);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v108 = v55;
  v56 = a1[3];
  v57 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v56);
  OUTLINED_FUNCTION_82();
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_13_65();
  sub_1D4E77B64(v58, v59);
  v60 = OUTLINED_FUNCTION_4_83();
  v61 = *(v46 + 8);
  v61(v51, v43);
  if (v60)
  {
    v63 = OUTLINED_FUNCTION_97_1();
    (v61)(v63);
    OUTLINED_FUNCTION_15_66();
    sub_1D5613978();
    v64 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v64);
    (*(v65 + 8))(v110);
    v66 = v108;
    (*(v37 + 32))(v108, v42, v34);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1D52368BC(v66, v111, type metadata accessor for RecentlyAddedMusicItem);
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_4_83();
  v62 = OUTLINED_FUNCTION_8_76();
  (v61)(v62);
  sub_1D560FE28();
  OUTLINED_FUNCTION_4_83();
  v68 = OUTLINED_FUNCTION_8_76();
  (v61)(v68);
  if (v60)
  {
    v69 = OUTLINED_FUNCTION_97_1();
    (v61)(v69);
    OUTLINED_FUNCTION_15_66();
    v66 = v114;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v70 = v105;
    OUTLINED_FUNCTION_82();
    sub_1D5610CD8();
    sub_1D560D708();
    OUTLINED_FUNCTION_18_62();
    v71(v70);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1(v103);
    v72 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v72);
    (*(v73 + 8))(v110);
    __swift_destroy_boxed_opaque_existential_1(v113);
    OUTLINED_FUNCTION_6_80();
    OUTLINED_FUNCTION_26_49(v74, v75, v76);
    goto LABEL_4;
  }

  sub_1D560FE38();
  OUTLINED_FUNCTION_4_83();
  v77 = OUTLINED_FUNCTION_8_76();
  (v61)(v77);
  sub_1D560FDF8();
  OUTLINED_FUNCTION_4_83();
  v78 = OUTLINED_FUNCTION_8_76();
  (v61)(v78);
  sub_1D5610038();
  OUTLINED_FUNCTION_4_83();
  v79 = OUTLINED_FUNCTION_8_76();
  (v61)(v79);
  sub_1D560FF58();
  OUTLINED_FUNCTION_4_83();
  v80 = OUTLINED_FUNCTION_8_76();
  (v61)(v80);
  sub_1D5610068();
  OUTLINED_FUNCTION_4_83();
  v81 = OUTLINED_FUNCTION_8_76();
  (v61)(v81);
  sub_1D560FF38();
  v82 = OUTLINED_FUNCTION_4_83();
  v61(v51, v43);
  if (v82)
  {
    v83 = OUTLINED_FUNCTION_97_1();
    (v61)(v83);
    OUTLINED_FUNCTION_15_66();
    v66 = v114;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v84 = v105;
    OUTLINED_FUNCTION_82();
    sub_1D5610CD8();
    sub_1D560D708();
    OUTLINED_FUNCTION_18_62();
    v85(v84);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1(v96);
    v86 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v86);
    (*(v87 + 8))(v110);
    __swift_destroy_boxed_opaque_existential_1(v113);
    OUTLINED_FUNCTION_5_84();
    OUTLINED_FUNCTION_26_49(v88, v89, v90);
    goto LABEL_4;
  }

  v113[0] = 0;
  v113[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D5688910);
  v91 = v112[4];
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  OUTLINED_FUNCTION_82();
  sub_1D5610CF8();
  OUTLINED_FUNCTION_13_65();
  sub_1D4E77B64(v92, v93);
  v94 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v94);

  v61(v51, v43);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t RecentlyAddedMusicItem.convertToRawDictionary(for:)()
{
  v64 = type metadata accessor for UploadedVideo();
  v0 = OUTLINED_FUNCTION_14(v64);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_0();
  v63 = v3;
  OUTLINED_FUNCTION_70_0();
  v62 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_14(v62);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v61 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v59 = v10;
  v60 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v58 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for MusicMovie();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = sub_1D5613AF8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = type metadata accessor for RecentlyAddedMusicItem();
  v41 = OUTLINED_FUNCTION_14(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  sub_1D504221C(v65, v45 - v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_80();
      sub_1D52368BC(v46, v30, v52);
      sub_1D4E77B64(&qword_1EDD592F8, type metadata accessor for MusicMovie);
      sub_1D4E77B64(&qword_1EC7EA580, type metadata accessor for MusicMovie);
      v47 = sub_1D56132F8();
      v53 = type metadata accessor for MusicMovie;
      v54 = v30;
      goto LABEL_10;
    case 2u:
      (*(v58 + 32))(v23, v46, v16);
      sub_1D4E77B64(&qword_1EC7EA728, MEMORY[0x1E69754E8]);
      v47 = sub_1D56132F8();
      (*(v58 + 8))(v23, v16);
      return v47;
    case 3u:
      (*(v59 + 32))(v15, v46, v60);
      sub_1D4E77B64(&qword_1EC7EB4E8, MEMORY[0x1E69773E0]);
      v47 = sub_1D56132F8();
      (*(v59 + 8))(v15, v60);
      return v47;
    case 4u:
      OUTLINED_FUNCTION_7_86();
      v48 = v46;
      v49 = v61;
      sub_1D52368BC(v48, v61, v50);
      sub_1D4E77B64(&qword_1EC7EA438, type metadata accessor for TVSeason);
      sub_1D4E77B64(&qword_1EC7EA480, type metadata accessor for TVSeason);
      v47 = sub_1D56132F8();
      v51 = type metadata accessor for TVSeason;
      goto LABEL_9;
    case 5u:
      OUTLINED_FUNCTION_5_84();
      v55 = v46;
      v49 = v63;
      sub_1D52368BC(v55, v63, v56);
      sub_1D4E77B64(&qword_1EC7EA710, type metadata accessor for UploadedVideo);
      sub_1D4E77B64(&qword_1EC7EA590, type metadata accessor for UploadedVideo);
      v47 = sub_1D56132F8();
      v51 = type metadata accessor for UploadedVideo;
LABEL_9:
      v53 = v51;
      v54 = v49;
LABEL_10:
      sub_1D5042E08(v54, v53);
      break;
    default:
      (*(v34 + 32))(v39, v46, v31);
      sub_1D4E77B64(&qword_1EC7EB4F0, MEMORY[0x1E6976D28]);
      v47 = sub_1D56132F8();
      (*(v34 + 8))(v39, v31);
      break;
  }

  return v47;
}

BOOL sub_1D523663C()
{
  sub_1D5615EF8();
  OUTLINED_FUNCTION_82();

  return v0 != 0;
}

BOOL sub_1D5236688@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D523663C();
  *a2 = result;
  return result;
}

uint64_t RecentlyAddedMusicItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RecentlyAddedMusicItem();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D504221C(v1, v8 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = sub_1D5613158();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 104))(a1, **(&unk_1E84C4F68 + EnumCaseMultiPayload));
  return sub_1D5042E08(v9, type metadata accessor for RecentlyAddedMusicItem);
}

uint64_t sub_1D52367AC(uint64_t a1)
{
  v1 = [objc_opt_self() typeForRawValue_];
  if ((v1 - 2) >= 8)
  {
    return 4;
  }

  else
  {
    return (0x104030404020400uLL >> (8 * (v1 - 2)));
  }
}

id sub_1D5236810(char a1)
{
  v1 = qword_1D5647E50[a1];
  v2 = objc_opt_self();

  return [v2 rawValueForType_];
}

uint64_t sub_1D5236864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D52367AC(*a1);
  *a2 = result;
  return result;
}

id sub_1D5236890@<X0>(void *a1@<X8>)
{
  result = sub_1D5236810(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D52368BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

_BYTE *_s44LegacyModelRecentlyAddedMusicItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D52369C8()
{
  result = qword_1EDD5CDA8;
  if (!qword_1EDD5CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CDA8);
  }

  return result;
}

unint64_t sub_1D5236A20()
{
  result = qword_1EDD5CDB0;
  if (!qword_1EDD5CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CDB0);
  }

  return result;
}

unint64_t sub_1D5236A78()
{
  result = qword_1EDD5CDA0;
  if (!qword_1EDD5CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CDA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_46()
{
  v2 = *(v0 - 136);

  return sub_1D4EC76A8(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_28_46()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 264);
  return result;
}

uint64_t sub_1D5236B34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F62616C6C6F63 && a2 == 0xEC000000726F7461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5236C00(char a1)
{
  if (a1)
  {
    return 0x726F62616C6C6F63;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_1D5236C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5236B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5236C68(uint64_t a1)
{
  v2 = sub_1D523705C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5236CA4(uint64_t a1)
{
  v2 = sub_1D523705C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5236CE0(uint64_t a1)
{
  v2 = sub_1D52370B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5236D1C(uint64_t a1)
{
  v2 = sub_1D52370B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5236D58(uint64_t a1)
{
  v2 = sub_1D5237104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5236D94(uint64_t a1)
{
  v2 = sub_1D5237104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Playlist.Collaborator.Role.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23C8, &qword_1D5647E70);
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23D0, &qword_1D5647E78);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23D8, &qword_1D5647E80);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D523705C();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1D52370B0();
    v29 = v33;
    sub_1D5616018();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1D5237104();
    sub_1D5616018();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_1D523705C()
{
  result = qword_1EC7F23E0;
  if (!qword_1EC7F23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F23E0);
  }

  return result;
}

unint64_t sub_1D52370B0()
{
  result = qword_1EC7F23E8;
  if (!qword_1EC7F23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F23E8);
  }

  return result;
}

unint64_t sub_1D5237104()
{
  result = qword_1EC7F23F0;
  if (!qword_1EC7F23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F23F0);
  }

  return result;
}

uint64_t Playlist.Collaborator.Role.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t Playlist.Collaborator.Role.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23F8, &qword_1D5647E88);
  OUTLINED_FUNCTION_4(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2400, &qword_1D5647E90);
  OUTLINED_FUNCTION_4(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2408, &unk_1D5647E98);
  OUTLINED_FUNCTION_4(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D523705C();
  v24 = v53;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_1D5615C18();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v42 = &type metadata for Playlist.Collaborator.Role;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1D4FE35EC(v29 + 1, v30 >> 1, result, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_1D52370B0();
      v37 = v8;
      OUTLINED_FUNCTION_3_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_1D5237104();
      v44 = v47;
      OUTLINED_FUNCTION_3_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

unint64_t sub_1D523768C()
{
  result = qword_1EC7F2410;
  if (!qword_1EC7F2410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2418, &qword_1D5647EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2410);
  }

  return result;
}

unint64_t sub_1D52376F4()
{
  result = qword_1EC7F2420;
  if (!qword_1EC7F2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2420);
  }

  return result;
}

_BYTE *sub_1D5237758(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5237858()
{
  result = qword_1EC7F2428;
  if (!qword_1EC7F2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2428);
  }

  return result;
}

unint64_t sub_1D52378B0()
{
  result = qword_1EC7F2430;
  if (!qword_1EC7F2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2430);
  }

  return result;
}

unint64_t sub_1D5237908()
{
  result = qword_1EC7F2438;
  if (!qword_1EC7F2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2438);
  }

  return result;
}

unint64_t sub_1D5237960()
{
  result = qword_1EC7F2440;
  if (!qword_1EC7F2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2440);
  }

  return result;
}

unint64_t sub_1D52379B8()
{
  result = qword_1EC7F2448;
  if (!qword_1EC7F2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2448);
  }

  return result;
}

unint64_t sub_1D5237A10()
{
  result = qword_1EC7F2450;
  if (!qword_1EC7F2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2450);
  }

  return result;
}

unint64_t sub_1D5237A68()
{
  result = qword_1EC7F2458;
  if (!qword_1EC7F2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2458);
  }

  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.kind.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCreditsSectionPropertyProvider.kind.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCreditsSectionPropertyProvider.title.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t type metadata accessor for MusicCreditsSectionPropertyProvider()
{
  result = qword_1EC7F24B8;
  if (!qword_1EC7F24B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.creditArtists.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_15_67() + 24);

  return sub_1D5237C90(v0, v2);
}

uint64_t sub_1D5237C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSectionPropertyProvider.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  OUTLINED_FUNCTION_71();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    v30 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_24;
  }

  v13 = v12;
  v14 = qword_1EC7E8C20;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_3_112();
  }

  *&v28 = qword_1EC87C048;
  v30 = v13;
  sub_1D4EC5794(&qword_1EC7F2460, &qword_1EC7EE8B0, &qword_1D562CF58);
  if (OUTLINED_FUNCTION_6_81())
  {
    v15 = v2[1];
    if (!v15)
    {
      v19 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    v16 = *v3;
LABEL_12:

    v19 = MEMORY[0x1E69E6158];
LABEL_22:

    *a2 = v16;
    a2[1] = v15;
    a2[2] = 0;
    a2[3] = v19;
    return result;
  }

  v17 = qword_1EC7E8C28;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  *&v28 = qword_1EC87C050;
  v30 = v13;
  v18 = OUTLINED_FUNCTION_6_81();

  if (v18)
  {
    v15 = v2[3];
    if (!v15)
    {
      v16 = 0;
      v19 = 0;
      goto LABEL_22;
    }

    v16 = v3[2];
    goto LABEL_12;
  }

  v20 = qword_1EC7E8C30;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  *&v28 = qword_1EC7EE800;
  v30 = v13;
  v21 = OUTLINED_FUNCTION_6_81();

  if ((v21 & 1) == 0)
  {
    while (1)
    {
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
      v30 = a1;
      sub_1D560CDE8();
      sub_1D5615D48();
      OUTLINED_FUNCTION_33_0();
LABEL_24:
      OUTLINED_FUNCTION_5_85();
      __break(1u);
    }
  }

  v22 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  sub_1D4E69970(v3 + *(v22 + 24), v11, &qword_1EC7EE880, &qword_1D562CC60);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_10(v11);
  if (v24)
  {

    result = sub_1D4E50004(v11, &qword_1EC7EE880, &qword_1D562CC60);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
    (*(*(v23 - 8) + 32))(boxed_opaque_existential_0, v11, v23);
  }

  v27 = v29;
  *a2 = v28;
  *(a2 + 1) = v27;
  return result;
}

uint64_t sub_1D523811C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_1D4E69970(a1, &v5, &qword_1EC7E9F98, &qword_1D561C420);

  return MusicCreditsSectionPropertyProvider.subscript.setter();
}

uint64_t MusicCreditsSectionPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_206();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v1 = qword_1EC7E8C30;
    swift_retain_n();
    if (v1 != -1)
    {
      OUTLINED_FUNCTION_0_144();
    }

    sub_1D4EC5794(&qword_1EC7F2460, &qword_1EC7EE8B0, &qword_1D562CF58);
    v2 = sub_1D5614D18();

    if (v2)
    {
      swift_getKeyPath();
      sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider);
      sub_1D5612238();

      return sub_1D4E50004(v0, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_5_85();
  __break(1u);
  return result;
}

void (*MusicCreditsSectionPropertyProvider.subscript.modify())(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_206();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  MusicCreditsSectionPropertyProvider.subscript.getter(v0, v3);
  return sub_1D5238458;
}

void sub_1D5238458(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_20_57();

    MusicCreditsSectionPropertyProvider.subscript.setter();
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    MusicCreditsSectionPropertyProvider.subscript.setter();
  }

  free(v2);
}

uint64_t MusicCreditsSectionPropertyProvider.merge<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2470, &qword_1D5648260);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2478, &unk_1D5648268);
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    v39 = a1;
    v34 = *(v4 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v35 = 56;
LABEL_14:
    v36 = v35;
    result = OUTLINED_FUNCTION_5_85();
    __break(1u);
    return result;
  }

  v27 = v26;
  sub_1D4E628D4(a2, &v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    sub_1D4E50004(v19, &qword_1EC7F2470, &qword_1D5648260);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D56889C0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v35 = 59;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  sub_1D52389FC(v19, v25);
  v28 = qword_1EC7E8C30;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  v38 = qword_1EC7EE800;
  v39 = v27;
  sub_1D4EC5794(&qword_1EC7F2480, &qword_1EC7F2478, &unk_1D5648268);
  v29 = sub_1D5614D18();

  if ((v29 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5688A00);
    v39 = v27;
    sub_1D5615D48();
    OUTLINED_FUNCTION_28();
    v35 = 66;
    goto LABEL_14;
  }

  sub_1D4E69970(&v25[*(v20 + 24)], v11, &qword_1EC7EE880, &qword_1D562CC60);
  sub_1D5238A60(v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v30);
  v32 = v37;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E69970(v37 + *(v20 + 24), v13, &qword_1EC7EE880, &qword_1D562CC60);
    if (__swift_getEnumTagSinglePayload(v11, 1, v30) != 1)
    {
      sub_1D4E50004(v11, &qword_1EC7EE880, &qword_1D562CC60);
    }
  }

  else
  {
    (*(*(v30 - 8) + 32))(v13, v11, v30);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v30);
  }

  return sub_1D5237C90(v13, v32 + *(v20 + 24));
}

uint64_t sub_1D52389FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5238A60(uint64_t a1)
{
  v2 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5238ABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  if (qword_1EC7E8C20 != -1)
  {
    OUTLINED_FUNCTION_3_112();
  }

  *(v0 + 32) = qword_1EC87C048;
  v1 = qword_1EC7E8C28;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  *(v0 + 40) = qword_1EC87C050;
  v2 = qword_1EC7E8C30;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  *(v0 + 48) = qword_1EC7EE800;
  qword_1EC87C4A8 = v0;
}

uint64_t MusicCreditsSectionPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 28));
}

uint64_t MusicCreditsSectionPropertyProvider.identifierSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 32);
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MusicCreditsSectionPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_15_67() + 32);
  v3 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MusicCreditsSectionPropertyProvider.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 36);
  v4 = sub_1D5610088();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MusicCreditsSectionPropertyProvider.type.setter()
{
  v2 = *(OUTLINED_FUNCTION_15_67() + 36);
  v3 = sub_1D5610088();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MusicCreditsSectionPropertyProvider.href.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCreditsSectionPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 44));
}

uint64_t MusicCreditsSectionPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 48));
}

uint64_t MusicCreditsSectionPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 52));
}

uint64_t MusicCreditsSectionPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCreditsSectionPropertyProvider() + 56));
}

uint64_t static MusicCreditsSectionPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_206();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2488, &qword_1D5648278);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = v1[1];
  v23 = v0[1];
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_45;
    }

    v24 = *v1 == *v0 && v22 == v23;
    if (!v24 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v23)
  {
    goto LABEL_45;
  }

  v25 = v1[3];
  v26 = v0[3];
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_45;
    }

    v27 = v1[2] == v0[2] && v25 == v26;
    if (!v27 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v26)
  {
    goto LABEL_45;
  }

  v50 = v4;
  v49 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  v28 = *(v49 + 24);
  v29 = *(v16 + 48);
  sub_1D4E69970(v1 + v28, v21, &qword_1EC7EE880, &qword_1D562CC60);
  sub_1D4E69970(v0 + v28, &v21[v29], &qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_10(v21);
  if (v24)
  {
    OUTLINED_FUNCTION_10(&v21[v29]);
    if (v24)
    {
      sub_1D4E50004(v21, &qword_1EC7EE880, &qword_1D562CC60);
      goto LABEL_29;
    }

LABEL_27:
    sub_1D4E50004(v21, &qword_1EC7F2488, &qword_1D5648278);
    goto LABEL_45;
  }

  sub_1D4E69970(v21, v15, &qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_10(&v21[v29]);
  if (v30)
  {
    (*(v50 + 8))(v15, v2);
    goto LABEL_27;
  }

  v31 = v50;
  (*(v50 + 32))(v9, &v21[v29], v2);
  sub_1D52396E4(&qword_1EC7F2490, &qword_1EC7F1B38);
  v32 = sub_1D5614D18();
  v33 = *(v31 + 8);
  v33(v9, v2);
  v33(v15, v2);
  sub_1D4E50004(v21, &qword_1EC7EE880, &qword_1D562CC60);
  if ((v32 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  v34 = v49;
  OUTLINED_FUNCTION_14_61(*(v49 + 28));
  sub_1D4EF6F7C();
  if ((v35 & 1) == 0)
  {
    goto LABEL_45;
  }

  v36 = v34[8];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    goto LABEL_45;
  }

  v37 = v34[9];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_45;
  }

  v38 = v34[10];
  v39 = (v1 + v38);
  v40 = *(v1 + v38 + 8);
  v41 = (v0 + v38);
  v42 = v41[1];
  if (!v40)
  {
    if (!v42)
    {
      goto LABEL_41;
    }

LABEL_45:
    v47 = 0;
    return v47 & 1;
  }

  if (!v42)
  {
    goto LABEL_45;
  }

  v43 = *v39 == *v41 && v40 == v42;
  if (!v43 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  OUTLINED_FUNCTION_14_61(v34[11]);
  sub_1D4F286E0();
  if ((v44 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v34[12]);
  sub_1D4F286E0();
  if ((v45 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v34[13]);
  sub_1D4F286E0();
  if ((v46 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v34[14]);
  sub_1D4F286E0();
  return v47 & 1;
}

void MusicCreditsSectionPropertyProvider.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  if (v0[1])
  {
    v16 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[3])
  {
    v17 = v0[2];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v18 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  sub_1D4E69970(v0 + v18[6], v15, &qword_1EC7EE880, &qword_1D562CC60);
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v9, v15, v2);
    OUTLINED_FUNCTION_27();
    sub_1D52396E4(&qword_1EC7F2498, &qword_1EC7F24A0);
    sub_1D5614CB8();
    (*(v4 + 8))(v9, v2);
  }

  OUTLINED_FUNCTION_32_2(v18[7]);
  sub_1D4F070FC();
  v19 = v18[8];
  sub_1D560D838();
  sub_1D5239CE8(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v20 = v18[9];
  sub_1D5610088();
  sub_1D5239CE8(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v21 = (v1 + v18[10]);
  if (v21[1])
  {
    v22 = *v21;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v18[11]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v18[12]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v18[13]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v18[14]);
  sub_1D4F31AC0();
}

uint64_t sub_1D52396E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    sub_1D5239CE8(a2, type metadata accessor for CreditArtist);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.hashValue.getter()
{
  sub_1D56162D8();
  MusicCreditsSectionPropertyProvider.hash(into:)();
  return sub_1D5616328();
}

void (*sub_1D52397C8(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicCreditsSectionPropertyProvider.subscript.getter(a2, v5);
  return sub_1D5238458;
}

uint64_t sub_1D5239844()
{
  sub_1D56162D8();
  MusicCreditsSectionPropertyProvider.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5239880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D5239938(uint64_t a1)
{
  v2 = sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D52399B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5239CE8(&qword_1EC7F24B0, type metadata accessor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5239A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5239CE8(&qword_1EC7F24D0, type metadata accessor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D5239B84()
{
  sub_1D4F18AF4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D5239C84();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4F4E49C();
    if (v5 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D560D838();
    if (v6 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D5610088();
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E5CF94();
      v1 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1D5239C84()
{
  if (!qword_1EC7F24C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F24C8);
    }
  }
}

uint64_t sub_1D5239CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_57()
{

  return sub_1D4E69970(v0, v0 + 32, v1, v2);
}

uint64_t SpatialOffset.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6EC100](*&v3);
}

uint64_t SpatialOffset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6EC100](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6EC100](*&v4);
  return sub_1D5616328();
}

void SpatialOffset.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v26 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v25 - v20;
  v28 = a1;
  sub_1D4E628D4(a1, v27);
  sub_1D56119D8();
  OUTLINED_FUNCTION_2_112(&qword_1EC7F24D8);
  OUTLINED_FUNCTION_0_145(&qword_1EC7F24E0);
  sub_1D5610768();
  if (v2)
  {
    v27[0] = v2;
    v22 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v23 = v26;
      (*(v26 + 32))(v11, v13, v4);
      sub_1D5615C18();
      swift_allocError();
      v24 = v28;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
      (*(v23 + 8))(v11, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    sub_1D5415478(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*(v17 + 8))(v21, v14);
    *v25 = *v27;
  }
}

uint64_t sub_1D523A174(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D56119D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SpatialOffset.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v10 - v7;
  v10 = *v0;
  SpatialOffset.convertToCloudSpatialOffsetAttribute()();
  OUTLINED_FUNCTION_2_112(&qword_1EC7F24D8);
  OUTLINED_FUNCTION_0_145(&qword_1EC7F24E0);
  sub_1D5610778();
  return (*(v4 + 8))(v8, v1);
}

unint64_t sub_1D523A2D8()
{
  result = qword_1EC7F24E8;
  if (!qword_1EC7F24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F24E8);
  }

  return result;
}

uint64_t MusicSiriRepresentation.init(for:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  v86 = a8;
  v87 = a7;
  v88 = a6;
  v80 = a2;
  v81 = a4;
  v85 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v82 = &v74 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v74 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v74 - v41;
  v43 = sub_1D560D838();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v74 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v74 - v49;
  sub_1D523AA6C(a1, v42);
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {

    sub_1D4E50004(v42, &unk_1EC7EEC20, &unk_1D5623F70);
  }

  else
  {
    v79 = a3;
    (*(v44 + 32))(v50, v42, v43);
    sub_1D523B320(a1, &v90);
    if (v90 != 19)
    {
      v78 = v90;
      LODWORD(v75) = a10;
      (*(v44 + 16))(v48, v50, v43);
      v58 = *(type metadata accessor for MusicItemTypedIdentifier() + 28);
      v76 = a1;
      sub_1D4F1C460(&a1[v58], v34, &qword_1EC7EA358, &unk_1D561DF50);
      v59 = sub_1D5610088();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v59);
      v77 = a5;
      if (EnumTagSinglePayload == 1)
      {
        sub_1D4E50004(v34, &qword_1EC7EA358, &unk_1D561DF50);
        v61 = 1;
      }

      else
      {
        sub_1D560FDD8();
        (*(*(v59 - 8) + 8))(v34, v59);
        v61 = 0;
      }

      __swift_storeEnumTagSinglePayload(v36, v61, 1, v59);
      v62 = v88;
      sub_1D4F1C460(v88, v82, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v63 = v87;
      sub_1D4F1C460(v87, v83, &qword_1EC7EC478, &unk_1D56299D0);
      v64 = v86;
      sub_1D4F1C460(v86, v84, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v89 = v78;
      sub_1D50391CC();
      v74 = v66;
      v75 = v65;
      sub_1D4E50004(v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D4E50004(v63, &qword_1EC7EC478, &unk_1D56299D0);
      sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D523B2C4(v76);
      sub_1D4E50004(v36, &qword_1EC7EA358, &unk_1D561DF50);
      v67 = *(v44 + 8);
      v67(v48, v43);
      v67(v50, v43);
      v68 = v85;
      v69 = v74;
      *v85 = v75;
      v68[1] = v69;
      *(v68 + 16) = v78;
      v70 = v79;
      v68[3] = v80;
      v68[4] = v70;
      v71 = v77;
      v68[5] = v81;
      v68[6] = v71;
      v72 = type metadata accessor for MusicSiriRepresentation();
      sub_1D4FD23EC(v82, v68 + v72[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4FD23EC(v83, v68 + v72[9], &qword_1EC7EC478, &unk_1D56299D0);
      sub_1D4FD23EC(v84, v68 + v72[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
      v56 = v68;
      v57 = 0;
      v55 = v72;
      return __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
    }

    (*(v44 + 8))(v50, v43);
  }

  if (qword_1EC7E90D8 != -1)
  {
    swift_once();
  }

  v51 = sub_1D560C758();
  __swift_project_value_buffer(v51, qword_1EC87C330);
  v52 = sub_1D560C738();
  v53 = sub_1D56156E8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1D4E3F000, v52, v53, "Returning nil for MusicSiriRepresentation due to failure of extracting identifierSet or kind.", v54, 2u);
    MEMORY[0x1DA6ED200](v54, -1, -1);
  }

  sub_1D4E50004(v86, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v87, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v88, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D523B2C4(a1);
  v55 = type metadata accessor for MusicSiriRepresentation();
  v56 = v85;
  v57 = 1;
  return __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
}

uint64_t sub_1D523AA6C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for MusicItemTypedIdentifier();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - v7;
  v72 = sub_1D560F148();
  v68 = *(v72 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v64 - v12;
  v13 = sub_1D560E728();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D560D9A8();
  v69 = *(v16 - 8);
  v70 = v16;
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D560D838();
  v74 = *(v77 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v64 - v26;
  v28 = sub_1D5610088();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v3;
  v33 = *(v3 + 28);
  sub_1D4F1C460(&a1[v33], v27, &qword_1EC7EA358, &unk_1D561DF50);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_1D4E50004(v27, &qword_1EC7EA358, &unk_1D561DF50);
    if (qword_1EC7E90D8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D560C758();
    __swift_project_value_buffer(v34, qword_1EC87C330);
    sub_1D523C690(a1, v8);
    v35 = sub_1D560C738();
    v36 = sub_1D56156C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136446210;
      sub_1D523C690(v8, v65);
      v39 = sub_1D5614DB8();
      v41 = v40;
      sub_1D523B2C4(v8);
      v42 = sub_1D4E6835C(v39, v41, &v79);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D4E3F000, v35, v36, "Unable to find valid resource type from typedIdentifier %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA6ED200](v38, -1, -1);
      MEMORY[0x1DA6ED200](v37, -1, -1);
    }

    else
    {

      sub_1D523B2C4(v8);
    }

    v53 = 1;
    v55 = v77;
    v54 = v78;
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v43 = sub_1D560FE08();
    v44 = *a1;
    v45 = *(a1 + 1);
    v46 = v29;
    if (v43)
    {
      (*(v69 + 16))(v71, &a1[*(v76 + 24)], v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v47 = sub_1D560DB08();
      v48 = *(v47 - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1D561C050;
      (*(v48 + 104))(v51 + v50, *MEMORY[0x1E6975058], v47);

      sub_1D560E718();
      v52 = v73;
      sub_1D560D7F8();
    }

    else
    {
      sub_1D4F1C460(&a1[v33], v25, &qword_1EC7EA358, &unk_1D561DF50);

      v56 = v67;
      sub_1D560F128();
      v65 = v29;
      v57 = v68;
      (*(v68 + 16))(v66, v56, v72);
      (*(v69 + 16))(v71, &a1[*(v76 + 24)], v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v58 = sub_1D560DB08();
      v59 = *(v58 - 8);
      v60 = *(v59 + 72);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D561C050;
      (*(v59 + 104))(v62 + v61, *MEMORY[0x1E6975058], v58);
      sub_1D560E718();
      v52 = v73;
      sub_1D560D798();
      (*(v57 + 8))(v56, v72);
      v46 = v65;
    }

    (*(v46 + 8))(v32, v28);
    v55 = v77;
    v54 = v78;
    (*(v74 + 32))(v78, v52, v77);
    v53 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v54, v53, 1, v55);
}

uint64_t sub_1D523B2C4(uint64_t a1)
{
  v2 = type metadata accessor for MusicItemTypedIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D523B320(uint64_t a1@<X0>, char *a2@<X8>)
{
  v126 = a2;
  v3 = type metadata accessor for MusicItemTypedIdentifier();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v120 - v12;
  v14 = sub_1D5610088();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v121 = &v120 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v120 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v125 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v120 - v25;
  sub_1D4F1C460(a1 + *(v3 + 28), v13, &qword_1EC7EA358, &unk_1D561DF50);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EA358, &unk_1D561DF50);
    if (qword_1EC7E90D8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D560C758();
    __swift_project_value_buffer(v27, qword_1EC87C330);
    sub_1D523C690(a1, v9);
    v28 = sub_1D560C738();
    v29 = sub_1D56156C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v127 = v31;
      *v30 = 136446210;
      sub_1D523C690(v9, v7);
      v32 = sub_1D5614DB8();
      v34 = v33;
      sub_1D523B2C4(v9);
      v35 = sub_1D4E6835C(v32, v34, &v127);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D4E3F000, v28, v29, "Unable to find valid resource type from typedIdentifier %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1DA6ED200](v31, -1, -1);
      MEMORY[0x1DA6ED200](v30, -1, -1);
    }

    else
    {

      sub_1D523B2C4(v9);
    }

    goto LABEL_10;
  }

  (*(v15 + 32))(v26, v13, v14);
  v36 = *(v15 + 16);
  v37 = v125;
  v123 = v26;
  v36(v125, v26, v14);
  v38 = v124;
  sub_1D560FFB8();
  sub_1D4E5E518(&qword_1EDD53350);
  v39 = sub_1D5614D18();
  v40 = *(v15 + 8);
  v40(v38, v14);
  if ((v39 & 1) == 0)
  {
    sub_1D560FEA8();
    v41 = sub_1D5614D18();
    v40(v38, v14);
    if ((v41 & 1) == 0)
    {
      sub_1D560FE78();
      v43 = sub_1D5614D18();
      v40(v38, v14);
      if (v43)
      {
        v44 = v14;
        v40(v37, v14);
        if (qword_1EC7E90D8 != -1)
        {
          swift_once();
        }

        v45 = sub_1D560C758();
        __swift_project_value_buffer(v45, qword_1EC87C330);
        v46 = sub_1D560C738();
        v47 = sub_1D56156E8();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v123;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1D4E3F000, v46, v47, "Unable to accurately transform appleCurator resource type. Defaulting to curator kind.", v50, 2u);
          MEMORY[0x1DA6ED200](v50, -1, -1);
        }

        v51 = v49;
        v52 = v44;
        goto LABEL_18;
      }

      sub_1D560FFD8();
      v53 = sub_1D5614D18();
      v40(v38, v14);
      if (v53 & 1) != 0 || (sub_1D560FEE8(), v54 = sub_1D5614D18(), v40(v38, v14), (v54))
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 1;
        goto LABEL_11;
      }

      sub_1D5610028();
      v55 = sub_1D5614D18();
      v40(v38, v14);
      if (v55)
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 2;
        goto LABEL_11;
      }

      sub_1D560FFF8();
      v56 = sub_1D5614D18();
      v40(v38, v14);
      if (v56)
      {
        v40(v37, v14);
        v51 = v123;
        v52 = v14;
LABEL_18:
        v40(v51, v52);
        v42 = 3;
        goto LABEL_11;
      }

      sub_1D560FED8();
      v57 = sub_1D5614D18();
      v40(v38, v14);
      if (v57)
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 4;
        goto LABEL_11;
      }

      sub_1D560FFC8();
      v58 = sub_1D5614D18();
      v40(v38, v14);
      if (v58)
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 5;
        goto LABEL_11;
      }

      sub_1D560FE28();
      v59 = sub_1D5614D18();
      v40(v38, v14);
      if (v59)
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 6;
        goto LABEL_11;
      }

      sub_1D560FE38();
      v60 = sub_1D5614D18();
      v40(v38, v14);
      if (v60 & 1) != 0 || (sub_1D560FDF8(), v61 = sub_1D5614D18(), v40(v38, v14), (v61))
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 7;
        goto LABEL_11;
      }

      sub_1D5610038();
      v62 = sub_1D5614D18();
      v40(v38, v14);
      if (v62 & 1) != 0 || (sub_1D560FF58(), v63 = sub_1D5614D18(), v40(v38, v14), (v63))
      {
        v40(v37, v14);
        v40(v123, v14);
        v42 = 8;
        goto LABEL_11;
      }

      sub_1D560FF08();
      v64 = sub_1D5614D18();
      v65 = v38;
      v66 = v14;
      v40(v65, v14);
      if (v64)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 9;
        goto LABEL_11;
      }

      v67 = v124;
      sub_1D560FE58();
      v68 = sub_1D5614D18();
      v40(v67, v14);
      if (v68)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 11;
        goto LABEL_11;
      }

      v69 = v124;
      sub_1D560FFA8();
      v70 = sub_1D5614D18();
      v40(v69, v14);
      if (v70 & 1) != 0 || (v71 = v124, sub_1D560FE48(), v72 = sub_1D5614D18(), v40(v71, v14), (v72))
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 12;
        goto LABEL_11;
      }

      v73 = v124;
      sub_1D5610008();
      v74 = sub_1D5614D18();
      v40(v73, v14);
      if (v74)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 13;
        goto LABEL_11;
      }

      v75 = v124;
      sub_1D5610078();
      v76 = sub_1D5614D18();
      v40(v75, v14);
      if (v76)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 14;
        goto LABEL_11;
      }

      v77 = v124;
      sub_1D5610068();
      v78 = sub_1D5614D18();
      v40(v77, v14);
      if (v78)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 15;
        goto LABEL_11;
      }

      v79 = v124;
      sub_1D560FFE8();
      v80 = sub_1D5614D18();
      v40(v79, v14);
      if (v80)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 16;
        goto LABEL_11;
      }

      v81 = v124;
      sub_1D560FF28();
      v82 = sub_1D5614D18();
      v40(v81, v14);
      if (v82)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 17;
        goto LABEL_11;
      }

      v83 = v124;
      sub_1D560FF38();
      v84 = sub_1D5614D18();
      v40(v83, v14);
      if (v84)
      {
        v40(v125, v14);
        v40(v123, v14);
        v42 = 18;
        goto LABEL_11;
      }

      v85 = v124;
      sub_1D560FEC8();
      v86 = sub_1D5614D18();
      v40(v85, v14);
      if (v86)
      {
        goto LABEL_67;
      }

      v87 = v124;
      sub_1D560FE88();
      v88 = sub_1D5614D18();
      v40(v87, v14);
      if (v88)
      {
        goto LABEL_67;
      }

      v89 = v124;
      sub_1D560FF48();
      v90 = sub_1D5614D18();
      v40(v89, v14);
      if (v90)
      {
        goto LABEL_67;
      }

      v91 = v124;
      sub_1D560FE98();
      v92 = sub_1D5614D18();
      v40(v91, v14);
      if (v92)
      {
        goto LABEL_67;
      }

      v93 = v124;
      sub_1D560FF68();
      v94 = sub_1D5614D18();
      v40(v93, v14);
      if (v94)
      {
        goto LABEL_67;
      }

      v95 = v124;
      sub_1D560FF98();
      v96 = sub_1D5614D18();
      v40(v95, v14);
      if (v96)
      {
        goto LABEL_67;
      }

      v97 = v124;
      sub_1D560FF78();
      v98 = sub_1D5614D18();
      v40(v97, v14);
      if (v98)
      {
        goto LABEL_67;
      }

      v99 = v124;
      sub_1D560FF88();
      v100 = sub_1D5614D18();
      v40(v99, v14);
      if (v100)
      {
        goto LABEL_67;
      }

      v101 = v124;
      sub_1D560FF18();
      v102 = sub_1D5614D18();
      v40(v101, v14);
      if (v102 & 1) != 0 || (v103 = v124, sub_1D560FEB8(), v104 = sub_1D5614D18(), v40(v103, v14), (v104))
      {
LABEL_67:
        v40(v125, v14);
      }

      else
      {
        v116 = v124;
        sub_1D560FE68();
        v117 = v125;
        v118 = sub_1D5614D18();
        v40(v116, v14);
        v40(v117, v14);
        if ((v118 & 1) == 0)
        {
          if (qword_1EC7E90D8 != -1)
          {
            swift_once();
          }

          v119 = sub_1D560C758();
          __swift_project_value_buffer(v119, qword_1EC87C330);
          v36(v122, v123, v14);
          v106 = sub_1D560C738();
          v107 = sub_1D56156C8();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v127 = v109;
            *v108 = 136446210;
            sub_1D4E5E518(&qword_1EDD53338);
            v110 = v122;
            goto LABEL_72;
          }

          v115 = v122;
LABEL_74:
          v40(v115, v14);
          goto LABEL_75;
        }
      }

      if (qword_1EC7E90D8 != -1)
      {
        swift_once();
      }

      v105 = sub_1D560C758();
      __swift_project_value_buffer(v105, qword_1EC87C330);
      v36(v121, v123, v14);
      v106 = sub_1D560C738();
      v107 = sub_1D56156C8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v127 = v109;
        *v108 = 136446210;
        sub_1D4E5E518(&qword_1EDD53338);
        v110 = v121;
LABEL_72:
        v111 = sub_1D56160F8();
        v113 = v112;
        v40(v110, v66);
        v114 = sub_1D4E6835C(v111, v113, &v127);

        *(v108 + 4) = v114;
        _os_log_impl(&dword_1D4E3F000, v106, v107, "Resources of type %{public}s cannot be represented using MusicSiriRepresentation. Returning nil.", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x1DA6ED200](v109, -1, -1);
        MEMORY[0x1DA6ED200](v108, -1, -1);

LABEL_75:
        v40(v123, v66);
LABEL_10:
        v42 = 19;
        goto LABEL_11;
      }

      v115 = v121;
      goto LABEL_74;
    }
  }

  v40(v37, v14);
  v40(v123, v14);
  v42 = 0;
LABEL_11:
  *v126 = v42;
}

uint64_t sub_1D523C690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemTypedIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D523C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = sub_1D560D4C8();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D560F148();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = _s14IdentifierKindOMa();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v15 = *(*(v76 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v56 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2500, &unk_1D5648580);
  v19 = *(*(v73 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v73);
  v80 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v72 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v56 - v24;
  v25 = *(a3 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  sub_1D4F03CA4();
  v26 = v81;
  v71 = v25;
  if (v25)
  {
    v67 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
    v28 = v8;
    v29 = 0;
    v30 = *(v27 - 8);
    v65 = a3 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v66 = v30;
    v60 = (v5 + 32);
    v59 = (v5 + 8);
    v70 = *(a2 + 16);
    v58 = (v28 + 32);
    v57 = (v28 + 8);
    v68 = v14;
    v69 = v11;
    while (v70 != v29)
    {
      v78 = v26;
      v31 = v76;
      v32 = *(v76 + 48);
      v33 = v67 + *(v11 + 72) * v29;
      v34 = v74;
      sub_1D5241930(v33, v74);
      sub_1D4F1C460(v65 + *(v66 + 72) * v29, v34 + v32, &unk_1EC7F1970, &qword_1D561F4A0);
      v35 = v75;
      sub_1D4FD23EC(v34, v75, &qword_1EC7F24F8, &qword_1D5648578);
      v36 = *(v31 + 48);
      v37 = v73;
      v38 = *(v73 + 48);
      v39 = v79;
      sub_1D5241994(v35, v79);
      sub_1D4FD23EC(v35 + v36, v39 + v38, &unk_1EC7F1970, &qword_1D561F4A0);
      v40 = v72;
      sub_1D4F1C460(v39, v72, &qword_1EC7F2500, &unk_1D5648580);
      v41 = *(v37 + 48);
      v42 = v80;
      sub_1D5241994(v40, v80);
      sub_1D4FD23EC(v40 + v41, v42 + v41, &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D5241930(v42, v14);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v26 = v78;
        if (EnumCaseMultiPayload == 1)
        {
          v45 = *v14;
          v44 = v14[1];
        }

        else
        {
          v50 = v63;
          v51 = v14;
          v52 = v64;
          (*v60)(v63, v51, v64);
          v45 = sub_1D560D4B8();
          v44 = v53;
          (*v59)(v50, v52);
        }
      }

      else
      {
        v46 = v61;
        v47 = v14;
        v48 = v62;
        (*v58)(v61, v47, v62);
        v45 = sub_1D560F138();
        v44 = v49;
        (*v57)(v46, v48);
        v26 = v78;
      }

      sub_1D4E50004(v80, &qword_1EC7F2500, &unk_1D5648580);
      sub_1D4E50004(v79, &qword_1EC7F2500, &unk_1D5648580);
      v81 = v26;
      v54 = *(v26 + 16);
      if (v54 >= *(v26 + 24) >> 1)
      {
        sub_1D4F03CA4();
        v26 = v81;
      }

      ++v29;
      *(v26 + 16) = v54 + 1;
      v55 = v26 + 16 * v54;
      *(v55 + 32) = v45;
      *(v55 + 40) = v44;
      v14 = v68;
      v11 = v69;
      if (v71 == v29)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t INPlayMediaIntent.extractCorrespondingSongCatalogIDs()()
{
  v1[10] = v0;
  v2 = sub_1D5613838();
  v1[11] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[12] = v3;
  v5 = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v1[15] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F0, &unk_1D5648560);
  v1[18] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE508, &unk_1D562B330);
  v1[20] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[21] = v14;
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v1[23] = v17;
  OUTLINED_FUNCTION_69(v17);
  v1[24] = v18;
  v20 = *(v19 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v1[26] = v21;
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  v1[27] = OUTLINED_FUNCTION_167();
  v1[28] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2500, &unk_1D5648580);
  v1[29] = v24;
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  v1[37] = OUTLINED_FUNCTION_167();
  v1[38] = swift_task_alloc();
  v30 = sub_1D560D4C8();
  v1[39] = v30;
  OUTLINED_FUNCTION_69(v30);
  v1[40] = v31;
  v33 = *(v32 + 64);
  v1[41] = OUTLINED_FUNCTION_167();
  v1[42] = swift_task_alloc();
  v34 = _s14IdentifierKindOMa();
  v1[43] = v34;
  OUTLINED_FUNCTION_69(v34);
  v1[44] = v35;
  v37 = *(v36 + 64);
  v1[45] = OUTLINED_FUNCTION_167();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2508, &qword_1D5648590);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  v1[50] = OUTLINED_FUNCTION_127();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_69(v41);
  v1[51] = v42;
  v44 = *(v43 + 64);
  v1[52] = OUTLINED_FUNCTION_167();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v45 = sub_1D560F148();
  v1[57] = v45;
  OUTLINED_FUNCTION_69(v45);
  v1[58] = v46;
  v48 = *(v47 + 64);
  v1[59] = OUTLINED_FUNCTION_167();
  v1[60] = swift_task_alloc();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  v1[61] = OUTLINED_FUNCTION_127();
  v52 = sub_1D560D838();
  v1[62] = v52;
  OUTLINED_FUNCTION_69(v52);
  v1[63] = v53;
  v55 = *(v54 + 64);
  v1[64] = OUTLINED_FUNCTION_167();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D523D274, 0, 0);
}

uint64_t sub_1D523D274()
{
  v222 = sub_1D54233C8(v0[10]);
  if (v222)
  {
    sub_1D523FD40(MEMORY[0x1E69E7CC0]);
    v2 = v1;
    v4 = v3;
    v0[6] = v5;
    v0[7] = v1;
    v0[8] = v3;
    v6 = sub_1D4E62628(v222);
    v226 = v0;
    v218 = v6;
    if (v6)
    {
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v222 & 0xC000000000000001;
        v211 = (v0[63] + 32);
        v10 = v0[58];
        v201 = (v10 + 16);
        v203 = (v10 + 32);
        v199 = (v10 + 8);
        v11 = v0[40];
        v197 = v0[49];
        v193 = (v11 + 32);
        v195 = (v11 + 8);
        v191 = (v11 + 16);
        v12 = &selRef_initWithType_itemIdentifier_;
        while (1)
        {
          if (v9)
          {
            v13 = MEMORY[0x1DA6EB9B0](v8, v222);
          }

          else
          {
            v13 = *(v222 + 8 * v8 + 32);
          }

          v14 = v13;
          if ([v13 v12[321]] == 1)
          {
            v16 = v0[61];
            v15 = v0[62];
            v17 = v14;
            sub_1D5422730(v14, v16);
            if (OUTLINED_FUNCTION_12_63() != 1)
            {
              v214 = v17;
              v20 = v0[56];
              v19 = v0[57];
              (*v211)(v0[67], v0[61], v0[62]);
              sub_1D560D7A8();
              v21 = OUTLINED_FUNCTION_12_63();
              v22 = v0[67];
              if (v21 != 1)
              {
                v205 = v0[62];
                v32 = v0[60];
                v33 = v0[57];
                v34 = v0[55];
                v35 = v0[50];
                v36 = v226[49];
                v37 = v226[43];
                (*v203)(v32, v0[56], v33);
                v38 = *v201;
                (*v201)(v34, v32, v33);
                __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
                v38(v36, v32, v33);
                swift_storeEnumTagMultiPayload();
                sub_1D523F018(v34, v36, v35);

                v0 = v226;
                sub_1D52418D4(v36);
                sub_1D4E50004(v34, &unk_1EC7F1970, &qword_1D561F4A0);
                v39 = sub_1D4E50004(v35, &qword_1EC7F2508, &qword_1D5648590);
                OUTLINED_FUNCTION_8_77(v39, v40, v41, v42, v43, v44, v45, v46, v173, v174, v175, v176, v177, v178, v179, v180, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199);
                v47 = v32;
                v9 = v222 & 0xC000000000000001;
                v48(v47, v33);
LABEL_16:
                OUTLINED_FUNCTION_203();
                v49(v22, v205);
LABEL_17:
                v12 = &selRef_initWithType_itemIdentifier_;
                goto LABEL_18;
              }

              sub_1D4E50004(v0[56], &unk_1EC7F1970, &qword_1D561F4A0);
              v23 = sub_1D560D808();
              v22 = v0[67];
              if (v24)
              {
                v25 = v23;
                v26 = v24;
                v205 = v0[62];
                v27 = v226[55];
                v28 = v226[50];
                v29 = v226[49];
                v30 = v226[43];
                __swift_storeEnumTagSinglePayload(v27, 1, 1, v0[57]);
                *v29 = v25;
                *(v197 + 8) = v26;
                swift_storeEnumTagMultiPayload();
                sub_1D523F018(v27, v29, v28);

                sub_1D52418D4(v29);
                v0 = v226;
                sub_1D4E50004(v27, &unk_1EC7F1970, &qword_1D561F4A0);
                v31 = v28;
                v9 = v222 & 0xC000000000000001;
                sub_1D4E50004(v31, &qword_1EC7F2508, &qword_1D5648590);
                goto LABEL_16;
              }

              v51 = v0[38];
              v50 = v0[39];
              v52 = v0[67];
              sub_1D560D5C8();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v50);
              v54 = v0[38];
              if (EnumTagSinglePayload == 1)
              {
                v55 = v0[67];
                v56 = v0[62];
                OUTLINED_FUNCTION_203();
                v57();

                sub_1D4E50004(v54, &unk_1EC7EBF20, &unk_1D561F530);
                goto LABEL_17;
              }

              (*v193)(v0[42], v0[38], v0[39]);
              v58 = sub_1D560D488();
              v60 = v59;
              sub_1D560F0D8();
              _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
              v61 = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
              v63 = v62;

              if (v58 == v61 && v60 == v63)
              {
              }

              else
              {
                v65 = sub_1D5616168();

                if ((v65 & 1) == 0)
                {
                  v0 = v226;
                  v66 = v226[67];
                  v67 = v226[62];
                  v68 = v226[42];
                  v69 = v226[39];

                  OUTLINED_FUNCTION_11_79(v70, v71, v72, v73, v74, v75, v76, v77, v173, v174, v175, v176, v177, v178, v179, v180, v181, v183, v185, v187, v189, v191, v193, v195);
                  v78(v68, v69);
                  OUTLINED_FUNCTION_203();
                  v80 = v66;
                  v81 = v67;
LABEL_30:
                  v79(v80, v81);
                  v9 = v222 & 0xC000000000000001;
                  goto LABEL_17;
                }
              }

              v0 = v226;
              v206 = v226[67];
              v82 = v226[62];
              v83 = v226[55];
              v85 = v226[49];
              v84 = v226[50];
              v87 = v226[42];
              v86 = v226[43];
              v88 = v226[39];
              __swift_storeEnumTagSinglePayload(v83, 1, 1, v226[57]);
              (*v191)(v85, v87, v88);
              swift_storeEnumTagMultiPayload();
              sub_1D523F018(v83, v85, v84);

              sub_1D52418D4(v85);
              sub_1D4E50004(v83, &unk_1EC7F1970, &qword_1D561F4A0);
              v89 = sub_1D4E50004(v84, &qword_1EC7F2508, &qword_1D5648590);
              OUTLINED_FUNCTION_11_79(v89, v90, v91, v92, v93, v94, v95, v96, v173, v174, v175, v176, v177, v178, v179, v180, v181, v183, v185, v187, v189, v191, v193, v195);
              v97(v87, v88);
              OUTLINED_FUNCTION_203();
              v80 = v206;
              v81 = v82;
              goto LABEL_30;
            }

            v18 = v0[61];

            sub_1D4E50004(v18, &unk_1EC7EEC20, &unk_1D5623F70);
          }

          else
          {
          }

LABEL_18:
          if (v218 == ++v8)
          {

            v2 = v0[7];
            v4 = v0[8];
            goto LABEL_33;
          }
        }
      }

      goto LABEL_70;
    }

LABEL_33:
    v0[69] = v2;
    v0[68] = v4;
    sub_1D523FD40(MEMORY[0x1E69E7CC0]);
    v100 = v99;
    v228 = v6;
    v229 = v7;
    v198 = *(v4 + 16);
    v200 = v2;
    if (v198)
    {
      v101 = 0;
      v188 = v0[36];
      v223 = v0[26];
      v196 = v0[44];
      v192 = v4;
      v194 = v2 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v190 = v0[51];
      v182 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v186 = v4 + v182;
      v204 = v0[29];
      v184 = *(v204 + 48);
      while (v101 < *(v2 + 16))
      {
        v102 = v0[28];
        v103 = *(v223 + 48);
        v6 = sub_1D5241930(v194 + *(v196 + 72) * v101, v102);
        if (v101 >= *(v4 + 16))
        {
          goto LABEL_69;
        }

        v219 = v100;
        v209 = v0[48];
        v212 = v0[43];
        v104 = v226[36];
        v105 = v226[35];
        v106 = v226[34];
        v207 = v226[33];
        v208 = v226[32];
        v107 = v226[31];
        v215 = v101;
        v202 = *(v190 + 72);
        v108 = v186 + v202 * v101;
        v109 = v226[28];
        v110 = v226[27];
        sub_1D4F1C460(v108, v102 + v103, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4FD23EC(v109, v110, &qword_1EC7F24F8, &qword_1D5648578);
        v111 = *(v223 + 48);
        sub_1D5241994(v110, v104);
        sub_1D4FD23EC(v110 + v111, v188 + v184, &unk_1EC7F1970, &qword_1D561F4A0);
        v112 = *(v204 + 48);
        sub_1D5241994(v104, v105);
        sub_1D4FD23EC(v188 + v184, v105 + v112, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v105, v106, &qword_1EC7F2500, &unk_1D5648580);
        v113 = *(v204 + 48);
        sub_1D5241930(v106, v207);
        sub_1D4F1C460(v106 + v113, v207 + *(v204 + 48), &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v207, v208, &qword_1EC7F2500, &unk_1D5648580);
        v114 = *(v204 + 48);
        sub_1D5241994(v208, v107);
        sub_1D4FD23EC(v208 + v114, v107 + v114, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D5241930(v107, v209);
        LODWORD(v105) = swift_getEnumCaseMultiPayload();
        sub_1D52418D4(v209);
        sub_1D4E50004(v107, &qword_1EC7F2500, &unk_1D5648580);
        sub_1D4E50004(v207, &qword_1EC7F2500, &unk_1D5648580);
        v0 = v226;
        sub_1D4E50004(v106 + v113, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D52418D4(v106);
        v115 = v226[35];
        if (v105)
        {
          v116 = v226[30];
          sub_1D5240510(v226[35]);
          v117 = OUTLINED_FUNCTION_128();
          sub_1D4F1C460(v117, v118, &qword_1EC7F2500, &unk_1D5648580);
          v100 = v219;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = *(v219 + 16);
            sub_1D4F0469C();
            v100 = v219;
          }

          v2 = v200;
          v120 = *(v100 + 16);
          if (v120 >= *(v100 + 24) >> 1)
          {
            sub_1D4F0469C();
            v100 = v219;
          }

          v121 = v226[30];
          v122 = *(v204 + 48);
          sub_1D4E50004(v226[35], &qword_1EC7F2500, &unk_1D5648580);
          *(v100 + 16) = v120 + 1;
          sub_1D4FD23EC(v121 + v122, v100 + v182 + v120 * v202, &unk_1EC7F1970, &qword_1D561F4A0);
          v6 = sub_1D52418D4(v121);
        }

        else
        {
          v6 = sub_1D4E50004(v226[35], &qword_1EC7F2500, &unk_1D5648580);
          v2 = v200;
          v100 = v219;
        }

        v101 = v215 + 1;
        v4 = v192;
        if (v198 == v215 + 1)
        {
          v124 = v228;
          v123 = v229;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return MEMORY[0x1EEDCEAC0](v6, v7);
    }

    v124 = v6;
    v123 = v7;
LABEL_47:
    v0[72] = v100;
    v0[71] = v124;
    v0[70] = v123;
    if (*(v100 + 16))
    {
      v125 = v0[25];
      v126 = v0[23];
      v127 = v0[11];
      sub_1D560DD68();
      v128 = OUTLINED_FUNCTION_159();
      sub_1D523C6F4(v128, v129, v100);
      swift_getKeyPath();
      MEMORY[0x1DA6E3B00]();

      v130 = *(MEMORY[0x1E6975088] + 4);
      v131 = swift_task_alloc();
      v0[73] = v131;
      *v131 = v0;
      v131[1] = sub_1D523E1B0;
      v132 = v0[25];
      v6 = v0[22];
      v7 = v0[23];

      return MEMORY[0x1EEDCEAC0](v6, v7);
    }

    v133 = v0[6];
    v134 = v0[8];

    v135 = sub_1D52402E8(v133, v2, v134);

    v136 = *(v135 + 16);
    if (v136)
    {
      OUTLINED_FUNCTION_9_78();
      v138 = v135 + v137;
      v140 = *(v139 + 72);
      v220 = (v141 + 8);
      v224 = MEMORY[0x1E69E7CC0];
      v216 = v140;
      do
      {
        v142 = v0[57];
        v143 = v0[52];
        v144 = v0[53];
        sub_1D4F1C460(v138, v144, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v144, v143, &unk_1EC7F1970, &qword_1D561F4A0);
        if (__swift_getEnumTagSinglePayload(v143, 1, v142) == 1)
        {
          v145 = v0[52];
          sub_1D4E50004(v0[53], &unk_1EC7F1970, &qword_1D561F4A0);
          sub_1D4E50004(v145, &unk_1EC7F1970, &qword_1D561F4A0);
        }

        else
        {
          v146 = v0[57];
          v147 = v0[52];
          v148 = v0[53];
          v149 = sub_1D560F138();
          v151 = v150;
          sub_1D4E50004(v148, &unk_1EC7F1970, &qword_1D561F4A0);
          v152 = *v220;
          v153 = OUTLINED_FUNCTION_159();
          v154(v153);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v155 = v224;
          }

          else
          {
            v158 = *(v224 + 16);
            sub_1D4F0062C();
            v155 = v159;
          }

          v156 = *(v155 + 16);
          if (v156 >= *(v155 + 24) >> 1)
          {
            sub_1D4F0062C();
            v155 = v160;
          }

          *(v155 + 16) = v156 + 1;
          v224 = v155;
          v157 = v155 + 16 * v156;
          *(v157 + 32) = v149;
          *(v157 + 40) = v151;
          v0 = v226;
          v140 = v216;
        }

        v138 += v140;
        --v136;
      }

      while (v136);
    }

    else
    {

      v224 = MEMORY[0x1E69E7CC0];
    }

    v161 = v0[72];
    v162 = v0[71];
    v163 = v0[70];

    v98 = v224;
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
  }

  v164 = v0[67];
  v165 = v0[66];
  v166 = v0[65];
  v167 = v0[64];
  v168 = v0[60];
  v169 = v0[61];
  v170 = v0[59];
  OUTLINED_FUNCTION_1_113();
  v210 = v0[25];
  v213 = v0[22];
  v217 = v0[19];
  v221 = v0[17];
  v225 = v0[14];
  v227 = v0[13];

  v171 = v0[1];

  return v171(v98);
}

uint64_t sub_1D523E1B0()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_1D523ED84;
  }

  else
  {
    v3 = sub_1D523E2C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D523E2C4()
{
  v283 = v0[63];
  v1 = v0[58];
  v242 = v0[47];
  v258 = v0[46];
  v262 = v0[44];
  v2 = v0[40];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[12];
  sub_1D560DE38();
  (*(v9 + 16))(v5, v6, v8);
  v11 = *(v7 + 36);
  v12 = v5;
  sub_1D5241870();
  v274 = v11;
  sub_1D5615608();
  (*(v9 + 8))(v6, v8);
  v272 = (v10 + 32);
  v273 = (v10 + 16);
  v246 = (v2 + 16);
  v250 = (v1 + 16);
  v254 = (v2 + 32);
  v266 = (v1 + 8);
  v270 = (v1 + 32);
  v271 = (v10 + 8);
  v238 = (v2 + 8);
  v276 = (v283 + 8);
  v278 = v5;
  while (1)
  {
    v13 = v0[19];
    v14 = v0[15];
    sub_1D5615648();
    if (*(v12 + v274) == v0[9])
    {
      break;
    }

    v15 = v0[66];
    v281 = v0[62];
    v284 = v0[57];
    v279 = v0[54];
    v16 = v0[19];
    v17 = v0[14];
    v18 = v0[15];
    v19 = v0[13];
    v20 = v0[11];
    v21 = sub_1D5615688();
    (*v273)(v17);
    v21(v0 + 2, 0);
    v12 = v278;
    sub_1D5615658();
    (*v272)(v19, v17, v20);
    sub_1D560EC98();
    sub_1D560D7A8();
    v22 = *v276;
    (*v276)(v15, v281);
    if (__swift_getEnumTagSinglePayload(v279, 1, v284) == 1)
    {
      v29 = v0[54];
      OUTLINED_FUNCTION_8_77(v0[13], v0[11], v23, v24, v25, v26, v27, v28, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v271);
      v30();
      sub_1D4E50004(v29, &unk_1EC7F1970, &qword_1D561F4A0);
    }

    else
    {
      v31 = v0[65];
      v32 = v0[62];
      v33 = v0[13];
      v34 = v0[11];
      (*v270)(v0[59], v0[54], v0[57]);
      sub_1D560EC98();
      v35 = sub_1D560D808();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_128();
      v22(v38);
      if (v37)
      {
        v39 = v0[43];
        v40 = v0[6];
        v41 = v0[7];
        *v0[46] = v35;
        *(v258 + 8) = v37;
        v42 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_68(v42, v43, v44, v45, v46, v47, v48, v49, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262);
        v50 = *(v41 + 16);
        v51 = v0[46];

        if (v40)
        {

          sub_1D5240E38(v51, v41 + v31, v50, (v40 + 16), v40 + 32);
        }

        else
        {
          sub_1D5240794(v51, v41 + v31, v50);
        }

        v53 = v52;
        v54 = v0[46];

        sub_1D52418D4(v54);
        if ((v53 & 1) == 0)
        {
          v100 = v0[43];
          *v0[47] = v35;
          *(v242 + 8) = v37;
          swift_storeEnumTagMultiPayload();
          goto LABEL_20;
        }

        v12 = v278;
      }

      v55 = v0[64];
      v56 = v0[62];
      v57 = v0[39];
      v58 = v0[37];
      v59 = v0[13];
      v60 = v0[11];
      sub_1D560EC98();
      sub_1D560D5C8();
      v61 = OUTLINED_FUNCTION_128();
      v22(v61);
      if (OUTLINED_FUNCTION_12_63() == 1)
      {
        v68 = v0[37];
        v69 = v0[13];
        v70 = v0[11];
        OUTLINED_FUNCTION_11_79(v0[59], v0[57], v62, v63, v64, v65, v66, v67, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266);
        v72 = v71();
        OUTLINED_FUNCTION_8_77(v72, v73, v74, v75, v76, v77, v78, v79, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251, v255, v259, v263, v267, v270, v271);
        v80 = OUTLINED_FUNCTION_128();
        v81(v80);
        sub_1D4E50004(v68, &unk_1EC7EBF20, &unk_1D561F530);
      }

      else
      {
        v82 = v0[45];
        v83 = v0[43];
        v84 = v0[41];
        v85 = v0[39];
        v86 = *v254;
        (*v254)(v84, v0[37], v85);
        v88 = v0[6];
        v87 = v0[7];
        (*v246)(v82, v84, v85);
        OUTLINED_FUNCTION_128();
        v89 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_68(v89, v90, v91, v92, v93, v94, v95, v96, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262);
        v97 = *(v87 + 16);
        v98 = v0[45];

        if (v88)
        {

          sub_1D5240E38(v98, v87 + v82, v97, (v88 + 16), v88 + 32);
        }

        else
        {
          sub_1D5240794(v98, v87 + v82, v97);
        }

        v101 = v99;
        v102 = v0[45];

        sub_1D52418D4(v102);
        if (v101)
        {
          v103 = v0[59];
          v104 = v0[57];
          v105 = v0[13];
          v106 = v0[11];
          v107 = (*v238)(v0[41], v0[39]);
          OUTLINED_FUNCTION_11_79(v107, v108, v109, v110, v111, v112, v113, v114, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266);
          v115 = OUTLINED_FUNCTION_159();
          v117 = v116(v115);
          OUTLINED_FUNCTION_8_77(v117, v118, v119, v120, v121, v122, v123, v124, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v256, v260, v264, v268, v270, v271);
          v126 = v105;
          v127 = v106;
          goto LABEL_21;
        }

        v128 = v0[43];
        v86(v0[47], v0[41], v0[39]);
        OUTLINED_FUNCTION_159();
        swift_storeEnumTagMultiPayload();
LABEL_20:
        v129 = v0[57];
        v130 = v0[55];
        v131 = v0[50];
        v132 = v0[47];
        v133 = v0[13];
        v134 = v0[11];
        (*v250)(v130, v0[59], v129);
        __swift_storeEnumTagSinglePayload(v130, 0, 1, v129);
        sub_1D523F018(v130, v132, v131);
        sub_1D4E50004(v130, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4E50004(v131, &qword_1EC7F2508, &qword_1D5648590);
        v135 = sub_1D52418D4(v132);
        OUTLINED_FUNCTION_11_79(v135, v136, v137, v138, v139, v140, v141, v142, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266);
        v143 = OUTLINED_FUNCTION_128();
        v145 = v144(v143);
        OUTLINED_FUNCTION_8_77(v145, v146, v147, v148, v149, v150, v151, v152, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v270, v271);
        v126 = v133;
        v127 = v134;
LABEL_21:
        v125(v126, v127);
        v12 = v278;
      }
    }
  }

  v154 = v0[24];
  v153 = v0[25];
  v156 = v0[22];
  v155 = v0[23];
  v157 = v0[20];
  v158 = v0[21];
  sub_1D4E50004(v0[19], &qword_1EC7F24F0, &unk_1D5648560);
  (*(v158 + 8))(v156, v157);
  v159 = *(v154 + 8);
  v160 = OUTLINED_FUNCTION_159();
  v161(v160);
  v163 = v0[6];
  v162 = v0[7];
  v164 = v0[8];

  v165 = sub_1D52402E8(v163, v162, v164);

  v166 = *(v165 + 16);
  if (v166)
  {
    OUTLINED_FUNCTION_9_78();
    v168 = v165 + v167;
    v170 = *(v169 + 72);
    v280 = (v171 + 8);
    v172 = MEMORY[0x1E69E7CC0];
    v173 = &unk_1EC7F1970;
    v174 = &qword_1D561F4A0;
    v282 = v170;
    do
    {
      v175 = v0[57];
      v177 = v0[52];
      v176 = v0[53];
      sub_1D4F1C460(v168, v176, v173, v174);
      sub_1D4F1C460(v176, v177, v173, v174);
      if (__swift_getEnumTagSinglePayload(v177, 1, v175) == 1)
      {
        v178 = v0[52];
        sub_1D4E50004(v0[53], v173, v174);
        sub_1D4E50004(v178, v173, v174);
      }

      else
      {
        v179 = v0[57];
        v180 = v174;
        v181 = v173;
        v182 = v172;
        v183 = v0[52];
        v184 = v0[53];
        v285 = sub_1D560F138();
        v186 = v185;
        v187 = v184;
        v172 = v182;
        v173 = v181;
        v174 = v180;
        sub_1D4E50004(v187, v173, v180);
        (*v280)(v183, v179);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v190 = *(v172 + 16);
          sub_1D4F0062C();
          v172 = v191;
        }

        v188 = *(v172 + 16);
        if (v188 >= *(v172 + 24) >> 1)
        {
          sub_1D4F0062C();
          v172 = v192;
        }

        *(v172 + 16) = v188 + 1;
        v189 = v172 + 16 * v188;
        v170 = v282;
        *(v189 + 32) = v285;
        *(v189 + 40) = v186;
      }

      v168 += v170;
      --v166;
    }

    while (v166);

    v193 = v172;
  }

  else
  {

    v193 = MEMORY[0x1E69E7CC0];
  }

  v194 = v0[72];
  v195 = v0[71];
  v196 = v0[70];

  v197 = v0[67];
  v198 = v0[66];
  v199 = v0[65];
  v200 = v0[64];
  v202 = v0[60];
  v201 = v0[61];
  v203 = v0[59];
  OUTLINED_FUNCTION_1_113();
  v275 = v0[25];
  v277 = v0[22];
  OUTLINED_FUNCTION_10_78();

  v204 = v0[1];

  return v204(v193);
}

uint64_t sub_1D523ED84()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[61];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[54];
  v23 = v0[53];
  v24 = v0[52];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[33];
  v39 = v0[32];
  v40 = v0[31];
  v41 = v0[30];
  v42 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  v43 = v0[27];
  v44 = v0[22];
  OUTLINED_FUNCTION_10_78();

  (*(v8 + 8))(v9, v10);
  v11 = v0[6];

  v12 = v0[1];
  v13 = v0[74];

  return v12();
}

void sub_1D523F018(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25[-v10];
  v12 = v3[1];
  v26 = *v3;
  v27 = v12;
  v28 = a2;
  v13 = sub_1D523FA54(sub_1D5241B04, v25, v12);
  if (v14)
  {
    sub_1D54FBF10();
    sub_1D4F1C460(a1, v11, &unk_1EC7F1970, &qword_1D561F4A0);
    v17 = v3[2];
    v15 = v3 + 2;
    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v16 + 16);
      sub_1D4F0469C();
      v16 = *v15;
    }

    v20 = *(v16 + 16);
    if (v20 >= *(v16 + 24) >> 1)
    {
      sub_1D4F0469C();
      v16 = *v15;
    }

    *(v16 + 16) = v20 + 1;
    sub_1D4FD23EC(v11, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, &unk_1EC7F1970, &qword_1D561F4A0);
    *v15 = v16;
    v21 = 1;
    goto LABEL_12;
  }

  v22 = v13;
  v23 = v3[2];
  sub_1D5240448(v13, v23, a3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD84(v23);
    v23 = v24;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < *(v23 + 16))
  {
    sub_1D5241B28(a1, v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22);
    v21 = 0;
    v3[2] = v23;
LABEL_12:
    __swift_storeEnumTagSinglePayload(a3, v21, 1, v7);
    return;
  }

  __break(1u);
}

uint64_t sub_1D523F24C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D5611248();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D523F294(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_1D560D4C8();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D560F148();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14IdentifierKindOMa();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v40 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v40 - v24;
  v26 = (&v40 + *(v23 + 56) - v24);
  sub_1D5241930(a1, &v40 - v24);
  sub_1D5241930(v43, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33 = v42;
    sub_1D5241930(v25, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v33 + 8))(v20, v7);
LABEL_16:
      sub_1D4E50004(v25, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_17;
    }

    (*(v33 + 32))(v10, v26, v7);
    v36 = sub_1D560F0E8();
    v38 = *(v33 + 8);
    v38(v10, v7);
    v38(v20, v7);
LABEL_19:
    sub_1D52418D4(v25);
    return v36 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5241930(v25, v15);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v40 + 8))(v15, v41);
      goto LABEL_16;
    }

    v35 = v40;
    v34 = v41;
    (*(v40 + 32))(v6, v26, v41);
    v36 = sub_1D560D498();
    v37 = *(v35 + 8);
    v37(v6, v34);
    v37(v15, v34);
    goto LABEL_19;
  }

  sub_1D5241930(v25, v18);
  v29 = *v18;
  v28 = v18[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_16;
  }

  if (v29 == *v26 && v28 == v26[1])
  {

    goto LABEL_21;
  }

  v31 = v26[1];
  v32 = sub_1D5616168();

  if (v32)
  {
LABEL_21:
    sub_1D52418D4(v25);
    v36 = 1;
    return v36 & 1;
  }

  sub_1D52418D4(v25);
LABEL_17:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1D523F6D4()
{
  v1 = sub_1D560D4C8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D560F148();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = _s14IdentifierKindOMa();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  sub_1D5241930(v0, v24 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v25;
      v28 = v25[1];
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_159();
      sub_1D5614E28();
    }

    else
    {
      (*(v4 + 32))(v9, v25, v1);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D5241ABC(&qword_1EC7EBF70, MEMORY[0x1E6974F48]);
      sub_1D5614CB8();
      return (*(v4 + 8))(v9, v1);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v25, v10);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5241ABC(&qword_1EC7EBF78, MEMORY[0x1E69755E8]);
    sub_1D5614CB8();
    return (*(v13 + 8))(v18, v10);
  }
}

uint64_t sub_1D523F97C()
{
  sub_1D56162D8();
  sub_1D523F6D4();
  return sub_1D5616328();
}

uint64_t sub_1D523F9C8()
{
  sub_1D56162D8();
  sub_1D523F6D4();
  return sub_1D5616328();
}

void *sub_1D523FA04(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1D523FA54(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(_s14IdentifierKindOMa() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D523FAF8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D524161C(*(a1 + 16), 0, sub_1D4EFF398, sub_1D54FC158, sub_1D54FE644);
  sub_1D4F03BB4();
  v3 = 0;
  v4 = v2;
  v18 = *(a1 + 16);
  v19 = a1;
  v17 = a1 + 32;
  while (1)
  {
    if (v3 == v18)
    {

      return 0;
    }

    if (v3 >= *(v19 + 16))
    {
      break;
    }

    v5 = v17 + 40 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = (v20 + 40);
    v12 = *(v20 + 16) + 1;
    while (--v12)
    {
      if (*(v11 - 1) != v7 || *v11 != v6)
      {
        v11 += 2;
        if ((sub_1D5616168() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1D54FBDC0(v7, v6);
    v14 = *(v4 + 16);
    if (v14 >= *(v4 + 24) >> 1)
    {
      sub_1D4F03BB4();
    }

    ++v3;
    *(v4 + 16) = v14 + 1;
    v15 = v4 + 24 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v8;
    *(v15 + 48) = v10;
  }

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

void sub_1D523FD40(uint64_t a1)
{
  v2 = &unk_1EC7F1970;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = _s14IdentifierKindOMa();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v37 - v16;
  v17 = MEMORY[0x1E69E7CC0];
  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1D524161C(*(a1 + 16), 0, sub_1D4EFF3B0, sub_1D54FC170, sub_1D54FE644);
  v46 = v17;
  sub_1D4F0469C();
  v18 = &qword_1D561F4A0;
  v19 = 0;
  v20 = v46;
  v45 = *(a1 + 16);
  v37 = v13;
  v38 = v7;
  v40 = a1;
  while (1)
  {
    if (v45 == v19)
    {

      return;
    }

    if (v19 >= *(a1 + 16))
    {
      break;
    }

    v21 = a1 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v19;
    v22 = v41;
    sub_1D4F1C460(v21, v41, &qword_1EC7F24F8, &qword_1D5648578);
    v23 = *(v43 + 48);
    sub_1D5241994(v22, v13);
    v24 = v9;
    v25 = v9;
    v26 = v2;
    v27 = v18;
    sub_1D4FD23EC(v22 + v23, v25, v2, v18);
    v29 = v47;
    v28 = v48;
    v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v31 = *(v48 + 16);
    if (v47)
    {

      sub_1D5240E38(v13, v28 + v30, v31, (v29 + 16), v29 + 32);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D5240794(v13, v48 + v30, *(v48 + 16));
      if ((v34 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v2 = v26;
    v13 = v37;
    sub_1D54FBF10();
    v35 = v38;
    v18 = v27;
    sub_1D4F1C460(v24, v38, v2, v27);
    v46 = v20;
    v36 = *(v20 + 16);
    if (v36 >= *(v20 + 24) >> 1)
    {
      sub_1D4F0469C();
      v18 = v27;
      v20 = v46;
    }

    sub_1D4E50004(v24, v2, v18);
    *(v20 + 16) = v36 + 1;
    sub_1D4FD23EC(v35, v20 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v2, v18);
    sub_1D52418D4(v13);
    ++v19;
    a1 = v40;
    v9 = v24;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1D5240178(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D4F0B2EC(v2, 0);

    MEMORY[0x1DA6EB990](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1D5615A98();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D5240214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC50, &qword_1D5648640);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D52402E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D4F0349C(*(a3 + 16), 0);
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 80);
  sub_1D4EFEFDC();
  v8 = v7;

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

unint64_t sub_1D52403F8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 24 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5240448@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
      OUTLINED_FUNCTION_69(v6);
      return sub_1D4F1C460(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v4, a3, &unk_1EC7F1970, &qword_1D561F4A0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5240510(uint64_t a1)
{
  v2 = v1;
  v4 = _s14IdentifierKindOMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5241930(a1, v8);
  v11 = v1[1];
  v9 = v1 + 1;
  v10 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v10 + 16);
    sub_1D4F046DC();
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  if (v14 >= *(v10 + 24) >> 1)
  {
    sub_1D4F046DC();
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  result = sub_1D5241994(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14);
  v2[1] = v10;
  v16 = *v2;
  if (!*v2)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    v19 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v16 + 16) & 0x3FLL) <= v14)
  {
    v19 = *(v16 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v19)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    v20 = MEMORY[0x1DA6E23D0](v14 + 1);
    return sub_1D54FC170(v20, v19);
  }

  result = sub_1D54FE644();
  v17 = *v2;
  if (*v2)
  {
    v18 = *v2;

    sub_1D524154C((v17 + 16), v17 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5240708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_1D5616168() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_1D5240794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_1D560D4C8();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560F148();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  v12 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v48 - v13;
  v63 = _s14IdentifierKindOMa();
  v15 = *(*(v63 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v63);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v57 = (&v48 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v48 - v24;
  if (!a3)
  {
    return 0;
  }

  v26 = a3;
  v27 = 0;
  v28 = *(v22 + 72);
  v60 = v21;
  v61 = v28;
  v55 = (v6 + 8);
  v56 = v23;
  v50 = (v6 + 32);
  v53 = a1;
  v54 = (v9 + 8);
  v48 = (v9 + 32);
  while (1)
  {
    sub_1D5241930(a2, v25);
    v29 = &v14[*(v62 + 48)];
    sub_1D5241930(v25, v14);
    sub_1D5241930(a1, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_1D5241930(v14, v21);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D52418D4(v25);
      (*v54)(v21, v58);
LABEL_20:
      sub_1D4E50004(v14, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_21;
    }

    v43 = v49;
    v44 = v58;
    (*v48)(v49, v29, v58);
    v52 = sub_1D560F0E8();
    v45 = *v54;
    (*v54)(v43, v44);
    sub_1D52418D4(v25);
    v46 = v44;
    a1 = v53;
    v45(v21, v46);
    sub_1D52418D4(v14);
    if (v52)
    {
      return v27;
    }

LABEL_21:
    ++v27;
    a2 += v61;
    if (v26 == v27)
    {
      return 0;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    v38 = v56;
    sub_1D5241930(v14, v56);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = v51;
      v40 = v59;
      (*v50)(v51, v29, v59);
      v52 = sub_1D560D498();
      v41 = *v55;
      (*v55)(v39, v40);
      sub_1D52418D4(v25);
      v42 = v40;
      a1 = v53;
      v41(v38, v42);
      if (v52)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    sub_1D52418D4(v25);
    (*v55)(v38, v59);
LABEL_19:
    v21 = v60;
    goto LABEL_20;
  }

  v31 = v57;
  sub_1D5241930(v14, v57);
  v32 = *v31;
  v33 = v31[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52418D4(v25);

    goto LABEL_19;
  }

  v34 = *v29;
  v35 = *(v29 + 1);
  if (v32 != v34 || v33 != v35)
  {
    v37 = sub_1D5616168();

    sub_1D52418D4(v25);
    if (v37)
    {
      goto LABEL_27;
    }

LABEL_16:
    sub_1D52418D4(v14);
    v21 = v60;
    goto LABEL_21;
  }

  sub_1D52418D4(v25);
LABEL_27:
  sub_1D52418D4(v14);
  return v27;
}

uint64_t sub_1D5240D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1D56162D8();
  sub_1D5614E28();
  result = sub_1D5616328();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D560C578();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_1D5616168())
        {
          break;
        }

        sub_1D560C5A8();
        v11 = sub_1D560C588();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_1D5240E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v72 = a5;
  v69 = sub_1D560D4C8();
  v73 = *(v69 - 8);
  v8 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D560F148();
  v10 = *(v68 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v59 - v14;
  v16 = _s14IdentifierKindOMa();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v70 = (&v59 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  v28 = *a4;
  sub_1D56162D8();
  sub_1D523F6D4();
  result = sub_1D5616328();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
    return result;
  }

  v67 = v20;
  sub_1D560C578();
  v30 = v84;
  v66 = (v73 + 8);
  v76 = v80;
  v77 = v81;
  v78 = v82;
  v79 = v83;
  v61 = (v73 + 32);
  v65 = (v10 + 8);
  v31 = (v10 + 32);
  v32 = v85;
  v59 = v31;
  v64 = v16;
  v73 = v25;
  if (v85)
  {
    return v30;
  }

  while (1)
  {
    sub_1D5241930(a2 + *(v74 + 72) * v30, v27);
    v33 = &v15[*(v75 + 48)];
    sub_1D5241930(v27, v15);
    sub_1D5241930(a1, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_1D5241930(v15, v25);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D52418D4(v27);
      (*v65)(v25, v68);
LABEL_19:
      sub_1D4E50004(v15, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_20;
    }

    v52 = *v59;
    v53 = a1;
    v54 = a2;
    v55 = v60;
    LODWORD(v72) = v32;
    v56 = v68;
    v52(v60, v33, v68);
    LODWORD(v71) = sub_1D560F0E8();
    v57 = *v65;
    v58 = v55;
    a2 = v54;
    a1 = v53;
    (*v65)(v58, v56);
    sub_1D52418D4(v27);
    v57(v73, v56);
    v25 = v73;
    sub_1D52418D4(v15);
    if (v71)
    {
      return v30;
    }

LABEL_20:
    sub_1D560C5A8();
    v80 = v76;
    v81 = v77;
    v82 = v78;
    v83 = v79;
    v30 = sub_1D560C588();
    v32 = v51;
    if (v51)
    {
      return v30;
    }
  }

  v71 = v30;
  if (EnumCaseMultiPayload != 1)
  {
    v44 = v67;
    sub_1D5241930(v15, v67);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D52418D4(v27);
      (*v66)(v44, v69);
      goto LABEL_19;
    }

    LODWORD(v72) = v32;
    v45 = a1;
    v46 = a2;
    v47 = v62;
    v48 = v69;
    (*v61)(v62, v33, v69);
    v63 = sub_1D560D498();
    v49 = *v66;
    v50 = v47;
    a2 = v46;
    a1 = v45;
    (*v66)(v50, v48);
    sub_1D52418D4(v27);
    v49(v44, v48);
    if (v63)
    {
      goto LABEL_25;
    }

LABEL_16:
    sub_1D52418D4(v15);
    v25 = v73;
    goto LABEL_20;
  }

  LODWORD(v72) = v32;
  v35 = a1;
  v36 = a2;
  v37 = v70;
  sub_1D5241930(v15, v70);
  v38 = *v37;
  v39 = v37[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52418D4(v27);

    a2 = v36;
    a1 = v35;
    v25 = v73;
    goto LABEL_19;
  }

  v40 = *v33;
  v41 = *(v33 + 1);
  if (v38 != v40 || v39 != v41)
  {
    v43 = sub_1D5616168();

    sub_1D52418D4(v27);
    if (v43)
    {
      goto LABEL_25;
    }

    a2 = v36;
    a1 = v35;
    goto LABEL_16;
  }

  sub_1D52418D4(v27);
LABEL_25:
  sub_1D52418D4(v15);
  return v71;
}

uint64_t sub_1D524154C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_1D56162D8();
  sub_1D523F6D4();
  result = sub_1D5616328();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_1D560C548())
    {
      while (1)
      {
        sub_1D560C5A8();
      }
    }

    v8 = *(*(a4 + 8) + 16);
    return sub_1D560C598();
  }

  return result;
}

uint64_t sub_1D524161C(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1DA6E23D0](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x1DA6E23D0](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}