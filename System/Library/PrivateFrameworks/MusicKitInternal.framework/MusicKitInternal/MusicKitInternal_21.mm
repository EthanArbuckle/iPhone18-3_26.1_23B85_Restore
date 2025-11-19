uint64_t sub_1D5029A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistFolderPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5029B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5029B74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {

      OUTLINED_FUNCTION_159();
      sub_1D4EF6F54();
      v3 = v2;

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5029BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63617254706F74 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5029C6C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE488, &qword_1D562B138);
  OUTLINED_FUNCTION_25_10(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = a1[3];
  v14 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502AAFC();
  sub_1D56163D8();
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
  sub_1D502AB94(&qword_1EC7EE4A0, &qword_1EC7EE4A8);
  sub_1D5616068();
  return (*(v7 + 8))(v12, v2);
}

void sub_1D5029DE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F062CC();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D5029E3C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D56162F8();
  if (a1)
  {
    sub_1D4F062CC();
  }

  return sub_1D5616328();
}

uint64_t sub_1D5029EA0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4B0, &qword_1D562B150);
  OUTLINED_FUNCTION_25_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = a1[3];
  v9 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502AAFC();
  OUTLINED_FUNCTION_3_45();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
    sub_1D502AB94(&qword_1EC7EE4B8, &qword_1EDD532A8);
    sub_1D5615F78();
    v10 = OUTLINED_FUNCTION_2_39();
    v11(v10);
    v1 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D502A01C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (a2 != 1)
  {
    if (a1)
    {
      if (a2)
      {

        OUTLINED_FUNCTION_159();
        sub_1D4EF6F54();
        v5 = v4;
        sub_1D4EA7410(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D502A098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D502A128(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE438, &qword_1D562AE10);
  OUTLINED_FUNCTION_25_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9();
  v6 = a1[3];
  v7 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502A244();
  sub_1D56163D8();
  sub_1D502A298();
  sub_1D5616068();
  v8 = OUTLINED_FUNCTION_2_39();
  return v9(v8);
}

unint64_t sub_1D502A244()
{
  result = qword_1EC7EE440;
  if (!qword_1EC7EE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE440);
  }

  return result;
}

unint64_t sub_1D502A298()
{
  result = qword_1EC7EE448;
  if (!qword_1EC7EE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE448);
  }

  return result;
}

void sub_1D502A2EC(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || (sub_1D56162F8(), !a2))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F062CC();
  }
}

uint64_t sub_1D502A354(uint64_t a1)
{
  sub_1D56162D8();
  if (a1 == 1 || (sub_1D56162F8(), !a1))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D4F062CC();
  }

  return sub_1D5616328();
}

uint64_t sub_1D502A3D0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE450, &qword_1D562AE18);
  OUTLINED_FUNCTION_25_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = a1[3];
  v9 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502A244();
  OUTLINED_FUNCTION_3_45();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D502A500();
    sub_1D5615F78();
    v10 = OUTLINED_FUNCTION_2_39();
    v11(v10);
    v1 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

unint64_t sub_1D502A500()
{
  result = qword_1EC7EE458;
  if (!qword_1EC7EE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE458);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal30CloudTopPlayedSongsRawResponseV7ResultsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D502A588(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D502A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D502A658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5029BD0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D502A684(uint64_t a1)
{
  v2 = sub_1D502AAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D502A6C0(uint64_t a1)
{
  v2 = sub_1D502AAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D502A6FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5029EA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D502A760()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F062CC();
  }

  return sub_1D5616328();
}

uint64_t sub_1D502A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D502A098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D502A7F0(uint64_t a1)
{
  v2 = sub_1D502A244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D502A82C(uint64_t a1)
{
  v2 = sub_1D502A244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D502A86C()
{
  result = qword_1EC7EE460;
  if (!qword_1EC7EE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE460);
  }

  return result;
}

unint64_t sub_1D502A8C4()
{
  result = qword_1EC7EE468;
  if (!qword_1EC7EE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE468);
  }

  return result;
}

uint64_t sub_1D502A918@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D502A3D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D502A97C()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 == 1 || (sub_1D56162F8(), !v1))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D4F062CC();
  }

  return sub_1D5616328();
}

unint64_t sub_1D502A9F8()
{
  result = qword_1EC7EE470;
  if (!qword_1EC7EE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE470);
  }

  return result;
}

unint64_t sub_1D502AA50()
{
  result = qword_1EC7EE478;
  if (!qword_1EC7EE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE478);
  }

  return result;
}

unint64_t sub_1D502AAA8()
{
  result = qword_1EC7EE480;
  if (!qword_1EC7EE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE480);
  }

  return result;
}

unint64_t sub_1D502AAFC()
{
  result = qword_1EC7EE490;
  if (!qword_1EC7EE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE490);
  }

  return result;
}

uint64_t sub_1D502AB50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5614A18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D502AB94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE498, &unk_1D562B140);
    sub_1D502AC1C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D502AC1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D502AB50(&qword_1EDD52A60);
    sub_1D502AB50(&qword_1EDD52A68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1D502ACCC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D502AD7C()
{
  result = qword_1EC7EE4C0;
  if (!qword_1EC7EE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4C0);
  }

  return result;
}

unint64_t sub_1D502ADD4()
{
  result = qword_1EC7EE4C8;
  if (!qword_1EC7EE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4C8);
  }

  return result;
}

unint64_t sub_1D502AE2C()
{
  result = qword_1EC7EE4D0;
  if (!qword_1EC7EE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4D0);
  }

  return result;
}

uint64_t MusicTopPlayedSongsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for MusicTopPlayedSongsRequest();
  v3 = a1 + v2[5];
  sub_1D560C318();
  v4 = a1 + v2[6];
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v5 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_147();
  v6 = *(sub_1D5610088() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D5621D90;
  sub_1D560FFA8();
  result = sub_1D560FE48();
  *(a1 + v5) = v9;
  return result;
}

uint64_t type metadata accessor for MusicTopPlayedSongsRequest()
{
  result = qword_1EC7EE4E0;
  if (!qword_1EC7EE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicTopPlayedSongsRequest.limit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MusicTopPlayedSongsRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D502B01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C3C8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D560C3D8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v29 - v23;
  sub_1D560C3B8();
  (*(v6 + 104))(v11, *MEMORY[0x1E6969A78], v3);
  v25 = v1 + *(type metadata accessor for MusicTopPlayedSongsRequest() + 20);
  sub_1D560C3A8();
  (*(v6 + 8))(v11, v3);
  (*(v15 + 8))(v20, v12);
  v26 = sub_1D560C328();
  OUTLINED_FUNCTION_10(v24);
  if (!v27)
  {
    return (*(*(v26 - 8) + 32))(a1, v24, v26);
  }

  sub_1D4E50004(v24, &qword_1EC7EA3B8, &unk_1D561E370);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicTopPlayedSongsRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = v1 + *(type metadata accessor for MusicTopPlayedSongsRequest() + 24);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v11 = type metadata accessor for MusicRequestConfiguration();
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v9, v12 ^ 1u, 1, v11);
  sub_1D4F73F78(v9, v7);
  OUTLINED_FUNCTION_10(v7);
  if (v13)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_10(v7);
    if (!v13)
    {
      sub_1D4E50004(v7, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D502E8BC(v7, a1);
  }

  return sub_1D4E50004(v9, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D502B444(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D502E918(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicTopPlayedSongsRequest.configuration.setter();
}

uint64_t MusicTopPlayedSongsRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_1_53();
  sub_1D502E9C8(v10, v11);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_8_36();
  sub_1D4E58510(v0, v12);
  v13 = type metadata accessor for MusicTopPlayedSongsRequest();
  return (*(v4 + 40))(v0 + *(v13 + 24), v9, v1);
}

void (*MusicTopPlayedSongsRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[6] = v8;
  MusicTopPlayedSongsRequest.configuration.getter(v8);
  return sub_1D502B6EC;
}

void sub_1D502B6EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D502E918((*a1)[6], v3);
    OUTLINED_FUNCTION_1_53();
    sub_1D502E9C8(v10, v11);
    sub_1D560E6C8();
    sub_1D4E58510(v3, type metadata accessor for MusicRequestConfiguration);
    v12 = type metadata accessor for MusicTopPlayedSongsRequest();
    v13 = OUTLINED_FUNCTION_20_6(v12);
    v14(v13);
    sub_1D4E58510(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    sub_1D502E9C8(v15, v16);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_8_36();
    sub_1D4E58510(v4, v17);
    v18 = type metadata accessor for MusicTopPlayedSongsRequest();
    v19 = OUTLINED_FUNCTION_20_6(v18);
    v20(v19);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicTopPlayedSongsRequest.response()()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *(type metadata accessor for MusicTopPlayedSongsRequest() + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1D4E6ED20;

  return sub_1D502B900(v3, v0 + v4);
}

uint64_t sub_1D502B900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for MusicTopPlayedSongsResponse() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_1D560D478();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[10] = v8;
  v9 = *(type metadata accessor for MusicTopPlayedSongsRequest() + 24);
  v10 = *(MEMORY[0x1E6974D10] + 4);
  v11 = swift_task_alloc();
  v3[11] = v11;
  *v11 = v3;
  v11[1] = sub_1D502BA5C;

  return MEMORY[0x1EEDCE268](v8);
}

uint64_t sub_1D502BA5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502BB54()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[10];
  if (sub_1D560D438())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[13] = v2;
    *v2 = v3;
    v2[1] = sub_1D502BCD4;
    v4 = v0[7];
    v5 = v0[4];

    return sub_1D502C430(v4);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[15] = v7;
    *v7 = v8;
    v7[1] = sub_1D502BDCC;
    v9 = v0[6];
    v10 = v0[4];

    return sub_1D502DFDC(v9);
  }
}

uint64_t sub_1D502BC5C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D502BCD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502BDCC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502BEC4()
{
  OUTLINED_FUNCTION_91();
  v3 = v1[3];
  sub_1D560CD48();
  if (sub_1D560E698())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v1[17] = v4;
    *v4 = v5;
    v4[1] = sub_1D502C084;
    v6 = v1[7];
    v8 = v1[4];
    v7 = v1[5];

    return sub_1D502DA54(v7, v6);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_17_29();
    v11(v10);
    OUTLINED_FUNCTION_0_55();
    sub_1D502E8BC(v0, v2);

    OUTLINED_FUNCTION_22_1();

    return v12();
  }
}

uint64_t sub_1D502BFF4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[14];
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D502C084()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502C17C()
{
  OUTLINED_FUNCTION_91();
  sub_1D4E58510(v0[7], type metadata accessor for MusicTopPlayedSongsResponse);
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D502E8BC(v2, v4);

  OUTLINED_FUNCTION_22_1();

  return v5();
}

