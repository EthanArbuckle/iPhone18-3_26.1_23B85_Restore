uint64_t sub_1D4E9AAE0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_97_16();

  return swift_deallocObject();
}

uint64_t sub_1D4E9AB7C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560CD48();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(v3 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
    v8 = a3[8];
    goto LABEL_8;
  }

  v9 = *(v3 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E9AC54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_147();
  result = sub_1D560CD48();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
    v10 = a4[8];
  }

  return __swift_storeEnumTagSinglePayload(v4 + v10, a2, a2, v9);
}

uint64_t sub_1D4E9AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560CD48();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E9AEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560CD48();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
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

uint64_t sub_1D4E9AFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
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

uint64_t sub_1D4E9B0C8()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1D4E9B120()
{
  v0 = sub_1D5615EF8();

  return v0 != 0;
}

uint64_t sub_1D4E9B21C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560CD48();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9B2E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560CD48();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E9B404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E9B458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9B4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Playlist.Collaborator();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E9B54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Playlist.Collaborator();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E9B5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E9B6B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E9B7D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D4E9B8C8(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_1D4E9B948(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1D4E9B9C0(unsigned __int8 *a1, int a2)
{
  if (a2 == 252)
  {
    v2 = *a1;
    if (v2 <= 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 3;
    if (v2 >= 3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
    v6 = OUTLINED_FUNCTION_87();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

_BYTE *sub_1D4E9BA50(_BYTE *result, uint64_t a2, int a3)
{
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1D4E9BC80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E9BD14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9BDB4(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_1D4E9BF34(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_1D4E9C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5613838();
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

    return (v8 + 1);
  }
}

uint64_t sub_1D4E9C1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D5613838();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E9C284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9C30C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560C0A8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9C3DC@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.releaseDateSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E9C4D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = InternalMusicPlayer.queue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D4E9C500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = InternalMusicPlayer.playbackTime.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D4E9C548()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E9C62C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E9C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
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

uint64_t sub_1D4E9C73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
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

__n128 sub_1D4E9C8A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9CB64()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isLightweight.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CB90()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9CBB8()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isVerified.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CBE4()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isPrivate.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CC10()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9CC98(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[7];
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
      v14 = a3[9];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[10];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D4E9CDFC(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v17 = sub_1D560D838();
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v11 = sub_1D5610088();
        v16 = a4[10];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E9CF64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E9CF9C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 sub_1D4E9CFE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9CFFC(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D544E6B8();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1D4E9D028(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D544E75C();
}

uint64_t sub_1D4E9D240(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5454C00();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D4E9D26C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9D2A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_1D4FEEE48(v0[7]);
  v4 = v0[9];

  v5 = v0[10];

  sub_1D4FEEE48(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1D4E9D308(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  v1 = sub_1D5456D98();
  return OUTLINED_FUNCTION_20_56(v1);
}

uint64_t sub_1D4E9D354(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  v1 = sub_1D5456EE4();
  return OUTLINED_FUNCTION_20_56(v1);
}

uint64_t sub_1D4E9D3A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54571D0();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D3CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D545723C();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D3F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D545732C();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D424(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5457398();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D450(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5454D80();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D5452830();
}

uint64_t sub_1D4E9D4A0()
{
  sub_1D4FEEE48(*(v0 + 16));
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9D4D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54551D8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D4E9D528(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54558BC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D4E9D63C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  v1 = sub_1D54568FC();
  return OUTLINED_FUNCTION_20_56(v1);
}

id sub_1D4E9D688(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54569CC();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D6B4(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5456ABC();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D704(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5456B3C();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D754(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5456C5C();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D7A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5456EF8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D4E9D7F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5457084();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D824(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5454F14();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D4E9D878(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5454E10();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D8A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D5454C48();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D8D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  v1 = sub_1D5454C34();
  return OUTLINED_FUNCTION_20_56(v1);
}

uint64_t sub_1D4E9D91C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54550D4();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9D988(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560CD48();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9DA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9DB40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
      v12 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1D4E9DC14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    v9 = OUTLINED_FUNCTION_25_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
      v12 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D4E9DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1D4E9DDA8()
{
  OUTLINED_FUNCTION_38_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  result = OUTLINED_FUNCTION_25_0(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_1D4E9DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D4E9DF00()
{
  OUTLINED_FUNCTION_38_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1D4E9E030()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E068(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E9E0FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9E188()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E1D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E9E208()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E260(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A52B8();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9E28C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A5648();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1D4E9E2B8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D54A565C();
}

uint64_t sub_1D4E9E2E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A60B0();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1D4E9E30C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D54A6128();
}

uint64_t sub_1D4E9E434(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A5AC0();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9E484(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A5BB4();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9E4B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A5C74();
  *v1 = result;
  return result;
}

uint64_t sub_1D4E9E53C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D54A5F84();
  *v1 = result;
  return result;
}

__n128 sub_1D4E9E610(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9E61C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9E670()
{
  OUTLINED_FUNCTION_251_3();
  v2 = type metadata accessor for MusicSuggestedSongsRequest(0);
  OUTLINED_FUNCTION_258_4(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  OUTLINED_FUNCTION_69(v7);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v42 = *(v11 + 64);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F40, &qword_1D5667A48);
  OUTLINED_FUNCTION_4(v40);
  v13 = v12;
  v14 = *(v12 + 80);
  v41 = *(v15 + 64);
  v16 = *(v0 + 16);
  swift_unknownObjectRelease();
  v17 = *(v0 + 32);

  v18 = v0 + v4;
  v19 = v1[7];
  v20 = sub_1D560CD48();
  OUTLINED_FUNCTION_4_0(v20);
  (*(v21 + 8))(v18 + v19);
  v22 = *(v18 + v1[9]);

  v23 = (v18 + v1[10]);
  v24 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
  {
    OUTLINED_FUNCTION_46_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v23[1];

        v31 = v23[2];

        v23 += 3;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_8;
        }

        v26 = sub_1D5614898();
        OUTLINED_FUNCTION_4_0(v26);
        (*(v27 + 8))(v23);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
        v29 = *(v23 + *(v28 + 48));

        v23 = (v23 + *(v28 + 64));
      }
    }

    v32 = *v23;
  }

LABEL_8:
  v33 = (v42 + v9 + v10 + 1) & ~v9;
  type metadata accessor for MusicSuggestedSongsResponse();
  if (!OUTLINED_FUNCTION_304_2(v0 + v10))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
    OUTLINED_FUNCTION_4_0(v34);
    (*(v35 + 8))(v0 + v10);
  }

  if (!OUTLINED_FUNCTION_304_2(v0 + v33))
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
    OUTLINED_FUNCTION_4_0(v36);
    (*(v37 + 8))(v0 + v33);
  }

  (*(v13 + 8))(v0 + ((v14 + ((v42 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14), v40);
  OUTLINED_FUNCTION_259_2();

  return swift_deallocObject();
}

uint64_t sub_1D4E9EDAC()
{
  v2 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  OUTLINED_FUNCTION_258_4(v2);
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v6 + 95;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7030, &qword_1D5667EA8);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v12 = *(v10 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_376_0();
  v15 = *(v0 + 32);

  v16 = (v0 + v5);
  v17 = *(v16 + 1);

  v18 = *(v16 + 4);

  v19 = *(v16 + 6);

  v20 = *(v1 + 68);
  v21 = sub_1D560CD48();
  OUTLINED_FUNCTION_4_0(v21);
  (*(v22 + 8))(&v16[v20]);
  v23 = &v16[*(v1 + 72)];
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(v23 + 1);

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
    OUTLINED_FUNCTION_4_0(v26);
    (*(v27 + 8))(&v23[v25]);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
    OUTLINED_FUNCTION_4_0(v28);
    (*(v29 + 8))(v23);
  }

  v30 = v8 & 0xFFFFFFFFFFFFFFF8;
  v31 = (v0 + v7);
  if (*v31)
  {

    v32 = v31[2];

    if (v31[4])
    {

      v33 = v31[5];

      v34 = v31[6];
    }

    v35 = v31[9];
  }

  v36 = (v0 + v30);
  if (*(v0 + v30))
  {

    v37 = v36[2];

    if (v36[4])
    {

      v38 = v36[5];

      v39 = v36[6];
    }

    v40 = v36[9];
  }

  v41 = *(v11 + 8);
  v42 = OUTLINED_FUNCTION_265_2();
  v43(v42);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F068()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[6])
  {

    v3 = v0[7];

    v4 = v0[8];
  }

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1D4E9F624()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for MusicLibraryAdvancedMappingRequest();
  OUTLINED_FUNCTION_258_4(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7150, &qword_1D5668248);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v12 = (*(v11 + 80) + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  v16 = *(v0 + 32);

  v17 = (v0 + v4);
  v18 = *v17;

  v19 = *(v17 + 1);

  v20 = *(v17 + 2);

  v21 = *(v1 + 36);
  v22 = sub_1D560CD48();
  OUTLINED_FUNCTION_4_0(v22);
  (*(v23 + 8))(&v17[v21]);
  v24 = *(v0 + v7);

  v25 = *(v0 + v8);

  (*(v11 + 8))(v0 + v12, v9);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F984()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_83_2();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F9C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4E9F9F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D4E9FA48()
{
  v1 = *(type metadata accessor for MusicSuggestedSongsViewModelSeed(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v5 + 8);

    v7 = *(v5 + 16);
  }

  else
  {
    v8 = sub_1D5614898();
    OUTLINED_FUNCTION_4_0(v8);
    (*(v9 + 8))(v0 + v2);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);

  v13 = *(v0 + v11);

  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9FB68()
{
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9FC24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71F8, &qword_1D56684B8);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);

  v12 = *(v0 + 10);

  (*(v3 + 8))(&v0[v4], v1);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

unint64_t sub_1D4E9FDDC(char a1)
{
  result = 1836213620;
  switch(a1)
  {
    case 1:
      result = 1954047342;
      break;
    case 2:
      result = 0x76697372656D6D69;
      break;
    case 3:
      result = 0x6F2D73636972796CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x7079742D6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4E9FED4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D560CD48();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[9];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
      v16 = a3[10];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[8] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1D4E9FFFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D560CD48();
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
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[9];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560D838();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1D560D9A8();
    v12 = OUTLINED_FUNCTION_25_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1D560C328();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D4EA0304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D560D838();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1D560D9A8();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_1D560C328();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA04DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1D5614828();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D4EA05D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1D5614828();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA06C4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = type metadata accessor for UserProfile();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1D4EA0708(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = type metadata accessor for UserProfile();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1D4EA07B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
    v12 = OUTLINED_FUNCTION_25_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      v16 = OUTLINED_FUNCTION_25_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
        v19 = OUTLINED_FUNCTION_25_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
          v14 = a3[8];
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D4EA0948(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
          v16 = a4[8];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA0B30@<X0>(uint64_t *a1@<X8>)
{
  result = Genre.chartLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4EA0BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4EA0BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4EA0C78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v18 = OUTLINED_FUNCTION_25_0(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[10];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v14 = a3[11];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D4EA0DF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[10];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v16 = a4[11];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA0FBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[9];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[14];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
    v21 = OUTLINED_FUNCTION_25_0(v20);
    if (*(v22 + 84) == a2)
    {
      v9 = v21;
      v14 = a3[17];
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v24 = OUTLINED_FUNCTION_25_0(v23);
      if (*(v25 + 84) == a2)
      {
        v9 = v24;
        v14 = a3[19];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a3[20];
      }
    }

    goto LABEL_7;
  }

  v19 = *(a1 + a3[15] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1D4EA11D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[9];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      result = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[14];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[15] + 8) = (a2 - 1);
          return result;
        }

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[17];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
          v24 = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[19];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v16 = a4[20];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_1D4EA14D8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_1_186(a1);
}

void *sub_1D4EA1538@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D4EA15D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SQLDatabase.Location(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4EA1660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SQLDatabase.Location(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4EA16F0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_251();
  WitnessTable = swift_getWitnessTable();

  return sub_1D54EA160(a1, WitnessTable);
}

uint64_t sub_1D4EA1738()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D54E9F34();
}

sqlite3_int64 sub_1D4EA17EC@<X0>(sqlite3_int64 a1@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = sub_1D54EB870(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D4EA1854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_90(a1, a2, a3);
  result = swift_getWitnessTable();
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1D4EA189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_90(a1, a2, a3);
  result = swift_getWitnessTable();
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1D4EA1914()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D54ED2A4();
}

void sub_1D4EA1B9C(void *a1@<X8>, void *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  OUTLINED_FUNCTION_0_253(a1);
}

uint64_t sub_1D4EA1BF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D4EA1D0C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4EA1DF8()
{
  v1 = (type metadata accessor for MusicDaemon.Item() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_69(v4);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = v0 + v2;
  v12 = sub_1D560D838();
  OUTLINED_FUNCTION_4_0(v12);
  (*(v13 + 8))(v11);
  v14 = *(v11 + v1[7] + 8);

  v15 = v1[8];
  v16 = sub_1D56106B8();
  OUTLINED_FUNCTION_4_0(v16);
  (*(v17 + 8))(v11 + v15);
  v18 = sub_1D560D478();
  if (!__swift_getEnumTagSinglePayload(v0 + v6, 1, v18))
  {
    (*(*(v18 - 8) + 8))(v0 + v6, v18);
  }

  return swift_deallocObject();
}

uint64_t sub_1D4EA2070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Playlist.Collaborator();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4EA210C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Playlist.Collaborator();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4EA21F0(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1D4EA222C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D550BF70();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EA2290(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D560C368();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for MusicDaemon.Item();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
    v14 = a3[7];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[6] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D4EA23AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D560C368();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for MusicDaemon.Item();
    result = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA25A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4EA27E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1D4EA2870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1D4EA29A8@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.vocalActivities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EA29D4@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.phrases.getter();
  *a1 = result;
  return result;
}

double sub_1D4EA2B2C@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.beatsPerMinute.getter();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D4EA2BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5615458();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
    v8 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_1D4EA2C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5615458();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4EA2D3C()
{
  v1 = sub_1D5615458();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_1D4EA36E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4EA36FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4EA3804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D4EA3A08(uint64_t a1)
{
  OUTLINED_FUNCTION_1_202();
  result = sub_1D4E74E6C(v2, v3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4EA3A50(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1D4EA3AD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1D4EA3CC0()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.uploadingArtistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3D54()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo._editorialArtworks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4EA3E0C()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4EA3E84()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3EAC()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3F1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[9];
LABEL_11:
    v10 = a1 + v14;
    goto LABEL_12;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[15];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[20];
    goto LABEL_11;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v22 = OUTLINED_FUNCTION_25_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[22];
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v26 = sub_1D560D838();
    v27 = OUTLINED_FUNCTION_25_0(v26);
    if (*(v28 + 84) == a2)
    {
      v9 = v27;
      v14 = a3[25];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[26];
    }

    goto LABEL_11;
  }

  v25 = *(a1 + a3[24]);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  return (v25 + 1);
}

uint64_t sub_1D4EA4164(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[9];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[15];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[20];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
          result = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = result;
            v16 = a4[22];
          }

          else
          {
            if (a3 == 0x7FFFFFFF)
            {
              *(a1 + a4[24]) = (a2 - 1);
              return result;
            }

            v26 = sub_1D560D838();
            v27 = OUTLINED_FUNCTION_25_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[25];
            }

            else
            {
              v11 = sub_1D5610088();
              v16 = a4[26];
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA43F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4EA443C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4EA4488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1950, &qword_1D5641F30);
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
    v10 = v9 <= 0;
    if (v9 < 0)
    {
      v9 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t sub_1D4EA4550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1950, &qword_1D5641F30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1D4EA46C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560CD48();
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_7:

    return __swift_getEnumTagSinglePayload(v3 + v10, a2, v9);
  }

  v11 = sub_1D5613D28();
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[7];
    goto LABEL_7;
  }

  v18 = *(v3 + a3[9]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1D4EA47FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560CD48();
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1D5613D28();
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
      result = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) != a3)
      {
        *(v4 + a4[9]) = (a2 - 1);
        return result;
      }

      v11 = result;
      v12 = a4[7];
    }
  }

  return __swift_storeEnumTagSinglePayload(v4 + v12, a2, a2, v11);
}

uint64_t sub_1D4EA49E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_9:
    v10 = a1 + v14;
    goto LABEL_10;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[9];
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[10];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v23 = sub_1D560D838();
    v24 = OUTLINED_FUNCTION_25_0(v23);
    if (*(v25 + 84) == a2)
    {
      v9 = v24;
      v14 = a3[12];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[13];
    }

    goto LABEL_9;
  }

  v22 = *(a1 + a3[11]);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  return (v22 + 1);
}

uint64_t sub_1D4EA4BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
      v18 = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
        result = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
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

          v23 = sub_1D560D838();
          v24 = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[12];
          }

          else
          {
            v11 = sub_1D5610088();
            v16 = a4[13];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA4E70(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  v5 = OUTLINED_FUNCTION_152(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1D4EA4EF4()
{
  OUTLINED_FUNCTION_21_86();
  if (v3)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
    v5 = OUTLINED_FUNCTION_152(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4EA4F70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v5 = OUTLINED_FUNCTION_152(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1D4EA4FF4()
{
  OUTLINED_FUNCTION_21_86();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v5 = OUTLINED_FUNCTION_152(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4EA5160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D55D1EDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4EA532C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    v21 = OUTLINED_FUNCTION_25_0(v20);
    if (*(v22 + 84) == a2)
    {
      v9 = v21;
      v14 = a3[12];
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
      v24 = OUTLINED_FUNCTION_25_0(v23);
      if (*(v25 + 84) == a2)
      {
        v9 = v24;
        v14 = a3[15];
      }

      else
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v27 = OUTLINED_FUNCTION_25_0(v26);
        if (*(v28 + 84) == a2)
        {
          v9 = v27;
          v14 = a3[16];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v14 = a3[17];
        }
      }
    }

    goto LABEL_7;
  }

  v19 = *(a1 + a3[10] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1D4EA5590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
      result = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[10] + 8) = (a2 - 1);
          return result;
        }

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[12];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
          v24 = OUTLINED_FUNCTION_25_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[15];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
            v27 = OUTLINED_FUNCTION_25_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[16];
            }

            else
            {
              v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
              v16 = a4[17];
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA5904(uint64_t a1, int a2, uint64_t a3)
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
    type metadata accessor for CloudEditorialItem.Attributes(0);
    v6 = OUTLINED_FUNCTION_152(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1D4EA5988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudEditorialItem.Attributes(0);
    v6 = OUTLINED_FUNCTION_152(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1D4EA5A04(uint64_t *a1, int a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = a3[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      OUTLINED_FUNCTION_25_0(v11);
      if (*(v12 + 84) == a2)
      {
        v10 = a3[8];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F0, &unk_1D5631020);
        OUTLINED_FUNCTION_25_0(v13);
        if (*(v14 + 84) == a2)
        {
          v10 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v10 = a3[12];
        }
      }
    }

    v15 = OUTLINED_FUNCTION_152(v10);

    return __swift_getEnumTagSinglePayload(v15, v16, v17);
  }
}

void *sub_1D4EA5B84(void *result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      OUTLINED_FUNCTION_25_0(v10);
      if (*(v11 + 84) == a3)
      {
        v9 = a4[8];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F0, &unk_1D5631020);
        OUTLINED_FUNCTION_25_0(v12);
        if (*(v13 + 84) == a3)
        {
          v9 = a4[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v9 = a4[12];
        }
      }
    }

    v14 = OUTLINED_FUNCTION_152(v9);

    return __swift_storeEnumTagSinglePayload(v14, v15, a2, v16);
  }

  return result;
}

uint64_t sub_1D4EA5DF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    v7 = type metadata accessor for CloudUploadedAudio.Attributes(0);
    OUTLINED_FUNCTION_25_0(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
      v9 = *(a3 + 24);
    }

    v10 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1D4EA5EB8()
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
    v6 = type metadata accessor for CloudUploadedAudio.Attributes(0);
    OUTLINED_FUNCTION_25_0(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
      v8 = *(v4 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D4EA5F80(uint64_t a1, int a2, int *a3)
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
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
          OUTLINED_FUNCTION_25_0(v15);
          if (*(v16 + 84) == a2)
          {
            v10 = a3[13];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v10 = a3[14];
          }
        }
      }
    }

    v17 = OUTLINED_FUNCTION_152(v10);

    return __swift_getEnumTagSinglePayload(v17, v18, v19);
  }
}

void sub_1D4EA6140()
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
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
          OUTLINED_FUNCTION_25_0(v13);
          if (*(v14 + 84) == v5)
          {
            v8 = v4[13];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v8 = v4[14];
          }
        }
      }
    }

    v15 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v15, v16, v0, v17);
  }
}

uint64_t sub_1D4EA62F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1D4EA63A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1D4EA64FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = a3[18];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[14] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4EA65E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[14] + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a4[18];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4EA6734(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v16 = OUTLINED_FUNCTION_25_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v20 = sub_1D560D838();
    v21 = OUTLINED_FUNCTION_25_0(v20);
    if (*(v22 + 84) == a2)
    {
      v9 = v21;
      v14 = a3[9];
    }

    else
    {
      v9 = sub_1D5610088();
      v14 = a3[10];
    }

    goto LABEL_7;
  }

  v19 = *(a1 + a3[8]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1D4EA68E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      result = OUTLINED_FUNCTION_25_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v20 = sub_1D560D838();
        v21 = OUTLINED_FUNCTION_25_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v11 = sub_1D5610088();
          v16 = a4[10];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4EA6A90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2E8, &qword_1D5631018);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
  v15 = OUTLINED_FUNCTION_25_0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v10 = a3[12];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v22 = sub_1D560D838();
    v23 = OUTLINED_FUNCTION_25_0(v22);
    if (*(v24 + 84) == a2)
    {
      v9 = v23;
      v10 = a3[15];
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = a3[16];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v21 = *(a1 + a3[14]);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

uint64_t sub_1D4EA6C8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2E8, &qword_1D5631018);
    v14 = OUTLINED_FUNCTION_25_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[8];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      v17 = OUTLINED_FUNCTION_25_0(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[9];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        result = OUTLINED_FUNCTION_25_0(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = result;
          v12 = a4[12];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[14]) = (a2 - 1);
            return result;
          }

          v22 = sub_1D560D838();
          v23 = OUTLINED_FUNCTION_25_0(v22);
          if (*(v24 + 84) == a3)
          {
            v11 = v23;
            v12 = a4[15];
          }

          else
          {
            v11 = sub_1D5610088();
            v12 = a4[16];
          }
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1D4EA6E98()
{
  sub_1D5613158();
  v0 = OUTLINED_FUNCTION_4_169();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t sub_1D4EA6EDC()
{
  sub_1D5613528();
  v0 = OUTLINED_FUNCTION_4_169();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t storeEnumTagSinglePayload for CoverArtworkRecipe.ExpressionID(uint64_t result, int a2, int a3)
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

char *sub_1D4EA729C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

uint64_t sub_1D4EA73A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1D4EA73B4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E6977688]);

  return [v3 initWithVariants:4 options:a2];
}

uint64_t sub_1D4EA7410(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D4EA7420(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4EA7484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4EA7350();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4EA74B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5023228(a1, a2);
  *a3 = result & 1;
  return result;
}

sqlite3_stmt *sub_1D4EA74E8@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54EB088(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id getMPAVEndpointRouteClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPAVEndpointRouteClass_softClass;
  v7 = getMPAVEndpointRouteClass_softClass;
  if (!getMPAVEndpointRouteClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPAVEndpointRouteClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPAVEndpointRouteClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EA7850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA7A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPAVEndpointRouteClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPAVEndpointRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVEndpointRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPAVEndpointRouteClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EA7D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreArtworkDataSourceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C38A8;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPStoreArtworkDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreArtworkDataSourceClass_block_invoke_cold_1();
  }

  getMPStoreArtworkDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EA803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCModelStorePlaybackItemsRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C38E8;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCModelStorePlaybackItemsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_cold_1();
  }

  getMPCModelStorePlaybackItemsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EA842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA87E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerCommandDialogActionClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandDialogAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandDialogActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandDialogActionClass_block_invoke_cold_1();
    return __MediaPlaybackCoreLibraryCore_block_invoke_1(v3);
  }

  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPCPlayerCommandDialogClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandDialog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandDialogClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandDialogClass_block_invoke_cold_1();
    return __getMPCPlayerCommandStatusClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest *__getMPCPlayerCommandStatusClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandStatusClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest *)v3 initWithPlaylist:v4 playlistEntry:v5 reactionText:v6, v7];
  }

  return result;
}

void sub_1D4EA8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3918;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryPlaylistEntryReactionChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEntryReactionChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPModelLibraryPlaylistEditControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditControllerClass_softClass;
  v7 = getMPModelLibraryPlaylistEditControllerClass_softClass;
  if (!getMPModelLibraryPlaylistEditControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EA90B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelLibraryPlaylistEditControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_0();
    v6[3] = dlsym(v1, "MPModelLibraryPlaylistEditControllerDidChangeNotification");
    getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EA9640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getMPModelLibraryPlaylistEditControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelLibraryPlaylistEditController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditControllerClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_2(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_0();
  result = dlsym(v2, "MPModelLibraryPlaylistEditControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3A40;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelObjectClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelObjectClass_block_invoke_cold_1();
    return MusicKit_MGGetDeviceClass();
  }

  return result;
}

void sub_1D4EAAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPCPlayerEnqueueErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_0();
  result = dlsym(v2, "MPCPlayerEnqueueErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EAB220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAB598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelSongClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_3(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPModelLibraryAddToPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryAddToPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke_cold_1();
    return __getMPMutableSectionedCollectionClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPCPlaybackEngine *__getMPMutableSectionedCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPCPlaybackEngine *)v3 initWithPlayerID:v4 options:v5 fallbackPlaybackIntent:v6, v7];
  }

  return result;
}

void sub_1D4EAB980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlaybackEngineClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3AE0;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_3)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlaybackEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlaybackEngineClass_block_invoke_cold_1();
  }

  getMPCPlaybackEngineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EABDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseItemClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_4)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3AF8;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_4)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerResponseItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerResponseItemClass_block_invoke_cold_1();
  }

  getMPCPlayerResponseItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EACB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass_0;
  v7 = getMPMutableSectionedCollectionClass_softClass_0;
  if (!getMPMutableSectionedCollectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EACE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelLibraryTransientStateControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelLibraryRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelLibraryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryRequestClass_block_invoke_cold_1();
    return __getMPPropertySetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPPropertySetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPPropertySet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPropertySetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPPropertySetClass_block_invoke_cold_1();
    return __getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistLastModifiedDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistTracksTiledArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *__getMPMutableSectionedCollectionClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *)v3 initWithModelObject:v4 children:v5, v6];
  }

  return result;
}

void sub_1D4EADABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMutableSectionedCollectionClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_5(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPStoreLibraryPersonalizationRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPStoreLibraryPersonalizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreLibraryPersonalizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPStoreLibraryPersonalizationRequestClass_block_invoke_cold_1();
    return __getMPStoreLibraryPersonalizationResponseClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest *__getMPStoreLibraryPersonalizationResponseClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPStoreLibraryPersonalizationResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreLibraryPersonalizationResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPStoreLibraryPersonalizationResponseClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest *)v3 initWithPlaylist:v4 sharingMode:v5, v6];
  }

  return result;
}

