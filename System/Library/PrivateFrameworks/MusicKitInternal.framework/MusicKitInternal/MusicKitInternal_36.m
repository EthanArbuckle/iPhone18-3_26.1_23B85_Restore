uint64_t MusicLibraryMapping.Request.response(revisionID:requester:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 24) = v9;
  *(v5 + 32) = v10;
  v11 = swift_task_alloc();
  *(v5 + 40) = v11;
  *v11 = v5;
  v11[1] = sub_1D51814F4;

  return sub_1D5180B48(a1, a3, a4);
}

uint64_t sub_1D51814F4()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 40);
  v3 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v5 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D4F8E8B4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }
}

uint64_t sub_1D5181618@<X0>(int a1@<W2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = _s10FrozenItemVMa();
  result = sub_1D5016040(a1, a2, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1D5181684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1D56158D8();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v40 = a3;
  swift_getAssociatedConformanceWitness();
  v39 = a2;
  v14 = sub_1D560CAB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v34 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  v26 = *a1;
  sub_1D560CAC8();
  sub_1D560CAA8();
  (*(v15 + 8))(v19, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v13, v36);
    v27 = 1;
    v28 = v38;
  }

  else
  {
    (*(v20 + 32))(v25, v13, AssociatedTypeWitness);
    v29 = v34;
    (*(v20 + 16))(v34, v25, AssociatedTypeWitness);
    v30 = v37;
    sub_1D560CAD8();
    (*(v20 + 8))(v25, AssociatedTypeWitness);
    v28 = v38;
    sub_1D52FB70C(v29, v30, v39, v38);
    v27 = 0;
  }

  v31 = type metadata accessor for MusicLibraryMapping.MappedItem();
  return __swift_storeEnumTagSinglePayload(v28, v27, 1, v31);
}

uint64_t sub_1D5181A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v13 - v10;
  swift_getAssociatedConformanceWitness();
  sub_1D560CA58();
  sub_1D560CA48();
  sub_1D560CA38();
  sub_1D560CAD8();

  return sub_1D52FB70C(v11, v7, a2, a3);
}

uint64_t sub_1D5181B8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D51592F8;

  return MusicLibraryMapping.Request.response()(a1, a2);
}

uint64_t sub_1D5181C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4E6E494;

  return MusicLibraryMapping.Request.response(revisionID:requester:)(a1, v8, a3, a4);
}

uint64_t sub_1D5181CE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5181D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D5181D60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D5181DB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1D5181618(*(v1 + 40), *(v1 + 56), a1);
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal40CatalogAutoplaySuggestedSongsRawResponseV7ResultsVSg(uint64_t *a1)
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

unint64_t sub_1D5181E54()
{
  result = qword_1EC7F0FF0;
  if (!qword_1EC7F0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FF0);
  }

  return result;
}

uint64_t sub_1D5181EA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
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

uint64_t sub_1D5181F30(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1050, &qword_1D563DC48);
  OUTLINED_FUNCTION_25_10(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = a1[3];
  v14 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D518289C();
  sub_1D56163D8();
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
  sub_1D502AB94(&qword_1EC7EE4A0, &qword_1EC7EE4A8);
  sub_1D5616068();
  return (*(v7 + 8))(v12, v2);
}

uint64_t sub_1D51820A8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1040, &qword_1D563DC40);
  OUTLINED_FUNCTION_25_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = a1[3];
  v9 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D518289C();
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

uint64_t sub_1D5182224(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1010, &qword_1D563DA40);
  OUTLINED_FUNCTION_25_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9();
  v6 = a1[3];
  v7 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D5182620();
  sub_1D56163D8();
  sub_1D51826C8();
  sub_1D5616068();
  v8 = OUTLINED_FUNCTION_2_39();
  return v9(v8);
}

uint64_t sub_1D5182340(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0FF8, &qword_1D563DA38);
  OUTLINED_FUNCTION_25_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = a1[3];
  v9 = a1[4];
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D5182620();
  OUTLINED_FUNCTION_3_45();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D5182674();
    sub_1D5615F78();
    v10 = OUTLINED_FUNCTION_2_39();
    v11(v10);
    v1 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D5182474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5181EA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D51824A0(uint64_t a1)
{
  v2 = sub_1D518289C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51824DC(uint64_t a1)
{
  v2 = sub_1D518289C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5182518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D51820A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5182560(uint64_t a1)
{
  v2 = sub_1D5182620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518259C(uint64_t a1)
{
  v2 = sub_1D5182620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51825D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5182340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5182620()
{
  result = qword_1EC7F1000;
  if (!qword_1EC7F1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1000);
  }

  return result;
}

unint64_t sub_1D5182674()
{
  result = qword_1EC7F1008;
  if (!qword_1EC7F1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1008);
  }

  return result;
}

unint64_t sub_1D51826C8()
{
  result = qword_1EC7F1018;
  if (!qword_1EC7F1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1018);
  }

  return result;
}

unint64_t sub_1D5182740()
{
  result = qword_1EC7F1020;
  if (!qword_1EC7F1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1020);
  }

  return result;
}

unint64_t sub_1D5182798()
{
  result = qword_1EC7F1028;
  if (!qword_1EC7F1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1028);
  }

  return result;
}

unint64_t sub_1D51827F0()
{
  result = qword_1EC7F1030;
  if (!qword_1EC7F1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1030);
  }

  return result;
}

unint64_t sub_1D5182848()
{
  result = qword_1EC7F1038;
  if (!qword_1EC7F1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1038);
  }

  return result;
}

unint64_t sub_1D518289C()
{
  result = qword_1EC7F1048;
  if (!qword_1EC7F1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1048);
  }

  return result;
}

_BYTE *sub_1D51828F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D51829A0()
{
  result = qword_1EC7F1058;
  if (!qword_1EC7F1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1058);
  }

  return result;
}

unint64_t sub_1D51829F8()
{
  result = qword_1EC7F1060;
  if (!qword_1EC7F1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1060);
  }

  return result;
}

unint64_t sub_1D5182A50()
{
  result = qword_1EC7F1068;
  if (!qword_1EC7F1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1068);
  }

  return result;
}

uint64_t sub_1D5182AA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MusicMovie.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
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
  v21 = a2 + *(type metadata accessor for MusicMovie() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5182C9C(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  a3(0);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v7, v3);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v8, v3);

  return sub_1D560EC28();
}

uint64_t sub_1D5182DAC(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v5, v2);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v6, v2);
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

uint64_t static MusicMovie.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicMovie() + 20);

  return sub_1D5611A78();
}

uint64_t MusicMovie.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v112 = v5;
  v113 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v110 = v8;
  v9 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v9);
  v107 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v105 = v14;
  v100 = sub_1D5611AB8();
  v15 = OUTLINED_FUNCTION_4(v100);
  v99 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v109 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  v108 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v95 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v115 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v95 - v47;
  v49 = type metadata accessor for MusicMovie();
  v50 = OUTLINED_FUNCTION_14(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v114 = v54 - v53;
  sub_1D51877E8(v1, v54 - v53);
  v55 = MusicMovie.title.getter();
  v103 = v56;
  v104 = v55;
  v57 = MusicMovie.artistName.getter();
  v101 = v58;
  v102 = v57;
  if (qword_1EDD541B8 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_4_70();
  v60 = sub_1D4E73624(v59, v2);
  OUTLINED_FUNCTION_0_118();
  v62 = sub_1D4E73624(v61, v2);
  OUTLINED_FUNCTION_60_12();
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_60_12();
  v63 = OUTLINED_FUNCTION_67_1(v116[0]);
  v64 = *(v63 + 16);
  v106 = v48;
  if (v64)
  {
    v65 = v9;
    v66 = v33;
    v67 = *(v63 + 80);
    v68 = *(v63 + 88);

    v69 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v69);
    if ((v68 & 1) == 0)
    {
      sub_1D4E50004(v40, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0(v69);
      v71 = MEMORY[0x1E6975D50];
      if (v67 >= 500)
      {
        v71 = MEMORY[0x1E6975D58];
      }

      (*(v70 + 104))(v40, *v71, v69);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v69);
    }

    sub_1D4F39A1C(v40, v115, &qword_1EC7EC478, &unk_1D56299D0);
    v33 = v66;
    v9 = v65;
  }

  else
  {

    v72 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v72);
  }

  if (qword_1EDD541F8 != -1)
  {
    OUTLINED_FUNCTION_31_30();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_60_12();
  v97 = v33;
  if (qword_1EDD542C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_60_12();
  v96 = LOBYTE(v116[0]);
  v73 = v108;
  __swift_storeEnumTagSinglePayload(v108, 1, 1, v9);
  v117 = v49;
  v118 = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v116);
  v95[1] = v60;
  sub_1D51877E8(v114, boxed_opaque_existential_0);
  v75 = __swift_project_boxed_opaque_existential_1(v116, v117);
  v76 = v99;
  v77 = v98;
  v78 = v100;
  (*(v99 + 16))(v98, &v75[*(v49 + 20)], v100);
  v79 = v105;
  sub_1D5611A98();
  (*(v76 + 8))(v77, v78);
  v80 = v109;
  sub_1D560FDD8();
  (*(v107 + 8))(v79, v9);
  sub_1D4E50004(v73, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v9);
  sub_1D4F39A1C(v80, v73, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v116);
  v81 = v110;
  sub_1D560EC98();
  sub_1D4F39AB0(v73, v80, &qword_1EC7EA358, &unk_1D561DF50);
  v82 = type metadata accessor for MusicSiriRepresentation();
  v83 = v111;
  v84 = v106;
  sub_1D4F39AB0(v106, v111 + v82[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v85 = v115;
  sub_1D4F39AB0(v115, v83 + v82[9], &qword_1EC7EC478, &unk_1D56299D0);
  v86 = v83 + v82[10];
  v87 = v97;
  sub_1D4F39AB0(v97, v86, &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v116[0]) = 6;
  sub_1D50391CC();
  v89 = v88;
  v91 = v90;
  sub_1D4E50004(v80, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v112 + 8))(v81, v113);
  sub_1D4E50004(v73, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v87, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v85, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v84, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5189204(v114);
  *v83 = v89;
  *(v83 + 8) = v91;
  *(v83 + 16) = 6;
  v93 = v103;
  *(v83 + 24) = v104;
  *(v83 + 32) = v93;
  v94 = v101;
  *(v83 + 40) = v102;
  *(v83 + 48) = v94;
  return result;
}

uint64_t MusicMovie.debugDescription.getter()
{
  v168 = sub_1D5613C48();
  v2 = OUTLINED_FUNCTION_4(v168);
  v158 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v167 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v165 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F0, &unk_1D562B8A0);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v141 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_3(&v141 - v20);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v166);
  v160 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_3(&v141 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_3(&v141 - v30);
  v155 = sub_1D560C0A8();
  v31 = OUTLINED_FUNCTION_4(v155);
  v151 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v35);
  v149 = sub_1D5610788();
  v36 = OUTLINED_FUNCTION_4(v149);
  v148 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v40);
  v147 = sub_1D56107C8();
  v41 = OUTLINED_FUNCTION_4(v147);
  v146 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_59_0();
  v143 = v50 - v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v53);
  v162 = sub_1D560C328();
  v54 = OUTLINED_FUNCTION_4(v162);
  v154 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v141 - v63;
  v65 = sub_1D5610978();
  v66 = OUTLINED_FUNCTION_4(v65);
  v142 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  v71 = v70;
  v180 = 0x766F4D636973754DLL;
  v181 = 0xEB00000000286569;
  strcpy(v175, "\n  id: ");
  BYTE1(v175[1]) = 0;
  WORD1(v175[1]) = 0;
  HIDWORD(v175[1]) = -402653184;
  v72 = *v0;
  v73 = v0[1];
  sub_1D560EEC8();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  strcpy(v175, ",\n  title: ");
  BYTE5(v175[1]) = 0;
  HIWORD(v175[1]) = -5120;
  MusicMovie.title.getter();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  v175[0] = 0xD000000000000011;
  v175[1] = 0x80000001D5685A50;
  MusicMovie.artistName.getter();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  if (qword_1EDD54198 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  v75 = sub_1D4E73624(v74, v1);
  OUTLINED_FUNCTION_0_118();
  v77 = sub_1D4E73624(v76, v1);
  v163 = v75;
  sub_1D560EC28();
  v164 = v77;
  if (v175[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v78);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD542C8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
  {
    sub_1D4E50004(v64, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v79 = v142;
    (*(v142 + 32))(v71, v64, v65);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    v175[0] = v81 + 3;
    v175[1] = v80;
    v178 = sub_1D5610928();
    v179 = v82;
    v176 = 10;
    v177 = 0xE100000000000000;
    v173 = 2105354;
    v174 = 0xE300000000000000;
    sub_1D4F53278();
    v83 = OUTLINED_FUNCTION_23_5();
    v85 = v84;

    MEMORY[0x1DA6EAC70](v83, v85);

    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
    (*(v79 + 8))(v71, v65);
  }

  v178 = 0;
  v179 = 0xE000000000000000;
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_35_32();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  if (v175[0])
  {
    v86 = v175[0];
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];
  }

  v87 = *(v86 + 16);
  v157 = v10;
  v161 = v0;
  if (v87)
  {
    v88 = (v86 + 40);
    do
    {
      v90 = *(v88 - 1);
      v89 = *v88;
      if ((v179 & 0x2000000000000000) != 0)
      {
        v91 = HIBYTE(v179) & 0xF;
      }

      else
      {
        v91 = v178 & 0xFFFFFFFFFFFFLL;
      }

      v92 = *v88;

      if (v91)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v175[0] = 0x22202020200ALL;
      v175[1] = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v90, v89);

      OUTLINED_FUNCTION_55_0();
      MEMORY[0x1DA6EAC70](v175[0], v175[1]);

      v88 += 2;
      --v87;
    }

    while (v87);

    v94 = v178;
    v93 = v179;
  }

  else
  {

    v94 = 0;
    v93 = 0xE000000000000000;
  }

  v95 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v95 = v94 & 0xFFFFFFFFFFFFLL;
  }

  v96 = v162;
  v97 = v152;
  if (v95)
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    v175[0] = v99;
    v175[1] = v98;
    MEMORY[0x1DA6EAC70](v94, v93);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    v93 = v175[1];
    MEMORY[0x1DA6EAC70](v175[0], v175[1]);
  }

  if (qword_1EDD54338 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v96);
  v101 = v96;
  v102 = v154;
  v103 = v153;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v97, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    (*(v154 + 32))(v153, v97, v101);
    v104 = v144;
    sub_1D56107A8();
    v97 = v143;
    (*(v102 + 16))(v143, v103, v101);
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v101);
    v105 = v148;
    v106 = v145;
    v107 = v149;
    (*(v148 + 104))(v145, *MEMORY[0x1E6975DC8], v149);
    v152 = sub_1D56107B8();
    v93 = v108;
    (*(v105 + 8))(v106, v107);
    sub_1D4E50004(v97, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v146 + 8))(v104, v147);
    if (v93)
    {
      OUTLINED_FUNCTION_11_61();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_38();
      v175[0] = v110 + 1;
      v175[1] = v109;
      MEMORY[0x1DA6EAC70](v152, v93);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_18_49();
      OUTLINED_FUNCTION_48_20();
    }

    (*(v102 + 8))(v103, v162);
    OUTLINED_FUNCTION_54_15();
  }

  v111 = v158;
  if (qword_1EDD54228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  v112 = v157;
  if (v175[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v113);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD54270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  if (v175[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v114);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD54350 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7();
  if (v175[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v115);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD541F8 != -1)
  {
    OUTLINED_FUNCTION_31_30();
  }

  OUTLINED_FUNCTION_78_7();
  v116 = __swift_getEnumTagSinglePayload(v93, 1, v97);
  v117 = v166;
  if (v116 == 1)
  {
    sub_1D4E50004(v93, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v118 = v93;
    v119 = v151;
    v120 = v150;
    (*(v151 + 32))(v150, v118, v97);
    strcpy(v175, ",\n  url: ");
    BYTE3(v175[1]) = 0;
    HIDWORD(v175[1]) = -369098752;
    OUTLINED_FUNCTION_10_66();
    sub_1D4E73624(v121, v122);
    sub_1D56160F8();
    OUTLINED_FUNCTION_61_19();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
    (*(v119 + 8))(v120, v97);
  }

  v123 = v156;
  if (qword_1EDD541D0 != -1)
  {
    OUTLINED_FUNCTION_34_31();
  }

  OUTLINED_FUNCTION_78_7();
  if (__swift_getEnumTagSinglePayload(v123, 1, v117) == 1)
  {
    sub_1D4E50004(v123, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v124 = v160;
    v125 = v159;
    (*(v160 + 32))(v159, v123, v117);
    v176 = 0;
    v177 = 0xE000000000000000;
    (*(v124 + 16))(v15, v125, v117);
    v126 = *(v112 + 36);
    sub_1D5189260();
    sub_1D5615608();
    v127 = (v111 + 16);
    v128 = (v111 + 32);
    v129 = (v111 + 8);
    while (1)
    {
      sub_1D5615648();
      if (*&v15[v126] == v175[0])
      {
        break;
      }

      v130 = v15;
      v131 = sub_1D5615688();
      v132 = v165;
      v133 = v168;
      (*v127)(v165);
      v131(v175, 0);
      sub_1D5615658();
      (*v128)(v167, v132, v133);
      v134 = v176 & 0xFFFFFFFFFFFFLL;
      if ((v177 & 0x2000000000000000) != 0)
      {
        v134 = HIBYTE(v177) & 0xF;
      }

      if (v134)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v175[0] = 10;
      v175[1] = 0xE100000000000000;
      v135 = v167;
      v136 = sub_1D5613B88();
      MEMORY[0x1DA6EAC70](v136);

      MEMORY[0x1DA6EAC70](v175[0], v175[1]);

      (*v129)(v135, v168);
      v117 = v166;
      v15 = v130;
    }

    sub_1D4E50004(v15, &qword_1EC7EE5F0, &unk_1D562B8A0);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    strcpy(v175, ",\n  genres: [");
    HIWORD(v175[1]) = -4864;
    v173 = v176;
    v174 = v177;
    v171 = 10;
    v172 = 0xE100000000000000;
    v169 = 0x202020200ALL;
    v170 = 0xE500000000000000;
    sub_1D4F53278();
    v137 = OUTLINED_FUNCTION_23_5();
    v139 = v138;

    MEMORY[0x1DA6EAC70](v137, v139);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_18_49();

    (*(v160 + 8))(v159, v117);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v180;
}

uint64_t MusicMovie.duration.getter()
{
  if (qword_1EDD541A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_45_2();
  return v4;
}

void MusicMovie.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v13, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v14, v10);
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

uint64_t sub_1D5184BD4(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v5, v2);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t MusicMovie.playbackPosition.getter()
{
  if (qword_1EDD54278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);

  return sub_1D560EC28();
}

uint64_t MusicMovie.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicMovie.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicMovie() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MusicMovie.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  type metadata accessor for MusicMovie();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v15, v16);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v3 + 8))(v8, v0);
  v17 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    sub_1D4E50004(v14, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v18 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0(v17);
    (*(v19 + 8))(v14, v17);
  }

  return v18;
}

void MusicMovie.clips.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD541E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF318, &qword_1D563DD60);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void sub_1D5185288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D518536C(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v5, v2);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v6, v2);
  OUTLINED_FUNCTION_45_2();
  return v8;
}