uint64_t sub_1D502C250()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1D4E58510(v0[7], type metadata accessor for MusicTopPlayedSongsResponse);
  (*(v2 + 8))(v1, v3);
  v4 = v0[18];
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D502C300()
{
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_17_29();
  v3(v2);
  OUTLINED_FUNCTION_0_55();
  sub_1D502E8BC(v0, v1);

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D502C3A0()
{
  OUTLINED_FUNCTION_80();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[16];
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D502C430(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  *(v2 + 56) = v4;
  v5 = *(v4 - 8);
  *(v2 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v7 = sub_1D560D428();
  *(v2 + 80) = v7;
  v8 = *(v7 - 8);
  *(v2 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v10 = sub_1D560CD48();
  *(v2 + 104) = v10;
  v11 = *(v10 - 8);
  *(v2 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v13 = sub_1D560D348();
  *(v2 + 136) = v13;
  v14 = *(v13 - 8);
  *(v2 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v16 = sub_1D560D388();
  *(v2 + 160) = v16;
  v17 = *(v16 - 8);
  *(v2 + 168) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v19 = sub_1D560EBD8();
  *(v2 + 184) = v19;
  v20 = *(v19 - 8);
  *(v2 + 192) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v22 = sub_1D5610788();
  *(v2 + 216) = v22;
  v23 = *(v22 - 8);
  *(v2 + 224) = v23;
  v24 = *(v23 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  v26 = sub_1D56107C8();
  *(v2 + 248) = v26;
  v27 = *(v26 - 8);
  *(v2 + 256) = v27;
  v28 = *(v27 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v29 = sub_1D560BB98();
  *(v2 + 272) = v29;
  v30 = *(v29 - 8);
  *(v2 + 280) = v30;
  v31 = *(v30 + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v32 = type metadata accessor for MusicTopPlayedSongsRequest();
  *(v2 + 344) = v32;
  *(v2 + 408) = *(v32 + 24);
  v33 = *(MEMORY[0x1E6974D08] + 4);
  v34 = swift_task_alloc();
  *(v2 + 352) = v34;
  *v34 = v2;
  v34[1] = sub_1D502C8F4;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D502C8F4()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = v2[44];
  v33 = *v1;
  v3[45] = v5;
  v3[46] = v6;

  if (v0)
  {
    v8 = v3[41];
    v7 = v3[42];
    v9 = v3[39];
    v10 = v3[40];
    v12 = v3[37];
    v11 = v3[38];
    v13 = v3[36];
    v14 = v3[33];
    v15 = v3[30];
    v24 = v3[29];
    v25 = v3[26];
    v26 = v3[25];
    v27 = v3[22];
    v28 = v3[19];
    v29 = v3[16];
    v30 = v3[15];
    v31 = v3[12];
    v32 = v3[9];
    v16 = v3[6];

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_20_7();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_20_7();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D502CB18()
{
  if (*(v0 + 368))
  {
    v1 = *(v0 + 360);
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    v6 = *(v0 + 368);
    sub_1D560BB28();

    (*(v5 + 16))(v3, v2, v4);
    sub_1D4EFFE00();
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v8 = v69;
    }

    v10 = *(v0 + 328);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    (*(v12 + 8))(*(v0 + 336), v11);
    *(v8 + 16) = v9 + 1;
    (*(v12 + 32))(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v10, v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v0 + 320);
  v14 = *(*(v0 + 40) + *(*(v0 + 344) + 28));
  sub_1D560BB68();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = *(v8 + 16);
    sub_1D4EFFE00();
    v8 = v64;
  }

  v15 = *(v8 + 16);
  if (v15 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v8 = v65;
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = *(v0 + 40);
  *(v8 + 16) = v15 + 1;
  v20 = *(v18 + 32);
  v18 += 32;
  v21 = (*(v18 + 48) + 32) & ~*(v18 + 48);
  v89 = *(v18 + 40);
  v90 = v20;
  v20(v8 + v21 + v89 * v15, v16, v17);
  v87 = v21;
  if ((*(v19 + 8) & 1) == 0)
  {
    v22 = *(v0 + 312);
    *(v0 + 24) = **(v0 + 40);
    sub_1D56160F8();
    sub_1D560BB28();

    v23 = *(v8 + 16);
    if (v23 >= *(v8 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v8 = v70;
    }

    v24 = *(v0 + 312);
    v25 = *(v0 + 272);
    *(v8 + 16) = v23 + 1;
    v90(v8 + v21 + v23 * v89, v24, v25);
  }

  v73 = *(v0 + 304);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v28 = *(v0 + 240);
  v85 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  v32 = *(v0 + 40);
  sub_1D56107A8();
  sub_1D502B01C(v28);
  v82 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v82);
  v80 = *MEMORY[0x1E6975DC8];
  v77 = *(v29 + 104);
  v77(v30);
  sub_1D56107B8();
  v76 = *(v29 + 8);
  v76(v30, v31);
  sub_1D4E50004(v28, &qword_1EC7EA3B8, &unk_1D561E370);
  v75 = *(v26 + 8);
  v75(v27, v85);
  sub_1D560BB28();

  v33 = *(v8 + 16);
  if (v33 >= *(v8 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v8 = v66;
  }

  v34 = *(v0 + 344);
  v35 = *(v0 + 304);
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v38 = *(v0 + 240);
  v72 = *(v0 + 248);
  v74 = *(v0 + 296);
  v39 = *(v0 + 232);
  v40 = *(v0 + 216);
  v41 = *(v0 + 40);
  *(v8 + 16) = v33 + 1;
  v90(v8 + v87 + v33 * v89, v35, v36);
  sub_1D56107A8();
  (*(*(v82 - 8) + 16))(v38, v41 + *(v34 + 20), v82);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v82);
  (v77)(v39, v80, v40);
  sub_1D56107B8();
  v76(v39, v40);
  sub_1D4E50004(v38, &qword_1EC7EA3B8, &unk_1D561E370);
  v75(v37, v72);
  sub_1D560BB28();

  v42 = *(v8 + 16);
  if (v42 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v8 = v67;
  }

  v44 = *(v0 + 288);
  v43 = *(v0 + 296);
  v45 = *(v0 + 272);
  *(v8 + 16) = v42 + 1;
  v90(v8 + v87 + v42 * v89, v43, v45);
  sub_1D560BB88();
  v46 = *(v8 + 16);
  v47 = v46 + 1;
  if (v46 >= *(v8 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v47 = v46 + 1;
    v8 = v68;
  }

  v48 = *(v0 + 288);
  v49 = *(v0 + 272);
  v50 = *(v0 + 208);
  v78 = *(v0 + 408);
  v79 = *(v0 + 200);
  v51 = *(v0 + 192);
  v52 = *(v0 + 144);
  v53 = *(v0 + 152);
  v81 = *(v0 + 184);
  v83 = *(v0 + 136);
  v84 = *(v0 + 176);
  v86 = *(v0 + 128);
  v54 = v8 + v87;
  v56 = *(v0 + 104);
  v55 = *(v0 + 112);
  v88 = *(v0 + 40);
  *(v8 + 16) = v47;
  v90(v54 + v46 * v89, v48, v49);
  sub_1D560EB78();

  (*(v51 + 16))(v79, v50, v81);
  (*(v52 + 104))(v53, *MEMORY[0x1E6974E78], v83);
  sub_1D560D368();
  v57 = *(v55 + 16);
  *(v0 + 376) = v57;
  *(v0 + 384) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57(v86, v88 + v78, v56);
  sub_1D560D2B8();
  v58 = *(MEMORY[0x1E6974EB0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 392) = v59;
  *v59 = v60;
  v59[1] = sub_1D502D254;
  v61 = *(v0 + 176);
  v62 = *(v0 + 96);

  return MEMORY[0x1EEDCE5B0](v62);
}

uint64_t sub_1D502D254()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502D34C()
{
  v85 = *(v0 + 400);
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 408);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 40);
  v8 = sub_1D560B9C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v2(v4, v7 + v3, v6);
  sub_1D560B988();
  v11 = sub_1D5612208();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v14 = sub_1D560D418();
  v16 = v15;
  sub_1D502E974();
  sub_1D560B948();
  if (v85)
  {
    v83 = *(v0 + 208);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v77 = *(v0 + 176);
    v80 = *(v0 + 184);
    v74 = *(v0 + 160);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);
    sub_1D4E55E1C(v14, v16);

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v77, v74);
    (*(v17 + 8))(v83, v80);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 288);
    v29 = *(v0 + 264);
    v30 = *(v0 + 232);
    v31 = *(v0 + 240);
    v64 = *(v0 + 208);
    v66 = *(v0 + 200);
    v68 = *(v0 + 176);
    v70 = *(v0 + 152);
    v72 = *(v0 + 128);
    v75 = *(v0 + 120);
    v78 = *(v0 + 96);
    v81 = *(v0 + 72);
    v84 = *(v0 + 48);

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v35 = *(v0 + 408);
    v36 = *(v0 + 120);
    v37 = *(v0 + 104);
    v38 = *(v0 + 40);
    sub_1D4E55E1C(v14, v16);
    v39 = *(v0 + 16);
    v34(v36, v38 + v35, v37);
    if (!v39)
    {
      sub_1D4EA7410(0);
    }

    v59 = *(v0 + 336);
    v60 = *(v0 + 328);
    v61 = *(v0 + 320);
    v62 = *(v0 + 312);
    v63 = *(v0 + 304);
    v65 = *(v0 + 296);
    v67 = *(v0 + 288);
    v69 = *(v0 + 264);
    v71 = *(v0 + 240);
    v73 = *(v0 + 232);
    v58 = *(v0 + 208);
    v76 = *(v0 + 200);
    v56 = *(v0 + 192);
    v57 = *(v0 + 184);
    v51 = *(v0 + 168);
    v54 = *(v0 + 160);
    v55 = *(v0 + 176);
    v79 = *(v0 + 152);
    v82 = *(v0 + 128);
    v40 = *(v0 + 112);
    v49 = *(v0 + 120);
    v50 = *(v0 + 104);
    v41 = *(v0 + 88);
    v52 = *(v0 + 80);
    v53 = *(v0 + 96);
    v48 = *(v0 + 72);
    v42 = *(v0 + 56);
    v43 = *(v0 + 64);
    v44 = *(v0 + 48);
    v45 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D56123A8();
    v46 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v46);
    sub_1D5613838();
    sub_1D502E9C8(&qword_1EC7ECE40, MEMORY[0x1E6976BE8]);
    sub_1D5612368();

    sub_1D4E50004(v44, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v43 + 8))(v48, v42);
    (*(v40 + 8))(v49, v50);
    (*(v41 + 8))(v53, v52);
    (*(v51 + 8))(v55, v54);
    (*(v56 + 8))(v58, v57);

    OUTLINED_FUNCTION_22_1();
  }

  return v32();
}

void sub_1D502D8CC()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v1, v2);
  v25 = v0[50];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  v11 = v0[33];
  v13 = v0[29];
  v12 = v0[30];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[9];
  v24 = v0[6];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D502DA54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D560DF28();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D560DF38();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D502DBDC, 0, 0);
}

uint64_t sub_1D502DBDC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[4];
  v2 = v1 + *(type metadata accessor for MusicTopPlayedSongsRequest() + 24);
  if (sub_1D560CD38())
  {
    v3 = v0[7];
    v4 = v0[5];
    v5 = v0[6];
    (*(v0[9] + 104))(v0[10], *MEMORY[0x1E6975108], v0[8]);
    (*(v5 + 104))(v3, *MEMORY[0x1E6975110], v4);
    v6 = *(MEMORY[0x1E6974FE0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[14] = v7;
    *v7 = v8;
    v7[1] = sub_1D502DD38;
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[7];
    v13 = v0[3];

    return MEMORY[0x1EEDCE928](v9, v10, v12, v11);
  }

  else
  {
    v15 = v0[2];
    v14 = v0[3];
    OUTLINED_FUNCTION_0_55();
    sub_1D502E918(v16, v17);
    OUTLINED_FUNCTION_20_37();

    OUTLINED_FUNCTION_22_1();

    return v18();
  }
}

uint64_t sub_1D502DD38()
{
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  v11 = v4[5];
  v12 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v13 = v12;
  *(v14 + 120) = v0;

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D502DEF4()
{
  OUTLINED_FUNCTION_60();
  (*(v0[12] + 32))(v0[2], v0[13], v0[11]);
  OUTLINED_FUNCTION_20_37();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D502DF74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_20_37();

  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_1D502DFDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE508, &unk_1D562B330);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D502E110, 0, 0);
}

uint64_t sub_1D502E110()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[3];
  sub_1D5613838();
  sub_1D560DD68();
  swift_getKeyPath();
  sub_1D560DCC8();

  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = v0[9];
    v5 = v0[7];
    v6 = *v0[3];
    sub_1D560DCD8();
  }

  v7 = *(MEMORY[0x1E6975088] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[10] = v8;
  *v8 = v9;
  v8[1] = sub_1D502E210;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];

  return MEMORY[0x1EEDCEAC0](v11, v12);
}

uint64_t sub_1D502E210()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D502E308()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  sub_1D560DE38();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_22_1();

  return v8();
}

uint64_t sub_1D502E3C0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_55();
  v3 = v0[11];

  return v2();
}

uint64_t sub_1D502E440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D56128F8();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void static MusicTopPlayedSongsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
LABEL_7:
    v5 = type metadata accessor for MusicTopPlayedSongsRequest();
    v6 = v5[5];
    if (sub_1D560C2E8())
    {
      v7 = v5[6];
      if (_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0())
      {
        v8 = v5[7];
        v9 = *(a1 + v8);
        v10 = *(a2 + v8);

        sub_1D4EFBC40();
      }
    }
  }
}

void MusicTopPlayedSongsRequest.hash(into:)()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v2 = *v0;
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v2);
  }

  v3 = type metadata accessor for MusicTopPlayedSongsRequest();
  v4 = v3[5];
  sub_1D560C328();
  sub_1D502E9C8(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_22_2();
  v5 = v3[6];
  sub_1D560CD48();
  sub_1D502E9C8(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  OUTLINED_FUNCTION_22_2();
  v6 = *(v1 + v3[7]);

  sub_1D4F09A38();
}

uint64_t MusicTopPlayedSongsRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicTopPlayedSongsRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D502E6B4()
{
  sub_1D56162D8();
  MusicTopPlayedSongsRequest.hash(into:)();
  return sub_1D5616328();
}

void sub_1D502E760()
{
  sub_1D502E814();
  if (v0 <= 0x3F)
  {
    sub_1D560C328();
    if (v1 <= 0x3F)
    {
      sub_1D560CD48();
      if (v2 <= 0x3F)
      {
        sub_1D502E864();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D502E814()
{
  if (!qword_1EDD52708)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52708);
    }
  }
}

void sub_1D502E864()
{
  if (!qword_1EC7EE4F0)
  {
    sub_1D5610088();
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EE4F0);
    }
  }
}

uint64_t sub_1D502E8BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v6 = v5(v4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1D502E918(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v6 = v5(v4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_1D502E974()
{
  result = qword_1EC7EE500;
  if (!qword_1EC7EE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE500);
  }

  return result;
}

uint64_t sub_1D502E9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_37()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
}

uint64_t MusicLibrary.InternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D502EAE0()
{
  result = qword_1EC7EE518;
  if (!qword_1EC7EE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE520, &qword_1D562B3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE518);
  }

  return result;
}

unint64_t sub_1D502EB48()
{
  result = qword_1EC7EE528;
  if (!qword_1EC7EE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE528);
  }

  return result;
}

_BYTE *_s13InternalErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D502EC78(char a1)
{
  v2 = 0xEE00797261726269;
  v3 = 0x4C6465726168732ELL;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000015;
      v6 = ".cloudLibraryRequired";
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_1_54();
      v3 = v7 + 5;
      break;
    case 3:
      OUTLINED_FUNCTION_1_54();
      v3 = v5 + 7;
      break;
    case 4:
      OUTLINED_FUNCTION_1_54();
      v3 = v8 - 2;
      break;
    case 5:
      OUTLINED_FUNCTION_1_54();
      v3 = v9 + 14;
      break;
    case 6:
      v3 = 0xD000000000000015;
      v6 = ".subscriptionRequired";
LABEL_7:
      v2 = (v6 - 32) | 0x8000000000000000;
      break;
    case 7:
      break;
    case 8:
      v2 = 0xE800000000000000;
      v3 = 0x6E776F6E6B6E752ELL;
      break;
    default:
      OUTLINED_FUNCTION_1_54();
      v3 = v4 | 8;
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

uint64_t sub_1D502EDA0(char a1)
{
  v2 = 0xE500000000000000;
  v3 = 0x676E6F732ELL;
  switch(a1)
  {
    case 1:
      v2 = 0xEB000000006F6564;
      v3 = 0x6956636973756D2ELL;
      break;
    case 2:
      v4 = 0x6F6964754164;
      goto LABEL_5;
    case 3:
      v4 = 0x6F6564695664;
LABEL_5:
      v2 = v4 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      v3 = 0x6564616F6C70752ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

uint64_t sub_1D502EE60(char a1)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E6F68702ELL;
  switch(a1)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1684107310;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1667329326;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 7762990;
      break;
    case 4:
      v3 = 0x68637461772ELL;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E6F697369762ELL;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x79616C507261632ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

BOOL static MusicRequestConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v121 = sub_1D560D478();
  v4 = OUTLINED_FUNCTION_4(v121);
  v118 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v117 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v120 = v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE530, &qword_1D566E620);
  OUTLINED_FUNCTION_14(v119);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v122 = v18;
  v19 = sub_1D560C418();
  v20 = OUTLINED_FUNCTION_4(v19);
  v125 = v21;
  v126 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v123 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v124 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE540, &qword_1D562B498);
  OUTLINED_FUNCTION_14(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v37 = *a1;
  v36 = *(a1 + 8);
  v38 = *(a1 + 16);
  v39 = *a2;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  if (v38 == 255)
  {
    v116 = v35;
    sub_1D4EF2264(v37, v36, 255);
    if (v41 == 255)
    {
      sub_1D4EF2264(v39, v40, 255);
      sub_1D4EF2278(v37, v36, 255);
      goto LABEL_10;
    }

    v55 = OUTLINED_FUNCTION_14_31();
    sub_1D4EF2264(v55, v56, v57);
LABEL_8:
    v67 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2278(v67, v68, v69);
    v70 = OUTLINED_FUNCTION_14_31();
    sub_1D4EF2278(v70, v71, v72);
    return 0;
  }

  v133[0] = *a1;
  v133[1] = v36;
  LOBYTE(v133[2]) = v38;
  if (v41 == 255)
  {
    v58 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2264(v58, v59, v60);
    sub_1D4EF2264(v39, v40, 255);
    v61 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2264(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_3_46();
    sub_1D4E58768(v64, v65, v66);
    goto LABEL_8;
  }

  v116 = v35;
  __dst[0] = v39;
  __dst[1] = v40;
  LOBYTE(__dst[2]) = v41;
  v42 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2264(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_14_31();
  sub_1D4EF2264(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2264(v48, v49, v50);
  v51 = static Account.== infix(_:_:)(v133, __dst);
  sub_1D4E58768(__dst[0], __dst[1], __dst[2]);
  sub_1D4E58768(v133[0], v133[1], v133[2]);
  v52 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2278(v52, v53, v54);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (*(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  memcpy(v130, (a1 + 24), sizeof(v130));
  memcpy(v129, (a1 + 24), sizeof(v129));
  memcpy(v131, (a2 + 24), sizeof(v131));
  memcpy(v128, (a2 + 24), sizeof(v128));
  v73 = static ClientInfo.== infix(_:_:)(v129);
  memcpy(__dst, v128, sizeof(__dst));
  sub_1D4E55DC0(v130, v127);
  sub_1D4E55DC0(v131, v127);
  sub_1D4E4AA8C(__dst);
  memcpy(v133, v129, 0x48uLL);
  sub_1D4E4AA8C(v133);
  if ((v73 & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 97) != *(a2 + 97))
  {
    return 0;
  }

  v75 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!v75)
    {
      return 0;
    }

    v76 = *(a2 + 104);

    sub_1D4EFBF08();
    v78 = v77;

    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v79 = *(a2 + 112);
  if (*(a1 + 112))
  {
    if (!v79)
    {
      return 0;
    }

    v80 = *(a2 + 112);

    sub_1D4EFBF08();
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v79)
  {
    return 0;
  }

  v83 = type metadata accessor for MusicRequestConfiguration();
  v84 = v83[11];
  v85 = *(v31 + 48);
  OUTLINED_FUNCTION_31_20(a1 + v84, v116);
  OUTLINED_FUNCTION_31_20(a2 + v84, v116 + v85);
  OUTLINED_FUNCTION_57(v116, 1, v126);
  if (v86)
  {
    OUTLINED_FUNCTION_57(v116 + v85, 1, v126);
    if (v86)
    {
      sub_1D4E50004(v116, &qword_1EC7EE538, &qword_1D562B490);
      goto LABEL_36;
    }

LABEL_33:
    v87 = &qword_1EC7EE540;
    v88 = &qword_1D562B498;
    v89 = v116;
LABEL_34:
    sub_1D4E50004(v89, v87, v88);
    return 0;
  }

  sub_1D4E69970(v116, v124, &qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_57(v116 + v85, 1, v126);
  if (v86)
  {
    (*(v125 + 8))(v124, v126);
    goto LABEL_33;
  }

  (*(v125 + 32))(v123, v116 + v85, v126);
  OUTLINED_FUNCTION_6_39();
  sub_1D5031ED4(v90, v91);
  v92 = sub_1D5614D18();
  v93 = *(v125 + 8);
  v93(v123, v126);
  v93(v124, v126);
  sub_1D4E50004(v116, &qword_1EC7EE538, &qword_1D562B490);
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + v83[12]) != *(a2 + v83[12]) || *(a1 + v83[13]) != *(a2 + v83[13]))
  {
    return 0;
  }

  v94 = v83[14];
  OUTLINED_FUNCTION_24_23();
  if (v95)
  {
    if (!v96)
    {
      return 0;
    }

    v99 = *v97 == *v98 && v95 == v96;
    if (!v99 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v100 = v83[15];
  OUTLINED_FUNCTION_24_23();
  if (v101)
  {
    if (!v102)
    {
      return 0;
    }

    v105 = *v103 == *v104 && v101 == v102;
    if (!v105 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v102)
  {
    return 0;
  }

  v106 = v83[16];
  v107 = *(v119 + 48);
  OUTLINED_FUNCTION_31_20(a1 + v106, v122);
  OUTLINED_FUNCTION_31_20(a2 + v106, v122 + v107);
  OUTLINED_FUNCTION_57(v122, 1, v121);
  if (v86)
  {
    OUTLINED_FUNCTION_57(v122 + v107, 1, v121);
    if (v86)
    {
      sub_1D4E50004(v122, &qword_1EC7ECC98, &qword_1D5622EB0);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1D4E69970(v122, v120, &qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_57(v122 + v107, 1, v121);
  if (v108)
  {
    (*(v118 + 8))(v120, v121);
LABEL_64:
    v87 = &qword_1EC7EE530;
    v88 = &qword_1D566E620;
    v89 = v122;
    goto LABEL_34;
  }

  (*(v118 + 32))(v117, v122 + v107, v121);
  OUTLINED_FUNCTION_5_37();
  sub_1D5031ED4(v109, v110);
  v111 = sub_1D5614D18();
  v112 = *(v118 + 8);
  v112(v117, v121);
  v112(v120, v121);
  sub_1D4E50004(v122, &qword_1EC7ECC98, &qword_1D5622EB0);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v113 = v83[17];
  v114 = *(a1 + v113);
  v115 = *(a2 + v113);
  if (v114 == 7)
  {
    return v115 == 7;
  }

  return v114 == v115;
}

uint64_t MusicRequestConfiguration.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D4EF2264(v2, v3, v4);
}

uint64_t MusicRequestConfiguration.account.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D4EF2278(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicRequestConfiguration.enabledFeatureFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t MusicRequestConfiguration.disabledFeatureFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t MusicRequestConfiguration.preferredTimeZone.setter()
{
  OUTLINED_FUNCTION_64_1();
  v2 = v1 + *(type metadata accessor for MusicRequestConfiguration() + 44);

  return sub_1D5031B54(v0, v2);
}

uint64_t MusicRequestConfiguration.preferredTimeZone.modify()
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicRequestConfiguration() + 44);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificCountryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicRequestConfiguration() + 56));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicRequestConfiguration.specificCountryCode.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicRequestConfiguration() + 56));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MusicRequestConfiguration.specificCountryCode.modify()
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicRequestConfiguration() + 56);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicRequestConfiguration() + 60));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicRequestConfiguration() + 60));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.modify()
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicRequestConfiguration() + 60);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.getter()
{
  result = OUTLINED_FUNCTION_30_15();
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicRequestConfiguration();
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.modify()
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicRequestConfiguration() + 68);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.replacing(account:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  result = sub_1D4F5A490(v3, a3);
  v13 = *(v3 + 16);
  if (v13 != 255)
  {
    v14 = *v4;
    v15 = v4[1];
    v18[0] = v14;
    v18[1] = v15;
    v19 = v13;
    v16[0] = v6;
    v16[1] = v7;
    v17 = v8;
    sub_1D4E58128(v14, v15, v13);
    if (static Account.== infix(_:_:)(v18, v16))
    {
      sub_1D4EF2278(v14, v15, v13);
      sub_1D4E58128(v9, v10, v11);
      v14 = v9;
      v15 = v10;
      LOBYTE(v13) = v11;
    }

    result = sub_1D4EF2278(*a3, *(a3 + 8), *(a3 + 16));
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v13;
  }

  return result;
}