void sub_1D4EADE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_6)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_6;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3C28;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_6)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryStartCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryStartCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAE2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAE408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_7(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_7(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_7 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest *__getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLibraryRemoveFromPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRemoveFromPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest *)v3 init];
  }

  return result;
}

Class __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_8;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3C80;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_8 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryKeepLocalChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryKeepLocalChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAEAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerCommandRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_5)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_5;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3C98;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_5)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerCommandRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerCommandRequestClass_block_invoke_cold_1();
  }

  getMPCPlayerCommandRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAEF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAEFE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getMPAVEndpointRoutingDataSourceClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPAVEndpointRoutingDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVEndpointRoutingDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPAVEndpointRoutingDataSourceClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_9(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_9(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_9 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAF5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_10;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3D10;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_10 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_10)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryEndCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryEndCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_10(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_10 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAFC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPRemotePlaybackQueueClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_11)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_11;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3D50;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_11 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_11)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPRemotePlaybackQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPRemotePlaybackQueueClass_block_invoke_cold_1();
  }

  getMPRemotePlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_11(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_11 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EAFFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaLibraryClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_12;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3D68;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_12 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_12)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaLibraryClass_block_invoke_cold_1();
  }

  getMPMediaLibraryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_12(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EB02D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_13)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_13;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3D80;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_13 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_13)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPServerObjectDatabaseMediaKitImportRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke_cold_1();
  }

  getMPServerObjectDatabaseMediaKitImportRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_13(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_13 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPModelLibraryPlaylistEditChangeDetailsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeDetailsClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeDetailsClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeDetailsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB16D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_15)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_15;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3DB0;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_15 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_15)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryPlaylistEditChangeDetails");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEditChangeDetailsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_15(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_15 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPCPlayerResponseTracklistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerResponseTracklistClass_softClass;
  v7 = getMPCPlayerResponseTracklistClass_softClass;
  if (!getMPCPlayerResponseTracklistClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerResponseTracklistClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCPlayerResponseTracklistClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseTracklistClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_1();
  result = objc_getClass("MPCPlayerResponseTracklist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerResponseTracklistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerResponseTracklistClass_block_invoke_cold_1();
    return __MediaPlaybackCoreLibraryCore_block_invoke_6(v3);
  }

  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionPreviousItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionPlayingItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionUpNextItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionNextItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionAutoPlayItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EB2E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelLibraryFavoriteEntityRequestAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryFavoriteEntityRequestActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_16(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_16(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_16 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelLibraryFavoriteEntityChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryFavoriteEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke_cold_1();
    [(MusicKit_SoftLinking_DownloadedSongs *)v2 requestDownloadedSongsForMediaLibrary:v3 completionHandler:v4, v5];
  }
}

void sub_1D4EB3190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryRequestClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_17)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_17;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3E48;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_17 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_17)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryRequestClass_block_invoke_cold_1_0();
  }

  getMPModelLibraryRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_17(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_17 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EB36B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose((v12 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPModelObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass_0;
  v7 = getMPModelObjectClass_softClass_0;
  if (!getMPModelObjectClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB37DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1_0();
    return __MediaPlayerLibraryCore_block_invoke_18(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_18(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_18 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest *__getMPLibraryKeepLocalStatusObserverClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPLibraryKeepLocalStatusObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPLibraryKeepLocalStatusObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPLibraryKeepLocalStatusObserverClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest *)v3 initWithPlaylist:v4, v5];
  }

  return result;
}

void sub_1D4EB4210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB44D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPModelLibraryDuplicatePlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryDuplicatePlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_19(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPMediaLibraryClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPIdentifierSetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *__getMPModelPlaylistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *)v3 init];
  }

  return result;
}

id getMPModelLibraryDownloadQueueRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryDownloadQueueRequestClass_softClass;
  v7 = getMPModelLibraryDownloadQueueRequestClass_softClass;
  if (!getMPModelLibraryDownloadQueueRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryDownloadQueueRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryDownloadQueueRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass_0;
  v7 = getMPModelSongClass_softClass_0;
  if (!getMPModelSongClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB4A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelResponseDidInvalidateNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr;
  v8 = getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr;
  if (!getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_9();
    v6[3] = dlsym(v1, "MPModelResponseDidInvalidateNotification");
    getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EB4D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryDownloadQueueRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPModelLibraryDownloadQueueRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryDownloadQueueRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryDownloadQueueRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_20(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_20(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_20 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelSongClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelResponseDidInvalidateNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelResponseDidInvalidateNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "MPModelResponseDidInvalidateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EB5358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryJoinCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_21;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3FE0;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_21)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryJoinCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryJoinCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryJoinCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_22)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_22;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C3FF8;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_22 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_22)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryDeleteEntityChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryDeleteEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_22(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_22 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EB6058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_23(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_23 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerIsUpdateInProgressDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerGetMaxAllowedPinsForUserIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerEnableCloudLibraryOptionStartInitialImport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPModelLibraryPlaylistEditChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB682C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_2;
  v7 = getMPMediaLibraryClass_softClass_2;
  if (!getMPMediaLibraryClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_2;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass_2;
  v7 = getMPMutableSectionedCollectionClass_softClass_2;
  if (!getMPMutableSectionedCollectionClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke_2;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass_0;
  v7 = getUIImageClass_softClass_0;
  if (!getUIImageClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getUIImageClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass_0;
  v7 = getMPIdentifierSetClass_softClass_0;
  if (!getMPIdentifierSetClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB6EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistEntryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistEntryClass_softClass;
  v7 = getMPModelPlaylistEntryClass_softClass;
  if (!getMPModelPlaylistEntryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistEntryClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistEntryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelLibraryPlaylistEditChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_24(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_24(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_24 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPMediaLibraryClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPMutableSectionedCollectionClass_block_invoke_2(v3);
  }

  return result;
}

Class __getMPMutableSectionedCollectionClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return __getUIImageClass_block_invoke_0(v3);
  }

  return result;
}

Class __getUIImageClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4188;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1_0();
  }

  getUIImageClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPIdentifierSetClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistClass_block_invoke_cold_1();
    return __getMPModelSongClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelSongClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistEntryClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1();
    return __getMPModelLibraryImportChangeRequestClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPServerObjectDatabase *__getMPModelLibraryImportChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelLibraryImportChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryImportChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryImportChangeRequestClass_block_invoke_cold_1();
    return +[(MusicKit_SoftLinking_MPServerObjectDatabase *)v3];
  }

  return result;
}

void sub_1D4EB8198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB8504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPServerObjectDatabaseClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPServerObjectDatabase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPServerObjectDatabaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPServerObjectDatabaseClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_25(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_25(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_25 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelGenericObjectKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelGenericObjectKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectKindClass_block_invoke_cold_1();
    return __getMPIdentifierSetClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPIdentifierSetClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_12();
  result = dlsym(v2, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass;
  v7 = getMPMediaQueryClass_softClass;
  if (!getMPMediaQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB94CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelAlbumKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumKindClass_softClass;
  v7 = getMPModelAlbumKindClass_softClass;
  if (!getMPModelAlbumKindClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumKindClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumKindClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistKindClass_softClass_1;
  v7 = getMPModelPlaylistKindClass_softClass_1;
  if (!getMPModelPlaylistKindClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistKindClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistKindClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemPropertyAlbumPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumPersistentID");
    getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaPlaylistPropertyPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
  if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaPlaylistPropertyPersistentID");
    getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelAlbumClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumClass_softClass;
  v7 = getMPModelAlbumClass_softClass;
  if (!getMPModelAlbumClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistClass_softClass_0;
  v7 = getMPModelPlaylistClass_softClass_0;
  if (!getMPModelPlaylistClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemPropertyComposerPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaItemPropertyComposerPersistentID");
    getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EBA460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_3;
  v7 = getMPMediaLibraryClass_softClass_3;
  if (!getMPMediaLibraryClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_3;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBA548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBAB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistEntryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistEntryClass_softClass_0;
  v7 = getMPModelPlaylistEntryClass_softClass_0;
  if (!getMPModelPlaylistEntryClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistEntryClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistEntryClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBAF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaQueryClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_26(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPMediaPropertyPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaPropertyPredicateClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyAlbumPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __getMPModelPlaylistClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistClass_block_invoke_cold_1();
    return __getMPModelArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelArtistClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyAlbumArtistPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelComposerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelComposerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelComposerClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyComposerPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelGenreClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenreClass_block_invoke_cold_1();
    return __getMPMediaLibraryClass_block_invoke_3(v3);
  }

  return result;
}

Class __getMPMediaLibraryClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPRemotePlaybackQueueClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPRemotePlaybackQueueClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPRemotePlaybackQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPRemotePlaybackQueueClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPRemotePlaybackQueueClass_block_invoke_cold_1_0();
    return __getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPServerObjectDatabaseImportResult *)v3 _initWithUnderlyingImportResult:v4, v5];
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_27(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_27 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPContentTasteControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_14();
  result = dlsym(v2, "MPContentTasteControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_28(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_28 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_15();
  result = dlsym(v2, "MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EBC290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelObjectClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass_1;
  v7 = getMPModelObjectClass_softClass_1;
  if (!getMPModelObjectClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBC39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBC5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBCB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1_0();
    return __MediaPlayerLibraryCore_block_invoke_29(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_29(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_29 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPLibraryAddStatusObserverClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPLibraryAddStatusObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPLibraryAddStatusObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPLibraryAddStatusObserverClass_block_invoke_cold_1();
    return __getMPModelAlbumClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelAlbumClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __getMPModelSongClass_block_invoke_2(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryImportChangeRequest *__getMPModelSongClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return [(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest *)v3 init];
  }

  return result;
}

void sub_1D4EBD0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryImportChangeRequestClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_17();
  result = objc_getClass("MPModelLibraryImportChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryImportChangeRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryImportChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_30(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_30(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_30 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getMPMutableSectionedCollectionClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_17();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMutableSectionedCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    +[(MusicKit_SoftLinking_MPMediaDownloadManager *)v2];
  }
}

void sub_1D4EBD3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaDownloadManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_31)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_31;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4338;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_31 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_31)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPMediaDownloadManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaDownloadManagerClass_block_invoke_cold_1();
  }

  getMPMediaDownloadManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_31(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_31 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EBD8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_32)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_32;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4350;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_32 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_32)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryRemoveCollaboratorsChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryRemoveCollaboratorsChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_32(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_32 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D4EBDC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_7)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_7;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4390;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_7)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerChangeRequestClass_block_invoke_cold_1();
  }

  getMPCPlayerChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_7(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_7 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPCPlaybackIntentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlaybackIntentClass_softClass;
  v7 = getMPCPlaybackIntentClass_softClass;
  if (!getMPCPlaybackIntentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlaybackIntentClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCPlaybackIntentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCModelStorePlaybackItemsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCModelStorePlaybackItemsRequestClass_softClass_0;
  v7 = getMPCModelStorePlaybackItemsRequestClass_softClass_0;
  if (!getMPCModelStorePlaybackItemsRequestClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCModelPlaybackIntentTracklistTokenClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCModelPlaybackIntentTracklistTokenClass_softClass;
  v7 = getMPCModelPlaybackIntentTracklistTokenClass_softClass;
  if (!getMPCModelPlaybackIntentTracklistTokenClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelAlbumClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumClass_softClass_1;
  v7 = getMPModelAlbumClass_softClass_1;
  if (!getMPModelAlbumClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelArtistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelArtistClass_softClass_0;
  v7 = getMPModelArtistClass_softClass_0;
  if (!getMPModelArtistClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelArtistClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelArtistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass_3;
  v7 = getMPModelSongClass_softClass_3;
  if (!getMPModelSongClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke_3;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelRadioStationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelRadioStationClass_softClass;
  v7 = getMPModelRadioStationClass_softClass;
  if (!getMPModelRadioStationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelRadioStationClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelRadioStationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBF0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlaybackIntentClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCPlaybackIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlaybackIntentClass_block_invoke_cold_1();
  }

  getMPCPlaybackIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCModelStorePlaybackItemsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_cold_1_0();
  }

  getMPCModelStorePlaybackItemsRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCModelPlaybackIntentTracklistToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke_cold_1();
  }

  getMPCModelPlaybackIntentTracklistTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_33(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_33(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_33 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelArtistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelArtistClass_block_invoke_cold_1_0();
  }

  getMPModelArtistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelSongClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelRadioStationClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRadioStationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelRadioStationClass_block_invoke_cold_1();
  }

  getMPModelRadioStationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelAlbumKindClass_block_invoke_cold_1_0();
  }

  getMPModelAlbumKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelArtistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelArtistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelArtistKindClass_block_invoke_cold_1();
  }

  getMPModelArtistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelSongKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelSongKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelSongKindClass_block_invoke_cold_1();
  }

  getMPModelSongKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelRadioStationKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelRadioStationKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelRadioStationKindClass_block_invoke_cold_1();
  }

  getMPModelRadioStationKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_34(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_34 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPModelLibraryPlaylistEditTransactionDetailsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass;
  v7 = getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass;
  if (!getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBF978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_35)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_35;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4430;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_35 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_35)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryPlaylistEditTransactionDetails");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_35(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_35 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPMediaLibraryAlbumAppDataClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19();
  result = objc_getClass("MPMediaLibraryAlbumAppData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaLibraryAlbumAppDataClass_block_invoke_cold_1();
  }

  getMPMediaLibraryAlbumAppDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_36(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_36 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19();
  result = objc_getClass("MPModelLibraryAlbumAppDataChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryAlbumAppDataChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EC02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_9)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlaybackCoreLibraryCore_block_invoke_9;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C4488;
    v7 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_9 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_9)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerResponseClass_block_invoke_cold_1();
  }

  getMPCPlayerResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_9(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_9 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getMPModelLibraryPinnedEntityChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPinnedEntityChangeRequestClass_softClass;
  v7 = getMPModelLibraryPinnedEntityChangeRequestClass_softClass;
  if (!getMPModelLibraryPinnedEntityChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EC0804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_37)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_37;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E84C44A0;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_37 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_37)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryPinnedEntityChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryPinnedEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_37(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_37 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D4EC0C04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4EC0C24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
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

uint64_t type metadata accessor for PlaylistCollaboratorPropertyProvider()
{
  result = qword_1EC7E9CB8;
  if (!qword_1EC7E9CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4EC0F68()
{
  sub_1D4EC11C4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E78254(319, &qword_1EDD5F070, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E78254(319, &qword_1EDD5F550, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1D4EC11C4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1D4E78254(319, &unk_1EC7E9CC8, &type metadata for Playlist.Collaborator.Role, MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_1D4EC11C4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D560D838();
      if (v10 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D5610088();
      if (v11 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4E5CF94();
        v1 = v12;
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1D4EC11C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D4EC12F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D567E360);
    v50 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_54;
  }

  v18 = v17;
  v19 = qword_1EC7E9430;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_20_14();
  }

  *&v48 = qword_1EC87C520;
  v50 = v18;
  sub_1D4EC5794(&qword_1EC7E9FA8, &qword_1EC7E9FA0, &qword_1D561B990);
  if (sub_1D5614D18())
  {
    sub_1D4E69910(v2, v3, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v20 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v3);
    if (!v21)
    {
      *(&v49 + 1) = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
      (*(*(v20 - 8) + 32))(boxed_opaque_existential_0, v3, v20);
LABEL_14:

      goto LABEL_15;
    }

    v22 = &qword_1EC7E9CA0;
    v23 = &unk_1D561A0C0;
    v24 = v3;
    goto LABEL_8;
  }

  v26 = qword_1EC7E9438;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_19_5();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C528);
  OUTLINED_FUNCTION_34_6();
  if (v26)
  {
    v27 = (v2 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 20));
    v28 = v27[1];
    if (!v28)
    {
      v30 = 0;
      v29 = 0;
      goto LABEL_25;
    }

LABEL_13:
    v29 = *v27;

    v30 = MEMORY[0x1E69E6158];
LABEL_25:

    *a2 = v29;
    a2[1] = v28;
    a2[2] = 0;
    a2[3] = v30;
    return result;
  }

  v33 = qword_1EC7E9440;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C530);
  OUTLINED_FUNCTION_34_6();
  if (v33)
  {
    v34 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 24);
LABEL_34:
    v38 = *(v2 + v34);

    v39 = v38 & 1;
    v40 = MEMORY[0x1E69E6370];
    goto LABEL_35;
  }

  v35 = qword_1EC7E9448;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C538);
  OUTLINED_FUNCTION_34_6();
  if (v35)
  {
    v34 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 28);
    goto LABEL_34;
  }

  v36 = qword_1EC7E9450;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_16_9();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C540);
  OUTLINED_FUNCTION_34_6();
  if (v36)
  {
    v34 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 32);
    goto LABEL_34;
  }

  v37 = qword_1EC7E9458;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C548);
  OUTLINED_FUNCTION_34_6();
  if (v37)
  {
    v34 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 36);
    goto LABEL_34;
  }

  v41 = qword_1EC7E9460;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_13_7();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C550);
  OUTLINED_FUNCTION_34_6();
  if (v41)
  {
    v27 = (v2 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 40));
    v28 = v27[1];
    if (!v28)
    {
      v29 = 0;
      v30 = 0;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v42 = qword_1EC7E9468;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_12_9();
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C558);
  OUTLINED_FUNCTION_34_6();
  if (v42)
  {
    v43 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
    sub_1D4E69910(v2 + *(v43 + 44), v12, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v44 = sub_1D560C0A8();
    OUTLINED_FUNCTION_10(v12);
    if (!v21)
    {
      *(&v49 + 1) = v44;
      v47 = __swift_allocate_boxed_opaque_existential_0(&v48);
      (*(*(v44 - 8) + 32))(v47, v12, v44);
      goto LABEL_14;
    }

    v22 = &unk_1EC7E9CA8;
    v23 = &unk_1D561D1D0;
    v24 = v12;
LABEL_8:
    result = sub_1D4E50004(v24, v22, v23);
    v48 = 0u;
    v49 = 0u;
LABEL_15:
    v32 = v49;
    *a2 = v48;
    *(a2 + 1) = v32;
    return result;
  }

  v45 = qword_1EC7E9470;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v46 = OUTLINED_FUNCTION_1_2(qword_1EC7F46F8);

  if ((v46 & 1) == 0)
  {
    while (1)
    {
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
      v50 = a1;
      sub_1D560CDE8();
      sub_1D5615D48();
      OUTLINED_FUNCTION_33_0();
LABEL_54:
      OUTLINED_FUNCTION_23_3();
      __break(1u);
    }
  }

  v38 = *(v4 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider() + 48));

  v39 = v38 & 1;
  v40 = &type metadata for Playlist.Collaborator.Role;
LABEL_35:
  if (v38 == 2)
  {
    v40 = 0;
  }

  *a2 = v39;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v40;
  return result;
}

uint64_t sub_1D4EC1994(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v2 = qword_1EC7E9470;
  swift_retain_n();
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  sub_1D4EC5794(&qword_1EC7E9FA8, &qword_1EC7E9FA0, &qword_1D561B990);
  v3 = sub_1D5614D18();

  if (v3)
  {
    swift_getKeyPath();
    sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider);
    sub_1D5612248();

    return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_35_9();
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    result = OUTLINED_FUNCTION_23_3();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4EC1BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5619CC0;
  if (qword_1EC7E9430 != -1)
  {
    OUTLINED_FUNCTION_20_14();
  }

  *(v0 + 32) = qword_1EC87C520;
  v1 = qword_1EC7E9438;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_19_5();
  }

  *(v0 + 40) = qword_1EC87C528;
  v2 = qword_1EC7E9440;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  *(v0 + 48) = qword_1EC87C530;
  v3 = qword_1EC7E9448;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_17();
  }

  *(v0 + 56) = qword_1EC87C538;
  v4 = qword_1EC7E9450;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_16_9();
  }

  *(v0 + 64) = qword_1EC87C540;
  v5 = qword_1EC7E9458;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  *(v0 + 72) = qword_1EC87C548;
  v6 = qword_1EC7E9460;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_13_7();
  }

  *(v0 + 80) = qword_1EC87C550;
  v7 = qword_1EC7E9468;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_12_9();
  }

  *(v0 + 88) = qword_1EC87C558;
  v8 = qword_1EC7E9470;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  *(v0 + 96) = qword_1EC7F46F8;
  qword_1EC87BE40 = v0;
}