uint64_t MusicMovie.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1D4F5C2FC();
  sub_1D4F39AB0(a1, v11, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v12 = sub_1D56140F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  result = sub_1D4E50004(v11, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4F5C2FC();
    v15 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v15, v16, &unk_1D561A0C0);
    return sub_1D4F39A1C(v8, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void MusicMovie._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_69_3();
}

void MusicMovie.editorialCards.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD542D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void MusicMovie._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F84A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_69_3();
}

void MusicMovie.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_35_32();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void sub_1D51858C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD541C0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t MusicMovie.supportedLocales.getter()
{
  if (qword_1EDD54268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);

  return sub_1D560EC28();
}

uint64_t MusicMovie.genres.getter()
{
  if (qword_1EDD541D0 != -1)
  {
    OUTLINED_FUNCTION_34_31();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.crossMerchandise.getter()
{
  if (qword_1EDD54288 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.moreInGenre.getter()
{
  if (qword_1EDD54340 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.musicArtists.getter()
{
  if (qword_1EDD54308 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.playlists.getter()
{
  if (qword_1EDD54180 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.viewersAlsoBought.getter()
{
  if (qword_1EDD54258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicMovie() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_40();
  sub_1D4E73624(v4, v5);
  return sub_1D5614CB8();
}

uint64_t MusicMovie.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicMovie() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_40();
  sub_1D4E73624(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5186134(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4E73624(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51861D8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicMovie.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicMovie.subscript.getter(void *a1)
{
  return sub_1D5186240(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5186240(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_23_41();
  sub_1D4E73624(v5, v1);
  OUTLINED_FUNCTION_29_34(&qword_1EDD59308);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5186240(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_23_41();
  sub_1D4E73624(v5, v2);
  OUTLINED_FUNCTION_29_34(&qword_1EDD59308);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5186430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie);
  v12 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D5186564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie);
  v14 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51866A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie);
  v14 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51867EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A50 = v0;
  return result;
}

uint64_t sub_1D5186860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76978 = v0;
  return result;
}

uint64_t sub_1D5186904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD533C0, MEMORY[0x1E6975930]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A30 = v0;
  return result;
}

uint64_t sub_1D51869B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D518961C();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76990 = v0;
  return result;
}

uint64_t sub_1D5186A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D503853C();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A28 = v0;
  return result;
}

uint64_t sub_1D5186AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76968 = v0;
  return result;
}

uint64_t sub_1D5186B18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_56_18();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A20 = v0;
  return result;
}

uint64_t sub_1D5186BA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76970 = v0;
  return result;
}

uint64_t sub_1D5186C20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EDD769D0 = v0;
  return result;
}

uint64_t sub_1D5186CD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_39();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_28_1();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A18 = v0;
  return result;
}

uint64_t sub_1D5186D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D50384C0();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A48 = v0;
  return result;
}

uint64_t sub_1D5186DE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769C8 = v0;
  return result;
}

uint64_t sub_1D5186E5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A10 = v0;
  return result;
}

uint64_t sub_1D5186EDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769B8 = v0;
  return result;
}

uint64_t sub_1D5186F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(qword_1EDD52EF0, MEMORY[0x1E69768B0]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769B0 = v0;
  return result;
}

uint64_t sub_1D5187000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52ED8, MEMORY[0x1E69768E8]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(23);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769A8 = v0;
  return result;
}

uint64_t sub_1D51870A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52EC0, MEMORY[0x1E6976A18]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(30);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769A0 = v0;
  return result;
}

uint64_t sub_1D5187150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_56_18();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A08 = v0;
  return result;
}

uint64_t sub_1D51871E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769F0 = v0;
  return result;
}

uint64_t sub_1D5187278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52A48, MEMORY[0x1E69774A0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A00 = v0;
  return result;
}

uint64_t sub_1D5187328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D503840C();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76980 = v0;
  return result;
}

uint64_t sub_1D5187398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D51896D0();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769E8 = v0;
  return result;
}

double sub_1D5187410@<D0>(uint64_t a1@<X8>)
{
  MusicMovie.playbackPosition.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D5187454()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD53160, MEMORY[0x1E6975E88]);
  OUTLINED_FUNCTION_47_25();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769F8 = v0;
  return result;
}

uint64_t sub_1D51874F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A38 = v0;
  return result;
}

uint64_t sub_1D5187594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769E0 = v0;
  return result;
}

uint64_t sub_1D5187610()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769C0 = v0;
  return result;
}

uint64_t sub_1D518768C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A40 = v0;
  return result;
}

uint64_t sub_1D5187700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D51895C8();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(16);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769D8 = v0;
  return result;
}

uint64_t sub_1D5187778()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76988 = v0;
  return result;
}

uint64_t sub_1D51877E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMovie();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D518784C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_66();
  sub_1D4E73624(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76998 = v0;
  return result;
}

uint64_t sub_1D51878D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E73624(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v0 = sub_1D560D138();

  qword_1EC7F1070 = v0;
  return result;
}

uint64_t sub_1D51879F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_28_1();
  sub_1D560D128();
  OUTLINED_FUNCTION_63();

  qword_1EDD542E0 = v0;
  return result;
}

uint64_t sub_1D5187AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_10_66();
  sub_1D4E73624(v1, v2);
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EDD54328 = v0;
  return result;
}

uint64_t sub_1D5187BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_22_39();
  sub_1D4E73624(v1, v2);
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EDD54240 = v0;
  return result;
}

uint64_t sub_1D5187CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD541D8 = v0;
  return result;
}

uint64_t sub_1D5187DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54290 = v0;
  return result;
}

uint64_t sub_1D5187EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54348 = v0;
  return result;
}

uint64_t sub_1D5187F80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(&unk_1EDD52E00, MEMORY[0x1E6976F28]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54310 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.musicArtists.getter()
{
  return sub_1D50355DC(&qword_1EDD54308);
}

{
  return sub_1D50355DC(&qword_1EC7E92C8);
}

uint64_t sub_1D5188070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(qword_1EDD52A80, MEMORY[0x1E69773E0]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54188 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.playlists.getter()
{
  return sub_1D50355DC(&qword_1EDD54180);
}

{
  return sub_1D50355DC(&qword_1EC7E92D8);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96F8, &qword_1EC7F7528);
}

uint64_t sub_1D5188158()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54260 = v0;
  return result;
}

uint64_t sub_1D5188248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D51882C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D5188340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D51883BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D5188438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D51884B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D5188530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D51885AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D5188628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D51886A4()
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return sub_1D5613028();
}

uint64_t sub_1D5188720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D51887A4()
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return sub_1D5612FD8();
}

uint64_t sub_1D5188828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D51888A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D5188920()
{
  sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie);
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return sub_1D560CBD8();
}

uint64_t static MusicMovie.catalogFilterID(for:)()
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

uint64_t sub_1D5188B14()
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie);

  return sub_1D5610C58();
}

uint64_t sub_1D5188BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t MusicMovie.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicMovie();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v3, v4);
  OUTLINED_FUNCTION_26_42();
  sub_1D4E73624(v5, v1);
  OUTLINED_FUNCTION_30_32(&qword_1EDD5C6D8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicMovie.encode(to:)()
{
  type metadata accessor for MusicMovie();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2);
  OUTLINED_FUNCTION_26_42();
  sub_1D4E73624(v3, v0);
  OUTLINED_FUNCTION_30_32(&qword_1EDD5C6D8);
  return sub_1D5612688();
}

unint64_t MusicMovie.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v4 = MusicMovie.title.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1D5188F74()
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
  qword_1EDD59388 = v4;
  return result;
}

uint64_t sub_1D51890D0()
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
  qword_1EDD59370 = v6;
  return result;
}

uint64_t sub_1D5189204(uint64_t a1)
{
  v2 = type metadata accessor for MusicMovie();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5189260()
{
  result = qword_1EC7EA5A8;
  if (!qword_1EC7EA5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5A8);
  }

  return result;
}

uint64_t sub_1D51892C4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD59328);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for MusicMovie();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D5189370()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D50);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD59320 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD59328);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D518949C(uint64_t a1)
{
  result = sub_1D4E73624(&qword_1EC7F1078, type metadata accessor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D51895C8()
{
  result = qword_1EDD55800[0];
  if (!qword_1EDD55800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55800);
  }

  return result;
}

unint64_t sub_1D518961C()
{
  result = qword_1EDD52808;
  if (!qword_1EDD52808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF318, &qword_1D563DD60);
    sub_1D4E73624(qword_1EDD545F0, type metadata accessor for MovieClip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52808);
  }

  return result;
}

unint64_t sub_1D51896D0()
{
  result = qword_1EDD56B80;
  if (!qword_1EDD56B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_31()
{

  return swift_once();
}

void OUTLINED_FUNCTION_61_19()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t MusicMoodStationResponse.stations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicMoodStationResponse.== infix(_:_:)()
{
  sub_1D5614408();
  OUTLINED_FUNCTION_0_119();
  sub_1D518A338(v0, v1);

  return sub_1D560DAA8();
}

uint64_t MusicMoodStationResponse.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();

  return sub_1D5614CB8();
}

unint64_t sub_1D518990C()
{
  result = qword_1EC7F1088;
  if (!qword_1EC7F1088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA640, &unk_1D563EA60);
    sub_1D518A338(&qword_1EC7EBD38, MEMORY[0x1E6977180]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1088);
  }

  return result;
}