uint64_t MusicRequestConfiguration.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_64_1();
  v66 = sub_1D560D478();
  v3 = OUTLINED_FUNCTION_4(v66);
  v63 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v62 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v65 = v13;
  v64 = sub_1D560C418();
  v14 = OUTLINED_FUNCTION_4(v64);
  v61 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v60 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = *(v1 + 16);
  if (v26 == 255)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = *(v1 + 8);
    v67 = *v1;
    v27 = v67;
    v68 = v28;
    v69 = v26;
    OUTLINED_FUNCTION_27();
    sub_1D4E58128(v27, v28, v26);
    Account.hash(into:)();
    sub_1D4E58768(v67, v68, v69);
  }

  MEMORY[0x1DA6EC0D0](*(v1 + 17));
  v29 = *(v1 + 24);
  v30 = *(v1 + 32);
  v31 = *(v1 + 40);
  v32 = *(v2 + 48);
  v33 = *(v2 + 56);
  v34 = *(v2 + 64);
  v36 = *(v2 + 72);
  v35 = *(v2 + 80);
  v37 = *(v2 + 88);
  sub_1D5614E28();
  OUTLINED_FUNCTION_71();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  if (v37)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0B2F0(v0, v37);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v38 = v64;
  v39 = *(v2 + 96);
  sub_1D56162F8();
  v40 = *(v2 + 97);
  sub_1D56162F8();
  if (*(v2 + 104))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0A040();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + 112))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0A040();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v41 = type metadata accessor for MusicRequestConfiguration();
  sub_1D4E69970(v2 + v41[11], v25, &qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_57(v25, 1, v38);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v44 = v60;
    v43 = v61;
    (*(v61 + 32))(v60, v25, v38);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_39();
    sub_1D5031ED4(v45, v46);
    OUTLINED_FUNCTION_28_5();
    (*(v43 + 8))(v44, v38);
  }

  MEMORY[0x1DA6EC0D0](*(v2 + v41[12]));
  v47 = *(v2 + v41[13]);
  sub_1D56162F8();
  v48 = (v2 + v41[14]);
  if (v48[1])
  {
    v49 = *v48;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v50 = (v2 + v41[15]);
  if (v50[1])
  {
    v51 = *v50;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v52 = v65;
  sub_1D4E69970(v2 + v41[16], v65, &qword_1EC7ECC98, &qword_1D5622EB0);
  v53 = v66;
  OUTLINED_FUNCTION_57(v52, 1, v66);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v55 = v62;
    v54 = v63;
    (*(v63 + 32))(v62, v52, v53);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_5_37();
    sub_1D5031ED4(v56, v57);
    OUTLINED_FUNCTION_28_5();
    (*(v54 + 8))(v55, v53);
  }

  v58 = *(v2 + v41[17]);
  if (v58 == 7)
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return MEMORY[0x1DA6EC0D0](v58);
}

uint64_t MusicRequestConfiguration.hashValue.getter()
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503020C()
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicRequestConfiguration.init(account:performAutomaticLibraryMapping:specificCountryCode:specificUserInterfaceIdiom:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a3;
  v61 = a4;
  v59 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = sub_1D560CD48();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for MusicRequestConfiguration();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = *a1;
  v56 = a1[1];
  v57 = v31;
  v55 = *(a1 + 16);
  v58 = *a5;
  v32 = [objc_opt_self() activeAccount];
  OUTLINED_FUNCTION_64_1();
  type metadata accessor for Account.UserIdentityWrapper();
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *a6 = v33;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  static ClientInfo.default.getter(a6 + 24);
  *(a6 + 96) = 257;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  v34 = v24[11];
  sub_1D560C418();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  *(a6 + v24[12]) = 0;
  *(a6 + v24[13]) = 1;
  v39 = (a6 + v24[14]);
  *v39 = 0;
  v39[1] = 0;
  v40 = (a6 + v24[15]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v24[16];
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = v24[17];
  *(a6 + v46) = 7;
  sub_1D560D308();
  sub_1D560CCE8();
  (*(v18 + 8))(v23, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
    sub_1D4E56C6C(v14, v30);
    sub_1D5031BC4(v30, a6);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v24);
    sub_1D4E50004(v14, &qword_1EC7EA838, &unk_1D561CB10);
  }

  sub_1D4EF2278(*a6, *(a6 + 8), *(a6 + 16));
  v50 = v56;
  *a6 = v57;
  *(a6 + 8) = v50;
  *(a6 + 16) = v55;
  *(a6 + 96) = v59 & 1;
  v51 = v39[1];

  v53 = v61;
  *v39 = v60;
  v39[1] = v53;
  *(a6 + v46) = v58;
  return result;
}

unint64_t MusicRequestConfiguration.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *v0;
  v15 = *(v0 + 16);
  v1 = sub_1D537011C();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x3A746E756F636361, 0xE900000000000020);

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v13 = v2;
  if (*(v0 + 96))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v3, v4);

  MEMORY[0x1DA6EAC70](0xD000000000000022, v13);

  v5 = type metadata accessor for MusicRequestConfiguration();
  v6 = (v0 + *(v5 + 56));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v14 = v9;
    MEMORY[0x1DA6EAC70](v8, v7);
    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0xD000000000000018, v14);
  }

  v10 = *(v0 + *(v5 + 68));
  if (v10 != 7)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D5681D80);
    sub_1D502EE60(v10);
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t MusicRequestConfiguration.debugDescription.getter()
{
  OUTLINED_FUNCTION_9_0();
  v26 = 0xD00000000000001ALL;
  v27 = v1;
  strcpy(v25, "\n  account: ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  LOBYTE(v1) = *(v0 + 16);
  *__dst = *v0;
  __dst[16] = v1;
  v2 = sub_1D537011C();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v25[0] = 0xD00000000000001ALL;
  v25[1] = v3;
  if (*(v0 + 17))
  {
    v4 = 0x616E7265746E692ELL;
  }

  else
  {
    v4 = 0x63696C6275702ELL;
  }

  if (*(v0 + 17))
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  MEMORY[0x1DA6EAC70](v4, v5);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v23 = 0xD000000000000010;
  v24 = v6;
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  ClientInfo.description.getter();
  sub_1D4F53278();
  v7 = sub_1D5615968();
  v9 = v8;

  MEMORY[0x1DA6EAC70](v7, v9);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  *__dst = 0xD000000000000024;
  *&__dst[8] = v10;
  if (*(v0 + 96))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v11, v12);

  OUTLINED_FUNCTION_29_22();

  strcpy(__dst, ",\n  realm: ");
  *&__dst[12] = -352321536;
  v13 = type metadata accessor for MusicRequestConfiguration();
  if (*(v0 + v13[12]))
  {
    v14 = 0x616E7265746E692ELL;
  }

  else
  {
    v14 = 0x63696C6275702ELL;
  }

  if (*(v0 + v13[12]))
  {
    v15 = 0xE90000000000006CLL;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x1DA6EAC70](v14, v15);

  MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);

  v16 = (v0 + v13[14]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    OUTLINED_FUNCTION_23_25();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *__dst = 0xD00000000000001ALL;
    *&__dst[8] = v19;
    MEMORY[0x1DA6EAC70](v18, v17);
    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);
  }

  v20 = *(v0 + v13[17]);
  if (v20 != 7)
  {
    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000020, 0x80000001D5681E30);
    sub_1D502EE60(v20);
    MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v26;
}

uint64_t MusicRequestConfiguration.cloudRealm.getter()
{
  if (*(v0 + *(OUTLINED_FUNCTION_30_15() + 48)))
  {

    return static CloudRealm.internal.getter();
  }

  else
  {

    return sub_1D560F5A8();
  }
}

uint64_t sub_1D5030C14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for MusicRequestConfiguration() + 56));
  if (v2[1])
  {
    v3 = *v2;
    OUTLINED_FUNCTION_55();
    v9 = v4;

    v5 = OUTLINED_FUNCTION_71();

    return v9(v5);
  }

  else
  {
    v7 = *(MEMORY[0x1E6974E70] + 4);
    v8 = swift_task_alloc();
    *(v0 + 24) = v8;
    *v8 = v0;
    v8[1] = sub_1D5030D10;

    return MEMORY[0x1EEDCE570]();
  }
}

uint64_t sub_1D5030D10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  v8 = *(v6 + 24);
  v9 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5030E60, 0, 0);
  }
}

uint64_t sub_1D5030EAC(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D560F5C8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  if (*(v1 + *(type metadata accessor for MusicRequestConfiguration() + 48)))
  {
    static CloudRealm.internal.getter();
  }

  else
  {
    sub_1D560F5A8();
  }

  v14 = (*(v6 + 32))(v13, v11, v3);
  v15 = a1(v14);
  (*(v6 + 8))(v13, v3);
  return v15;
}

uint64_t MusicRequestConfiguration.subscription.getter()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1D560D478();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50310D8, 0, 0);
}

uint64_t sub_1D50310D8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for MusicRequestConfiguration();
  sub_1D4E69970(v3 + *(v4 + 64), v1, &qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v5)
  {
    sub_1D4E50004(v0[7], &qword_1EC7ECC98, &qword_1D5622EB0);
    v6 = *(MEMORY[0x1E6974EF0] + 4);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_1D5031228;
    v8 = v0[6];

    return MEMORY[0x1EEDCE630](v8);
  }

  else
  {
    v9 = v0[6];
    v10 = v0[7];
    v11 = OUTLINED_FUNCTION_21_24();
    v12(v11);

    OUTLINED_FUNCTION_55();

    return v13();
  }
}

uint64_t sub_1D5031228()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1D50313A4;
  }

  else
  {
    v7 = sub_1D503132C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D503132C()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_21_24();
  v4(v3);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D50313A4()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_55();
  v4 = v0[9];

  return v3();
}

uint64_t MusicRequestConfiguration.response(for:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return sub_1D55F5CF8();
}

uint64_t sub_1D50314B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D503153C;

  return MusicRequestConfiguration.countryCode.getter();
}

uint64_t sub_1D503153C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);
  v6 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_1D5031640(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6975350] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5031F20;

  return MEMORY[0x1EEDCEF88](a1, a2);
}

uint64_t sub_1D50316FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return MusicRequestConfiguration.subscription.getter();
}

uint64_t sub_1D5031794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return MusicRequestConfiguration.response(for:)();
}

uint64_t sub_1D503183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5031ED4(&qword_1EC7EE560, type metadata accessor for MusicRequestConfiguration);

  return MEMORY[0x1EEDCEFA0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50318D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5031ED4(&qword_1EC7EE5A0, type metadata accessor for MusicRequestConfiguration);

  return MEMORY[0x1EEDCEF98](a1, a2, a3, v6);
}

void *sub_1D5031954(char a1)
{
  v3 = OUTLINED_FUNCTION_30_15();
  v4 = v3[11];
  sub_1D560C418();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v3[16];
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  static ClientInfo.default.getter(__src);
  *v1 = v15;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;
  result = memcpy((v1 + 24), __src, 0x48uLL);
  *(v1 + 96) = 257;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + v3[12]) = 1;
  *(v1 + v3[13]) = a1;
  v17 = (v1 + v3[14]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v3[15]);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + v3[17]) = 7;
  return result;
}