uint64_t sub_1D4EC1DDC(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F78, &unk_1D561B970);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F80, &unk_1D564CE00);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D567E2B0);
    v28 = a1;
    v25 = *(v7 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 89;
LABEL_12:
    v27 = v26;
    result = OUTLINED_FUNCTION_23_3();
    __break(1u);
    return result;
  }

  v19 = v18;
  sub_1D4E628D4(a2, &v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1D4E50004(v13, &qword_1EC7E9F78, &unk_1D561B970);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D567E2F0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 93;
    goto LABEL_12;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1D4EC568C(v13, v3);
  v20 = qword_1EC7E9470;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v27 = qword_1EC7F46F8;
  v28 = v19;
  sub_1D4EC5794(&qword_1EC7E9F90, &qword_1EC7E9F80, &unk_1D564CE00);
  v21 = sub_1D5614D18();

  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D567E330);
    v28 = v19;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 101;
    goto LABEL_12;
  }

  v22 = *(v3 + *(v14 + 48));
  result = sub_1D4EC5738(v3);
  v24 = *(v14 + 48);
  if (v22 == 2)
  {
    LOBYTE(v22) = *(v4 + v24);
  }

  *(v4 + v24) = v22;
  return result;
}

uint64_t sub_1D4EC218C(uint64_t a1, uint64_t a2)
{
  v118 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v118);
  v115 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v113 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v113 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v116);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v113 - v19;
  v20 = sub_1D56140F8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v113 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v113 - v37;
  v39 = *(v36 + 56);
  v119 = a1;
  sub_1D4E69910(a1, &v113 - v37, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v120 = a2;
  sub_1D4E69910(a2, &v38[v39], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v38);
  if (v40)
  {
    OUTLINED_FUNCTION_10(&v38[v39]);
    if (v40)
    {
      sub_1D4E50004(v38, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v41 = &qword_1EC7E9FB8;
    v42 = &unk_1D561B9C0;
    v43 = v38;
LABEL_10:
    sub_1D4E50004(v43, v41, v42);
LABEL_11:
    v44 = 0;
    return v44 & 1;
  }

  sub_1D4E69910(v38, v31, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v38[v39]);
  if (v40)
  {
    (*(v23 + 8))(v31, v20);
    goto LABEL_9;
  }

  (*(v23 + 32))(v2, &v38[v39], v20);
  OUTLINED_FUNCTION_9_5();
  sub_1D4EC4008(v46, v47);
  v48 = sub_1D5614D18();
  v49 = *(v23 + 8);
  v49(v2, v20);
  v49(v31, v20);
  sub_1D4E50004(v38, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v50 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  v51 = v50[5];
  v53 = v119;
  v52 = v120;
  OUTLINED_FUNCTION_21_2();
  if (v56)
  {
    if (!v54)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v55);
    v59 = v40 && v57 == v58;
    if (!v59 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v54)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_7(v50[6]);
  if (v40)
  {
    if (v60 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_39();
    if (v61 || ((v62 ^ v63) & 1) != 0)
    {
      return v44 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7(v50[7]);
  if (v40)
  {
    if (v64 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_39();
    if (v65 || ((v66 ^ v67) & 1) != 0)
    {
      return v44 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7(v50[8]);
  if (v40)
  {
    if (v68 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_39();
    if (v69 || ((v70 ^ v71) & 1) != 0)
    {
      return v44 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7(v50[9]);
  if (v40)
  {
    if (v72 != 2)
    {
      goto LABEL_11;
    }

LABEL_47:
    v76 = v50[10];
    OUTLINED_FUNCTION_21_2();
    if (v79)
    {
      if (!v77)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v78);
      v82 = v40 && v80 == v81;
      if (!v82 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v77)
    {
      goto LABEL_11;
    }

    v83 = v50[11];
    v84 = v117;
    v85 = *(v116 + 48);
    sub_1D4E69910(v53 + v83, v117, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4E69910(v52 + v83, v84 + v85, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v86 = v118;
    if (__swift_getEnumTagSinglePayload(v84, 1, v118) == 1)
    {
      OUTLINED_FUNCTION_43_0(v84 + v85);
      if (!v40)
      {
        goto LABEL_63;
      }

      sub_1D4E50004(v84, &unk_1EC7E9CA8, &unk_1D561D1D0);
    }

    else
    {
      v87 = v114;
      sub_1D4E69910(v84, v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_43_0(v84 + v85);
      if (v40)
      {
        (*(v115 + 8))(v87, v86);
LABEL_63:
        v41 = &qword_1EC7E9FB0;
        v42 = &qword_1D562C590;
        v43 = v84;
        goto LABEL_10;
      }

      v88 = v115;
      v89 = v84 + v85;
      v90 = v113;
      (*(v115 + 32))(v113, v89, v86);
      OUTLINED_FUNCTION_8_5();
      sub_1D4EC4008(v91, v92);
      v93 = sub_1D5614D18();
      v94 = *(v88 + 8);
      v94(v90, v86);
      v94(v87, v86);
      sub_1D4E50004(v84, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v93 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_6_7(v50[12]);
    if (v40)
    {
      if (v95 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v95 == 2 || ((v95 ^ v96) & 1) != 0)
    {
      goto LABEL_11;
    }

    v97 = v50[13];
    v98 = *(v53 + v97);
    v99 = *(v52 + v97);
    sub_1D4EF6F7C();
    if ((v100 & 1) == 0)
    {
      goto LABEL_11;
    }

    v101 = v50[14];
    if ((sub_1D560D6E8() & 1) == 0)
    {
      goto LABEL_11;
    }

    v102 = v50[15];
    if ((sub_1D4F3B22C() & 1) == 0)
    {
      goto LABEL_11;
    }

    v103 = v50[16];
    OUTLINED_FUNCTION_21_2();
    if (v106)
    {
      if (!v104)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v105);
      v109 = v40 && v107 == v108;
      if (!v109 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v104)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_24_11(v50[17]);
    if (v110)
    {
      OUTLINED_FUNCTION_24_11(v50[18]);
      if (v111)
      {
        OUTLINED_FUNCTION_24_11(v50[19]);
        if (v112)
        {
          OUTLINED_FUNCTION_24_11(v50[20]);
          return v44 & 1;
        }
      }
    }

    goto LABEL_11;
  }

  v44 = OUTLINED_FUNCTION_39();
  if (!v73 && ((v74 ^ v75) & 1) == 0)
  {
    goto LABEL_47;
  }

  return v44 & 1;
}