uint64_t MusicMoodStationResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5189A30()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicMoodStationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v36 - v7;
  v41 = sub_1D560CD48();
  v8 = OUTLINED_FUNCTION_4(v41);
  v39 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v36 - v24;
  sub_1D4E628D4(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  sub_1D518A0E8(&qword_1EDD53280);
  sub_1D5612428();
  if (!v2)
  {
    v37 = v18;
    (*(v18 + 16))(v23, v25, v15);
    v36[0] = 0;
    v36[1] = a2;
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v27 = v14;
    sub_1D5616378();
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5616368();
    v29 = sub_1D560CD98();
    v30 = v38;
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v29);
    sub_1D5614408();
    OUTLINED_FUNCTION_0_119();
    sub_1D518A338(v31, v32);
    v33 = v41;
    sub_1D5612368();

    sub_1D4F4A0BC(v30);
    (*(v39 + 8))(v27, v33);
    v34 = *(v37 + 8);
    v34(v23, v15);
    v34(v25, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicMoodStationResponse.encode(to:)(void *a1)
{
  v33 = sub_1D5613578();
  v2 = OUTLINED_FUNCTION_4(v33);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D560CD48();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  v19 = OUTLINED_FUNCTION_4(v34);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v32 - v24;
  v32 = a1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v27 = v33;
  (*(v4 + 104))(v9, *MEMORY[0x1E6976A78], v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  OUTLINED_FUNCTION_0_119();
  sub_1D518A338(v28, v29);
  sub_1D560DA98();
  (*(v4 + 8))(v9, v27);
  (*(v13 + 8))(v18, v10);
  sub_1D518A0E8(&qword_1EC7F0BD0);
  v30 = v34;
  sub_1D5612418();
  return (*(v21 + 8))(v25, v30);
}

uint64_t sub_1D518A0E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    v3 = MEMORY[0x1E6975B30];
    sub_1D518A338(&qword_1EDD53370, MEMORY[0x1E6975B30]);
    sub_1D518A338(&qword_1EDD53378, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D518A1EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518A4C8();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_1D518A338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MusicMoodStationResponse()
{
  result = qword_1EC7F1098;
  if (!qword_1EC7F1098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D518A3FC()
{
  sub_1D518A468();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D518A468()
{
  if (!qword_1EC7F10A8)
  {
    sub_1D5614408();
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F10A8);
    }
  }
}

unint64_t sub_1D518A4C8()
{
  result = qword_1EC7F10B0;
  if (!qword_1EC7F10B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA640, &unk_1D563EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10B0);
  }

  return result;
}

void *sub_1D518A52C()
{
  result = static InternalMusicPlayer.Configuration.Option.allCases.getter();
  qword_1EC7F10B8 = 0x636973754DLL;
  unk_1EC7F10C0 = 0xE500000000000000;
  off_1EC7F10C8 = result;
  return result;
}

void *static InternalMusicPlayer.Configuration.Option.allCases.getter()
{
  sub_1D4EF36B0(&unk_1F50A39B8);
  v0 = &unk_1F50A3990;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F01FA8();
    v0 = v3;
  }

  v1 = v0[2];
  if (v1 >= v0[3] >> 1)
  {
    sub_1D4F01FA8();
    v0 = v4;
  }

  v0[2] = v1 + 1;
  *(v0 + v1 + 32) = 3;
  return v0;
}

uint64_t InternalMusicPlayer.Configuration.init(playerID:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static InternalMusicPlayer.Configuration.systemMusic.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC7E8FF0 != -1)
  {
    swift_once();
  }

  v2 = unk_1EC7F10C0;
  v3 = off_1EC7F10C8;
  *a1 = qword_1EC7F10B8;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t InternalMusicPlayer.Configuration.playerID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InternalMusicPlayer.Configuration.options.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t InternalMusicPlayer.Configuration.Option.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void *sub_1D518A7B8@<X0>(void *a1@<X8>)
{
  result = static InternalMusicPlayer.Configuration.Option.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static InternalMusicPlayer.Configuration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  return sub_1D4F0B2E4(v2, v3);
}

uint64_t InternalMusicPlayer.Configuration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1D5614E28();

  return sub_1D4F0B2F8(a1, v5);
}

uint64_t InternalMusicPlayer.Configuration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D4F0B2F8(v5, v3);
  return sub_1D5616328();
}

uint64_t sub_1D518A914()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  InternalMusicPlayer.Configuration.hash(into:)(v2);
  return sub_1D5616328();
}

unint64_t sub_1D518A968()
{
  result = qword_1EC7F10D0;
  if (!qword_1EC7F10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F10D8, &qword_1D563EBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10D0);
  }

  return result;
}

unint64_t sub_1D518A9D0()
{
  result = qword_1EC7F10E0;
  if (!qword_1EC7F10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10E0);
  }

  return result;
}

unint64_t sub_1D518AA28()
{
  result = qword_1EC7F10E8;
  if (!qword_1EC7F10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10E8);
  }

  return result;
}

_BYTE *_s13ConfigurationV6OptionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D518AB68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D560D838();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  if (sub_1D560F0C8())
  {
LABEL_2:

    v15 = 71;
LABEL_3:
    *a3 = v15;
    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v7 + 8))(v10, v6);
  v18 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    sub_1D50AA0F4(v14);
  }

  else
  {
    v19 = sub_1D560D488();
    v21 = v20;
    (*(*(v18 - 8) + 8))(v14, v18);
    if (v19 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v21 == v22)
    {
    }

    else
    {
      v24 = sub_1D5616168();

      if ((v24 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  switch(a1)
  {
    case 0:

      v15 = 72;
      goto LABEL_3;
    case 1:

      v15 = 0x80;
      goto LABEL_3;
    case 2:

      v15 = 1;
      goto LABEL_3;
    case 3:

      v15 = 0;
      goto LABEL_3;
    case 4:

      v15 = 64;
      goto LABEL_3;
    case 5:

      v15 = 65;
      goto LABEL_3;
    case 6:

      v15 = 66;
      goto LABEL_3;
    case 7:

      v15 = 67;
      goto LABEL_3;
    case 8:

      v15 = 68;
      goto LABEL_3;
    case 9:

      v15 = 69;
      goto LABEL_3;
    case 10:

      v15 = 70;
      goto LABEL_3;
    default:
      result = sub_1D5615E08();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static MusicLibrary.AddStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v4 = ((v3 ^ v2) & 0x3F) == 0;
  return v4 & 1;
}

uint64_t MusicLibrary.AddStatus.UnaddableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D518AFFC()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.AddableCaveat.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
LABEL_7:
    v2 = 0;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  MEMORY[0x1DA6EC0D0](2);
  v2 = v1 & 0x3F;
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicLibrary.AddStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v2 = v1 & 0x3F;
LABEL_8:
      MEMORY[0x1DA6EC0D0](v2);
      return sub_1D5616328();
    }

LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  MEMORY[0x1DA6EC0D0](1);
  if ((v1 & 1) == 0)
  {
    sub_1D56162F8();
    goto LABEL_7;
  }

  sub_1D56162F8();
  return sub_1D5616328();
}

uint64_t sub_1D518B218()
{
  v1 = *v0;
  sub_1D56162D8();
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      sub_1D56162F8();
      return sub_1D5616328();
    }

    sub_1D56162F8();
LABEL_7:
    MEMORY[0x1DA6EC0D0](0);
    return sub_1D5616328();
  }

  if (v1 >> 6 != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1DA6EC0D0](2);
  MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.description.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
      sub_1D502EC78(v1 & 0x3F);
      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      return 0;
    }

    else
    {
      return 0x64656464612ELL;
    }
  }

  else if (v1)
  {
    return 0x656C62616464612ELL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

unint64_t MusicLibrary.AddStatus.UnaddableReason.description.getter()
{
  result = 0x4C6465726168732ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      result = 0xD00000000000001DLL;
      break;
  }

  return result;
}

uint64_t sub_1D518B508()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

unint64_t sub_1D518B6E8()
{
  result = qword_1EC7F1100;
  if (!qword_1EC7F1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1100);
  }

  return result;
}

unint64_t sub_1D518B770()
{
  result = qword_1EC7F1118;
  if (!qword_1EC7F1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1118);
  }

  return result;
}

unint64_t sub_1D518B7C8()
{
  result = qword_1EC7F1120;
  if (!qword_1EC7F1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1120);
  }

  return result;
}

uint64_t _s9AddStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xE)
  {
    if (a2 + 242 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 242) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 243;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v5 >= 0xD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s9AddStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
          *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D518B98C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0xFu) + 2;
  }
}

_BYTE *sub_1D518B9B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xF | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 14) & 0xF | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *_s9AddStatusO15UnaddableReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO13AddableCaveatOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D518BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    result = sub_1D4E6C9CC(&v21, &qword_1EC7EC548, &qword_1D5621090);
LABEL_12:
    *a3 = 9;
    return result;
  }

  sub_1D4F69344(&v21, v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1D560DB68();
  if (!v17)
  {
    sub_1D4E6C9CC(v16, &qword_1EC7EEC40, &unk_1D561C070);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_11;
  }

  if (!*(&v19 + 1))
  {
LABEL_11:
    sub_1D4E6C9CC(&v18, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_12;
  }

  sub_1D4F69344(&v18, &v21);
  v7 = *(&v22 + 1);
  v8 = v23;
  v9 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  sub_1D4F67E14(v9, v7, v8);
  v10 = v18 >> 6;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = v18 & 0x3F;
    }

    else
    {
      v11 = 10;
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedMonitor];
    v14 = [v13 isRemoteServerLikelyReachable];

    if (v14)
    {
      v11 = 12;
    }

    else
    {
      v11 = 11;
    }
  }

  *a3 = v11;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

_BYTE *_s9AddActionVwst(_BYTE *result, int a2, int a3)
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

unsigned __int8 *_s9AddActionV17UnsupportedReasonOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 9)
    {
      v7 = v6 - 8;
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
    v2 = a2 + 11;
    if (a2 + 11 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 11);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s9AddActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
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

  if (a3 >= 0xF5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF4)
  {
    v7 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D518C050(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D518C064(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D518C0D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73636972796CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43686372616573 && a2 == 0xED0000747865746ELL)
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

uint64_t sub_1D518C1A4(char a1)
{
  if (a1)
  {
    return 0x6F43686372616573;
  }

  else
  {
    return 0x73636972796CLL;
  }
}

uint64_t sub_1D518C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518C0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518C22C(uint64_t a1)
{
  v2 = sub_1D518C604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C268(uint64_t a1)
{
  v2 = sub_1D518C604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518C2A4(uint64_t a1)
{
  v2 = sub_1D518C6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C2E0(uint64_t a1)
{
  v2 = sub_1D518C6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518C31C(uint64_t a1)
{
  v2 = sub_1D518C658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C358(uint64_t a1)
{
  v2 = sub_1D518C658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicCatalogInternalSearchResponse.Snippet.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1128, &qword_1D563F070);
  v4 = OUTLINED_FUNCTION_4(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1130, &qword_1D563F078);
  v11 = OUTLINED_FUNCTION_4(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1138, &qword_1D563F080);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D518C604();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1D518C658();
    v29 = v32;
    sub_1D5616018();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1D518C6AC();
    sub_1D5616018();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D518C604()
{
  result = qword_1EC7F1140;
  if (!qword_1EC7F1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1140);
  }

  return result;
}

unint64_t sub_1D518C658()
{
  result = qword_1EC7F1148;
  if (!qword_1EC7F1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1148);
  }

  return result;
}

unint64_t sub_1D518C6AC()
{
  result = qword_1EC7F1150;
  if (!qword_1EC7F1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1150);
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Snippet.Kind.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v54 = v0;
  v2 = v1;
  v51 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1158, &qword_1D563F088);
  OUTLINED_FUNCTION_4(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1160, &qword_1D563F090);
  OUTLINED_FUNCTION_4(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1168, &unk_1D563F098);
  OUTLINED_FUNCTION_4(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v46 - v22;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D518C604();
  v25 = v54;
  sub_1D5616398();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v10;
  v48 = v16;
  v54 = v2;
  v26 = v53;
  v27 = sub_1D5615FE8();
  v28 = sub_1D4FE35F0(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = sub_1D5615C18();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v43 = &type metadata for MusicCatalogInternalSearchResponse.Snippet.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v17);
    v2 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_1D4FE35EC(v30 + 1, v31 >> 1, v28, v29, v30, v31);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        sub_1D518C658();
        v38 = v9;
        OUTLINED_FUNCTION_3_0();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_1D518C6AC();
        v45 = v48;
        OUTLINED_FUNCTION_3_0();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v23, v35);
      *v39 = v32;
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static MusicCatalogInternalSearchResponse.Snippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D5616168();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D518CC70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_1D518CD40(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D518CD60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D518CDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518CC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518CDDC(uint64_t a1)
{
  v2 = sub_1D518D2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518CE18(uint64_t a1)
{
  v2 = sub_1D518D2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicCatalogInternalSearchResponse.Snippet.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1170, &qword_1D563F0A8);
  OUTLINED_FUNCTION_4(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D518D2AC();
  sub_1D56163D8();
  sub_1D5616088();
  if (!v1)
  {
    sub_1D518D300();
    sub_1D56160C8();
  }

  (*(v15 + 8))(v10, v4);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D5614E28();
  return MEMORY[0x1DA6EC0D0](v3);
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D56162D8();
  sub_1D5614E28();
  MEMORY[0x1DA6EC0D0](v3);
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Snippet.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_25_1();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1188, &qword_1D563F0B0);
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1D518D2AC();
  sub_1D5616398();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v22 = sub_1D5615F98();
    v24 = v23;
    sub_1D518D354();
    sub_1D5615FD8();
    v25 = OUTLINED_FUNCTION_2_98();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D518D25C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Snippet.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D518D2AC()
{
  result = qword_1EC7F1178;
  if (!qword_1EC7F1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1178);
  }

  return result;
}

unint64_t sub_1D518D300()
{
  result = qword_1EC7F1180;
  if (!qword_1EC7F1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1180);
  }

  return result;
}

unint64_t sub_1D518D354()
{
  result = qword_1EC7F1190;
  if (!qword_1EC7F1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1190);
  }

  return result;
}

unint64_t sub_1D518D3AC()
{
  result = qword_1EC7F1198;
  if (!qword_1EC7F1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1198);
  }

  return result;
}

unint64_t sub_1D518D404()
{
  result = qword_1EC7F11A0;
  if (!qword_1EC7F11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11A0);
  }

  return result;
}

uint64_t sub_1D518D458(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D518D498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D518D508(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D518D608()
{
  result = qword_1EC7F11A8;
  if (!qword_1EC7F11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11A8);
  }

  return result;
}

unint64_t sub_1D518D660()
{
  result = qword_1EC7F11B0;
  if (!qword_1EC7F11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11B0);
  }

  return result;
}

unint64_t sub_1D518D6B8()
{
  result = qword_1EC7F11B8;
  if (!qword_1EC7F11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11B8);
  }

  return result;
}

unint64_t sub_1D518D710()
{
  result = qword_1EC7F11C0;
  if (!qword_1EC7F11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11C0);
  }

  return result;
}

unint64_t sub_1D518D768()
{
  result = qword_1EC7F11C8;
  if (!qword_1EC7F11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11C8);
  }

  return result;
}

