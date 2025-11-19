unint64_t sub_1D4FEE4DC()
{
  result = qword_1EC7ED908;
  if (!qword_1EC7ED908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED908);
  }

  return result;
}

unint64_t sub_1D4FEE534()
{
  result = qword_1EC7ED910;
  if (!qword_1EC7ED910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED910);
  }

  return result;
}

unint64_t sub_1D4FEE58C()
{
  result = qword_1EC7ED918;
  if (!qword_1EC7ED918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED918);
  }

  return result;
}

unint64_t sub_1D4FEE5E4()
{
  result = qword_1EC7ED920;
  if (!qword_1EC7ED920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED920);
  }

  return result;
}

unint64_t sub_1D4FEE63C()
{
  result = qword_1EC7ED928;
  if (!qword_1EC7ED928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED928);
  }

  return result;
}

unint64_t sub_1D4FEE694()
{
  result = qword_1EC7ED930;
  if (!qword_1EC7ED930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED930);
  }

  return result;
}

unint64_t sub_1D4FEE6EC()
{
  result = qword_1EC7ED938;
  if (!qword_1EC7ED938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED938);
  }

  return result;
}

unint64_t sub_1D4FEE744()
{
  result = qword_1EC7ED940;
  if (!qword_1EC7ED940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED940);
  }

  return result;
}

unint64_t sub_1D4FEE79C()
{
  result = qword_1EC7ED948;
  if (!qword_1EC7ED948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED948);
  }

  return result;
}

unint64_t sub_1D4FEE7F4()
{
  result = qword_1EC7ED950;
  if (!qword_1EC7ED950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED950);
  }

  return result;
}

unint64_t sub_1D4FEE84C()
{
  result = qword_1EC7ED958;
  if (!qword_1EC7ED958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED958);
  }

  return result;
}

unint64_t sub_1D4FEE8A0(uint64_t a1)
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

unint64_t sub_1D4FEE8E4()
{
  result = qword_1EC7ED970;
  if (!qword_1EC7ED970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED970);
  }

  return result;
}

unint64_t sub_1D4FEE938()
{
  result = qword_1EC7ED978;
  if (!qword_1EC7ED978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED008, &qword_1D5623E38);
    sub_1D4FEE9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED978);
  }

  return result;
}

unint64_t sub_1D4FEE9BC()
{
  result = qword_1EC7ED980;
  if (!qword_1EC7ED980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED980);
  }

  return result;
}

unint64_t sub_1D4FEEA10()
{
  result = qword_1EC7ED988;
  if (!qword_1EC7ED988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED000, &unk_1D56257F0);
    sub_1D4FEEA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED988);
  }

  return result;
}

unint64_t sub_1D4FEEA94()
{
  result = qword_1EC7ED990;
  if (!qword_1EC7ED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED990);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_16MusicKitInternal0A24LibraryPlaylistViewModelC8RevisionV12SourceActionO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D4FEEBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4FEEBE4(uint64_t result, int a2, int a3)
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

unint64_t sub_1D4FEEC38()
{
  result = qword_1EC7ED998;
  if (!qword_1EC7ED998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED998);
  }

  return result;
}

uint64_t sub_1D4FEEC8C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D5616168() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;
    sub_1D4FEEE2C(v2);
    sub_1D4FEEE2C(v3);
    v5 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v8, &v7);
    sub_1D4FEEE48(v7);
    sub_1D4FEEE48(v8);
  }

  return v5 & 1;
}

uint64_t sub_1D4FEED24(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1D5614E28();
  return MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(a1);
}

uint64_t sub_1D4FEED68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D56162D8();
  sub_1D5614E28();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v5);
  return sub_1D5616328();
}

uint64_t sub_1D4FEEDDC()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_1D56162D8();
  sub_1D4FEED24(v3);
  return sub_1D5616328();
}

unint64_t sub_1D4FEEE2C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_1D4FEEE48(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t MusicRecentlyPlayedRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  sub_1D560E068();
  sub_1D560CCE8();
  (*(v5 + 8))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v18 = type metadata accessor for MusicRequestConfiguration();
  v19 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v17, v19 ^ 1u, 1, v18);
  sub_1D4F73F78(v17, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v18) != 1)
    {
      sub_1D4FEF060(v14);
    }
  }

  else
  {
    sub_1D4E56C6C(v14, a1);
  }

  return sub_1D4FEF060(v17);
}

uint64_t sub_1D4FEF060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FEF0C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  sub_1D560E0A8();
  return MusicRecentlyPlayedRequest.configuration.getter(a3);
}

uint64_t sub_1D4FEF108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for MusicRequestConfiguration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v11);
  sub_1D560E0A8();
  return MusicRecentlyPlayedRequest.configuration.setter(v11);
}

uint64_t MusicRecentlyPlayedRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  type metadata accessor for MusicRequestConfiguration();
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v5 + 16))(v10, v13, v2);
  sub_1D560E078();
  sub_1D4F581B8(a1);
  return (*(v5 + 8))(v13, v2);
}

void (*MusicRecentlyPlayedRequest.configuration.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64);
  a1[2] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  a1[3] = v5;
  MusicRecentlyPlayedRequest.configuration.getter(v5);
  return sub_1D4FEF390;
}

void sub_1D4FEF390(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_1D4F5A490(v3, v2);
    MusicRecentlyPlayedRequest.configuration.setter(v2);
    sub_1D4F581B8(v3);
  }

  else
  {
    MusicRecentlyPlayedRequest.configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t MusicRecentlyPlayedRequest.source.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D560D358();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560E088();
  result = (*(v5 + 88))(v9, v2);
  if (result != *MEMORY[0x1E6974E90])
  {
    if (result == *MEMORY[0x1E6974EA8])
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E98])
    {
      v11 = 2;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E88])
    {
      v11 = 3;
      goto LABEL_9;
    }

    if (result != *MEMORY[0x1E6974EA0])
    {
      result = (*(v5 + 8))(v9, v2);
    }
  }

  v11 = 0;
LABEL_9:
  *a1 = v11;
  return result;
}

uint64_t sub_1D4FEF574@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  sub_1D560E0A8();
  result = MusicRecentlyPlayedRequest.source.getter(&v9);
  *a3 = v9;
  return result;
}

uint64_t sub_1D4FEF5C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(v4 - 8);
  v9 = *a1;
  sub_1D560E0A8();
  return MusicRecentlyPlayedRequest.source.setter(&v9);
}

uint64_t MusicRecentlyPlayedRequest.source.setter(char *a1)
{
  v2 = sub_1D560D358();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  (*(v5 + 104))(v10, **(&unk_1E84C4A70 + *a1), v2);
  (*(v5 + 32))(v13, v10, v2);
  return sub_1D560E098();
}

uint64_t (*MusicRecentlyPlayedRequest.source.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  MusicRecentlyPlayedRequest.source.getter((a1 + 16));
  return sub_1D4FEF77C;
}

uint64_t sub_1D4FEF77C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (a2)
  {
    v8 = *(a1 + 16);
    v6 = &v8;
  }

  else
  {
    v9 = *(a1 + 16);
    v6 = &v9;
  }

  return MusicRecentlyPlayedRequest.source.setter(v6);
}

