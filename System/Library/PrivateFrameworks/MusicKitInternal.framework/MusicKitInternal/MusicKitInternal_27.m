uint64_t sub_1D50B9D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicLibraryMapping.ItemContent.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D50B9D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D50B9DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D50BA170();
    if (v3 <= 0x3F)
    {
      sub_1D4E5DF6C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D50B9E88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D50B9FAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
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
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_1D50BA170()
{
  if (!qword_1EDD53A28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD53A28);
    }
  }
}

uint64_t sub_1D50BA1D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MusicPlayer.Queue.playActivityFeatureName.setter();
}

uint64_t (*MusicPlayer.Queue.playActivityFeatureName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvg_0();
  a1[1] = v3;
  return sub_1D50BA264;
}

uint64_t sub_1D50BA264(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvs_0();
  }

  else
  {
    v7 = *a1;
    return _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvs_0();
  }
}

uint64_t sub_1D50BA2DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1D50BA3D8(*a1, *(a1 + 8));
  return MusicPlayer.Queue.playActivityRecommendationData.setter();
}

uint64_t (*MusicPlayer.Queue.playActivityRecommendationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvg_0();
  a1[1] = v3;
  return sub_1D50BA36C;
}

uint64_t sub_1D50BA36C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_128();
    sub_1D50BA3D8(v5, v6);
    OUTLINED_FUNCTION_128();
    _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvs_0();
    v7 = OUTLINED_FUNCTION_128();

    return sub_1D50153E4(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    return _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvs_0();
  }
}

uint64_t sub_1D50BA3D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4F48DE4(a1, a2);
  }

  return a1;
}

double MusicPlayer.Queue.container.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D560EF38();
  if (!v4)
  {
    sub_1D4E6C9CC(v3, &unk_1EC7F65C0, &qword_1D562E6B0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D50BA494(uint64_t a1, uint64_t *a2)
{
  sub_1D50BA5C0(a1, v5);
  v3 = *a2;
  return MusicPlayer.Queue.container.setter(v5);
}

uint64_t MusicPlayer.Queue.container.setter(uint64_t a1)
{
  sub_1D50BA5C0(a1, v7);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(&v11 + 1) = v2;
    v12 = *(v3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D4E6C9CC(v7, &unk_1EC7F65D0, &qword_1D5638870);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1D560EF48();
  return sub_1D4E6C9CC(a1, &unk_1EC7F65D0, &qword_1D5638870);
}

uint64_t sub_1D50BA5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65D0, &qword_1D5638870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*MusicPlayer.Queue.container.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  MusicPlayer.Queue.container.getter(v3);
  return sub_1D50BA694;
}

void sub_1D50BA694(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1D50BA5C0(*a1, v2 + 40);
    MusicPlayer.Queue.container.setter(v2 + 40);
    sub_1D4E6C9CC(v2, &unk_1EC7F65D0, &qword_1D5638870);
  }

  else
  {
    MusicPlayer.Queue.container.setter(*a1);
  }

  free(v2);
}

uint64_t MusicCatalogSearchRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D560DEE8();
  sub_1D560CCE8();
  (*(v5 + 8))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v17 = type metadata accessor for MusicRequestConfiguration();
  v18 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v18 ^ 1u, 1, v17);
  sub_1D4F73F78(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) != 1)
    {
      sub_1D4FEF060(v14);
    }
  }

  else
  {
    sub_1D4E56C6C(v14, a1);
  }

  return sub_1D4FEF060(v16);
}

uint64_t sub_1D50BA908(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v5);
  return MusicCatalogSearchRequest.configuration.setter(v5);
}

uint64_t MusicCatalogSearchRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  type metadata accessor for MusicRequestConfiguration();
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v5 + 16))(v10, v12, v2);
  sub_1D560DEF8();
  sub_1D4F581B8(a1);
  return (*(v5 + 8))(v12, v2);
}

void (*MusicCatalogSearchRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = OUTLINED_FUNCTION_2_60();
  v3[4] = OUTLINED_FUNCTION_2_60();
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[5] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[6] = OUTLINED_FUNCTION_2_60();
  v9 = OUTLINED_FUNCTION_2_60();
  v3[7] = v9;
  MusicCatalogSearchRequest.configuration.getter(v9);
  return sub_1D50BABC0;
}

void sub_1D50BABC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1D4F5A490((*a1)[7], v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560DEF8();
    (*(v8 + 8))(v6, v9);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v13 = OUTLINED_FUNCTION_178();
    v14(v13);
    sub_1D560DEF8();
    (*(v8 + 8))(v6, v9);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1D50BAD00(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69750E8] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCEBA0](a1);
}

uint64_t sub_1D50BADCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Presto_MusicLibrary.DownloadStatus.DownloadPauseReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D50BAE0C@<X0>(uint64_t *a1@<X8>)
{
  result = Presto_MusicLibrary.DownloadStatus.DownloadPauseReasons.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static Presto_MusicLibrary.DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      switch(*&v2)
      {
        case 1:
          return v4 == 2 && *&v3 == 1;
        case 2:
          return v4 == 2 && *&v3 == 2;
        case 3:
          return v4 == 2 && *&v3 == 3;
        case 4:
          return v4 == 2 && *&v3 == 4;
        default:
          return v4 == 2 && *&v3 == 0;
      }
    }

    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  v7 = *a1;
  v8 = *a2;
  return v2 == v3;
}

uint64_t Presto_MusicLibrary.DownloadStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](6);
      v2 = v1;
    }

    else
    {
      switch(v1)
      {
        case 1:
          v2 = 1;
          break;
        case 2:
          v2 = 2;
          break;
        case 3:
          v2 = 4;
          break;
        case 4:
          v2 = 5;
          break;
        default:
          v2 = 0;
          break;
      }
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1DA6EC100](v4);
  }
}

uint64_t Presto_MusicLibrary.DownloadStatus.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  Presto_MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50BB004()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  Presto_MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D50BB058()
{
  result = qword_1EC7EF768;
  if (!qword_1EC7EF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF768);
  }

  return result;
}

unint64_t sub_1D50BB0B0()
{
  result = qword_1EC7EF770;
  if (!qword_1EC7EF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF770);
  }

  return result;
}

unint64_t sub_1D50BB104()
{
  result = qword_1EC7EF778;
  if (!qword_1EC7EF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF778);
  }

  return result;
}

unint64_t sub_1D50BB15C()
{
  result = qword_1EC7EF780;
  if (!qword_1EC7EF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF780);
  }

  return result;
}

unint64_t sub_1D50BB1B4()
{
  result = qword_1EC7EF788;
  if (!qword_1EC7EF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF788);
  }

  return result;
}

uint64_t sub_1D50BB22C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for MusicSuggestedPivotRound();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D4F0430C();
  v12 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v18;
  v14 = *(v7 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v15 = *(v12 + 16);
    if (v15 >= *(v12 + 24) >> 1)
    {
      sub_1D4F0430C();
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    sub_1D50C1544(v10, v12 + v18 + v15 * v14);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D50BB3D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for MusicSuggestedPivotEntry();
  v7 = OUTLINED_FUNCTION_69(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D4F04364();
  v16 = v25;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  OUTLINED_FUNCTION_69(v17);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v23 = *(v20 + 72);
  while (1)
  {
    a1(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = *(v25 + 16);
    if (v21 >= *(v25 + 24) >> 1)
    {
      sub_1D4F04364();
    }

    *(v25 + 16) = v21 + 1;
    sub_1D50C1544(v14, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
    v19 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t MusicSuggestedPivotsViewModel.__allocating_init(seed:limit:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MusicSuggestedPivotsViewModel.init(seed:limit:)();
  return v3;
}

void MusicSuggestedPivotsViewModel.init(seed:limit:)()
{
  OUTLINED_FUNCTION_47();
  v128 = v0;
  v135 = v1;
  v133 = v2;
  v136 = type metadata accessor for MusicSuggestedPivotSeed();
  v3 = OUTLINED_FUNCTION_14(v136);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v118 = v7 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  v8 = OUTLINED_FUNCTION_14(v114);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v134 = v11 - v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v109 - v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v109 - v16;
  v17 = sub_1D560C368();
  v18 = OUTLINED_FUNCTION_4(v17);
  v130 = v19;
  v131 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v129 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  v25 = OUTLINED_FUNCTION_4(v24);
  v126 = v26;
  v127 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v125 = &v109 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v123 = v33;
  v124 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v122 = &v109 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  v39 = OUTLINED_FUNCTION_4(v38);
  v119 = v40;
  v120 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_59_0();
  v121 = v43 - v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v109 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_4(v48);
  v50 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v109 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  v57 = OUTLINED_FUNCTION_14(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v109 - v61;
  v63 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__node;
  type metadata accessor for MusicSuggestedPivotNode();
  v64 = OUTLINED_FUNCTION_41_23();
  v109 = v65;
  __swift_storeEnumTagSinglePayload(v64, v66, v67, v65);
  v68 = OUTLINED_FUNCTION_46_1();
  sub_1D4E69970(v68, v69, &qword_1EC7EF7B8, &qword_1D5632EB8);
  v111 = v56;
  sub_1D560C8B8();
  v110 = v62;
  sub_1D4E50004(v62, &qword_1EC7EF7B8, &qword_1D5632EB8);
  v116 = v50;
  v70 = *(v50 + 32);
  v113 = v63;
  v115 = v55;
  v117 = v48;
  v71 = v48;
  v72 = v128;
  v70(v128 + v63, v55, v71);
  v73 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__pivotEntries;
  type metadata accessor for MusicSuggestedPivotEntry();
  sub_1D50C09A4();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1D560D9F8();
  v76 = v119;
  v75 = v120;
  (*(v119 + 16))(v121, v47, v120);
  v77 = v122;
  OUTLINED_FUNCTION_46_1();
  sub_1D560C8B8();
  (*(v76 + 8))(v47, v75);
  (*(v123 + 32))(v72 + v73, v77, v124);
  v78 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__status;
  LOBYTE(v137[0]) = 2;
  v79 = v125;
  sub_1D560C8B8();
  (*(v126 + 32))(v72 + v78, v79, v127);
  __swift_storeEnumTagSinglePayload(v72 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, 1, 1, v136);
  v80 = (v72 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID);
  *v80 = 0;
  v80[1] = 0;
  *(v72 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds) = v74;
  v81 = (v72 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
  v82 = v129;
  sub_1D560C358();
  v83 = sub_1D560C338();
  v85 = v84;
  (*(v130 + 8))(v82, v131);
  *v81 = v83;
  v81[1] = v85;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v86 = sub_1D560C758();
  __swift_project_value_buffer(v86, qword_1EC87C2E8);
  v87 = v132;
  v88 = v133;
  sub_1D4E69970(v133, v132, &qword_1EC7EF790, &qword_1D5632E90);

  v89 = sub_1D560C738();
  v90 = sub_1D56156E8();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = OUTLINED_FUNCTION_138_0();
    v137[0] = OUTLINED_FUNCTION_34_24();
    *v91 = 136446722;
    v92 = *v81;
    v93 = v81[1];

    v94 = sub_1D4E6835C(v92, v93, v137);

    *(v91 + 4) = v94;
    *(v91 + 12) = 2082;
    sub_1D4E69970(v87, v112, &qword_1EC7EF790, &qword_1D5632E90);
    v95 = sub_1D5614DB8();
    v96 = v87;
    v97 = v95;
    v99 = v98;
    sub_1D4E50004(v96, &qword_1EC7EF790, &qword_1D5632E90);
    v100 = sub_1D4E6835C(v97, v99, v137);

    *(v91 + 14) = v100;
    *(v91 + 22) = 2050;
    v101 = v135;
    *(v91 + 24) = v135;
    _os_log_impl(&dword_1D4E3F000, v89, v90, "MusicSuggestedPivotsViewModel (%{public}s): Init with seed=%{public}s, limit=%{public}ld.", v91, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D4E50004(v87, &qword_1EC7EF790, &qword_1D5632E90);
    v101 = v135;
  }

  v102 = v134;
  sub_1D4E69970(v88, v134, &qword_1EC7EF790, &qword_1D5632E90);
  if (__swift_getEnumTagSinglePayload(v102, 1, v136) == 1)
  {
    sub_1D4E50004(v88, &qword_1EC7EF790, &qword_1D5632E90);
    sub_1D4E50004(v102, &qword_1EC7EF790, &qword_1D5632E90);
  }

  else
  {
    OUTLINED_FUNCTION_16_37();
    v103 = v118;
    sub_1D50C1544(v102, v118);
    OUTLINED_FUNCTION_15_39();
    v104 = v110;
    sub_1D50C12F0(v103, v110);
    v105 = v109;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v104, 0, 1, v105);
    v106 = v115;
    sub_1D560C8B8();
    sub_1D4E50004(v88, &qword_1EC7EF790, &qword_1D5632E90);
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v103, v107);
    v108 = v113;
    OUTLINED_FUNCTION_54_0();
    (*(v116 + 40))(v72 + v108, v106, v117);
    swift_endAccess();
  }

  *(v72 + 16) = v101;
  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotsViewModel.deinit()
{
  v1 = v0;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EC87C2E8);
  OUTLINED_FUNCTION_82();

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_138_0();
    v22 = v6;
    *v5 = 136446210;
    v7 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
    *(v5 + 4) = sub_1D4E6835C(v7, v8, &v22);
    _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicSuggestedPivotsViewModel (%{public}s): Deinit.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v9 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__node;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_14(v10);
  (*(v11 + 8))(v1 + v9);
  v12 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__pivotEntries;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  OUTLINED_FUNCTION_14(v13);
  (*(v14 + 8))(v1 + v12);
  v15 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__status;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  OUTLINED_FUNCTION_14(v16);
  (*(v17 + 8))(v1 + v15);
  sub_1D4E50004(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, &qword_1EC7EF790, &qword_1D5632E90);
  v18 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID + 8);

  v19 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds);

  v20 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8);

  return v1;
}

uint64_t MusicSuggestedPivotsViewModel.__deallocating_deinit()
{
  MusicSuggestedPivotsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D50BC27C(uint64_t a1)
{
  v125 = a1;
  v1 = type metadata accessor for MusicSuggestedPivotEntry();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v117 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v123 = &v111 - v6;
  v122 = type metadata accessor for MusicSuggestedPivotSeed();
  v7 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v115 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicSuggestedPivotNode();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v116 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v112 = &v111 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v111 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v120 = &v111 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v121 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF880, qword_1D5633218);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v111 - v25;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  v27 = *(*(v119 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v119);
  v118 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v113 = &v111 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v111 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v111 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v111 - v38;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v40 = *(v23 + 56);
  v41 = v9;
  sub_1D4E69970(v125, v26, &qword_1EC7EF7B8, &qword_1D5632EB8);
  sub_1D4E69970(v39, &v26[v40], &qword_1EC7EF7B8, &qword_1D5632EB8);
  if (__swift_getEnumTagSinglePayload(v26, 1, v9) != 1)
  {
    sub_1D4E69970(v26, v37, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (__swift_getEnumTagSinglePayload(&v26[v40], 1, v9) != 1)
    {
      v61 = v121;
      sub_1D50C1544(&v26[v40], v121);
      v62 = static MusicSuggestedPivotNode.== infix(_:_:)(v37, v61);
      sub_1D50C1348(v61, type metadata accessor for MusicSuggestedPivotNode);
      sub_1D4E50004(v39, &qword_1EC7EF7B8, &qword_1D5632EB8);
      sub_1D50C1348(v37, type metadata accessor for MusicSuggestedPivotNode);
      v41 = v9;
      sub_1D4E50004(v26, &qword_1EC7EF7B8, &qword_1D5632EB8);
      v43 = v126;
      if (v62)
      {
        goto LABEL_15;
      }

LABEL_7:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      if (__swift_getEnumTagSinglePayload(v34, 1, v41) == 1)
      {
        sub_1D4E50004(v34, &qword_1EC7EF7B8, &qword_1D5632EB8);
        v44 = v123;
        __swift_storeEnumTagSinglePayload(v123, 1, 1, v122);
        sub_1D50BEE24();
        sub_1D4E50004(v44, &qword_1EC7EF790, &qword_1D5632E90);
        return;
      }

      v45 = v124;
      sub_1D50C1544(v34, v124);
      v46 = v45;
      v47 = v120;
      sub_1D50C12F0(v46, v120);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v117;
        sub_1D50C1544(v47, v117);
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v49 = sub_1D560C758();
        __swift_project_value_buffer(v49, qword_1EC87C2E8);
        v50 = v112;
        sub_1D50C12F0(v124, v112);

        v51 = sub_1D560C738();
        v52 = sub_1D56156E8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v128[0] = v126;
          *v53 = 136446466;
          *(v53 + 4) = sub_1D4E6835C(*(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v128);
          *(v53 + 12) = 2082;
          v54 = v50;
          sub_1D50C12F0(v50, v121);
          v55 = sub_1D5614DB8();
          v56 = v41;
          v58 = v57;
          sub_1D50C1348(v54, type metadata accessor for MusicSuggestedPivotNode);
          v59 = sub_1D4E6835C(v55, v58, v128);
          v41 = v56;

          *(v53 + 14) = v59;
          _os_log_impl(&dword_1D4E3F000, v51, v52, "MusicSuggestedPivotsViewModel (%{public}s): Did set new node=%{public}s.", v53, 0x16u);
          v60 = v126;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v60, -1, -1);
          MEMORY[0x1DA6ED200](v53, -1, -1);
        }

        else
        {

          sub_1D50C1348(v50, type metadata accessor for MusicSuggestedPivotNode);
        }

        v82 = v113;
        sub_1D4E69970(v125, v113, &qword_1EC7EF7B8, &qword_1D5632EB8);
        if (__swift_getEnumTagSinglePayload(v82, 1, v41) == 1)
        {
          sub_1D4E50004(v82, &qword_1EC7EF7B8, &qword_1D5632EB8);
          LOBYTE(v128[0]) = 1;
          sub_1D50BDDF8(v128);

          v83 = sub_1D560C738();
          v84 = sub_1D56156C8();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v128[0] = v86;
            *v85 = 136446210;
            *(v85 + 4) = sub_1D4E6835C(*(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v128);
            _os_log_impl(&dword_1D4E3F000, v83, v84, "MusicSuggestedPivotsViewModel (%{public}s): Failed to update offered pivot rounds. Setting a pivot entry as node with no previous node.", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v86);
            MEMORY[0x1DA6ED200](v86, -1, -1);
            MEMORY[0x1DA6ED200](v85, -1, -1);
          }

          sub_1D50C1348(v124, type metadata accessor for MusicSuggestedPivotNode);
          v87 = type metadata accessor for MusicSuggestedPivotEntry;
          v88 = v48;
          goto LABEL_35;
        }

        v90 = v116;
        sub_1D50C1544(v82, v116);
        v91 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
        v92 = swift_beginAccess();
        v93 = *(v43 + v91);
        MEMORY[0x1EEE9AC00](v92);
        *(&v111 - 2) = v90;
        *(&v111 - 1) = v48;

        v94 = sub_1D50BB22C(sub_1D50C159C, (&v111 - 4), v93);

        v95 = *(v43 + v91);
        *(v43 + v91) = v94;

        v96 = sub_1D560C738();
        v97 = sub_1D56156E8();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v127[0] = v99;
          *v98 = 136446466;
          *(v98 + 4) = sub_1D4E6835C(*(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v127);
          *(v98 + 12) = 2082;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D560C8F8();

          v100 = sub_1D5614DB8();
          v102 = sub_1D4E6835C(v100, v101, v127);

          *(v98 + 14) = v102;
          _os_log_impl(&dword_1D4E3F000, v96, v97, "MusicSuggestedPivotsViewModel (%{public}s): Fetching pivots for node=%{public}s.", v98, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v99, -1, -1);
          MEMORY[0x1DA6ED200](v98, -1, -1);
        }

        sub_1D50C1348(v116, type metadata accessor for MusicSuggestedPivotNode);
        v89 = type metadata accessor for MusicSuggestedPivotEntry;
      }

      else
      {
        v48 = v115;
        sub_1D50C1544(v47, v115);
        v71 = v123;
        sub_1D50C12F0(v48, v123);
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v122);
        sub_1D50BEE24();
        sub_1D4E50004(v71, &qword_1EC7EF790, &qword_1D5632E90);
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v72 = sub_1D560C758();
        __swift_project_value_buffer(v72, qword_1EC87C2E8);
        v73 = v114;
        sub_1D50C12F0(v124, v114);

        v74 = sub_1D560C738();
        v75 = sub_1D56156E8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v128[0] = v77;
          *v76 = 136446466;
          *(v76 + 4) = sub_1D4E6835C(*(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v128);
          *(v76 + 12) = 2082;
          sub_1D50C12F0(v73, v121);
          v78 = sub_1D5614DB8();
          v80 = v79;
          sub_1D50C1348(v73, type metadata accessor for MusicSuggestedPivotNode);
          v81 = sub_1D4E6835C(v78, v80, v128);

          *(v76 + 14) = v81;
          _os_log_impl(&dword_1D4E3F000, v74, v75, "MusicSuggestedPivotsViewModel (%{public}s): Fetching initial set of pivots for node=%{public}s.", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v77, -1, -1);
          MEMORY[0x1DA6ED200](v76, -1, -1);
        }

        else
        {

          sub_1D50C1348(v73, type metadata accessor for MusicSuggestedPivotNode);
        }

        v89 = type metadata accessor for MusicSuggestedPivotSeed;
      }

      sub_1D50C1348(v48, v89);
      v103 = v124;
      sub_1D50BF158(v124, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      v87 = type metadata accessor for MusicSuggestedPivotNode;
      v88 = v103;
LABEL_35:
      sub_1D50C1348(v88, v87);
      return;
    }

    sub_1D4E50004(v39, &qword_1EC7EF7B8, &qword_1D5632EB8);
    sub_1D50C1348(v37, type metadata accessor for MusicSuggestedPivotNode);
    v43 = v126;
LABEL_6:
    sub_1D4E50004(v26, &qword_1EC7EF880, qword_1D5633218);
    goto LABEL_7;
  }

  sub_1D4E50004(v39, &qword_1EC7EF7B8, &qword_1D5632EB8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v26[v40], 1, v9);
  v43 = v126;
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_6;
  }

  sub_1D4E50004(v26, &qword_1EC7EF7B8, &qword_1D5632EB8);
LABEL_15:
  if (qword_1EC7E90C0 != -1)
  {
    swift_once();
  }

  v63 = sub_1D560C758();
  __swift_project_value_buffer(v63, qword_1EC87C2E8);

  v64 = sub_1D560C738();
  v65 = sub_1D56156E8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v128[0] = v67;
    *v66 = 136446466;
    *(v66 + 4) = sub_1D4E6835C(*(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v43 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v128);
    *(v66 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    v68 = sub_1D5614DB8();
    v70 = sub_1D4E6835C(v68, v69, v128);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_1D4E3F000, v64, v65, "MusicSuggestedPivotsViewModel (%{public}s): Attempting to set the same node=%{public}s. Ignoring fetching new set of pivots.", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v67, -1, -1);
    MEMORY[0x1DA6ED200](v66, -1, -1);
  }
}

void sub_1D50BD314(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2);
  sub_1D50C12F0(a1, a3);
  if (v5)
  {
    v6 = *(type metadata accessor for MusicSuggestedPivotRound() + 20);
    v7 = *(a3 + v6);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a3 + v6);
    sub_1D4F145E4();
    *(a3 + v6) = v8;
  }
}