unint64_t sub_1D518D7C0()
{
  result = qword_1EC7F11D0;
  if (!qword_1EC7F11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11D0);
  }

  return result;
}

unint64_t sub_1D518D818()
{
  result = qword_1EC7F11D8;
  if (!qword_1EC7F11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11D8);
  }

  return result;
}

unint64_t sub_1D518D870()
{
  result = qword_1EC7F11E0;
  if (!qword_1EC7F11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11E0);
  }

  return result;
}

unint64_t sub_1D518D8C8()
{
  result = qword_1EC7F11E8;
  if (!qword_1EC7F11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11E8);
  }

  return result;
}

unint64_t sub_1D518D920()
{
  result = qword_1EC7F11F0;
  if (!qword_1EC7F11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11F0);
  }

  return result;
}

void MusicPersonalRecommendation.Item.recommendationReason.getter()
{
  OUTLINED_FUNCTION_47();
  v1 = sub_1D5614408();
  v2 = OUTLINED_FUNCTION_4(v1);
  v42 = v3;
  v43 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = OUTLINED_FUNCTION_26_11();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_23_42();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_22_40();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_4_71(v18);
  v20(v19);
  v21 = OUTLINED_FUNCTION_12_55();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x1E6975270])
  {
    v24 = OUTLINED_FUNCTION_3_94();
    v25(v24);
    v26 = OUTLINED_FUNCTION_7_72();
    v27(v26);
    _s8MusicKit5AlbumV0aB8InternalE20recommendationReasonSSSgvg_0();
    v28 = OUTLINED_FUNCTION_1_6();
    v29(v28);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v23 == *MEMORY[0x1E6975280])
  {
    v30 = OUTLINED_FUNCTION_3_94();
    v31(v30);
    v32 = OUTLINED_FUNCTION_6_68();
    v33(v32);
    _s8MusicKit8PlaylistV0aB8InternalE20recommendationReasonSSSgvg_0();
    v34 = OUTLINED_FUNCTION_16_53();
    v35(v34);
    goto LABEL_7;
  }

  if (v23 == *MEMORY[0x1E6975278])
  {
    v36 = OUTLINED_FUNCTION_3_94();
    v37(v36);
    v38 = OUTLINED_FUNCTION_11_67(v42);
    v39(v38);
    _s8MusicKit7StationV0aB8InternalE20recommendationReasonSSSgvg_0();
    (*(v42 + 8))(v0, v43);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000061);
  OUTLINED_FUNCTION_0_120();
  sub_1D518EED0(v40, v41);
  OUTLINED_FUNCTION_21_41();
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65();
  __break(1u);
}

void MusicPersonalRecommendation.Item.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v50 = v0;
  v1 = sub_1D5614408();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D5613AF8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = sub_1D560E3F8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v31 = OUTLINED_FUNCTION_13_52(v30);
  v32(v31);
  v33 = OUTLINED_FUNCTION_29_35();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x1E6975270])
  {
    v36 = OUTLINED_FUNCTION_5_3();
    v37(v36);
    v38 = OUTLINED_FUNCTION_18_50();
    v39(v38);
    Album.siriRepresentation.getter();
    (*(v18 + 8))(v23, v15);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v35 == *MEMORY[0x1E6975280])
  {
    v40 = OUTLINED_FUNCTION_5_3();
    v41(v40);
    v42 = OUTLINED_FUNCTION_15_54();
    v43(v42);
    Playlist.siriRepresentation.getter();
    (*(v27 + 8))(v14, v8);
    goto LABEL_7;
  }

  if (v35 == *MEMORY[0x1E6975278])
  {
    v44 = OUTLINED_FUNCTION_5_3();
    v45(v44);
    v46 = OUTLINED_FUNCTION_14_53();
    v47(v46);
    Station.siriRepresentation.getter(v50);
    (*(v8 + 8))(v7, v27);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000061);
  OUTLINED_FUNCTION_0_120();
  sub_1D518EED0(v48, v49);
  sub_1D56160F8();
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65();
  __break(1u);
}

void MusicPersonalRecommendation.Item._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5614408();
  v1 = OUTLINED_FUNCTION_4(v0);
  v43 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_26_11();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_23_42();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_22_40();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_4_71(v17);
  v19(v18);
  v20 = OUTLINED_FUNCTION_12_55();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E6975270])
  {
    v23 = OUTLINED_FUNCTION_3_94();
    v24(v23);
    v25 = OUTLINED_FUNCTION_7_72();
    v26(v25);
    sub_1D5613988();
    v27 = OUTLINED_FUNCTION_1_6();
    v28(v27);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v22 == *MEMORY[0x1E6975280])
  {
    v29 = OUTLINED_FUNCTION_3_94();
    v30(v29);
    v31 = OUTLINED_FUNCTION_6_68();
    v32(v31);
    sub_1D56145B8();
    v33 = OUTLINED_FUNCTION_16_53();
    v34(v33);
    goto LABEL_7;
  }

  if (v22 == *MEMORY[0x1E6975278])
  {
    v35 = OUTLINED_FUNCTION_3_94();
    v36(v35);
    v37 = OUTLINED_FUNCTION_11_67(v43);
    v38(v37);
    sub_1D5614298();
    v39 = OUTLINED_FUNCTION_30_33();
    v40(v39);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000005DLL);
  OUTLINED_FUNCTION_0_120();
  sub_1D518EED0(v41, v42);
  OUTLINED_FUNCTION_21_41();
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65();
  __break(1u);
}

void MusicPersonalRecommendation.Item._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5614408();
  v1 = OUTLINED_FUNCTION_4(v0);
  v43 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_26_11();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_23_42();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_22_40();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_4_71(v17);
  v19(v18);
  v20 = OUTLINED_FUNCTION_12_55();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E6975270])
  {
    v23 = OUTLINED_FUNCTION_3_94();
    v24(v23);
    v25 = OUTLINED_FUNCTION_7_72();
    v26(v25);
    sub_1D56139F8();
    v27 = OUTLINED_FUNCTION_1_6();
    v28(v27);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v22 == *MEMORY[0x1E6975280])
  {
    v29 = OUTLINED_FUNCTION_3_94();
    v30(v29);
    v31 = OUTLINED_FUNCTION_6_68();
    v32(v31);
    sub_1D5614658();
    v33 = OUTLINED_FUNCTION_16_53();
    v34(v33);
    goto LABEL_7;
  }

  if (v22 == *MEMORY[0x1E6975278])
  {
    v35 = OUTLINED_FUNCTION_3_94();
    v36(v35);
    v37 = OUTLINED_FUNCTION_11_67(v43);
    v38(v37);
    sub_1D5614338();
    v39 = OUTLINED_FUNCTION_30_33();
    v40(v39);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000062);
  OUTLINED_FUNCTION_0_120();
  sub_1D518EED0(v41, v42);
  OUTLINED_FUNCTION_21_41();
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65();
  __break(1u);
}

uint64_t sub_1D518EA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1210, &qword_1D563F640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1D5620080;
  sub_1D560FFB8();
  sub_1D5610038();
  sub_1D5610008();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D518EDC0();
  v3 = sub_1D560D138();

  qword_1EC7F11F8 = v3;
  return result;
}

uint64_t sub_1D518EC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1210, &qword_1D563F640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1D5620080;
  sub_1D560FFB8();
  sub_1D5610038();
  sub_1D5610008();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F8AFC4();
  v3 = sub_1D560D138();

  qword_1EC7F1200 = v3;
  return result;
}

unint64_t sub_1D518EDC0()
{
  result = qword_1EC7F1218;
  if (!qword_1EC7F1218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1220, &qword_1D563F698);
    sub_1D518EE7C();
    sub_1D518EED0(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1218);
  }

  return result;
}

unint64_t sub_1D518EE7C()
{
  result = qword_1EC7F1228;
  if (!qword_1EC7F1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1228);
  }

  return result;
}

uint64_t sub_1D518EED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_42()
{

  return sub_1D5613AF8();
}