void static CloudTVEpisode.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v29);
  v421 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v420 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B8, &unk_1D5626FA0);
  OUTLINED_FUNCTION_14(v415);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4(v412);
  v411 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C8, &unk_1D5626FB8);
  OUTLINED_FUNCTION_14(v407);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v57);
  v58 = sub_1D560C0A8();
  v59 = OUTLINED_FUNCTION_4(v58);
  v423 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v422 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_2();
  v424 = v70;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v71 = OUTLINED_FUNCTION_14(v425);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  v426 = v76;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v432);
  v429 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  v427 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v83 = OUTLINED_FUNCTION_22(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  v428 = v87;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  v88 = OUTLINED_FUNCTION_14(v431);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_154_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v94 = OUTLINED_FUNCTION_4(v93);
  v434 = v95;
  v435 = v94;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_3();
  v433 = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_38_2();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14(v104);
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_45();
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v440);
  v437 = v108;
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13_3();
  v436 = v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v114 = OUTLINED_FUNCTION_22(v113);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_159_1();
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  v118 = OUTLINED_FUNCTION_14(v439);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_59_0();
  v123 = v121 - v122;
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v398 - v125;
  v127 = v28[1];
  v128 = v26[1];
  if (!v127)
  {
    if (v128)
    {
      goto LABEL_20;
    }

LABEL_10:
    v400 = v29;
    v401 = v58;
    v130 = type metadata accessor for CloudTVEpisode.Attributes(0);
    v438 = v26;
    v402 = v130;
    v131 = *(v130 + 20);
    v132 = *(v439 + 48);
    v403 = v28;
    sub_1D4F39AB0(v28 + v131, v126, &qword_1EC7EB5B8, &unk_1D56206A0);
    v133 = v438 + v131;
    v134 = v438;
    sub_1D4F39AB0(v133, &v126[v132], &qword_1EC7EB5B8, &unk_1D56206A0);
    v135 = v440;
    OUTLINED_FUNCTION_57(v126, 1, v440);
    if (v129)
    {
      OUTLINED_FUNCTION_57(&v126[v132], 1, v135);
      if (v129)
      {
        v399 = v123;
        sub_1D4E50004(v126, &qword_1EC7EB5B8, &unk_1D56206A0);
        goto LABEL_22;
      }
    }

    else
    {
      v136 = OUTLINED_FUNCTION_215();
      sub_1D4F39AB0(v136, v137, v138, v139);
      OUTLINED_FUNCTION_57(&v126[v132], 1, v135);
      if (!v140)
      {
        v399 = v123;
        v146 = v436;
        v145 = v437;
        (*(v437 + 32))(v436, &v126[v132], v135);
        sub_1D4F39858();
        v147 = sub_1D5614D18();
        v148 = v135;
        v149 = *(v145 + 8);
        v149(v146, v148);
        v149(v20, v148);
        v134 = v438;
        sub_1D4E50004(v126, &qword_1EC7EB5B8, &unk_1D56206A0);
        if ((v147 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v150 = v402;
        v151 = v402[6];
        v152 = v403;
        v153 = *(v134 + v151);
        if (*(v403 + v151))
        {
          if (!v153)
          {
            goto LABEL_20;
          }

          v154 = *(v134 + v151);

          OUTLINED_FUNCTION_116();
          sub_1D4EF9DD8();
          v156 = v155;

          if ((v156 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v153)
        {
          goto LABEL_20;
        }

        v157 = v150[7];
        v158 = *(v134 + v157);
        if (*(v152 + v157))
        {
          if (!v158)
          {
            goto LABEL_20;
          }

          v159 = *(v134 + v157);

          OUTLINED_FUNCTION_116();
          sub_1D4F2C07C();
          v161 = v160;

          if ((v161 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v158)
        {
          goto LABEL_20;
        }

        v162 = v150[8];
        v163 = *(v134 + v162 + 8);
        if (*(v152 + v162 + 8))
        {
          if (!v163)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_31_0((v152 + v162));
          v166 = v129 && v164 == v165;
          if (!v166 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v163)
        {
          goto LABEL_20;
        }

        v167 = v150[9];
        v168 = *(v134 + v167);
        if (*(v152 + v167))
        {
          if (!v168)
          {
            goto LABEL_20;
          }

          v169 = *(v134 + v167);

          OUTLINED_FUNCTION_116();
          sub_1D4F2C5FC();
          v171 = v170;

          if ((v171 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v168)
        {
          goto LABEL_20;
        }

        v172 = v150[10];
        v173 = *(v104 + 48);
        sub_1D4F39AB0(v152 + v172, v21, &qword_1EC7EC978, &unk_1D56222A0);
        v174 = v438 + v172;
        v175 = v438;
        sub_1D4F39AB0(v174, v21 + v173, &qword_1EC7EC978, &unk_1D56222A0);
        v176 = v435;
        OUTLINED_FUNCTION_57(v21, 1, v435);
        if (v129)
        {
          OUTLINED_FUNCTION_5_1(v21 + v173);
          if (v129)
          {
            sub_1D4E50004(v21, &qword_1EC7EC978, &unk_1D56222A0);
LABEL_57:
            v183 = v150[11];
            v184 = *(v152 + v183);
            v185 = *(v175 + v183);
            if (v184)
            {
              if (!v185)
              {
                goto LABEL_20;
              }

              OUTLINED_FUNCTION_159();
              sub_1D4F28F1C();
              OUTLINED_FUNCTION_70_2();
              if ((v184 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            else if (v185)
            {
              goto LABEL_20;
            }

            v186 = v150[12];
            v21 = v430;
            v187 = *(v431 + 48);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v188, v189, v190, v191);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v192, v193, v194, v195);
            v196 = v432;
            OUTLINED_FUNCTION_57(v21, 1, v432);
            if (v129)
            {
              OUTLINED_FUNCTION_43_0(v187 + v21);
              if (v129)
              {
                sub_1D4E50004(v21, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_72:
                v204 = v150[13];
                v205 = *(v152 + v204);
                v206 = *(v438 + v204);
                if (v205)
                {
                  if (!v206)
                  {
                    goto LABEL_20;
                  }

                  v207 = *(v438 + v204);

                  OUTLINED_FUNCTION_159();
                  sub_1D4F29174();
                  OUTLINED_FUNCTION_70_2();
                  if ((v205 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v206)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10(*(v208 + 56));
                if (v210)
                {
                  if (!v209)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v211)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10(*(v212 + 60));
                if (v214)
                {
                  if (!v213)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v215)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10(*(v216 + 64));
                if (v218)
                {
                  if (!v217)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v219)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                v221 = *(v220 + 68);
                OUTLINED_FUNCTION_134_2();
                v224 = *(v223 + v222);
                v225 = *(v438 + v222);
                if (v224)
                {
                  if (!v225 || (sub_1D4EF81E0(v224, v225) & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v225)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_77_3();
                v227 = *(v226 + 72);
                v228 = v426;
                v229 = *(v425 + 48);
                OUTLINED_FUNCTION_58_7();
                OUTLINED_FUNCTION_8_1();
                sub_1D4F39AB0(v230, v231, v232, v233);
                OUTLINED_FUNCTION_42_16();
                OUTLINED_FUNCTION_27_17(v228);
                if (v129)
                {
                  OUTLINED_FUNCTION_27_17(v229 + v426);
                  if (v129)
                  {
                    sub_1D4E50004(v426, &unk_1EC7E9CA8, &unk_1D561D1D0);
                    goto LABEL_104;
                  }
                }

                else
                {
                  v234 = v426;
                  sub_1D4F39AB0(v426, v424, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  OUTLINED_FUNCTION_27_17(v229 + v234);
                  if (!v235)
                  {
                    v228 = v423;
                    OUTLINED_FUNCTION_40_3();
                    v236 = v426;
                    v237 = OUTLINED_FUNCTION_174_1();
                    v238(v237);
                    OUTLINED_FUNCTION_2_28();
                    sub_1D4FF11E4(v239);
                    OUTLINED_FUNCTION_185_1();
                    OUTLINED_FUNCTION_160_3();
                    v240 = OUTLINED_FUNCTION_122_1();
                    v229(v240);
                    v241 = OUTLINED_FUNCTION_215();
                    v229(v241);
                    sub_1D4E50004(v236, &unk_1EC7E9CA8, &unk_1D561D1D0);
                    if ((v234 & 1) == 0)
                    {
                      goto LABEL_20;
                    }

LABEL_104:
                    OUTLINED_FUNCTION_77_3();
                    v243 = *(v242 + 76);
                    OUTLINED_FUNCTION_134_2();
                    v246 = *(v245 + v244);
                    v247 = *(v438 + v244);
                    if (v246 == 26)
                    {
                      if (v247 != 26)
                      {
                        goto LABEL_20;
                      }
                    }

                    else
                    {
                      if (v247 == 26)
                      {
                        goto LABEL_20;
                      }

                      v248 = sub_1D4FD39E0(v246);
                      v250 = v249;
                      if (v248 == sub_1D4FD39E0(v247) && v250 == v251)
                      {
                      }

                      else
                      {
                        OUTLINED_FUNCTION_63_1();
                        v253 = sub_1D5616168();

                        if ((v253 & 1) == 0)
                        {
                          goto LABEL_20;
                        }
                      }
                    }

                    OUTLINED_FUNCTION_77_3();
                    v255 = *(v254 + 80);
                    OUTLINED_FUNCTION_136_3();
                    if (v258)
                    {
                      if (!v256)
                      {
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_31_0(v257);
                      v261 = v129 && v259 == v260;
                      if (!v261 && (sub_1D5616168() & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v256)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_77_3();
                    v263 = *(v262 + 84);
                    OUTLINED_FUNCTION_134_2();
                    v266 = *(v265 + v264);
                    v267 = *(v438 + v264);
                    if (v266)
                    {
                      if (!v267)
                      {
                        goto LABEL_20;
                      }

                      v268 = *(v438 + v264);

                      OUTLINED_FUNCTION_159();
                      sub_1D4EF9F7C();
                      OUTLINED_FUNCTION_70_2();
                      if ((v266 & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v267)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_77_3();
                    v270 = *(v269 + 88);
                    v271 = *(v431 + 48);
                    OUTLINED_FUNCTION_58_7();
                    OUTLINED_FUNCTION_122_0(&v438);
                    OUTLINED_FUNCTION_8_1();
                    sub_1D4F39AB0(v272, v273, v274, v275);
                    OUTLINED_FUNCTION_42_16();
                    v276 = OUTLINED_FUNCTION_95_0();
                    OUTLINED_FUNCTION_57(v276, v277, v432);
                    if (v129)
                    {
                      v278 = OUTLINED_FUNCTION_86_1(&v438);
                      OUTLINED_FUNCTION_57(v278, v279, v432);
                      if (v129)
                      {
                        v280 = OUTLINED_FUNCTION_209_0();
                        sub_1D4E50004(v280, v281, v282);
                        goto LABEL_140;
                      }
                    }

                    else
                    {
                      v283 = OUTLINED_FUNCTION_145_0(&v438);
                      sub_1D4F39AB0(v283, v405, v284, v285);
                      OUTLINED_FUNCTION_57(&qword_1EC7EC960 + v271, 1, v432);
                      if (!v286)
                      {
                        OUTLINED_FUNCTION_81();
                        v288 = v406;
                        v228 = v427;
                        v289(v427, v406 + v271, v432);
                        sub_1D4F7BF60();
                        OUTLINED_FUNCTION_76(&v437);
                        v290 = OUTLINED_FUNCTION_51();
                        (unk_1D56334C0)(v290);
                        v291 = OUTLINED_FUNCTION_85();
                        (unk_1D56334C0)(v291);
                        sub_1D4E50004(v288, &qword_1EC7EC960, &unk_1D56334C0);
                        if ((&qword_1EC7EC960 & 1) == 0)
                        {
                          goto LABEL_20;
                        }

LABEL_140:
                        OUTLINED_FUNCTION_77_3();
                        v293 = *(v292 + 92);
                        v294 = *(v439 + 48);
                        OUTLINED_FUNCTION_58_7();
                        OUTLINED_FUNCTION_122_0(&v431);
                        OUTLINED_FUNCTION_8_1();
                        sub_1D4F39AB0(v295, v296, v297, v298);
                        OUTLINED_FUNCTION_42_16();
                        v299 = v228;
                        v300 = OUTLINED_FUNCTION_95_0();
                        OUTLINED_FUNCTION_57(v300, v301, v440);
                        if (v129)
                        {
                          OUTLINED_FUNCTION_57(v228 + v294, 1, v440);
                          if (v129)
                          {
                            sub_1D4E50004(v228, &qword_1EC7EB5B8, &unk_1D56206A0);
                            goto LABEL_150;
                          }
                        }

                        else
                        {
                          sub_1D4F39AB0(v228, v404, &qword_1EC7EB5B8, &unk_1D56206A0);
                          OUTLINED_FUNCTION_57(v228 + v294, 1, v440);
                          if (!v302)
                          {
                            v228 = v436;
                            OUTLINED_FUNCTION_81();
                            v304(v228, v299 + v294, v440);
                            sub_1D4F39858();
                            OUTLINED_FUNCTION_76(&v436);
                            v305 = OUTLINED_FUNCTION_51();
                            (unk_1D56206A0)(v305);
                            v306 = OUTLINED_FUNCTION_85();
                            (unk_1D56206A0)(v306);
                            sub_1D4E50004(v299, &qword_1EC7EB5B8, &unk_1D56206A0);
                            if ((&qword_1EC7EB5B8 & 1) == 0)
                            {
                              goto LABEL_20;
                            }

LABEL_150:
                            OUTLINED_FUNCTION_77_3();
                            v308 = *(v307 + 96);
                            OUTLINED_FUNCTION_134_2();
                            v311 = *(v310 + v309);
                            v312 = *(v438 + v309);
                            if (v311)
                            {
                              if (!v312)
                              {
                                goto LABEL_20;
                              }

                              v313 = *(v438 + v309);

                              OUTLINED_FUNCTION_159();
                              sub_1D4EF9FA4();
                              OUTLINED_FUNCTION_70_2();
                              if ((v311 & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v312)
                            {
                              goto LABEL_20;
                            }

                            OUTLINED_FUNCTION_77_3();
                            v315 = *(v314 + 100);
                            OUTLINED_FUNCTION_136_3();
                            if (v318)
                            {
                              if (!v316)
                              {
                                goto LABEL_20;
                              }

                              OUTLINED_FUNCTION_31_0(v317);
                              v321 = v129 && v319 == v320;
                              if (!v321 && (sub_1D5616168() & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v316)
                            {
                              goto LABEL_20;
                            }

                            OUTLINED_FUNCTION_77_3();
                            v323 = *(v322 + 104);
                            v324 = *(v407 + 48);
                            OUTLINED_FUNCTION_58_7();
                            OUTLINED_FUNCTION_122_0(&v441);
                            OUTLINED_FUNCTION_8_1();
                            sub_1D4F39AB0(v325, v326, v327, v328);
                            OUTLINED_FUNCTION_42_16();
                            v329 = OUTLINED_FUNCTION_95_0();
                            OUTLINED_FUNCTION_47_2(v329, v330, &a11);
                            if (v129)
                            {
                              v331 = OUTLINED_FUNCTION_86_1(&v441);
                              OUTLINED_FUNCTION_47_2(v331, v332, &a11);
                              if (!v129)
                              {
                                goto LABEL_171;
                              }

                              sub_1D4E50004(v409, &qword_1EC7ED9C0, &qword_1D5626FB0);
                            }

                            else
                            {
                              v333 = OUTLINED_FUNCTION_145_0(&v441);
                              sub_1D4F39AB0(v333, v408, v334, v335);
                              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&qword_1EC7ED9C0 + v324, 1, v412);
                              if (EnumTagSinglePayload == 1)
                              {
                                OUTLINED_FUNCTION_136(&a10);
                                v337(v408, v412);
LABEL_171:
                                v142 = &qword_1EC7ED9C8;
                                v143 = &unk_1D5626FB8;
                                v287 = &v441;
                                goto LABEL_138;
                              }

                              OUTLINED_FUNCTION_81();
                              v338 = v409;
                              v228 = v410;
                              v339(v410, v409 + v324, v412);
                              sub_1D4F0A770();
                              OUTLINED_FUNCTION_76(&v440);
                              v340 = OUTLINED_FUNCTION_51();
                              (qword_1D5626FB0)(v340);
                              v341 = OUTLINED_FUNCTION_85();
                              (qword_1D5626FB0)(v341);
                              sub_1D4E50004(v338, &qword_1EC7ED9C0, &qword_1D5626FB0);
                              if ((&qword_1EC7ED9C0 & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            OUTLINED_FUNCTION_77_3();
                            v343 = *(v342 + 108);
                            v344 = *(v425 + 48);
                            OUTLINED_FUNCTION_58_7();
                            OUTLINED_FUNCTION_122_0(&a12);
                            OUTLINED_FUNCTION_8_1();
                            sub_1D4F39AB0(v345, v346, v347, v348);
                            OUTLINED_FUNCTION_42_16();
                            OUTLINED_FUNCTION_27_17(v228);
                            if (v129)
                            {
                              OUTLINED_FUNCTION_119_3();
                              OUTLINED_FUNCTION_27_17(v344 + v349);
                              if (v129)
                              {
                                sub_1D4E50004(v413, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                goto LABEL_183;
                              }
                            }

                            else
                            {
                              v350 = OUTLINED_FUNCTION_145_0(&a12);
                              sub_1D4F39AB0(v350, v414, v351, v352);
                              OUTLINED_FUNCTION_27_17(&unk_1EC7E9CA8 + v344);
                              if (!v353)
                              {
                                v228 = v423;
                                OUTLINED_FUNCTION_40_3();
                                v354 = v413;
                                v355 = OUTLINED_FUNCTION_174_1();
                                v356(v355);
                                OUTLINED_FUNCTION_2_28();
                                sub_1D4FF11E4(v357);
                                OUTLINED_FUNCTION_115_5(&a13);
                                OUTLINED_FUNCTION_185_1();
                                OUTLINED_FUNCTION_160_3();
                                v358 = OUTLINED_FUNCTION_122_1();
                                v344(v358);
                                v359 = OUTLINED_FUNCTION_215();
                                v344(v359);
                                sub_1D4E50004(v354, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                if ((&unk_1EC7E9CA8 & 1) == 0)
                                {
                                  goto LABEL_20;
                                }

LABEL_183:
                                OUTLINED_FUNCTION_77_3();
                                v361 = *(v360 + 112);
                                v362 = *(v415 + 48);
                                OUTLINED_FUNCTION_58_7();
                                OUTLINED_FUNCTION_122_0(&a18);
                                OUTLINED_FUNCTION_8_1();
                                sub_1D4F39AB0(v363, v364, v365, v366);
                                OUTLINED_FUNCTION_42_16();
                                v367 = OUTLINED_FUNCTION_95_0();
                                OUTLINED_FUNCTION_47_2(v367, v368, &v432);
                                if (v129)
                                {
                                  v369 = OUTLINED_FUNCTION_86_1(&a18);
                                  OUTLINED_FUNCTION_47_2(v369, v370, &v432);
                                  if (v129)
                                  {
                                    sub_1D4E50004(v419, &qword_1EC7ED9B0, &unk_1D5631050);
LABEL_193:
                                    OUTLINED_FUNCTION_77_3();
                                    v380 = *(v379 + 116);
                                    v381 = *(v425 + 48);
                                    OUTLINED_FUNCTION_58_7();
                                    OUTLINED_FUNCTION_122_0(&a15);
                                    OUTLINED_FUNCTION_8_1();
                                    sub_1D4F39AB0(v382, v383, v384, v385);
                                    OUTLINED_FUNCTION_42_16();
                                    OUTLINED_FUNCTION_27_17(v228);
                                    if (v129)
                                    {
                                      OUTLINED_FUNCTION_27_17(v416 + v381);
                                      if (v129)
                                      {
                                        sub_1D4E50004(v416, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                        goto LABEL_20;
                                      }
                                    }

                                    else
                                    {
                                      v386 = OUTLINED_FUNCTION_145_0(&a15);
                                      sub_1D4F39AB0(v386, v417, v387, v388);
                                      OUTLINED_FUNCTION_27_17(&unk_1EC7E9CA8 + v381);
                                      if (!v389)
                                      {
                                        v390 = v422;
                                        OUTLINED_FUNCTION_81();
                                        v391 = v416;
                                        v392 = v416 + v381;
                                        v393 = v401;
                                        v394(v390, v392, v401);
                                        OUTLINED_FUNCTION_2_28();
                                        sub_1D4FF11E4(v395);
                                        v396 = v417;
                                        OUTLINED_FUNCTION_15_2();
                                        sub_1D5614D18();
                                        v397 = OUTLINED_FUNCTION_51();
                                        v393(v397);
                                        (v393)(v396, v393);
                                        sub_1D4E50004(v391, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                        goto LABEL_20;
                                      }

                                      (*(v423 + 8))(v417, v401);
                                    }

                                    v142 = &qword_1EC7E9FB0;
                                    v143 = &qword_1D562C590;
                                    v287 = &a15;
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  v371 = OUTLINED_FUNCTION_145_0(&a18);
                                  sub_1D4F39AB0(v371, v418, v372, v373);
                                  OUTLINED_FUNCTION_47_2(&qword_1EC7ED9B0 + v362, 1, &v432);
                                  if (!v374)
                                  {
                                    v228 = v420;
                                    OUTLINED_FUNCTION_81();
                                    v375 = v419;
                                    v376(v228, v419 + v362, v400);
                                    sub_1D4FF1130();
                                    OUTLINED_FUNCTION_76(&a17);
                                    v377 = OUTLINED_FUNCTION_51();
                                    (unk_1D5631050)(v377);
                                    v378 = OUTLINED_FUNCTION_85();
                                    (unk_1D5631050)(v378);
                                    sub_1D4E50004(v375, &qword_1EC7ED9B0, &unk_1D5631050);
                                    if ((&qword_1EC7ED9B0 & 1) == 0)
                                    {
                                      goto LABEL_20;
                                    }

                                    goto LABEL_193;
                                  }

                                  (*(v421 + 8))(v418, v400);
                                }

                                v142 = &qword_1EC7ED9B8;
                                v143 = &unk_1D5626FA0;
                                v287 = &a18;
                                goto LABEL_138;
                              }

                              (*(v423 + 8))(v414, v401);
                            }

                            v142 = &qword_1EC7E9FB0;
                            v143 = &qword_1D562C590;
                            v287 = &a12;
                            goto LABEL_138;
                          }

                          OUTLINED_FUNCTION_203_0();
                          v303(v404, v440);
                        }

                        v142 = &qword_1EC7EC330;
                        v143 = &qword_1D56222C0;
                        v144 = v228;
                        goto LABEL_19;
                      }

                      (*(v429 + 8))(v405, v432);
                    }

                    v142 = &qword_1EC7EC968;
                    v143 = &unk_1D5622290;
                    v287 = &v438;
LABEL_138:
                    v144 = *(v287 - 32);
                    goto LABEL_19;
                  }

                  (*(v423 + 8))(v424, v401);
                }

                v142 = &qword_1EC7E9FB0;
                v143 = &qword_1D562C590;
                v144 = v426;
LABEL_19:
                sub_1D4E50004(v144, v142, v143);
                goto LABEL_20;
              }
            }

            else
            {
              sub_1D4F39AB0(v21, v428, &qword_1EC7EC960, &unk_1D56334C0);
              OUTLINED_FUNCTION_43_0(v187 + v21);
              if (!v197)
              {
                OUTLINED_FUNCTION_40_3();
                v201 = v427;
                v202(v427, v187 + v21, v196);
                sub_1D4F7BF60();
                OUTLINED_FUNCTION_185_1();
                OUTLINED_FUNCTION_160_3();
                v187(v201, v196);
                v203 = OUTLINED_FUNCTION_164_0();
                (v187)(v203);
                sub_1D4E50004(v21, &qword_1EC7EC960, &unk_1D56334C0);
                if ((&qword_1EC7EC960 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_72;
              }

              v198 = *(v429 + 8);
              v199 = OUTLINED_FUNCTION_164_0();
              v200(v199);
            }

            v142 = &qword_1EC7EC968;
            v143 = &unk_1D5622290;
LABEL_55:
            v144 = v21;
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D4F39AB0(v21, v22, &qword_1EC7EC978, &unk_1D56222A0);
          OUTLINED_FUNCTION_5_1(v21 + v173);
          if (!v177)
          {
            v178 = v434;
            OUTLINED_FUNCTION_81();
            v179(v433, v21 + v173, v176);
            sub_1D4F7C058();
            v180 = sub_1D5614D18();
            v181 = *(v178 + 8);
            v182 = OUTLINED_FUNCTION_93();
            v181(v182);
            (v181)(v22, v176);
            v175 = v438;
            sub_1D4E50004(v21, &qword_1EC7EC978, &unk_1D56222A0);
            if ((v180 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_57;
          }

          (*(v434 + 8))(v22, v176);
        }

        v142 = &qword_1EC7EC980;
        v143 = &qword_1D5628710;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_203_0();
      v141(v20, v135);
    }

    v142 = &qword_1EC7EC330;
    v143 = &qword_1D56222C0;
    v144 = v126;
    goto LABEL_19;
  }

  if (v128)
  {
    v129 = *v28 == *v26 && v127 == v128;
    if (v129 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4FF1130()
{
  result = qword_1EC7ED9D0;
  if (!qword_1EC7ED9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EC7ED9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9D0);
  }

  return result;
}

unint64_t sub_1D4FF11E4(uint64_t a1)
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

uint64_t sub_1D4FF1228(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001D5681180 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x80000001D56811A0 == a2;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1684957547 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65725074726F6873 && a2 == 0xEC00000077656976;
                                              if (v27 || (sub_1D5616168() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x4C5255776F6873 && a2 == 0xE700000000000000;
                                                if (v28 || (sub_1D5616168() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                                  if (v29 || (sub_1D5616168() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v31 = sub_1D5616168();

                                                    if (v31)
                                                    {
                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      return 26;
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

unint64_t sub_1D4FF1A20(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x696C696261706163;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6867697279706F63;
      break;
    case 5:
      result = 0x73746964657263;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 9:
      result = 0x6169726F74696465;
      break;
    case 10:
      result = 0x4E65646F73697065;
      break;
    case 11:
    case 18:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x76697372656D6D69;
      break;
    case 15:
      result = 1684957547;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x73726566666FLL;
      break;
    case 19:
      result = 0x4177656976657270;
      break;
    case 20:
      result = 0x7377656976657270;
      break;
    case 21:
      result = 0x44657361656C6572;
      break;
    case 22:
      result = 0x65725074726F6873;
      break;
    case 23:
      result = 0x4C5255776F6873;
      break;
    case 24:
      result = 0xD000000000000010;
      break;
    case 25:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FF1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FF1228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FF1D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FF1A18();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FF1D54(uint64_t a1)
{
  v2 = sub_1D4FF2414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF1D90(uint64_t a1)
{
  v2 = sub_1D4FF2414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVEpisode.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9E0, &qword_1D5626FC8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D4FF2414();
  OUTLINED_FUNCTION_140_4();
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v1)
  {
    v11 = type metadata accessor for CloudTVEpisode.Attributes(0);
    v12 = v11[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v11[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    sub_1D4FF2468();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v11[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3();
    v13 = (v2 + v11[8]);
    v14 = *v13;
    v15 = v13[1];
    OUTLINED_FUNCTION_37_1(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v11[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC7928();
    OUTLINED_FUNCTION_20_3();
    v29 = v11[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v11[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3();
    v30 = v11[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_53_10(v30);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v11[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_154(v11[14]);
    OUTLINED_FUNCTION_37_1(10);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v11[15]);
    OUTLINED_FUNCTION_37_1(11);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v11[16]);
    OUTLINED_FUNCTION_37_1(12);
    sub_1D5616058();
    OUTLINED_FUNCTION_42_2(v11[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3();
    v28 = v11[18];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v16);
    OUTLINED_FUNCTION_53_10(v28);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v31 = *(v2 + v11[19]);
    sub_1D4FF2540();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v17 = (v2 + v11[20]);
    v18 = *v17;
    v19 = v17[1];
    OUTLINED_FUNCTION_37_1(16);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v11[21]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_53_10(v11[22]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v11[23]);
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v11[24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    sub_1D4FF2594();
    OUTLINED_FUNCTION_20_3();
    v20 = (v2 + v11[25]);
    v21 = *v20;
    v22 = v20[1];
    OUTLINED_FUNCTION_37_1(21);
    sub_1D5616028();
    v23 = v11[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF2618();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v11[27]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v24 = v11[28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF2700();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v11[29]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  v25 = *(v5 + 8);
  v26 = OUTLINED_FUNCTION_86_0();
  v27(v26);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FF2414()
{
  result = qword_1EC7ED9E8;
  if (!qword_1EC7ED9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9E8);
  }

  return result;
}

unint64_t sub_1D4FF2468()
{
  result = qword_1EC7ED9F8;
  if (!qword_1EC7ED9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    sub_1D4FF24EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9F8);
  }

  return result;
}

unint64_t sub_1D4FF24EC()
{
  result = qword_1EC7EDA00;
  if (!qword_1EC7EDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA00);
  }

  return result;
}

unint64_t sub_1D4FF2540()
{
  result = qword_1EC7EDA08;
  if (!qword_1EC7EDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA08);
  }

  return result;
}

unint64_t sub_1D4FF2594()
{
  result = qword_1EC7EDA18;
  if (!qword_1EC7EDA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    sub_1D4FF2618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA18);
  }

  return result;
}

unint64_t sub_1D4FF2618()
{
  result = qword_1EC7EDA20;
  if (!qword_1EC7EDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF11E4(&unk_1EC7EDA28);
    sub_1D4FF11E4(&unk_1EC7EDA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA20);
  }

  return result;
}

unint64_t sub_1D4FF2700()
{
  result = qword_1EC7EDA38;
  if (!qword_1EC7EDA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EDD55388);
    sub_1D4FF11E4(&unk_1EDD55390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA38);
  }

  return result;
}

void CloudTVEpisode.Attributes.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v204);
  v187 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v186 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v201 = v34;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4(v199);
  v185 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v197 = v44;
  v45 = sub_1D560C0A8();
  v46 = OUTLINED_FUNCTION_4(v45);
  v202 = v47;
  v203 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v205 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  v200 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  v198 = v57;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v190 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v61 = OUTLINED_FUNCTION_4(v60);
  v195 = v62;
  v196 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v194 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v68 = OUTLINED_FUNCTION_22(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_59_0();
  v73 = v71 - v72;
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  v189 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v76);
  v78 = v77;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_71_1();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  v188 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v87);
  v193 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v192 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v94 = OUTLINED_FUNCTION_22(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13();
  v191 = v97;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v182 - v99;
  v101 = v20[1];
  v206 = v87;
  if (v101)
  {
    v102 = *v20;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    v87 = v206;
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v103 = type metadata accessor for CloudTVEpisode.Attributes(0);
  sub_1D4F39AB0(v20 + v103[5], v100, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_32_1(v100);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v182 = v21;
    v105 = v193;
    v106 = *(v193 + 32);
    v183 = v78;
    v107 = v73;
    v108 = v192;
    v106(v192, v100, v87);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v109 = v108;
    v73 = v107;
    v78 = v183;
    (*(v105 + 8))(v109, v87);
  }

  if (*(v20 + v103[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F08620();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v20 + v103[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v110 = (v20 + v103[8]);
  if (v110[1])
  {
    v111 = *v110;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v20 + v103[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35BFC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v112 = v202;
  v113 = v188;
  sub_1D4F39AB0(v24 + v103[10], v188, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_43_0(v113);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v114 = *(v78 + 32);
    v115 = OUTLINED_FUNCTION_123_2();
    v116(v115);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v117 = *(v78 + 8);
    v118 = OUTLINED_FUNCTION_215();
    v119(v118);
  }

  v120 = v203;
  v121 = v196;
  if (*(v24 + v103[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v122 = v189;
  sub_1D4F39AB0(v24 + v103[12], v189, &qword_1EC7EC960, &unk_1D56334C0);
  v123 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v123, v124, v121);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v126 = v194;
    v125 = v195;
    OUTLINED_FUNCTION_81();
    v127(v126, v122, v121);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v125 + 8))(v126, v121);
  }

  if (*(v24 + v103[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157(v103[14]);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v129 = *v128;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v129);
  }

  OUTLINED_FUNCTION_157(v103[15]);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v131 = *v130;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v131);
  }

  OUTLINED_FUNCTION_157(v103[16]);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v133 = *v132;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v133);
  }

  if (*(v24 + v103[17]))
  {
    OUTLINED_FUNCTION_27();
    v134 = OUTLINED_FUNCTION_24();
    sub_1D4F06928(v134, v135);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v136 = v190;
  sub_1D4F39AB0(v24 + v103[18], v190, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v136);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v137 = *(v112 + 32);
    v138 = v205;
    v139 = OUTLINED_FUNCTION_116();
    v140(v139);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v141);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v112 + 8))(v138, v120);
  }

  v142 = *(v24 + v103[19]);
  if (v142 == 26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4FD39E0(v142);
    sub_1D5614E28();
  }

  v143 = (v24 + v103[20]);
  if (v143[1])
  {
    v144 = *v143;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v24 + v103[21]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F085F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v24 + v103[22], v73, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v73, 1, v121);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v146 = v194;
    v145 = v195;
    OUTLINED_FUNCTION_81();
    v147(v146, v73, v121);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v145 + 8))(v146, v121);
  }

  v148 = v206;
  v149 = v191;
  sub_1D4F39AB0(v24 + v103[23], v191, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_43_0(v149);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v121 = v192;
    v150 = v193;
    OUTLINED_FUNCTION_40_3();
    v151(v121, v149, v148);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v152 = *(v150 + 8);
    v153 = OUTLINED_FUNCTION_122_1();
    v154(v153);
  }

  if (*(v24 + v103[24]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F085D0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v155 = (v24 + v103[25]);
  if (v155[1])
  {
    v156 = *v155;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v157 = v204;
  v158 = v197;
  sub_1D4F39AB0(v24 + v103[26], v197, &qword_1EC7ED9C0, &qword_1D5626FB0);
  v159 = OUTLINED_FUNCTION_35_1();
  v160 = v199;
  OUTLINED_FUNCTION_57(v159, v161, v199);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_167_0(&a18);
    v163 = v112;
    v164 = v184;
    (*(v162 + 32))(v184, v158, v160);
    OUTLINED_FUNCTION_27();
    sub_1D4F0A6BC();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v165 = v164;
    v112 = v163;
    (*(v121 + 8))(v165, v160);
  }

  v166 = v198;
  sub_1D4F39AB0(v24 + v103[27], v198, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v166);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v167 = v205;
    (*(v112 + 32))(v205, v166, v120);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v168);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v112 + 8))(v167, v120);
  }

  v169 = v201;
  sub_1D4F39AB0(v24 + v103[28], v201, &qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_43_0(v169);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v171 = v186;
    v170 = v187;
    OUTLINED_FUNCTION_40_3();
    v172(v171, v169, v157);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v173 = *(v170 + 8);
    v174 = OUTLINED_FUNCTION_122_1();
    v175(v174);
  }

  v176 = v200;
  sub_1D4F39AB0(v24 + v103[29], v200, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v176);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v177 = *(v112 + 32);
    v178 = v205;
    v179 = OUTLINED_FUNCTION_63_1();
    v180(v179);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v181);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v112 + 8))(v178, v120);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v165 = v10;
  v15 = v14;
  v158 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_12(v26, v149);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v157 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v156 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_194_1(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v153 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v149 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_59_0();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_159_1();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA50, &qword_1D5626FE8);
  OUTLINED_FUNCTION_4(v160);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_9();
  v164 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v61 = OUTLINED_FUNCTION_14(v164);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  v162 = v15;
  v163 = v64;
  v65 = v15[4];
  v66 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1D4FF2414();
  v161 = v13;
  v67 = v165;
  sub_1D5616398();
  if (v67)
  {
    v165 = v67;
    v69 = 0;
    v70 = 0;
    LODWORD(v43) = 0;
    v71 = 0;
    v72 = 0;
    OUTLINED_FUNCTION_113_5();
    LODWORD(v150) = 0;
    OUTLINED_FUNCTION_6_34();
  }

  else
  {
    v165 = v12;
    v151 = v54;
    v152 = v57;
    v69 = v160;
    v68 = sub_1D5615F38();
    LODWORD(v12) = 0;
    v87 = v163;
    *v163 = v68;
    v87[1] = v88;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    v89 = sub_1D4F886BC();
    v90 = v11;
    sub_1D5615F78();
    v91 = v164;
    v150 = v89;
    sub_1D4F39A1C(v90, v87 + v164[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    v166 = 2;
    sub_1D4FFFEEC();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v87 + v91[6]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v166 = 3;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    v72 = v152;
    *(v87 + v91[7]) = a10;
    LOBYTE(a10) = 4;
    v92 = sub_1D5615F38();
    v93 = (v87 + v91[8]);
    *v93 = v92;
    v93[1] = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v166 = 5;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v87 + v91[9]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 6;
    sub_1D4F888C0();
    OUTLINED_FUNCTION_188();
    v95 = v165;
    sub_1D5615F78();
    sub_1D4F39A1C(v95, v87 + v91[10], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v166 = 7;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v87 + v91[11]) = a10;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F88A24();
    OUTLINED_FUNCTION_188();
    v149 = v96;
    sub_1D5615F78();
    v165 = 0;
    sub_1D4F39A1C(v43, v87 + v91[12], &qword_1EC7EC960, &unk_1D56334C0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v166 = 9;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_16_24();
    v97 = v165;
    sub_1D5615F78();
    v165 = v97;
    if (v97)
    {
      v98 = OUTLINED_FUNCTION_34_17();
      v99(v98);
      LODWORD(v153) = 0;
      LODWORD(v155) = 0;
      LODWORD(v156) = 0;
      LODWORD(v157) = 0;
      LODWORD(v158) = 0;
      LODWORD(v159) = 0;
      LODWORD(v160) = 0;
      OUTLINED_FUNCTION_0_45();
      LODWORD(v151) = v100;
    }

    else
    {
      OUTLINED_FUNCTION_213_0();
      *(v103 + *(v101 + 52)) = v102;
      OUTLINED_FUNCTION_43_15(10);
      v104 = sub_1D5615F68();
      v165 = 0;
      OUTLINED_FUNCTION_107_4(v104, v105, v164[14]);
      OUTLINED_FUNCTION_43_15(11);
      v106 = sub_1D5615F68();
      v165 = 0;
      OUTLINED_FUNCTION_107_4(v106, v107, v164[15]);
      OUTLINED_FUNCTION_43_15(12);
      v108 = sub_1D5615F68();
      v165 = 0;
      OUTLINED_FUNCTION_107_4(v108, v109, v164[16]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v166 = 13;
      sub_1D4F88BF4(&qword_1EDD52778);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_125_4();
      v165 = 0;
      OUTLINED_FUNCTION_213_0();
      *(v112 + *(v110 + 68)) = v111;
      sub_1D560C0A8();
      OUTLINED_FUNCTION_2_28();
      sub_1D4FF11E4(v113);
      v66 = v161;
      v114 = v165;
      sub_1D5615F78();
      v165 = v114;
      if (v114)
      {
        v115 = OUTLINED_FUNCTION_34_17();
        v116(v115);
        LODWORD(v156) = 0;
        LODWORD(v157) = 0;
        LODWORD(v158) = 0;
        LODWORD(v159) = 0;
        LODWORD(v160) = 0;
        OUTLINED_FUNCTION_0_45();
        LODWORD(v151) = v117;
        LODWORD(v153) = v117;
        LODWORD(v155) = v117;
      }

      else
      {
        sub_1D4F39A1C(v159, v163 + v164[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
        v166 = 15;
        sub_1D4FFFFC4();
        v66 = v161;
        v118 = v165;
        sub_1D5615F78();
        v165 = v118;
        if (v118)
        {
          v120 = OUTLINED_FUNCTION_34_17();
          v121(v120);
          LODWORD(v157) = 0;
          LODWORD(v158) = 0;
          LODWORD(v159) = 0;
          LODWORD(v160) = 0;
          OUTLINED_FUNCTION_0_45();
          LODWORD(v151) = v122;
          LODWORD(v153) = v122;
          LODWORD(v155) = v122;
          LODWORD(v156) = v122;
        }

        else
        {
          *(v163 + v164[19]) = 14;
          OUTLINED_FUNCTION_43_15(16);
          v119 = sub_1D5615F38();
          v165 = 0;
          v123 = (v163 + v164[20]);
          *v123 = v119;
          v123[1] = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
          v166 = 17;
          sub_1D4F88C5C();
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_125_4();
          v165 = 0;
          OUTLINED_FUNCTION_213_0();
          *(v127 + *(v125 + 84)) = v126;
          OUTLINED_FUNCTION_148(18);
          v66 = v161;
          v128 = v165;
          sub_1D5615F78();
          v165 = v128;
          if (v128)
          {
            v129 = OUTLINED_FUNCTION_34_17();
            v130(v129);
            LODWORD(v159) = 0;
            LODWORD(v160) = 0;
            OUTLINED_FUNCTION_0_45();
            OUTLINED_FUNCTION_28_22(v131);
            LODWORD(v158) = v132;
          }

          else
          {
            sub_1D4F39A1C(v153, v163 + v164[22], &qword_1EC7EC960, &unk_1D56334C0);
            OUTLINED_FUNCTION_148(19);
            v66 = v161;
            v133 = v165;
            sub_1D5615F78();
            v165 = v133;
            if (!v133)
            {
              sub_1D4F39A1C(v151, v163 + v164[23], &qword_1EC7EB5B8, &unk_1D56206A0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA10, &qword_1D5626FE0);
              v166 = 20;
              sub_1D5000018();
              OUTLINED_FUNCTION_29_1();
              OUTLINED_FUNCTION_125_4();
              v165 = 0;
              OUTLINED_FUNCTION_213_0();
              *(v140 + *(v138 + 96)) = v139;
              OUTLINED_FUNCTION_43_15(21);
              v141 = sub_1D5615F38();
              v165 = 0;
              v142 = (v163 + v164[25]);
              *v142 = v141;
              v142[1] = v143;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
              sub_1D500009C();
              OUTLINED_FUNCTION_188();
              OUTLINED_FUNCTION_80_4();
              v165 = 0;
              sub_1D4F39A1C(v154, v163 + v164[26], &qword_1EC7ED9C0, &qword_1D5626FB0);
              OUTLINED_FUNCTION_148(23);
              OUTLINED_FUNCTION_177_1();
              v165 = 0;
              sub_1D4F39A1C(v156, v163 + v164[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
              sub_1D5000184();
              OUTLINED_FUNCTION_188();
              OUTLINED_FUNCTION_80_4();
              v165 = 0;
              sub_1D4F39A1C(v155, v163 + v164[28], &qword_1EC7ED9B0, &unk_1D5631050);
              OUTLINED_FUNCTION_148(25);
              OUTLINED_FUNCTION_177_1();
              v165 = 0;
              v144 = OUTLINED_FUNCTION_34_17();
              v145(v144);
              v146 = v163;
              sub_1D4F39A1C(v157, v163 + v164[29], &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_14_24();
              sub_1D50002E0(v146, v158, v147);
              __swift_destroy_boxed_opaque_existential_1(v162);
              OUTLINED_FUNCTION_13_29();
              sub_1D500033C(v146, v148);
              goto LABEL_46;
            }

            v134 = OUTLINED_FUNCTION_34_17();
            v135(v134);
            LODWORD(v160) = 0;
            OUTLINED_FUNCTION_0_45();
            OUTLINED_FUNCTION_28_22(v136);
            LODWORD(v158) = v137;
            LODWORD(v159) = v137;
          }
        }
      }
    }
  }

  v73 = v163;
  v74 = v164;
  __swift_destroy_boxed_opaque_existential_1(v162);
  if (v69)
  {
    LODWORD(v162) = 0;
    LODWORD(v152) = 0;
    LODWORD(v154) = 0;
    v75 = v73[1];

    if (v70)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v154) = 0;
    LODWORD(v152) = 0;
    LODWORD(v162) = 0;
    if (v70)
    {
LABEL_6:
      sub_1D4E50004(v73 + v74[5], &qword_1EC7EB5B8, &unk_1D56206A0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  if (!v43)
  {
LABEL_7:
    if (v71)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v82 = *(v73 + v74[6]);

  if (v71)
  {
LABEL_8:
    v76 = *(v73 + v74[7]);

    if ((v72 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v72)
  {
LABEL_9:
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v83 = *(v73 + v74[8] + 8);

  if (v12)
  {
LABEL_10:
    v77 = *(v73 + v74[9]);

    if ((v66 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v66)
  {
LABEL_11:
    if (v150)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D4E50004(v73 + v74[10], &qword_1EC7EC978, &unk_1D56222A0);
  if (v150)
  {
LABEL_12:
    v78 = *(v73 + v74[11]);

    if ((v151 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v151)
  {
LABEL_13:
    if (v153)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1D4E50004(v73 + v74[12], &qword_1EC7EC960, &unk_1D56334C0);
  if (v153)
  {
LABEL_14:
    v79 = *(v73 + v74[13]);

    if ((v155 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v155)
  {
LABEL_15:
    if (v156)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  v84 = *(v73 + v74[17]);

  if (v156)
  {
LABEL_16:
    sub_1D4E50004(v73 + v74[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v157 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v157)
  {
LABEL_17:
    if (v158)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v85 = *(v73 + v74[20] + 8);

  if (v158)
  {
LABEL_18:
    v80 = *(v73 + v74[21]);

    if ((v159 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v159)
  {
LABEL_19:
    if (v160)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_1D4E50004(v73 + v74[22], &qword_1EC7EC960, &unk_1D56334C0);
  if (v160)
  {
LABEL_20:
    sub_1D4E50004(v73 + v74[23], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v161 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v86 = *(v73 + v74[24]);

    if (v162)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_41:
  if (v161)
  {
    goto LABEL_42;
  }

LABEL_21:
  if (v162)
  {
LABEL_22:
    v81 = *(v73 + v74[25] + 8);
  }

LABEL_23:
  if (v152)
  {
    sub_1D4E50004(v73 + v74[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v154 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v154)
  {
LABEL_45:
    sub_1D4E50004(v73 + v74[28], &qword_1EC7ED9B0, &unk_1D5631050);
  }

LABEL_46:
  OUTLINED_FUNCTION_26();
}

MusicKitInternal::CloudTVEpisode::Relationships::CodingKeys_optional __swiftcall CloudTVEpisode.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVEpisode.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0x736E6F73616573;
  if (*v0 != 1)
  {
    v1 = 2003789939;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365726E6567;
  }
}

uint64_t sub_1D4FF483C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVEpisode.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FF487C(uint64_t a1)
{
  v2 = sub_1D500028C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF48B8(uint64_t a1)
{
  v2 = sub_1D500028C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVEpisode.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v100);
  v97 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_12(v9, v95);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v14);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA60, &unk_1D5627000);
  OUTLINED_FUNCTION_14(v98);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v18);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v103);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v101 = v26;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0F0, &unk_1D5623EF8);
  OUTLINED_FUNCTION_14(v102);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_114();
  v36 = OUTLINED_FUNCTION_224();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_71_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_161_3(v46);
  OUTLINED_FUNCTION_222_0();
  v47 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v47, v48, v30);
  if (v49)
  {
    OUTLINED_FUNCTION_57(v4 + v1, 1, v30);
    if (v49)
    {
      sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
      goto LABEL_12;
    }

LABEL_9:
    v53 = &qword_1EC7ECA68;
    v54 = &unk_1D5622330;
LABEL_10:
    v55 = v1;
LABEL_21:
    sub_1D4E50004(v55, v53, v54);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_57(v4 + v1, 1, v30);
  if (v49)
  {
    v50 = *(v32 + 8);
    v51 = OUTLINED_FUNCTION_123_2();
    v52(v51);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v56(v3, v4 + v1, v30);
  sub_1D4F88E6C();
  OUTLINED_FUNCTION_223_0();
  v57 = OUTLINED_FUNCTION_195_1();
  v4(v57);
  v58 = OUTLINED_FUNCTION_123_2();
  v4(v58);
  sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if ((&qword_1EC7EA7F0 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v59 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_217_0(v59);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v60, v61, v62, v63);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v64, v65, v66, v67);
  OUTLINED_FUNCTION_57(v0, 1, v103);
  if (v49)
  {
    OUTLINED_FUNCTION_9_25(&qword_1EC7EA7F0 + v0);
    if (v49)
    {
      sub_1D4E50004(v0, &qword_1EC7ECD90, &unk_1D5622F80);
LABEL_24:
      v75 = *(v3 + 24);
      v76 = *(v98 + 48);
      v1 = v99;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v77, v78, v79, v80);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v81, v82, v83, v84);
      v85 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_57(v85, v86, v100);
      if (v49)
      {
        OUTLINED_FUNCTION_43_0(v99 + v76);
        if (v49)
        {
          sub_1D4E50004(v99, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v99, v96, &qword_1EC7ECA58, &unk_1D5622310);
        OUTLINED_FUNCTION_43_0(v99 + v76);
        if (!v87)
        {
          OUTLINED_FUNCTION_40_3();
          v91 = OUTLINED_FUNCTION_207_0();
          v92(v91);
          sub_1D4F88DE8();
          OUTLINED_FUNCTION_85();
          OUTLINED_FUNCTION_185_1();
          v93 = OUTLINED_FUNCTION_221();
          (unk_1D5622310)(v93);
          v94 = OUTLINED_FUNCTION_215();
          (unk_1D5622310)(v94);
          sub_1D4E50004(v99, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }

        v88 = *(v97 + 8);
        v89 = OUTLINED_FUNCTION_215();
        v90(v89);
      }

      v53 = &qword_1EC7ECA60;
      v54 = &unk_1D5627000;
      goto LABEL_10;
    }

LABEL_20:
    v53 = &qword_1EC7ED0F0;
    v54 = &unk_1D5623EF8;
    v55 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v101, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_9_25(&qword_1EC7EA7F0 + v0);
  if (v68)
  {
    OUTLINED_FUNCTION_203_0();
    v69 = OUTLINED_FUNCTION_217();
    v70(v69);
    goto LABEL_20;
  }

  v71 = OUTLINED_FUNCTION_130_4();
  v72(v71);
  sub_1D4FCE688();
  OUTLINED_FUNCTION_164_0();
  sub_1D5614D18();
  v73 = OUTLINED_FUNCTION_220_0();
  v103(v73);
  v74 = OUTLINED_FUNCTION_217();
  v103(v74);
  sub_1D4E50004(v0, &qword_1EC7ECD90, &unk_1D5622F80);
  if (&qword_1EC7ECD90)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA80, &qword_1D5627010);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D500028C();
  OUTLINED_FUNCTION_140_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  sub_1D4F89134();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    v8 = type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_117_3(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE760();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v9 = *(v1 + 24);
    OUTLINED_FUNCTION_190_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F892A0();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_86_0();
  return v12(v11);
}

void CloudTVEpisode.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v52);
  v50 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v11);
  v49 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  v27 = OUTLINED_FUNCTION_93();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_184_1();
  v33 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v33, v34, v21);
  if (v35)
  {
    sub_1D56162F8();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_106(v23);
    v37(v36);
    sub_1D56162F8();
    sub_1D4F89490();
    OUTLINED_FUNCTION_225_0();
    v38 = *(v23 + 8);
    v39 = OUTLINED_FUNCTION_224();
    v40(v39);
  }

  v41 = type metadata accessor for CloudTVEpisode.Relationships(0);
  sub_1D4F39AB0(v0 + *(v41 + 20), v1, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_9_25(v1);
  if (v35)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v42(v48, v1, v11);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8B4A0();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    (*(v49 + 8))(v48, v11);
  }

  sub_1D4F39AB0(v0 + *(v41 + 24), v51, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_5_1(v51);
  if (v35)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v43 = OUTLINED_FUNCTION_86_0();
    v44(v43);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F89514();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    v45 = *(v50 + 8);
    v46 = OUTLINED_FUNCTION_93();
    v47(v46);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v51);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40_12(v7, v48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_114();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_2();
  v27 = OUTLINED_FUNCTION_98();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v33 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v33, v34, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v35 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v35, v36, v21);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v38(v2, v0, v21);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F89490();
    OUTLINED_FUNCTION_224_0();
    v39 = *(v23 + 8);
    v23 += 8;
    v39(v2, v21);
  }

  v40 = type metadata accessor for CloudTVEpisode.Relationships(0);
  sub_1D4F39AB0(v0 + *(v40 + 20), v1, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v1, 1, v13);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v41 = OUTLINED_FUNCTION_147_2();
    v42(v41);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B4A0();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    off_1EC7EA7F8(v23, v13);
  }

  sub_1D4F39AB0(v0 + *(v40 + 24), v50, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_1(v50);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v43 = OUTLINED_FUNCTION_106(v49);
    v44(v43);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F89514();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    v45 = *(v49 + 8);
    v46 = OUTLINED_FUNCTION_134_0();
    v47(v46);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v33 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v34 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA90, &qword_1D5627018);
  OUTLINED_FUNCTION_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for CloudTVEpisode.Relationships(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v29 = v5[3];
  v28 = v5[4];
  OUTLINED_FUNCTION_227_0(v5);
  sub_1D500028C();
  OUTLINED_FUNCTION_179_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v3, &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE8EC();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v3 + *(v24 + 20), &qword_1EC7ECD90, &unk_1D5622F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_190_1();
    sub_1D4F89870();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v30 = OUTLINED_FUNCTION_88_2();
    v31(v30);
    sub_1D4F39A1C(v34, v3 + *(v24 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    sub_1D50002E0(v3, v33, type metadata accessor for CloudTVEpisode.Relationships);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v3, v32);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FF5CC8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  v37 = *(v40 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v24, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v17 + 8))(v20, v16);
  }

  v25 = v39;
  sub_1D4F39AB0(v2 + *(v39 + 20), v15, &qword_1EC7ECD90, &unk_1D5622F80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v27 = v40;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = v34;
    v28 = v35;
    (*(v35 + 32))(v34, v15, v9);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    (*(v28 + 8))(v29, v9);
  }

  v30 = v38;
  sub_1D4F39AB0(v3 + *(v25 + 24), v38, &qword_1EC7ECA58, &unk_1D5622310);
  if (__swift_getEnumTagSinglePayload(v30, 1, v27) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v32 = v36;
    v31 = v37;
    (*(v37 + 32))(v36, v30, v27);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v31 + 8))(v32, v27);
  }

  return sub_1D5616328();
}

MusicKitInternal::CloudTVEpisode::Associations::CodingKeys_optional __swiftcall CloudTVEpisode.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVEpisode.Associations.CodingKeys.stringValue.getter()
{
  v1 = 0x70652D726568746FLL;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72612D636973756DLL;
  }
}

uint64_t sub_1D4FF628C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1D4F3BC1C();
}

uint64_t sub_1D4FF62BC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVEpisode.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FF62FC(uint64_t a1)
{
  v2 = sub_1D50004DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF6338(uint64_t a1)
{
  v2 = sub_1D50004DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVEpisode.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v100);
  v97 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_12(v9, v95);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v14);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  OUTLINED_FUNCTION_14(v98);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v18);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v103);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v101 = v26;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA80, &unk_1D5622348);
  OUTLINED_FUNCTION_14(v102);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_114();
  v36 = OUTLINED_FUNCTION_224();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_71_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_161_3(v46);
  OUTLINED_FUNCTION_222_0();
  v47 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v47, v48, v30);
  if (v49)
  {
    OUTLINED_FUNCTION_57(v4 + v1, 1, v30);
    if (v49)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5A8, &unk_1D5622F00);
      goto LABEL_12;
    }

LABEL_9:
    v53 = &qword_1EC7EDAA0;
    v54 = &unk_1D5627040;
LABEL_10:
    v55 = v1;
LABEL_21:
    sub_1D4E50004(v55, v53, v54);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v4 + v1, 1, v30);
  if (v49)
  {
    v50 = *(v32 + 8);
    v51 = OUTLINED_FUNCTION_123_2();
    v52(v51);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v56(v3, v4 + v1, v30);
  sub_1D5000458();
  OUTLINED_FUNCTION_223_0();
  v57 = OUTLINED_FUNCTION_195_1();
  v4(v57);
  v58 = OUTLINED_FUNCTION_123_2();
  v4(v58);
  sub_1D4E50004(v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  if ((&qword_1EC7EB5A8 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v59 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_217_0(v59);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v60, v61, v62, v63);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v64, v65, v66, v67);
  OUTLINED_FUNCTION_57(v0, 1, v103);
  if (v49)
  {
    OUTLINED_FUNCTION_9_25(&qword_1EC7EB5A8 + v0);
    if (v49)
    {
      sub_1D4E50004(v0, &qword_1EC7ECA78, &qword_1D5622340);
LABEL_24:
      v75 = *(v3 + 24);
      v76 = *(v98 + 48);
      v1 = v99;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v77, v78, v79, v80);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v81, v82, v83, v84);
      v85 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_57(v85, v86, v100);
      if (v49)
      {
        OUTLINED_FUNCTION_43_0(v99 + v76);
        if (v49)
        {
          sub_1D4E50004(v99, &qword_1EC7ECD18, &qword_1D5631040);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v99, v96, &qword_1EC7ECD18, &qword_1D5631040);
        OUTLINED_FUNCTION_43_0(v99 + v76);
        if (!v87)
        {
          OUTLINED_FUNCTION_40_3();
          v91 = OUTLINED_FUNCTION_207_0();
          v92(v91);
          sub_1D50003B4();
          OUTLINED_FUNCTION_85();
          OUTLINED_FUNCTION_185_1();
          v93 = OUTLINED_FUNCTION_221();
          (qword_1D5631040)(v93);
          v94 = OUTLINED_FUNCTION_215();
          (qword_1D5631040)(v94);
          sub_1D4E50004(v99, &qword_1EC7ECD18, &qword_1D5631040);
          goto LABEL_22;
        }

        v88 = *(v97 + 8);
        v89 = OUTLINED_FUNCTION_215();
        v90(v89);
      }

      v53 = &qword_1EC7EDA98;
      v54 = &unk_1D5627020;
      goto LABEL_10;
    }

LABEL_20:
    v53 = &qword_1EC7ECA80;
    v54 = &unk_1D5622348;
    v55 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v101, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_9_25(&qword_1EC7EB5A8 + v0);
  if (v68)
  {
    OUTLINED_FUNCTION_203_0();
    v69 = OUTLINED_FUNCTION_217();
    v70(v69);
    goto LABEL_20;
  }

  v71 = OUTLINED_FUNCTION_130_4();
  v72(v71);
  sub_1D4F88EF0();
  OUTLINED_FUNCTION_164_0();
  sub_1D5614D18();
  v73 = OUTLINED_FUNCTION_220_0();
  v103(v73);
  v74 = OUTLINED_FUNCTION_217();
  v103(v74);
  sub_1D4E50004(v0, &qword_1EC7ECA78, &qword_1D5622340);
  if (&qword_1EC7ECA78)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Associations.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAB8, &qword_1D5627050);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D50004DC();
  OUTLINED_FUNCTION_140_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  sub_1D5000530();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    v8 = type metadata accessor for CloudTVEpisode.Associations(0);
    OUTLINED_FUNCTION_117_3(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F88FC8();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v9 = *(v1 + 24);
    OUTLINED_FUNCTION_190_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_86_0();
  return v12(v11);
}

void CloudTVEpisode.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v52);
  v50 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v11);
  v49 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  v27 = OUTLINED_FUNCTION_93();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_184_1();
  v33 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v33, v34, v21);
  if (v35)
  {
    sub_1D56162F8();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_106(v23);
    v37(v36);
    sub_1D56162F8();
    sub_1D4F8B290();
    OUTLINED_FUNCTION_225_0();
    v38 = *(v23 + 8);
    v39 = OUTLINED_FUNCTION_224();
    v40(v39);
  }

  v41 = type metadata accessor for CloudTVEpisode.Associations(0);
  sub_1D4F39AB0(v0 + *(v41 + 20), v1, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_9_25(v1);
  if (v35)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v42(v48, v1, v11);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8940C();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    (*(v49 + 8))(v48, v11);
  }

  sub_1D4F39AB0(v0 + *(v41 + 24), v51, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_5_1(v51);
  if (v35)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v43 = OUTLINED_FUNCTION_86_0();
    v44(v43);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    v45 = *(v50 + 8);
    v46 = OUTLINED_FUNCTION_93();
    v47(v46);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v51);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40_12(v7, v48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_114();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_2();
  v27 = OUTLINED_FUNCTION_98();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v33 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v33, v34, &qword_1EC7EB5A8, &unk_1D5622F00);
  v35 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v35, v36, v21);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v38(v2, v0, v21);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B290();
    OUTLINED_FUNCTION_224_0();
    v39 = *(v23 + 8);
    v23 += 8;
    v39(v2, v21);
  }

  v40 = type metadata accessor for CloudTVEpisode.Associations(0);
  sub_1D4F39AB0(v0 + *(v40 + 20), v1, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v1, 1, v13);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v41 = OUTLINED_FUNCTION_147_2();
    v42(v41);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8940C();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    off_1EC7EB5B0(v23, v13);
  }

  sub_1D4F39AB0(v0 + *(v40 + 24), v50, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_1(v50);
  if (v37)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v43 = OUTLINED_FUNCTION_106(v49);
    v44(v43);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    v45 = *(v49 + 8);
    v46 = OUTLINED_FUNCTION_134_0();
    v47(v46);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Associations.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v33 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v34 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAE8, &qword_1D5627058);
  OUTLINED_FUNCTION_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for CloudTVEpisode.Associations(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v29 = v5[3];
  v28 = v5[4];
  OUTLINED_FUNCTION_227_0(v5);
  sub_1D50004DC();
  OUTLINED_FUNCTION_179_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000808();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v3, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F89598();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v3 + *(v24 + 20), &qword_1EC7ECA78, &qword_1D5622340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_190_1();
    sub_1D5000974();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v30 = OUTLINED_FUNCTION_88_2();
    v31(v30);
    sub_1D4F39A1C(v34, v3 + *(v24 + 24), &qword_1EC7ECD18, &qword_1D5631040);
    sub_1D50002E0(v3, v33, type metadata accessor for CloudTVEpisode.Associations);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v3, v32);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FF7748(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v37 = *(v40 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v24, &qword_1EC7EB5A8, &unk_1D5622F00);
  if (__swift_getEnumTagSinglePayload(v24, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v17 + 8))(v20, v16);
  }

  v25 = v39;
  sub_1D4F39AB0(v2 + *(v39 + 20), v15, &qword_1EC7ECA78, &qword_1D5622340);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v27 = v40;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = v34;
    v28 = v35;
    (*(v35 + 32))(v34, v15, v9);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v28 + 8))(v29, v9);
  }

  v30 = v38;
  sub_1D4F39AB0(v3 + *(v25 + 24), v38, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v30, 1, v27) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v32 = v36;
    v31 = v37;
    (*(v37 + 32))(v36, v30, v27);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v31 + 8))(v32, v27);
  }

  return sub_1D5616328();
}

uint64_t CloudTVEpisode.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudTVEpisode.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudTVEpisode.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *a2;

      OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C();
      OUTLINED_FUNCTION_70_2();
      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D4FF7CF4(uint64_t a1)
{
  v2 = sub_1D5000AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF7D30(uint64_t a1)
{
  v2 = sub_1D5000AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVEpisode.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAF8, &qword_1D5627060);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_227_0(v2);
  sub_1D5000AE0();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();

  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_86_0();
  v14(v13);
  OUTLINED_FUNCTION_26();
}

void CloudTVEpisode.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_98();

    sub_1D4F068B4();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudTVEpisode.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

void CloudTVEpisode.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB08, &qword_1D5627068);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9();
  v21 = v12[3];
  v22 = v12[4];
  OUTLINED_FUNCTION_227_0(v12);
  sub_1D5000AE0();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    v23 = *(v17 + 8);
    v24 = OUTLINED_FUNCTION_15_2();
    v25(v24);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudTVEpisode.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudTVEpisode.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_226_0() + 20);
  OUTLINED_FUNCTION_14_24();
  return sub_1D50002E0(v1 + v3, v0, v4);
}

uint64_t static CloudTVEpisode.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7ED9A0 = a1;
}

uint64_t (*static CloudTVEpisode.relationshipCodingKeys.modify())()
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4FF8280@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7ED9A0;
}

uint64_t sub_1D4FF82D0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7ED9A0 = v1;
}

uint64_t CloudTVEpisode.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_226_0() + 32));
  *v0 = v2;

  return sub_1D4E67688(v2);
}

uint64_t CloudTVEpisode.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudTVEpisode(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D4FF8444()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D5610078();
  qword_1EDD57208 = v3;
  return result;
}

uint64_t static CloudTVEpisode.catalogTypes.getter()
{
  if (qword_1EDD57200 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FF8B1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FF8BB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FF8C04(uint64_t a1)
{
  v2 = sub_1D5000B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF8C40(uint64_t a1)
{
  v2 = sub_1D5000B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVEpisode.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB20, &qword_1D5627090);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5000B90();
  sub_1D56163D8();
  v19 = *v0;
  v21 = v0[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for CloudTVEpisode(0);
    OUTLINED_FUNCTION_117_3(v9);
    type metadata accessor for CloudTVEpisode.Attributes(0);
    OUTLINED_FUNCTION_11_31();
    sub_1D4FF11E4(v10);
    OUTLINED_FUNCTION_54_2();
    sub_1D56160C8();
    v11 = v2[6];
    type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_99_5();
    sub_1D4FF11E4(v12);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    v13 = v2[7];
    type metadata accessor for CloudTVEpisode.Associations(0);
    OUTLINED_FUNCTION_98_4();
    sub_1D4FF11E4(v14);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    v20 = *(v0 + v2[8]);
    sub_1D4E67688(v20);
    sub_1D5000BE4();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v20);
  }

  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_134_0();
  return v17(v16);
}

uint64_t sub_1D4FF8F8C(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVEpisode.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v13);
  v14 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB50, &unk_1D5627098);
  OUTLINED_FUNCTION_4(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v25 = type metadata accessor for CloudTVEpisode(0);
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v44 = (v31 - v30);
  v45 = *(v29 + 32);
  *(v31 - v30 + v45) = 1;
  v32 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5000B90();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v44 + v45));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v44 = v46;
    v44[1] = v47;
    OUTLINED_FUNCTION_11_31();
    sub_1D4FF11E4(v33);
    sub_1D5615FD8();
    sub_1D5000B34(v20, v44 + v25[5], type metadata accessor for CloudTVEpisode.Attributes);
    type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_99_5();
    sub_1D4FF11E4(v34);
    sub_1D5615F78();
    sub_1D4F39A1C(v43, v44 + v25[6], &qword_1EC7ECD98, &unk_1D5627070);
    type metadata accessor for CloudTVEpisode.Associations(0);
    LOBYTE(v46) = 3;
    OUTLINED_FUNCTION_98_4();
    sub_1D4FF11E4(v35);
    sub_1D5615F78();
    sub_1D4F39A1C(v42, v44 + v25[7], &qword_1EC7ECD80, &qword_1D5622F70);
    sub_1D5000C38();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v36 = OUTLINED_FUNCTION_26_18();
    v37(v36);
    sub_1D4EA7410(*(v44 + v45));
    *(v44 + v45) = v46;
    v38 = OUTLINED_FUNCTION_89_6();
    sub_1D50002E0(v38, v41, v39);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_15_26();
    sub_1D500033C(v44, v40);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FF9534(uint64_t a1)
{
  v2 = sub_1D4FF11E4(&unk_1EC7EDC88);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D4FF95F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void CloudTVEpisode.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = sub_1D560F548();
  v9 = OUTLINED_FUNCTION_4(v8);
  v49 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v53 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9();
  v20 = *(v0 + *(type metadata accessor for CloudTVEpisode.Attributes(0) + 84));
  if (v20)
  {
    swift_getKeyPath();
    v21 = *(v20 + 16);
    if (v21)
    {
      v23 = *(v16 + 16);
      v22 = v16 + 16;
      v24 = *(v22 + 64);
      OUTLINED_FUNCTION_43_3();
      v26 = v20 + v25;
      v51 = *(v22 + 56);
      v52 = v27;
      v28 = (v22 - 8);
      v50 = (v49 + 32);
      v29 = MEMORY[0x1E69E7CC0];
      v47 = v14;
      v48 = v8;
      v46 = v30;
      do
      {
        v52(v1, v26, v14);
        swift_getAtKeyPath();
        v31 = *v28;
        v32 = OUTLINED_FUNCTION_15_2();
        v33(v32);
        OUTLINED_FUNCTION_9_25(v7);
        if (v34)
        {
          sub_1D4E50004(v7, &qword_1EC7EAC58, &unk_1D561DA70);
        }

        else
        {
          v35 = v22;
          v36 = *v50;
          (*v50)(v53, v7, v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = *(v29 + 16);
            sub_1D4F00C24();
            v29 = v44;
          }

          v38 = *(v29 + 16);
          if (v38 >= *(v29 + 24) >> 1)
          {
            sub_1D4F00C24();
            v29 = v45;
          }

          *(v29 + 16) = v38 + 1;
          v39 = *(v49 + 80);
          OUTLINED_FUNCTION_43_3();
          v42 = v29 + v40 + *(v41 + 72) * v38;
          v8 = v48;
          v36(v42, v53, v48);
          v22 = v35;
          v14 = v47;
        }

        v26 += v51;
        --v21;
      }

      while (v21);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Attributes.isSubscriptionRequiredForCatalogAsset.getter()
{
  v1 = type metadata accessor for CloudTVEpisode.Attributes(0);
  sub_1D4FF11E4(&unk_1EC7EDB78);
  sub_1D4FF11E4(&unk_1EC7EDB80);
  OUTLINED_FUNCTION_104();
  if ((sub_1D5612A28() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + *(v1 + 76));
  if (v2 != 26)
  {
    if (sub_1D4FD39E0(v2) != 0x656C696172747674 || v4 != 0xE900000000000072)
    {
      sub_1D5616168();
      OUTLINED_FUNCTION_70_2();
      v3 = 117;
      return v3 & 1;
    }

LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D4FF9AA0()
{
  sub_1D4FF11E4(&unk_1EC7EDB80);

  return sub_1D5612A28();
}

uint64_t TVEpisode.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v716[1] = a5;
  v717 = a4;
  v725 = a3;
  v726 = a2;
  v708 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v667 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v36 = v34 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v667 - v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_114();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v77 = OUTLINED_FUNCTION_22(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v97);
  v696 = sub_1D56128C8();
  v98 = OUTLINED_FUNCTION_4(v696);
  v695 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v104 = OUTLINED_FUNCTION_22(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v109);
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v114);
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v118);
  v687[0] = sub_1D5610788();
  v119 = OUTLINED_FUNCTION_4(v687[0]);
  v686 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v123);
  v685 = sub_1D56107C8();
  v124 = OUTLINED_FUNCTION_4(v685);
  v683[1] = v125;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v129);
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v133);
  *&v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4(v734);
  v668 = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v138);
  *&v736 = sub_1D560FDC8();
  v139 = OUTLINED_FUNCTION_4(v736);
  *&v733 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v145 = OUTLINED_FUNCTION_22(v144);
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v151 = OUTLINED_FUNCTION_22(v150);
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v155);
  v156 = type metadata accessor for CloudVideoOffer();
  v157 = OUTLINED_FUNCTION_22(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v161);
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v166);
  v168 = *(v167 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v170);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v172 = OUTLINED_FUNCTION_22(v171);
  v174 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v178 = OUTLINED_FUNCTION_22(v177);
  v180 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v182);
  v735 = type metadata accessor for TVEpisodePropertyProvider();
  v183 = OUTLINED_FUNCTION_14(v735);
  v185 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v186);
  v723 = sub_1D560D838();
  v187 = OUTLINED_FUNCTION_4(v723);
  v722 = v188;
  v190 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v191);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v192);
  v194 = *(v193 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_38_2();
  v727 = type metadata accessor for CloudTVEpisode(0);
  v196 = OUTLINED_FUNCTION_14(v727);
  v198 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_5();
  v201 = v200 - v199;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v728 = v201;
  v719 = v202;
  sub_1D5610648();
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v667[2] = v8;
  v706[0] = v40;
  v667[3] = v7;
  v706[1] = v36;
  v667[4] = v6;
  v707 = v20;
  v203 = sub_1D56109D8();
  __swift_project_value_buffer(v203, qword_1EC87BF50);
  sub_1D4FFCB28();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v204 = sub_1D560D9A8();
  __swift_project_value_buffer(v204, qword_1EDD53C40);
  OUTLINED_FUNCTION_150(&v742 + 8);
  v720 = v9;
  sub_1D56105B8();
  v205 = sub_1D56140F8();
  v206 = v729;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v207, v208, v209, v205);
  v210 = v735;
  v211 = v735[6];
  sub_1D560F928();
  v212 = OUTLINED_FUNCTION_20_1(v690);
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v215);
  v216 = v210[10];
  v217 = sub_1D560C328();
  v218 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v217);
  v221 = v210[13];
  v222 = sub_1D5610978();
  v223 = OUTLINED_FUNCTION_20_1(v693);
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v222);
  v226 = v210[17];
  v227 = sub_1D560C0A8();
  v228 = OUTLINED_FUNCTION_20_1(&v695);
  __swift_storeEnumTagSinglePayload(v228, v229, v230, v227);
  v231 = v210[20];
  sub_1D5613178();
  v232 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v235);
  v236 = v210[21];
  sub_1D5613198();
  v237 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v240);
  v241 = v210[22];
  sub_1D56134E8();
  v242 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
  v246 = v210[24];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v247, v248, v249, v217);
  v250 = v210[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v251, v252, v253, v217);
  v254 = v210[26];
  sub_1D5614A78();
  v255 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v255, v256, v257, v258);
  v259 = OUTLINED_FUNCTION_40_5(v210[29]);
  v730 = v222;
  v260 = v222;
  v261 = a1;
  __swift_storeEnumTagSinglePayload(v259, v262, v263, v260);
  v264 = v210[31];
  sub_1D56109F8();
  v265 = OUTLINED_FUNCTION_20_1(&v697);
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
  v269 = OUTLINED_FUNCTION_40_5(v210[32]);
  v731 = v205;
  __swift_storeEnumTagSinglePayload(v269, v270, v271, v205);
  v272 = OUTLINED_FUNCTION_40_5(v210[34]);
  __swift_storeEnumTagSinglePayload(v272, v273, v274, v217);
  v275 = OUTLINED_FUNCTION_40_5(v210[36]);
  __swift_storeEnumTagSinglePayload(v275, v276, v277, v736);
  v278 = OUTLINED_FUNCTION_40_5(v210[38]);
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v227);
  v281 = OUTLINED_FUNCTION_40_5(v210[44]);
  __swift_storeEnumTagSinglePayload(v281, v282, v283, v227);
  v284 = v210[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v285 = OUTLINED_FUNCTION_20_1(&v708);
  v681 = v286;
  __swift_storeEnumTagSinglePayload(v285, v287, v288, v286);
  v289 = v210[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v290 = OUTLINED_FUNCTION_20_1(v716);
  v688 = v291;
  __swift_storeEnumTagSinglePayload(v290, v292, v293, v291);
  v294 = v210[47];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v295 = OUTLINED_FUNCTION_20_1(&v719);
  v691 = v296;
  __swift_storeEnumTagSinglePayload(v295, v297, v298, v296);
  v299 = v210[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v300 = OUTLINED_FUNCTION_20_1(&v725);
  v697 = v301;
  __swift_storeEnumTagSinglePayload(v300, v302, v303, v301);
  v304 = v210[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v305 = OUTLINED_FUNCTION_20_1(&v727);
  v699 = v306;
  __swift_storeEnumTagSinglePayload(v305, v307, v308, v306);
  v309 = v210[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v310 = OUTLINED_FUNCTION_20_1(&v731);
  v703[0] = v311;
  __swift_storeEnumTagSinglePayload(v310, v312, v313, v311);
  (*(v722 + 16))(v206 + v210[53], v6, v723);
  v314 = v206 + v210[54];
  sub_1D5610658();
  v671 = sub_1D5610618();
  v670 = v315;
  v669 = sub_1D56105C8();
  v316 = sub_1D56105F8();
  v317 = sub_1D56105E8();
  v318 = sub_1D56105A8();
  v319 = v206 + v210[5];
  *v319 = 0;
  *(v319 + 8) = 1;
  *(v206 + v210[16]) = 2;
  *(v206 + v210[18]) = 2;
  v672 = v210[23];
  *(v206 + v672) = 26;
  v320 = v206 + v210[30];
  *v320 = xmmword_1D5626F70;
  *(v320 + 24) = 0;
  *(v320 + 32) = 0;
  *(v320 + 16) = 0;
  v321 = (v206 + v210[42]);
  v321[2] = 0u;
  v321[3] = 0u;
  *v321 = 0u;
  v321[1] = 0u;
  v680 = v321;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v322 = qword_1EC87C178;
  v323 = v727;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v324 = sub_1D5615E18();

    v322 = v324;
  }

  else
  {

    v324 = v322 & 0xFFFFFFFFFFFFFF8;
    sub_1D56161D8();
    sub_1D560CDE8();
  }

  OUTLINED_FUNCTION_170_1();
  *(v206 + v325[52]) = v322;
  v326 = (v206 + v325[55]);
  v327 = v670;
  *v326 = v671;
  v326[1] = v327;
  *(v206 + v325[56]) = v669;
  *(v206 + v325[57]) = v316;
  *(v206 + v325[58]) = v317;
  *(v206 + v325[59]) = v318;
  v328 = (v728 + *(v323 + 20));
  v329 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v330 = v328 + v329[5];
  OUTLINED_FUNCTION_117_0(&v691);
  sub_1D4F39AB0(v331, v332, v333, v334);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v324);
  v671 = v335;
  if (v398)
  {
    sub_1D4E50004(v324, &qword_1EC7EB5B8, &unk_1D56206A0);
    v340 = 1;
    v341 = v675;
    v322 = v673;
  }

  else
  {
    OUTLINED_FUNCTION_167_0(v692);
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v337 = *(v336 + 8);
    v338 = OUTLINED_FUNCTION_159();
    v339(v338);
    v340 = 0;
    v341 = v675;
  }

  __swift_storeEnumTagSinglePayload(v322, v340, 1, v731);
  v342 = OUTLINED_FUNCTION_122_1();
  sub_1D4E68940(v342, v343, v344, v345);
  v346 = *(v328 + v329[6]);
  if (v346 && (v347 = *(v346 + 16)) != 0)
  {
    v348 = 0;
    v349 = (v346 + 32);
    do
    {
      v350 = *v349++;
      v348 |= qword_1D5627DD0[v350];
      --v347;
    }

    while (v347);
  }

  else
  {
    v348 = 0;
  }

  *v319 = v348;
  *(v319 + 8) = v346 == 0;
  OUTLINED_FUNCTION_11_31();
  sub_1D4FF11E4(v351);
  OUTLINED_FUNCTION_150(&v694);
  v675 = v352;
  sub_1D5612A68();
  OUTLINED_FUNCTION_61_2(v690);
  sub_1D4E68940(v319, v353, v354, v355);
  v356 = *(v328 + v329[7]);
  if (v356)
  {
    sub_1D511C2A4(v356);
  }

  OUTLINED_FUNCTION_170_1();
  v358 = *(v357 + 28);
  v359 = (v206 + *(v357 + 32));
  *(v206 + v358) = v360;
  v361 = (v328 + v329[8]);
  v362 = v361[1];
  *v359 = *v361;
  v359[1] = v362;
  v363 = *(v328 + v329[9]);

  if (v363)
  {
    sub_1D5259FF8(v363);
  }

  OUTLINED_FUNCTION_119_3();
  *(v206 + *(v364 + 36)) = v365;
  v366 = *(v328 + v329[21]);
  v367 = 0.0;
  if (!v366)
  {
    v368 = 0;
    goto LABEL_28;
  }

  v368 = *(v328 + v329[21]);
  sub_1D4EC9F44(v366);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_5_1(v341);
  if (v398)
  {
    sub_1D4E50004(v341, &qword_1EC7EDB90, &unk_1D565B670);
LABEL_28:
    v373 = 1;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_167_0(v683);
  sub_1D5610708();
  OUTLINED_FUNCTION_56_0();
  (*(v370 + 8))(v341, v369);
  v371 = *v322;
  v372 = *(v322 + 8);
  sub_1D500033C(v322, type metadata accessor for CloudVideoOffer);
  if (v372)
  {
    goto LABEL_28;
  }

  v373 = 0;
  v367 = v371 / 1000.0;
LABEL_29:
  v374 = v735[12];
  v375 = v206 + v735[11];
  *v375 = v367;
  *(v375 + 8) = v373;
  *(v206 + v374) = *(v328 + v329[11]);
  v376 = v676;
  sub_1D4F39AB0(v328 + v329[12], v676, &qword_1EC7EC960, &unk_1D56334C0);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v376, 1, v377);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v376, &qword_1EC7EC960, &unk_1D56334C0);
    EnumTagSinglePayload = v677;
  }

  else
  {
    OUTLINED_FUNCTION_150(v700);
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v377);
    (*(v379 + 8))(v376, v377);
  }

  v380 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v380, v381, v382, v730);
  OUTLINED_FUNCTION_119_3();
  v384 = *(v383 + 56);
  v385 = *(v383 + 60);
  v386 = v729;
  sub_1D4E68940(EnumTagSinglePayload, v729 + v674, &qword_1EC7EAC98, &unk_1D561DA80);
  *(v386 + v384) = *(v328 + v329[13]);
  *(v386 + v385) = *(v328 + v329[17]);
  v387 = v386;
  v388 = *(v328 + v329[19]);
  if (v388 == 26)
  {
    v389 = 26;
  }

  else
  {
    sub_1D4FD3EB8(*(v328 + v329[19]), v744);
    v389 = v744[0];
  }

  *(v387 + v672) = v389;
  v390 = v329[18];

  OUTLINED_FUNCTION_61_2(&v695);
  sub_1D5000C8C(v391, v392, v393, v394);
  OUTLINED_FUNCTION_11_31();
  sub_1D4FF11E4(v395);
  v396 = sub_1D5612A28();
  if (v388 != 26 && (v396 & 1) != 0)
  {
    v398 = sub_1D4FD39E0(v388) == 0x656C696172747674 && v397 == 0xE900000000000072;
    if (!v398)
    {
      sub_1D5616168();
    }
  }

  OUTLINED_FUNCTION_170_1();
  v400 = *(v399 + 76);
  v401 = v387 + *(v399 + 108);
  *(v387 + v400) = v402 & 1;
  OUTLINED_FUNCTION_165_3(v329[14]);
  v403 = v724;
  v404 = v715;
  v405 = v678;
  if (v368)
  {
    sub_1D501B268();
  }

  OUTLINED_FUNCTION_119_3();
  *(v387 + *(v406 + 112)) = v407;
  sub_1D4F39AB0(v328 + v329[22], v404, &qword_1EC7EC960, &unk_1D56334C0);
  v408 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v408, v409, v377);
  if (v398)
  {
    sub_1D4E50004(v404, &qword_1EC7EC960, &unk_1D56334C0);
    v411 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v377);
    (*(v410 + 8))(v404, v377);
    v411 = 0;
  }

  __swift_storeEnumTagSinglePayload(v403, v411, 1, v730);
  OUTLINED_FUNCTION_61_2(&v696);
  sub_1D4E68940(v403, v412, v413, v414);
  OUTLINED_FUNCTION_61_2(&v697);
  sub_1D5000C8C(v720, v415, v416, v417);
  sub_1D4F39AB0(v328 + v329[23], v405, &qword_1EC7EB5B8, &unk_1D56206A0);
  v418 = v671;
  OUTLINED_FUNCTION_57(v405, 1, v671);
  if (v398)
  {
    sub_1D4E50004(v405, &qword_1EC7EB5B8, &unk_1D56206A0);
    v420 = 1;
    v403 = v679;
  }

  else
  {
    OUTLINED_FUNCTION_172(&v704);
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v418);
    (*(v419 + 8))(v405, v418);
    v420 = 0;
  }

  v709 = v261;
  __swift_storeEnumTagSinglePayload(v403, v420, 1, v731);
  OUTLINED_FUNCTION_61_2(&v698);
  sub_1D4E68940(v403, v421, v422, v423);
  v424 = v329[24];
  v715 = v328;
  v425 = *(v328 + v424);
  v724 = v329;
  if (v425)
  {
    v426 = *(v425 + 16);
    v427 = MEMORY[0x1E69E7CC0];
    if (v426)
    {
      *&v744[0] = MEMORY[0x1E69E7CC0];
      sub_1D4F03AB4();
      v427 = *&v744[0];
      v418 = v668 + 16;
      v731 = *(v668 + 16);
      v428 = *(v668 + 80);
      OUTLINED_FUNCTION_43_3();
      v430 = v425 + v429;
      v730 = *(v418 + 56);
      v431 = v667[1];
      do
      {
        v432 = OUTLINED_FUNCTION_169_0(&v745 + 8);
        v731(v432, v430, v734);
        sub_1D5610728();
        v433 = *(v418 - 8);
        v434 = OUTLINED_FUNCTION_222();
        v435(v434);
        *&v744[0] = v427;
        v436 = *(v427 + 16);
        if (v436 >= *(v427 + 24) >> 1)
        {
          sub_1D4F03AB4();
          v427 = *&v744[0];
        }

        *(v427 + 16) = v436 + 1;
        v437 = *(v733 + 80);
        OUTLINED_FUNCTION_43_3();
        (*(v439 + 32))(v427 + v438 + *(v439 + 72) * v436, v431, v736);
        v430 += v730;
        --v426;
      }

      while (v426);
      v387 = v729;
      v329 = v724;
    }
  }

  else
  {
    v427 = 0;
  }

  OUTLINED_FUNCTION_170_1();
  v441 = v387 + *(v440 + 140);
  *(v387 + *(v440 + 132)) = v427;
  v442 = v683[0];
  sub_1D56107A8();
  v443 = v329[25];
  v444 = v715;
  v445 = (v715 + v443);
  v446 = *v445;
  v447 = v445[1];
  v448 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_186(&v713);
  v450 = v684;
  v451 = v687[0];
  (*(v449 + 104))(v684);
  v452 = v682;
  sub_1D5610798();
  v454 = *(v418 + 8);
  v453 = v418 + 8;
  v455 = v450;
  v456 = v444;
  v457 = v724;
  v454(v455, v451);
  OUTLINED_FUNCTION_136(&v710);
  v458(v442, v685);
  OUTLINED_FUNCTION_61_2(&v701);
  sub_1D4E68940(v452, v459, v460, v461);
  v462 = v456 + v457[15];
  v463 = *v462;
  LOBYTE(v462) = v462[8];
  *v441 = v463;
  *(v441 + 8) = v462;
  v464 = v456 + v457[26];
  OUTLINED_FUNCTION_117_0(v714);
  sub_1D4F39AB0(v465, v466, v467, v468);
  v469 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v469, v470, v734);
  if (v398)
  {
    sub_1D4E50004(v442, &qword_1EC7ED9C0, &qword_1D5626FB0);
    OUTLINED_FUNCTION_216_0();
    v441 = v687[2];
  }

  else
  {
    OUTLINED_FUNCTION_150(&v715);
    sub_1D5610728();
    OUTLINED_FUNCTION_136(v687);
    v471 = OUTLINED_FUNCTION_159();
    v472(v471);
    OUTLINED_FUNCTION_216_0();
  }

  v473 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v473, v474, v475, v736);
  OUTLINED_FUNCTION_119_3();
  v477 = (v387 + *(v476 + 148));
  OUTLINED_FUNCTION_61_2(&v702);
  sub_1D4E68940(v441, v478, v479, v480);
  v481 = v456[1];
  *v477 = *v456;
  v477[1] = v481;
  v482 = v457[27];

  OUTLINED_FUNCTION_61_2(v703);
  sub_1D5000C8C(v483, v484, v485, v486);
  v487 = v457[10];
  sub_1D4F39AB0(v456 + v487, v442, &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_1(v442);
  if (v398)
  {
    sub_1D4E50004(v442, &qword_1EC7EC978, &unk_1D56222A0);
    v493 = 0;
    v495 = 0;
  }

  else
  {
    v488 = v694;
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v490 = *(v489 + 8);
    v491 = OUTLINED_FUNCTION_159();
    v492(v491);
    v493 = sub_1D56128A8();
    v495 = v494;
    v496 = v488;
    v456 = v715;
    (*(v695 + 8))(v496, v696);
  }

  OUTLINED_FUNCTION_119_3();
  v498 = (v387 + *(v497 + 156));
  *v498 = v493;
  v498[1] = v495;
  OUTLINED_FUNCTION_117_0(&v718);
  sub_1D4F39AB0(v499, v500, v501, v502);
  OUTLINED_FUNCTION_1(v493);
  v503 = v702;
  if (v398)
  {
    sub_1D4E50004(v493, &qword_1EC7EC978, &unk_1D56222A0);
    v508 = 0;
    v510 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v720);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v505 = *(v504 + 8);
    v506 = OUTLINED_FUNCTION_159();
    v507(v506);
    v508 = sub_1D56128B8();
    v510 = v509;
    OUTLINED_FUNCTION_136(&v721);
    v511(v495, v696);
  }

  OUTLINED_FUNCTION_171_1();
  v512 = v718;
  OUTLINED_FUNCTION_170_1();
  v514 = (v387 + *(v513 + 160));
  v515 = v387 + *(v513 + 164);
  *v514 = v508;
  v514[1] = v510;
  OUTLINED_FUNCTION_165_3(v457[16]);
  sub_1D4F39AB0(v456 + v457[28], v453, &qword_1EC7ED9B0, &unk_1D5631050);
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_1(v453);
  if (v398)
  {
    sub_1D4E50004(v453, &qword_1EC7ED9B0, &unk_1D5631050);
    *&v517 = OUTLINED_FUNCTION_121_4();
    *(v518 - 256) = v517;
    OUTLINED_FUNCTION_210_0();
  }

  else
  {
    sub_1D5138FDC(v744);
    OUTLINED_FUNCTION_15_1();
    (*(v519 + 8))(v453, v516);
    v734 = v744[1];
    v736 = v744[0];
    v732 = v745;
    v733 = v744[2];
    OUTLINED_FUNCTION_210_0();
    v512 = v718;
  }

  v520 = v711;
  OUTLINED_FUNCTION_119_3();
  v522 = (v387 + *(v521 + 172));
  v523 = v680;
  v524 = v680[1];
  v741[0] = *v680;
  v741[1] = v524;
  v525 = v680[3];
  v742 = v680[2];
  v743 = v525;
  sub_1D4E50004(v741, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v526 = v734;
  *v523 = v736;
  v523[1] = v526;
  v527 = v732;
  v523[2] = v733;
  v523[3] = v527;
  v528 = v724;
  v529 = (v456 + v724[20]);
  v530 = v529[1];
  *v522 = *v529;
  v522[1] = v530;
  v531 = v528[29];

  OUTLINED_FUNCTION_61_2(v706);
  sub_1D5000C8C(v532, v533, v534, v535);
  v536 = *(v727 + 24);
  v537 = v701;
  sub_1D4F39AB0(v487 + v536, v701, &qword_1EC7ECD98, &unk_1D5627070);
  v538 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_1(v537);
  if (v398)
  {
    sub_1D4E50004(v537, &qword_1EC7ECD98, &unk_1D5627070);
    v539 = 1;
  }

  else
  {
    sub_1D4F39AB0(v537, v503, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v537, v540);
    v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_5_1(v503);
    if (v542)
    {
      sub_1D4E50004(v503, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v539 = 1;
    }

    else
    {
      v543 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v543);
      sub_1D5613C48();
      OUTLINED_FUNCTION_96_5();
      sub_1D4FF11E4(v544);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      sub_1D5612368();
      v520 = v711;
      OUTLINED_FUNCTION_210_0();
      OUTLINED_FUNCTION_126_2(v545, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v546 + 8))(v503, v541);
      v539 = 0;
    }

    v512 = v718;
  }

  v547 = v689;
  v548 = v710;
  __swift_storeEnumTagSinglePayload(v710, v539, 1, v681);
  OUTLINED_FUNCTION_61_2(&v708);
  sub_1D4E68940(v548, v549, v550, v551);
  sub_1D4F39AB0(v487 + v536, v520, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v520);
  v552 = v713;
  if (v398)
  {
    v553 = &qword_1EC7ECD98;
    v554 = &unk_1D5627070;
  }

  else
  {
    sub_1D4F39AB0(v520 + *(v538 + 20), v512, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v520, v555);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    v520 = v512;
    OUTLINED_FUNCTION_5_1(v512);
    if (!v556)
    {
      v557 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v557);
      v453 = type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_95_4();
      sub_1D4FF11E4(v558);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_171_1();
      sub_1D4FF11E4(v559);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v552 = v713;
      sub_1D5612368();
      OUTLINED_FUNCTION_210_0();
      OUTLINED_FUNCTION_126_2(v560, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v562 = *(v561 + 8);
      v563 = OUTLINED_FUNCTION_222();
      v564(v563);
      goto LABEL_86;
    }

    v553 = &qword_1EC7ECD90;
    v554 = &unk_1D5622F80;
  }

  sub_1D4E50004(v520, v553, v554);
LABEL_86:
  v565 = v712;
  v566 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v566, v567, v568, v688);
  sub_1D4E68940(v565, v387 + v547, &qword_1EC7ED1F8, &qword_1D5634780);
  v569 = v704;
  sub_1D4F39AB0(v487 + v536, v704, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v569);
  if (v398)
  {
    sub_1D4E50004(v569, &qword_1EC7ECD98, &unk_1D5627070);
    v570 = v705;
  }

  else
  {
    sub_1D4F39AB0(v569 + *(v538 + 24), v453, &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v569, v571);
    v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_1(v453);
    v570 = v705;
    if (!v572)
    {
      v573 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v573);
      type metadata accessor for TVShow();
      v520 = v453;
      sub_1D4FF11E4(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4FF11E4(v574);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v575 = v727;
      v576 = v717;
      v487 = v728;
      v577 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v577, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v579 = *(v578 + 8);
      v580 = OUTLINED_FUNCTION_159();
      v581(v580);
      OUTLINED_FUNCTION_214_0();
      goto LABEL_93;
    }

    sub_1D4E50004(v453, &qword_1EC7ECA58, &unk_1D5622310);
  }

  OUTLINED_FUNCTION_214_0();
  v576 = v717;
  v575 = v727;
LABEL_93:
  __swift_storeEnumTagSinglePayload(v570, v582, 1, v583);
  sub_1D4E68940(v570, v387 + v538, &qword_1EC7ECBA0, &unk_1D56270F0);
  v584 = *(v575 + 28);
  sub_1D4F39AB0(v487 + v584, v552, &qword_1EC7ECD80, &qword_1D5622F70);
  v585 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_1(v552);
  v586 = v706[0];
  if (v398)
  {
    sub_1D4E50004(v552, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  else
  {
    OUTLINED_FUNCTION_122_0(&v684);
    sub_1D4F39AB0(v587, v588, v589, v590);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v552, v591);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v487);
    if (v592)
    {
      sub_1D4E50004(v487, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v593 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v593);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_93_6();
      sub_1D4FF11E4(v594);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v520 = v487;
      v595 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v595, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v597 = *(v596 + 8);
      v598 = OUTLINED_FUNCTION_93();
      v599(v598);
    }

    OUTLINED_FUNCTION_171_1();
  }

  v600 = v698;
  v601 = OUTLINED_FUNCTION_169_0(&v737);
  __swift_storeEnumTagSinglePayload(v601, v602, 1, v603);
  sub_1D4E68940(v520, v387 + v600, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v487 + v584, v586, &qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_1(v586);
  if (v398)
  {
    v604 = &qword_1EC7ECD80;
    v605 = &qword_1D5622F70;
    v606 = v586;
  }

  else
  {
    v607 = v586 + *(v585 + 20);
    OUTLINED_FUNCTION_117_0(&v685);
    sub_1D4F39AB0(v608, v609, v610, v611);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v586, v612);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v520);
    if (!v613)
    {
      sub_1D560CD98();
      v614 = v575;
      v615 = v716[0];
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v616, v617, v618, v619);
      type metadata accessor for TVEpisode();
      v487 = type metadata accessor for TVEpisode;
      sub_1D4FF11E4(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_171_1();
      sub_1D4FF11E4(v620);
      OUTLINED_FUNCTION_68_7();
      v387 = v729;
      sub_1D5612368();
      v621 = v615;
      v575 = v614;
      sub_1D4E50004(v621, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v623 = *(v622 + 8);
      v624 = OUTLINED_FUNCTION_222();
      v625(v624);
      goto LABEL_107;
    }

    v604 = &qword_1EC7ECA78;
    v605 = &qword_1D5622340;
    v606 = v520;
  }

  sub_1D4E50004(v606, v604, v605);
LABEL_107:
  v626 = v723;
  v627 = v709;
  v628 = OUTLINED_FUNCTION_169_0(v738);
  __swift_storeEnumTagSinglePayload(v628, v629, 1, v699);
  OUTLINED_FUNCTION_61_2(&v727);
  sub_1D4E68940(v520, v630, v631, v632);
  OUTLINED_FUNCTION_117_0(&v733 + 8);
  sub_1D4F39AB0(v633, v634, v635, v636);
  OUTLINED_FUNCTION_1(v520);
  if (v398)
  {
    sub_1D4E50004(v520, &qword_1EC7ECD80, &qword_1D5622F70);
    v637 = v707;
    v638 = v735;
  }

  else
  {
    v639 = v520 + *(v585 + 24);
    OUTLINED_FUNCTION_122_0(&v686);
    sub_1D4F39AB0(v640, v641, v642, v643);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v520, v644);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v487);
    v637 = v707;
    v638 = v735;
    if (v645)
    {
      sub_1D4E50004(v487, &qword_1EC7ECD18, &qword_1D5631040);
    }

    else
    {
      v646 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v646);
      sub_1D5614898();
      OUTLINED_FUNCTION_91_6();
      sub_1D4FF11E4(v647);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v648 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v648, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v650 = *(v649 + 8);
      v651 = OUTLINED_FUNCTION_86_0();
      v652(v651);
    }

    OUTLINED_FUNCTION_171_1();
  }

  v653 = v703[1];
  v654 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v654, v655, v656, v657);
  sub_1D4E68940(v637, v387 + v653, &qword_1EC7EB620, &unk_1D561E5B0);
  v658 = *(v575 + 32);
  v659 = *(v487 + v658);
  if (v659 == 1)
  {
    v660 = 0;
  }

  else
  {
    v660 = *(v487 + v658);
  }

  *(v387 + v638[51]) = v660;
  v739 = v638;
  v740 = sub_1D4FF11E4(&qword_1EC7EDBA8);
  v661 = __swift_allocate_boxed_opaque_existential_0(&v737);
  sub_1D50002E0(v387, v661, type metadata accessor for TVEpisodePropertyProvider);
  sub_1D4E67688(v659);
  TVEpisode.init(propertyProvider:)(&v737, v708);

  OUTLINED_FUNCTION_24_0(v576);
  (*(v662 + 8))(v726, v576);
  OUTLINED_FUNCTION_24_0(v719);
  (*(v663 + 8))(v627);
  OUTLINED_FUNCTION_136(&v743);
  v664(v721, v626);
  sub_1D4E50004(v720, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v487, v665);
  return sub_1D500033C(v387, type metadata accessor for TVEpisodePropertyProvider);
}

void sub_1D4FFC7E0()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = sub_1D560D9A8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v51 = v7;
  v52 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560D838();
  v14 = OUTLINED_FUNCTION_4(v13);
  v49 = v15;
  v50 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for CloudMusicMovie.Attributes(0);
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = type metadata accessor for CloudMusicMovie(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v31 = sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  sub_1D5610648();
  sub_1D50002E0(v0 + *(v29 + 28), v27, type metadata accessor for CloudMusicMovie.Attributes);
  sub_1D500033C(v0, type metadata accessor for CloudMusicMovie);
  v35 = sub_1D4FF11E4(&unk_1EDD5C958);
  v36 = MEMORY[0x1DA6E8800](v21, v35);
  sub_1D500033C(v27, type metadata accessor for CloudMusicMovie.Attributes);
  if (v36)
  {
    sub_1D501F124(v12);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
    OUTLINED_FUNCTION_180_1();
    v40 = OUTLINED_FUNCTION_98();
    sub_1D4E50004(v40, v41, &unk_1D56223C0);
    (*(v51 + 8))(v12, v52);
    sub_1D560D608();
    (*(v49 + 8))(v20, v50);
    v42 = OUTLINED_FUNCTION_159();
    sub_1D4E50004(v42, v43, &unk_1D56223C0);
    v44 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v31);
    v47 = OUTLINED_FUNCTION_63_1();
    sub_1D4F39A1C(v47, v48, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4FFCB28()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = sub_1D560D9A8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v57 = v7;
  v58 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560D838();
  v14 = OUTLINED_FUNCTION_4(v13);
  v55 = v15;
  v56 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = type metadata accessor for CloudTVEpisode(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v31 = sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  sub_1D5610648();
  v35 = *(v29 + 28);
  OUTLINED_FUNCTION_14_24();
  sub_1D50002E0(v0 + v36, v27, v37);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v0, v38);
  OUTLINED_FUNCTION_11_31();
  v40 = sub_1D4FF11E4(v39);
  v41 = MEMORY[0x1DA6E8800](v21, v40);
  OUTLINED_FUNCTION_13_29();
  sub_1D500033C(v27, v42);
  if (v41)
  {
    sub_1D501F124(v12);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v31);
    OUTLINED_FUNCTION_180_1();
    v46 = OUTLINED_FUNCTION_98();
    sub_1D4E50004(v46, v47, &unk_1D56223C0);
    (*(v57 + 8))(v12, v58);
    sub_1D560D608();
    (*(v55 + 8))(v20, v56);
    v48 = OUTLINED_FUNCTION_159();
    sub_1D4E50004(v48, v49, &unk_1D56223C0);
    v50 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v31);
    v53 = OUTLINED_FUNCTION_63_1();
    sub_1D4F39A1C(v53, v54, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  OUTLINED_FUNCTION_46();
}

void TVEpisode.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v553 = v25;
  v552 = v26;
  v551 = v27;
  v532 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v33);
  v34 = sub_1D5610088();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v48);
  v530 = sub_1D5612B78();
  v49 = OUTLINED_FUNCTION_4(v530);
  v529 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v54 = OUTLINED_FUNCTION_48(v53);
  v526 = type metadata accessor for CloudTVEpisode(v54);
  v55 = OUTLINED_FUNCTION_14(v526);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v76 = OUTLINED_FUNCTION_22(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v82 = OUTLINED_FUNCTION_22(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v487[-v86];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v89 = OUTLINED_FUNCTION_22(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v109);
  v550 = sub_1D5613578();
  v110 = OUTLINED_FUNCTION_4(v550);
  v549 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v121 = OUTLINED_FUNCTION_22(v120);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v127 = OUTLINED_FUNCTION_22(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v133 = OUTLINED_FUNCTION_22(v132);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v139 = OUTLINED_FUNCTION_22(v138);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v487[-v143];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v145);
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v149);
  v569 = sub_1D560FDC8();
  v150 = OUTLINED_FUNCTION_4(v569);
  v533 = v151;
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v154);
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4(v568);
  v567 = v155;
  v157 = *(v156 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v159);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v160);
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v165);
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v169);
  v523 = sub_1D5610788();
  v170 = OUTLINED_FUNCTION_4(v523);
  v520 = v171;
  v173 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v174);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v175);
  v177 = *(v176 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v179);
  v518 = sub_1D56107C8();
  v180 = OUTLINED_FUNCTION_4(v518);
  v517[0] = v181;
  v183 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v186 = OUTLINED_FUNCTION_22(v185);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v190);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v192 = OUTLINED_FUNCTION_22(v191);
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v198 = OUTLINED_FUNCTION_22(v197);
  v200 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v202);
  v562 = sub_1D56128C8();
  v203 = OUTLINED_FUNCTION_4(v562);
  v205 = v204;
  v207 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_5_0();
  v209 = v208;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v210);
  v212 = *(v211 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v214);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v216 = OUTLINED_FUNCTION_22(v215);
  v218 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_159_1();
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v221 = OUTLINED_FUNCTION_22(v220);
  v223 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v224);
  OUTLINED_FUNCTION_13_2();
  v226 = OUTLINED_FUNCTION_48(v225);
  v525 = type metadata accessor for CloudTVEpisode.Attributes(v226);
  v227 = OUTLINED_FUNCTION_14(v525);
  v229 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v230);
  v522 = TVEpisode.showName.getter();
  v521 = v231;
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  v232 = sub_1D56140F8();
  v233 = sub_1D4FF11E4(&qword_1EDD54508);
  sub_1D4FF11E4(&qword_1EC7EC490);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_205_0();
  *(v235 - 256) = v234;
  sub_1D560EC28();
  OUTLINED_FUNCTION_1(v21);
  v564 = v232;
  if (v236)
  {
    sub_1D4E50004(v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_15_1();
    v238 = *(v237 + 8);
    v239 = OUTLINED_FUNCTION_134_0();
    v240(v239);
  }

  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_139_4(v241);
  if (qword_1EC7E9178 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_205_0();
  v243 = *(v242 - 256);
  sub_1D560EC28();
  v244 = v577;
  if (BYTE8(v577))
  {
    v244 = 0;
  }

  *&v577 = v244;
  v516 = sub_1D504A774();
  if (qword_1EC7E9188 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  v245 = MEMORY[0x1E69E7CC0];
  if (v577)
  {
    v246 = v577;
  }

  else
  {
    v246 = MEMORY[0x1E69E7CC0];
  }

  v515 = sub_1D511C730(v246);

  if (qword_1EC7E9190 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  v513 = *(&v577 + 1);
  v514 = v577;
  if (qword_1EC7E9290 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  if (v577)
  {
    v512 = sub_1D525AA6C(v577);
  }

  else
  {
    v512 = 0;
  }

  v556 = v144;
  v560 = v87;
  if (qword_1EC7E9258 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_205_0();
  v248 = *(v247 - 256);
  OUTLINED_FUNCTION_138_4();
  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4();
  sub_1D56128D8();
  OUTLINED_FUNCTION_172(&v570);
  sub_1D5612898();
  (*(v205 + 8))(v209, v562);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v249 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v249, 0, 1, v250);
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_138_4();
  v511 = v577;
  v251 = v534;
  v252 = v497;
  if (qword_1EC7E91B0 != -1)
  {
    swift_once();
  }

  v253 = sub_1D5610978();
  v254 = v538;
  OUTLINED_FUNCTION_138_4();
  OUTLINED_FUNCTION_43_0(v254);
  v562 = v233;
  if (v236)
  {
    sub_1D4E50004(v254, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    OUTLINED_FUNCTION_172(&v571);
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v253);
    v256 = *(v255 + 8);
    v257 = OUTLINED_FUNCTION_164_0();
    v258(v257);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v259 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v259, v260, v261, v262);
  sub_1D4F84A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v263 = v562;
  OUTLINED_FUNCTION_78_7();

  v509 = v577;
  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  v508 = v577;
  v507 = BYTE8(v577);
  v264 = v510;
  if (qword_1EC7E9250 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  v506 = v577;
  v505 = BYTE8(v577);
  v265 = v542;
  if (qword_1EC7E9270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  v504 = v577;
  v503 = BYTE8(v577);
  if (qword_1EC7E91B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7();
  v502 = v577;
  if (qword_1EC7E9298 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_137_3(&v572);
  v538 = v266;
  OUTLINED_FUNCTION_78_7();
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  if (v577 == 26)
  {
    v501 = 26;
  }

  else
  {
    LOBYTE(v574) = v577;
    v501 = sub_1D4FD3EC0();
  }

  v500 = TVEpisode.title.getter();
  v499 = v267;
  if (qword_1EC7E9218 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7();
  sub_1D501B598();
  v498 = v268;

  if (qword_1EC7E9220 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  OUTLINED_FUNCTION_43_0(v252);
  if (v236)
  {
    sub_1D4E50004(v252, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v253);
    (*(v269 + 8))(v252, v253);
  }

  v270 = v541;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v271 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v271, v272, v273, v274);
  v275 = v564;
  if (qword_1EC7E9238 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_172(&a10);
  OUTLINED_FUNCTION_78_7();
  OUTLINED_FUNCTION_57(v265, 1, v275);
  if (v236)
  {
    sub_1D4E50004(v265, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v275);
    v277 = *(v276 + 8);
    v278 = OUTLINED_FUNCTION_141();
    v279(v278);
  }

  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_24_8(v270, v281, v282, v280);
  if (qword_1EC7E9240 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDBB0, L"X\b\t");
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7();
  if (v577)
  {
    v283 = v577;
  }

  else
  {
    v283 = v245;
  }

  v284 = *(v283 + 16);
  v535 = v24;
  if (v284)
  {
    *&v577 = v245;
    OUTLINED_FUNCTION_135_5();
    sub_1D4F0409C();
    v285 = v577;
    v286 = v533 + 16;
    v565 = *(v533 + 16);
    v287 = *(v533 + 80);
    OUTLINED_FUNCTION_43_3();
    v497 = v283;
    v289 = v283 + v288;
    v564 = *(v286 + 56);
    OUTLINED_FUNCTION_119_3();
    do
    {
      v290 = OUTLINED_FUNCTION_169_0(&a11);
      v565(v290, v289, v569);
      sub_1D560FDB8();
      v291 = *(v286 - 8);
      v292 = OUTLINED_FUNCTION_222();
      v293(v292);
      *&v577 = v285;
      v294 = *(v285 + 16);
      if (v294 >= *(v285 + 24) >> 1)
      {
        sub_1D4F0409C();
        v285 = v577;
      }

      *(v285 + 16) = v294 + 1;
      v295 = *(v567 + 80);
      OUTLINED_FUNCTION_43_3();
      (*(v297 + 32))(v285 + v296 + *(v297 + 72) * v294, v264, v568);
      v289 += v564;
      --v284;
    }

    while (v284);
    v567 = v285;

    v263 = v562;
    v248 = v563;
    v251 = v534;
  }

  else
  {

    v567 = MEMORY[0x1E69E7CC0];
  }

  sub_1D56107A8();
  v298 = v524;
  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v299 = v517[1];
  sub_1D560EC28();
  v300 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_186(&v548);
  v302 = v263;
  v303 = v519;
  v304 = v523;
  (*(v301 + 104))(v519);
  v566 = sub_1D56107B8();
  v565 = v305;
  MEMORY[8](v303, v304);
  sub_1D4E50004(v299, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136(&v544);
  v306(v251, v518);
  if (qword_1EC7E92A0 != -1)
  {
    swift_once();
  }

  v307 = v569;
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v298);
  v308 = v545;
  v309 = v302;
  if (v236)
  {
    sub_1D4E50004(v298, &qword_1EC7EDB88, L"P\b\a");
    v311 = 1;
  }

  else
  {
    sub_1D560FDB8();
    OUTLINED_FUNCTION_136(&v563);
    v310(v298, v307);
    v311 = 0;
  }

  v312 = v539;
  v313 = v516;
  __swift_storeEnumTagSinglePayload(v308, v311, 1, v568);
  v314 = MEMORY[0x1E69E7CC0];
  if (qword_1EC7E92A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4();
  if (qword_1EC7E9278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4();
  if (*(&v577 + 1))
  {
    v570 = v577;
    v571 = v578;
    v572 = v579;
    v573 = v580;
    OUTLINED_FUNCTION_172(&v573 + 8);
    sub_1D51394FC(v315);
    v574 = v570;
    v575[0] = v571;
    v575[1] = v572;
    v576 = v573;
    sub_1D5000CD8(&v574);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v316 = OUTLINED_FUNCTION_17_2();
    v318 = 0;
  }

  else
  {
    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v316 = v546;
    v318 = 1;
  }

  __swift_storeEnumTagSinglePayload(v316, v318, 1, v317);
  if (qword_1EC7E9288 != -1)
  {
    swift_once();
  }

  v319 = v525;
  v320 = v555;
  v321 = v555 + v525[29];
  OUTLINED_FUNCTION_138_4();
  if (v502)
  {
    v314 = v502;
  }

  v322 = v521;
  *v320 = v522;
  v320[1] = v322;
  sub_1D4F39A1C(v312, v320 + v319[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v320 + v319[6]) = v313;
  OUTLINED_FUNCTION_148_4(v319[7]);
  v323 = (v320 + v319[8]);
  v324 = v513;
  *v323 = v514;
  v323[1] = v324;
  OUTLINED_FUNCTION_148_4(v319[9]);
  sub_1D4F39A1C(v540, v320 + v319[10], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_148_4(v319[11]);
  v325 = v309;
  v326 = v320 + v319[12];
  OUTLINED_FUNCTION_204_1();
  sub_1D4F39A1C(v327, v328, v329, v330);
  OUTLINED_FUNCTION_148_4(v319[13]);
  v331 = v320 + v319[14];
  *v331 = v508;
  v331[8] = v507;
  v332 = v320 + v319[15];
  *v332 = v506;
  v332[8] = v505;
  v333 = v320 + v319[16];
  *v333 = v504;
  v333[8] = v503;
  *(v320 + v319[17]) = v314;
  v334 = &unk_1D561D1D0;
  sub_1D4F39A1C(v543, v320 + v319[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v320 + v319[19]) = v501;
  v335 = (v320 + v319[20]);
  v336 = v499;
  *v335 = v500;
  v335[1] = v336;
  OUTLINED_FUNCTION_148_4(v319[21]);
  v337 = v320 + v319[22];
  OUTLINED_FUNCTION_204_1();
  sub_1D4F39A1C(v338, v339, v340, v341);
  sub_1D4F39A1C(v541, v320 + v319[23], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_4(v319[24]);
  v342 = (v320 + v319[25]);
  v343 = v565;
  *v342 = v566;
  v342[1] = v343;
  sub_1D4F39A1C(v545, v320 + v319[26], &qword_1EC7ED9C0, &qword_1D5626FB0);
  sub_1D4F39A1C(v544, v320 + v319[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F39A1C(v546, v320 + v319[28], &qword_1EC7ED9B0, &unk_1D5631050);
  v344 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_145_0(&v577);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v345, v346, v347, v344);
  if (qword_1EC7E92B0 != -1)
  {
    swift_once();
  }

  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_137_3(&v579 + 8);
  v349 = v535;
  sub_1D560EC28();
  v350 = v325;
  v351 = v248;
  if (qword_1EC7E92B8 != -1)
  {
    swift_once();
  }

  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_137_3(&v578 + 8);
  OUTLINED_FUNCTION_204_1();
  sub_1D560EC28();
  if (qword_1EC7E92C0 != -1)
  {
    swift_once();
  }

  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_204_1();
  sub_1D560EC28();
  v354 = OUTLINED_FUNCTION_209_0();
  OUTLINED_FUNCTION_32_1(v354);
  if (!v236 || (OUTLINED_FUNCTION_43_0(v559), !v236) || (OUTLINED_FUNCTION_5_1(v557), !v236))
  {
    v569 = v344;
    OUTLINED_FUNCTION_209_0();
    OUTLINED_FUNCTION_117_0(v517);
    sub_1D4F39AB0(v355, v356, v357, v358);
    OUTLINED_FUNCTION_32_1(v349);
    if (v236)
    {
      sub_1D4E50004(v349, &qword_1EC7EA788, &unk_1D56223A0);
      v366 = v490;
      v334 = v536;
    }

    else
    {
      sub_1D5613C48();
      v568 = v353;
      OUTLINED_FUNCTION_96_5();
      v350 = sub_1D4FF11E4(v359);
      OUTLINED_FUNCTION_35_17();
      v361 = *(v360 - 256);
      OUTLINED_FUNCTION_110_5(v362);
      OUTLINED_FUNCTION_186(&v566);
      OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_181_1();
      v363 = OUTLINED_FUNCTION_39_11();
      v364(v363);
      OUTLINED_FUNCTION_24_0(v348);
      v353 = v568;
      (*(v365 + 8))(v349, v348);
      v366 = v490;
    }

    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v334, v368, v369, v367);
    v370 = v488;
    sub_1D4F39AB0(v559, v488, &qword_1EC7ED1F8, &qword_1D5634780);
    OUTLINED_FUNCTION_43_0(v370);
    if (v236)
    {
      sub_1D4E50004(v370, &qword_1EC7ED1F8, &qword_1D5634780);
    }

    else
    {
      type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_95_4();
      v350 = sub_1D4FF11E4(v371);
      OUTLINED_FUNCTION_88_6();
      sub_1D4FF11E4(v372);
      OUTLINED_FUNCTION_35_17();
      v374 = *(v373 - 256);
      OUTLINED_FUNCTION_110_5(v375);
      OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0();
      v376 = OUTLINED_FUNCTION_39_11();
      v377(v376);
      OUTLINED_FUNCTION_24_0(v352);
      (*(v378 + 8))(v370, v352);
    }

    v351 = v491;
    v334 = v489;
    v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_139_4(v379);
    sub_1D4F39AB0(v557, v334, &qword_1EC7ECBA0, &unk_1D56270F0);
    OUTLINED_FUNCTION_5_1(v334);
    if (v236)
    {
      sub_1D4E50004(v320, &qword_1EC7ECD98, &unk_1D5627070);
      sub_1D4E50004(v334, &qword_1EC7ECBA0, &unk_1D56270F0);
      v383 = 1;
    }

    else
    {
      type metadata accessor for TVShow();
      sub_1D4FF11E4(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4FF11E4(v380);
      OUTLINED_FUNCTION_167_0(&v574 + 8);
      OUTLINED_FUNCTION_110_5(v381);
      OUTLINED_FUNCTION_230_0();
      (*(v549 + 8))(v350, v550);
      sub_1D4E50004(v320, &qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_56_0();
      (*(v382 + 8))(v334, v353);
      v383 = 0;
    }

    v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_24_8(v351, v385, v386, v384);
    OUTLINED_FUNCTION_117_0(&v518);
    sub_1D4F39A1C(v387, v388, v389, v390);
    v391 = v569;
    sub_1D4F39A1C(v366, v383 + *(v569 + 20), &qword_1EC7ECD90, &unk_1D5622F80);
    sub_1D4F39A1C(v351, v383 + *(v391 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    __swift_storeEnumTagSinglePayload(v383, 0, 1, v391);
    v392 = OUTLINED_FUNCTION_159();
    sub_1D4F39A1C(v392, v393, v394, v395);
  }

  v396 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_115_5(&v576 + 8);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v397, v398, v399, v396);
  if (qword_1EC7E92C8 != -1)
  {
    swift_once();
  }

  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_137_3(&v580);
  OUTLINED_FUNCTION_205_0();
  v402 = *(v401 - 256);
  sub_1D560EC28();
  if (qword_1EC7E92D0 != -1)
  {
    swift_once();
  }

  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_137_3(&v579);
  sub_1D560EC28();
  if (qword_1EC7E92D8 != -1)
  {
    swift_once();
  }

  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_222();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v561);
  if (!v236 || (OUTLINED_FUNCTION_43_0(v560), !v236) || (OUTLINED_FUNCTION_5_1(v558), !v236))
  {
    v569 = v396;
    v405 = v492;
    sub_1D4F39AB0(v561, v492, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_32_1(v405);
    if (v236)
    {
      sub_1D4E50004(v405, &off_1EC7EB5B0, &unk_1D5632170);
      v416 = v495;
      v334 = v537;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_93_6();
      sub_1D4FF11E4(v406);
      OUTLINED_FUNCTION_35_17();
      v408 = *(v407 - 256);
      OUTLINED_FUNCTION_110_5(v409);
      OUTLINED_FUNCTION_186(&v567);
      OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_181_1();
      v410 = OUTLINED_FUNCTION_39_11();
      v411(v410);
      OUTLINED_FUNCTION_24_0(v400);
      v413 = *(v412 + 8);
      v414 = OUTLINED_FUNCTION_81_0();
      v415(v414);
      v416 = v495;
    }

    v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_24_8(v334, v418, v419, v417);
    v420 = v493;
    sub_1D4F39AB0(v560, v493, &qword_1EC7ECBA8, &unk_1D56223B0);
    OUTLINED_FUNCTION_43_0(v420);
    if (v236)
    {
      sub_1D4E50004(v420, &qword_1EC7ECBA8, &unk_1D56223B0);
    }

    else
    {
      type metadata accessor for TVEpisode();
      OUTLINED_FUNCTION_92_4();
      sub_1D4FF11E4(v421);
      OUTLINED_FUNCTION_35_17();
      v423 = *(v422 - 256);
      OUTLINED_FUNCTION_110_5(v424);
      OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0();
      v425 = OUTLINED_FUNCTION_39_11();
      v426(v425);
      OUTLINED_FUNCTION_24_0(v403);
      (*(v427 + 8))(v420, v403);
    }

    v428 = v496;
    v429 = v494;
    v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_139_4(v430);
    sub_1D4F39AB0(v558, v429, &qword_1EC7EB620, &unk_1D561E5B0);
    OUTLINED_FUNCTION_5_1(v429);
    if (v236)
    {
      v431 = OUTLINED_FUNCTION_115_5(&v576 + 8);
      sub_1D4E50004(v431, v432, v433);
      sub_1D4E50004(v429, &qword_1EC7EB620, &unk_1D561E5B0);
      v443 = 1;
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_91_6();
      sub_1D4FF11E4(v434);
      OUTLINED_FUNCTION_35_17();
      v436 = *(v435 - 256);
      OUTLINED_FUNCTION_110_5(v437);
      OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0();
      OUTLINED_FUNCTION_136(v575);
      v438(v351, v550);
      v439 = OUTLINED_FUNCTION_115_5(&v576 + 8);
      sub_1D4E50004(v439, v440, v441);
      OUTLINED_FUNCTION_56_0();
      (*(v442 + 8))(v429, v404);
      v443 = 0;
    }

    v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_24_8(v428, v445, v446, v444);
    OUTLINED_FUNCTION_117_0(&v524);
    sub_1D4F39A1C(v447, v448, v449, v450);
    v451 = v569;
    sub_1D4F39A1C(v416, v443 + *(v569 + 20), &qword_1EC7ECA78, &qword_1D5622340);
    sub_1D4F39A1C(v428, v443 + *(v451 + 24), &qword_1EC7ECD18, &qword_1D5631040);
    __swift_storeEnumTagSinglePayload(v443, 0, 1, v451);
    sub_1D4F39A1C(v443, v351, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  v452 = type metadata accessor for TVEpisode();
  OUTLINED_FUNCTION_92_4();
  sub_1D4FF11E4(v453);
  v454 = sub_1D560CBD8();
  if (v454 <= 1)
  {
    v455 = 1;
  }

  else
  {
    v455 = v454;
  }

  v456 = v351;
  v458 = *v349;
  v457 = v349[1];
  v459 = v526;
  v460 = v526[5];
  OUTLINED_FUNCTION_14_24();
  v461 = v527;
  sub_1D50002E0(v555, v527 + v462, v463);
  sub_1D4F39AB0(v556, v461 + v459[6], &qword_1EC7ECD98, &unk_1D5627070);
  sub_1D4F39AB0(v456, v461 + v459[7], &qword_1EC7ECD80, &qword_1D5622F70);
  *v461 = v458;
  v461[1] = v457;
  *(v461 + v459[8]) = v455;
  v464 = *(v452 + 20);

  OUTLINED_FUNCTION_150(&v554);
  sub_1D5611A28();
  sub_1D560D838();
  v465 = OUTLINED_FUNCTION_38_8();
  __swift_storeEnumTagSinglePayload(v465, v466, v467, v468);
  sub_1D5611C98();
  OUTLINED_FUNCTION_169_0(&v555);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v469, v470, v471, v472);
  v473 = v528;
  OUTLINED_FUNCTION_63_1();
  sub_1D5612B38();
  v474 = OUTLINED_FUNCTION_89_6();
  sub_1D50002E0(v474, v547, v475);
  sub_1D5611A98();
  v569 = sub_1D5611A88();
  v568 = v476;
  OUTLINED_FUNCTION_167_0(&v559);
  v478 = v530;
  (*(v477 + 16))(v531, v473, v530);
  v479 = OUTLINED_FUNCTION_38_8();
  __swift_storeEnumTagSinglePayload(v479, v480, v481, v478);
  v567 = sub_1D5611A38();
  v566 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FF11E4(&qword_1EC7EDBC0);
  sub_1D5610628();
  (*(v452 + 8))(v473, v478);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v461, v482);
  sub_1D4E50004(v554, &qword_1EC7ECD80, &qword_1D5622F70);
  sub_1D4E50004(v556, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_13_29();
  sub_1D500033C(v555, v483);
  sub_1D4E50004(v561, &off_1EC7EB5B0, &unk_1D5632170);
  v484 = OUTLINED_FUNCTION_209_0();
  sub_1D4E50004(v484, v485, v486);
  sub_1D4E50004(v558, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v560, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v557, &qword_1EC7ECBA0, &unk_1D56270F0);
  sub_1D4E50004(v559, &qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FFFD60()
{
  sub_1D4FF11E4(&qword_1EC7ECBB8);

  return sub_1D5612668();
}

uint64_t sub_1D4FFFDCC(uint64_t a1)
{
  v2 = sub_1D4FF11E4(&unk_1EC7EDC80);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D4FFFE38()
{
  result = qword_1EC7EDA40;
  if (!qword_1EC7EDA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EC7EDA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA40);
  }

  return result;
}

unint64_t sub_1D4FFFEEC()
{
  result = qword_1EC7EDA58;
  if (!qword_1EC7EDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    sub_1D4FFFF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA58);
  }

  return result;
}

unint64_t sub_1D4FFFF70()
{
  result = qword_1EC7EDA60;
  if (!qword_1EC7EDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA60);
  }

  return result;
}

unint64_t sub_1D4FFFFC4()
{
  result = qword_1EC7EDA68;
  if (!qword_1EC7EDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA68);
  }

  return result;
}

unint64_t sub_1D5000018()
{
  result = qword_1EC7EDA70;
  if (!qword_1EC7EDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    sub_1D500009C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA70);
  }

  return result;
}

unint64_t sub_1D500009C()
{
  result = qword_1EC7EDA78;
  if (!qword_1EC7EDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF11E4(&unk_1EC7EDA28);
    sub_1D4FF11E4(&unk_1EC7EDA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA78);
  }

  return result;
}

unint64_t sub_1D5000184()
{
  result = qword_1EDD53210;
  if (!qword_1EDD53210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EDD55388);
    sub_1D4FF11E4(&unk_1EDD55390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53210);
  }

  return result;
}

unint64_t sub_1D500028C()
{
  result = qword_1EC7EDA88;
  if (!qword_1EC7EDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA88);
  }

  return result;
}

uint64_t sub_1D50002E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D500033C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D50003B4()
{
  result = qword_1EC7EDAA8;
  if (!qword_1EC7EDAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D4F374E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAA8);
  }

  return result;
}

unint64_t sub_1D5000458()
{
  result = qword_1EC7EDAB0;
  if (!qword_1EC7EDAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D4F37380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAB0);
  }

  return result;
}

unint64_t sub_1D50004DC()
{
  result = qword_1EC7EDAC0;
  if (!qword_1EC7EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAC0);
  }

  return result;
}

unint64_t sub_1D5000530()
{
  result = qword_1EC7EDAC8;
  if (!qword_1EC7EDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D50005B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAC8);
  }

  return result;
}

unint64_t sub_1D50005B4()
{
  result = qword_1EC7EDAD0;
  if (!qword_1EC7EDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4FF11E4(&unk_1EDD533E0);
    sub_1D4FF11E4(&unk_1EDD533E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAD0);
  }

  return result;
}

unint64_t sub_1D500069C()
{
  result = qword_1EC7EDAD8;
  if (!qword_1EC7EDAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAD8);
  }

  return result;
}

unint64_t sub_1D5000720()
{
  result = qword_1EC7EDAE0;
  if (!qword_1EC7EDAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4FF11E4(&unk_1EDD53318);
    sub_1D4FF11E4(&unk_1EDD53320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAE0);
  }

  return result;
}

unint64_t sub_1D5000808()
{
  result = qword_1EC7EDAF0;
  if (!qword_1EC7EDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D500088C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAF0);
  }

  return result;
}

unint64_t sub_1D500088C()
{
  result = qword_1EDD53290;
  if (!qword_1EDD53290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4FF11E4(&unk_1EDD533E0);
    sub_1D4FF11E4(&unk_1EDD533E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53290);
  }

  return result;
}

unint64_t sub_1D5000974()
{
  result = qword_1EDD53098;
  if (!qword_1EDD53098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D50009F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53098);
  }

  return result;
}

unint64_t sub_1D50009F8()
{
  result = qword_1EDD53278;
  if (!qword_1EDD53278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4FF11E4(&unk_1EDD53318);
    sub_1D4FF11E4(&unk_1EDD53320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53278);
  }

  return result;
}

unint64_t sub_1D5000AE0()
{
  result = qword_1EC7EDB00;
  if (!qword_1EC7EDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB00);
  }

  return result;
}

uint64_t sub_1D5000B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

unint64_t sub_1D5000B90()
{
  result = qword_1EC7EDB28;
  if (!qword_1EC7EDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB28);
  }

  return result;
}

unint64_t sub_1D5000BE4()
{
  result = qword_1EC7EDB48;
  if (!qword_1EC7EDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB48);
  }

  return result;
}

unint64_t sub_1D5000C38()
{
  result = qword_1EC7EDB70;
  if (!qword_1EC7EDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB70);
  }

  return result;
}

uint64_t sub_1D5000C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v4;
}

unint64_t sub_1D5000D78()
{
  result = qword_1EC7EDBD0;
  if (!qword_1EC7EDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBD0);
  }

  return result;
}

unint64_t sub_1D5000DD0()
{
  result = qword_1EC7EDBD8;
  if (!qword_1EC7EDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBD8);
  }

  return result;
}

unint64_t sub_1D5000E28()
{
  result = qword_1EC7EDBE0;
  if (!qword_1EC7EDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBE0);
  }

  return result;
}

unint64_t sub_1D5000EF8()
{
  result = qword_1EC7EDC00;
  if (!qword_1EC7EDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC00);
  }

  return result;
}