uint64_t sub_1D5031AA4(char a1)
{
  if (a1)
  {
    return 0x616E7265746E692ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

uint64_t sub_1D5031B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5031B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5031BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1D5031C94(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5031D74()
{
  result = qword_1EC7EE570;
  if (!qword_1EC7EE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE570);
  }

  return result;
}

unint64_t sub_1D5031DFC()
{
  result = qword_1EC7EE588;
  if (!qword_1EC7EE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE588);
  }

  return result;
}

uint64_t sub_1D5031E80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D5031ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_20(uint64_t a1, uint64_t a2)
{

  return sub_1D4E69970(a1, a2, v2, v3);
}

uint64_t MusicServerItemDatabaseImportingRequest.import<A>(payloadData:configuration:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *(a4 - 8);
  v6 = *(v20 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v19[1] = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D5614DA8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_5();
  v11 = type metadata accessor for MusicServerItemDatabase.ImportRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  result = sub_1D560E6A8();
  if (result)
  {
    v17 = *(v11 + 20);
    v18 = sub_1D560C328();
    __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
    *v15 = a1;
    v15[1] = a2;
    sub_1D4F48DE4(a1, a2);
    MusicServerItemDatabase.ImportRequest.response()(&v21);

    return sub_1D5032900(v15);
  }

  return result;
}

uint64_t MusicServerItemDatabase.ImportRequest.init(payloadData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for MusicServerItemDatabase.ImportRequest() + 20);
  v7 = sub_1D560C328();
  result = __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t MusicServerItemDatabase.ImportRequest.payloadData.getter()
{
  v1 = *v0;
  sub_1D4F48DE4(*v0, *(v0 + 8));
  return v1;
}

uint64_t MusicServerItemDatabase.ImportRequest.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicServerItemDatabase.ImportRequest() + 20);

  return sub_1D5032A50(v3, a1);
}

uint64_t MusicServerItemDatabase.ImportRequest.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MusicServerItemDatabase.ImportRequest() + 20);

  return sub_1D5032AC0(a1, v3);
}

void MusicServerItemDatabase.ImportRequest.response()(void *a1@<X8>)
{
  v2 = v1;
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34[-1] - v6;
  v8 = sub_1D560C328();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = objc_opt_self();
  v15 = *v2;
  v16 = v2[1];
  v17 = sub_1D560C168();
  v34[0] = 0;
  v18 = [v14 JSONObjectWithData:v17 options:0 error:v34];

  v19 = v34[0];
  if (v18)
  {
    sub_1D56159A8();
    swift_unknownObjectRelease();
    sub_1D4E5194C(v35, v34);
    v20 = objc_allocWithZone(MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest);
    v21 = sub_1D5032848(v34);
    v22 = [objc_opt_self() activeAccount];
    [v21 setUserIdentity_];

    v23 = type metadata accessor for MusicServerItemDatabase.ImportRequest();
    sub_1D5032A50(v2 + *(v23 + 20), v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1D5032B30(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      v25 = sub_1D560C2B8();
      [v21 setExpirationDate_];

      (*(v9 + 8))(v13, v8);
    }

    if (qword_1EDD5BC20 != -1)
    {
      swift_once();
    }

    v26 = *(off_1EDD5BC28 + 2);
    v34[0] = 0;
    v27 = v26;
    v28 = [v27 importObjectsFromRequest:v21 options:0 error:v34];
    if (v28)
    {
      v29 = v28;
      v30 = v34[0];
      __swift_destroy_boxed_opaque_existential_1(v35);

      *a1 = v29;
    }

    else
    {
      v31 = v34[0];
      sub_1D560BE98();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  else
  {
    v24 = v19;
    sub_1D560BE98();

    swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
}

id sub_1D5032848(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithPayload_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t type metadata accessor for MusicServerItemDatabase.ImportRequest()
{
  result = qword_1EC7EE5A8;
  if (!qword_1EC7EE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5032900(uint64_t a1)
{
  v2 = type metadata accessor for MusicServerItemDatabase.ImportRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D503295C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5B8, &qword_1D562B868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1D5032A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5032AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5032B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5032BC0()
{
  sub_1D5032C3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D5032C3C()
{
  if (!qword_1EDD5CF48)
  {
    sub_1D560C328();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5CF48);
    }
  }
}

uint64_t TVSeason.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for TVSeason() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5032E30(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  a3(0);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v7, v3);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v8, v3);
  OUTLINED_FUNCTION_61();

  return sub_1D560EC28();
}

uint64_t TVSeason.episodeCount.getter()
{
  if (qword_1EC7E8B88 != -1)
  {
    OUTLINED_FUNCTION_33_8();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_45_2();
  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void TVSeason.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v13, v10);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v14, v10);
  OUTLINED_FUNCTION_46_1();
  sub_1D560EC28();
  if (a10)
  {
    v15 = a10;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EC92E8(v15, v12);

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D50330DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v5, v2);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t TVSeason.number.getter()
{
  if (qword_1EC7E8BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_45_2();
  return v4;
}

uint64_t TVSeason.show.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  if (qword_1EC7E8C08 != -1)
  {
    OUTLINED_FUNCTION_39_14();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v7, type metadata accessor for TVSeason);
  sub_1D560EC28();
  v8 = OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v9)
  {
    sub_1D4E50004(v5, &qword_1EC7ECBA0, &unk_1D56270F0);
    type metadata accessor for TVShow();
    v10 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
  }

  else
  {
    sub_1D4EC935C(v8);
    OUTLINED_FUNCTION_24_0(v6);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_46_1();
    return v16(v15);
  }
}

uint64_t sub_1D5033460@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_46_1();
  result = v6(v5);
  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1D50334B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5033598(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v5, v2);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v6, v2);
  OUTLINED_FUNCTION_45_2();
  return v8;
}

void TVSeason._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_69_3();
}

void TVSeason._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F849F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_69_3();
}

void TVSeason.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B90 != -1)
  {
    OUTLINED_FUNCTION_38_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D50338D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v5, v2);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v6, v2);
  OUTLINED_FUNCTION_45_2();
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1D5033978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVSeason.episodes.getter()
{
  if (qword_1EC7E8BF8 != -1)
  {
    OUTLINED_FUNCTION_37_18();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVSeason.genres.getter()
{
  if (qword_1EC7E8C00 != -1)
  {
    OUTLINED_FUNCTION_36_15();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t sub_1D5033C78()
{
  if (qword_1EC7E8C08 != -1)
  {
    OUTLINED_FUNCTION_39_14();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVSeason.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t TVSeason.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TVSeason() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TVSeason.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  type metadata accessor for TVSeason();
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v12, v13);
  sub_1D560EC98();
  sub_1D560D7A8();
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_61();
  v16(v15);
  v17 = sub_1D560F148();
  v18 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v18, v19, v17);
  if (v20)
  {
    sub_1D4E50004(v11, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v21 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0(v17);
    (*(v22 + 8))(v11, v17);
  }

  return v21;
}

uint64_t static TVSeason.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TVSeason() + 20);

  return sub_1D5611A78();
}

uint64_t TVSeason.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for TVSeason() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_30_16();
  sub_1D5038614(v4, v5);
  return sub_1D5614CB8();
}

uint64_t TVSeason.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for TVSeason() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_30_16();
  sub_1D5038614(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503413C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D5038614(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50341E0@<X0>(uint64_t *a1@<X8>)
{
  result = TVSeason.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVSeason.subscript.getter(void *a1)
{
  return sub_1D5034248(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5034248(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_26_24();
  sub_1D5038614(v5, v1);
  OUTLINED_FUNCTION_31_21(&unk_1EDD546A0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5034248(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_26_24();
  sub_1D5038614(v5, v2);
  OUTLINED_FUNCTION_31_21(&unk_1EDD546A0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5034438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason);
  v12 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D503456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason);
  v14 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D50346B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason);
  v14 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D50347F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5038614(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFB0 = v0;
  return result;
}

uint64_t sub_1D5034898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D503853C();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFB8 = v0;
  return result;
}

uint64_t sub_1D5034914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFC0 = v0;
  return result;
}

uint64_t sub_1D503498C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFC8 = v0;
  return result;
}

uint64_t sub_1D5034A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  v0 = sub_1D560D118();

  qword_1EC87BFD0 = v0;
  return result;
}

uint64_t sub_1D5034AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_25();
  sub_1D5038614(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFD8 = v0;
  return result;
}

uint64_t sub_1D5034B94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFE0 = v0;
  return result;
}

uint64_t sub_1D5034C10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D50384C0();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFE8 = v0;
  return result;
}

uint64_t sub_1D5034C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFF0 = v0;
  return result;
}

uint64_t sub_1D5034D08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFF8 = v0;
  return result;
}

uint64_t sub_1D5034D84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2);
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C000 = v0;
  return result;
}

uint64_t sub_1D5034E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C008 = v0;
  return result;
}

uint64_t sub_1D5034E94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D503840C();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C010 = v0;
  return result;
}

uint64_t sub_1D5034F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C018 = v0;
  return result;
}

uint64_t sub_1D5034FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C020 = v0;
  return result;
}

uint64_t sub_1D503501C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C028 = v0;
  return result;
}

uint64_t sub_1D5035094()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C030 = v0;
  return result;
}

uint64_t sub_1D5035110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C038 = v0;
  return result;
}

uint64_t sub_1D503517C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_28();
  sub_1D5038614(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C040 = v0;
  return result;
}

uint64_t sub_1D5035208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_28_25();
  sub_1D5038614(v0, v1);
  v2 = sub_1D560D138();

  qword_1EC7EE5C0 = v2;
  return result;
}

uint64_t static PartialMusicProperty<A>.plainEditorialNotes.getter()
{
  return sub_1D50355DC(&qword_1EC7E8BF0);
}

{
  return sub_1D50355DC(&qword_1EDD54018);
}

{
  return sub_1D50355DC(&qword_1EDD54238);
}

{
  return sub_1D50355DC(&qword_1EC7E95C0);
}

uint64_t sub_1D5035324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5038614(&qword_1EC7EAB00, type metadata accessor for TVEpisode);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EE5C8 = v0;
  return result;
}

uint64_t sub_1D5035408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5038614(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  v0 = sub_1D560D0F8();

  qword_1EC7EE5D0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.genres.getter()
{
  return sub_1D50355DC(&qword_1EC7E8C00);
}

{
  return sub_1D50355DC(&qword_1EDD541D0);
}

{
  return sub_1D50355DC(&qword_1EC7E92B0);
}

uint64_t sub_1D5035500()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5038614(&qword_1EC7EAB40, type metadata accessor for TVShow);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EE5D8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.show.getter()
{
  return sub_1D50355DC(&qword_1EC7E8C08);
}

{
  return sub_1D50355DC(&qword_1EC7E92C0);
}

uint64_t sub_1D50355DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
}

uint64_t static TVSeason.catalogFilterID(for:)()
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

uint64_t sub_1D503576C()
{
  sub_1D5038614(&qword_1EC7EA3C8, type metadata accessor for TVSeason);

  return sub_1D5610C58();
}