_BYTE *storeEnumTagSinglePayload for MusicDaemon(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for StorePlatformGenreAttribute()
{
  result = qword_1EC7F1230;
  if (!qword_1EC7F1230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D518F070()
{
  sub_1D4E518A0(319, &qword_1EDD53A08);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v1 <= 0x3F)
    {
      sub_1D500A1D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_1D518F174(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = a1[1];
  v24 = a2[1];
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = *a1 == *a2 && v23 == v24;
    if (!v25 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    v28 = a1[2] == a2[2] && v26 == v27;
    if (!v28 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v29 = *(type metadata accessor for StorePlatformGenreAttribute() + 24);
  v30 = *(v17 + 48);
  sub_1D50D019C(a1 + v29, v22);
  sub_1D50D019C(a2 + v29, &v22[v30]);
  OUTLINED_FUNCTION_10(v22);
  if (v25)
  {
    OUTLINED_FUNCTION_10(&v22[v30]);
    if (v25)
    {
      sub_1D4E50004(v22, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D50D019C(v22, v16);
  OUTLINED_FUNCTION_10(&v22[v30]);
  if (v31)
  {
    (*(v7 + 8))(v16, v4);
LABEL_27:
    sub_1D4E50004(v22, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  (*(v7 + 32))(v12, &v22[v30], v4);
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v33, v34);
  v35 = sub_1D5614D18();
  v36 = *(v7 + 8);
  v36(v12, v4);
  v36(v16, v4);
  sub_1D4E50004(v22, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v35 & 1) != 0;
}

uint64_t sub_1D518F474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965726E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D518F584(char a1)
{
  if (!a1)
  {
    return 0x644965726E6567;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 7107189;
}

uint64_t sub_1D518F5CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1258, &qword_1D563F798);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D518FE00();
  sub_1D56163D8();
  v21 = *v3;
  v20[15] = 0;
  sub_1D4F89BA0();
  sub_1D5616068();
  if (!v2)
  {
    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    LOBYTE(v21) = 1;
    sub_1D5616028();
    v16 = *(type metadata accessor for StorePlatformGenreAttribute() + 24);
    LOBYTE(v21) = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_121();
    sub_1D518FF14(v17, v18);
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D518F7A4()
{
  v1 = sub_1D560C0A8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (v0[1])
  {
    v14 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    v15 = v0[2];
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v16 = type metadata accessor for StorePlatformGenreAttribute();
  sub_1D50D019C(v0 + *(v16 + 24), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v4 + 32))(v9, v13, v1);
  sub_1D56162F8();
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v18, v19);
  sub_1D5614CB8();
  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_1D518F9A4()
{
  sub_1D56162D8();
  sub_1D518F7A4();
  return sub_1D5616328();
}

uint64_t sub_1D518F9E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1248, &qword_1D563F790);
  v9 = OUTLINED_FUNCTION_4(v8);
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for StorePlatformGenreAttribute();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D518FE00();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v14;
  v36 = 0;
  sub_1D4F89C9C();
  sub_1D5615F78();
  v22 = v35;
  *v20 = v34;
  v20[1] = v22;
  v29[1] = v22;
  LOBYTE(v34) = 1;
  v20[2] = sub_1D5615F38();
  v20[3] = v23;
  sub_1D560C0A8();
  LOBYTE(v34) = 2;
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v24, v25);
  sub_1D5615F78();
  v26 = OUTLINED_FUNCTION_3_95();
  v27(v26);
  sub_1D4F5A3D0(v7, v20 + *(v30 + 24));
  sub_1D518FE54(v20, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D518FEB8(v20);
}

uint64_t sub_1D518FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518F474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518FD10(uint64_t a1)
{
  v2 = sub_1D518FE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518FD4C(uint64_t a1)
{
  v2 = sub_1D518FE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518FDC4()
{
  sub_1D56162D8();
  sub_1D518F7A4();
  return sub_1D5616328();
}

unint64_t sub_1D518FE00()
{
  result = qword_1EC7F1250;
  if (!qword_1EC7F1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1250);
  }

  return result;
}

uint64_t sub_1D518FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformGenreAttribute();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D518FEB8(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformGenreAttribute();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D518FF14(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StorePlatformGenreAttribute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D519003C()
{
  result = qword_1EC7F1260;
  if (!qword_1EC7F1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1260);
  }

  return result;
}

unint64_t sub_1D5190094()
{
  result = qword_1EC7F1268;
  if (!qword_1EC7F1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1268);
  }

  return result;
}

unint64_t sub_1D51900EC()
{
  result = qword_1EC7F1270;
  if (!qword_1EC7F1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1270);
  }

  return result;
}

uint64_t sub_1D5190140()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v4 = v1[7];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v5;
  v6[1] = sub_1D5190290;
  v7 = v1[5];
  v8 = v1[2];

  return sub_1D5191F74(v7);
}

uint64_t sub_1D5190290()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 64);
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D5190380, 0, 0);
}

uint64_t sub_1D5190380()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D5190408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D5610A98();
  v0 = *(v2 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D4E62A60(&unk_1EDD5D880, &qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D560C8A8();
}

uint64_t InternalMusicPlayer.State.playbackStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus;
  result = OUTLINED_FUNCTION_59();
  *a1 = *(v1 + v3);
  return result;
}

unint64_t InternalMusicPlayer.State.playbackRate.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate);
  OUTLINED_FUNCTION_59();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t InternalMusicPlayer.State.canPlay.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canPause.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canStop.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canSkipToNextEntry.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canSkipToPreviousEntry.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canBeginSeekingForward.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canBeginSeekingBackward.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canJumpByTimeInterval.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canChangePlaybackTime.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canInsertAfterCurrentEntry.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canInsertAtTail.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canInsertAtEndOfUpNext.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canClearUpNext.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t InternalMusicPlayer.State.canInsertAfterLastContainer.getter()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterLastContainer;
  OUTLINED_FUNCTION_5_74();
  return *(v0 + v1);
}

uint64_t sub_1D519087C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_59();
  return sub_1D4F39AB0(v4 + v8, a4, a2, a3);
}

void sub_1D51908E0()
{
  OUTLINED_FUNCTION_42_22();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v11);
  v123 = sub_1D560E728();
  v12 = OUTLINED_FUNCTION_4(v123);
  v121 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v17 - v16);
  v18 = sub_1D560D838();
  v19 = OUTLINED_FUNCTION_4(v18);
  v125 = v20;
  v126 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v117 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v117 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9();
  if (v4)
  {
    v37 = [v4 musicKit_playerResponse_tracklist];
    v38 = [v4 musicKit_playerResponse_state];
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v124 = v25;
  sub_1D4E682AC(v38, v136);
  v39 = LOBYTE(v136[0]);
  if (v37)
  {
    v40 = OUTLINED_FUNCTION_36_28();
    v135 = v40 == 0;
    if (v40)
    {
      v0 = v40;
      [v40 musicKit_playerResponseItem_rate];
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
    }

    v43 = OUTLINED_FUNCTION_36_28();
    if (v43)
    {
      v2 = v43;
      v44 = [v43 musicKit_playerResponseItem_nowPlayingAudioFormat];
      OUTLINED_FUNCTION_35_33();
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
    v42 = 0;
    v135 = 1;
  }

  sub_1D4E68420(v0, v1);
  if (v4)
  {
    v45 = [v4 musicKit_playerResponse_playCommandRequest];
    swift_unknownObjectRelease();
    v46 = [v4 musicKit_playerResponse_pauseCommandRequest];
    swift_unknownObjectRelease();
    v47 = [v4 musicKit_playerResponse_stopCommandRequest];
    swift_unknownObjectRelease();
  }

  if (v37)
  {
    v128 = v39;
    v48 = [v37 musicKit_responseTracklist_changeItemCommand];
    if (v48 && (v0 = v48, v49 = [v48 musicKit_changeItemCommand_nextItemCommandRequest], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      HIDWORD(v134) = 1;
    }

    else
    {
      HIDWORD(v134) = 0;
    }

    v50 = [v37 musicKit_responseTracklist_changeItemCommand];
    v129 = v1;
    if (v50 && (v0 = v50, v51 = [v50 musicKit_changeItemCommand_previousItemCommandRequest], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      LODWORD(v134) = 1;
    }

    else
    {
      LODWORD(v134) = 0;
    }

    v52 = OUTLINED_FUNCTION_36_28();
    if (v52 && (v53 = OUTLINED_FUNCTION_44_21(v52), OUTLINED_FUNCTION_35_33(), v0) && (v54 = [v0 musicKit:1 seekCommand:? beginSeekCommandRequestWithDirection:?], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      HIDWORD(v133) = 1;
    }

    else
    {
      HIDWORD(v133) = 0;
    }

    v55 = OUTLINED_FUNCTION_36_28();
    if (v55 && (v56 = OUTLINED_FUNCTION_44_21(v55), OUTLINED_FUNCTION_35_33(), v0) && (v57 = [v0 musicKit:-1 seekCommand:? beginSeekCommandRequestWithDirection:?], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      LODWORD(v133) = 1;
    }

    else
    {
      LODWORD(v133) = 0;
    }

    v58 = OUTLINED_FUNCTION_36_28();
    if (v58 && (v59 = OUTLINED_FUNCTION_44_21(v58), OUTLINED_FUNCTION_35_33(), v0) && (v60 = [v0 musicKit:10.0 seekCommand:? jumpCommandRequestByInterval:?], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      HIDWORD(v132) = 1;
    }

    else
    {
      HIDWORD(v132) = 0;
    }

    v61 = OUTLINED_FUNCTION_36_28();
    if (v61 && (v62 = OUTLINED_FUNCTION_44_21(v61), OUTLINED_FUNCTION_35_33(), v0))
    {
      v63 = [v0 musicKit:10.0 seekCommand:? changePositionCommandRequestToElapsedInterval:?];
      OUTLINED_FUNCTION_27_37();
      if (v2)
      {
        swift_unknownObjectRelease();
        LODWORD(v132) = 1;
      }

      else
      {
        LODWORD(v132) = 0;
      }
    }

    else
    {
      LODWORD(v132) = 0;
    }

    v64 = OUTLINED_FUNCTION_39_26();
    if (v64 && (v0 = v64, v65 = [objc_opt_self() emptyPlaybackIntent], v66 = OUTLINED_FUNCTION_47_26(v65, sel_musicKit_insertItemsCommand_insertAfterPlayingItemCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v65, v2))
    {
      swift_unknownObjectRelease();
      HIDWORD(v131) = 1;
    }

    else
    {
      HIDWORD(v131) = 0;
    }

    v67 = OUTLINED_FUNCTION_39_26();
    if (v67 && (v0 = v67, v68 = [objc_opt_self() emptyPlaybackIntent], v69 = OUTLINED_FUNCTION_47_26(v68, sel_musicKit_insertItemsCommand_insertAtEndOfTracklistCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v68, v2))
    {
      swift_unknownObjectRelease();
      LODWORD(v131) = 1;
    }

    else
    {
      LODWORD(v131) = 0;
    }

    v70 = OUTLINED_FUNCTION_39_26();
    if (v70 && (v0 = v70, v71 = [objc_opt_self() emptyPlaybackIntent], v72 = OUTLINED_FUNCTION_47_26(v71, sel_musicKit_insertItemsCommand_insertAtEndOfUpNextCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v71, v2))
    {
      swift_unknownObjectRelease();
      HIDWORD(v130) = 1;
    }

    else
    {
      HIDWORD(v130) = 0;
    }

    v73 = [v37 musicKit_responseTracklist_resetCommand];
    if (v73 && (v0 = v73, v74 = [v73 musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest], OUTLINED_FUNCTION_27_37(), v2))
    {
      swift_unknownObjectRelease();
      LODWORD(v130) = 1;
    }

    else
    {
      LODWORD(v130) = 0;
    }

    v75 = OUTLINED_FUNCTION_39_26();
    if (v75)
    {
      v76 = [v75 musicKit_insertItemCommand_insertAfterLastSection];
      OUTLINED_FUNCTION_35_33();
      if (v0)
      {
        v77 = [objc_opt_self() emptyPlaybackIntent];
        v78 = OUTLINED_FUNCTION_47_26(v77, sel_musicKit_insertWithPlaybackIntent_);
        OUTLINED_FUNCTION_27_37();

        swift_unknownObjectRelease();
        v0 = 1;
      }
    }

    else
    {
      v0 = 0;
    }

    v1 = v129;
    v39 = v128;
  }

  else
  {
    v0 = 0;
    v134 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
  }

  v79 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  OUTLINED_FUNCTION_146_0(v32, v80, v81, v79);
  if (v37)
  {
    v127 = v0;
    v82 = OUTLINED_FUNCTION_39_26();
    if (!v82 || (v83 = [v82 musicKit_insertItemCommand_insertAfterLastSection], OUTLINED_FUNCTION_35_33(), !v0))
    {
      swift_unknownObjectRelease();
LABEL_80:
      LOBYTE(v0) = v127;
      goto LABEL_81;
    }

    v128 = v39;
    v129 = v1;
    v117[2] = v32;
    v84 = [v0 musicKit_sectionMetadataObject];
    OUTLINED_FUNCTION_34_32();
    sub_1D56159A8();
    swift_unknownObjectRelease();
    sub_1D4E519A8(v136, &v138);
    __swift_project_boxed_opaque_existential_1(&v138, v139);
    v4 = sub_1D5616158();
    if (qword_1EDD53CA0 != -1)
    {
      OUTLINED_FUNCTION_13_53();
    }

    v85 = sub_1D560D9A8();
    __swift_project_value_buffer(v85, qword_1EDD53CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v86 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v86);
    v88 = v87;
    v90 = *(v89 + 72);
    v91 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1D5621D90;
    v93 = v92 + v91;
    v1 = *(v88 + 104);
    v1(v93, *MEMORY[0x1E6975050], v86);
    v1(v93 + v90, *MEMORY[0x1E6975030], v86);
    v32 = v120;
    sub_1D560E718();
    v94 = sub_1D560D9E8();
    v95 = v122;
    OUTLINED_FUNCTION_146_0(v122, v96, v97, v94);
    v98 = v124;
    v117[1] = v4;
    sub_1D560F7D8();
    sub_1D4E50004(v95, &unk_1EC7EBF30, &qword_1D561C8C0);
    (*(v121 + 8))(v32, v123);
    v99 = sub_1D560D708();
    v101 = v100;
    if (v99 == sub_1D560EED8() && v101 == v102)
    {

      OUTLINED_FUNCTION_33_34();
    }

    else
    {
      v104 = sub_1D5616168();

      OUTLINED_FUNCTION_33_34();
      if ((v104 & 1) == 0)
      {
        v105 = v98;
        v107 = v125;
        v106 = v126;
        v108 = v118;
        (*(v125 + 16))(v118, v105, v126);
        v137 = 0;
        memset(v136, 0, sizeof(v136));
        v109 = v119;
        InternalMusicPlayer.Queue.Entry.Container.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v108, v136, MEMORY[0x1E69E7CC0], v119);
        swift_unknownObjectRelease();
        (*(v107 + 8))(v105, v106);
        sub_1D4E50004(v32, &unk_1EC7F1280, &qword_1D5636138);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        sub_1D4F39A1C(v109, v32, &unk_1EC7F1280, &qword_1D5636138);
LABEL_79:
        LOBYTE(v39) = v128;
        goto LABEL_80;
      }
    }

    (*(v125 + 8))(v98, v126);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v138);
    goto LABEL_79;
  }

LABEL_81:
  *v6 = v39;
  v110 = v4 != 0;
  *(v6 + 4) = v42;
  *(v6 + 8) = v135;
  v111 = _s5StateC10PropertiesVMa(0);
  sub_1D4F39A1C(v1, v6 + v111[6], &qword_1EC7F1278, &qword_1D563F8B8);
  *(v6 + v111[7]) = v110;
  *(v6 + v111[8]) = v110;
  *(v6 + v111[9]) = v110;
  v112 = v134;
  *(v6 + v111[10]) = BYTE4(v134);
  *(v6 + v111[11]) = v112;
  v113 = v133;
  *(v6 + v111[12]) = BYTE4(v133);
  *(v6 + v111[13]) = v113;
  v114 = v132;
  *(v6 + v111[14]) = BYTE4(v132);
  *(v6 + v111[15]) = v114;
  v115 = v131;
  *(v6 + v111[16]) = BYTE4(v131);
  *(v6 + v111[17]) = v115;
  v116 = v130;
  *(v6 + v111[18]) = BYTE4(v130);
  *(v6 + v111[19]) = v116;
  *(v6 + v111[20]) = v0;
  sub_1D4F39A1C(v32, v6 + v111[21], &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_41_27();
}

void sub_1D5191564()
{
  OUTLINED_FUNCTION_42_22();
  v3 = v0;
  v5 = v4;
  v105 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v6 = OUTLINED_FUNCTION_14(v105);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v102 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v104 = v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14(v103);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v106 = v19;
  v20 = sub_1D560F8D8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v108 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v107 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12D0, &qword_1D563FB20);
  OUTLINED_FUNCTION_14(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_19_0();
  v35 = *v5;
  v36 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus;
  OUTLINED_FUNCTION_21_42();
  v109 = v36;
  v37 = *(v3 + v36);
  v38 = &unk_1EDD76000;
  v39 = &unk_1EDD76000;
  if (v35 != v37)
  {
    goto LABEL_46;
  }

  v40 = v5[1];
  v41 = *(v5 + 8);
  v42 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate;
  OUTLINED_FUNCTION_59();
  v43 = *(v42 + 4);
  if (v41)
  {
    v38 = &unk_1EDD76000;
    if (!*(v42 + 4))
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v40 != *v42)
    {
      v43 = 1;
    }

    v38 = &unk_1EDD76000;
    if (v43)
    {
      goto LABEL_46;
    }
  }

  v101 = _s5StateC10PropertiesVMa(0);
  v44 = *(v101 + 24);
  v45 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant;
  OUTLINED_FUNCTION_59();
  v46 = v5 + v44;
  v47 = *(v31 + 48);
  sub_1D4F39AB0(v46, v1, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4F39AB0(v3 + v45, v1 + v47, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v1);
  if (v49)
  {
    OUTLINED_FUNCTION_10(v1 + v47);
    v39 = &unk_1EDD76000;
    v38 = &unk_1EDD76000;
    if (v49)
    {
      sub_1D4E50004(v1, &qword_1EC7F1278, &qword_1D563F8B8);
      v48 = v101;
      goto LABEL_19;
    }

LABEL_16:
    v50 = &unk_1EC7F12D0;
    v51 = &qword_1D563FB20;
    v52 = v1;
LABEL_17:
    sub_1D4E50004(v52, v50, v51);
LABEL_46:
    sub_1D5190408();
    *(v3 + v109) = *v5;
    v72 = *(v5 + 1);
    v73 = *(v5 + 8);
    v74 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate;
    OUTLINED_FUNCTION_21_42();
    *v74 = v72;
    *(v74 + 4) = v73;
    v75 = _s5StateC10PropertiesVMa(0);
    v76 = v75[6];
    v77 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant;
    swift_beginAccess();
    sub_1D5000C8C(v5 + v76, v3 + v77, &qword_1EC7F1278, &qword_1D563F8B8);
    swift_endAccess();
    LOBYTE(v76) = *(v5 + v75[7]);
    v78 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v78) = v76;
    LOBYTE(v76) = *(v5 + v75[8]);
    v79 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v79) = v76;
    LOBYTE(v76) = *(v5 + v75[9]);
    v80 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v80) = v76;
    LOBYTE(v76) = *(v5 + v75[10]);
    v81 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v81) = v76;
    LOBYTE(v76) = *(v5 + v75[11]);
    v82 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v82) = v76;
    LOBYTE(v76) = *(v5 + v75[12]);
    v83 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v83) = v76;
    LOBYTE(v76) = *(v5 + v75[13]);
    v84 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v84) = v76;
    LOBYTE(v76) = *(v5 + v75[14]);
    v85 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v85) = v76;
    LOBYTE(v76) = *(v5 + v75[15]);
    v86 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v86) = v76;
    LOBYTE(v76) = *(v5 + v75[16]);
    v87 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v87) = v76;
    LOBYTE(v76) = *(v5 + v75[17]);
    v88 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v88) = v76;
    LOBYTE(v76) = *(v5 + v75[18]);
    v89 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v89) = v76;
    LOBYTE(v76) = *(v5 + v75[19]);
    v90 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext;
    OUTLINED_FUNCTION_21_42();
    *(v3 + v90) = v76;
    LOBYTE(v76) = *(v5 + v75[20]);
    v91 = v38[404];
    OUTLINED_FUNCTION_21_42();
    *(v3 + v91) = v76;
    v92 = v75[21];
    v93 = v39[407];
    swift_beginAccess();
    sub_1D5000C8C(v5 + v92, v3 + v93, &unk_1EC7F1280, &qword_1D5636138);
    swift_endAccess();
    goto LABEL_47;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v1 + v47);
  if (v49)
  {
    (*(v108 + 8))(v2, v20);
    v39 = &unk_1EDD76000;
    v38 = &unk_1EDD76000;
    goto LABEL_16;
  }

  (*(v108 + 32))(v107, v1 + v47, v20);
  OUTLINED_FUNCTION_3_96();
  sub_1D4E644DC(v53, v54);
  v55 = sub_1D5614D18();
  v56 = *(v108 + 8);
  v56(v107, v20);
  v56(v2, v20);
  sub_1D4E50004(v1, &qword_1EC7F1278, &qword_1D563F8B8);
  v39 = &unk_1EDD76000;
  v38 = &unk_1EDD76000;
  v48 = v101;
  if ((v55 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_19:
  v57 = *(v5 + v48[7]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v58 = *(v5 + v48[8]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v59 = *(v5 + v48[9]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v60 = *(v5 + v48[10]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v61 = *(v5 + v48[11]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v62 = *(v5 + v48[12]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v63 = *(v5 + v48[13]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v64 = *(v5 + v48[14]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v65 = *(v5 + v48[15]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v66 = *(v5 + v48[16]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v67 = *(v5 + v48[17]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v68 = *(v5 + v48[18]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v69 = *(v5 + v48[19]);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v70 = *(v5 + v48[20]);
  v71 = v38[404];
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_66();
  if (!v49)
  {
    goto LABEL_46;
  }

  v94 = v48[21];
  v95 = v39[407];
  OUTLINED_FUNCTION_59();
  v96 = *(v103 + 48);
  sub_1D4F39AB0(v5 + v94, v106, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F39AB0(v3 + v95, v106 + v96, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v106, 1, v105);
  if (v49)
  {
    OUTLINED_FUNCTION_57(v106 + v96, 1, v105);
    if (v49)
    {
      sub_1D4E50004(v106, &unk_1EC7F1280, &qword_1D5636138);
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  sub_1D4F39AB0(v106, v104, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v106 + v96, 1, v105);
  if (v97)
  {
    OUTLINED_FUNCTION_4_72();
    sub_1D51932C4(v104, v98);
LABEL_56:
    v50 = &qword_1EC7F0178;
    v51 = &qword_1D5636228;
    v52 = v106;
    goto LABEL_17;
  }

  sub_1D5193260(v106 + v96, v102);
  static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
  v100 = v99;
  sub_1D51932C4(v102, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D51932C4(v104, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D4E50004(v106, &unk_1EC7F1280, &qword_1D5636138);
  if ((v100 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  OUTLINED_FUNCTION_41_27();
}

uint64_t sub_1D5191F74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = *(*(_s5StateC10PropertiesVMa(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D519202C, 0, 0);
}

uint64_t sub_1D519202C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  sub_1D5612858();
  v3 = v0[2];
  sub_1D51908E0();
  swift_unknownObjectRelease();
  sub_1D56153C8();
  v0[7] = sub_1D56153B8();
  v5 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D51920F8, v5, v4);
}

uint64_t sub_1D51920F8()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];

  sub_1D5191564();

  return MEMORY[0x1EEE6DFA0](sub_1D5192168, 0, 0);
}

uint64_t sub_1D5192168()
{
  OUTLINED_FUNCTION_60();
  sub_1D51932C4(*(v0 + 48), _s5StateC10PropertiesVMa);

  OUTLINED_FUNCTION_55();

  return v1();
}

BOOL sub_1D51921E0(float *a1, float *a2)
{
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v86 = v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14(v85);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19_0();
  v20 = sub_1D560F8D8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v87 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12D0, &qword_1D563FB20);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - v38;
  if (*a1 != *a2)
  {
    return 0;
  }

  v40 = *(a2 + 8);
  if (a1[2])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  v82 = v5;
  v83 = v2;
  v81 = v11;
  v84 = _s5StateC10PropertiesVMa(0);
  v41 = v84[6];
  v42 = *(v34 + 48);
  sub_1D4F39AB0(a1 + v41, v39, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4F39AB0(a2 + v41, &v39[v42], &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v39);
  if (v43)
  {
    OUTLINED_FUNCTION_10(&v39[v42]);
    if (v43)
    {
      sub_1D4E50004(v39, &qword_1EC7F1278, &qword_1D563F8B8);
      goto LABEL_19;
    }

LABEL_16:
    v47 = &unk_1EC7F12D0;
    v48 = &qword_1D563FB20;
    v49 = v39;
LABEL_17:
    sub_1D4E50004(v49, v47, v48);
    return 0;
  }

  sub_1D4F39AB0(v39, v33, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(&v39[v42]);
  if (v43)
  {
    v44 = *(v87 + 8);
    v45 = OUTLINED_FUNCTION_71();
    v46(v45);
    goto LABEL_16;
  }

  v50 = v87;
  (*(v87 + 32))(v27, &v39[v42], v20);
  OUTLINED_FUNCTION_3_96();
  sub_1D4E644DC(v51, v52);
  v53 = sub_1D5614D18();
  v54 = *(v50 + 8);
  v54(v27, v20);
  v55 = OUTLINED_FUNCTION_71();
  (v54)(v55);
  sub_1D4E50004(v39, &qword_1EC7F1278, &qword_1D563F8B8);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  OUTLINED_FUNCTION_2_99(v84[7]);
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v56 + 32));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v57 + 36));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v58 + 40));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v59 + 44));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v60 + 48));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v61 + 52));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v62 + 56));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v63 + 60));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v64 + 64));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v65 + 68));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(*(v66 + 72));
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(v84[19]);
  if (!v43)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99(v84[20]);
  if (!v43)
  {
    return 0;
  }

  v68 = v84[21];
  v69 = *(v85 + 48);
  v70 = v83;
  sub_1D4F39AB0(a1 + v68, v83, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F39AB0(a2 + v68, v70 + v69, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v70, 1, v82);
  if (v43)
  {
    OUTLINED_FUNCTION_57(v83 + v69, 1, v82);
    if (v43)
    {
      sub_1D4E50004(v83, &unk_1EC7F1280, &qword_1D5636138);
      return 1;
    }

    goto LABEL_55;
  }

  v71 = v83;
  sub_1D4F39AB0(v83, v86, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v71 + v69, 1, v82);
  if (v72)
  {
    OUTLINED_FUNCTION_4_72();
    sub_1D51932C4(v86, v73);
LABEL_55:
    v47 = &qword_1EC7F0178;
    v48 = &qword_1D5636228;
    v49 = v83;
    goto LABEL_17;
  }

  v74 = v83;
  v75 = v83 + v69;
  v76 = v81;
  sub_1D5193260(v75, v81);
  v77 = v86;
  static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
  v79 = v78;
  sub_1D51932C4(v76, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D51932C4(v77, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D4E50004(v74, &unk_1EC7F1280, &qword_1D5636138);
  return (v79 & 1) != 0;
}

uint64_t sub_1D51927B0()
{
  v49 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v2 = OUTLINED_FUNCTION_14(v49);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9();
  v12 = sub_1D560F8D8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  MEMORY[0x1DA6EC0D0](*v0);
  if (v0[8] == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v27 = *(v0 + 1);
    sub_1D56162F8();
    sub_1D5616308();
  }

  v28 = _s5StateC10PropertiesVMa(0);
  sub_1D4F39AB0(&v0[v28[6]], v26, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_57(v26, 1, v12);
  if (v29)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v15 + 32))(v20, v26, v12);
    sub_1D56162F8();
    OUTLINED_FUNCTION_3_96();
    sub_1D4E644DC(v30, v31);
    sub_1D5614CB8();
    (*(v15 + 8))(v20, v12);
  }

  v32 = v0[v28[7]];
  sub_1D56162F8();
  v33 = v0[v28[8]];
  sub_1D56162F8();
  v34 = v0[v28[9]];
  sub_1D56162F8();
  v35 = v0[v28[10]];
  sub_1D56162F8();
  v36 = v0[v28[11]];
  sub_1D56162F8();
  v37 = v0[v28[12]];
  sub_1D56162F8();
  v38 = v0[v28[13]];
  sub_1D56162F8();
  v39 = v0[v28[14]];
  sub_1D56162F8();
  v40 = v0[v28[15]];
  sub_1D56162F8();
  v41 = v0[v28[16]];
  sub_1D56162F8();
  v42 = v0[v28[17]];
  sub_1D56162F8();
  v43 = v0[v28[18]];
  sub_1D56162F8();
  v44 = v0[v28[19]];
  sub_1D56162F8();
  v45 = v0[v28[20]];
  sub_1D56162F8();
  sub_1D4F39AB0(&v0[v28[21]], v1, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v1, 1, v49);
  if (v29)
  {
    return sub_1D56162F8();
  }

  sub_1D5193260(v1, v7);
  sub_1D56162F8();
  InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
  OUTLINED_FUNCTION_4_72();
  return sub_1D51932C4(v7, v46);
}