unint64_t sub_1D5000F50()
{
  result = qword_1EC7EDC08;
  if (!qword_1EC7EDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC08);
  }

  return result;
}

unint64_t sub_1D5000FA8()
{
  result = qword_1EC7EDC10;
  if (!qword_1EC7EDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC10);
  }

  return result;
}

unint64_t sub_1D500102C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50010C8()
{
  result = qword_1EC7EDC30;
  if (!qword_1EC7EDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC30);
  }

  return result;
}

void sub_1D5001394()
{
  type metadata accessor for CloudTVEpisode.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D50014A0(319, qword_1EDD571B8, type metadata accessor for CloudTVEpisode.Relationships);
    if (v1 <= 0x3F)
    {
      sub_1D50014A0(319, qword_1EDD57268, type metadata accessor for CloudTVEpisode.Associations);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD57150);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D50014A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D500151C()
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

    else
    {
      sub_1D4E6D600(319, &qword_1EDD52818, &qword_1EC7ED9F0, &unk_1D5626FD0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
      if (v12 > 0x3F)
      {
        return v11;
      }

      sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_1D4E518A0(319, &qword_1EDD52708);
      if (v14 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
      if (v15 > 0x3F)
      {
        return v5;
      }

      sub_1D50014A0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
      if (v16 > 0x3F)
      {
        return v5;
      }

      sub_1D4E518A0(319, qword_1EDD57158);
      if (v17 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD527C8, &qword_1EC7ECA08, &unk_1D56222F0);
      if (v18 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD52798, &qword_1EC7EDA10, &qword_1D5626FE0);
      if (v19 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4E6D600(319, &qword_1EDD531E8, &qword_1EC7EB110, &qword_1D561DEB0);
        v1 = v20;
        if (v21 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD53208, &qword_1EC7ED9A8, &unk_1D5626F90);
          v1 = v22;
          if (v23 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1D5001920()
{
  sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7ED278, &qword_1EC7ECD88, &qword_1D5622F78);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD530D8, &qword_1EC7ECA50, &unk_1D5626FF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5001A3C()
{
  sub_1D4E6D600(319, &qword_1EDD530A0, &qword_1EC7EB5D8, &unk_1D5627030);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7ECC20, &qword_1EC7ECA70, &unk_1D56310E0);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD53090, &qword_1EC7ECD10, &unk_1D5622F10);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_1D5001B20(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.Metadata.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5001E74()
{
  result = qword_1EC7EDC38;
  if (!qword_1EC7EDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC38);
  }

  return result;
}

unint64_t sub_1D5001ECC()
{
  result = qword_1EC7EDC40;
  if (!qword_1EC7EDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC40);
  }

  return result;
}

unint64_t sub_1D5001F24()
{
  result = qword_1EC7EDC48;
  if (!qword_1EC7EDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC48);
  }

  return result;
}

unint64_t sub_1D5001F7C()
{
  result = qword_1EC7EDC50;
  if (!qword_1EC7EDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC50);
  }

  return result;
}

unint64_t sub_1D5001FD4()
{
  result = qword_1EC7EDC58;
  if (!qword_1EC7EDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC58);
  }

  return result;
}

unint64_t sub_1D500202C()
{
  result = qword_1EC7EDC60;
  if (!qword_1EC7EDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC60);
  }

  return result;
}