void sub_1D50BD3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_128();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4E69970(v23, v32, &qword_1EC7EF7B8, &qword_1D5632EB8);

  sub_1D560C908();
  sub_1D50BC27C(v35);
  sub_1D4E50004(v23, &qword_1EC7EF7B8, &qword_1D5632EB8);
  sub_1D4E50004(v35, &qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_46();
}

uint64_t (*sub_1D50BD524(void *a1))()
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return sub_1D50BD600;
}

uint64_t sub_1D50BD6B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF800, &qword_1D5632F08);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

void (*sub_1D50BD7A0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF800, &qword_1D5632F08);
  v3[4] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  sub_1D560C8C8();
  swift_endAccess();
  return sub_1D50BD8B4;
}

void sub_1D50BD8B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[3];
    v8 = *(v6 + 16);
    v9 = OUTLINED_FUNCTION_46_1();
    v10(v9);
    sub_1D50BD6B4();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[3];
    v12 = *(*a1 + 56);
    sub_1D50BD6B4();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D50BD9B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  (*(v15 + 16))(v7, a1);
  v16 = *a2;
  return a7(v7);
}

uint64_t sub_1D50BDA80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D50BDAF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v1, a1, v3);

  sub_1D560C908();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

uint64_t sub_1D50BDC20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF870, &qword_1D5633208);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

uint64_t sub_1D50BDD0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D50BDD80();
  *a2 = v5;
  return result;
}

uint64_t sub_1D50BDD48(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D50BDDF8(&v4);
}

uint64_t sub_1D50BDD80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D50BDDF8(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D50BDE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF868, &qword_1D5633200);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

void sub_1D50BDF70()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-1] - v9;
  v11 = type metadata accessor for MusicSuggestedPivotNode();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D4E50004(v10, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v19 = sub_1D560C738();
    v20 = sub_1D56156C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_144();
      v47[0] = OUTLINED_FUNCTION_34_24();
      *v21 = 136446466;
      v22 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v21 + 4) = sub_1D4E6835C(v22, v23, v47);
      *(v21 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      v24 = sub_1D5614DB8();
      v26 = sub_1D4E6835C(v24, v25, v47);

      *(v21 + 14) = v26;
      OUTLINED_FUNCTION_45_18(&dword_1D4E3F000, v27, v28, "MusicSuggestedPivotsViewModel (%{public}s): Failed to find offered pivot entries for current node=%{public}s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    sub_1D50C1544(v10, v17);
    v29 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
    v30 = OUTLINED_FUNCTION_35_25();
    v31 = *(v1 + v29);
    MEMORY[0x1EEE9AC00](v30);
    *(&v45 - 2) = v17;
    *(&v45 - 1) = v3;

    v32 = sub_1D50BB22C(sub_1D50C09FC, (&v45 - 4), v31);

    v33 = *(v1 + v29);
    *(v1 + v29) = v32;

    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v34 = sub_1D560C758();
    __swift_project_value_buffer(v34, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v35 = sub_1D560C738();
    v36 = sub_1D56156E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_144();
      v46[0] = OUTLINED_FUNCTION_34_24();
      *v37 = 136446466;
      v38 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v37 + 4) = sub_1D4E6835C(v38, v39, v46);
      *(v37 + 12) = 2082;
      v40 = type metadata accessor for MusicSuggestedPivotEntry();
      v41 = MEMORY[0x1DA6EAF70](v3, v40);
      v43 = sub_1D4E6835C(v41, v42, v46);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1D4E3F000, v35, v36, "MusicSuggestedPivotsViewModel (%{public}s): Did interact [impressed] pivot entries=%{public}s.", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_83();
    }

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v17, v44);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BE3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for MusicSuggestedPivotEntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicSuggestedPivotRound();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return sub_1D50C12F0(a1, a4);
  }

  v32 = a4;
  v33 = v4;
  sub_1D50C12F0(a1, v17);
  v18 = *(a3 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = *(v14 + 20);
    v21 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v22 = *(v10 + 72);
    v34 = *(a3 + 16);
    do
    {
      sub_1D50C12F0(v21 + v22 * v19, v13);
      v23 = *&v17[v20];
      if (*(v23 + 16) && (v24 = sub_1D4F0DDE0(v13), (v25 & 1) != 0))
      {
        for (i = 0; i != 4; ++i)
        {
          if (byte_1F50A2FA0[i + 32] == *(*(v23 + 56) + v24))
          {
            v27 = sub_1D525C410(1u, &unk_1F50A19B0);
            if ((v28 & 1) == 0 && i < v27)
            {
              v29 = *&v17[v20];
              swift_isUniquelyReferenced_nonNull_native();
              v35 = *&v17[v20];
              sub_1D4F145E4();
              sub_1D50C1348(v13, type metadata accessor for MusicSuggestedPivotEntry);
              *&v17[v20] = v35;
              goto LABEL_15;
            }

            break;
          }
        }

        sub_1D50C1348(v13, type metadata accessor for MusicSuggestedPivotEntry);
LABEL_15:
        v18 = v34;
      }

      else
      {
        sub_1D50C1348(v13, type metadata accessor for MusicSuggestedPivotEntry);
      }

      ++v19;
    }

    while (v19 != v18);
  }

  return sub_1D50C1544(v17, v32);
}

uint64_t sub_1D50BE6C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB048, &unk_1D561DDF0);
  v2 = type metadata accessor for MusicSuggestedPivotEntry();
  OUTLINED_FUNCTION_69(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  OUTLINED_FUNCTION_8_46();
  sub_1D50C12F0(a1, v7 + v6);
  sub_1D50BDF70();
}

void sub_1D50BE79C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v52 = type metadata accessor for MusicSuggestedPivotEntry();
  v1 = OUTLINED_FUNCTION_14(v52);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v51 = v4 - v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for MusicSuggestedPivotNode();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1D4E50004(v15, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v23 = sub_1D560C758();
    __swift_project_value_buffer(v23, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v24 = sub_1D560C738();
    v25 = sub_1D56156C8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_144();
      v54[0] = OUTLINED_FUNCTION_34_24();
      *v26 = 136446466;
      v27 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v26 + 4) = sub_1D4E6835C(v27, v28, v54);
      *(v26 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      v29 = sub_1D5614DB8();
      v31 = sub_1D4E6835C(v29, v30, v54);

      *(v26 + 14) = v31;
      OUTLINED_FUNCTION_45_18(&dword_1D4E3F000, v32, v33, "MusicSuggestedPivotsViewModel (%{public}s): Failed to find offered pivot entries for current node=%{public}s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    sub_1D50C1544(v15, v22);
    v34 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
    v35 = OUTLINED_FUNCTION_35_25();
    v36 = *(v0 + v34);
    MEMORY[0x1EEE9AC00](v35);
    *(&v50 - 2) = v22;
    *(&v50 - 1) = v0;

    v37 = sub_1D50BB22C(sub_1D50C0A1C, (&v50 - 4), v36);

    v38 = *(v0 + v34);
    *(v0 + v34) = v37;

    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v39 = sub_1D560C758();
    __swift_project_value_buffer(v39, qword_1EC87C2E8);
    OUTLINED_FUNCTION_8_46();
    sub_1D50C12F0(v0, v8);

    v40 = sub_1D560C738();
    v41 = sub_1D56156E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_144();
      v53[0] = OUTLINED_FUNCTION_34_24();
      *v42 = 136446466;
      v43 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v42 + 4) = sub_1D4E6835C(v43, v44, v53);
      *(v42 + 12) = 2082;
      OUTLINED_FUNCTION_8_46();
      sub_1D50C12F0(v8, v51);
      v45 = sub_1D5614DB8();
      v47 = v46;
      OUTLINED_FUNCTION_20_42();
      v48 = sub_1D4E6835C(v45, v47, v53);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1D4E3F000, v40, v41, "MusicSuggestedPivotsViewModel (%{public}s): Did interact [previewed] pivot entry=%{public}s.", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      OUTLINED_FUNCTION_20_42();
    }

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v22, v49);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BEC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MusicSuggestedPivotRound();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return sub_1D50C12F0(a1, a4);
  }

  sub_1D50C12F0(a1, v11);
  v12 = *(v8 + 20);
  v13 = sub_1D4ED092C(a3, *&v11[v12]);
  if (v13 != 4)
  {
    v14 = sub_1D525C410(v13, &unk_1F50A19B0);
    if ((v15 & 1) == 0)
    {
      v16 = v14;
      v17 = sub_1D525C410(2u, &unk_1F50A19B0);
      if ((v18 & 1) == 0 && v16 < v17)
      {
        v19 = *&v11[v12];
        swift_isUniquelyReferenced_nonNull_native();
        v22 = *&v11[v12];
        sub_1D4F145E4();
        *&v11[v12] = v22;
      }
    }
  }

  return sub_1D50C1544(v11, a4);
}

void sub_1D50BEE24()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EC87C2E8);
  sub_1D4E69970(v4, v18, &qword_1EC7EF790, &qword_1D5632E90);

  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_144();
    v35 = OUTLINED_FUNCTION_34_24();
    v37[0] = v35;
    *v22 = 136446466;
    v23 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
    *(v22 + 4) = sub_1D4E6835C(v23, v24, v37);
    *(v22 + 12) = 2082;
    v36 = v1;
    sub_1D4E69970(v18, v15, &qword_1EC7EF790, &qword_1D5632E90);
    v25 = sub_1D5614DB8();
    v27 = v26;
    sub_1D4E50004(v18, &qword_1EC7EF790, &qword_1D5632E90);
    v28 = sub_1D4E6835C(v25, v27, v37);

    *(v22 + 14) = v28;
    v1 = v36;
    _os_log_impl(&dword_1D4E3F000, v20, v21, "MusicSuggestedPivotsViewModel (%{public}s): Did set new seed=%{public}s.", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D4E50004(v18, &qword_1EC7EF790, &qword_1D5632E90);
  }

  sub_1D4E69970(v4, v15, &qword_1EC7EF790, &qword_1D5632E90);
  v29 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed;
  OUTLINED_FUNCTION_54_0();
  sub_1D50C14D4(v15, v2 + v29);
  swift_endAccess();
  v30 = (v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID);
  v31 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID + 8);
  *v30 = 0;
  v30[1] = 0;

  v32 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  OUTLINED_FUNCTION_35_25();
  v33 = *(v2 + v32);
  *(v2 + v32) = MEMORY[0x1E69E7CC0];

  type metadata accessor for MusicSuggestedPivotEntry();
  sub_1D50C09A4();
  sub_1D560D9F8();
  sub_1D50BDAF0(v1);
  OUTLINED_FUNCTION_46();
}

void sub_1D50BF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_147();
  v23 = type metadata accessor for MusicSuggestedPivotNode();
  v24 = OUTLINED_FUNCTION_69(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v37 = *(v20 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
  v36 = *(v20 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8);
  sub_1D5615458();
  v38 = OUTLINED_FUNCTION_41_23();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v20, v29);
  sub_1D56153C8();

  v43 = sub_1D56153B8();
  v44 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v45 = (v28 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  v46[2] = v43;
  v46[3] = v47;
  v46[4] = v42;
  OUTLINED_FUNCTION_6_50();
  sub_1D50C1544(v29, v48 + v44);
  v49 = (v46 + v45);
  *v49 = v37;
  v49[1] = v36;

  sub_1D51EC8B4(0, 0, v35, &unk_1D56331F0, v46);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BF33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = type metadata accessor for MusicSuggestedPivotNode();
  v7[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  sub_1D56153C8();
  v7[16] = sub_1D56153B8();
  v11 = sub_1D5615338();
  v7[17] = v11;
  v7[18] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D50BF414, v11, v10);
}

uint64_t sub_1D50BF414()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[9];
  OUTLINED_FUNCTION_59();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_1D50BF50C;
    v4 = v0[10];

    return sub_1D50BF954();
  }

  else
  {
    v6 = v0[16];

    v8 = v0[14];
    v7 = v0[15];

    OUTLINED_FUNCTION_55();

    return v9();
  }
}