uint64_t sub_1D5192B4C()
{
  sub_1D56162D8();
  sub_1D51927B0();
  return sub_1D5616328();
}

uint64_t sub_1D5192B98()
{
  sub_1D56162D8();
  sub_1D51927B0();
  return sub_1D5616328();
}

uint64_t InternalMusicPlayer.State.deinit()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_activeMonitoringPublisher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  OUTLINED_FUNCTION_14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_player);

  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_lastContainer, &unk_1EC7F1280, &qword_1D5636138);
  return v0;
}

uint64_t InternalMusicPlayer.State.__deallocating_deinit()
{
  InternalMusicPlayer.State.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5192CE0@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.State.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D5192D08@<X0>(unint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    result = 3;
LABEL_4:
    *a3 = result;
    return result;
  }

  if (result < 3)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_56();
  sub_1D5615B68();

  OUTLINED_FUNCTION_40_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12C0, &qword_1D563FB18);
  v3 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_4_1();
  result = OUTLINED_FUNCTION_12_3();
  __break(1u);
  return result;
}

unint64_t sub_1D5192E08@<X0>(unint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    result = 3;
LABEL_4:
    *a3 = result;
    return result;
  }

  if (result < 3)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_56();
  sub_1D5615B68();

  OUTLINED_FUNCTION_40_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12B8, &qword_1D563FB10);
  v3 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_4_1();
  result = OUTLINED_FUNCTION_12_3();
  __break(1u);
  return result;
}

uint64_t _s16MusicKitInternal0cA6PlayerC10RepeatModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5192F54()
{
  result = qword_1EC7F1298;
  if (!qword_1EC7F1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1298);
  }

  return result;
}

unint64_t sub_1D5192FAC()
{
  result = qword_1EC7F12A0;
  if (!qword_1EC7F12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F12A0);
  }

  return result;
}

unint64_t sub_1D5193004()
{
  result = qword_1EC7F12A8;
  if (!qword_1EC7F12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F12A8);
  }

  return result;
}