unint64_t sub_1D5002084()
{
  result = qword_1EC7EDC68;
  if (!qword_1EC7EDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC68);
  }

  return result;
}

unint64_t sub_1D50020DC()
{
  result = qword_1EC7EDC70;
  if (!qword_1EC7EDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC70);
  }

  return result;
}

unint64_t sub_1D5002134()
{
  result = qword_1EC7EDC78;
  if (!qword_1EC7EDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC78);
  }

  return result;
}

void OUTLINED_FUNCTION_28_22(int a1@<W8>)
{
  *(v1 - 208) = a1;
  *(v1 - 192) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_34_17()
{
  v1 = *(*(v0 - 200) + 8);
  v3 = *(v0 - 136);
  return *(v0 - 128);
}

void OUTLINED_FUNCTION_37_16(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_42_16()
{
  v7 = *(v5 - 112) + v3;

  return sub_1D4F39AB0(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_78_7()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_80_4()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 96);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_110_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 432);

  return sub_1D4F1ABE8(a1);
}

double OUTLINED_FUNCTION_121_4()
{
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 336) = 0u;
  *(v0 - 352) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_125_4()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 96);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_138_4()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_139_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_140_4()
{

  return sub_1D56163D8();
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1)
{
  v7 = *(a1 + 56);
  *(v5 - 96) = v1;

  return sub_1D4F39AB0(v1, v3, v2, v4);
}