uint64_t static TVSeason.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TVEpisode();
  if (result != a4)
  {
    v6 = sub_1D560DE58();
    sub_1D5038614(&qword_1EDD53B58, MEMORY[0x1E69750D8]);
    swift_allocError();
    v7 = *MEMORY[0x1E69750C8];
    OUTLINED_FUNCTION_24_0(v6);
    (*(v8 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D503590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t TVSeason.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v111 = v4;
  v112 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v109 = v7;
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_4(v8);
  v105 = v10;
  v106 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v103 = v13;
  v98 = sub_1D5611AB8();
  v14 = OUTLINED_FUNCTION_4(v98);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v108 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v107 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v114 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v94 - v45;
  v47 = type metadata accessor for TVSeason();
  v48 = OUTLINED_FUNCTION_14(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_29_23();
  v113 = v51;
  sub_1D50381B8();
  v52 = TVSeason.title.getter();
  v101 = v53;
  v102 = v52;
  v54 = TVSeason.showName.getter();
  v99 = v55;
  v100 = v54;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_2_40();
  v57 = sub_1D5038614(v56, v1);
  OUTLINED_FUNCTION_0_56();
  v59 = sub_1D5038614(v58, v1);
  OUTLINED_FUNCTION_68_3();
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_68_3();
  v60 = OUTLINED_FUNCTION_67_1(v115[0]);
  v61 = *(v60 + 16);
  v104 = v46;
  if (v61)
  {
    v62 = v32;
    v63 = *(v60 + 80);
    v64 = *(v60 + 88);

    v65 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v65);
    if ((v64 & 1) == 0)
    {
      sub_1D4E50004(v39, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0(v65);
      v67 = MEMORY[0x1E6975D50];
      if (v63 >= 500)
      {
        v67 = MEMORY[0x1E6975D58];
      }

      (*(v66 + 104))(v39, *v67, v65);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v65);
    }

    sub_1D4FB8058();
    v32 = v62;
  }

  else
  {

    v68 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v68);
  }

  if (qword_1EC7E8BE8 != -1)
  {
    OUTLINED_FUNCTION_34_1();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_68_3();
  v96 = v32;
  if (qword_1EC7E8B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_68_3();
  v95 = LOBYTE(v115[0]);
  v69 = v106;
  v70 = v107;
  __swift_storeEnumTagSinglePayload(v107, 1, 1, v106);
  v116 = v47;
  v117 = v59;
  __swift_allocate_boxed_opaque_existential_0(v115);
  OUTLINED_FUNCTION_29_23();
  v94[1] = v57;
  sub_1D50381B8();
  v71 = __swift_project_boxed_opaque_existential_1(v115, v116);
  v72 = v97;
  v73 = v98;
  (*(v16 + 16))(v97, &v71[*(v47 + 20)], v98);
  sub_1D5611A98();
  (*(v16 + 8))(v72, v73);
  v74 = v108;
  sub_1D560FDD8();
  v75 = *(v105 + 8);
  v76 = OUTLINED_FUNCTION_46_1();
  v77(v76);
  sub_1D4E50004(v70, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v69);
  sub_1D4FB8058();
  __swift_destroy_boxed_opaque_existential_1(v115);
  v78 = v109;
  sub_1D560EC98();
  sub_1D4FB8150();
  v79 = type metadata accessor for MusicSiriRepresentation();
  v80 = v79[8];
  v81 = v110;
  v82 = v104;
  sub_1D4FB8150();
  v83 = v79[9];
  v84 = v114;
  sub_1D4FB8150();
  v85 = v81 + v79[10];
  v86 = v96;
  sub_1D4FB8150();
  LOBYTE(v115[0]) = 15;
  sub_1D50391CC();
  v88 = v87;
  v90 = v89;
  sub_1D4E50004(v74, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v111 + 8))(v78, v112);
  sub_1D4E50004(v70, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v86, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v84, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v82, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5038268(v113, type metadata accessor for TVSeason);
  *v81 = v88;
  *(v81 + 8) = v90;
  *(v81 + 16) = 15;
  v92 = v101;
  *(v81 + 24) = v102;
  *(v81 + 32) = v92;
  v93 = v99;
  *(v81 + 40) = v100;
  *(v81 + 48) = v93;
  return result;
}

uint64_t TVSeason.init(from:)(uint64_t *a1)
{
  type metadata accessor for TVSeason();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v3, v4);
  OUTLINED_FUNCTION_24_24();
  sub_1D5038614(v5, v1);
  OUTLINED_FUNCTION_32_19(&qword_1EDD577F8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TVSeason.encode(to:)()
{
  type metadata accessor for TVSeason();
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v1, v2);
  OUTLINED_FUNCTION_24_24();
  sub_1D5038614(v3, v0);
  OUTLINED_FUNCTION_32_19(&qword_1EDD577F8);
  return sub_1D5612688();
}

uint64_t TVSeason.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_66_7();
  v8 = v1;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v5 = TVSeason.title.getter();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](0x4E776F6873202C22, 0xEE0022203A656D61);
  v6 = TVSeason.showName.getter();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v8;
}

uint64_t TVSeason.debugDescription.getter()
{
  v241 = sub_1D5613C48();
  v2 = OUTLINED_FUNCTION_4(v241);
  v218 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v240 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v8);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F0, &unk_1D562B8A0);
  OUTLINED_FUNCTION_14(v217);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v237 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v17);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v238);
  v228 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v22);
  v23 = type metadata accessor for TVEpisode();
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v239 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v29);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F8, &qword_1D562B8B0);
  OUTLINED_FUNCTION_14(v216);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v204 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v204 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4(v41);
  v225 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v51);
  v222 = type metadata accessor for TVShow();
  v52 = OUTLINED_FUNCTION_14(v222);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v60);
  v221 = sub_1D560C0A8();
  v61 = OUTLINED_FUNCTION_4(v221);
  v214 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v212 = sub_1D5610788();
  v66 = OUTLINED_FUNCTION_4(v212);
  v211 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v210 = sub_1D56107C8();
  v71 = OUTLINED_FUNCTION_4(v210);
  v209 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v77 = OUTLINED_FUNCTION_22(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  v206 = v80;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v82);
  v231 = sub_1D560C328();
  v83 = OUTLINED_FUNCTION_4(v231);
  v230 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v93 = v92;
  v94 = sub_1D5610978();
  v95 = OUTLINED_FUNCTION_4(v94);
  v204 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v99);
  OUTLINED_FUNCTION_66_7();
  v249 = v100;
  v250 = 0xE900000000000028;
  v244 = 0x22203A646920200ALL;
  v245 = 0xE800000000000000;
  v101 = *v0;
  v102 = v0[1];
  sub_1D560EEC8();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  OUTLINED_FUNCTION_51_0();
  v244 = v103 | 0x6C74697400000000;
  v245 = 0xEC00000022203A65;
  TVSeason.title.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  v244 = 0;
  v245 = 0xE000000000000000;
  sub_1D5615B68();

  v244 = 0x776F687320200A2CLL;
  v245 = 0xEF22203A656D614ELL;
  TVSeason.showName.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_55();
  v105 = sub_1D5038614(v104, v1);
  OUTLINED_FUNCTION_0_56();
  v235 = sub_1D5038614(v106, v1);
  sub_1D560EC28();
  if (v245)
  {
    OUTLINED_FUNCTION_51_0();
    v244 = v107 | 0x79706F6300000000;
    v245 = 0xEF203A7468676972;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  v234 = v0;
  v244 = 0xD000000000000013;
  v245 = 0x80000001D5681F90;
  if (qword_1EC7E8B88 != -1)
  {
    OUTLINED_FUNCTION_33_8();
  }

  v108 = MEMORY[0x1E69E6530];
  v109 = v235;
  sub_1D560EC28();
  v110 = v247;
  if (v248)
  {
    v110 = 0;
  }

  v247 = v110;
  sub_1D56160F8();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v93, 1, v94);
  v229 = v40;
  if (v111)
  {
    sub_1D4E50004(v93, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v112 = v204;
    v113 = v205;
    (*(v204 + 32))(v205, v93, v94);
    OUTLINED_FUNCTION_10_38();
    v244 = v115 + 3;
    v245 = v114;
    v116 = sub_1D5610928();
    v108 = v117;
    v247 = v116;
    v248 = v117;
    v246[0] = 10;
    v246[1] = 0xE100000000000000;
    v242 = 2105354;
    v243 = 0xE300000000000000;
    sub_1D4F53278();
    v118 = OUTLINED_FUNCTION_23_5();
    v109 = v105;
    v120 = v119;

    MEMORY[0x1DA6EAC70](v118, v120);
    v105 = v109;

    OUTLINED_FUNCTION_16_7();

    v121 = *(v112 + 8);
    v40 = v112 + 8;
    v121(v113, v94);
  }

  OUTLINED_FUNCTION_47_19();
  v247 = 0;
  v248 = 0xE000000000000000;
  if (qword_1EC7E8B90 != -1)
  {
    OUTLINED_FUNCTION_38_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v232 = v105;
  sub_1D560EC28();
  if (v244)
  {
    v122 = v244;
  }

  else
  {
    v122 = MEMORY[0x1E69E7CC0];
  }

  v123 = *(v122 + 16);
  if (v123)
  {
    v124 = (v122 + 40);
    v40 = 0x22202020200ALL;
    v109 = 0xE600000000000000;
    do
    {
      v125 = *(v124 - 1);
      v126 = *v124;
      OUTLINED_FUNCTION_48_1();
      if (v111)
      {
        v129 = v127;
      }

      else
      {
        v129 = v128;
      }

      if (v129)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v244 = 0x22202020200ALL;
      v245 = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v125, v126);

      OUTLINED_FUNCTION_55_0();
      v108 = v245;
      MEMORY[0x1DA6EAC70](v244, v245);

      v124 += 2;
      --v123;
    }

    while (v123);

    v130 = v248;
    OUTLINED_FUNCTION_47_19();
  }

  else
  {

    v131 = 0;
    v130 = 0xE000000000000000;
  }

  v132 = HIBYTE(v130) & 0xF;
  if ((v130 & 0x2000000000000000) == 0)
  {
    v132 = v131 & 0xFFFFFFFFFFFFLL;
  }

  v133 = v219;
  if (v132)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v134);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v244, v245);
  }

  OUTLINED_FUNCTION_49_10();
  v136 = *(v135 - 256);

  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v137 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v137, v138, v109);
  if (v111)
  {
    sub_1D4E50004(v133, &qword_1EC7EA3B8, &unk_1D561E370);
    v139 = v229;
  }

  else
  {
    (*(v108 + 32))(v40, v133, v109);
    v140 = v207;
    sub_1D56107A8();
    v141 = v206;
    (*(v108 + 16))(v206, v40, v109);
    __swift_storeEnumTagSinglePayload(v141, 0, 1, v109);
    v142 = v211;
    v143 = v208;
    v144 = v108;
    v145 = v212;
    (*(v211 + 104))(v208, *MEMORY[0x1E6975DC8], v212);
    v231 = sub_1D56107B8();
    v147 = v146;
    (*(v142 + 8))(v143, v145);
    sub_1D4E50004(v141, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v209 + 8))(v140, v210);
    if (v147)
    {
      OUTLINED_FUNCTION_10_38();
      OUTLINED_FUNCTION_65_12(v148);
      MEMORY[0x1DA6EAC70](v231, v147);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_16_7();
    }

    (*(v144 + 8))(v233, v109);
    v139 = v229;
    OUTLINED_FUNCTION_49_10();
    v150 = *(v149 - 256);
  }

  v151 = v220;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_46_11();
  if (v245)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v152);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_46_11();
  if (v245)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v153);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E8BE8 != -1)
  {
    OUTLINED_FUNCTION_34_1();
  }

  v154 = v221;
  OUTLINED_FUNCTION_46_11();
  v155 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v155, v156, v154);
  if (v111)
  {
    sub_1D4E50004(v151, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v157 = v214;
    v158 = v213;
    (*(v214 + 32))(v213, v151, v154);
    OUTLINED_FUNCTION_51_0();
    v244 = v159 | 0x3A6C727500000000;
    v245 = 0xEA00000000002220;
    OUTLINED_FUNCTION_25_28();
    sub_1D5038614(v160, v161);
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();

    (*(v157 + 8))(v158, v154);
    v139 = v229;
  }

  v162 = v223;
  TVSeason.show.getter();
  OUTLINED_FUNCTION_57(v162, 1, v222);
  if (v111)
  {
    sub_1D4E50004(v162, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    v163 = v215;
    sub_1D5038210();
    v244 = 0x776F687320200A2CLL;
    v245 = 0xEA0000000000203ALL;
    v246[0] = 0;
    v246[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v246, "TVShow(id: ");
    BYTE5(v246[1]) = 0;
    HIWORD(v246[1]) = -5120;
    v164 = *v163;
    v165 = v163[1];
    v166 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v166);

    MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
    v167 = TVShow.name.getter();
    MEMORY[0x1DA6EAC70](v167);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v246[0], v246[1]);

    OUTLINED_FUNCTION_16_7();

    sub_1D5038268(v163, type metadata accessor for TVShow);
  }

  if (qword_1EC7E8BF8 != -1)
  {
    OUTLINED_FUNCTION_37_18();
  }

  OUTLINED_FUNCTION_46_11();
  OUTLINED_FUNCTION_57(v139, 1, v41);
  if (v111)
  {
    sub_1D4E50004(v139, &qword_1EC7ECBA8, &unk_1D56223B0);
  }

  else
  {
    v168 = v224;
    (*(v225 + 32))(v224, v139, v41);
    OUTLINED_FUNCTION_62_14();
    v169(v34, v168, v41);
    v170 = *(v216 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA430, &qword_1EC7EA370, &unk_1D561C080);
    sub_1D5615608();
    while (1)
    {
      sub_1D5615648();
      if (*&v34[v170] == v244)
      {
        break;
      }

      v171 = sub_1D5615688();
      sub_1D50381B8();
      v171(&v244, 0);
      sub_1D5615658();
      sub_1D5038210();
      OUTLINED_FUNCTION_48_1();
      if (!v111)
      {
        v173 = v174;
      }

      if (v173)
      {
        v172 = MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v244 = 10;
      v245 = 0xE100000000000000;
      v175 = v239;
      TVEpisode.debugDescription.getter(v172);
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v244, v245);

      sub_1D5038268(v175, type metadata accessor for TVEpisode);
    }

    sub_1D4E50004(v34, &qword_1EC7EE5F8, &qword_1D562B8B0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v176 | 0x7369706500000000);
    OUTLINED_FUNCTION_41_17();
    v177 = OUTLINED_FUNCTION_23_5();
    v179 = v178;

    MEMORY[0x1DA6EAC70](v177, v179);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v244, v245);

    (*(v225 + 8))(v224, v41);
    OUTLINED_FUNCTION_49_10();
    v181 = *(v180 - 256);
  }

  v182 = v237;
  v183 = v226;
  if (qword_1EC7E8C00 != -1)
  {
    OUTLINED_FUNCTION_36_15();
  }

  v184 = v238;
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v183, 1, v184);
  if (v111)
  {
    sub_1D4E50004(v183, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v185 = v227;
    v186 = v238;
    (*(v228 + 32))(v227, v183, v238);
    OUTLINED_FUNCTION_62_14();
    v187(v182, v185, v186);
    v188 = *(v217 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA5A8, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_61();
    sub_1D5615608();
    v189 = (v218 + 16);
    v190 = (v218 + 32);
    v191 = (v218 + 8);
    v192 = v236;
    while (1)
    {
      v193 = v238;
      OUTLINED_FUNCTION_61();
      sub_1D5615648();
      if (*(v182 + v188) == v244)
      {
        break;
      }

      v194 = sub_1D5615688();
      v195 = v241;
      (*v189)(v192);
      v194(&v244, 0);
      sub_1D5615658();
      (*v190)(v240, v192, v195);
      OUTLINED_FUNCTION_48_1();
      if (!v111)
      {
        v196 = v197;
      }

      if (v196)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v244 = 10;
      v245 = 0xE100000000000000;
      v198 = v240;
      sub_1D5613B88();
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v244, v245);

      (*v191)(v198, v241);
      v182 = v237;
    }

    sub_1D4E50004(v182, &qword_1EC7EE5F0, &unk_1D562B8A0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v199 | 0x726E656700000000);
    OUTLINED_FUNCTION_41_17();
    v200 = OUTLINED_FUNCTION_23_5();
    v202 = v201;

    MEMORY[0x1DA6EAC70](v200, v202);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v244, v245);

    (*(v228 + 8))(v227, v193);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v249;
}

uint64_t sub_1D5037D80()
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
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7EE5E0 = v4;
  return result;
}

uint64_t sub_1D5037EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v6 + v5, *MEMORY[0x1E6975218], v0);
  qword_1EC7EE5E8 = v6;
  return result;
}

uint64_t sub_1D5037FD8(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
}

uint64_t sub_1D5038028()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD546B8);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for TVSeason();
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D50380D4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53C60);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD546B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD546B8);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D50381B8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5038210()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5038268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5038308(uint64_t a1)
{
  result = sub_1D5038614(qword_1EC7EE608, type metadata accessor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D503840C()
{
  result = qword_1EDD52858;
  if (!qword_1EDD52858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECBC0, &qword_1D562BF20);
    sub_1D5038614(&unk_1EDD58A70, type metadata accessor for VideoOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52858);
  }

  return result;
}

unint64_t sub_1D50384C0()
{
  result = qword_1EDD52778;
  if (!qword_1EDD52778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52778);
  }

  return result;
}

unint64_t sub_1D503853C()
{
  result = qword_1EDD52828;
  if (!qword_1EDD52828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3D0, &unk_1D56223F0);
    sub_1D50385C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52828);
  }

  return result;
}

unint64_t sub_1D50385C0()
{
  result = qword_1EDD55DE8[0];
  if (!qword_1EDD55DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55DE8);
  }

  return result;
}

uint64_t sub_1D5038614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_21(unint64_t *a1)
{

  return sub_1D5038614(a1, v1);
}

uint64_t OUTLINED_FUNCTION_37_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_11()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_47_19()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 320);
  v3 = *(v0 - 296);
}

void OUTLINED_FUNCTION_62_14()
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0xE000000000000000;
  v2 = *(v0 + 16);
}

uint64_t static MusicLibraryMapping.Section<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D56152F8();
}

uint64_t sub_1D50387BC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static MusicLibraryMapping.Section<>.== infix(_:_:)(a1, a2);
}

uint64_t MusicLibraryMapping.Section<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_1D56152E8();
}

uint64_t MusicLibraryMapping.Section<>.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_1D56162D8();
  MusicLibraryMapping.Section<>.hash(into:)(v4, a1);
  return sub_1D5616328();
}

uint64_t sub_1D5038850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.Section<>.hash(into:)(v6, a2);
  return sub_1D5616328();
}

uint64_t sub_1D5038908()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5038968(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D50389D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D5038B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D5038D6C()
{
  result = qword_1EC7EE710;
  if (!qword_1EC7EE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE710);
  }

  return result;
}

unint64_t sub_1D5038DC4()
{
  result = qword_1EC7EE718;
  if (!qword_1EC7EE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE718);
  }

  return result;
}

unint64_t sub_1D5038ED0()
{
  result = qword_1EC7EE720;
  if (!qword_1EC7EE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE720);
  }

  return result;
}

unint64_t sub_1D5038F40()
{
  result = qword_1EC7EE728;
  if (!qword_1EC7EE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE728);
  }

  return result;
}