_BYTE *_s14PlaybackStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5193164(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5193260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51932C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D5193344()
{
  sub_1D5193460();
  if (v0 <= 0x3F)
  {
    sub_1D4E64574(319, &qword_1EDD5D2F8, MEMORY[0x1E69758F8]);
    if (v1 <= 0x3F)
    {
      sub_1D4E64574(319, &qword_1EDD5E380, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5193460()
{
  if (!qword_1EDD52728)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52728);
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_43()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_25_42@<X0>(char a1@<W8>)
{
  *(v2 + v1) = a1;

  return [v3 (v4 + 2961)];
}

uint64_t OUTLINED_FUNCTION_28_38()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_33_34()
{
  v1 = *(v0 - 320);
  v2 = *(v0 - 232);
  v3 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_34_32()
{

  return swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_46_18(void *a1)
{

  return [a1 (v1 + 2069)];
}

id OUTLINED_FUNCTION_47_26(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v254 = a3;
  v255 = a1;
  v246 = a4;
  v5 = sub_1D5613598();
  v6 = OUTLINED_FUNCTION_4(v5);
  v265 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v10);
  v252 = sub_1D5612B88();
  v11 = OUTLINED_FUNCTION_4(v252);
  v269 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1318, &qword_1D563FBC0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v20);
  v21 = sub_1D5610088();
  v22 = OUTLINED_FUNCTION_4(v21);
  v266 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v26);
  v251 = sub_1D560D838();
  v27 = OUTLINED_FUNCTION_4(v251);
  v250 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1320, &qword_1D563FBC8);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v267 = v36;
  v248 = type metadata accessor for UploadedAudioPropertyProvider();
  OUTLINED_FUNCTION_24_0(v248);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  v268 = &v240[-v41];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_59_0();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v240[-v50];
  v243 = sub_1D5612478();
  v52 = OUTLINED_FUNCTION_4(v243);
  v242 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v240[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v253 = a2;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_15_55();
  v60 = sub_1D5196010(v58, v59);
  v245 = v5;
  v61 = v21;
  v264 = v60;
  v263 = sub_1D5614C68();

  sub_1D560FF28();
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v21);
  sub_1D560FF28();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v21);
  v249 = v57;
  v62 = v255;
  sub_1D560D4D8();
  sub_1D4E7661C(v48, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v51, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v254, v270);
  if (!v271)
  {
    sub_1D4E7661C(v270, &qword_1EC7EEC40, &unk_1D561C070);
    v272 = 0u;
    v273 = 0u;
    v274 = 0;
LABEL_8:
    v63 = v248;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v274 = 0;
    v272 = 0u;
    v273 = 0u;
    goto LABEL_8;
  }

  v63 = v248;
  if (!*(&v273 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v272, &qword_1EC7EA368, &unk_1D5629620);
    v66 = v251;
    goto LABEL_10;
  }

  sub_1D4E48324(&v272, &v275);
  __swift_project_boxed_opaque_existential_1(&v275, v276);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v64 = v267;
  v65 = swift_dynamicCast();
  v66 = v251;
  if (v65)
  {
    OUTLINED_FUNCTION_17_53(v64);
    v67 = v260;
    sub_1D5195F1C(v64, v260);
    v68 = v268;
    sub_1D5195E5C(v67, v268);
    v69 = v67 + v63[29];
    v70 = v261;
    sub_1D560D718();
    (*(v250 + 40))(&v68[v63[29]], v70, v66);
    v71 = v262;
    sub_1D5612468();
    (*(v266 + 40))(&v68[v63[30]], v71, v61);
    v72 = sub_1D5612458();
    v74 = v73;
    sub_1D5195EC0(v67);
    v75 = &v68[v63[31]];
    v76 = v75[1];

    *v75 = v72;
    v75[1] = v74;
    __swift_destroy_boxed_opaque_existential_1(&v275);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v236, v237, v238, v63);
  sub_1D4E7661C(v64, &qword_1EC7F1320, &qword_1D563FBC8);
  __swift_destroy_boxed_opaque_existential_1(&v275);
LABEL_10:
  v77 = v63[5];
  sub_1D56140F8();
  v78 = v268;
  v79 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = v63[6];
  type metadata accessor for AssetFlavors();
  v84 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  v88 = v63[7];
  sub_1D560F928();
  v89 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = v63[8];
  sub_1D56106B8();
  v94 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = v63[11];
  v99 = sub_1D5610978();
  v100 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
  v103 = v63[13];
  v104 = sub_1D560C328();
  v105 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v108 = v63[14];
  sub_1D56128E8();
  v109 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  v113 = v63[15];
  sub_1D5610CB8();
  v114 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  v118 = v63[16];
  sub_1D5613198();
  v119 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  v123 = v63[17];
  sub_1D56134E8();
  v124 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
  v128 = v63[18];
  sub_1D5614A78();
  v129 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  v133 = v63[19];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v99);
  v137 = v63[20];
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
  v142 = v63[21];
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
  v147 = v63[22];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v104);
  v151 = v63[24];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v104);
  v155 = v63[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v156 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
  v160 = v63[27];
  type metadata accessor for CuratorRelationshipProvider();
  v161 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  (*(v250 + 16))(&v78[v63[29]], v62, v66);
  v165 = &v78[v63[30]];
  sub_1D5612468();
  v166 = sub_1D5612458();
  v267 = v167;
  sub_1D5614A88();
  v266 = OUTLINED_FUNCTION_16_54();
  v262 = OUTLINED_FUNCTION_16_54();
  v168 = OUTLINED_FUNCTION_16_54();
  v169 = OUTLINED_FUNCTION_16_54();
  *v78 = 0;
  *(v78 + 1) = 0;
  v170 = &v78[v63[9]];
  *v170 = 0;
  v170[8] = 1;
  *&v78[v63[10]] = 0;
  *&v78[v63[12]] = 0;
  v171 = &v78[v63[23]];
  *v171 = 0;
  *(v171 + 1) = 0;
  v172 = &v78[v63[25]];
  *v172 = 0;
  *(v172 + 1) = 0;
  if (qword_1EC7E9010 != -1)
  {
    swift_once();
  }

  v173 = qword_1EC87C278;
  if (qword_1EC87C278 >> 62)
  {
    sub_1D560CDE8();

    v239 = sub_1D5615E18();

    v173 = v239;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v174 = v267;
  v175 = v268;
  *&v268[v63[28]] = v173;
  v176 = &v175[v63[31]];
  *v176 = v166;
  v176[1] = v174;
  *&v175[v63[32]] = v266;
  *&v175[v63[33]] = v262;
  *&v175[v63[34]] = v168;
  *&v175[v63[35]] = v169;
LABEL_15:
  swift_getKeyPath();
  v177 = *MEMORY[0x1E6976AF0];
  v266 = *(v265 + 104);
  v260 = v265 + 104;
  v178 = v257;
  v179 = v245;
  (v266)(v257, v177, v245);
  OUTLINED_FUNCTION_17_53(v178);
  v180 = *MEMORY[0x1E6976668];
  v181 = v269;
  v182 = *(v269 + 104);
  v258 = v269 + 104;
  v262 = v182;
  v183 = v244;
  v259 = v180;
  v184 = v252;
  (v182)(v244, v180, v252);
  v267 = sub_1D5196010(&qword_1EC7EF3E0, type metadata accessor for UploadedAudioPropertyProvider);
  OUTLINED_FUNCTION_34_33();
  v186 = *(v185 - 256);
  sub_1D5610D98();

  v187 = *(v181 + 8);
  v269 = v181 + 8;
  v188 = OUTLINED_FUNCTION_135_0();
  v187(v188);
  v261 = v187;
  sub_1D4E7661C(v178, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v189 = *MEMORY[0x1E6976A88];
  v190 = v256;
  OUTLINED_FUNCTION_40_29();
  v192 = *(v191 - 256);
  (v266)();
  (v262)(v183, v180, v184);
  OUTLINED_FUNCTION_34_33();
  v194 = *(v193 - 256);
  sub_1D5610D78();

  v195 = OUTLINED_FUNCTION_135_0();
  v187(v195);
  v196 = *(v265 + 8);
  v265 += 8;
  v247 = v196;
  v196(v190, v179);
  swift_getKeyPath();
  v197 = v178;
  (v266)(v178, *MEMORY[0x1E6976AF8], v179);
  OUTLINED_FUNCTION_17_53(v178);
  v241 = *MEMORY[0x1E6976670];
  v198 = v184;
  v199 = v262;
  v262(v183);
  OUTLINED_FUNCTION_34_33();
  v201 = *(v200 - 256);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v202 = v261;
  (v261)(v183, v198);
  sub_1D4E7661C(v197, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v203 = v266;
  (v266)(v256, *MEMORY[0x1E6976AA8], v179);
  v204 = OUTLINED_FUNCTION_19_47();
  v199(v204);
  sub_1D5610D78();

  v205 = v252;
  v202(v183, v252);
  OUTLINED_FUNCTION_38_26();
  v206();
  swift_getKeyPath();
  v207 = *MEMORY[0x1E6976AB8];
  v208 = v257;
  OUTLINED_FUNCTION_40_29();
  v210 = *(v209 - 256);
  v203();
  OUTLINED_FUNCTION_17_53(v208);
  v211 = OUTLINED_FUNCTION_19_47();
  v262(v211);
  OUTLINED_FUNCTION_34_33();
  v213 = *(v212 - 256);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  OUTLINED_FUNCTION_137();
  v214();
  sub_1D4E7661C(v208, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  (v266)(v208, *MEMORY[0x1E6976AC0], v179);
  OUTLINED_FUNCTION_17_53(v208);
  v215 = OUTLINED_FUNCTION_19_47();
  v216 = v262;
  v262(v215);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v217();
  sub_1D4E7661C(v208, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v218 = *MEMORY[0x1E6976AA0];
  OUTLINED_FUNCTION_40_29();
  v220 = *(v219 - 256);
  (v266)();
  v221 = OUTLINED_FUNCTION_19_47();
  v216(v221);
  OUTLINED_FUNCTION_34_33();
  v223 = *(v222 - 256);
  sub_1D5610D78();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v224();
  OUTLINED_FUNCTION_38_26();
  v225();
  swift_getKeyPath();
  v226 = *MEMORY[0x1E6976AD8];
  v227 = v257;
  OUTLINED_FUNCTION_40_29();
  v229 = *(v228 - 256);
  (v266)();
  OUTLINED_FUNCTION_17_53(v227);
  (v262)(v183, v241, v205);
  v231 = v267;
  v230 = v268;
  sub_1D5610D68();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v232();
  sub_1D4E7661C(v227, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v233 = v255;
  sub_1D5610DA8();

  v276 = v248;
  v277 = v231;
  v234 = __swift_allocate_boxed_opaque_existential_0(&v275);
  sub_1D5195E5C(v230, v234);
  UploadedAudio.init(propertyProvider:)(&v275, v246);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v254, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v250 + 8))(v233, v251);
  (*(v242 + 8))(v249, v243);
  return sub_1D5195EC0(v230);
}

uint64_t sub_1D5194870()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F1300);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F1300);
  v2 = *MEMORY[0x1E69767F0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static UploadedAudio.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9008 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F1300);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t UploadedAudio.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = v0;
  v172 = sub_1D5614A78();
  v2 = OUTLINED_FUNCTION_4(v172);
  v165 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v21);
  v168 = sub_1D5610CB8();
  v22 = OUTLINED_FUNCTION_4(v168);
  v164 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v31);
  v173 = sub_1D560F928();
  v32 = OUTLINED_FUNCTION_4(v173);
  v163 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v162 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v162 - v47;
  v49 = sub_1D5613598();
  v50 = OUTLINED_FUNCTION_4(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_135();
  v179 = v56;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_135();
  v178 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v177 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  v176 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v162 - v67;
  OUTLINED_FUNCTION_15_55();
  v175 = sub_1D5196010(v69, v70);
  v71 = sub_1D5614BD8();
  v72 = *MEMORY[0x1E6976AF0];
  v182 = v52;
  v73 = *(v52 + 104);
  v180 = v52 + 104;
  v185 = v73;
  v73(v68, v72, v49);
  if (qword_1EC7E8E40 != -1)
  {
    swift_once();
  }

  v74 = sub_1D56140F8();
  v75 = sub_1D5196010(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  v183 = sub_1D5196010(&qword_1EC7EC498, type metadata accessor for UploadedAudio);
  v184 = v75;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v74);
  v181 = v1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v74);
    (*(v77 + 8))(v48, v74);
    if (v189)
    {
      OUTLINED_FUNCTION_9_67();
      OUTLINED_FUNCTION_0_122();
      sub_1D4F14934();
      v71 = v186;
      v78 = *(v182 + 8);
      v78(v68, v49);
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E600();
  if (v80)
  {
    v81 = v79;
    swift_isUniquelyReferenced_nonNull_native();
    v186 = v71;
    v82 = *(v71 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
    sub_1D5615D78();
    v71 = v186;
    v78 = *(v182 + 8);
    v78((*(v186 + 48) + *(v182 + 72) * v81), v49);
    sub_1D4E519A8((*(v71 + 56) + 32 * v81), v187);
    sub_1D5615D98();
  }

  else
  {
    memset(v187, 0, sizeof(v187));
    v78 = *(v182 + 8);
  }

  v78(v68, v49);
  sub_1D4E7661C(v187, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v83 = v166;
  v185(v166, *MEMORY[0x1E6976A88], v49);
  if (qword_1EC7E8E50 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v84 = v173;
  if (__swift_getEnumTagSinglePayload(v42, 1, v173) == 1)
  {
    sub_1D4E7661C(v42, &qword_1EC7EDB98, L"X\b\a");
    sub_1D4F0E600();
    if (v86)
    {
      v87 = v85;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v88 + v89 * v87), v49);
      sub_1D4E519A8((*(v71 + 56) + 32 * v87), &v188);
      sub_1D5615D98();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v95 = v167;
    OUTLINED_FUNCTION_27_38();
    v78(v83, v49);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v90 = v83;
    v91 = v163;
    (*(v163 + 16))(v162[1], v42, v84);
    sub_1D515CC4C();
    v92 = v84;
    v94 = v93;
    (*(v91 + 8))(v42, v92);
    v189 = sub_1D4F688F0();
    *&v188 = v94;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v186;
    OUTLINED_FUNCTION_27_38();
    v95 = v167;
    v78(v90, v49);
  }

  v96 = *MEMORY[0x1E6976AF8];
  OUTLINED_FUNCTION_37_24();
  v97();
  if (qword_1EC7E8E60 != -1)
  {
    swift_once();
  }

  v98 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (BYTE8(v188))
  {
    sub_1D4F0E600();
    if (v99)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v100 + v101 * v98), v49);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v104 = v168;
    OUTLINED_FUNCTION_27_38();
    v105 = OUTLINED_FUNCTION_39_4();
    (v78)(v105);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    sub_1D5615578();
    v189 = v98;
    *&v188 = v102;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v186;
    OUTLINED_FUNCTION_27_38();
    v103 = OUTLINED_FUNCTION_39_4();
    (v78)(v103);
    v104 = v168;
  }

  v106 = *MEMORY[0x1E6976AA8];
  OUTLINED_FUNCTION_37_24();
  v107();
  if (qword_1EC7E8E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v95) == 1)
  {
    sub_1D4E7661C(v95, &qword_1EC7EF5D0, &unk_1D5632140);
    sub_1D4F0E600();
    if (v108)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v109 + v110 * v104), v49);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    OUTLINED_FUNCTION_27_38();
    v78(v176, v49);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v111 = v95;
    v112 = v164;
    v113 = *(v164 + 16);
    v114 = OUTLINED_FUNCTION_41_5();
    v115(v114);
    sub_1D515D168();
    v117 = v116;
    (*(v112 + 8))(v111, v104);
    v189 = sub_1D4F688F0();
    *&v188 = v117;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v118 = v176;
    sub_1D4F14934();
    v71 = v186;
    OUTLINED_FUNCTION_27_38();
    v78(v118, v49);
  }

  v119 = v185;
  v185(v169, *MEMORY[0x1E6976AB0], v49);
  v189 = MEMORY[0x1E69E6370];
  LOBYTE(v188) = 1;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_0_122();
  sub_1D4F14934();
  v120 = OUTLINED_FUNCTION_30_34();
  (v78)(v120);
  v119(v177, *MEMORY[0x1E6976AB8], v49);
  if (qword_1EC7E8E90 != -1)
  {
    swift_once();
  }

  v121 = sub_1D5613198();
  v122 = v170;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v123 = OUTLINED_FUNCTION_42_1(v122);
  v124 = MEMORY[0x1E69E6530];
  v176 = v78;
  if (v123 == 1)
  {
    sub_1D4E7661C(v122, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4F0E600();
    if (v125)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v126 = OUTLINED_FUNCTION_3_97();
      (v78)(v126);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      v127.n128_f64[0] = OUTLINED_FUNCTION_11_35();
    }

    (v78)(v177, v49, v127);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v128 = v122;
    v129 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0(v121);
    (*(v130 + 8))(v128, v121);
    v189 = v124;
    *&v188 = v129;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v131 = OUTLINED_FUNCTION_30_34();
    (v78)(v131);
  }

  v185(v178, *MEMORY[0x1E6976AC0], v49);
  if (qword_1EC7E8E98 != -1)
  {
    swift_once();
  }

  v132 = sub_1D56134E8();
  v133 = v171;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v133) == 1)
  {
    sub_1D4E7661C(v133, &qword_1EC7EC528, &unk_1D5621070);
    sub_1D4F0E600();
    if (v134)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v135 = OUTLINED_FUNCTION_3_97();
      v136 = v176;
      (v176)(v135);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
      OUTLINED_FUNCTION_11_68();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_11_68();
      v136 = v176;
    }

    v136(v178, v49);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v137 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0(v132);
    (*(v138 + 8))(v133, v132);
    v189 = v124;
    *&v188 = v137;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v132 = v178;
    sub_1D4F14934();
    v139 = OUTLINED_FUNCTION_30_34();
    (v176)(v139);
    OUTLINED_FUNCTION_11_68();
  }

  v140 = *MEMORY[0x1E6976AA0];
  OUTLINED_FUNCTION_37_24();
  v141();
  if (qword_1EC7E8EA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v142 = v174;
  if (OUTLINED_FUNCTION_42_1(v174) == 1)
  {
    sub_1D4E7661C(v142, &qword_1EC7EF5D8, &unk_1D5632160);
    sub_1D4F0E600();
    if (v143)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v144 = OUTLINED_FUNCTION_3_97();
      v145 = v176;
      (v176)(v144);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      v145 = v176;
    }

    v145(v179, v49);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v146 = v165;
    v147 = *(v165 + 16);
    v148 = v179;
    v149 = v142;
    v150 = OUTLINED_FUNCTION_41_5();
    v151(v150);
    sub_1D515CC2C();
    v153 = v152;
    (*(v146 + 8))(v149, v132);
    v189 = sub_1D4F688F0();
    *&v188 = v153;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v186;
    v145 = v176;
    (v176)(v148, v49);
  }

  v154 = *MEMORY[0x1E6976AD8];
  OUTLINED_FUNCTION_37_24();
  v155();
  if (qword_1EC7E8EC8 != -1)
  {
    swift_once();
  }

  v156 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (*(&v188 + 1))
  {
    v189 = v156;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v186;
    v157 = OUTLINED_FUNCTION_39_4();
    (v145)(v157);
  }

  else
  {
    sub_1D4F0E600();
    if (v158)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v159 = OUTLINED_FUNCTION_3_97();
      (v145)(v159);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v160 = OUTLINED_FUNCTION_39_4();
    (v145)(v160);
    sub_1D4E7661C(&v188, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v71;
}

uint64_t UploadedAudio.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767F0];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D5195D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5196010(&qword_1EC7F1330, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5195DD4()
{
  sub_1D5196010(&qword_1EC7EA718, type metadata accessor for UploadedAudio);

  return sub_1D56132F8();
}

uint64_t sub_1D5195E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudioPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5195EC0(uint64_t a1)
{
  v2 = type metadata accessor for UploadedAudioPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5195F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudioPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5196010(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D519607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v195 = v27;
  v196 = v26;
  v200 = v28;
  v29 = type metadata accessor for UploadedVideo();
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v192 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  v194 = v35;
  OUTLINED_FUNCTION_70_0();
  v36 = type metadata accessor for UploadedAudio();
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v190 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v193 = v42;
  OUTLINED_FUNCTION_70_0();
  v43 = type metadata accessor for TVEpisode();
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v187 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v191 = v49;
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D5613838();
  v51 = OUTLINED_FUNCTION_4(v50);
  v188 = v52;
  v189 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  v186 = v56;
  OUTLINED_FUNCTION_70_0();
  v185 = sub_1D5614898();
  v57 = OUTLINED_FUNCTION_4(v185);
  v184 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_2();
  v183 = v62;
  OUTLINED_FUNCTION_70_0();
  v182 = sub_1D560EEA8();
  v63 = OUTLINED_FUNCTION_4(v182);
  v181 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  v180 = v68;
  OUTLINED_FUNCTION_70_0();
  v69 = type metadata accessor for MusicMovie();
  v70 = OUTLINED_FUNCTION_22(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_2();
  v179 = v74;
  OUTLINED_FUNCTION_70_0();
  v178 = sub_1D5613AF8();
  v75 = OUTLINED_FUNCTION_4(v178);
  v177[3] = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  v177[1] = v80;
  OUTLINED_FUNCTION_70_0();
  v199 = type metadata accessor for GenericMusicItem();
  v81 = OUTLINED_FUNCTION_14(v199);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5();
  v197 = v85 - v84;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_4(v198);
  v87 = v86;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_31();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_4(v91);
  v93 = v92;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_16_0();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_4(v97);
  v99 = v98;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v102);
  v104 = v177 - v103;
  v105 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__playabilityStatus;
  v201 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1390, &qword_1D563FEF8);
  sub_1D560C8B8();
  v106 = v97;
  v107 = v200;
  (*(v99 + 32))(v25 + v105, v104, v106);
  v108 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__previewCapabilityStatus;
  v201 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13A0, &qword_1D563FF00);
  sub_1D560C8B8();
  v109 = v25 + v108;
  v110 = v197;
  (*(v93 + 32))(v109, v21, v91);
  v111 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__isPlaying;
  v201 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13B0, &qword_1D563FF08);
  sub_1D560C8B8();
  v113 = *(v87 + 32);
  v112 = v87 + 32;
  v113(v25 + v111, v22, v198);
  *(v25 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = 0;
  v114 = (v25 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState);
  *v114 = 0u;
  v114[1] = 0u;
  OUTLINED_FUNCTION_24_42();
  sub_1D51A1FBC(v107, v110);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
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
    case 0x11u:
    case 0x12u:
    case 0x15u:

      sub_1D4E50004(v196, &qword_1EC7EEC40, &unk_1D561C070);
      v115 = type metadata accessor for GenericMusicItem;
      sub_1D51A34D0(v107, type metadata accessor for GenericMusicItem);
      v116 = v110;
      goto LABEL_13;
    case 7u:
      v159 = OUTLINED_FUNCTION_127_0();
      v144 = v179;
      sub_1D51A1F64(v159, v179);
      v115 = type metadata accessor for MusicMovie;
      sub_1D51A1FBC(v144, v177[2]);
      OUTLINED_FUNCTION_103_10();
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1400, &qword_1D563FF90);
      OUTLINED_FUNCTION_2_19(v160);
      OUTLINED_FUNCTION_99_10();
      v161 = OUTLINED_FUNCTION_78_12();
      sub_1D51A2014(v161, v162, v163);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197420(v164);
      goto LABEL_12;
    case 8u:
      OUTLINED_FUNCTION_117_5(&a14);
      v125 = OUTLINED_FUNCTION_106_6();
      v117 = v182;
      v126(v125);
      OUTLINED_FUNCTION_142_4();
      v127 = OUTLINED_FUNCTION_40_30();
      v128(v127);
      OUTLINED_FUNCTION_104_10();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F8, &qword_1D563FF88);
      OUTLINED_FUNCTION_2_19(v129);
      OUTLINED_FUNCTION_101_4();
      v130 = OUTLINED_FUNCTION_79_7();
      sub_1D51A09C0(v130, v131, v132);
      OUTLINED_FUNCTION_144_2();
      sub_1D51975B8(v133);
      goto LABEL_8;
    case 9u:
      OUTLINED_FUNCTION_117_5(&a18);
      v134 = OUTLINED_FUNCTION_106_6();
      v117 = v185;
      v135(v134);
      OUTLINED_FUNCTION_142_4();
      v136 = OUTLINED_FUNCTION_40_30();
      v137(v136);
      OUTLINED_FUNCTION_104_10();
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F0, &qword_1D563FF80);
      OUTLINED_FUNCTION_2_19(v138);
      OUTLINED_FUNCTION_101_4();
      v139 = OUTLINED_FUNCTION_79_7();
      sub_1D519F420(v139, v140, v141);
      OUTLINED_FUNCTION_144_2();
      sub_1D5197750(v142);
      goto LABEL_8;
    case 0xEu:
      v112 = v188;
      v117 = v189;
      v25 = v186;
      (*(v188 + 32))(v186, v110, v189);
      OUTLINED_FUNCTION_142_4();
      v118 = OUTLINED_FUNCTION_40_30();
      v119(v118);
      OUTLINED_FUNCTION_104_10();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E8, &qword_1D563FF78);
      OUTLINED_FUNCTION_2_19(v120);
      OUTLINED_FUNCTION_101_4();
      v121 = OUTLINED_FUNCTION_79_7();
      sub_1D519DE80(v121, v122, v123);
      OUTLINED_FUNCTION_144_2();
      sub_1D51978E8(v124);
      goto LABEL_8;
    case 0x10u:
      v165 = OUTLINED_FUNCTION_127_0();
      v144 = v191;
      sub_1D51A1F64(v165, v191);
      v115 = type metadata accessor for TVEpisode;
      sub_1D51A1FBC(v144, v187);
      OUTLINED_FUNCTION_103_10();
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E0, &qword_1D563FF70);
      OUTLINED_FUNCTION_2_19(v166);
      OUTLINED_FUNCTION_99_10();
      v167 = OUTLINED_FUNCTION_78_12();
      sub_1D519C9C4(v167, v168, v169);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197A80(v170);
      goto LABEL_12;
    case 0x13u:
      v171 = OUTLINED_FUNCTION_127_0();
      v144 = v193;
      sub_1D51A1F64(v171, v193);
      v115 = type metadata accessor for UploadedAudio;
      sub_1D51A1FBC(v144, v190);
      OUTLINED_FUNCTION_103_10();
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D8, &qword_1D563FF68);
      OUTLINED_FUNCTION_2_19(v172);
      OUTLINED_FUNCTION_99_10();
      v173 = OUTLINED_FUNCTION_78_12();
      sub_1D519B478(v173, v174, v175);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197C18(v176);
      goto LABEL_12;
    case 0x14u:
      v143 = OUTLINED_FUNCTION_127_0();
      v144 = v194;
      sub_1D51A1F64(v143, v194);
      v115 = type metadata accessor for UploadedVideo;
      sub_1D51A1FBC(v144, v192);
      OUTLINED_FUNCTION_103_10();
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D0, &qword_1D563FF60);
      OUTLINED_FUNCTION_2_19(v145);
      OUTLINED_FUNCTION_99_10();
      v146 = OUTLINED_FUNCTION_78_12();
      sub_1D5199F2C(v146, v147, v148);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197DB0(v149);