void OUTLINED_FUNCTION_165_3(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_174_1()
{
  result = v0;
  v3 = *(v1 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_177_1()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 96);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_179_1()
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_180_1()
{
  v2 = *(v0 - 104);

  return sub_1D56105B8();
}

uint64_t OUTLINED_FUNCTION_181_1()
{

  return sub_1D560DA98();
}

uint64_t OUTLINED_FUNCTION_184_1()
{

  return sub_1D4F39AB0(v3, v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_213_0()
{
  v1 = *(v0 - 72);
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_217_0(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(*(v1 - 112) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_222_0()
{
  v6 = *(v4 - 88);

  return sub_1D4F39AB0(v6, v1 + v2, v0, v3);
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_226_0()
{

  return type metadata accessor for CloudTVEpisode(0);
}

uint64_t OUTLINED_FUNCTION_228_0()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_230_0()
{

  return sub_1D560DA98();
}

void sub_1D50027D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_3();
  v34 = type metadata accessor for UploadedVideo();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v43);
  v155 = type metadata accessor for UploadedAudio();
  v44 = OUTLINED_FUNCTION_14(v155);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v52);
  v157 = type metadata accessor for TVEpisode();
  v53 = OUTLINED_FUNCTION_14(v157);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v61);
  v159 = sub_1D5613838();
  v62 = OUTLINED_FUNCTION_4(v159);
  v156 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v71);
  v162 = sub_1D5614828();
  v72 = OUTLINED_FUNCTION_4(v162);
  v158 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_31_6();
  v81 = sub_1D560EEA8();
  v82 = OUTLINED_FUNCTION_4(v81);
  v161 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_18_3();
  v91 = type metadata accessor for MusicMovie();
  v92 = OUTLINED_FUNCTION_14(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v163 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v95 = OUTLINED_FUNCTION_14(v163);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v98);
  sub_1D4E62938(v27, &v169);
  sub_1D4E62938(v27, &v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65B0, &unk_1D5663EA0);
  if (swift_dynamicCast())
  {
    v151 = v21;
    sub_1D4E48324(&v164, v168);
    v99 = v168[4];
    __swift_project_boxed_opaque_existential_1(v168, v168[3]);
    v100 = *(v99 + 8);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v169);
      sub_1D4E48324(&v164, &v169);
    }

    else
    {
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
      sub_1D4E50004(&v164, &unk_1EC7F65C0, &qword_1D562E6B0);
    }

    __swift_destroy_boxed_opaque_existential_1(v168);
    v21 = v151;
  }

  else
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1D4E50004(&v164, &qword_1EC7EDCB8, &unk_1D5628170);
  }

  v101 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v101, v102);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_105_5(v23, 0, 1, v91);
    sub_1D5003B40(v23, v22, type metadata accessor for MusicMovie);
    OUTLINED_FUNCTION_55_11(v22);