uint64_t sub_1D50BF50C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  v2[21] = v0;

  if (v0)
  {
    v8 = v2[17];
    v9 = v2[18];
    v10 = sub_1D50BF684;
  }

  else
  {
    v11 = v2[19];

    v8 = v2[17];
    v9 = v2[18];
    v10 = sub_1D50BF61C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1D50BF61C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[16];

  v3 = v0[14];
  v2 = v0[15];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D50BF684()
{
  v36 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[9];

  OUTLINED_FUNCTION_59();
  if (swift_weakLoadStrong())
  {
    v34 = 0;
    sub_1D50BDDF8(&v34);
  }

  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v4 = v0[21];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[10];
  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EC87C2E8);
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v7, v5);

  v9 = v4;
  v10 = sub_1D560C738();
  v11 = sub_1D56156C8();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[21];
  v14 = v0[15];
  if (v12)
  {
    v15 = v0[14];
    v33 = v0[13];
    v16 = v0[11];
    v17 = v0[12];
    v18 = OUTLINED_FUNCTION_138_0();
    v35 = swift_slowAlloc();
    *v18 = 136446722;
    *(v18 + 4) = sub_1D4E6835C(v16, v17, &v35);
    *(v18 + 12) = 2080;
    OUTLINED_FUNCTION_2_61();
    sub_1D50C12F0(v14, v15);
    v19 = sub_1D5614DB8();
    v21 = v20;
    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v14, v22);
    v23 = sub_1D4E6835C(v19, v21, &v35);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2082;
    v0[8] = v13;
    v24 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v25 = sub_1D5614DB8();
    v27 = sub_1D4E6835C(v25, v26, &v35);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_1D4E3F000, v10, v11, "MusicSuggestedPivotsViewModel (%{public}s): Failed to fetch pivots for node=%s with error=%{public}s.", v18, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v14, v28);
  }

  v30 = v0[14];
  v29 = v0[15];

  OUTLINED_FUNCTION_55();

  return v31();
}

uint64_t sub_1D50BF954()
{
  OUTLINED_FUNCTION_60();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF858, &qword_1D56331D8);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_127();
  v6 = type metadata accessor for MusicSuggestedPivotNode();
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_127();
  v9 = type metadata accessor for MusicSuggestedPivotRound();
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  v1[16] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[17] = v13;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v16 = type metadata accessor for MusicSuggestedPivotsResponse();
  v1[20] = v16;
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  v1[22] = OUTLINED_FUNCTION_127();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  v1[23] = OUTLINED_FUNCTION_127();
  v25 = type metadata accessor for MusicSuggestedPivotsRequest();
  v1[24] = v25;
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  v1[27] = OUTLINED_FUNCTION_127();
  v31 = type metadata accessor for MusicSuggestedPivotSeed();
  v1[28] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_1D56153C8();
  v1[31] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v35 = sub_1D5615338();
  v1[32] = v35;
  v1[33] = v34;

  return MEMORY[0x1EEE6DFA0](sub_1D50BFBD4, v35, v34);
}

uint64_t sub_1D50BFBD4()
{
  v60 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed;
  OUTLINED_FUNCTION_59();
  sub_1D4E69970(v3 + v4, v1, &qword_1EC7EF790, &qword_1D5632E90);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v5 = v0[31];
    v6 = v0[27];
    v7 = v0[12];

    sub_1D4E50004(v6, &qword_1EC7EF790, &qword_1D5632E90);
    v57 = 1;
    sub_1D50BDDF8(&v57);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v8 = v0[12];
    v9 = sub_1D560C758();
    __swift_project_value_buffer(v9, qword_1EC87C2E8);

    v10 = sub_1D560C738();
    v11 = sub_1D56156D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[12];
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_138_0();
      v58 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1D4E6835C(*(v12 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v12 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), &v58);
      _os_log_impl(&dword_1D4E3F000, v10, v11, "MusicSuggestedPivotsViewModel (%{public}s): Attempting to fetch pivot without a seed.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_23_32();
    v55 = v0[13];

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_16_5();

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[24];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[12];
  OUTLINED_FUNCTION_16_37();
  sub_1D50C1544(v25, v17);
  v59 = 3;
  sub_1D50BDDF8(&v59);
  OUTLINED_FUNCTION_15_39();
  sub_1D50C12F0(v17, v18);
  v26 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID;
  v0[34] = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID;
  v27 = (v24 + v26);
  v28 = v27[1];
  v56 = *v27;
  v29 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  v0[35] = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  OUTLINED_FUNCTION_59();
  v30 = *(v24 + v29);
  *v22 = 0;
  *(v22 + 8) = 1;
  v31 = *(v21 + 20);

  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v32 = *(v21 + 24);
  v33 = sub_1D5613D28();
  OUTLINED_FUNCTION_14(v33);
  (*(v34 + 16))(v22 + v32, v18);
  sub_1D4E69970(v18 + *(v20 + 20), v23, &qword_1EC7EADD0, &qword_1D56331E0);
  v35 = type metadata accessor for MusicSuggestedPivotContainer();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v35);
  v37 = v0[29];
  v38 = v0[22];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v37, v39);
    sub_1D4E50004(v38, &qword_1EC7EADD0, &qword_1D56331E0);
    v40 = 1;
  }

  else
  {
    v41 = v0[23];
    sub_1D51FCAB8();
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v37, v42);
    sub_1D50C1348(v38, type metadata accessor for MusicSuggestedPivotContainer);
    v40 = 0;
  }

  v44 = v0[25];
  v43 = v0[26];
  v45 = v0[23];
  v46 = v0[24];
  v47 = v0[12];
  v48 = sub_1D5612478();
  __swift_storeEnumTagSinglePayload(v45, v40, 1, v48);
  sub_1D50C1280(v45, v44 + v46[7]);
  v49 = (v44 + v46[8]);
  *v49 = v56;
  v49[1] = v28;
  *(v44 + v46[9]) = v30;
  sub_1D50C1544(v44, v43);
  *v43 = *(v47 + 16);
  *(v43 + 8) = 0;
  v50 = swift_task_alloc();
  v0[36] = v50;
  *v50 = v0;
  v50[1] = sub_1D50C0098;
  v51 = v0[26];
  v52 = v0[21];
  OUTLINED_FUNCTION_16_5();

  return sub_1D55C2464();
}

uint64_t sub_1D50C0098()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = v2[36];
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = v2[33];
  v7 = v2[32];
  if (v0)
  {
    v8 = sub_1D50C061C;
  }

  else
  {
    v8 = sub_1D50C01D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_1D50C01D0()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[21];
  v52 = v0[20];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];
  v46 = v0[15];
  v47 = v0[35];
  v8 = v0[12];
  v49 = v0[13];
  v9 = v0[11];

  v50 = (v8 + v1);
  v10 = *(v6 + 16);
  v10(v4, v3, v5);
  sub_1D50BDAF0(v4);
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v9, v7);
  v10(v4, v3, v5);
  sub_1D538677C(v7, v4, v46);
  OUTLINED_FUNCTION_54_0();
  sub_1D50C12F0(v46, v49);
  sub_1D526CFB4(0, 0, v49);
  swift_endAccess();
  v11 = (v3 + *(v52 + 20));
  v12 = v11[1];
  v13 = *(v8 + v1 + 8);
  *v50 = *v11;
  v50[1] = v12;

  v55 = 4;
  sub_1D50BDDF8(&v55);
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[12];
  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EC87C2E8);
  v19 = OUTLINED_FUNCTION_71();
  (v10)(v19);

  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[30];
  v24 = v0[26];
  v25 = v0[21];
  v27 = v0[17];
  v26 = v0[18];
  v29 = v0[15];
  v28 = v0[16];
  if (v22)
  {
    v53 = v0[30];
    v30 = v0[12];
    v51 = v0[21];
    v31 = OUTLINED_FUNCTION_144();
    v56 = OUTLINED_FUNCTION_34_24();
    *v31 = 136446466;
    *(v31 + 4) = sub_1D4E6835C(*(v30 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v30 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), &v56);
    *(v31 + 12) = 2082;
    sub_1D4E62A60(&qword_1EC7EF860, &qword_1EC7EF7A8, &qword_1D5641DA0);
    v32 = sub_1D56160F8();
    v48 = v24;
    v34 = v33;
    (*(v27 + 8))(v26, v28);
    v35 = sub_1D4E6835C(v32, v34, &v56);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_1D4E3F000, v20, v21, "MusicSuggestedPivotsViewModel (%{public}s): Pivot entries updated %{public}s.", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_18_38();
    sub_1D50C1348(v29, v36);
    OUTLINED_FUNCTION_17_35();
    sub_1D50C1348(v51, v37);
    OUTLINED_FUNCTION_7_51();
    sub_1D50C1348(v48, v38);
    OUTLINED_FUNCTION_1_71();
    v40 = v53;
  }

  else
  {

    (*(v27 + 8))(v26, v28);
    OUTLINED_FUNCTION_18_38();
    sub_1D50C1348(v29, v41);
    OUTLINED_FUNCTION_17_35();
    sub_1D50C1348(v25, v42);
    OUTLINED_FUNCTION_7_51();
    sub_1D50C1348(v24, v43);
    OUTLINED_FUNCTION_1_71();
    v40 = v23;
  }

  sub_1D50C1348(v40, v39);
  OUTLINED_FUNCTION_23_32();
  v54 = v0[13];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D50C061C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[19];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];

  OUTLINED_FUNCTION_7_51();
  sub_1D50C1348(v5, v11);
  OUTLINED_FUNCTION_1_71();
  sub_1D50C1348(v2, v12);

  OUTLINED_FUNCTION_55();
  v14 = v0[37];

  return v13();
}

uint64_t sub_1D50C0744@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicSuggestedPivotsViewModel();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

BOOL static MusicSuggestedPivotsViewModel.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t MusicSuggestedPivotsViewModel.Status.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1 & 1;
  }

  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicSuggestedPivotsViewModel.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1 & 1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D50C08C0()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicSuggestedPivotsViewModel.Status.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSuggestedPivotsViewModel.LoadingError.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D50C09A4()
{
  result = qword_1EC7EF7D0;
  if (!qword_1EC7EF7D0)
  {
    type metadata accessor for MusicSuggestedPivotEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF7D0);
  }

  return result;
}

unint64_t sub_1D50C0A40()
{
  result = qword_1EC7EF808;
  if (!qword_1EC7EF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF808);
  }

  return result;
}

unint64_t sub_1D50C0ADC()
{
  result = qword_1EC7EF820;
  if (!qword_1EC7EF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF820);
  }

  return result;
}