LABEL_12:

      sub_1D4E50004(v104, &qword_1EC7EEC40, &unk_1D561C070);
      OUTLINED_FUNCTION_71_13();
      v116 = v144;
LABEL_13:
      sub_1D51A34D0(v116, v115);
      break;
    default:
      OUTLINED_FUNCTION_117_5(&v202);
      v150 = OUTLINED_FUNCTION_106_6();
      v117 = v178;
      v151(v150);
      OUTLINED_FUNCTION_142_4();
      v152 = OUTLINED_FUNCTION_40_30();
      v153(v152);
      OUTLINED_FUNCTION_104_10();
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1408, &unk_1D563FF98);
      OUTLINED_FUNCTION_2_19(v154);
      OUTLINED_FUNCTION_101_4();
      v155 = OUTLINED_FUNCTION_79_7();
      sub_1D51A3528(v155, v156, v157);
      OUTLINED_FUNCTION_144_2();
      sub_1D5197288(v158);
LABEL_8:

      sub_1D4E50004(v21, &qword_1EC7EEC40, &unk_1D561C070);
      OUTLINED_FUNCTION_71_13();
      (*(v112 + 8))(v25, v117);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5196B70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5196BE4();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5196BAC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D5196BF8(&v4);
}

uint64_t sub_1D5196C28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13C8, &unk_1D563FF50);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

uint64_t sub_1D5196D14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5196D88();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5196D50(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D5196D9C(&v4);
}

uint64_t sub_1D5196DB0(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  return sub_1D560C908();
}

uint64_t sub_1D5196E18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_61();
  v17(v16);
  v18 = *a2;
  return a7(v7);
}

uint64_t sub_1D5196EEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13C0, &qword_1D563FF48);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

uint64_t sub_1D5196FD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D519702C();
  *a2 = result;
  return result;
}

uint64_t sub_1D5197004(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1D51970A0();
}

uint64_t sub_1D519702C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D51970A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  return sub_1D560C908();
}

uint64_t sub_1D5197128(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D519719C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13B8, &qword_1D563FF40);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, v13);
  v8(v7);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_128();
  return v11(v10);
}

uint64_t sub_1D5197288(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1408, &unk_1D563FF98);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1410, &qword_1EC7F1408, &unk_1D563FF98);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197420(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1400, &qword_1D563FF90);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1430, &qword_1EC7F1400, &qword_1D563FF90);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D51975B8(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F8, &qword_1D563FF88);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1440, &qword_1EC7F13F8, &qword_1D563FF88);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197750(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F0, &qword_1D563FF80);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1450, &qword_1EC7F13F0, &qword_1D563FF80);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D51978E8(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E8, &qword_1D563FF78);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1458, &qword_1EC7F13E8, &qword_1D563FF78);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197A80(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E0, &qword_1D563FF70);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1460, &qword_1EC7F13E0, &qword_1D563FF70);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197C18(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D8, &qword_1D563FF68);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1470, &qword_1EC7F13D8, &qword_1D563FF68);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197DB0(uint64_t a1)
{
  v2 = v1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D0, &qword_1D563FF60);
  v11[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v11, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1488, &qword_1EC7F13D0, &qword_1D563FF60);
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

  v9 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

void sub_1D5197F48()
{
  OUTLINED_FUNCTION_47();
  v29 = v0;
  v27 = v1;
  v2 = sub_1D560C988();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v30 = sub_1D560C9B8();
  v8 = OUTLINED_FUNCTION_4(v30);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v28 = sub_1D5615738();
  OUTLINED_FUNCTION_40_13();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_40_13();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v31[4] = v27;
  v31[5] = v18;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_62_21();
  v31[2] = v19;
  v31[3] = v29;
  v20 = _Block_copy(v31);

  sub_1D560C9A8();
  v31[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_20();
  sub_1D51AE1F4(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  OUTLINED_FUNCTION_67_19(&qword_1EDD5D060);
  OUTLINED_FUNCTION_135_7();
  v23 = OUTLINED_FUNCTION_146_3();
  MEMORY[0x1DA6EB530](v23);
  _Block_release(v20);

  v24 = *(v5 + 8);
  v25 = OUTLINED_FUNCTION_134_0();
  v26(v25);
  (*(v10 + 8))(v15, v30);
  OUTLINED_FUNCTION_46();
}