LABEL_11:
    v107 = v163;
    goto LABEL_12;
  }

  __swift_storeEnumTagSinglePayload(v23, 1, 1, v91);
  sub_1D4E50004(v23, &qword_1EC7EA890, &qword_1D5672D40);
  v103 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v103, v104);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_105_5(v20, 0, 1, v81);
    v105 = *(v161 + 32);
    v105(v160, v20, v81);
    v106 = OUTLINED_FUNCTION_84_4();
    v105(v106, v160, v81);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v20, 1, 1, v81);
  sub_1D4E50004(v20, &qword_1EC7EA990, &qword_1D561D220);
  v111 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v111, v112);
  OUTLINED_FUNCTION_62_12(&a16);
  v107 = v163;
  if (swift_dynamicCast())
  {
    v113 = OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_105_5(v113, v114, v115, v162);
    v116 = *(v158 + 32);
    v117 = OUTLINED_FUNCTION_100_3(&a9);
    v116(v117);
    v118 = OUTLINED_FUNCTION_84_4();
    (v116)(v118, v34, v162);
  }

  else
  {
    v119 = OUTLINED_FUNCTION_64_2();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v162);
    sub_1D4E50004(v22, &unk_1EC7F2BE0, &qword_1D56250F0);
    v122 = OUTLINED_FUNCTION_72_2();
    sub_1D4E62938(v122, v123);
    OUTLINED_FUNCTION_62_12(&a12);
    if (swift_dynamicCast())
    {
      v124 = OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_105_5(v124, v125, v126, v159);
      v127 = *(v156 + 32);
      v128 = OUTLINED_FUNCTION_100_3(&v171);
      v127(v128);
      v129 = OUTLINED_FUNCTION_84_4();
      (v127)(v129, v34, v159);
    }

    else
    {
      v130 = OUTLINED_FUNCTION_64_2();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v159);
      sub_1D4E50004(v22, &qword_1EC7EA978, &qword_1D5652B10);
      v133 = OUTLINED_FUNCTION_72_2();
      sub_1D4E62938(v133, v134);
      OUTLINED_FUNCTION_62_12(&v172);
      if (swift_dynamicCast())
      {
        v135 = OUTLINED_FUNCTION_63_2();
        OUTLINED_FUNCTION_105_5(v135, v136, v137, v157);
        sub_1D5003B40(v22, v154, type metadata accessor for TVEpisode);
        OUTLINED_FUNCTION_55_11(v154);
      }

      else
      {
        v138 = OUTLINED_FUNCTION_64_2();
        __swift_storeEnumTagSinglePayload(v138, v139, v140, v157);
        sub_1D4E50004(v22, &qword_1EC7EA880, &unk_1D561CEE0);
        v141 = OUTLINED_FUNCTION_72_2();
        sub_1D4E62938(v141, v142);
        OUTLINED_FUNCTION_62_12(&v170);
        if (swift_dynamicCast())
        {
          v143 = OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_105_5(v143, v144, v145, v155);
          sub_1D5003B40(v22, v153, type metadata accessor for UploadedAudio);
          OUTLINED_FUNCTION_55_11(v153);
        }

        else
        {
          v146 = OUTLINED_FUNCTION_64_2();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v155);
          sub_1D4E50004(v22, &qword_1EC7EA970, &unk_1D5652B00);
          v149 = OUTLINED_FUNCTION_72_2();
          sub_1D4E48324(v149, v150);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v110 = 1;
            __swift_storeEnumTagSinglePayload(v21, 1, 1, v34);
            sub_1D4E50004(v21, &qword_1EC7EA968, &unk_1D561D1F0);
            goto LABEL_13;
          }

          __swift_storeEnumTagSinglePayload(v21, 0, 1, v34);
          sub_1D5003B40(v21, v152, type metadata accessor for UploadedVideo);
          OUTLINED_FUNCTION_55_11(v152);
        }
      }
    }
  }