uint64_t type metadata accessor for MusicSuggestedPivotsViewModel()
{
  result = qword_1EC7EF828;
  if (!qword_1EC7EF828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50C0B84()
{
  sub_1D4FE1C04(319, &qword_1EC7EF838, &qword_1EC7EF7B8, &qword_1D5632EB8);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1D4FE1C04(319, &qword_1EC7EF840, &qword_1EC7EF7A8, &qword_1D5641DA0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1D50C0F44();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1D50C0F94();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MusicSuggestedPivotsViewModel.didImpress(_:)()
{
  return (*(*v0 + 368))();
}

{
  return (*(*v0 + 376))();
}

void sub_1D50C0F44()
{
  if (!qword_1EC7EF848)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EF848);
    }
  }
}

void sub_1D50C0F94()
{
  if (!qword_1EC7EF850)
  {
    type metadata accessor for MusicSuggestedPivotSeed();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EF850);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicSuggestedPivotsViewModel.Status(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotsViewModel.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D50C1170(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D50C1184(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotsViewModel.LoadingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D50C1280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C12F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D50C1348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50C13A0(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MusicSuggestedPivotNode();
  OUTLINED_FUNCTION_69(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D4F22570;

  return sub_1D50BF33C(a1, v9, v10, v11, v1 + v7, v13, v14);
}

uint64_t sub_1D50C14D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C1544(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_42()
{

  return sub_1D50C1348(v0, type metadata accessor for MusicSuggestedPivotEntry);
}

uint64_t OUTLINED_FUNCTION_23_32()
{
  v2 = v0[29];
  result = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[14];
  v12 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for StorePlatformUploadedAudio()
{
  result = qword_1EDD550E8;
  if (!qword_1EDD550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50C169C()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52708);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D500A1D4();
    if (v12 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1D50C18F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF890, &qword_1D5633378);
  OUTLINED_FUNCTION_4(v90);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v87 - v28;
  v93 = type metadata accessor for StorePlatformUploadedAudio();
  v30 = OUTLINED_FUNCTION_14(v93);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v91 = a1;
  v92 = v33;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C4164();
  v89 = v29;
  sub_1D5616398();
  if (v2)
  {
    v94 = v2;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    OUTLINED_FUNCTION_6_51();
  }

  else
  {
    v87 = v10;
    LOBYTE(v95) = 0;
    v39 = v89;
    v35 = sub_1D5615F38();
    v48 = v92;
    *v92 = v35;
    v48[1] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v95) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v38 = v24;
    v50 = v93;
    sub_1D4F39A1C(v22, v48 + v93[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(v95) = 2;
    sub_1D50C41B8();
    sub_1D5615F78();
    sub_1D4F39A1C(v16, v48 + v50[6], &qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_26_30(3);
    v51 = sub_1D5615F38();
    v52 = (v48 + v50[7]);
    *v52 = v51;
    v52[1] = v53;
    OUTLINED_FUNCTION_26_30(4);
    v54 = sub_1D5615F68();
    v55 = v48 + v50[8];
    *v55 = v54;
    v55[8] = v56 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v98 = 5;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_12_8();
    *(v48 + v50[9]) = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v98 = 6;
    sub_1D50C44B0(&qword_1EDD528F8);
    OUTLINED_FUNCTION_12_8();
    *(v48 + v50[10]) = v95;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v98 = 7;
    sub_1D50C42A0(&qword_1EDD52908);
    OUTLINED_FUNCTION_12_8();
    v3 = 0;
    *(v48 + v50[11]) = v95;
    v98 = 8;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v94 = 0;
    v57 = v96;
    v58 = (v48 + v50[12]);
    *v58 = v95;
    v58[1] = v57;
    OUTLINED_FUNCTION_26_30(9);
    v59 = v94;
    v60 = sub_1D5615F48();
    v94 = v59;
    if (!v59)
    {
      *(v92 + v93[13]) = v60;
      OUTLINED_FUNCTION_8_47(10);
      v61 = sub_1D5615F38();
      v94 = 0;
      v65 = (v92 + v93[14]);
      *v65 = v61;
      v65[1] = v66;
      OUTLINED_FUNCTION_8_47(11);
      v67 = sub_1D5615F38();
      v94 = 0;
      v69 = (v92 + v93[15]);
      *v69 = v67;
      v69[1] = v68;
      sub_1D560C0A8();
      LOBYTE(v95) = 12;
      OUTLINED_FUNCTION_0_79();
      sub_1D50C4660(v70);
      v39 = v89;
      v71 = v94;
      sub_1D5615F78();
      v97 = v71 == 0;
      v94 = v71;
      if (!v71)
      {
        sub_1D4F39A1C(v87, v92 + v93[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_8_47(13);
        v72 = sub_1D5615F48();
        v94 = 0;
        *(v92 + v93[17]) = v72;
        OUTLINED_FUNCTION_8_47(14);
        v73 = sub_1D5615F38();
        v94 = 0;
        v77 = (v92 + v93[18]);
        *v77 = v73;
        v77[1] = v78;
        OUTLINED_FUNCTION_8_47(15);
        v79 = sub_1D5615F38();
        v94 = 0;
        v80 = v79;
        v82 = v81;
        v83 = OUTLINED_FUNCTION_29_26();
        v84(v83);
        v85 = v92;
        v86 = (v92 + v93[19]);
        *v86 = v80;
        v86[1] = v82;
        sub_1D50C4308(v85, v88);
        __swift_destroy_boxed_opaque_existential_1(v91);
        return sub_1D50C436C(v85);
      }

      v74 = OUTLINED_FUNCTION_29_26();
      v75(v74);
      __swift_destroy_boxed_opaque_existential_1(v91);
      OUTLINED_FUNCTION_3_63();
      LODWORD(v89) = v76;
      LODWORD(v90) = v76;
      v43 = 1;
      v40 = v92;
      v41 = v93;
LABEL_6:
      v44 = v40[1];

      if (v37)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

    v62 = OUTLINED_FUNCTION_29_26();
    v63(v62);
    LODWORD(v90) = 0;
    v36 = 1;
    OUTLINED_FUNCTION_3_63();
    LODWORD(v89) = v64;
  }

  v40 = v92;
  v41 = v93;
  result = __swift_destroy_boxed_opaque_existential_1(v91);
  if (v36)
  {
    v43 = 0;
    v97 = 0;
    goto LABEL_6;
  }

  v97 = 0;
  v43 = 0;
  if (v37)
  {
LABEL_7:
    result = sub_1D4E50004(v40 + v41[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v38)
  {
LABEL_8:
    if (v39)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1D4E50004(v40 + v41[6], &qword_1EC7EF380, &unk_1D5677480);
  if (v39)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_46_4(v41[7]);
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v3)
  {
LABEL_10:
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v46 = *(v40 + v41[9]);

  if (v22)
  {
LABEL_11:
    v45 = *(v40 + v41[10]);

    if ((v88 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v88)
  {
LABEL_12:
    if (v89)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v47 = *(v40 + v41[11]);

  if (v89)
  {
LABEL_13:
    result = OUTLINED_FUNCTION_46_4(v41[12]);
    if ((v90 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v90)
  {
LABEL_14:
    if (v43)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = OUTLINED_FUNCTION_46_4(v41[14]);
  if (v43)
  {
LABEL_15:
    result = OUTLINED_FUNCTION_46_4(v41[15]);
    if (!v97)
    {
      return result;
    }

    return sub_1D4E50004(v40 + v41[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

LABEL_26:
  if (v97)
  {
    return sub_1D4E50004(v40 + v41[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  return result;
}

uint64_t sub_1D50C22B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8A0, &unk_1D5633380);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C4164();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v31) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v16 = type metadata accessor for StorePlatformUploadedAudio();
    v17 = v16[5];
    LOBYTE(v31) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0();
    v18 = v16[6];
    LOBYTE(v31) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C43C8();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_35_5(v16[7]);
    OUTLINED_FUNCTION_1_72(3);
    sub_1D5616028();
    v19 = v3 + v16[8];
    v20 = *v19;
    v21 = v19[8];
    OUTLINED_FUNCTION_1_72(4);
    sub_1D5616058();
    v31 = *(v3 + v16[9]);
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_21_0();
    v31 = *(v3 + v16[10]);
    v33 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_21_0();
    v31 = *(v3 + v16[11]);
    v33 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D50C42A0(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_21_0();
    v22 = (v3 + v16[12]);
    v24 = *v22;
    v23 = v22[1];
    v31 = v24;
    v32 = v23;
    v33 = 8;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v25 = *(v3 + v16[13]);
    LOBYTE(v31) = 9;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v16[14]);
    OUTLINED_FUNCTION_1_72(10);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v16[15]);
    OUTLINED_FUNCTION_1_72(11);
    sub_1D5616028();
    v26 = v16[16];
    LOBYTE(v31) = 12;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_79();
    sub_1D50C4660(v27);
    OUTLINED_FUNCTION_21_0();
    v28 = *(v3 + v16[17]);
    LOBYTE(v31) = 13;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v16[18]);
    OUTLINED_FUNCTION_1_72(14);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v16[19]);
    OUTLINED_FUNCTION_1_72(15);
    sub_1D5616028();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D50C2744(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v185 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v184 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v187 = v14;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v186);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v188 = v18;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4(v194);
  v192 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v190 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v191 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v193 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v181 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v181 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v181 - v52;
  v54 = a1[1];
  v55 = a2[1];
  if (v54)
  {
    if (!v55)
    {
      return 0;
    }

    v56 = *a1 == *a2 && v54 == v55;
    if (!v56 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v181 = v4;
  v57 = type metadata accessor for StorePlatformUploadedAudio();
  v189 = a2;
  v58 = *(v57 + 20);
  v59 = *(v48 + 48);
  v182 = v57;
  v183 = a1;
  sub_1D4F39AB0(a1 + v58, v53, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v189 + v58, &v53[v59], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v53, 1, v34);
  if (v56)
  {
    OUTLINED_FUNCTION_57(&v53[v59], 1, v34);
    if (v56)
    {
      sub_1D4E50004(v53, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v64 = &qword_1EC7EC330;
    v65 = &qword_1D56222C0;
    v66 = v53;
LABEL_29:
    sub_1D4E50004(v66, v64, v65);
    return 0;
  }

  sub_1D4F39AB0(v53, v47, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v53[v59], 1, v34);
  if (v60)
  {
    v61 = *(v36 + 8);
    v62 = OUTLINED_FUNCTION_71();
    v63(v62);
    goto LABEL_18;
  }

  (*(v36 + 32))(v41, &v53[v59], v34);
  sub_1D50C4518(&qword_1EC7EBEB8);
  v67 = sub_1D5614D18();
  v68 = *(v36 + 8);
  v68(v41, v34);
  v69 = OUTLINED_FUNCTION_71();
  (v68)(v69);
  sub_1D4E50004(v53, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v71 = v182;
  v70 = v183;
  v72 = v182[6];
  v73 = *(v29 + 48);
  v74 = v193;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v75, v76, v77, v78);
  v79 = v189;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v80, v81, v82, v83);
  v84 = v194;
  OUTLINED_FUNCTION_57(v74, 1, v194);
  if (v56)
  {
    OUTLINED_FUNCTION_57(v74 + v73, 1, v84);
    if (v56)
    {
      sub_1D4E50004(v74, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v85 = v191;
  sub_1D4F39AB0(v74, v191, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_57(v74 + v73, 1, v84);
  if (v86)
  {
    (*(v192 + 8))(v85, v84);
LABEL_28:
    v64 = &qword_1EC7EF8B0;
    v65 = &unk_1D5633390;
    v66 = v74;
    goto LABEL_29;
  }

  v88 = v192;
  v89 = v74 + v73;
  v90 = v190;
  (*(v192 + 32))(v190, v89, v84);
  sub_1D50C4598(&qword_1EC7EF8B8);
  v91 = sub_1D5614D18();
  v92 = *(v88 + 8);
  v92(v90, v84);
  v92(v85, v84);
  sub_1D4E50004(v74, &qword_1EC7EF380, &unk_1D5677480);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v93 = v71[7];
  OUTLINED_FUNCTION_16_38();
  if (v96)
  {
    if (!v94)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v95);
    v99 = v56 && v97 == v98;
    if (!v99 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v94)
  {
    return 0;
  }

  v100 = v71[8];
  v101 = (v70 + v100);
  v102 = *(v70 + v100 + 8);
  v103 = (v79 + v100);
  v104 = *(v79 + v100 + 8);
  if (v102)
  {
    if (!v104)
    {
      return 0;
    }
  }

  else
  {
    if (*v101 != *v103)
    {
      LOBYTE(v104) = 1;
    }

    if (v104)
    {
      return 0;
    }
  }

  v105 = v71[9];
  v106 = *(v79 + v105);
  if (*(v70 + v105))
  {
    if (!v106)
    {
      return 0;
    }

    v107 = *(v79 + v105);

    sub_1D4F2C07C();
    v109 = v108;

    if ((v109 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v106)
  {
    return 0;
  }

  v110 = v71[10];
  v111 = *(v79 + v110);
  if (*(v70 + v110))
  {
    if (!v111)
    {
      return 0;
    }

    v112 = *(v79 + v110);

    sub_1D4F28F1C();
    v114 = v113;

    if ((v114 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  v115 = v71[11];
  v116 = *(v79 + v115);
  if (*(v70 + v115))
  {
    if (!v116)
    {
      return 0;
    }

    v117 = *(v79 + v115);

    sub_1D4F29174();
    v119 = v118;

    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v116)
  {
    return 0;
  }

  v120 = v71[12];
  v121 = *(v70 + v120);
  v122 = *(v70 + v120 + 8);
  v123 = (v79 + v120);
  v124 = v121 == *v123 && v122 == v123[1];
  if (!v124 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v125 = v71[13];
  v126 = *(v70 + v125);
  v127 = *(v79 + v125);
  if (v126 == 2)
  {
    if (v127 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v127 == 2 || ((v127 ^ v126) & 1) != 0)
    {
      return result;
    }
  }

  v128 = v71[14];
  OUTLINED_FUNCTION_16_38();
  if (v131)
  {
    if (!v129)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v130);
    v134 = v56 && v132 == v133;
    if (!v134 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v129)
  {
    return 0;
  }

  v135 = v71[15];
  OUTLINED_FUNCTION_16_38();
  if (v138)
  {
    if (!v136)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v137);
    v141 = v56 && v139 == v140;
    if (!v141 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  v142 = v182[16];
  v143 = *(v186 + 48);
  v144 = v188;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v145, v146, v147, v148);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v149, v150, v151, v152);
  OUTLINED_FUNCTION_57(v144, 1, v181);
  if (!v56)
  {
    v153 = v188;
    sub_1D4F39AB0(v188, v187, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v153 + v143, 1, v181);
    if (!v154)
    {
      v156 = v184;
      v155 = v185;
      v157 = v188;
      v158 = v188 + v143;
      v159 = v181;
      (*(v185 + 32))(v184, v158, v181);
      OUTLINED_FUNCTION_0_79();
      sub_1D50C4660(v160);
      v161 = v187;
      v162 = sub_1D5614D18();
      v163 = *(v155 + 8);
      v163(v156, v159);
      v163(v161, v159);
      sub_1D4E50004(v157, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v162 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_101;
    }

    (*(v185 + 8))(v187, v181);
    goto LABEL_99;
  }

  OUTLINED_FUNCTION_57(v188 + v143, 1, v181);
  if (!v56)
  {
LABEL_99:
    v64 = &qword_1EC7E9FB0;
    v65 = &qword_1D562C590;
    v66 = v188;
    goto LABEL_29;
  }

  sub_1D4E50004(v188, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_101:
  v164 = v182[17];
  v165 = *(v183 + v164);
  v166 = *(v189 + v164);
  if (v165 == 2)
  {
    v167 = v189;
    v168 = v182;
    v169 = v183;
    if (v166 != 2)
    {
      return 0;
    }

    goto LABEL_106;
  }

  result = 0;
  if (v166 != 2)
  {
    v170 = v166 ^ v165;
    v167 = v189;
    v168 = v182;
    v169 = v183;
    if ((v170 & 1) == 0)
    {
LABEL_106:
      v171 = v168[18];
      v172 = *(v167 + v171 + 8);
      if (*(v169 + v171 + 8))
      {
        if (!v172)
        {
          return 0;
        }

        OUTLINED_FUNCTION_31_0((v169 + v171));
        v175 = v56 && v173 == v174;
        if (!v175 && (sub_1D5616168() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v172)
      {
        return 0;
      }

      v176 = v182[19];
      v177 = *(v189 + v176 + 8);
      if (*(v183 + v176 + 8))
      {
        if (v177)
        {
          OUTLINED_FUNCTION_31_0((v183 + v176));
          v180 = v56 && v178 == v179;
          if (v180 || (sub_1D5616168() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v177)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D50C3290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65707954637561 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 25705 && a2 == 0xE200000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701667182 && a2 == 0xE400000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1D50C376C(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0x65707954637561;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 25705;
      break;
    case 9:
      result = 0x616C696176417369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x614464616F6C7075;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50C3924()
{
  v1 = v0;
  v73 = sub_1D560C0A8();
  v2 = OUTLINED_FUNCTION_4(v73);
  v70 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v69 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v72 = v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4(v71);
  v68 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v67 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  if (v0[1])
  {
    v37 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v38 = type metadata accessor for StorePlatformUploadedAudio();
  sub_1D4F39AB0(v0 + v38[5], v36, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v36, 1, v23);
  if (v39)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v25 + 32))(v30, v36, v23);
    OUTLINED_FUNCTION_27();
    sub_1D50C4518(&qword_1EC7EBE78);
    sub_1D5614CB8();
    (*(v25 + 8))(v30, v23);
  }

  sub_1D4F39AB0(v0 + v38[6], v22, &qword_1EC7EF380, &unk_1D5677480);
  v40 = v71;
  OUTLINED_FUNCTION_57(v22, 1, v71);
  if (v39)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v42 = v67;
    v41 = v68;
    (*(v68 + 32))(v67, v22, v40);
    OUTLINED_FUNCTION_27();
    sub_1D50C4598(&qword_1EC7EF8C8);
    OUTLINED_FUNCTION_28_5();
    (*(v41 + 8))(v42, v40);
  }

  OUTLINED_FUNCTION_33_5(v38[7]);
  if (v40)
  {
    v44 = *v43;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v45 = v0 + v38[8];
  if (v45[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v46 = *v45;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v46);
  }

  if (*(v0 + v38[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v47 = (v0 + v38[12]);
  v48 = *v47;
  v49 = v47[1];
  sub_1D5614E28();
  v50 = *(v0 + v38[13]);
  if (v50 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5(v38[14]);
  if (v50)
  {
    v52 = *v51;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v38[15]);
  if (v50)
  {
    v54 = *v53;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v55 = v72;
  sub_1D4F39AB0(v1 + v38[16], v72, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v56 = v73;
  OUTLINED_FUNCTION_57(v55, 1, v73);
  if (v39)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v58 = v69;
    v57 = v70;
    (*(v70 + 32))(v69, v55, v56);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_79();
    sub_1D50C4660(v59);
    OUTLINED_FUNCTION_28_5();
    (*(v57 + 8))(v58, v56);
  }

  v60 = *(v1 + v38[17]);
  if (v60 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5(v38[18]);
  if (v60)
  {
    v62 = *v61;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v63 = (v1 + v38[19]);
  if (!v63[1])
  {
    return OUTLINED_FUNCTION_36();
  }

  v64 = *v63;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24();
  return sub_1D5614E28();
}

uint64_t sub_1D50C3F84()
{
  sub_1D56162D8();
  sub_1D50C3924();
  return sub_1D5616328();
}

uint64_t sub_1D50C3FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50C3290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50C3FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50C3764();
  *a1 = result;
  return result;
}

uint64_t sub_1D50C401C(uint64_t a1)
{
  v2 = sub_1D50C4164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50C4058(uint64_t a1)
{
  v2 = sub_1D50C4164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50C40D0()
{
  sub_1D56162D8();
  sub_1D50C3924();
  return sub_1D5616328();
}

unint64_t sub_1D50C4164()
{
  result = qword_1EC7EF898;
  if (!qword_1EC7EF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF898);
  }

  return result;
}

unint64_t sub_1D50C41B8()
{
  result = qword_1EDD53250;
  if (!qword_1EDD53250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(&unk_1EDD56B40);
    sub_1D50C4660(&unk_1EDD56B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53250);
  }

  return result;
}

unint64_t sub_1D50C42A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50C4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUploadedAudio();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C436C(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUploadedAudio();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50C43C8()
{
  result = qword_1EC7EF8A8;
  if (!qword_1EC7EF8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(&unk_1EDD56B40);
    sub_1D50C4660(&unk_1EDD56B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8A8);
  }

  return result;
}

unint64_t sub_1D50C44B0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C4518(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50C4660(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C4598(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50C4618()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C098);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF28();
}

unint64_t sub_1D50C4660(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformUploadedAudio.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUploadedAudio.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50C480C()
{
  result = qword_1EC7EF8D8;
  if (!qword_1EC7EF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8D8);
  }

  return result;
}

unint64_t sub_1D50C4864()
{
  result = qword_1EC7EF8E0;
  if (!qword_1EC7EF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8E0);
  }

  return result;
}

unint64_t sub_1D50C48BC()
{
  result = qword_1EC7EF8E8;
  if (!qword_1EC7EF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8E8);
  }

  return result;
}

uint64_t type metadata accessor for CloudEditorialCard()
{
  result = qword_1EDD56900;
  if (!qword_1EDD56900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50C4984()
{
  sub_1D50C4A80();
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v2 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528D0, &qword_1EC7EF8F0, &qword_1D5636520);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D50C4A80()
{
  if (!qword_1EDD56920[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD56920);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialCard.Kind(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50C4B80()
{
  result = qword_1EC7EF8F8;
  if (!qword_1EC7EF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8F8);
  }

  return result;
}

uint64_t sub_1D50C4BD4(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
  v2 = OUTLINED_FUNCTION_14(v42);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v41 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - v7;
  v8 = type metadata accessor for EditorialCard();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v48 = MEMORY[0x1E69E7CC0];
  sub_1D4F03A5C();
  v14 = v48;
  result = sub_1D5068458(a1);
  v17 = result;
  v18 = a1 + 64;
  v19 = v13 - 1;
  v37 = a1 + 64;
  v38 = v12;
  v36 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v17 < 1 << *(a1 + 32))
    {
      if ((*(v18 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_16;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_17;
      }

      v45 = 1 << v17;
      v46 = v17 >> 6;
      v43 = v19;
      v44 = v16;
      v20 = v42;
      v21 = *(v42 + 48);
      v22 = *(a1 + 56);
      v23 = (*(a1 + 48) + 16 * v17);
      v25 = *v23;
      v24 = v23[1];
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
      OUTLINED_FUNCTION_4(v26);
      v47 = v14;
      v28 = v27;
      v30 = v40;
      (*(v27 + 16))(&v40[v21], v22 + *(v29 + 72) * v17, v26);
      v31 = v41;
      *v41 = v25;
      *(v31 + 8) = v24;
      v32 = *(v20 + 48);
      v33 = v38;
      (*(v28 + 32))(v31 + v32, &v30[v21], v26);
      v14 = v47;

      sub_1D50C69FC(v25, v24, v33);
      sub_1D4E50004(v31, &qword_1EC7EBDF8, &qword_1D5633700);
      v48 = v14;
      v34 = *(v14 + 16);
      if (v34 >= *(v14 + 24) >> 1)
      {
        sub_1D4F03A5C();
        v14 = v48;
      }

      *(v14 + 16) = v34 + 1;
      result = sub_1D50C6EAC(v33, v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34);
      a1 = v36;
      v18 = v37;
      if (v17 >= -(-1 << *(v36 + 32)))
      {
        goto LABEL_18;
      }

      if ((*(v37 + 8 * v46) & v45) == 0)
      {
        goto LABEL_19;
      }

      if (v44 != *(v36 + 36))
      {
        goto LABEL_20;
      }

      result = sub_1D5615A18();
      if (!v43)
      {
        return v14;
      }

      v17 = result;
      v16 = *(a1 + 36);
      v19 = v43 - 1;
      if (result < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D50C4F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v63 - v12;
  v75 = type metadata accessor for CloudEditorialCard();
  v14 = OUTLINED_FUNCTION_14(v75);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v74 = (v18 - v17);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  OUTLINED_FUNCTION_4(v73);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v63 - v24;
  v26 = type metadata accessor for EditorialCard();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v31 = v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  if (v32)
  {
    v72 = v13;
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v63[1] = v20 + 40;
    v63[2] = v20 + 32;
    v34 = MEMORY[0x1E69E7CC8];
    v35 = v28[6];
    v69 = v28[7];
    v70 = v35;
    v36 = v28[8];
    v67 = v28[9];
    v68 = v36;
    v64 = *(v29 + 72);
    v65 = v20;
    v66 = v7;
    v71 = v25;
    while (1)
    {
      sub_1D50C6DF4(v33, v31, type metadata accessor for EditorialCard);
      v37 = *(v31 + 1);
      v76 = *v31;
      v77 = v37;
      v38 = v31[16];
      sub_1D4F1C460(&v31[v70], v7, &qword_1EC7EAC98, &unk_1D561DA80);
      v39 = sub_1D5610978();
      if (__swift_getEnumTagSinglePayload(v7, 1, v39) == 1)
      {
        sub_1D4E50004(v7, &qword_1EC7EAC98, &unk_1D561DA80);
        v40 = 1;
        v41 = v72;
      }

      else
      {
        v41 = v72;
        sub_1D5610918();
        (*(*(v39 - 8) + 8))(v7, v39);
        v40 = 0;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
      __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
      v43 = *&v31[v69];
      v44 = *&v31[v68];
      v46 = v74;
      v45 = v75;
      *v74 = v38;
      sub_1D4FD23EC(v41, &v46[v45[5]], &qword_1EC7EC960, &unk_1D56334C0);
      *&v46[v45[6]] = v43;
      *&v46[v45[7]] = v44;
      v47 = *&v31[v67];

      v48 = v71;
      sub_1D56106F8();
      swift_isUniquelyReferenced_nonNull_native();
      v78 = v34;
      v49 = sub_1D4E4EFA0();
      if (__OFADD__(v34[2], (v50 & 1) == 0))
      {
        break;
      }

      v51 = v49;
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF950, &qword_1D56336F8);
      v53 = sub_1D5615D78();
      v54 = v65;
      if (v53)
      {
        v55 = sub_1D4E4EFA0();
        v7 = v66;
        if ((v52 & 1) != (v56 & 1))
        {
          goto LABEL_21;
        }

        v51 = v55;
      }

      else
      {
        v7 = v66;
      }

      v34 = v78;
      if (v52)
      {
        (*(v54 + 40))(v78[7] + *(v54 + 72) * v51, v48, v73);
      }

      else
      {
        v78[(v51 >> 6) + 8] |= 1 << v51;
        v57 = (v34[6] + 16 * v51);
        v58 = v77;
        *v57 = v76;
        v57[1] = v58;
        (*(v54 + 32))(v34[7] + *(v54 + 72) * v51, v48, v73);
        v59 = v34[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_20;
        }

        v34[2] = v61;
      }

      sub_1D50C6E54(v31, type metadata accessor for EditorialCard);
      v33 += v64;
      if (!--v32)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1D5616238();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1D50C54B0()
{
  v0 = sub_1D5615EF8();

  return v0 != 0;
}

BOOL sub_1D50C54F8(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  if (*a1)
  {
    if (!*a2)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  v42 = v6;
  v41 = type metadata accessor for CloudEditorialCard();
  v24 = *(v41 + 20);
  v25 = *(v18 + 48);
  sub_1D4F1C460(&a1[v24], v23, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D4F1C460(&a2[v24], &v23[v25], &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_10(v23);
  if (v26)
  {
    OUTLINED_FUNCTION_10(&v23[v25]);
    if (v26)
    {
      sub_1D4E50004(v23, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D4E50004(v23, &qword_1EC7EC968, &unk_1D5622290);
    return 0;
  }

  sub_1D4F1C460(v23, v17, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_10(&v23[v25]);
  if (v26)
  {
    (*(v42 + 8))(v17, v4);
    goto LABEL_13;
  }

  v28 = v42;
  (*(v42 + 32))(v11, &v23[v25], v4);
  sub_1D50C6920(&qword_1EC7EC988);
  v29 = sub_1D5614D18();
  v30 = *(v28 + 8);
  v30(v11, v4);
  v30(v17, v4);
  sub_1D4E50004(v23, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v31 = v41;
  v32 = *(v41 + 24);
  v33 = *&a2[v32];
  if (*&a1[v32])
  {
    if (!v33)
    {
      return 0;
    }

    v34 = *&a2[v32];

    sub_1D4F28F1C();
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = *(v31 + 28);
  v38 = *&a2[v37];
  if (!*&a1[v37])
  {
    return !v38;
  }

  if (!v38)
  {
    return 0;
  }

  sub_1D4F2D63C();
  v40 = v39;

  return (v40 & 1) != 0;
}

uint64_t sub_1D50C5888(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79616C70736964 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D50C59F0(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6169726F74696465;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50C5A7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF930, &unk_1D56336E8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C660C();
  sub_1D56163D8();
  LOBYTE(v17) = *v3;
  v18 = 0;
  sub_1D50C6760();
  sub_1D5616068();
  if (!v2)
  {
    v14 = type metadata accessor for CloudEditorialCard();
    v15 = v14[5];
    LOBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D50C67B4(&qword_1EC7EC9E0);
    OUTLINED_FUNCTION_5_54();
    v17 = *&v3[v14[6]];
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_5_54();
    v17 = *&v3[v14[7]];
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D50C6874();
    OUTLINED_FUNCTION_5_54();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D50C5CB8(const void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  if (*v1 == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  v17 = type metadata accessor for CloudEditorialCard();
  sub_1D4F1C460(&v1[v17[5]], v16, &qword_1EC7EC960, &unk_1D56334C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v3);
    OUTLINED_FUNCTION_27();
    sub_1D50C6920(&qword_1EC7ECA38);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v3);
  }

  if (*&v1[v17[6]])
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v18 = *&v1[v17[7]];
  if (!v18)
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return sub_1D4F329DC(a1, v18);
}

uint64_t sub_1D50C5F0C()
{
  sub_1D56162D8();
  sub_1D50C5CB8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D50C5F4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF910, &qword_1D56336E0);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v27 = type metadata accessor for CloudEditorialCard();
  v14 = OUTLINED_FUNCTION_14(v27);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v28 = (v18 - v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C660C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v26;
  v30 = 0;
  sub_1D50C6660();
  sub_1D5615F78();
  v21 = v28;
  *v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  LOBYTE(v29) = 1;
  sub_1D50C67B4(&qword_1EDD531D8);
  OUTLINED_FUNCTION_3_64();
  sub_1D4FD23EC(v9, v21 + *(v27 + 20), &qword_1EC7EC960, &unk_1D56334C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v30 = 2;
  sub_1D4FCE3FC();
  OUTLINED_FUNCTION_3_64();
  v22 = v27;
  *(v21 + *(v27 + 24)) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
  v30 = 3;
  sub_1D50C66B4();
  OUTLINED_FUNCTION_3_64();
  v23 = OUTLINED_FUNCTION_4_49();
  v24(v23);
  *(v21 + *(v22 + 28)) = v29;
  sub_1D50C6DF4(v21, v20, type metadata accessor for CloudEditorialCard);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D50C6E54(v21, type metadata accessor for CloudEditorialCard);
}

BOOL sub_1D50C6314@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D50C54B0();
  *a2 = result;
  return result;
}

unint64_t sub_1D50C6440()
{
  result = qword_1EC7EF900;
  if (!qword_1EC7EF900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF908, qword_1D56335B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF900);
  }

  return result;
}

uint64_t sub_1D50C64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50C5888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50C651C(uint64_t a1)
{
  v2 = sub_1D50C660C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50C6558(uint64_t a1)
{
  v2 = sub_1D50C660C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50C65D0()
{
  sub_1D56162D8();
  sub_1D50C5CB8(v1);
  return sub_1D5616328();
}

unint64_t sub_1D50C660C()
{
  result = qword_1EC7EF918;
  if (!qword_1EC7EF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF918);
  }

  return result;
}

unint64_t sub_1D50C6660()
{
  result = qword_1EC7EF920;
  if (!qword_1EC7EF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF920);
  }

  return result;
}

unint64_t sub_1D50C66B4()
{
  result = qword_1EC7EF928;
  if (!qword_1EC7EF928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D4F88BF4(&qword_1EDD52778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF928);
  }

  return result;
}

unint64_t sub_1D50C6760()
{
  result = qword_1EC7EF938;
  if (!qword_1EC7EF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF938);
  }

  return result;
}

unint64_t sub_1D50C67B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D50C69B8(&unk_1EDD530E0);
    sub_1D50C69B8(&unk_1EDD530E8);
    result = OUTLINED_FUNCTION_9_47();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C6874()
{
  result = qword_1EC7EF940;
  if (!qword_1EC7EF940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF940);
  }

  return result;
}

unint64_t sub_1D50C6920(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D50C69B8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C69B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50C69FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v35[-v10];
  v11 = type metadata accessor for CloudEditorialCard();
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v35[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  sub_1D5610708();
  v36 = *v23;
  sub_1D50C6E54(v23, type metadata accessor for CloudEditorialCard);
  sub_1D5610708();
  sub_1D4F1C460(&v21[v11[5]], v7, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D50C6E54(v21, type metadata accessor for CloudEditorialCard);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v7, 1, v24) == 1)
  {
    sub_1D4E50004(v7, &qword_1EC7EC960, &unk_1D56334C0);
    v25 = 1;
    v26 = v37;
  }

  else
  {
    v27 = v37;
    sub_1D5610738();
    (*(*(v24 - 8) + 8))(v7, v24);
    v25 = 0;
    v26 = v27;
  }

  v28 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v26, v25, 1, v28);
  sub_1D5610708();
  v29 = *&v18[v11[6]];

  sub_1D50C6E54(v18, type metadata accessor for CloudEditorialCard);
  sub_1D5610708();
  v30 = *&v15[v11[7]];

  sub_1D50C6E54(v15, type metadata accessor for CloudEditorialCard);
  v31 = sub_1D5610718();
  v32 = v39;
  *a3 = v38;
  *(a3 + 8) = v32;
  *(a3 + 16) = v36;
  v33 = type metadata accessor for EditorialCard();
  sub_1D4FD23EC(v26, a3 + v33[6], &qword_1EC7EAC98, &unk_1D561DA80);
  *(a3 + v33[7]) = v29;
  *(a3 + v33[8]) = v30;
  *(a3 + v33[9]) = v31;
}

unint64_t sub_1D50C6DA0()
{
  result = qword_1EC7EF948;
  if (!qword_1EC7EF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF948);
  }

  return result;
}

uint64_t sub_1D50C6DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D50C6E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50C6EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50C6FF0()
{
  result = qword_1EC7EF958;
  if (!qword_1EC7EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF958);
  }

  return result;
}

unint64_t sub_1D50C7048()
{
  result = qword_1EC7EF960;
  if (!qword_1EC7EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF960);
  }

  return result;
}

unint64_t sub_1D50C70A0()
{
  result = qword_1EC7EF968;
  if (!qword_1EC7EF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF968);
  }

  return result;
}

uint64_t MusicLibrary.AddToPlaylistAction.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5614898();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MusicLibrary.AddToPlaylistAction.UnsupportedReason.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t static MusicLibraryAction<>.add(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D5614898();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a2, a1, v5);
}

uint64_t MusicLibrary.AddToPlaylistAction.duplicateCount(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50C72F0, 0, 0);
}

uint64_t sub_1D50C72F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(v1, v3);
  *(v1 + *(v2 + 20)) = v4;

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1D50C73D8;
  v8 = v0[5];

  return sub_1D4FBABB4();
}

uint64_t sub_1D50C73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 48);
  v10 = *v4;
  *(*v4 + 56) = v3;

  if (v3)
  {
    v11 = sub_1D50C75BC;
  }

  else
  {
    v8[8] = a3;
    v8[9] = a2;
    v8[10] = a1;
    v11 = sub_1D50C7514;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D50C7514()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1D5059F84(v0[5]);
  v4 = *(v1 + 16);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D50C75BC()
{
  sub_1D5059F84(v0[5]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

unint64_t sub_1D50C7630()
{
  result = qword_1EC7EF970;
  if (!qword_1EC7EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF970);
  }

  return result;
}

uint64_t sub_1D50C7690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4FBE678;

  return MusicLibrary.AddToPlaylistAction.duplicateCount(for:)(a1);
}

uint64_t type metadata accessor for MusicLibrary.AddToPlaylistAction()
{
  result = qword_1EDD53648;
  if (!qword_1EDD53648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50C7798()
{
  result = sub_1D5614898();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s19AddToPlaylistActionV17UnsupportedReasonOwst(_BYTE *result, int a2, int a3)
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

void GenericMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v227[1] = v22;
  v228 = v23;
  v25 = v24;
  v26 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_20(v26, &v212);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v31 = type metadata accessor for UploadedAudio();
  v32 = OUTLINED_FUNCTION_20(v31, &v211);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v35);
  v36 = type metadata accessor for TVShow();
  v37 = OUTLINED_FUNCTION_20(v36, v213);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v40);
  v41 = type metadata accessor for TVSeason();
  v42 = OUTLINED_FUNCTION_20(v41, &v214);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v45);
  v46 = type metadata accessor for TVEpisode();
  v47 = OUTLINED_FUNCTION_20(v46, v215);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v50);
  v51 = sub_1D5614408();
  v52 = OUTLINED_FUNCTION_12_0(v51, &v218);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  v56 = sub_1D5613838();
  v57 = OUTLINED_FUNCTION_12_0(v56, &v221);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = type metadata accessor for SocialProfile();
  v62 = OUTLINED_FUNCTION_20(v61, &v222);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D560F8B8();
  v67 = OUTLINED_FUNCTION_12_0(v66, &v226);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = type metadata accessor for Playlist.Folder();
  v72 = OUTLINED_FUNCTION_20(v71, v227);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5614898();
  v77 = OUTLINED_FUNCTION_12_0(v76, &v230);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v80);
  v81 = sub_1D560EEA8();
  v82 = OUTLINED_FUNCTION_12_0(v81, &v233);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = type metadata accessor for MusicMovie();
  v87 = OUTLINED_FUNCTION_20(v86, v234);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v91 = type metadata accessor for EditorialItem();
  v92 = OUTLINED_FUNCTION_20(v91, &a11);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D5613C48();
  v97 = OUTLINED_FUNCTION_12_0(v96, &a15);
  v213[1] = v98;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v101);
  v102 = sub_1D5614B68();
  v103 = OUTLINED_FUNCTION_12_0(v102, &a10);
  v211 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v107);
  v225 = sub_1D5613158();
  v108 = OUTLINED_FUNCTION_4(v225);
  v230 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v113);
  v216 = sub_1D56141F8();
  v114 = OUTLINED_FUNCTION_4(v216);
  v215[1] = v115;
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v118);
  v119 = sub_1D560D838();
  v220 = OUTLINED_FUNCTION_4(v119);
  v221 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_5_0();
  v219 = v123;
  OUTLINED_FUNCTION_70_0();
  v217 = type metadata accessor for CreditArtist();
  v124 = OUTLINED_FUNCTION_14(v217);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  v218 = v127;
  OUTLINED_FUNCTION_70_0();
  v128 = sub_1D5613EF8();
  v129 = OUTLINED_FUNCTION_4(v128);
  v223 = v130;
  v224 = v129;
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5_0();
  v222 = v133;
  OUTLINED_FUNCTION_70_0();
  v134 = sub_1D5613AF8();
  v135 = OUTLINED_FUNCTION_4(v134);
  v137 = v136;
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_5();
  v142 = v141 - v140;
  v143 = sub_1D5610088();
  v144 = OUTLINED_FUNCTION_4(v143);
  v146 = v145;
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_59_0();
  v151 = v149 - v150;
  MEMORY[0x1EEE9AC00](v152);
  v227[0] = type metadata accessor for GenericMusicItem();
  v153 = OUTLINED_FUNCTION_14(v227[0]);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5_0();
  v226 = v156;
  v158 = v25[3];
  v157 = v25[4];
  v229 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v158);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_30_25();
  sub_1D4E5E488(v159, v160);
  OUTLINED_FUNCTION_6_52();
  LOBYTE(v25) = sub_1D5614D18();
  v161 = *(v146 + 8);
  v161(v151, v143);
  if (v25 & 1) != 0 || (sub_1D560FEA8(), OUTLINED_FUNCTION_6_52(), v162 = sub_1D5614D18(), v161(v151, v143), (v162))
  {
    v163 = OUTLINED_FUNCTION_217();
    (v161)(v163);
    OUTLINED_FUNCTION_38_21();
    sub_1D5613978();
    v164 = OUTLINED_FUNCTION_8_48();
    v165(v164);
    v151 = v226;
    (*(v137 + 32))(v226, v142, v134);
  }

  else
  {
    sub_1D560FFD8();
    OUTLINED_FUNCTION_6_52();
    sub_1D5614D18();
    v166 = OUTLINED_FUNCTION_20_43();
    (v161)(v166);
    if (v134)
    {
      v168 = OUTLINED_FUNCTION_217();
      (v161)(v168);
      OUTLINED_FUNCTION_38_21();
      v169 = v222;
      sub_1D5613E28();
      v170 = OUTLINED_FUNCTION_8_48();
      v171(v170);
      v151 = v226;
      (*(v223 + 32))(v226, v169, v224);
    }

    else
    {
      sub_1D560FEE8();
      OUTLINED_FUNCTION_6_52();
      sub_1D5614D18();
      v167 = OUTLINED_FUNCTION_20_43();
      (v161)(v167);
      sub_1D560FE88();
      OUTLINED_FUNCTION_6_52();
      sub_1D5614D18();
      v172 = OUTLINED_FUNCTION_20_43();
      (v161)(v172);
      if (v134)
      {
        v173 = OUTLINED_FUNCTION_217();
        (v161)(v173);
        OUTLINED_FUNCTION_38_21();
        OUTLINED_FUNCTION_81_1();
        v174 = v219;
        OUTLINED_FUNCTION_42_19();
        sub_1D560D708();
        OUTLINED_FUNCTION_15_40();
        v175(v174);
        v151 = v218;
        *v218 = v134;
        *(v151 + 8) = v174;
        __swift_project_boxed_opaque_existential_1(&v231, v234[0]);
        v176 = v151 + *(v217 + 20);
        OUTLINED_FUNCTION_71();
        sub_1D5610D28();
        v177 = OUTLINED_FUNCTION_36_23();
        v178(v177);
        __swift_destroy_boxed_opaque_existential_1(&v231);
        OUTLINED_FUNCTION_23_33();
        OUTLINED_FUNCTION_45_19(v179, v180, v181);
      }

      else
      {
        sub_1D560FFF8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v182 = OUTLINED_FUNCTION_20_43();
        (v161)(v182);
        sub_1D560FE78();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v183 = OUTLINED_FUNCTION_20_43();
        (v161)(v183);
        sub_1D560FED8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v184 = OUTLINED_FUNCTION_20_43();
        (v161)(v184);
        sub_1D560FFC8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v185 = OUTLINED_FUNCTION_20_43();
        (v161)(v185);
        sub_1D560FE28();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v186 = OUTLINED_FUNCTION_20_43();
        (v161)(v186);
        sub_1D560FE38();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v187 = OUTLINED_FUNCTION_20_43();
        (v161)(v187);
        sub_1D560FDF8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v188 = OUTLINED_FUNCTION_20_43();
        (v161)(v188);
        sub_1D5610038();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v189 = OUTLINED_FUNCTION_20_43();
        (v161)(v189);
        sub_1D560FF58();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v190 = OUTLINED_FUNCTION_20_43();
        (v161)(v190);
        sub_1D560FF68();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v191 = OUTLINED_FUNCTION_20_43();
        (v161)(v191);
        sub_1D560FE58();
        v192 = sub_1D5614D18();
        v161(v151, v143);
        if ((v192 & 1) == 0)
        {
          sub_1D560FF18();
          OUTLINED_FUNCTION_19_36();
          v198 = OUTLINED_FUNCTION_32_26();
          (v161)(v198);
          sub_1D560FFA8();
          OUTLINED_FUNCTION_19_36();
          v199 = OUTLINED_FUNCTION_32_26();
          (v161)(v199);
          sub_1D560FE48();
          OUTLINED_FUNCTION_19_36();
          v200 = OUTLINED_FUNCTION_32_26();
          (v161)(v200);
          sub_1D5610008();
          OUTLINED_FUNCTION_19_36();
          v201 = OUTLINED_FUNCTION_32_26();
          (v161)(v201);
          sub_1D5610078();
          OUTLINED_FUNCTION_19_36();
          v202 = OUTLINED_FUNCTION_32_26();
          (v161)(v202);
          sub_1D5610068();
          OUTLINED_FUNCTION_19_36();
          v203 = OUTLINED_FUNCTION_32_26();
          (v161)(v203);
          sub_1D560FFE8();
          OUTLINED_FUNCTION_19_36();
          v204 = OUTLINED_FUNCTION_32_26();
          (v161)(v204);
          sub_1D560FF28();
          OUTLINED_FUNCTION_19_36();
          v205 = OUTLINED_FUNCTION_32_26();
          (v161)(v205);
          sub_1D560FF38();
          OUTLINED_FUNCTION_19_36();
          v206 = OUTLINED_FUNCTION_32_26();
          (v161)(v206);
          sub_1D5610018();
          OUTLINED_FUNCTION_19_36();
          v207 = OUTLINED_FUNCTION_32_26();
          (v161)(v207);
          while (1)
          {
            v231 = 0;
            v232 = 0xE000000000000000;
            sub_1D5615B68();

            v231 = 0xD00000000000002FLL;
            v232 = 0x80000001D5682990;
            OUTLINED_FUNCTION_69_12(v229);
            OUTLINED_FUNCTION_30_25();
            sub_1D4E5E488(v208, v209);
            v210 = sub_1D56160F8();
            MEMORY[0x1DA6EAC70](v210);

            v161(v151, v143);
            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
            sub_1D5615E08();
            __break(1u);
          }
        }

        v193 = OUTLINED_FUNCTION_224();
        (v161)(v193);
        OUTLINED_FUNCTION_38_21();
        OUTLINED_FUNCTION_172(&v224);
        sub_1D560F838();
        v194 = OUTLINED_FUNCTION_8_48();
        v195(v194);
        v196 = OUTLINED_FUNCTION_13_38(&v225);
        v197(v196);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D50CC018(v151, v228, type metadata accessor for GenericMusicItem);
  __swift_destroy_boxed_opaque_existential_1(v161);
  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v339 = v22;
  v341 = v23;
  v342 = v24;
  v26 = v25;
  v345 = v27;
  v28 = type metadata accessor for TVShow();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v32);
  v33 = type metadata accessor for TVSeason();
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v37);
  v38 = type metadata accessor for TVEpisode();
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v42);
  v330 = sub_1D5613D28();
  v43 = OUTLINED_FUNCTION_4(v330);
  v329 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D5614408();
  v50 = OUTLINED_FUNCTION_12_0(v49, &a12);
  v325 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v54);
  v55 = type metadata accessor for SocialProfile();
  v56 = OUTLINED_FUNCTION_22(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v59);
  v60 = sub_1D560F8B8();
  v61 = OUTLINED_FUNCTION_12_0(v60, &v350);
  v322 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = type metadata accessor for Playlist.Folder.Item();
  v67 = OUTLINED_FUNCTION_20(v66, &v349);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v71);
  v72 = type metadata accessor for MusicMovie();
  v73 = OUTLINED_FUNCTION_22(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5613C48();
  v78 = OUTLINED_FUNCTION_12_0(v77, &v344);
  v320[7] = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = type metadata accessor for Composer();
  v84 = OUTLINED_FUNCTION_22(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v87);
  v88 = type metadata accessor for CreditArtist();
  v89 = OUTLINED_FUNCTION_22(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v92);
  v93 = sub_1D5613EF8();
  v94 = OUTLINED_FUNCTION_12_0(v93, &v339);
  v320[2] = v95;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5();
  v100 = v99 - v98;
  v101 = sub_1D5613AF8();
  v102 = OUTLINED_FUNCTION_12_0(v101, &v337);
  v320[0] = v103;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5();
  v108 = v107 - v106;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v110 = OUTLINED_FUNCTION_22(v109);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v114 = v320 - v113;
  v115 = sub_1D560E728();
  v336 = OUTLINED_FUNCTION_4(v115);
  v337 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v336);
  OUTLINED_FUNCTION_5_0();
  v335 = v119;
  OUTLINED_FUNCTION_70_0();
  v333 = sub_1D560D9A8();
  v120 = OUTLINED_FUNCTION_4(v333);
  v331 = v121;
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_5();
  v124 = sub_1D560D838();
  v343 = OUTLINED_FUNCTION_4(v124);
  v344 = v125;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v343);
  OUTLINED_FUNCTION_59_0();
  v130 = (v128 - v129);
  v132 = MEMORY[0x1EEE9AC00](v131);
  v134 = v320 - v133;
  v135 = MEMORY[0x1EEE9AC00](v132);
  v332 = v320 - v136;
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_13_2();
  v338 = v137;
  v138 = sub_1D560F7E8();
  sub_1D4F165C4();
  sub_1D5614C68();

  v140 = sub_1D4FBE524(v139);
  v340 = v26;
  v141 = sub_1D560F7B8();
  if (!v141)
  {
    OUTLINED_FUNCTION_11_28();
    goto LABEL_44;
  }

  if (v140 == 15)
  {
    v142 = 0;
  }

  else
  {
    v142 = v140;
  }

  v334 = v141;
  switch(v142)
  {
    case 1:

      sub_1D560D938();
      OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_66_9();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12();
      sub_1D4E50004(v140, &unk_1EC7EBF30, &qword_1D561C8C0);
      v291 = OUTLINED_FUNCTION_47_23();
      v292(v291);
      v293 = OUTLINED_FUNCTION_31_26();
      v294(v293);
      v295 = OUTLINED_FUNCTION_0_80();
      v296(v295);
      OUTLINED_FUNCTION_41_24();
      sub_1D5613D98();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v297 = OUTLINED_FUNCTION_21_30();
      v130(v297);
      v298 = OUTLINED_FUNCTION_75_2();
      v130(v298);
      v299 = OUTLINED_FUNCTION_34_4(&v338);
      v300(v299, v100, v320[3]);
      goto LABEL_41;
    case 2:

      if (qword_1EC7E9090 != -1)
      {
        v208 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v208, qword_1EC7F1B20);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v209 = OUTLINED_FUNCTION_33_30();
      v210(v209);
      v211 = OUTLINED_FUNCTION_0_80();
      v212(v211);
      OUTLINED_FUNCTION_41_24();
      v213 = OUTLINED_FUNCTION_5_55(&v340);
      CreditArtist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v213, v214, v215, v216, v217);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v218 = OUTLINED_FUNCTION_21_30();
      v130(v218);
      v219 = OUTLINED_FUNCTION_75_2();
      v130(v219);
      OUTLINED_FUNCTION_23_33();
      OUTLINED_FUNCTION_54_12(v220, v221, v222);
      goto LABEL_41;
    case 3:

      if (qword_1EDD53C80 != -1)
      {
        v223 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v223, qword_1EDD53C88);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v224 = OUTLINED_FUNCTION_33_30();
      v225(v224);
      v226 = OUTLINED_FUNCTION_0_80();
      v227(v226);
      OUTLINED_FUNCTION_41_24();
      v228 = OUTLINED_FUNCTION_5_55(&v342);
      Composer.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v228, v229, v230, v231, v232);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v233 = OUTLINED_FUNCTION_21_30();
      v130(v233);
      v234 = OUTLINED_FUNCTION_75_2();
      v235 = (v130)(v234);
      OUTLINED_FUNCTION_54_12(v235, v236, type metadata accessor for Composer);
      goto LABEL_41;
    case 4:

      sub_1D560D918();
      OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_66_9();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12();
      sub_1D4E50004(v140, &unk_1EC7EBF30, &qword_1D561C8C0);
      v188 = OUTLINED_FUNCTION_47_23();
      v189(v188);
      v190 = OUTLINED_FUNCTION_31_26();
      v191(v190);
      v192 = v332;
      (*(v344 + 16))(v332, v134, v343);
      v193 = v320[5];
      sub_1D5613B58();
      swift_unknownObjectRelease();
      sub_1D4E50004(v341, &qword_1EC7EEC40, &unk_1D561C070);
      v194 = OUTLINED_FUNCTION_21_30();
      (v192)(v194);
      v195 = OUTLINED_FUNCTION_75_2();
      (v192)(v195);
      v196 = OUTLINED_FUNCTION_34_4(&v343);
      v197(v196, v193, v320[8]);
      goto LABEL_41;
    case 5:

      if (qword_1EDD53CC0 != -1)
      {
        v301 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v301, qword_1EDD53CC8);
      sub_1D560D4F8();
      v302 = v334;
      sub_1D560F7D8();
      sub_1D4E50004(v114, &unk_1EC7EBF30, &qword_1D561C8C0);
      v303 = OUTLINED_FUNCTION_33_30();
      v304(v303);
      v305 = v338;
      (*(v344 + 16))(v338, v134, v343);
      OUTLINED_FUNCTION_41_24();
      v306 = v321;
      Playlist.Folder.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v305, v302, &v346, v339, v321);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v307 = OUTLINED_FUNCTION_21_30();
      v130(v307);
      v308 = OUTLINED_FUNCTION_75_2();
      v130(v308);
      v309 = v324;
      sub_1D50CC018(v306, v324, type metadata accessor for Playlist.Folder.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v310 = sub_1D5614898();
        OUTLINED_FUNCTION_14(v310);
        (*(v311 + 32))(v342, v309);
      }

      else
      {
        OUTLINED_FUNCTION_28_30();
        sub_1D50CC018(v309, v342, v319);
      }

      goto LABEL_41;
    case 6:
      OUTLINED_FUNCTION_53_9();
      v320[0] = 102;
      OUTLINED_FUNCTION_11_28();
      goto LABEL_44;
    case 7:

      if (qword_1EDD53D48 != -1)
      {
        v252 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v252, qword_1EDD53D50);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v253 = OUTLINED_FUNCTION_33_30();
      v254(v253);
      v255 = OUTLINED_FUNCTION_0_80();
      v256(v255);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55(&v345);
      MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v257 = OUTLINED_FUNCTION_21_30();
      v130(v257);
      v258 = OUTLINED_FUNCTION_75_2();
      v130(v258);
      OUTLINED_FUNCTION_29_27();
      OUTLINED_FUNCTION_54_12(v259, v260, v261);
      goto LABEL_41;
    case 8:

      sub_1D560D888();
      OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_66_9();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12();
      sub_1D4E50004(v140, &unk_1EC7EBF30, &qword_1D561C8C0);
      v198 = OUTLINED_FUNCTION_47_23();
      v199(v198);
      v200 = OUTLINED_FUNCTION_31_26();
      v201(v200);
      v202 = OUTLINED_FUNCTION_0_80();
      v203(v202);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55(&v347);
      sub_1D560F7F8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v204 = OUTLINED_FUNCTION_21_30();
      v130(v204);
      v205 = OUTLINED_FUNCTION_75_2();
      v130(v205);
      v206 = OUTLINED_FUNCTION_34_4(&v348);
      v207(v206, v108, v323);
      goto LABEL_41;
    case 9:

      if (qword_1EDD53D08 != -1)
      {
        v276 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v276, qword_1EDD53D10);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v277 = OUTLINED_FUNCTION_33_30();
      v278(v277);
      v279 = OUTLINED_FUNCTION_0_80();
      v280(v279);
      OUTLINED_FUNCTION_41_24();
      v281 = OUTLINED_FUNCTION_5_55(&a9);
      SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v281, v282, v283, v284, v285);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v286 = OUTLINED_FUNCTION_21_30();
      v130(v286);
      v287 = OUTLINED_FUNCTION_75_2();
      v130(v287);
      OUTLINED_FUNCTION_27_26();
      OUTLINED_FUNCTION_54_12(v288, v289, v290);
      goto LABEL_41;
    case 10:

      sub_1D560D958();
      OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_66_9();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12();
      sub_1D4E50004(v140, &unk_1EC7EBF30, &qword_1D561C8C0);
      v178 = OUTLINED_FUNCTION_47_23();
      v179(v178);
      v180 = OUTLINED_FUNCTION_31_26();
      v181(v180);
      v182 = OUTLINED_FUNCTION_0_80();
      v183(v182);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55(&a10);
      sub_1D5614228();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v184 = OUTLINED_FUNCTION_21_30();
      v130(v184);
      v185 = OUTLINED_FUNCTION_75_2();
      v130(v185);
      v186 = OUTLINED_FUNCTION_34_4(&a11);
      v187(v186, v108, v326);
      goto LABEL_41;
    case 11:
      sub_1D560D928();
      sub_1D560D588();
      sub_1D560D4F8();
      sub_1D560F7D8();
      sub_1D4E50004(v114, &unk_1EC7EBF30, &qword_1D561C8C0);
      v262 = OUTLINED_FUNCTION_33_30();
      v263(v262);
      v264 = OUTLINED_FUNCTION_31_26();
      v265(v264);
      (*(v344 + 16))(v338, v130, v343);
      v266 = v341;
      sub_1D4EC76A8(v341, &v346);
      swift_unknownObjectRetain();

      v267 = v328;
      sub_1D5613C88();
      v268 = v329;
      v269 = v327;
      v270 = v330;
      (*(v329 + 16))(v327, v267, v330);
      v271 = (*(v268 + 88))(v269, v270);
      if (v271 == *MEMORY[0x1E6976E18])
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v266, &qword_1EC7EEC40, &unk_1D561C070);
        v272 = *(v344 + 8);
        v273 = v343;
        v272(v345, v343);
        (*(v268 + 8))(v267, v270);
        v272(v130, v273);
        (*(v268 + 96))(v269, v270);
        v274 = sub_1D5613838();
        OUTLINED_FUNCTION_14(v274);
        (*(v275 + 32))(v342, v269);
      }

      else
      {
        v313 = v343;
        v312 = v344;
        if (v271 != *MEMORY[0x1E6976DF8])
        {
          while (1)
          {
            OUTLINED_FUNCTION_53_9();
            v320[0] = 87;
            OUTLINED_FUNCTION_11_28();
LABEL_44:
            sub_1D5615E08();
            __break(1u);
          }
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v266, &qword_1EC7EEC40, &unk_1D561C070);
        v314 = *(v312 + 8);
        v314(v345, v313);
        v315 = v329;
        v316 = v330;
        (*(v329 + 8))(v328, v330);
        v314(v130, v313);
        (*(v315 + 96))(v269, v316);
        v317 = sub_1D560EEA8();
        OUTLINED_FUNCTION_14(v317);
        (*(v318 + 32))(v342, v269);
      }

LABEL_41:
      type metadata accessor for GenericMusicItem();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_46();
      return;
    case 12:

      if (qword_1EDD53C38 != -1)
      {
        v153 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v153, qword_1EDD53C40);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v154 = OUTLINED_FUNCTION_33_30();
      v155(v154);
      v156 = OUTLINED_FUNCTION_0_80();
      v157(v156);
      OUTLINED_FUNCTION_41_24();
      v158 = OUTLINED_FUNCTION_5_55(&a13);
      TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v158, v159, v160, v161, v162);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v163 = OUTLINED_FUNCTION_21_30();
      v130(v163);
      v164 = OUTLINED_FUNCTION_75_2();
      v130(v164);
      OUTLINED_FUNCTION_26_31();
      OUTLINED_FUNCTION_54_12(v165, v166, v167);
      goto LABEL_41;
    case 13:

      if (qword_1EDD53C58 != -1)
      {
        v168 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v168, qword_1EDD53C60);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v169 = OUTLINED_FUNCTION_33_30();
      v170(v169);
      v171 = OUTLINED_FUNCTION_0_80();
      v172(v171);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55(&a14);
      TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v173 = OUTLINED_FUNCTION_21_30();
      v130(v173);
      v174 = OUTLINED_FUNCTION_75_2();
      v130(v174);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_54_12(v175, v176, v177);
      goto LABEL_41;
    case 14:

      if (qword_1EC7E95E8 != -1)
      {
        v237 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v237, qword_1EC7F5D98);
      OUTLINED_FUNCTION_65_15();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14();
      sub_1D4E50004(v138, &unk_1EC7EBF30, &qword_1D561C8C0);
      v238 = OUTLINED_FUNCTION_33_30();
      v239(v238);
      v240 = OUTLINED_FUNCTION_0_80();
      v241(v240);
      OUTLINED_FUNCTION_41_24();
      v242 = OUTLINED_FUNCTION_5_55(&a15);
      TVShow.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v242, v243, v244, v245, v246);
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v247 = OUTLINED_FUNCTION_21_30();
      v130(v247);
      v248 = OUTLINED_FUNCTION_75_2();
      v130(v248);
      OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_54_12(v249, v250, v251);
      goto LABEL_41;
    default:

      sub_1D560D908();
      OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_66_9();
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12();
      sub_1D4E50004(v140, &unk_1EC7EBF30, &qword_1D561C8C0);
      v143 = OUTLINED_FUNCTION_47_23();
      v144(v143);
      v145 = OUTLINED_FUNCTION_31_26();
      v146(v145);
      v147 = OUTLINED_FUNCTION_0_80();
      v148(v147);
      OUTLINED_FUNCTION_41_24();
      sub_1D56138E8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v130, &qword_1EC7EEC40, &unk_1D561C070);
      v149 = OUTLINED_FUNCTION_21_30();
      v130(v149);
      v150 = OUTLINED_FUNCTION_75_2();
      v130(v150);
      v151 = OUTLINED_FUNCTION_34_4(&v336);
      v152(v151, v108, v320[1]);
      goto LABEL_41;
  }
}

void GenericMusicItem.underlyingLegacyModelObjectType.getter()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D5613C48();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D56141F8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = type metadata accessor for GenericMusicItem();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D4F26680(v1, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = MEMORY[0x1E6976850];
      goto LABEL_23;
    case 2u:
      v29 = MEMORY[0x1E6976880];
      goto LABEL_23;
    case 3u:
      v29 = MEMORY[0x1E69767B8];
      goto LABEL_23;
    case 4u:
      (*(v16 + 32))(v21, v28, v13);
      sub_1D56141B8();
      (*(v16 + 8))(v21, v13);
      goto LABEL_24;
    case 5u:
      v29 = MEMORY[0x1E69767C8];
      goto LABEL_23;
    case 6u:
      (*(v7 + 32))(v12, v28, v4);
      sub_1D5613C08();
      (*(v7 + 8))(v12, v4);
      goto LABEL_24;
    case 7u:
      v29 = MEMORY[0x1E6976798];
      goto LABEL_23;
    case 8u:
      v29 = MEMORY[0x1E69767A0];
      goto LABEL_23;
    case 9u:
      v29 = MEMORY[0x1E6976888];
      goto LABEL_23;
    case 0xAu:
      v29 = MEMORY[0x1E6976808];
      goto LABEL_23;
    case 0xBu:
      v29 = MEMORY[0x1E6976898];
      goto LABEL_23;
    case 0xCu:
      v29 = MEMORY[0x1E69767A8];
      goto LABEL_23;
    case 0xDu:
      v29 = MEMORY[0x1E69767E0];
      goto LABEL_23;
    case 0xEu:
      v29 = MEMORY[0x1E6976830];
      goto LABEL_23;
    case 0xFu:
      v29 = MEMORY[0x1E6976878];
      goto LABEL_23;
    case 0x10u:
      v29 = MEMORY[0x1E69768A0];
      goto LABEL_23;
    case 0x11u:
      v29 = MEMORY[0x1E6976890];
      goto LABEL_23;
    case 0x12u:
      v29 = MEMORY[0x1E6976860];
      goto LABEL_23;
    case 0x13u:
      v29 = MEMORY[0x1E69767F0];
      goto LABEL_23;
    case 0x14u:
      v29 = MEMORY[0x1E69767F8];
      goto LABEL_23;
    case 0x15u:
      OUTLINED_FUNCTION_53_9();
      OUTLINED_FUNCTION_11_28();
      OUTLINED_FUNCTION_71_9();
      __break(1u);
      return;
    default:
      v29 = MEMORY[0x1E6976838];
LABEL_23:
      v30 = *v29;
      v31 = sub_1D5613158();
      OUTLINED_FUNCTION_14(v31);
      (*(v32 + 104))(v3, v30);
      sub_1D50CC074(v28, type metadata accessor for GenericMusicItem);
LABEL_24:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void GenericMusicItem.convertToRawDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v196 = v20;
  v197 = v23;
  v195 = type metadata accessor for UploadedVideo();
  v24 = OUTLINED_FUNCTION_14(v195);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v194 = v27;
  OUTLINED_FUNCTION_70_0();
  v193 = type metadata accessor for UploadedAudio();
  v28 = OUTLINED_FUNCTION_14(v193);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v192 = v31;
  OUTLINED_FUNCTION_70_0();
  v191 = type metadata accessor for TVShow();
  v32 = OUTLINED_FUNCTION_14(v191);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v190 = v35;
  OUTLINED_FUNCTION_70_0();
  v189 = type metadata accessor for TVSeason();
  v36 = OUTLINED_FUNCTION_14(v189);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v188 = v39;
  OUTLINED_FUNCTION_70_0();
  v187 = type metadata accessor for TVEpisode();
  v40 = OUTLINED_FUNCTION_14(v187);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v186 = v43;
  OUTLINED_FUNCTION_70_0();
  v44 = sub_1D5614408();
  v45 = OUTLINED_FUNCTION_4(v44);
  v184 = v46;
  v185 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v183 = v49;
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D5613838();
  v51 = OUTLINED_FUNCTION_4(v50);
  v181 = v52;
  v182 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v180 = v55;
  OUTLINED_FUNCTION_70_0();
  v179 = type metadata accessor for SocialProfile();
  v56 = OUTLINED_FUNCTION_14(v179);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v178 = v59;
  OUTLINED_FUNCTION_70_0();
  v177 = sub_1D560F8B8();
  v60 = OUTLINED_FUNCTION_4(v177);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5614B68();
  v65 = OUTLINED_FUNCTION_12_0(v64, &a16);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v68);
  v69 = type metadata accessor for Playlist.Folder();
  v70 = OUTLINED_FUNCTION_20(v69, &a13);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D5614898();
  v75 = OUTLINED_FUNCTION_12_0(v74, &a11);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = sub_1D560EEA8();
  v80 = OUTLINED_FUNCTION_12_0(v79, &v198);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v83);
  v84 = type metadata accessor for MusicMovie();
  v85 = OUTLINED_FUNCTION_20(v84, &v195);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D5613C48();
  v90 = OUTLINED_FUNCTION_12_0(v89, &v193);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = type metadata accessor for EditorialItem();
  v95 = OUTLINED_FUNCTION_20(v94, &v191);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D56141F8();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v188);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v103);
  v104 = type metadata accessor for CreditArtist();
  v105 = OUTLINED_FUNCTION_20(v104, &v186);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5();
  v110 = v109 - v108;
  v111 = type metadata accessor for Composer();
  v112 = OUTLINED_FUNCTION_14(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  v117 = v116 - v115;
  v118 = sub_1D5613EF8();
  v119 = OUTLINED_FUNCTION_4(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  v124 = v123 - v122;
  v125 = sub_1D5613AF8();
  v126 = OUTLINED_FUNCTION_4(v125);
  v128 = v127;
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5();
  v133 = v132 - v131;
  v134 = type metadata accessor for GenericMusicItem();
  v135 = OUTLINED_FUNCTION_14(v134);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_5();
  v140 = v139 - v138;
  sub_1D4F26680(v196, v139 - v138);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172(&v185);
      (*(v161 + 32))(v124, v140, v118);
      sub_1D4E5E488(&qword_1EC7EF9B8, MEMORY[0x1E6976F28]);
      sub_1D56132F8();
      (*(v125 + 8))(v124, v118);
      goto LABEL_27;
    case 2u:
      v153 = OUTLINED_FUNCTION_52_15();
      sub_1D50CC018(v153, v117, v154);
      sub_1D4E5E488(&qword_1EC7EF9A8, type metadata accessor for Composer);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF9B0);
      OUTLINED_FUNCTION_51_18();
      sub_1D56132F8();
      v155 = type metadata accessor for Composer;
      v156 = v117;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_23_33();
      sub_1D50CC018(v140, v110, v159);
      sub_1D4E5E488(&qword_1EC7EF998, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF9A0);
      OUTLINED_FUNCTION_51_18();
      sub_1D56132F8();
      v155 = type metadata accessor for CreditArtist;
      v156 = v110;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_35_0(&v187);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v149();
      sub_1D4E5E488(&qword_1EC7EF990, MEMORY[0x1E6977048]);
      goto LABEL_22;
    case 5u:
      v165 = OUTLINED_FUNCTION_52_15();
      v143 = v174;
      sub_1D50CC018(v165, v174, v166);
      sub_1D4E5E488(&qword_1EC7EB420, type metadata accessor for EditorialItem);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF988);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for EditorialItem;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_35_0(&v192);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v168();
      sub_1D5613BD8();
      goto LABEL_23;
    case 7u:
      OUTLINED_FUNCTION_29_27();
      v143 = v175;
      sub_1D50CC018(v140, v175, v160);
      sub_1D4E5E488(&qword_1EDD592F8, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA580);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for MusicMovie;
      goto LABEL_25;
    case 8u:
      OUTLINED_FUNCTION_35_0(&v197);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v171();
      sub_1D4E5E488(&qword_1EC7EA728, MEMORY[0x1E69754E8]);
      goto LABEL_22;
    case 9u:
      OUTLINED_FUNCTION_35_0(&a10);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v152();
      sub_1D4E5E488(&qword_1EC7EB4E8, MEMORY[0x1E69773E0]);
      goto LABEL_22;
    case 0xAu:
      OUTLINED_FUNCTION_28_30();
      v143 = v176;
      sub_1D50CC018(v140, v176, v170);
      sub_1D4E5E488(&qword_1EC7EE428, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA530);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for Playlist.Folder;
      goto LABEL_25;
    case 0xBu:
      OUTLINED_FUNCTION_35_0(&a15);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v148();
      sub_1D4E5E488(&qword_1EC7EF980, MEMORY[0x1E6977550]);
      goto LABEL_22;
    case 0xCu:
      OUTLINED_FUNCTION_35_0(&a18);
      v150 = OUTLINED_FUNCTION_61_8();
      v125 = v177;
      v151(v150);
      sub_1D4E5E488(&qword_1EC7EF978, MEMORY[0x1E69758A0]);
      goto LABEL_22;
    case 0xDu:
      OUTLINED_FUNCTION_27_26();
      v143 = v178;
      sub_1D50CC018(v140, v178, v167);
      sub_1D4E5E488(&qword_1EC7EE040, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA600);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for SocialProfile;
      goto LABEL_25;
    case 0xEu:
      v133 = v180;
      v118 = v181;
      v146 = OUTLINED_FUNCTION_62_18(v181);
      v125 = v182;
      v147(v146);
      sub_1D4E5E488(&qword_1EC7EA730, MEMORY[0x1E6976BE8]);
      goto LABEL_22;
    case 0xFu:
      v133 = v183;
      v118 = v184;
      v157 = OUTLINED_FUNCTION_62_18(v184);
      v125 = v185;
      v158(v157);
      sub_1D4E5E488(&qword_1EC7EB4E0, MEMORY[0x1E6977180]);
LABEL_22:
      sub_1D56132F8();
LABEL_23:
      (*(v118 + 8))(v133, v125);
      goto LABEL_27;
    case 0x10u:
      OUTLINED_FUNCTION_26_31();
      v143 = v186;
      sub_1D50CC018(v140, v186, v144);
      sub_1D4E5E488(&qword_1EC7EA720, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA578);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for TVEpisode;
      goto LABEL_25;
    case 0x11u:
      OUTLINED_FUNCTION_25_33();
      v143 = v188;
      sub_1D50CC018(v140, v188, v162);
      sub_1D4E5E488(&qword_1EC7EA438, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA480);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for TVSeason;
      goto LABEL_25;
    case 0x12u:
      OUTLINED_FUNCTION_24_29();
      v143 = v190;
      sub_1D50CC018(v140, v190, v169);
      sub_1D4E5E488(&qword_1EC7EA390, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA3A0);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for TVShow;
      goto LABEL_25;
    case 0x13u:
      v172 = OUTLINED_FUNCTION_52_15();
      v143 = v192;
      sub_1D50CC018(v172, v192, v173);
      sub_1D4E5E488(&qword_1EC7EA718, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA588);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for UploadedAudio;
      goto LABEL_25;
    case 0x14u:
      v163 = OUTLINED_FUNCTION_52_15();
      v143 = v194;
      sub_1D50CC018(v163, v194, v164);
      sub_1D4E5E488(&qword_1EC7EA710, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA590);
      OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11();
      v145 = type metadata accessor for UploadedVideo;
LABEL_25:
      v155 = v145;
      v156 = v143;
LABEL_26:
      sub_1D50CC074(v156, v155);
      goto LABEL_27;
    case 0x15u:
      OUTLINED_FUNCTION_53_9();
      OUTLINED_FUNCTION_11_28();
      OUTLINED_FUNCTION_71_9();
      __break(1u);
      return;
    default:
      v141 = OUTLINED_FUNCTION_62_18(v128);
      v142(v141);
      sub_1D4E5E488(&qword_1EC7EB4F0, MEMORY[0x1E6976D28]);
      sub_1D56132F8();
      (*(v128 + 8))(v133, v125);
LABEL_27:
      OUTLINED_FUNCTION_46();
      return;
  }
}

BOOL sub_1D50CBE6C()
{
  v0 = sub_1D5615EF8();

  return v0 != 0;
}

BOOL sub_1D50CBEBC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D50CBE6C();
  *a2 = result;
  return result;
}

uint64_t sub_1D50CBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4E5E488(&qword_1EDD5C5F8, type metadata accessor for GenericMusicItem);

  return MEMORY[0x1EEDCE1E8](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50CBF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4E5E488(&qword_1EC7EB0E0, type metadata accessor for GenericMusicItem);

  return MEMORY[0x1EEDCE1E0](a1, a2, a3, v6);
}

uint64_t sub_1D50CC018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D50CC074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *_s38LegacyModelGenericMusicItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50CC2E4()
{
  result = qword_1EDD5EFD8;
  if (!qword_1EDD5EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFD8);
  }

  return result;
}

unint64_t sub_1D50CC33C()
{
  result = qword_1EDD5EFE0;
  if (!qword_1EDD5EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFE0);
  }

  return result;
}

unint64_t sub_1D50CC394()
{
  result = qword_1EDD5EFD0;
  if (!qword_1EDD5EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_26()
{
  v2 = *(*(v1 - 248) + 8);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_30()
{
  v2 = *(v1 - 208);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_19()
{

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_47_23()
{
  v2 = *(v1 - 208);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_65_15()
{

  return sub_1D560D4F8();
}

uint64_t OUTLINED_FUNCTION_66_9()
{

  return sub_1D560D4F8();
}

uint64_t OUTLINED_FUNCTION_67_14()
{
  v2 = *(v0 - 216);

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_71_9()
{

  return sub_1D5615E08();
}

uint64_t type metadata accessor for SocialProfilePropertyProvider()
{
  result = qword_1EDD5DA40;
  if (!qword_1EDD5DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50CC588()
{
  sub_1D4EC11C4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1D4EC11C4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1D4EC11C4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D560D838();
      if (v9 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D5610088();
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4E5CF94();
        v1 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1D50CC7B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D567EC90);
    v48 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_45;
  }

  v19 = v18;
  v20 = qword_1EDD53F90;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_12_41();
  }

  *&v46 = qword_1EDD76898;
  v48 = v19;
  sub_1D50CE2E8();
  if (sub_1D5614D18())
  {
    sub_1D4E69910(v2, v17, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v21 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v17);
    if (!v22)
    {
      *(&v47 + 1) = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v46);
      (*(*(v21 - 8) + 32))(boxed_opaque_existential_0, v17, v21);
LABEL_14:

      goto LABEL_15;
    }

    v23 = &qword_1EC7E9CA0;
    v24 = &unk_1D561A0C0;
    v25 = v17;
    goto LABEL_8;
  }

  v27 = qword_1EDD53F98;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_11_48();
  }

  OUTLINED_FUNCTION_1_2(qword_1EDD768A0);
  OUTLINED_FUNCTION_34_6();
  if (v27)
  {
    v28 = (v2 + *(type metadata accessor for SocialProfilePropertyProvider() + 20));
    v29 = v28[1];
    if (!v29)
    {
      v31 = 0;
      v30 = 0;
      goto LABEL_25;
    }

LABEL_13:
    v30 = *v28;

    v31 = MEMORY[0x1E69E6158];
LABEL_25:

    *a2 = v30;
    a2[1] = v29;
    a2[2] = 0;
    a2[3] = v31;
    return result;
  }

  v34 = qword_1EDD53FC0;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_10_50();
  }

  OUTLINED_FUNCTION_1_2(qword_1EDD768B8);
  OUTLINED_FUNCTION_34_6();
  if (v34)
  {
    v35 = *(type metadata accessor for SocialProfilePropertyProvider() + 24);
  }

  else
  {
    v36 = qword_1EDD53F88;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_9_49();
    }

    OUTLINED_FUNCTION_1_2(qword_1EDD76890);
    OUTLINED_FUNCTION_34_6();
    if (v36)
    {
      v35 = *(type metadata accessor for SocialProfilePropertyProvider() + 28);
    }

    else
    {
      v37 = qword_1EDD53FD0;

      if (v37 != -1)
      {
        OUTLINED_FUNCTION_7_9();
      }

      OUTLINED_FUNCTION_1_2(qword_1EDD768C0);
      OUTLINED_FUNCTION_34_6();
      if ((v37 & 1) == 0)
      {
        v40 = qword_1EDD53FA8;

        if (v40 != -1)
        {
          OUTLINED_FUNCTION_6_53();
        }

        OUTLINED_FUNCTION_1_2(qword_1EDD768A8);
        OUTLINED_FUNCTION_34_6();
        if ((v40 & 1) == 0)
        {
          v41 = qword_1EDD53FB0;

          if (v41 != -1)
          {
            OUTLINED_FUNCTION_5_56();
          }

          v42 = OUTLINED_FUNCTION_1_2(qword_1EDD768B0);

          if ((v42 & 1) == 0)
          {
            while (1)
            {
              *&v46 = 0;
              *(&v46 + 1) = 0xE000000000000000;
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v48 = a1;
              sub_1D560CDE8();
              sub_1D5615D48();
              MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_45:
              OUTLINED_FUNCTION_17_13();
              __break(1u);
            }
          }

          v43 = type metadata accessor for SocialProfilePropertyProvider();
          sub_1D4E69910(v3 + *(v43 + 40), v11, &unk_1EC7E9CA8, &unk_1D561D1D0);
          v44 = sub_1D560C0A8();
          OUTLINED_FUNCTION_10(v11);
          if (!v22)
          {
            *(&v47 + 1) = v44;
            v45 = __swift_allocate_boxed_opaque_existential_0(&v46);
            (*(*(v44 - 8) + 32))(v45, v11, v44);
            goto LABEL_14;
          }

          v23 = &unk_1EC7E9CA8;
          v24 = &unk_1D561D1D0;
          v25 = v11;
LABEL_8:
          result = sub_1D4E50004(v25, v23, v24);
          v46 = 0u;
          v47 = 0u;
LABEL_15:
          v33 = v47;
          *a2 = v46;
          *(a2 + 1) = v33;
          return result;
        }

        v28 = (v2 + *(type metadata accessor for SocialProfilePropertyProvider() + 36));
        v29 = v28[1];
        if (!v29)
        {
          v30 = 0;
          v31 = 0;
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      v35 = *(type metadata accessor for SocialProfilePropertyProvider() + 32);
    }
  }

  v38 = *(v2 + v35);

  v39 = MEMORY[0x1E69E6370];
  if (v38 == 2)
  {
    v39 = 0;
  }

  *a2 = v38 & 1;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v39;
  return result;
}

void sub_1D50CCDA8()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_13();
  __break(1u);
}

void sub_1D50CCE54(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F0, &unk_1D5633C30);
  if (swift_dynamicCastClass())
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5683EB0);
    sub_1D5615D48();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5683E70);
    v2 = *(v1 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_13();
  __break(1u);
}

uint64_t sub_1D50CCFDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5621E90;
  if (qword_1EDD53F90 != -1)
  {
    OUTLINED_FUNCTION_12_41();
  }

  *(v0 + 32) = qword_1EDD76898;
  v1 = qword_1EDD53F98;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_11_48();
  }

  *(v0 + 40) = qword_1EDD768A0;
  v2 = qword_1EDD53FC0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_10_50();
  }

  *(v0 + 48) = qword_1EDD768B8;
  v3 = qword_1EDD53F88;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  *(v0 + 56) = qword_1EDD76890;
  v4 = qword_1EDD53FD0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_7_9();
  }

  *(v0 + 64) = qword_1EDD768C0;
  v5 = qword_1EDD53FA8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_6_53();
  }

  *(v0 + 72) = qword_1EDD768A8;
  v6 = qword_1EDD53FB0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_5_56();
  }

  *(v0 + 80) = qword_1EDD768B0;
  qword_1EDD76B58 = v0;
}

uint64_t sub_1D50CD18C(uint64_t a1, uint64_t a2)
{
  v109 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v109);
  v106 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v104 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v104 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v107);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v104 - v18;
  v19 = sub_1D56140F8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v104 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v104 - v39;
  v41 = *(v38 + 56);
  v110 = a1;
  sub_1D4E69910(a1, &v104 - v39, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v111 = a2;
  sub_1D4E69910(a2, &v40[v41], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v40);
  if (v42)
  {
    OUTLINED_FUNCTION_10(&v40[v41]);
    if (v42)
    {
      sub_1D4E50004(v40, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v43 = &qword_1EC7E9FB8;
    v44 = &unk_1D561B9C0;
    v45 = v40;
    goto LABEL_10;
  }

  sub_1D4E69910(v40, v33, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v40[v41]);
  if (v42)
  {
    (*(v22 + 8))(v33, v19);
    goto LABEL_9;
  }

  (*(v22 + 32))(v27, &v40[v41], v19);
  OUTLINED_FUNCTION_2_62();
  sub_1D50CE34C(v48, v49);
  v50 = sub_1D5614D18();
  v51 = *(v22 + 8);
  v51(v27, v19);
  v51(v33, v19);
  sub_1D4E50004(v40, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v52 = type metadata accessor for SocialProfilePropertyProvider();
  v53 = v52[5];
  v55 = v110;
  v54 = v111;
  OUTLINED_FUNCTION_21_2();
  if (v58)
  {
    if (!v56)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v57);
    v61 = v42 && v59 == v60;
    if (!v61 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v56)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_7(v52[6]);
  if (v42)
  {
    if (v62 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v46 = 0;
    if (v62 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7(v52[7]);
  if (v42)
  {
    if (v64 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v46 = 0;
    if (v64 == 2 || ((v64 ^ v65) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7(v52[8]);
  if (v42)
  {
    if (v66 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

  v46 = 0;
  if (v66 != 2 && ((v66 ^ v67) & 1) == 0)
  {
LABEL_41:
    v68 = v52[9];
    OUTLINED_FUNCTION_21_2();
    if (v71)
    {
      if (!v69)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v70);
      v74 = v42 && v72 == v73;
      if (!v74 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v69)
    {
      goto LABEL_11;
    }

    v75 = v52[10];
    v76 = v108;
    v77 = *(v107 + 48);
    sub_1D4E69910(v55 + v75, v108, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4E69910(v54 + v75, v76 + v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v78 = v109;
    OUTLINED_FUNCTION_4_18(v76, 1);
    if (v42)
    {
      OUTLINED_FUNCTION_4_18(v76 + v77, 1);
      if (v42)
      {
        sub_1D4E50004(v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_60:
        OUTLINED_FUNCTION_26_32(v52[11]);
        sub_1D4EF6F7C();
        if (v88)
        {
          v89 = v52[12];
          if (sub_1D560D6E8())
          {
            v90 = v52[13];
            if (sub_1D4F3B22C())
            {
              v91 = v52[14];
              OUTLINED_FUNCTION_21_2();
              if (v94)
              {
                if (v92)
                {
                  OUTLINED_FUNCTION_31_0(v93);
                  v97 = v42 && v95 == v96;
                  if (v97 || (sub_1D5616168() & 1) != 0)
                  {
LABEL_72:
                    OUTLINED_FUNCTION_26_32(v52[15]);
                    sub_1D4F286E0();
                    if (v98)
                    {
                      OUTLINED_FUNCTION_26_32(v52[16]);
                      sub_1D4F286E0();
                      if (v99)
                      {
                        OUTLINED_FUNCTION_26_32(v52[17]);
                        sub_1D4F286E0();
                        if (v100)
                        {
                          v101 = v52[18];
                          v102 = *(v110 + v101);
                          v103 = *(v111 + v101);
                          sub_1D4F286E0();
                          return v46 & 1;
                        }
                      }
                    }
                  }
                }
              }

              else if (!v92)
              {
                goto LABEL_72;
              }
            }
          }
        }

LABEL_11:
        v46 = 0;
        return v46 & 1;
      }
    }

    else
    {
      v79 = v105;
      sub_1D4E69910(v76, v105, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_4_18(v76 + v77, 1);
      if (!v80)
      {
        v81 = v106;
        v82 = v76 + v77;
        v83 = v104;
        (*(v106 + 32))(v104, v82, v78);
        OUTLINED_FUNCTION_3_65();
        sub_1D50CE34C(v84, v85);
        v86 = sub_1D5614D18();
        v87 = *(v81 + 8);
        v87(v83, v78);
        v87(v79, v78);
        sub_1D4E50004(v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v86 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_60;
      }

      (*(v106 + 8))(v79, v78);
    }

    v43 = &qword_1EC7E9FB0;
    v44 = &qword_1D562C590;
    v45 = v76;
LABEL_10:
    sub_1D4E50004(v45, v43, v44);
    goto LABEL_11;
  }

  return v46 & 1;
}

void sub_1D50CD870()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v46 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = sub_1D56140F8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v46 - v28;
  sub_1D4E69910(v1, &v46 - v28, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v15) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v18 + 32))(v23, v29, v15);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_62();
    sub_1D50CE34C(v30, v31);
    sub_1D5614CB8();
    (*(v18 + 8))(v23, v15);
  }

  v32 = type metadata accessor for SocialProfilePropertyProvider();
  v33 = (v1 + v32[5]);
  if (v33[1])
  {
    v34 = *v33;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v32[6]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v32[7]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v32[8]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v35 = (v1 + v32[9]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v1 + v32[10], v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_4_18(v14, 1);
  if (v37)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v39 = v46;
    v38 = v47;
    (*(v47 + 32))(v46, v14, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_65();
    sub_1D50CE34C(v40, v41);
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v2);
  }

  OUTLINED_FUNCTION_32_2(v32[11]);
  sub_1D4F070FC();
  v42 = v32[12];
  sub_1D560D838();
  sub_1D50CE34C(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_42();
  v43 = v32[13];
  sub_1D5610088();
  sub_1D50CE34C(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_42();
  v44 = (v1 + v32[14]);
  if (v44[1])
  {
    v45 = *v44;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v32[15]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v32[16]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v32[17]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v32[18]);
  sub_1D4F31AC0();
}

uint64_t sub_1D50CDD50()
{
  sub_1D56162D8();
  sub_1D50CD870();
  return sub_1D5616328();
}

void (*sub_1D50CDDA4(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D50CC7B8(a2, v5);
  return sub_1D50CDE10;
}

void sub_1D50CDE10(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4E69910(v2, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50CCDA8();
  }

  v4 = *(v2 + 64);

  sub_1D50CCDA8();
}

uint64_t sub_1D50CDE80()
{
  sub_1D56162D8();
  sub_1D50CD870();
  return sub_1D5616328();
}

uint64_t sub_1D50CDF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50CE34C(&qword_1EC7EF9E8, type metadata accessor for SocialProfilePropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50CDF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D560D838();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1D50CE004(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D50CE078(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1D50CE09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50CE110(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D50CE154(uint64_t a1)
{
  v2 = sub_1D50CE34C(&qword_1EC7EF9E8, type metadata accessor for SocialProfilePropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50CE1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50CE34C(&qword_1EC7EF9D8, type metadata accessor for SocialProfilePropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50CE264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50CE34C(&qword_1EC7EF9E0, type metadata accessor for SocialProfilePropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D50CE2E8()
{
  result = qword_1EC7EFA00;
  if (!qword_1EC7EFA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF9F8, &unk_1D5633C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA00);
  }

  return result;
}

uint64_t sub_1D50CE34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicLibrary.UndoDislikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D50CE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v103 = a4;
  v105 = a1;
  v106 = a2;
  v107 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v95 - v9;
  v104 = a3;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v95 = &v95 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v98 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v95 - v19;
  v100 = sub_1D5614898();
  v20 = OUTLINED_FUNCTION_4(v100);
  v97 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v96 = v25 - v24;
  v26 = sub_1D560D838();
  v27 = OUTLINED_FUNCTION_4(v26);
  v102 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v95 - v36;
  v38 = sub_1D560D3F8();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  sub_1D560D398();
  v47 = sub_1D560D3D8();
  (*(v41 + 8))(v46, v38);
  if ((v47 & 1) == 0)
  {
    (*(v10 + 16))(v14, v105, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v118, v121);
      __swift_project_boxed_opaque_existential_1(v121, v122);
      sub_1D560DB68();
      if (*(&v113 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if (swift_dynamicCast())
        {
          if (v116)
          {
            sub_1D4E48324(&v115, &v118);
            v49 = v119;
            v50 = v120;
            __swift_project_boxed_opaque_existential_1(&v118, v119);
            sub_1D4F5E39C(v49, v50, &v115);
            goto LABEL_55;
          }
        }

        else
        {
          v117 = 0;
          *&v67 = OUTLINED_FUNCTION_2_63();
          *v68 = v67;
          v68[1] = v67;
        }
      }

      else
      {
        sub_1D4E6C9CC(&v112, &qword_1EC7EEC40, &unk_1D561C070);
        *&v65 = OUTLINED_FUNCTION_2_63();
        *v66 = v65;
        v66[1] = v65;
        v117 = 0;
      }

      v69 = &qword_1EC7EC548;
      v70 = &qword_1D5621090;
      v71 = &v115;
      goto LABEL_21;
    }

    v120 = 0;
    *&v55 = OUTLINED_FUNCTION_2_63();
    *(v56 + 48) = v55;
    *(v56 + 64) = v55;
    v57 = &qword_1EC7EC548;
    v58 = &qword_1D5621090;
LABEL_39:
    result = sub_1D4E6C9CC(&v118, v57, v58);
    goto LABEL_40;
  }

  result = sub_1D560F0C8();
  if (result)
  {
LABEL_3:
    *v107 = 5;
    return result;
  }

  v51 = v104;
  v52 = *(v103 + 8);
  v53 = v105;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v102 + 8))(v33, v26);
  v54 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v37, 1, v54) == 1)
  {
    sub_1D4E6C9CC(v37, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v59 = sub_1D560D488();
    v61 = v60;
    (*(*(v54 - 8) + 8))(v37, v54);
    if (v59 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v61 == v62)
    {

      v53 = v105;
    }

    else
    {
      v64 = sub_1D5616168();

      v53 = v105;
      if ((v64 & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  v72 = *(v10 + 16);
  v72(v99, v53, v51);
  v73 = v101;
  v74 = v100;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v74);
    v76 = v96;
    v75 = v97;
    (*(v97 + 32))(v96, v73, v74);
    Playlist.variant.getter();
    result = (*(v75 + 8))(v76, v74);
    if (LOBYTE(v121[0]) == 3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v74);
    sub_1D4E6C9CC(v73, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  v72(v98, v53, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if ((OUTLINED_FUNCTION_3_66() & 1) == 0)
  {
    v120 = 0;
    *&v84 = OUTLINED_FUNCTION_2_63();
    *(v85 + 48) = v84;
    *(v85 + 64) = v84;
    v57 = &qword_1EC7EC510;
    v58 = &unk_1D5621040;
    goto LABEL_39;
  }

  sub_1D4E48324(&v118, v121);
  v77 = v122;
  v78 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  (*(v78 + 24))(&v115, v77, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_3_66() & 1) == 0)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v69 = &qword_1EC7EC510;
    v70 = &unk_1D5621040;
    v71 = &v112;
LABEL_21:
    sub_1D4E6C9CC(v71, v69, v70);
    result = __swift_destroy_boxed_opaque_existential_1(v121);
LABEL_40:
    *v107 = 0;
    return result;
  }

  sub_1D4E48324(&v112, &v118);
  v72(v95, v105, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (OUTLINED_FUNCTION_3_66())
  {
    sub_1D4E48324(&v112, &v115);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    sub_1D560DB68();
    if (v108[3])
    {
      if (OUTLINED_FUNCTION_3_66())
      {
        if (*(&v110 + 1))
        {
          sub_1D4E48324(&v109, &v112);
          v80 = *(&v113 + 1);
          v79 = v114;
          v81 = __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
          sub_1D4F67E14(v81, v80, v79);
          if ((v109 & 0xC0) == 0x40)
          {
            v82 = v109 & 0x3F;
            if (v82 == 1 || v82 == 2)
            {
              v83 = 3;
              goto LABEL_61;
            }

            if (v82 == 6)
            {
              v83 = 2;
LABEL_61:
              *v107 = v83;
              __swift_destroy_boxed_opaque_existential_1(&v112);
              __swift_destroy_boxed_opaque_existential_1(&v115);
              goto LABEL_59;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(&v112);
          __swift_destroy_boxed_opaque_existential_1(&v115);
          goto LABEL_54;
        }
      }

      else
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
      }
    }

    else
    {
      sub_1D4E6C9CC(v108, &qword_1EC7EEC40, &unk_1D561C070);
      v109 = 0u;
      v110 = 0u;
      v111 = 0;
    }

    sub_1D4E6C9CC(&v109, &qword_1EC7EC548, &qword_1D5621090);
    __swift_destroy_boxed_opaque_existential_1(&v115);
  }

  else
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    sub_1D4E6C9CC(&v112, &qword_1EC7EC548, &qword_1D5621090);
  }

  v86 = objc_opt_self();
  v87 = [objc_opt_self() autoupdatingActiveAccount];
  v88 = [v86 sharedMonitorForIdentity_];

  v89 = [v88 subscriptionStatus];
  if (!v89 || (v90 = [v89 capabilities], v89, (v90 & 1) != 0))
  {
    v92 = *(sub_1D4E5A1CC() + 48);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v115 == 2 || v115 != 3 && (v115 & 1) == 0)
    {
LABEL_54:
      v94 = v119;
      v93 = v120;
      __swift_project_boxed_opaque_existential_1(&v118, v119);
      sub_1D4F68014(v94, v93, &v115);
LABEL_55:
      if (v115 > 1u)
      {
        v91 = 6;
      }

      else
      {
        v91 = 1;
      }

      goto LABEL_58;
    }

    v91 = 3;
  }

  else
  {
    v91 = 2;
  }

LABEL_58:
  *v107 = v91;
LABEL_59:
  __swift_destroy_boxed_opaque_existential_1(&v118);
  return __swift_destroy_boxed_opaque_existential_1(v121);
}

unint64_t sub_1D50CEF3C()
{
  result = qword_1EC7EFA08;
  if (!qword_1EC7EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA08);
  }

  return result;
}

_BYTE *_s17UndoDislikeActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s17UndoDislikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}