MusicKitInternal::VideoCapabilities sub_1D5038FD8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = VideoCapabilities.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D5039018@<X0>(uint64_t *a1@<X8>)
{
  result = VideoCapabilities.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CoverArtworkRecipe.ExpressionID(uint64_t a1, int a2)
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

uint64_t MusicSiriRepresentation.init(for:kind:catalogResourceType:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a2;
  sub_1D50391CC();
  v20 = v19;
  v22 = v21;
  sub_1D4E50004(a3, &qword_1EC7EA358, &unk_1D561DF50);
  v23 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v23);
  (*(v24 + 8))(a1);
  *a9 = v20;
  *(a9 + 8) = v22;
  *(a9 + 16) = v18;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v25 = type metadata accessor for MusicSiriRepresentation();
  sub_1D4F39A1C(a8, a9 + v25[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39A1C(a10, a9 + v25[9], &qword_1EC7EC478, &unk_1D56299D0);
  return sub_1D4F39A1C(a11, a9 + v25[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
}

void sub_1D50391CC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v160 = v2;
  v4 = v3;
  v169 = v5;
  LODWORD(v162) = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v167 = v10;
  OUTLINED_FUNCTION_70_0();
  v168 = sub_1D560C0A8();
  v11 = OUTLINED_FUNCTION_4(v168);
  v166 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v165 = v15;
  OUTLINED_FUNCTION_70_0();
  v155 = sub_1D560D838();
  v16 = OUTLINED_FUNCTION_4(v155);
  v148 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v142 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v150 = v26;
  OUTLINED_FUNCTION_70_0();
  v159 = sub_1D560BB98();
  v27 = OUTLINED_FUNCTION_4(v159);
  v156 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v154 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v153 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  v143 = &v142 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v157 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v142 - v45;
  v161 = sub_1D5610088();
  v47 = OUTLINED_FUNCTION_4(v161);
  v158 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  v149 = &v142 - v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D560D9A8();
  v55 = OUTLINED_FUNCTION_4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  v60 = MEMORY[0x1EEE9AC00](v55);
  v62 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = &v142 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v142 - v66;
  v68 = sub_1D560BC78();
  v69 = OUTLINED_FUNCTION_4(v68);
  v163 = v70;
  v164 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v75 = v74 - v73;
  v76 = *v4;
  sub_1D560BC68();
  sub_1D560BC38();
  OUTLINED_FUNCTION_40_17();
  v77 = MusicSiriRepresentation.Kind.rawValue.getter();
  MEMORY[0x1DA6E1A10](v77);
  v78 = MEMORY[0x1E69E7CC0];
  v173 = MEMORY[0x1E69E7CC0];
  if (v162 != 2 && (v1 & 1) != 0)
  {
    sub_1D503B08C(v169, 1);
    sub_1D4EF30FC();
    v78 = v173;
  }

  if (!*(v78 + 16))
  {
    sub_1D503B08C(v169, 0);
    sub_1D4EF30FC();
    if (!*(v173 + 16) && (v1 == 2 || (v1 & 1) == 0))
    {
      sub_1D503B08C(v169, 1);
      sub_1D4EF30FC();
    }
  }

  OUTLINED_FUNCTION_40_17();
  MusicSiriRepresentation.Kind.typeValue.getter(v67);
  v79 = sub_1D560D8F8();
  v80 = *(v57 + 8);
  v80(v67, v54);
  if (!dynamic_cast_existential_1_conditional(v79))
  {
    OUTLINED_FUNCTION_40_17();
    MusicSiriRepresentation.Kind.typeValue.getter(v65);
    sub_1D560D8F8();
    v80(v65, v54);
    sub_1D5614828();
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_46;
    }

    v83 = v150;
    sub_1D560D5E8();
    OUTLINED_FUNCTION_57(v83, 1, v54);
    if (v91)
    {
      sub_1D4E50004(v83, &qword_1EC7F6DF0, &qword_1D561D1E0);
      OUTLINED_FUNCTION_40_17();
      MusicSiriRepresentation.Kind.typeValue.getter(v62);
      v99 = sub_1D560D8F8();
      v100 = v62;
    }

    else
    {
      v99 = sub_1D560D8F8();
      v100 = v83;
    }

    v80(v100, v54);
    v101 = v157;
    sub_1D4F39AB0(v160, v157, &qword_1EC7EA358, &unk_1D561DF50);
    v102 = dynamic_cast_existential_1_conditional(v99);
    v103 = v155;
    v104 = v156;
    v105 = v161;
    v106 = v152;
    if (v102)
    {
      v107 = sub_1D560D088();
      sub_1D4EC980C(v107);

      sub_1D4E50004(v101, &qword_1EC7EA358, &unk_1D561DF50);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v108, v109, v110, v111);
    }

    v112 = v151;
    sub_1D4F39AB0(v101, v151, &qword_1EC7EA358, &unk_1D561DF50);
    OUTLINED_FUNCTION_57(v112, 1, v105);
    if (v91)
    {
      sub_1D4E50004(v112, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_27_22();
      }

      v113 = sub_1D560C758();
      __swift_project_value_buffer(v113, qword_1EC87C330);
      v114 = v148;
      v115 = *(v148 + 16);
      v115(v106, v169, v103);
      v116 = sub_1D560C738();
      v117 = sub_1D56156C8();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v160 = v118;
        v162 = swift_slowAlloc();
        v171 = v162;
        *v118 = 136315138;
        v115(v145, v106, v103);
        v119 = sub_1D5614DB8();
        v121 = v120;
        (*(v114 + 8))(v106, v103);
        v122 = sub_1D4E6835C(v119, v121, &v171);

        v123 = v160;
        *(v160 + 1) = v122;
        _os_log_impl(&dword_1D4E3F000, v116, v117, "Unable to fetch underlying resource type for playlist entry %s. Defaulting to Song.", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v162);
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {

        (*(v114 + 8))(v106, v103);
      }

      v127 = v154;
      v128 = v147;
      sub_1D560FFA8();
      sub_1D5610058();
      (*(v158 + 8))(v128, v161);
      v126 = v153;
      OUTLINED_FUNCTION_34_20();
      OUTLINED_FUNCTION_8_1();
      sub_1D560BB28();

      v101 = v157;
    }

    else
    {
      v124 = v158;
      v125 = v146;
      (*(v158 + 32))(v146, v112, v105);
      sub_1D5610058();
      v126 = v153;
      OUTLINED_FUNCTION_34_20();
      sub_1D560BB28();

      (*(v124 + 8))(v125, v105);
      v127 = v154;
    }

    (*(v104 + 16))(v127, v126, v159);
    v97 = v173;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_36_16();
      v97 = v138;
    }

    v129 = *(v97 + 16);
    if (v129 >= *(v97 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v97 = v139;
    }

    v130 = v126;
    v131 = v159;
    (*(v104 + 8))(v130, v159);
    sub_1D4E50004(v101, &qword_1EC7EA358, &unk_1D561DF50);
    *(v97 + 16) = v129 + 1;
    (*(v104 + 32))(v97 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v129, v127, v131);
    goto LABEL_45;
  }

  v81 = *(sub_1D560D088() + 16);

  if (v81 < 2)
  {
    goto LABEL_46;
  }

  sub_1D4F39AB0(v160, v46, &qword_1EC7EA358, &unk_1D561DF50);
  v82 = v161;
  OUTLINED_FUNCTION_57(v46, 1, v161);
  if (v91)
  {
    sub_1D4E50004(v46, &qword_1EC7EA358, &unk_1D561DF50);
    goto LABEL_46;
  }

  v84 = v158;
  v85 = v149;
  (*(v158 + 32))(v149, v46, v82);
  v170 = v76;
  v171 = MusicSiriRepresentation.Kind.rawValue.getter();
  v172 = v86;

  MEMORY[0x1DA6EAC70](115, 0xE100000000000000);

  v88 = v171;
  v87 = v172;
  v89 = sub_1D5610058();
  v91 = v88 == v89 && v87 == v90;
  if (v91)
  {

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_61();
  v92 = sub_1D5616168();

  if (v92)
  {
LABEL_37:
    (*(v84 + 8))(v85, v82);
    goto LABEL_46;
  }

  sub_1D5610058();
  v93 = v143;
  OUTLINED_FUNCTION_34_20();
  sub_1D560BB28();

  v94 = v156;
  v95 = v144;
  v96 = v159;
  (*(v156 + 16))(v144, v93, v159);
  v97 = v173;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_36_16();
    v97 = v140;
  }

  v98 = *(v97 + 16);
  if (v98 >= *(v97 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v97 = v141;
  }

  (*(v94 + 8))(v93, v96);
  (*(v84 + 8))(v85, v161);
  *(v97 + 16) = v98 + 1;
  (*(v94 + 32))(v97 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v98, v95, v96);
LABEL_45:
  v173 = v97;
LABEL_46:
  if (*(v173 + 16))
  {

    sub_1D560BBD8();
  }

  v132 = v167;
  sub_1D560BC08();
  v133 = v168;
  OUTLINED_FUNCTION_57(v132, 1, v168);
  if (v91)
  {
    sub_1D4E50004(v132, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v171 = 0;
    v172 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000059, 0x80000001D5682100);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }

  else
  {

    v134 = v166;
    (*(v166 + 32))(v165, v132, v133);
    sub_1D560BF08();
    v135 = *(v134 + 8);
    v136 = OUTLINED_FUNCTION_99();
    v137(v136);
    (*(v163 + 8))(v75, v164);
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_46();
  }
}

uint64_t type metadata accessor for MusicSiriRepresentation()
{
  result = qword_1EDD5F4B0;
  if (!qword_1EDD5F4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriRepresentation.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicSiriRepresentation.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicSiriRepresentation.authorName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicSiriRepresentation.Kind.typeValue.getter@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:

      return sub_1D560D938();
    case 2:
      if (qword_1EDD53C80 != -1)
      {
        OUTLINED_FUNCTION_23_26();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C88;
      goto LABEL_53;
    case 3:

      return sub_1D560D948();
    case 4:
      if (qword_1EDD53D70 != -1)
      {
        OUTLINED_FUNCTION_24_25();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D78;
      goto LABEL_53;
    case 5:

      return sub_1D560D918();
    case 6:
      if (qword_1EDD53D48 != -1)
      {
        OUTLINED_FUNCTION_20_10();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D50;
      goto LABEL_53;
    case 7:

      return sub_1D560D878();
    case 8:

      return sub_1D560D968();
    case 9:

      return sub_1D560D898();
    case 0xA:

      return sub_1D560D998();
    case 0xB:

      return sub_1D560D888();
    case 0xC:

      return sub_1D560D8E8();
    case 0xD:

      return sub_1D560D958();
    case 0xE:
      if (qword_1EDD53C38 != -1)
      {
        OUTLINED_FUNCTION_25_7();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C40;
      goto LABEL_53;
    case 0xF:
      if (qword_1EDD53C58 != -1)
      {
        OUTLINED_FUNCTION_22_24();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C60;
      goto LABEL_53;
    case 0x10:
      if (qword_1EC7E95E8 != -1)
      {
        OUTLINED_FUNCTION_26_25();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EC7F5D98;
      goto LABEL_53;
    case 0x11:
      if (qword_1EC7E8F18 != -1)
      {
        OUTLINED_FUNCTION_21_25();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EC7F08A0;
      goto LABEL_53;
    case 0x12:
      if (qword_1EDD53CE8 != -1)
      {
        OUTLINED_FUNCTION_19_29();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53CF0;
LABEL_53:
      v7 = __swift_project_value_buffer(v4, v6);
      v8 = *(*(v5 - 8) + 16);

      result = v8(a1, v7, v5);
      break;
    default:

      result = sub_1D560D908();
      break;
  }

  return result;
}

void sub_1D503A560()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v67 = v2;
  v3 = sub_1D560D9A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v66 = v9;
  OUTLINED_FUNCTION_23();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = *(v6 + 16);
  v14(&v65 - v15, v1, v3);
  sub_1D560D908();
  OUTLINED_FUNCTION_16_29();
  sub_1D503DD74(v16, v17);
  v18 = OUTLINED_FUNCTION_4_37();
  v19 = *(v6 + 8);
  v19(v13, v3);
  if (v18)
  {
    v20 = 0;
LABEL_21:
    v28 = OUTLINED_FUNCTION_61();
    (v19)(v28);
    v29 = OUTLINED_FUNCTION_99();
    (v19)(v29);
    goto LABEL_22;
  }

  sub_1D560D938();
  OUTLINED_FUNCTION_4_37();
  v21 = OUTLINED_FUNCTION_7_37();
  v22 = (v19)(v21);
  if (qword_1EDD53C80 != -1)
  {
    v22 = OUTLINED_FUNCTION_23_26();
  }

  if (OUTLINED_FUNCTION_5_38(v22, qword_1EDD53C88))
  {
    v20 = 2;
    goto LABEL_21;
  }

  sub_1D560D948();
  OUTLINED_FUNCTION_4_37();
  v23 = OUTLINED_FUNCTION_7_37();
  v24 = (v19)(v23);
  if (v18)
  {
    v20 = 3;
    goto LABEL_21;
  }

  if (qword_1EDD53D70 != -1)
  {
    v24 = OUTLINED_FUNCTION_24_25();
  }

  if (OUTLINED_FUNCTION_5_38(v24, qword_1EDD53D78))
  {
    v20 = 4;
    goto LABEL_21;
  }

  sub_1D560D918();
  OUTLINED_FUNCTION_4_37();
  v25 = OUTLINED_FUNCTION_7_37();
  v26 = (v19)(v25);
  if (v18)
  {
    v20 = 5;
    goto LABEL_21;
  }

  if (qword_1EDD53D48 != -1)
  {
    v26 = OUTLINED_FUNCTION_20_10();
  }

  if (OUTLINED_FUNCTION_5_38(v26, qword_1EDD53D50))
  {
    v20 = 6;
    goto LABEL_21;
  }

  sub_1D560D878();
  OUTLINED_FUNCTION_4_37();
  v27 = OUTLINED_FUNCTION_7_37();
  (v19)(v27);
  if (v18)
  {
    v20 = 7;
    goto LABEL_21;
  }

  sub_1D560D968();
  OUTLINED_FUNCTION_4_37();
  v30 = OUTLINED_FUNCTION_7_37();
  (v19)(v30);
  sub_1D560D898();
  OUTLINED_FUNCTION_4_37();
  v31 = OUTLINED_FUNCTION_7_37();
  (v19)(v31);
  sub_1D560D998();
  OUTLINED_FUNCTION_4_37();
  v32 = OUTLINED_FUNCTION_7_37();
  (v19)(v32);
  sub_1D560D888();
  OUTLINED_FUNCTION_4_37();
  v33 = OUTLINED_FUNCTION_7_37();
  (v19)(v33);
  sub_1D560D8E8();
  OUTLINED_FUNCTION_4_37();
  v34 = OUTLINED_FUNCTION_7_37();
  (v19)(v34);
  sub_1D560D958();
  OUTLINED_FUNCTION_4_37();
  v35 = OUTLINED_FUNCTION_7_37();
  v36 = (v19)(v35);
  if (qword_1EDD53C38 != -1)
  {
    v36 = OUTLINED_FUNCTION_25_7();
  }

  v37 = OUTLINED_FUNCTION_5_38(v36, qword_1EDD53C40);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_61();
    (v19)(v38);
    v39 = OUTLINED_FUNCTION_99();
    (v19)(v39);
    v20 = 14;
  }

  else
  {
    if (qword_1EDD53C58 != -1)
    {
      v37 = OUTLINED_FUNCTION_22_24();
    }

    v40 = OUTLINED_FUNCTION_5_38(v37, qword_1EDD53C60);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_61();
      (v19)(v41);
      v42 = OUTLINED_FUNCTION_99();
      (v19)(v42);
      v20 = 15;
    }

    else
    {
      if (qword_1EC7E95E8 != -1)
      {
        v40 = OUTLINED_FUNCTION_26_25();
      }

      v43 = OUTLINED_FUNCTION_5_38(v40, qword_1EC7F5D98);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_61();
        (v19)(v44);
        v45 = OUTLINED_FUNCTION_99();
        (v19)(v45);
        v20 = 16;
      }

      else
      {
        if (qword_1EC7E8F18 != -1)
        {
          v43 = OUTLINED_FUNCTION_21_25();
        }

        v46 = OUTLINED_FUNCTION_5_38(v43, qword_1EC7F08A0);
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_61();
          (v19)(v47);
          v48 = OUTLINED_FUNCTION_99();
          (v19)(v48);
          v20 = 17;
        }

        else
        {
          if (qword_1EDD53CE8 != -1)
          {
            v46 = OUTLINED_FUNCTION_19_29();
          }

          v49 = OUTLINED_FUNCTION_5_38(v46, qword_1EDD53CF0);
          v50 = OUTLINED_FUNCTION_99();
          (v19)(v50);
          if (v49)
          {
            v51 = OUTLINED_FUNCTION_61();
            (v19)(v51);
            v20 = 18;
          }

          else
          {
            if (qword_1EC7E90D8 != -1)
            {
              OUTLINED_FUNCTION_27_22();
            }

            v52 = sub_1D560C758();
            __swift_project_value_buffer(v52, qword_1EC87C330);
            v14(v66, v1, v3);
            v53 = sub_1D560C738();
            v54 = sub_1D56156C8();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v68 = v65;
              *v55 = 136446210;
              OUTLINED_FUNCTION_16_29();
              sub_1D503DD74(v56, v57);
              v58 = v66;
              sub_1D56160F8();
              v19(v58, v3);
              v59 = OUTLINED_FUNCTION_74_0();
              v62 = sub_1D4E6835C(v59, v60, v61);

              *(v55 + 4) = v62;
              _os_log_impl(&dword_1D4E3F000, v53, v54, "Unable to initialize MusicSiriRepresentation.Kind from MusicItemTypeValue %{public}s.", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v65);
              OUTLINED_FUNCTION_122();
              OUTLINED_FUNCTION_122();

              v63 = v1;
            }

            else
            {

              v64 = OUTLINED_FUNCTION_61();
              (v19)(v64);
              v63 = v66;
            }

            v19(v63, v3);
            v20 = 19;
          }
        }
      }
    }
  }

LABEL_22:
  *v67 = v20;
  OUTLINED_FUNCTION_46();
}

MusicKitInternal::MusicSiriRepresentation::Kind_optional __swiftcall MusicSiriRepresentation.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5616208();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MusicSiriRepresentation.Kind.rawValue.getter()
{
  result = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      return 0x747369747261;
    case 2:
      return 0x7265736F706D6F63;
    case 3:
      return 0x726F7461727563;
    case 4:
      return 0x6169726F74696465;
    case 5:
      v3 = 1919837543;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 6:
      v3 = 1769369453;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 7:
      return 0x69762D636973756DLL;
    case 8:
    case 9:
      return 0x7473696C79616C70;
    case 0xA:
      return 0x68732D6F69646172;
    case 0xB:
      return 0x6C2D64726F636572;
    case 0xC:
      return 1735290739;
    case 0xD:
      return 0x6E6F6974617473;
    case 0xE:
      v2 = 0x6970652D7674;
      goto LABEL_10;
    case 0xF:
      v2 = 0x6165732D7674;
LABEL_10:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 0x10:
      result = 0x776F68732D7674;
      break;
    case 0x11:
    case 0x12:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D503AF80@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSiriRepresentation.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D503B08C(uint64_t a1, int a2)
{
  LODWORD(v115) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v100 - v5;
  v7 = sub_1D560D4C8();
  v111 = *(v7 - 8);
  v8 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D560BB98();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v110 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = &v100 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v108 = &v100 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v100 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v100 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v104 = &v100 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v100 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v100 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v100 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v100 - v36;
  v38 = sub_1D560F148();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v115)
  {
    sub_1D560D5C8();
    v43 = a1;
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1D4E50004(v6, &unk_1EC7EBF20, &unk_1D561F530);
      v44 = MEMORY[0x1E69E7CC0];
      v46 = v113;
      v45 = v114;
    }

    else
    {
      v48 = v111;
      v47 = v112;
      (*(v111 + 32))(v112, v6, v7);
      v49 = sub_1D560D4B8();
      v51 = v50;

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      v46 = v113;
      if (v52)
      {
        v115 = v7;
        sub_1D560D4B8();
        v53 = v106;
        sub_1D560BB28();

        v101 = *(v46 + 16);
        v101(v26, v53, v114);
        sub_1D4EFFE00();
        v44 = v54;
        v56 = *(v54 + 16);
        v55 = *(v54 + 24);
        v103 = v43;
        if (v56 >= v55 >> 1)
        {
          sub_1D4EFFE00();
          v44 = v97;
        }

        *(v44 + 16) = v56 + 1;
        v57 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v58 = *(v46 + 72);
        v59 = v26;
        v45 = v114;
        v102 = *(v46 + 32);
        v102(v44 + v57 + v58 * v56, v59, v114);
        v60 = v112;
        v61 = sub_1D560D488();
        v63 = v62;

        v64 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v64 = v61 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v100 = v57;
          sub_1D560D488();
          v65 = v104;
          sub_1D560BB28();

          v66 = v105;
          v101(v105, v65, v45);
          v67 = *(v44 + 16);
          if (v67 >= *(v44 + 24) >> 1)
          {
            sub_1D4EFFE00();
            v44 = v99;
          }

          v68 = v113;
          v69 = *(v113 + 8);
          v70 = v65;
          v71 = v114;
          v69(v70, v114);
          v69(v106, v71);
          v45 = v71;
          (*(v111 + 8))(v112, v115);
          *(v44 + 16) = v67 + 1;
          v102(v44 + v100 + v67 * v58, v66, v71);
          v46 = v68;
        }

        else
        {
          (*(v46 + 8))(v106, v45);
          (*(v111 + 8))(v60, v115);
        }
      }

      else
      {
        (*(v48 + 8))(v47, v7);
        v44 = MEMORY[0x1E69E7CC0];
        v45 = v114;
      }
    }

    v80 = sub_1D560D808();
    if (v81)
    {
      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
        v83 = v107;
        sub_1D560BB28();

        (*(v46 + 16))(v108, v83, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = *(v44 + 16);
          sub_1D4EFFE00();
          v44 = v92;
        }

        v84 = *(v44 + 16);
        if (v84 >= *(v44 + 24) >> 1)
        {
          sub_1D4EFFE00();
          v44 = v93;
        }

        (*(v46 + 8))(v107, v45);
        *(v44 + 16) = v84 + 1;
        (*(v46 + 32))(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v84, v108, v45);
      }

      else
      {
      }
    }

    v85 = sub_1D560D768();
    if (v86)
    {
      v87 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v87 = v85 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        v88 = v109;
        sub_1D560BB28();

        (*(v46 + 16))(v110, v88, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = *(v44 + 16);
          sub_1D4EFFE00();
          v44 = v95;
        }

        v89 = *(v44 + 16);
        if (v89 >= *(v44 + 24) >> 1)
        {
          sub_1D4EFFE00();
          v44 = v96;
        }

        (*(v46 + 8))(v109, v45);
        *(v44 + 16) = v89 + 1;
        (*(v46 + 32))(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v89, v110, v45);
      }

      else
      {
      }
    }

    return v44;
  }

  sub_1D560D7A8();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_1D4E50004(v37, &unk_1EC7F1970, &qword_1D561F4A0);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v39 + 32))(v42, v37, v38);
  v72 = sub_1D560F138();
  v74 = v73;

  v75 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v75 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (!v75)
  {
    (*(v39 + 8))(v42, v38);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D560F138();
  sub_1D560BB28();

  v76 = v114;
  (*(v113 + 16))(v31, v33, v114);
  sub_1D4EFFE00();
  v44 = v77;
  v78 = *(v77 + 16);
  if (v78 >= *(v77 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v44 = v98;
  }

  v79 = v113;
  (*(v113 + 8))(v33, v76);
  (*(v39 + 8))(v42, v38);
  *(v44 + 16) = v78 + 1;
  (*(v79 + 32))(v44 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v78, v31, v76);
  return v44;
}

void static MusicSiriRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v107 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v108 = v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v110);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v111 = v19;
  OUTLINED_FUNCTION_70_0();
  v115 = sub_1D56106B8();
  v20 = OUTLINED_FUNCTION_4(v115);
  v113 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v109 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v112 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v114 = v34;
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D56140F8();
  v36 = OUTLINED_FUNCTION_4(v35);
  v116 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v103 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v103 - v53;
  v55 = *v3 == *v1 && *(v3 + 8) == *(v1 + 8);
  if (v55 || (sub_1D5616168()) && (sub_1D4F3CE30(*(v3 + 16), *(v1 + 16)))
  {
    v56 = *(v3 + 24) == *(v1 + 24) && *(v3 + 32) == *(v1 + 32);
    if (v56 || (sub_1D5616168() & 1) != 0)
    {
      v57 = *(v3 + 48);
      v58 = *(v1 + 48);
      if (v57)
      {
        if (!v58)
        {
          goto LABEL_42;
        }

        v59 = *(v3 + 40) == *(v1 + 40) && v57 == v58;
        if (!v59 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v58)
      {
        goto LABEL_42;
      }

      v104 = v7;
      v105 = v4;
      v106 = type metadata accessor for MusicSiriRepresentation();
      v60 = *(v106 + 32);
      v61 = *(v49 + 48);
      sub_1D4F39AB0(v3 + v60, v54, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4F39AB0(v1 + v60, &v54[v61], &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_10(v54);
      if (v55)
      {
        OUTLINED_FUNCTION_10(&v54[v61]);
        if (v55)
        {
          sub_1D4E50004(v54, &qword_1EC7E9CA0, &unk_1D561A0C0);
LABEL_31:
          v70 = v106;
          v71 = *(v106 + 36);
          v72 = *(v30 + 48);
          v54 = v114;
          sub_1D4F39AB0(v3 + v71, v114, &qword_1EC7EC478, &unk_1D56299D0);
          sub_1D4F39AB0(v1 + v71, &v54[v72], &qword_1EC7EC478, &unk_1D56299D0);
          v73 = v115;
          OUTLINED_FUNCTION_57(v54, 1, v115);
          if (v55)
          {
            OUTLINED_FUNCTION_57(&v54[v72], 1, v73);
            if (v55)
            {
              sub_1D4E50004(v54, &qword_1EC7EC478, &unk_1D56299D0);
LABEL_44:
              v83 = *(v70 + 40);
              v84 = *(v110 + 48);
              v85 = v111;
              OUTLINED_FUNCTION_8_1();
              sub_1D4F39AB0(v86, v87, v88, v89);
              OUTLINED_FUNCTION_8_1();
              sub_1D4F39AB0(v90, v91, v92, v93);
              v94 = v105;
              OUTLINED_FUNCTION_57(v85, 1, v105);
              if (v55)
              {
                OUTLINED_FUNCTION_10(v85 + v84);
                if (v55)
                {
                  sub_1D4E50004(v85, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  goto LABEL_42;
                }
              }

              else
              {
                v95 = v108;
                sub_1D4F39AB0(v85, v108, &unk_1EC7E9CA8, &unk_1D561D1D0);
                OUTLINED_FUNCTION_10(v85 + v84);
                if (!v96)
                {
                  v97 = v104;
                  v98 = v107;
                  (*(v104 + 32))(v107, v85 + v84, v94);
                  OUTLINED_FUNCTION_3_48();
                  sub_1D503DD74(v99, v100);
                  sub_1D5614D18();
                  v101 = *(v97 + 8);
                  v101(v98, v94);
                  v102 = OUTLINED_FUNCTION_99();
                  (v101)(v102);
                  sub_1D4E50004(v85, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  goto LABEL_42;
                }

                (*(v104 + 8))(v95, v94);
              }

              v63 = &qword_1EC7E9FB0;
              v64 = &qword_1D562C590;
              v76 = v85;
              goto LABEL_41;
            }
          }

          else
          {
            v74 = v112;
            sub_1D4F39AB0(v54, v112, &qword_1EC7EC478, &unk_1D56299D0);
            OUTLINED_FUNCTION_57(&v54[v72], 1, v73);
            if (!v75)
            {
              v77 = v113;
              (*(v113 + 32))(v109, &v54[v72], v73);
              OUTLINED_FUNCTION_1_56();
              sub_1D503DD74(v78, v79);
              v80 = sub_1D5614D18();
              v81 = *(v77 + 8);
              v82 = OUTLINED_FUNCTION_61();
              v81(v82);
              (v81)(v74, v73);
              sub_1D4E50004(v54, &qword_1EC7EC478, &unk_1D56299D0);
              if ((v80 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_44;
            }

            (*(v113 + 8))(v74, v73);
          }

          v63 = &qword_1EC7EE730;
          v64 = &unk_1D562C598;
LABEL_40:
          v76 = v54;
LABEL_41:
          sub_1D4E50004(v76, v63, v64);
          goto LABEL_42;
        }
      }

      else
      {
        sub_1D4F39AB0(v54, v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
        OUTLINED_FUNCTION_10(&v54[v61]);
        if (!v62)
        {
          v65 = v116;
          (*(v116 + 32))(v42, &v54[v61], v35);
          OUTLINED_FUNCTION_2_41();
          sub_1D503DD74(v66, v67);
          v68 = sub_1D5614D18();
          v69 = *(v65 + 8);
          v69(v42, v35);
          v69(v48, v35);
          sub_1D4E50004(v54, &qword_1EC7E9CA0, &unk_1D561A0C0);
          if ((v68 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        (*(v116 + 8))(v48, v35);
      }

      v63 = &qword_1EC7E9FB8;
      v64 = &unk_1D561B9C0;
      goto LABEL_40;
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D503C3D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E726F68747561 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 7107189 && a2 == 0xE300000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1D5616168();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D503C60C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x614E726F68747561;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0x52746E65746E6F63;
      break;
    case 6:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D503C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D503C3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D503C6F8(uint64_t a1)
{
  v2 = sub_1D503D5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D503C734(uint64_t a1)
{
  v2 = sub_1D503D5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSiriRepresentation.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE740, &qword_1D562C5A8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34[-v11];
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1D503D5D8();
  sub_1D56163D8();
  v17 = *v3;
  v18 = v3[1];
  v34[15] = 0;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616088();
  if (!v2)
  {
    v34[14] = *(v3 + 16);
    v34[13] = 1;
    sub_1D503D62C();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    v19 = v3[3];
    v20 = v3[4];
    v34[12] = 2;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616088();
    v21 = v3[5];
    v22 = v3[6];
    v34[11] = 3;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616028();
    v23 = type metadata accessor for MusicSiriRepresentation();
    v24 = v23[8];
    v34[10] = 4;
    sub_1D56140F8();
    OUTLINED_FUNCTION_2_41();
    sub_1D503DD74(v25, v26);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    v27 = v23[9];
    v34[9] = 5;
    sub_1D56106B8();
    OUTLINED_FUNCTION_1_56();
    sub_1D503DD74(v28, v29);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    v30 = v23[10];
    v34[8] = 6;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_3_48();
    sub_1D503DD74(v31, v32);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

void MusicSiriRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v64 = sub_1D560C0A8();
  v2 = OUTLINED_FUNCTION_4(v64);
  v61 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v60 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v63 = v11;
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D56106B8();
  v12 = OUTLINED_FUNCTION_4(v62);
  v59 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v58 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = sub_1D56140F8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v58 - v36;
  v38 = *v0;
  v39 = v0[1];
  sub_1D5614E28();
  v65 = *(v0 + 16);
  MusicSiriRepresentation.Kind.rawValue.getter();
  sub_1D5614E28();

  v40 = v0[3];
  v41 = v0[4];
  sub_1D5614E28();
  if (v0[6])
  {
    v42 = v0[5];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v43 = type metadata accessor for MusicSiriRepresentation();
  sub_1D4F39AB0(v0 + v43[8], v37, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v37, 1, v23);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v26 + 32))(v31, v37, v23);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_41();
    sub_1D503DD74(v45, v46);
    sub_1D5614CB8();
    (*(v26 + 8))(v31, v23);
  }

  sub_1D4F39AB0(v0 + v43[9], v22, &qword_1EC7EC478, &unk_1D56299D0);
  v47 = v62;
  OUTLINED_FUNCTION_57(v22, 1, v62);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = v58;
    v48 = v59;
    (*(v59 + 32))(v58, v22, v47);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_56();
    sub_1D503DD74(v50, v51);
    sub_1D5614CB8();
    (*(v48 + 8))(v49, v47);
  }

  v52 = v63;
  sub_1D4F39AB0(v1 + v43[10], v63, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v53 = v64;
  OUTLINED_FUNCTION_57(v52, 1, v64);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v55 = v60;
    v54 = v61;
    (*(v61 + 32))(v60, v52, v53);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_48();
    sub_1D503DD74(v56, v57);
    sub_1D5614CB8();
    (*(v54 + 8))(v55, v53);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSiriRepresentation.hashValue.getter()
{
  sub_1D56162D8();
  MusicSiriRepresentation.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSiriRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE758, &qword_1D562C5B0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v55 = v23;
  v56 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - v27;
  v57 = type metadata accessor for MusicSiriRepresentation();
  v29 = OUTLINED_FUNCTION_14(v57);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v33 = v32;
  v35 = a1[3];
  v34 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D503D5D8();
  v36 = v58;
  sub_1D5616398();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v20;
  v53 = v14;
  v37 = v54;
  v67 = 0;
  *v33 = sub_1D5615F98();
  *(v33 + 8) = v38;
  v65 = 1;
  sub_1D503D680();
  sub_1D5615FD8();
  *(v33 + 16) = v66;
  v64 = 2;
  *(v33 + 24) = sub_1D5615F98();
  *(v33 + 32) = v39;
  v63 = 3;
  *(v33 + 40) = sub_1D5615F38();
  *(v33 + 48) = v40;
  sub_1D56140F8();
  v62 = 4;
  OUTLINED_FUNCTION_2_41();
  sub_1D503DD74(v41, v42);
  v43 = v58;
  sub_1D5615F78();
  v44 = v33;
  sub_1D4F39A1C(v43, v33 + *(v57 + 32), &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D56106B8();
  v61 = 5;
  OUTLINED_FUNCTION_1_56();
  sub_1D503DD74(v45, v46);
  v47 = v53;
  sub_1D5615F78();
  v48 = v57;
  sub_1D4F39A1C(v47, v44 + *(v57 + 36), &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D560C0A8();
  v60 = 6;
  OUTLINED_FUNCTION_3_48();
  sub_1D503DD74(v49, v50);
  sub_1D5615F78();
  (*(v55 + 8))(v28, v56);
  sub_1D4F39A1C(v8, v44 + *(v48 + 40), &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D503D6D4(v44, v37);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_1D503D738(v44);
}

uint64_t sub_1D503D574()
{
  sub_1D56162D8();
  MusicSiriRepresentation.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503D5B0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSiriRepresentation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D503D5D8()
{
  result = qword_1EC7EE748;
  if (!qword_1EC7EE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE748);
  }

  return result;
}

unint64_t sub_1D503D62C()
{
  result = qword_1EC7EE750;
  if (!qword_1EC7EE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE750);
  }

  return result;
}

unint64_t sub_1D503D680()
{
  result = qword_1EC7EE760;
  if (!qword_1EC7EE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE760);
  }

  return result;
}

uint64_t sub_1D503D6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D503D738(uint64_t a1)
{
  v2 = type metadata accessor for MusicSiriRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D503D798()
{
  result = qword_1EC7EE768;
  if (!qword_1EC7EE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE770, &qword_1D562C5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE768);
  }

  return result;
}

unint64_t sub_1D503D800()
{
  result = qword_1EC7EE778;
  if (!qword_1EC7EE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE778);
  }

  return result;
}

void sub_1D503D8D0()
{
  sub_1D4F18AF4();
  if (v0 <= 0x3F)
  {
    sub_1D503D9F8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68]);
    if (v1 <= 0x3F)
    {
      sub_1D503D9F8(319, &qword_1EDD5F220, MEMORY[0x1E6975D60]);
      if (v2 <= 0x3F)
      {
        sub_1D503D9F8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D503D9F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MusicSiriRepresentation.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D503DC1C()
{
  result = qword_1EC7EE788;
  if (!qword_1EC7EE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE788);
  }

  return result;
}

unint64_t sub_1D503DC74()
{
  result = qword_1EC7EE790;
  if (!qword_1EC7EE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE790);
  }

  return result;
}

unint64_t sub_1D503DCCC()
{
  result = qword_1EC7EE798;
  if (!qword_1EC7EE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE798);
  }

  return result;
}

unint64_t sub_1D503DD20()
{
  result = qword_1EC7EE7A0;
  if (!qword_1EC7EE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7A0);
  }

  return result;
}

uint64_t sub_1D503DD74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_26()
{

  return swift_once();
}

_BYTE *storeEnumTagSinglePayload for MusicLibraryMapping(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D503DEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicSuggestedPivotEntry.id.getter()
{
  MusicSuggestedPivotContainer.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_1D503DFE4(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7A8, &qword_1D562C9D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1D51FBFF8();
  v6 = sub_1D5611808();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D503E548(v5);
    return 0;
  }

  else
  {
    v7 = a1();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

uint64_t sub_1D503E128(void (*a1)(uint64_t), void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1D5613AF8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = type metadata accessor for MusicSuggestedPivotContainer();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  sub_1D503DEA4(v43, v32 - v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = (*(v14 + 32))(v19, v33, v11);
      a2(v35);
      return (*(v14 + 8))(v19, v11);
    }

    else
    {
      v38 = (*(v39 + 32))(v10, v33, v3);
      a3(v38);
      return (*(v39 + 8))(v10, v3);
    }
  }

  else
  {
    v37 = (*(v23 + 32))(v28, v33, v20);
    a1(v37);
    return (*(v23 + 8))(v28, v20);
  }
}

uint64_t MusicSuggestedPivotEntry.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503E448()
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503E484@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D503E4AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = sub_1D525C410(a1, &unk_1F50A19B0);
  if (v4)
  {
    return 0;
  }

  v6 = v3 < sub_1D525C410(a2, &unk_1F50A19B0);
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1D503E548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7A8, &qword_1D562C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D503E5B4()
{
  result = qword_1EC7EE7B0;
  if (!qword_1EC7EE7B0)
  {
    type metadata accessor for MusicSuggestedPivotEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7B0);
  }

  return result;
}

uint64_t type metadata accessor for MusicSuggestedPivotEntry()
{
  result = qword_1EC7EE7B8;
  if (!qword_1EC7EE7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D503E680()
{
  result = type metadata accessor for MusicSuggestedPivotContainer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotEntry.UserInteraction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D503E7C8()
{
  result = qword_1EC7EE7C8;
  if (!qword_1EC7EE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7C8);
  }

  return result;
}

unint64_t sub_1D503E820()
{
  result = qword_1EC7EE7D0;
  if (!qword_1EC7EE7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE7D8, qword_1D562CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7D0);
  }

  return result;
}

uint64_t _s9ParsedURLVMa()
{
  result = qword_1EC7EE7E0;
  if (!qword_1EC7EE7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D503E8FC()
{
  sub_1D560C0A8();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD53A08);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D503EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D560BB98();
  v5 = *(v4 - 8);
  v128 = v4;
  v129 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v132 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7F8, &qword_1D562CC48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_13();
  v125 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_13();
  v123 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v119 - v17;
  v18 = _s9ParsedURLVMa();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D560C0A8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v130 = v24;
  v26(v23, a1);
  v131 = a1;
  v27 = sub_1D560BF18();
  sub_1D54F62DC(0, *(v27 + 16), v27);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v35 = v33 >> 1;
  if (v31 != v33 >> 1)
  {
    if (v31 >= v35)
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v36 = (v29 + 16 * v31);
    v37 = *v36 == 47 && v36[1] == 0xE100000000000000;
    if (v37 || (result = sub_1D5616168(), (result & 1) != 0))
    {
      OUTLINED_FUNCTION_4_38();
      v27 = sub_1D4FE35EC(v38, v39, v40, v41, v31, v33);
      v29 = v42;
      v31 = v43;
      v33 = v44;
      result = swift_unknownObjectRelease();
      v35 = v33 >> 1;
    }
  }

  if (v31 == v35)
  {
    v45 = OUTLINED_FUNCTION_0_57();
    (v27)(v45);
    swift_unknownObjectRelease();
LABEL_21:
    (v27)(v23, v33);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  }

  if (v31 >= v35)
  {
    goto LABEL_63;
  }

  v126 = v23;
  v127 = v18;
  v46 = (v29 + 16 * v31);
  v27 = *v46;
  v47 = v46[1];
  OUTLINED_FUNCTION_4_38();
  v52 = sub_1D4FE35EC(v48, v49, v50, v51, v31, v33);
  OUTLINED_FUNCTION_6_40();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRelease();
  result = sub_1D554F8D0();
  v53 = v23 >> 1;
  if (result == 14)
  {
    if (v33 == v23 >> 1)
    {
      v54 = OUTLINED_FUNCTION_0_57();
      (v27)(v54);
      swift_unknownObjectRelease();

LABEL_20:
      v23 = v126;
      v18 = v127;
      goto LABEL_21;
    }

    v121 = a2;
    if (v33 >= v53)
    {
      goto LABEL_66;
    }

    v62 = (v29 + 16 * v33);
    v63 = v62[1];
    v120 = *v62;
    v61 = OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_6_40();

    swift_unknownObjectRelease();
    result = sub_1D554F8D0();
    if (result == 14)
    {
      v64 = OUTLINED_FUNCTION_0_57();
      (v27)(v64);
      swift_unknownObjectRelease();

      a2 = v121;
      goto LABEL_20;
    }

    v66 = v126;
    v65 = v127;
    v67 = &v126[v127[8]];
    *v67 = v27;
    v67[1] = v47;
    v66[v65[5]] = result;
    v53 = v23 >> 1;
    if (v33 == v23 >> 1)
    {
      v59 = 0;
      v60 = 0;
      goto LABEL_28;
    }

    a2 = v121;
  }

  else
  {
    v55 = result;

    v57 = v126;
    v56 = v127;
    v58 = &v126[v127[8]];
    *v58 = 0;
    *(v58 + 1) = 0;
    v57[v56[5]] = v55;
    if (v33 == v23 >> 1)
    {
      v121 = a2;
      v59 = 0;
      v60 = 0;
      v61 = v52;
      goto LABEL_28;
    }
  }

  v121 = a2;
  if (v33 >= v53)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v68 = (v29 + 16 * v33);
  v59 = *v68;
  v60 = v68[1];
  v61 = OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_6_40();

  result = swift_unknownObjectRelease();
  v53 = v23 >> 1;
LABEL_28:
  if (v33 == v53)
  {
    if (v60)
    {
      v69 = 0;
      v120 = v61;
      v71 = v126;
      v70 = v127;
      goto LABEL_35;
    }

    goto LABEL_49;
  }

  if (v33 < v53)
  {
    v72 = (v29 + 16 * v33);
    v69 = *v72;
    v73 = v72[1];
    OUTLINED_FUNCTION_4_38();
    v78 = sub_1D4FE35EC(v74, v75, v76, v77, v33, v23);

    swift_unknownObjectRelease();
    if (v60)
    {
      v120 = v78;
      v71 = v126;
      v70 = v127;
      if (v73)
      {
        v79 = v59;
        v59 = v69;
LABEL_36:
        v80 = v123;
        v81 = (v71 + v70[9]);
        *v81 = v79;
        v81[1] = v60;
        v82 = (v71 + v70[6]);
        *v82 = v59;
        v82[1] = v73;
        v83 = v124;
        v84 = v125;
        sub_1D560BBF8();
        sub_1D4E69910(v83, v80, &qword_1EC7ECE78, &qword_1D5623540);
        v85 = sub_1D560BC78();
        if (__swift_getEnumTagSinglePayload(v80, 1, v85) == 1)
        {
          sub_1D4E50004(v80, &qword_1EC7ECE78, &qword_1D5623540);
          v86 = v121;
LABEL_48:
          v96 = v122;
          v91 = v128;
          __swift_storeEnumTagSinglePayload(v122, 1, 1, v128);
LABEL_54:
          sub_1D4E69910(v96, v84, &qword_1EC7EE7F8, &qword_1D562CC48);
          if (__swift_getEnumTagSinglePayload(v84, 1, v91) == 1)
          {
            swift_unknownObjectRelease();
            v103 = OUTLINED_FUNCTION_2_42();
            v104(v103);
            sub_1D4E50004(v96, &qword_1EC7EE7F8, &qword_1D562CC48);
            sub_1D4E50004(v83, &qword_1EC7ECE78, &qword_1D5623540);
            v105 = v84;
            v106 = &qword_1EC7EE7F8;
            v107 = &qword_1D562CC48;
          }

          else
          {
            sub_1D560BB48();
            v109 = v108;
            (*(v129 + 8))(v84, v91);
            if (v109)
            {
              v110 = sub_1D560EED8();
              v112 = v111;
              swift_unknownObjectRelease();
              v113 = OUTLINED_FUNCTION_2_42();
              v114(v113);
              sub_1D4E50004(v96, &qword_1EC7EE7F8, &qword_1D562CC48);
              sub_1D4E50004(v83, &qword_1EC7ECE78, &qword_1D5623540);
              v115 = (v71 + v70[7]);
              *v115 = v110;
              v115[1] = v112;
LABEL_60:
              sub_1D503F7B4(v71, v86);
              __swift_storeEnumTagSinglePayload(v86, 0, 1, v70);
              return sub_1D503F818(v71);
            }

            swift_unknownObjectRelease();
            v116 = OUTLINED_FUNCTION_2_42();
            v117(v116);
            sub_1D4E50004(v96, &qword_1EC7EE7F8, &qword_1D562CC48);
            v106 = &qword_1EC7ECE78;
            v107 = &qword_1D5623540;
            v105 = v83;
          }

          sub_1D4E50004(v105, v106, v107);
          v118 = (v71 + v70[7]);
          *v118 = 0;
          v118[1] = 0;
          goto LABEL_60;
        }

        v87 = sub_1D560BBC8();
        result = (*(*(v85 - 8) + 8))(v80, v85);
        v86 = v121;
        if (!v87)
        {
          goto LABEL_48;
        }

        v88 = v121;
        v89 = 0;
        v90 = *(v87 + 16);
        v91 = v128;
        v92 = (v129 + 8);
        while (1)
        {
          if (v90 == v89)
          {

            v96 = v122;
            v101 = v122;
            v102 = 1;
            goto LABEL_53;
          }

          if (v89 >= *(v87 + 16))
          {
            break;
          }

          (*(v129 + 16))(v132, v87 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v89, v91);
          if (sub_1D560BB38() == 105 && v93 == 0xE100000000000000)
          {

LABEL_52:

            v91 = v128;
            v96 = v122;
            (*(v129 + 32))(v122, v132, v128);
            v101 = v96;
            v102 = 0;
LABEL_53:
            __swift_storeEnumTagSinglePayload(v101, v102, 1, v91);
            v86 = v88;
            v71 = v126;
            v70 = v127;
            v83 = v124;
            v84 = v125;
            goto LABEL_54;
          }

          v95 = sub_1D5616168();

          if (v95)
          {
            goto LABEL_52;
          }

          v91 = v128;
          result = (*v92)(v132, v128);
          ++v89;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_35:
      v73 = v60;
      v79 = v69;
      v60 = 0;
      goto LABEL_36;
    }

LABEL_49:
    v97 = v126;
    v18 = v127;

    swift_unknownObjectRelease();
    v98 = *(v25 + 8);
    v99 = v130;
    v98(v131, v130);
    v98(v97, v99);
    v100 = *&v97[*(v18 + 32) + 8];

    a2 = v121;
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

BOOL sub_1D503F3B8(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560BFB8() & 1) == 0)
  {
    return 0;
  }

  v4 = _s9ParsedURLVMa();
  v5 = v4[5];
  v6 = *(a2 + v5);
  v7 = sub_1D555941C(*(a1 + v5));
  v9 = v8;
  v11 = v7 == sub_1D555941C(v6) && v9 == v10;
  if (v11)
  {
  }

  else
  {
    v12 = sub_1D5616168();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v18 = v4[7];
  OUTLINED_FUNCTION_1_57();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v20);
    v24 = v11 && v22 == v23;
    if (!v24 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v25 = v4[8];
  OUTLINED_FUNCTION_1_57();
  if (v28)
  {
    if (!v26)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v27);
    v31 = v11 && v29 == v30;
    if (!v31 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v32 = v4[9];
  OUTLINED_FUNCTION_1_57();
  if (v35)
  {
    if (!v33)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v34);
    v38 = v11 && v36 == v37;
    return v38 || (sub_1D5616168() & 1) != 0;
  }

  return !v33;
}

uint64_t sub_1D503F538()
{
  sub_1D560C0A8();
  sub_1D503F76C(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  sub_1D5614CB8();
  v1 = _s9ParsedURLVMa();
  sub_1D555941C(*(v0 + v1[5]));
  sub_1D5614E28();

  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_1D5614E28();
  v5 = (v0 + v1[7]);
  if (v5[1])
  {
    v6 = *v5;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v7 = (v0 + v1[8]);
  if (v7[1])
  {
    v8 = *v7;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v9 = (v0 + v1[9]);
  if (!v9[1])
  {
    return sub_1D56162F8();
  }

  v10 = *v9;
  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t sub_1D503F6E4()
{
  sub_1D56162D8();
  sub_1D503F538();
  return sub_1D5616328();
}

uint64_t sub_1D503F730()
{
  sub_1D56162D8();
  sub_1D503F538();
  return sub_1D5616328();
}

uint64_t sub_1D503F76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D503F7B4(uint64_t a1, uint64_t a2)
{
  v4 = _s9ParsedURLVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D503F818(uint64_t a1)
{
  v2 = _s9ParsedURLVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCreditsSection.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v13 = sub_1D560D708();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  *a2 = v13;
  a2[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = a2 + *(type metadata accessor for MusicCreditsSection() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicCreditsSection()
{
  result = qword_1EC7EE898;
  if (!qword_1EC7EE898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCreditsSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicCreditsSection.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSection() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1D503FAE4(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v4, type metadata accessor for MusicCreditsSection);
  sub_1D560EC28();
  if (v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MusicCreditsSection.creditArtists.getter()
{
  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v0, type metadata accessor for MusicCreditsSection);

  return sub_1D560EC28();
}