LABEL_12:
  swift_storeEnumTagMultiPayload();
  v108 = OUTLINED_FUNCTION_47_17();
  sub_1D5003B40(v108, v29, v109);
  v110 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v29, v110, 1, v107);
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v107 = v2;
  v90 = type metadata accessor for UploadedVideo();
  v3 = OUTLINED_FUNCTION_14(v90);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v6);
  v89[0] = type metadata accessor for UploadedAudio();
  v7 = OUTLINED_FUNCTION_14(v89[0]);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v10);
  v91 = type metadata accessor for TVEpisode();
  v11 = OUTLINED_FUNCTION_14(v91);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v14);
  v15 = sub_1D5613838();
  v16 = OUTLINED_FUNCTION_4(v15);
  v93 = v17;
  v94 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v92 = v20;
  OUTLINED_FUNCTION_70_0();
  v21 = sub_1D5614828();
  v22 = OUTLINED_FUNCTION_4(v21);
  v96 = v23;
  v97 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v95 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D560EEA8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v99 = v29;
  v100 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v98 = v32;
  OUTLINED_FUNCTION_70_0();
  v103 = sub_1D560D838();
  v33 = OUTLINED_FUNCTION_4(v103);
  v105 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v104 = v37;
  OUTLINED_FUNCTION_70_0();
  v101 = type metadata accessor for MusicMovie();
  v38 = OUTLINED_FUNCTION_14(v101);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v102 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1D5610088();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v43);
  v50 = v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v52 = v89 - v51;
  v106 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v53 = OUTLINED_FUNCTION_14(v106);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v56 = v1[4];
  v57 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_99();
  sub_1D5610CF8();
  sub_1D560FE28();
  OUTLINED_FUNCTION_48_9();
  sub_1D4E5E3F8(v58, v59);
  LOBYTE(v1) = sub_1D5614D18();
  v60 = *(v45 + 8);
  v60(v50, v42);
  if (v1)
  {
    v60(v52, v42);
    v61 = v57;
    sub_1D4E62938(v57, v108);
    OUTLINED_FUNCTION_81_1();
    v62 = v104;
    OUTLINED_FUNCTION_45_0();
    sub_1D5610CD8();
    sub_1D560D708();
    OUTLINED_FUNCTION_39_12();
    v63(v62, v103);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_5_30();
    v64 = OUTLINED_FUNCTION_46_1();
    sub_1D5003B40(v64, v65, v66);
    v57 = v61;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v72 = OUTLINED_FUNCTION_47_17();
    sub_1D5003B40(v72, v107, v73);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FE38();
  sub_1D5614D18();
  v67 = OUTLINED_FUNCTION_30_13();
  (v60)(v67);
  if (v42)
  {
    v69 = OUTLINED_FUNCTION_141();
    (v60)(v69);
    OUTLINED_FUNCTION_89_7();
    sub_1D560EDD8();
    v70 = OUTLINED_FUNCTION_83_6();
    v71(v70);
    goto LABEL_6;
  }

  sub_1D560FDF8();
  OUTLINED_FUNCTION_28_23();
  v68 = OUTLINED_FUNCTION_30_13();
  (v60)(v68);
  sub_1D560FF08();
  OUTLINED_FUNCTION_28_23();
  v74 = OUTLINED_FUNCTION_30_13();
  (v60)(v74);
  if (v42)
  {
    v75 = OUTLINED_FUNCTION_141();
    (v60)(v75);
    OUTLINED_FUNCTION_89_7();
    sub_1D5614768();
    v76 = OUTLINED_FUNCTION_83_6();
    v77(v76);
    goto LABEL_6;
  }

  sub_1D560FFA8();
  OUTLINED_FUNCTION_28_23();
  v78 = OUTLINED_FUNCTION_30_13();
  (v60)(v78);
  sub_1D560FE48();
  OUTLINED_FUNCTION_28_23();
  v79 = OUTLINED_FUNCTION_30_13();
  (v60)(v79);
  sub_1D5610078();
  OUTLINED_FUNCTION_28_23();
  v80 = OUTLINED_FUNCTION_30_13();
  (v60)(v80);
  sub_1D560FF28();
  OUTLINED_FUNCTION_28_23();
  v81 = OUTLINED_FUNCTION_30_13();
  (v60)(v81);
  sub_1D560FF38();
  OUTLINED_FUNCTION_28_23();
  v82 = OUTLINED_FUNCTION_30_13();
  (v60)(v82);
  v108[0] = 0;
  v108[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000062, 0x80000001D5681220);
  v83 = v57;
  v84 = v57[3];
  v85 = v57[4];
  __swift_project_boxed_opaque_existential_1(v83, v84);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_48_9();
  sub_1D4E5E3F8(v86, v87);
  v88 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v88);

  v60(v50, v42);
  MEMORY[0x1DA6EAC70](0xD00000000000005FLL, 0x80000001D5681290);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D5003B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.id.getter()
{
  InternalMusicPlayer.Queue.Entry.Item.innerItem.getter(v1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_45_0();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_98();
  sub_1D5003E98(v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = sub_1D560EEA8();
      v16 = v15;
      v17 = MEMORY[0x1E69754B0];
      goto LABEL_7;
    case 2u:
      v15 = sub_1D5614828();
      v16 = v15;
      v17 = MEMORY[0x1E69772F8];
      goto LABEL_7;
    case 3u:
      v15 = sub_1D5613838();
      v16 = v15;
      v17 = MEMORY[0x1E6976BB0];
LABEL_7:
      a1[3] = v15;
      a1[4] = v17;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v16);
      return (*(v18 + 32))();
    case 4u:
      a1[3] = type metadata accessor for TVEpisode();
      v14 = sub_1D4E5E3F8(&qword_1EDD54508, type metadata accessor for TVEpisode);
      v12 = OUTLINED_FUNCTION_104_0(v14);
      v13 = type metadata accessor for TVEpisode;
      return sub_1D5003B40(v8, v12, v13);
    case 5u:
      a1[3] = type metadata accessor for UploadedAudio();
      v20 = sub_1D4E5E3F8(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      v12 = OUTLINED_FUNCTION_104_0(v20);
      v13 = type metadata accessor for UploadedAudio;
      return sub_1D5003B40(v8, v12, v13);
    case 6u:
      a1[3] = type metadata accessor for UploadedVideo();
      v21 = sub_1D4E5E3F8(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      v12 = OUTLINED_FUNCTION_104_0(v21);
      v13 = type metadata accessor for UploadedVideo;
      return sub_1D5003B40(v8, v12, v13);
    default:
      a1[3] = type metadata accessor for MusicMovie();
      v11 = sub_1D4E5E3F8(&qword_1EDD59308, type metadata accessor for MusicMovie);
      v12 = OUTLINED_FUNCTION_104_0(v11);
      v13 = type metadata accessor for MusicMovie;
      return sub_1D5003B40(v8, v12, v13);
  }
}

uint64_t sub_1D5003E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void InternalMusicPlayer.Queue.Entry.Item.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v77 = OUTLINED_FUNCTION_103_4(v4);
  v5 = OUTLINED_FUNCTION_14(v77);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v78 = v8;
  OUTLINED_FUNCTION_70_0();
  v75 = type metadata accessor for UploadedAudio();
  v9 = OUTLINED_FUNCTION_14(v75);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_29_15(v12);
  v73 = type metadata accessor for TVEpisode();
  v13 = OUTLINED_FUNCTION_14(v73);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v74 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D5613838();
  v18 = OUTLINED_FUNCTION_4(v17);
  v71 = v19;
  v72 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_34();
  v22 = sub_1D5614828();
  v23 = OUTLINED_FUNCTION_4(v22);
  v70 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v27 = sub_1D560EEA8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v33 = type metadata accessor for MusicMovie();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v37 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;
  sub_1D5003E98(v79, v42 - v41);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v30 + 32))(v0, v43, v27);
      sub_1D560EDC8();
      (*(v30 + 8))(v0, v27);
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_81();
      v58(v1, v43, v22);
      sub_1D5614758();
      v59 = *(v70 + 8);
      v60 = OUTLINED_FUNCTION_98();
      v61(v60);
      goto LABEL_11;
    case 3u:
      (*(v71 + 32))(v3, v43, v72);
      OUTLINED_FUNCTION_94_5();
      sub_1D56136D8();
      (*(v71 + 8))(v3, v72);
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v52 = v74;
      sub_1D5003B40(v43, v74, v53);
      v54 = *(v73 + 20);
      v55 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v55);
      (*(v56 + 16))(v80, v74 + v54);
      v57 = type metadata accessor for TVEpisode;
      goto LABEL_9;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v52 = v76;
      sub_1D5003B40(v43, v76, v62);
      v63 = *(v75 + 20);
      v64 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v64);
      (*(v65 + 16))(v80, v76 + v63);
      v57 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v52 = v78;
      sub_1D5003B40(v43, v78, v66);
      v67 = *(v77 + 20);
      v68 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v68);
      (*(v69 + 16))(v80, v78 + v67);
      v57 = type metadata accessor for UploadedVideo;
LABEL_9:
      v50 = v57;
      v51 = v52;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      v44 = OUTLINED_FUNCTION_29_12();
      sub_1D5003B40(v44, v45, v46);
      v47 = *(v33 + 20);
      v48 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v48);
      (*(v49 + 16))(v80, v2 + v47);
      OUTLINED_FUNCTION_0_46();
      v51 = v2;
      break;
  }

  sub_1D5008A38(v51, v50);
LABEL_11:
  OUTLINED_FUNCTION_46();
}