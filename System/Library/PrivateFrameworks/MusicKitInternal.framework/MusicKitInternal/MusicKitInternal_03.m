uint64_t sub_1D4E814FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8157C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E81658()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5033978(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E81680()
{
  OUTLINED_FUNCTION_20_0();
  TVSeason.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E816CC()
{
  OUTLINED_FUNCTION_20_0();
  TVSeason._editorialArtworks.getter();
  *v0 = v1;
}

uint64_t sub_1D4E816F4()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8171C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E81744()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.showName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8176C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E81794()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.number.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E817E8()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E81810()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

void sub_1D4E81838()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D50334B4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E81860()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.episodeCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E819E4(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[8];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1D4E81B10(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[8];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D4E81CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E81CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E81D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E81E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E81ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E81F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E81FF8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82024@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.kind.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82158(uint64_t a1)
{
  OUTLINED_FUNCTION_30_17();
  result = sub_1D4E5E440(v2, v3);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1D4E82228(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D4E82918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E82950()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E82988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC60, &qword_1D562E498);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E82B54@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.versionHash.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82BC8@<X0>(uint64_t a1@<X8>)
{
  result = Playlist.trackCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E82CB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_19_34();
    return (v4 + 1);
  }

  else
  {
    sub_1D5610088();
    v7 = OUTLINED_FUNCTION_152(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1D4E82D34()
{
  OUTLINED_FUNCTION_39_17();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1D5610088();
    v5 = OUTLINED_FUNCTION_152(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4E82DA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_19_34();
    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5610088();
    OUTLINED_FUNCTION_25_0(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a3 + 28);
    }

    v11 = OUTLINED_FUNCTION_152(v10);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void sub_1D4E82E6C()
{
  OUTLINED_FUNCTION_39_17();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1D5610088();
    OUTLINED_FUNCTION_25_0(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v9 = *(v5 + 28);
    }

    v10 = OUTLINED_FUNCTION_152(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1D4E82F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    OUTLINED_FUNCTION_19_34();
    return OUTLINED_FUNCTION_36_19(v11);
  }
}

uint64_t sub_1D4E82FD0()
{
  OUTLINED_FUNCTION_38_19();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  result = OUTLINED_FUNCTION_25_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_37_19();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_1D4E83060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    OUTLINED_FUNCTION_19_34();
    return OUTLINED_FUNCTION_36_19(v11);
  }
}

uint64_t sub_1D4E8310C()
{
  OUTLINED_FUNCTION_38_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  result = OUTLINED_FUNCTION_25_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_37_19();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t sub_1D4E832A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E833C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E83418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E834EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E835F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D506F620();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8368C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Folder.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E83700()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  OUTLINED_FUNCTION_4_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1D4E8379C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D4E837E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E83994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5612448();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E839C0()
{
  v1 = (type metadata accessor for MusicSearchResultGroup() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 8))(v0 + v2 + v7);

  return swift_deallocObject();
}

uint64_t sub_1D4E83ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E83B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E83B78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83C00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E83CC8@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.Reaction.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E83D18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v10 = a3[11];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v22 = sub_1D560D838();
    v23 = OUTLINED_FUNCTION_25_0(v22);
    if (*(v24 + 84) == a2)
    {
      v9 = v23;
      v10 = a3[13];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[14];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v21 = *(a1 + a3[12]);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

uint64_t sub_1D4E83F14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[8];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[9];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
        result = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = result;
          v12 = a4[11];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[12]) = (a2 - 1);
            return result;
          }

          v22 = sub_1D560D838();
          v23 = OUTLINED_FUNCTION_25_0(v22);
          if (*(v24 + 84) == a3)
          {
            v11 = v23;
            v12 = a4[13];
          }

          else
          {
            v11 = sub_1D5610088();
            v12 = a4[14];
          }
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E841D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E842C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E843F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_33;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_33;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[7];
    goto LABEL_33;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v10 = a3[8];
    goto LABEL_33;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v21 = OUTLINED_FUNCTION_25_0(v20);
  if (*(v22 + 84) == a2)
  {
    v9 = v21;
    v10 = a3[11];
    goto LABEL_33;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v24 = OUTLINED_FUNCTION_25_0(v23);
  if (*(v25 + 84) == a2)
  {
    v9 = v24;
    v10 = a3[13];
    goto LABEL_33;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  v27 = OUTLINED_FUNCTION_25_0(v26);
  if (*(v28 + 84) == a2)
  {
    v9 = v27;
    v10 = a3[14];
    goto LABEL_33;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  v30 = OUTLINED_FUNCTION_25_0(v29);
  if (*(v31 + 84) == a2)
  {
    v9 = v30;
    v10 = a3[15];
    goto LABEL_33;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  v33 = OUTLINED_FUNCTION_25_0(v32);
  if (*(v34 + 84) == a2)
  {
    v9 = v33;
    v10 = a3[16];
    goto LABEL_33;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v36 = OUTLINED_FUNCTION_25_0(v35);
  if (*(v37 + 84) == a2)
  {
    v9 = v36;
    v10 = a3[17];
    goto LABEL_33;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v39 = OUTLINED_FUNCTION_25_0(v38);
  if (*(v40 + 84) == a2)
  {
    v9 = v39;
    v10 = a3[18];
    goto LABEL_33;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v42 = OUTLINED_FUNCTION_25_0(v41);
  if (*(v43 + 84) == a2)
  {
    v9 = v42;
    v10 = a3[19];
    goto LABEL_33;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v45 = OUTLINED_FUNCTION_25_0(v44);
  if (*(v46 + 84) == a2)
  {
    v9 = v45;
    v10 = a3[20];
    goto LABEL_33;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v48 = OUTLINED_FUNCTION_25_0(v47);
  if (*(v49 + 84) == a2)
  {
    v9 = v48;
    v10 = a3[22];
    goto LABEL_33;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v51 = OUTLINED_FUNCTION_25_0(v50);
  if (*(v52 + 84) == a2)
  {
    v9 = v51;
    v10 = a3[27];
    goto LABEL_33;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v54 = OUTLINED_FUNCTION_25_0(v53);
  if (*(v55 + 84) == a2)
  {
    v9 = v54;
    v10 = a3[28];
    goto LABEL_33;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v58 = sub_1D560D838();
    v59 = OUTLINED_FUNCTION_25_0(v58);
    if (*(v60 + 84) == a2)
    {
      v9 = v59;
      v10 = a3[31];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[32];
    }

LABEL_33:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v57 = *(a1 + a3[30]);
  if (v57 >= 0xFFFFFFFF)
  {
    LODWORD(v57) = -1;
  }

  return (v57 + 1);
}

uint64_t sub_1D4E84980(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[7];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
        v20 = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[8];
        }

        else
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
          v23 = OUTLINED_FUNCTION_25_0(v22);
          if (*(v24 + 84) == a3)
          {
            v11 = v23;
            v12 = a4[11];
          }

          else
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
            v26 = OUTLINED_FUNCTION_25_0(v25);
            if (*(v27 + 84) == a3)
            {
              v11 = v26;
              v12 = a4[13];
            }

            else
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
              v29 = OUTLINED_FUNCTION_25_0(v28);
              if (*(v30 + 84) == a3)
              {
                v11 = v29;
                v12 = a4[14];
              }

              else
              {
                v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
                v32 = OUTLINED_FUNCTION_25_0(v31);
                if (*(v33 + 84) == a3)
                {
                  v11 = v32;
                  v12 = a4[15];
                }

                else
                {
                  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
                  v35 = OUTLINED_FUNCTION_25_0(v34);
                  if (*(v36 + 84) == a3)
                  {
                    v11 = v35;
                    v12 = a4[16];
                  }

                  else
                  {
                    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
                    v38 = OUTLINED_FUNCTION_25_0(v37);
                    if (*(v39 + 84) == a3)
                    {
                      v11 = v38;
                      v12 = a4[17];
                    }

                    else
                    {
                      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
                      v41 = OUTLINED_FUNCTION_25_0(v40);
                      if (*(v42 + 84) == a3)
                      {
                        v11 = v41;
                        v12 = a4[18];
                      }

                      else
                      {
                        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                        v44 = OUTLINED_FUNCTION_25_0(v43);
                        if (*(v45 + 84) == a3)
                        {
                          v11 = v44;
                          v12 = a4[19];
                        }

                        else
                        {
                          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                          v47 = OUTLINED_FUNCTION_25_0(v46);
                          if (*(v48 + 84) == a3)
                          {
                            v11 = v47;
                            v12 = a4[20];
                          }

                          else
                          {
                            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                            v50 = OUTLINED_FUNCTION_25_0(v49);
                            if (*(v51 + 84) == a3)
                            {
                              v11 = v50;
                              v12 = a4[22];
                            }

                            else
                            {
                              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                              v53 = OUTLINED_FUNCTION_25_0(v52);
                              if (*(v54 + 84) == a3)
                              {
                                v11 = v53;
                                v12 = a4[27];
                              }

                              else
                              {
                                v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
                                result = OUTLINED_FUNCTION_25_0(v55);
                                if (*(v57 + 84) == a3)
                                {
                                  v11 = result;
                                  v12 = a4[28];
                                }

                                else
                                {
                                  if (a3 == 0x7FFFFFFF)
                                  {
                                    *(a1 + a4[30]) = (a2 - 1);
                                    return result;
                                  }

                                  v58 = sub_1D560D838();
                                  v59 = OUTLINED_FUNCTION_25_0(v58);
                                  if (*(v60 + 84) == a3)
                                  {
                                    v11 = v59;
                                    v12 = a4[31];
                                  }

                                  else
                                  {
                                    v11 = sub_1D5610088();
                                    v12 = a4[32];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E84F6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicPlayer.Queue.playActivityFeatureName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D4E84F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicPlayer.Queue.playActivityRecommendationData.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D4E85224()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8525C()
{
  v1 = *(type metadata accessor for MusicSuggestedPivotNode() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MusicSuggestedPivotContainer();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_1D5614408();
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1D5614898();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_17;
      }

      v8 = sub_1D5613AF8();
    }

    OUTLINED_FUNCTION_14(v8);
    (*(v15 + 8))(v0 + v2);
  }

  else
  {
    v9 = sub_1D5613D28();
    OUTLINED_FUNCTION_14(v9);
    (*(v10 + 8))(v0 + v2);
    v11 = *(type metadata accessor for MusicSuggestedPivotSeed() + 20);
    v12 = type metadata accessor for MusicSuggestedPivotContainer();
    if (__swift_getEnumTagSinglePayload(v6 + v11, 1, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 == 2)
    {
      v14 = sub_1D5614408();
    }

    else if (v13 == 1)
    {
      v14 = sub_1D5614898();
    }

    else
    {
      if (v13)
      {
        goto LABEL_17;
      }

      v14 = sub_1D5613AF8();
    }

    OUTLINED_FUNCTION_14(v14);
    (*(v16 + 8))(v6 + v11);
  }

LABEL_17:
  v17 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D4E85470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a3[16];
    goto LABEL_10;
  }

  v14 = *(a1 + a3[12] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D4E855A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v12 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[12] + 8) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v12 = a4[16];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E8573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_1D4E85804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1D4E8591C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E85964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E85AEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[10];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = sub_1D560D838();
    v18 = OUTLINED_FUNCTION_25_0(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[12];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[13];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D4E85C50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[10];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return result;
      }

      v17 = sub_1D560D838();
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[12];
      }

      else
      {
        v11 = sub_1D5610088();
        v16 = a4[13];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E85E08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E85EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E85F84(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 228)
  {
    v4 = *a1;
    if (v4 >= 0x1C)
    {
      return v4 - 27;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D560CD48();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_1D4E86004(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 228)
  {
    *result = a2 + 27;
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E86080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D56140F8();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1D560C0A8();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4E8616C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D56140F8();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1D560C0A8();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E863BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D9A8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E86444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560D9A8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E864C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_12:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[7];
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[11];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v10 = a3[30];
    goto LABEL_12;
  }

  v17 = *(a1 + a3[21] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1D4E86644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[7];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
      result = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = result;
        v12 = a4[11];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[21] + 8) = (a2 - 1);
          return result;
        }

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v12 = a4[30];
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E8695C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E869F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E86A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E86AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_1D4E86C00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E86CE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E86D24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E86D74(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[10];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
          v12 = a3[19];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1D4E86EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[10];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
          v12 = a4[19];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D4E870B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E87144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E87224(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[17];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v10 = a3[18];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[6] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1D4E87358(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[17];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v12 = a4[18];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E87504(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[10];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[13];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v16 = a3[14];
      }
    }

    v10 = a1 + v16;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[9] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1D4E87684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[10];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[13];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v16 = a4[14];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E87880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E8794C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E87A78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E87B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E87BA4@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem.plainEditorialCards.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87C18@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem.editorialCards.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87C44@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem._editorialArtworks.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87CB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_36:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_35:
    v10 = a1 + v14;
    goto LABEL_36;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[10];
    goto LABEL_35;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[13];
    goto LABEL_35;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v22 = OUTLINED_FUNCTION_25_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[17];
    goto LABEL_35;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  v25 = OUTLINED_FUNCTION_25_0(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[20];
    goto LABEL_35;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v28 = OUTLINED_FUNCTION_25_0(v27);
  if (*(v29 + 84) == a2)
  {
    v9 = v28;
    v14 = a3[21];
    goto LABEL_35;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v31 = OUTLINED_FUNCTION_25_0(v30);
  if (*(v32 + 84) == a2)
  {
    v9 = v31;
    v14 = a3[22];
    goto LABEL_35;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v34 = OUTLINED_FUNCTION_25_0(v33);
  if (*(v35 + 84) == a2)
  {
    v9 = v34;
    v14 = a3[26];
    goto LABEL_35;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v37 = OUTLINED_FUNCTION_25_0(v36);
  if (*(v38 + 84) == a2)
  {
    v9 = v37;
    v14 = a3[31];
    goto LABEL_35;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  v40 = OUTLINED_FUNCTION_25_0(v39);
  if (*(v41 + 84) == a2)
  {
    v9 = v40;
    v14 = a3[36];
    goto LABEL_35;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v43 = OUTLINED_FUNCTION_25_0(v42);
  if (*(v44 + 84) == a2)
  {
    v9 = v43;
    v14 = a3[45];
    goto LABEL_35;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v46 = OUTLINED_FUNCTION_25_0(v45);
  if (*(v47 + 84) == a2)
  {
    v9 = v46;
    v14 = a3[46];
    goto LABEL_35;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v49 = OUTLINED_FUNCTION_25_0(v48);
  if (*(v50 + 84) == a2)
  {
    v9 = v49;
    v14 = a3[47];
    goto LABEL_35;
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v52 = OUTLINED_FUNCTION_25_0(v51);
  if (*(v53 + 84) == a2)
  {
    v9 = v52;
    v14 = a3[48];
    goto LABEL_35;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v55 = OUTLINED_FUNCTION_25_0(v54);
  if (*(v56 + 84) == a2)
  {
    v9 = v55;
    v14 = a3[49];
    goto LABEL_35;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v58 = OUTLINED_FUNCTION_25_0(v57);
  if (*(v59 + 84) == a2)
  {
    v9 = v58;
    v14 = a3[50];
    goto LABEL_35;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v62 = sub_1D560D838();
    v63 = OUTLINED_FUNCTION_25_0(v62);
    if (*(v64 + 84) == a2)
    {
      v9 = v63;
      v14 = a3[53];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[54];
    }

    goto LABEL_35;
  }

  v61 = *(a1 + a3[52]);
  if (v61 >= 0xFFFFFFFF)
  {
    LODWORD(v61) = -1;
  }

  return (v61 + 1);
}

uint64_t sub_1D4E88290(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[10];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[13];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v24 = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[17];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
            v27 = OUTLINED_FUNCTION_25_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[20];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
              v30 = OUTLINED_FUNCTION_25_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[21];
              }

              else
              {
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                v33 = OUTLINED_FUNCTION_25_0(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = v33;
                  v16 = a4[22];
                }

                else
                {
                  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                  v36 = OUTLINED_FUNCTION_25_0(v35);
                  if (*(v37 + 84) == a3)
                  {
                    v11 = v36;
                    v16 = a4[26];
                  }

                  else
                  {
                    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                    v39 = OUTLINED_FUNCTION_25_0(v38);
                    if (*(v40 + 84) == a3)
                    {
                      v11 = v39;
                      v16 = a4[31];
                    }

                    else
                    {
                      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
                      v42 = OUTLINED_FUNCTION_25_0(v41);
                      if (*(v43 + 84) == a3)
                      {
                        v11 = v42;
                        v16 = a4[36];
                      }

                      else
                      {
                        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
                        v45 = OUTLINED_FUNCTION_25_0(v44);
                        if (*(v46 + 84) == a3)
                        {
                          v11 = v45;
                          v16 = a4[45];
                        }

                        else
                        {
                          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
                          v48 = OUTLINED_FUNCTION_25_0(v47);
                          if (*(v49 + 84) == a3)
                          {
                            v11 = v48;
                            v16 = a4[46];
                          }

                          else
                          {
                            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
                            v51 = OUTLINED_FUNCTION_25_0(v50);
                            if (*(v52 + 84) == a3)
                            {
                              v11 = v51;
                              v16 = a4[47];
                            }

                            else
                            {
                              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                              v54 = OUTLINED_FUNCTION_25_0(v53);
                              if (*(v55 + 84) == a3)
                              {
                                v11 = v54;
                                v16 = a4[48];
                              }

                              else
                              {
                                v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
                                v57 = OUTLINED_FUNCTION_25_0(v56);
                                if (*(v58 + 84) == a3)
                                {
                                  v11 = v57;
                                  v16 = a4[49];
                                }

                                else
                                {
                                  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
                                  result = OUTLINED_FUNCTION_25_0(v59);
                                  if (*(v61 + 84) == a3)
                                  {
                                    v11 = result;
                                    v16 = a4[50];
                                  }

                                  else
                                  {
                                    if (a3 == 0x7FFFFFFF)
                                    {
                                      *(a1 + a4[52]) = (a2 - 1);
                                      return result;
                                    }

                                    v62 = sub_1D560D838();
                                    v63 = OUTLINED_FUNCTION_25_0(v62);
                                    if (*(v64 + 84) == a3)
                                    {
                                      v11 = v63;
                                      v16 = a4[53];
                                    }

                                    else
                                    {
                                      v11 = sub_1D5610088();
                                      v16 = a4[54];
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E88864()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1D4E8892C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560CD48();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1D4E88970(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560CD48();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1D4E88A8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for MusicPlaybackIntentDonation.IntentKind(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1D4E88AD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for MusicPlaybackIntentDonation.IntentKind(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1D4E88BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0750, &unk_1D5638E00);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E88C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0750, &unk_1D5638E00);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D4E88E8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[8];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v16 = a3[12];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v16 = a3[13];
        }
      }
    }

    v10 = a1 + v16;
    goto LABEL_15;
  }

  v11 = *(a1 + a3[7] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1D4E89058(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[12];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v16 = a4[13];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E89270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E8931C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E893C8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_93();
  result = sub_1D4E74B10(v2, v3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4E89410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E89498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E895A8()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.uploadingArtistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E896CC()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio._editorialArtworks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E897A8()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E89820()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E89848()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E898E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E899B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E89AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E89B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E89B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E89BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E89CF8()
{
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  sub_1D4E55E1C(*(v0 + v6), *(v0 + v6 + 8));

  return swift_deallocObject();
}

uint64_t sub_1D4E89F38@<X0>(uint64_t *a1@<X8>)
{
  result = Album.offers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E89F64@<X0>(uint64_t *a1@<X8>)
{
  result = Album.versionHash.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E89FF8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A02C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D51655A8();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E8A05C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E8A094()
{
  v1 = *(type metadata accessor for GenericMusicItem() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v5 = sub_1D5613AF8();
      goto LABEL_23;
    case 1u:
      v5 = sub_1D5613EF8();
      goto LABEL_23;
    case 2u:
      v8 = *(v4 + 8);

      v7 = type metadata accessor for Composer();
      goto LABEL_25;
    case 3u:
      v9 = *(v4 + 8);

      v7 = type metadata accessor for CreditArtist();
      goto LABEL_25;
    case 4u:
      v5 = sub_1D56141F8();
      goto LABEL_23;
    case 5u:
      v13 = *(v4 + 8);

      v7 = type metadata accessor for EditorialItem();
      goto LABEL_25;
    case 6u:
      v5 = sub_1D5613C48();
      goto LABEL_23;
    case 7u:
      v10 = *(v4 + 8);

      v7 = type metadata accessor for MusicMovie();
      goto LABEL_25;
    case 8u:
      v5 = sub_1D560EEA8();
      goto LABEL_23;
    case 9u:
      v5 = sub_1D5614898();
      goto LABEL_23;
    case 0xAu:
      v17 = *(v4 + 8);

      v7 = type metadata accessor for Playlist.Folder();
      goto LABEL_25;
    case 0xBu:
      v5 = sub_1D5614B68();
      goto LABEL_23;
    case 0xCu:
      v5 = sub_1D560F8B8();
      goto LABEL_23;
    case 0xDu:
      v15 = *(v4 + 8);

      v7 = type metadata accessor for SocialProfile();
      goto LABEL_25;
    case 0xEu:
      v5 = sub_1D5613838();
      goto LABEL_23;
    case 0xFu:
      v5 = sub_1D5614408();
LABEL_23:
      OUTLINED_FUNCTION_14(v5);
      (*(v18 + 8))(v0 + v2);
      break;
    case 0x10u:
      v6 = *(v4 + 8);

      v7 = type metadata accessor for TVEpisode();
      goto LABEL_25;
    case 0x11u:
      v11 = *(v4 + 8);

      v7 = type metadata accessor for TVSeason();
      goto LABEL_25;
    case 0x12u:
      v16 = *(v4 + 8);

      v7 = type metadata accessor for TVShow();
      goto LABEL_25;
    case 0x13u:
      v19 = *(v4 + 8);

      v7 = type metadata accessor for UploadedAudio();
      goto LABEL_25;
    case 0x14u:
      v12 = *(v4 + 8);

      v7 = type metadata accessor for UploadedVideo();
LABEL_25:
      v20 = *(v7 + 20);
      v21 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v21);
      (*(v22 + 8))(v4 + v20);
      break;
    case 0x15u:
      v14 = *(v4 + 8);

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E8A39C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D4E8A400()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D4E8A484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E8A570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8A6FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    v7 = type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_25_0(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
      v9 = *(a3 + 24);
    }

    v10 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1D4E8A7C0()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
      v8 = *(v4 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D4E8A888(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = a3[5];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0(v11);
      if (*(v12 + 84) == a2)
      {
        v10 = a3[6];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0(v13);
        if (*(v14 + 84) == a2)
        {
          v10 = a3[9];
        }

        else
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
          OUTLINED_FUNCTION_25_0(v15);
          if (*(v16 + 84) == a2)
          {
            v10 = a3[11];
          }

          else
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_25_0(v17);
            if (*(v18 + 84) == a2)
            {
              v10 = a3[12];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
              v10 = a3[15];
            }
          }
        }
      }
    }

    v19 = OUTLINED_FUNCTION_152(v10);

    return __swift_getEnumTagSinglePayload(v19, v20, v21);
  }
}

void sub_1D4E8AA94()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0(v11);
        if (*(v12 + 84) == v5)
        {
          v8 = v4[9];
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
          OUTLINED_FUNCTION_25_0(v13);
          if (*(v14 + 84) == v5)
          {
            v8 = v4[11];
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_25_0(v15);
            if (*(v16 + 84) == v5)
            {
              v8 = v4[12];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
              v8 = v4[15];
            }
          }
        }
      }
    }

    v17 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v17, v18, v0, v19);
  }
}

uint64_t sub_1D4E8AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1D4E8AD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1D4E8AF28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8AFB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8B030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D517D7CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8B174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8B1FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1D4E8B27C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D51858C8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

double sub_1D4E8B37C@<D0>(_OWORD *a1@<X8>)
{
  MusicMovie.supportedLocales.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_1D4E8B408()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.editorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E8B430()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie._editorialArtworks.getter();
  *v0 = v1;
}

void sub_1D4E8B458()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.clips.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B580()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8B5A8()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_1D5184B8C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8B5D0()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E8B648()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.studioName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B670()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B698()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E8B6E4()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B730()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B758()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

void sub_1D4E8B7A4()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5185288(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B7CC()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B7F4()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E8B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E8BABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D536564C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8BAE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5320048();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E8BBDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8BCF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + a3[7]);
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
    v8 = a3[21];
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_1D4E8BDE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
    v10 = a4[21];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4E8BF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D519702C();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E8BF5C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1D51970A0();
}

uint64_t sub_1D4E8C0A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

__n128 sub_1D4E8C0E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E8C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(sub_1D5614898() - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_104();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return v9 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E8C25C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D5614898();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D4E8C33C()
{
  sub_1D4FEEE48(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E8C374(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_31;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_31;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[7];
    goto LABEL_31;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v10 = a3[8];
    goto LABEL_31;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v21 = OUTLINED_FUNCTION_25_0(v20);
  if (*(v22 + 84) == a2)
  {
    v9 = v21;
    v10 = a3[11];
    goto LABEL_31;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v24 = OUTLINED_FUNCTION_25_0(v23);
  if (*(v25 + 84) == a2)
  {
    v9 = v24;
    v10 = a3[13];
    goto LABEL_31;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  v27 = OUTLINED_FUNCTION_25_0(v26);
  if (*(v28 + 84) == a2)
  {
    v9 = v27;
    v10 = a3[14];
    goto LABEL_31;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  v30 = OUTLINED_FUNCTION_25_0(v29);
  if (*(v31 + 84) == a2)
  {
    v9 = v30;
    v10 = a3[15];
    goto LABEL_31;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v33 = OUTLINED_FUNCTION_25_0(v32);
  if (*(v34 + 84) == a2)
  {
    v9 = v33;
    v10 = a3[16];
    goto LABEL_31;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v36 = OUTLINED_FUNCTION_25_0(v35);
  if (*(v37 + 84) == a2)
  {
    v9 = v36;
    v10 = a3[17];
    goto LABEL_31;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v39 = OUTLINED_FUNCTION_25_0(v38);
  if (*(v40 + 84) == a2)
  {
    v9 = v39;
    v10 = a3[18];
    goto LABEL_31;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v42 = OUTLINED_FUNCTION_25_0(v41);
  if (*(v43 + 84) == a2)
  {
    v9 = v42;
    v10 = a3[20];
    goto LABEL_31;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v45 = OUTLINED_FUNCTION_25_0(v44);
  if (*(v46 + 84) == a2)
  {
    v9 = v45;
    v10 = a3[21];
    goto LABEL_31;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v48 = OUTLINED_FUNCTION_25_0(v47);
  if (*(v49 + 84) == a2)
  {
    v9 = v48;
    v10 = a3[26];
    goto LABEL_31;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v51 = OUTLINED_FUNCTION_25_0(v50);
  if (*(v52 + 84) == a2)
  {
    v9 = v51;
    v10 = a3[27];
    goto LABEL_31;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v55 = sub_1D560D838();
    v56 = OUTLINED_FUNCTION_25_0(v55);
    if (*(v57 + 84) == a2)
    {
      v9 = v56;
      v10 = a3[29];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[30];
    }

LABEL_31:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v54 = *(a1 + a3[28]);
  if (v54 >= 0xFFFFFFFF)
  {
    LODWORD(v54) = -1;
  }

  return (v54 + 1);
}

uint64_t sub_1D4E8C8B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[7];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
        v20 = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[8];
        }

        else
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
          v23 = OUTLINED_FUNCTION_25_0(v22);
          if (*(v24 + 84) == a3)
          {
            v11 = v23;
            v12 = a4[11];
          }

          else
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
            v26 = OUTLINED_FUNCTION_25_0(v25);
            if (*(v27 + 84) == a3)
            {
              v11 = v26;
              v12 = a4[13];
            }

            else
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
              v29 = OUTLINED_FUNCTION_25_0(v28);
              if (*(v30 + 84) == a3)
              {
                v11 = v29;
                v12 = a4[14];
              }

              else
              {
                v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
                v32 = OUTLINED_FUNCTION_25_0(v31);
                if (*(v33 + 84) == a3)
                {
                  v11 = v32;
                  v12 = a4[15];
                }

                else
                {
                  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
                  v35 = OUTLINED_FUNCTION_25_0(v34);
                  if (*(v36 + 84) == a3)
                  {
                    v11 = v35;
                    v12 = a4[16];
                  }

                  else
                  {
                    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                    v38 = OUTLINED_FUNCTION_25_0(v37);
                    if (*(v39 + 84) == a3)
                    {
                      v11 = v38;
                      v12 = a4[17];
                    }

                    else
                    {
                      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                      v41 = OUTLINED_FUNCTION_25_0(v40);
                      if (*(v42 + 84) == a3)
                      {
                        v11 = v41;
                        v12 = a4[18];
                      }

                      else
                      {
                        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                        v44 = OUTLINED_FUNCTION_25_0(v43);
                        if (*(v45 + 84) == a3)
                        {
                          v11 = v44;
                          v12 = a4[20];
                        }

                        else
                        {
                          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
                          v47 = OUTLINED_FUNCTION_25_0(v46);
                          if (*(v48 + 84) == a3)
                          {
                            v11 = v47;
                            v12 = a4[21];
                          }

                          else
                          {
                            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                            v50 = OUTLINED_FUNCTION_25_0(v49);
                            if (*(v51 + 84) == a3)
                            {
                              v11 = v50;
                              v12 = a4[26];
                            }

                            else
                            {
                              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
                              result = OUTLINED_FUNCTION_25_0(v52);
                              if (*(v54 + 84) == a3)
                              {
                                v11 = result;
                                v12 = a4[27];
                              }

                              else
                              {
                                if (a3 == 0x7FFFFFFF)
                                {
                                  *(a1 + a4[28]) = (a2 - 1);
                                  return result;
                                }

                                v55 = sub_1D560D838();
                                v56 = OUTLINED_FUNCTION_25_0(v55);
                                if (*(v57 + 84) == a3)
                                {
                                  v11 = v56;
                                  v12 = a4[29];
                                }

                                else
                                {
                                  v11 = sub_1D5610088();
                                  v12 = a4[30];
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E8CE14(uint64_t a1)
{
  *(a1 + 32) = 1;
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
}

uint64_t sub_1D4E8CE44()
{
  if (*(v0 + 176))
  {

    v1 = *(v0 + 184);
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E8CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8CF78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8D024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51D53E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D050@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPin.position.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E8D1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D4E8D2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E8D390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D4E8D4B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8D540(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8D5C0@<X0>(uint64_t *a1@<X8>)
{
  result = CreditArtist.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8D610@<X0>(uint64_t *a1@<X8>)
{
  result = CreditArtist.roleNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5613D28();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E8D708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5613D28();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8D7B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8D7F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D4E8D8B8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_13_57();

  return swift_deallocObject();
}

uint64_t sub_1D4E8D9A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_25_0(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
      v9 = *(a3 + 24);
    }

    v10 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1D4E8DA74()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
      v8 = *(v4 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D4E8DB3C(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v10 = *(a3 + 64);
    }

    v11 = OUTLINED_FUNCTION_152(v10);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void sub_1D4E8DC24()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v8 = *(v4 + 64);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D4E8DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
    v12 = OUTLINED_FUNCTION_25_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
      v14 = *(a3 + 40);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1D4E8DDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
      v16 = *(a4 + 40);
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1D4E8DFC0(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FEF88();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E010(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FED60();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560C368();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for MusicPin();
    v12 = OUTLINED_FUNCTION_25_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24) + 8);
      if (v15 > 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D4E8E124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560C368();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for MusicPin();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E8E20C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E8E298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E8E35C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

void *sub_1D4E8E390(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FF930();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E3BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FF81C();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E3E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FF4DC();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E464(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FF0C4();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E490(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D51FF010();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E8E4BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D4E8E534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8E5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8E684@<X0>(uint64_t *a1@<X8>)
{
  result = Composer.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8E848@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D5612E28();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E8E9A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5612DF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8EAA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_29;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_29;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[10];
    goto LABEL_29;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v10 = a3[14];
    goto LABEL_29;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v21 = OUTLINED_FUNCTION_25_0(v20);
  if (*(v22 + 84) == a2)
  {
    v9 = v21;
    v10 = a3[18];
    goto LABEL_29;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  v24 = OUTLINED_FUNCTION_25_0(v23);
  if (*(v25 + 84) == a2)
  {
    v9 = v24;
    v10 = a3[21];
    goto LABEL_29;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v27 = OUTLINED_FUNCTION_25_0(v26);
  if (*(v28 + 84) == a2)
  {
    v9 = v27;
    v10 = a3[22];
    goto LABEL_29;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v30 = OUTLINED_FUNCTION_25_0(v29);
  if (*(v31 + 84) == a2)
  {
    v9 = v30;
    v10 = a3[23];
    goto LABEL_29;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v33 = OUTLINED_FUNCTION_25_0(v32);
  if (*(v34 + 84) == a2)
  {
    v9 = v33;
    v10 = a3[26];
    goto LABEL_29;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v36 = OUTLINED_FUNCTION_25_0(v35);
  if (*(v37 + 84) == a2)
  {
    v9 = v36;
    v10 = a3[30];
    goto LABEL_29;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v39 = OUTLINED_FUNCTION_25_0(v38);
  if (*(v40 + 84) == a2)
  {
    v9 = v39;
    v10 = a3[38];
    goto LABEL_29;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v42 = OUTLINED_FUNCTION_25_0(v41);
  if (*(v43 + 84) == a2)
  {
    v9 = v42;
    v10 = a3[39];
    goto LABEL_29;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v45 = OUTLINED_FUNCTION_25_0(v44);
  if (*(v46 + 84) == a2)
  {
    v9 = v45;
    v10 = a3[41];
    goto LABEL_29;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v48 = OUTLINED_FUNCTION_25_0(v47);
  if (*(v49 + 84) == a2)
  {
    v9 = v48;
    v10 = a3[42];
    goto LABEL_29;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v52 = sub_1D560D838();
    v53 = OUTLINED_FUNCTION_25_0(v52);
    if (*(v54 + 84) == a2)
    {
      v9 = v53;
      v10 = a3[46];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[47];
    }

LABEL_29:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v51 = *(a1 + a3[45]);
  if (v51 >= 0xFFFFFFFF)
  {
    LODWORD(v51) = -1;
  }

  return (v51 + 1);
}

uint64_t sub_1D4E8EF98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[10];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
        v20 = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[14];
        }

        else
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v23 = OUTLINED_FUNCTION_25_0(v22);
          if (*(v24 + 84) == a3)
          {
            v11 = v23;
            v12 = a4[18];
          }

          else
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
            v26 = OUTLINED_FUNCTION_25_0(v25);
            if (*(v27 + 84) == a3)
            {
              v11 = v26;
              v12 = a4[21];
            }

            else
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
              v29 = OUTLINED_FUNCTION_25_0(v28);
              if (*(v30 + 84) == a3)
              {
                v11 = v29;
                v12 = a4[22];
              }

              else
              {
                v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                v32 = OUTLINED_FUNCTION_25_0(v31);
                if (*(v33 + 84) == a3)
                {
                  v11 = v32;
                  v12 = a4[23];
                }

                else
                {
                  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                  v35 = OUTLINED_FUNCTION_25_0(v34);
                  if (*(v36 + 84) == a3)
                  {
                    v11 = v35;
                    v12 = a4[26];
                  }

                  else
                  {
                    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                    v38 = OUTLINED_FUNCTION_25_0(v37);
                    if (*(v39 + 84) == a3)
                    {
                      v11 = v38;
                      v12 = a4[30];
                    }

                    else
                    {
                      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
                      v41 = OUTLINED_FUNCTION_25_0(v40);
                      if (*(v42 + 84) == a3)
                      {
                        v11 = v41;
                        v12 = a4[38];
                      }

                      else
                      {
                        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
                        v44 = OUTLINED_FUNCTION_25_0(v43);
                        if (*(v45 + 84) == a3)
                        {
                          v11 = v44;
                          v12 = a4[39];
                        }

                        else
                        {
                          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                          v47 = OUTLINED_FUNCTION_25_0(v46);
                          if (*(v48 + 84) == a3)
                          {
                            v11 = v47;
                            v12 = a4[41];
                          }

                          else
                          {
                            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
                            result = OUTLINED_FUNCTION_25_0(v49);
                            if (*(v51 + 84) == a3)
                            {
                              v11 = result;
                              v12 = a4[42];
                            }

                            else
                            {
                              if (a3 == 0x7FFFFFFF)
                              {
                                *(a1 + a4[45]) = (a2 - 1);
                                return result;
                              }

                              v52 = sub_1D560D838();
                              v53 = OUTLINED_FUNCTION_25_0(v52);
                              if (*(v54 + 84) == a3)
                              {
                                v11 = v53;
                                v12 = a4[46];
                              }

                              else
                              {
                                v11 = sub_1D5610088();
                                v12 = a4[47];
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E8F488()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1D4E8F608()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isFollowable.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F630()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isAutoFollowEnabled.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F778()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8F7A0()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isDiscoverableByContact.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F7C8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isContactsCheckAllowed.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F7F0()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isOnboardingBlocked.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F818()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isOnboarded.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F840()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isVerified.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F868()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isPrivate.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F890()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8F8B8()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.discoverabilityConsentVersion.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E8F8E8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isCollaborationAllowed.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F910()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.acceptedTerms.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E8FA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D560C0A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8FB90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8FC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E8FC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E8FD28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8FDB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8FE54()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_1D52275BC();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8FF10()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8FF5C()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.duration.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E8FFCC()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90018()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E90040()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.showName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_1D4E9011C@<D0>(_OWORD *a1@<X8>)
{
  TVEpisode.supportedLocales.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_1D4E901CC()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.previews.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9023C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5224690(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9028C()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E902B4()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.subNumber.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E902DC()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.seasonNumber.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E90304()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.number.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

void sub_1D4E90350()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode._editorialArtworks.getter();
  *v0 = v1;
}

uint64_t sub_1D4E90378()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E903A0()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E903C8()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.credits.getter();
  *v0 = v1;
}

uint64_t sub_1D4E903F0()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E90418()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5223DD4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E90620@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5230B90();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E907D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_1D4E9081C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E909F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_1D560D838();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[8];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[9];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[7]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1D4E90B0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v13 = sub_1D560D838();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[8];
    }

    else
    {
      v11 = sub_1D5610088();
      v12 = a4[9];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E90C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E90CF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E90E20()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.supportsSmartTransitions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E48()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.spatialOffsets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E70()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E98()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.customLyrics.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E90EE4()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.assetURLs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9103C(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_1D560C328();
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[10];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
          v12 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1D4E911A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_1D560C328();
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[10];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
          v12 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D4E91380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_16:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[7];
LABEL_15:
    v10 = a1 + v14;
    goto LABEL_16;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[9];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[24];
    goto LABEL_15;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v22 = OUTLINED_FUNCTION_25_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[25];
    goto LABEL_15;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v25 = OUTLINED_FUNCTION_25_0(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[26];
    goto LABEL_15;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v28 = OUTLINED_FUNCTION_25_0(v27);
  if (*(v29 + 84) == a2)
  {
    v9 = v28;
    v14 = a3[27];
    goto LABEL_15;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v32 = sub_1D560D838();
    v33 = OUTLINED_FUNCTION_25_0(v32);
    if (*(v34 + 84) == a2)
    {
      v9 = v33;
      v14 = a3[29];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[30];
    }

    goto LABEL_15;
  }

  v31 = *(a1 + a3[28]);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

uint64_t sub_1D4E91660(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[7];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[24];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
          v24 = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[25];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
            v27 = OUTLINED_FUNCTION_25_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[26];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
              result = OUTLINED_FUNCTION_25_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = result;
                v16 = a4[27];
              }

              else
              {
                if (a3 == 0x7FFFFFFF)
                {
                  *(a1 + a4[28]) = (a2 - 1);
                  return result;
                }

                v32 = sub_1D560D838();
                v33 = OUTLINED_FUNCTION_25_0(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = v33;
                  v16 = a4[29];
                }

                else
                {
                  v11 = sub_1D5610088();
                  v16 = a4[30];
                }
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E9193C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E919DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E91AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E91BB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E91C10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = InternalMusicPlayer.Queue.isAutoPlayEnabled.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E91C98(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_131_5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v3 = OUTLINED_FUNCTION_87();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1D4E91D14()
{
  OUTLINED_FUNCTION_39_17();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
    v3 = OUTLINED_FUNCTION_87();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1D4E91D8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560C368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4E91DD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D560C368();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1D4E91E2C()
{
  OUTLINED_FUNCTION_191();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  OUTLINED_FUNCTION_69(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v4;
  type metadata accessor for MusicPlaybackIntentDonation(0);
  v9 = OUTLINED_FUNCTION_45_1();
  if (!__swift_getEnumTagSinglePayload(v9, v10, v11))
  {
    type metadata accessor for MusicPlaybackIntentDonation.IntentKind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D4EF21B4(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
      v12 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
      v13 = *(v12 + 20);
      v14 = sub_1D560D838();
      OUTLINED_FUNCTION_14(v14);
      (*(v15 + 8))(v8 + v13);
      v16 = *(v8 + *(v12 + 24) + 8);
    }

    else
    {
    }
  }

  v17 = *(v0 + v5);

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  v18 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  }

  if (*(v0 + v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v18));
  }

  OUTLINED_FUNCTION_190();

  return swift_deallocObject();
}

uint64_t sub_1D4E91FCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E9201C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D4E9205C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E924F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E92538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E925AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = sub_1D560CD48();
          v12 = a3[10];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1D4E92718(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v17 = OUTLINED_FUNCTION_25_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = sub_1D560CD48();
          v12 = a4[10];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D4E928E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C368();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E929A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C368();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D4E92A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E92B38@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogChartsRequest.excludeDefaultCharts.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4E92B90@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogChartsRequest.includeGeoLocation.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4E92BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_1D560D838();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[9];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[10];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[8]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1D4E92D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v13 = sub_1D560D838();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[9];
    }

    else
    {
      v11 = sub_1D5610088();
      v12 = a4[10];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E93070(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5615458();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E930FC()
{
  v1 = sub_1D5615458();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v3 + 8))(&v0[v4], v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E93214(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[8];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[11];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v16 = a3[12];
      }
    }

    v10 = a1 + v16;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[7] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1D4E93394(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[11];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v16 = a4[12];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E9359C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorePlatformUserProfile();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E93654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StorePlatformUserProfile();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D4E9378C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicPlayer.Queue.presto_playActivityFeatureName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D4E937BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicPlayer.Queue.presto_playActivityRecommendationData.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D4E93864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E93918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E93AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_1();
  v6 = sub_1D560CD48();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E93B9C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560CD48();
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_37_19();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E93C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_1();
  v6 = sub_1D560C328();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E93D00(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560C328();
  result = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_37_19();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_1D4E93D98()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E93DD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D4E93E1C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D4E93E54()
{
  v1 = (_s10PropertiesVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  OUTLINED_FUNCTION_14(v7);
  (*(v8 + 8))(v5 + v6);
  v9 = *(v5 + v1[9]);

  v10 = *(v5 + v1[10]);

  v11 = *(v5 + v1[11]);

  v12 = *(v5 + v1[12]);

  v13 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1D4E93F84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s13PersistedDateVMa();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9405C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s13PersistedDateVMa();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E941D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_5;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[9];
    goto LABEL_5;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v17 = OUTLINED_FUNCTION_25_0(v16);
    if (*(v18 + 84) == a2)
    {
      v9 = v17;
      v10 = a3[15];
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v20 = OUTLINED_FUNCTION_25_0(v19);
      if (*(v21 + 84) == a2)
      {
        v9 = v20;
        v10 = a3[17];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
        v10 = a3[24];
      }
    }

LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v15 = *(a1 + a3[14] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4E943A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v12 = a4[9];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[14] + 8) = (a2 - 1);
        return result;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[15];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        v20 = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[17];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
          v12 = a4[24];
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E945E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9467C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E94708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560C0A8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E94790(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560C0A8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E94898@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogSearchSuggestionsRequest.includeNaturalLanguageResults.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D4E949C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E94A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1D560CD48();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 28));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4E94B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560C0A8();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1D560CD48();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

__n128 sub_1D4E94C34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E94C40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s21EntryPropertyProviderVMa();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E94CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s21EntryPropertyProviderVMa();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_1D4E94DE0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D4E94E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E94E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E94F94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a3[12];
    goto LABEL_10;
  }

  v14 = *(a1 + a3[11] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D4E950C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v12 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v12 = a4[12];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E95260()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[12];

  v3 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1D4E95408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D56106B8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E95490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D56106B8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E95550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E0, &qword_1D5652E68);
  OUTLINED_FUNCTION_4_0(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E955D8()
{
  v1 = *(type metadata accessor for MusicRestrictionsObserver.ObservationToken() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_1D560C368();
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1D4E956C0()
{
  sub_1D56140F8();
  v0 = OUTLINED_FUNCTION_5_43();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D4E95700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_140(a1, a2, a3);
  v4 = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_11_91();
  return v6(v5);
}

__n128 sub_1D4E95738(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E95744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_140(a1, a2, a3);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_11_91();
  return v6(v5);
}

uint64_t sub_1D4E9577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_140(a1, a2, a3);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_11_91();
  return v6(v5);
}

uint64_t sub_1D4E957B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_140(a1, a2, a3);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_11_91();
  return v6(v5);
}

uint64_t sub_1D4E95864(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_11:
    v10 = a1 + v14;
    goto LABEL_12;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[7];
    goto LABEL_11;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v22 = OUTLINED_FUNCTION_25_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[8];
    goto LABEL_11;
  }

  v25 = *(a1 + a3[9]);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  return (v25 + 1);
}

uint64_t sub_1D4E95A4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
          result = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) != a3)
          {
            *(a1 + a4[9]) = (a2 - 1);
            return result;
          }

          v11 = result;
          v16 = a4[8];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E95CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E95DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E95E84()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_0();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1D5614898();
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v9 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_318_0();
  v13(v12);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E95F94()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_334();
  v3 = sub_1D56158D8();
  OUTLINED_FUNCTION_69(v3);
  v22 = *(v5 + 64);
  v23 = v1;
  v6 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1D5614898();
  OUTLINED_FUNCTION_4(v12);
  v14 = v13;
  v15 = *(v13 + 80);
  v21 = *(v16 + 64);
  if (!__swift_getEnumTagSinglePayload(v0 + v6, 1, v2))
  {
    OUTLINED_FUNCTION_24_0(v2);
    (*(v17 + 8))(v0 + v6, v2);
  }

  v18 = (v6 + v22 + v9) & ~v9;
  v19 = (v18 + v11 + v15) & ~v15;
  (*(v8 + 8))(v0 + v18, v23);
  (*(v14 + 8))(v0 + v19, v12);

  return swift_deallocObject();
}

uint64_t sub_1D4E96168()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_0();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1D5614898();
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v9 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_318_0();
  v13(v12);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E962CC()
{
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *(v0 + 40);
  v12 = *(v0 + 56);
  v1 = type metadata accessor for MusicLibraryImportChangeRequest();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v1[17];
  if (!__swift_getEnumTagSinglePayload(&v3[v5], 1, v9))
  {
    OUTLINED_FUNCTION_24_0(v9);
    (*(v6 + 8))(&v3[v5], v9);
  }

  v7 = *&v3[v1[18]];

  return swift_deallocObject();
}

uint64_t sub_1D4E96494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5345E18(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4E964C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560C368();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for MusicDaemon.Item();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4E965AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560C368();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for MusicDaemon.Item();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E9674C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E967A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9687C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E96904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E969D4()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E969FC()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isVerified.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96A24()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isPrivate.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96A4C()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isLightweight.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E96A78()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E96AC8()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isPending.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96B40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D5613158();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1D4E96B8C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1D560CBA8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  v10 = (v6 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v14 = *(v0 + v6);

  (*(v9 + 8))(v0 + v10, v7);
  v15 = *(v0 + v12);

  return swift_deallocObject();
}

uint64_t sub_1D4E96CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15PersistentEntryVMa();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E96DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15PersistentEntryVMa();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D4E96EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E96F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E96F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E96FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E97024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E970D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E971D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E9720C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D4E97260@<X0>(uint64_t a1@<X8>)
{
  result = MusicLibrarySearchRequest.topResultsLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E97298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E972E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9732C@<X0>(uint64_t a1@<X8>)
{
  result = MigratedPlaylist.creationTimeSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E97364@<X0>(uint64_t a1@<X8>)
{
  result = MigratedPlaylist.updatedTimeSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E9739C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E97450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E97618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_0_197(a1, a2, a3);
  result = v5(v4);
  *v3 = result;
  return result;
}

__n128 sub_1D4E97654(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E97674(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9774C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E97848(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[22] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4E97950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[22] + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[6];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E97ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E97B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E97F40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[7];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v10 = a3[25];
    goto LABEL_10;
  }

  v14 = *(a1 + a3[16] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D4E98074(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v12 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[16] + 8) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v12 = a4[25];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E98270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  v6 = type metadata accessor for GenericMusicItem();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(v3 + *(a3 + 20));
      if (v9 >= 2)
      {
        return v9 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_1D560C328();
    v8 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E98334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  result = type metadata accessor for GenericMusicItem();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_1D560C328();
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E98420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicSuggestedPivotNode();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E984CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MusicSuggestedPivotNode();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E98574(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1D4E98640(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E9873C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D538B070();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E9876C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5068, &qword_1D565A2E0);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E988C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E98958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E98C6C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CloudMusicMovie.Attributes(0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
      v14 = OUTLINED_FUNCTION_25_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void sub_1D4E98D80()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for CloudMusicMovie.Attributes(0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
      OUTLINED_FUNCTION_25_0(v9);
      if (*(v10 + 84) == v5)
      {
        v11 = v4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
        v12 = v4[7];
      }
    }

    OUTLINED_FUNCTION_163_8();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

uint64_t sub_1D4E98E94(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    v10 = OUTLINED_FUNCTION_25_0(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      v15 = OUTLINED_FUNCTION_25_0(v14);
      if (*(v16 + 84) == a2)
      {
        v12 = v15;
        v13 = a3[8];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        v18 = OUTLINED_FUNCTION_25_0(v17);
        if (*(v19 + 84) == a2)
        {
          v12 = v18;
          v13 = a3[11];
        }

        else
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v21 = OUTLINED_FUNCTION_25_0(v20);
          if (*(v22 + 84) == a2)
          {
            v12 = v21;
            v13 = a3[14];
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
            v13 = a3[21];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void sub_1D4E99058()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0(v9);
      if (*(v10 + 84) == v5)
      {
        v11 = v4[8];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0(v12);
        if (*(v13 + 84) == v5)
        {
          v14 = v4[11];
        }

        else
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0(v15);
          if (*(v16 + 84) == v5)
          {
            v17 = v4[14];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
            v18 = v4[21];
          }
        }
      }
    }

    OUTLINED_FUNCTION_163_8();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

uint64_t sub_1D4E99210()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v1 = OUTLINED_FUNCTION_51_4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D4E9925C()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_163_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D4E992B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_25_0(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_51_4();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
    v11 = OUTLINED_FUNCTION_25_0(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
      v13 = *(a3 + 28);
    }

    v8 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_1D4E993A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_25_0(v6);
  if (*(v7 + 84) != a3)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_25_0(v8);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
      v11 = *(a4 + 28);
    }
  }

  OUTLINED_FUNCTION_163_8();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1D4E99534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560D838();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1D56106B8();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E99608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560D838();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1D56106B8();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E9984C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_12:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[7];
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[20];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v10 = a3[27];
    goto LABEL_12;
  }

  v17 = *(a1 + a3[21] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1D4E999CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[7];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      result = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = result;
        v12 = a4[20];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[21] + 8) = (a2 - 1);
          return result;
        }

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v12 = a4[27];
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4E9A234()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1D4E9A2C0@<X0>(_BYTE *a1@<X8>)
{
  result = Artist.hasMusicEvents.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E9A2EC@<X0>(_BYTE *a1@<X8>)
{
  result = Artist.hasBonusContent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E9A318@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.biography.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E9A570(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9A5F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9A69C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E9A754()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.plainEditorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9A77C()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.languageAttributes.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A7C8()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.hasHD.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9A7F4()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.has4K.getter();
  *v0 = result & 1;
  return result;
}

void sub_1D4E9A820()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A848()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.episodeCount.getter();
  *v0 = result;
  return result;
}

void sub_1D4E9A894()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.editorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9A8BC()
{
  OUTLINED_FUNCTION_20_0();
  TVShow._editorialArtworks.getter();
  *v0 = v1;
}

void sub_1D4E9A8E4()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.credits.getter();
  *v0 = v1;
}

void sub_1D4E9A90C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D53E3094(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A960()
{
  v1 = _s14TransientEntryVMa();
  OUTLINED_FUNCTION_69(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 8))(v0 + v3);
  v10 = _s15PersistentEntryVMa();
  v11 = *(v10 + 20);
  v12 = sub_1D560D9A8();
  OUTLINED_FUNCTION_14(v12);
  (*(v13 + 8))(v0 + v3 + v11);
  v14 = *(v10 + 24);
  v15 = sub_1D560C328();
  OUTLINED_FUNCTION_14(v15);
  (*(v16 + 8))(v0 + v3 + v14);

  return swift_deallocObject();
}