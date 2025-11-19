uint64_t sub_1D5016DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D5016C98(v7, a2);
  return sub_1D5616328();
}

uint64_t sub_1D5016E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicLibrarySearchResponse.TopResult.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v74 = v9 - v8;
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v72 = v12;
  v73 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v71 = v16 - v15;
  v17 = sub_1D560EEA8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v77 = v19;
  v78 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = sub_1D5613EF8();
  v26 = OUTLINED_FUNCTION_4(v25);
  v79 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_1D5613AF8();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v42 = sub_1D560E038();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v50 = v49 - v48;
  (*(v45 + 16))(v49 - v48, v2, v42);
  v51 = (*(v45 + 88))(v50, v42);
  if (v51 == *MEMORY[0x1E69751A8])
  {
    v52 = OUTLINED_FUNCTION_2_33();
    v53(v52);
    (*(v36 + 32))(v41, v50, v33);
    Album.siriRepresentation.getter();
    return (*(v36 + 8))(v41, v33);
  }

  if (v51 == *MEMORY[0x1E69751B0])
  {
    v55 = OUTLINED_FUNCTION_2_33();
    v56(v55);
    (*(v79 + 32))(v32, v50, v25);
    Artist.siriRepresentation.getter(a1);
    return (*(v79 + 8))(v32, v25);
  }

  if (v51 == *MEMORY[0x1E6975198])
  {
    v57 = OUTLINED_FUNCTION_2_33();
    v58(v57);
    (*(v77 + 32))(v24, v50, v78);
    MusicVideo.siriRepresentation.getter(a1);
    return (*(v77 + 8))(v24, v78);
  }

  if (v51 == *MEMORY[0x1E69751B8])
  {
    v59 = OUTLINED_FUNCTION_2_33();
    v60(v59);
    v62 = v71;
    v61 = v72;
    v63 = OUTLINED_FUNCTION_3_37();
    v64 = v73;
    v65(v63);
    Playlist.siriRepresentation.getter();
  }

  else
  {
    if (v51 != *MEMORY[0x1E69751A0])
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5681800);
      sub_1D5017424();
      v70 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v70);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v66 = OUTLINED_FUNCTION_2_33();
    v67(v66);
    v62 = v74;
    v61 = v75;
    v68 = OUTLINED_FUNCTION_3_37();
    v64 = v76;
    v69(v68);
    Song.siriRepresentation.getter();
  }

  return (*(v61 + 8))(v62, v64);
}

unint64_t sub_1D5017424()
{
  result = qword_1EC7EDF60;
  if (!qword_1EC7EDF60)
  {
    sub_1D560E038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF60);
  }

  return result;
}

void *sub_1D5017480()
{
  type metadata accessor for MusicSuggestedSongsRequestObserver();
  swift_allocObject();
  result = sub_1D50174BC();
  qword_1EC87BF48 = result;
  return result;
}

void *sub_1D50174BC()
{
  v1 = sub_1D5614D38();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

void sub_1D50174F4()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  v4 = v2;
  if (*(v0 + 24))
  {
    if ((v4 & 1) == 0)
    {
      *(v0 + 32) = v3;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v0 + 32) = v3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1D5017894;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D51FDC68;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
  _Block_release(v7);
  v9 = *(v0 + 24);
  *(v0 + 24) = v8;
}

uint64_t sub_1D5017628()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D5017680();
  }

  return result;
}

void sub_1D5017680()
{
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;

  sub_1D50176C0();
}

void sub_1D50176C0()
{
  v1 = v0;
  if (*(v0 + 32) >= 4)
  {
    v2 = objc_opt_self();
    v3 = *(v0 + 16);
    v4 = sub_1D5614D38();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000042, 0x80000001D56818F0);
    v8 = *(v0 + 32);
    v5 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v5);

    v6 = sub_1D5614D38();

    v7 = sub_1D5614D38();
    [v2 snapshotWithDomain:v3 type:v4 subType:v6 context:v7 triggerThresholdValues:0 events:0 completion:{0, v8, 0, 0xE000000000000000}];
  }

  *(v1 + 32) = 0;
}

uint64_t sub_1D501783C()
{
  sub_1D5017814();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D50178B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D5681980 == a2)
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

uint64_t sub_1D5017984(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_1D50179C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50178B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50179E8(uint64_t a1)
{
  v2 = sub_1D5017DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017A24(uint64_t a1)
{
  v2 = sub_1D5017DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5017A60(uint64_t a1)
{
  v2 = sub_1D5017E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017A9C(uint64_t a1)
{
  v2 = sub_1D5017E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5017AD8(uint64_t a1)
{
  v2 = sub_1D5017E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017B14(uint64_t a1)
{
  v2 = sub_1D5017E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Playlist.Collaboration.InvitationMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF68, &qword_1D5628D90);
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF70, &qword_1D5628D98);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF78, &qword_1D5628DA0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5017DDC();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1D5017E30();
    v29 = v33;
    sub_1D5616018();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1D5017E84();
    sub_1D5616018();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_1D5017DDC()
{
  result = qword_1EC7EDF80;
  if (!qword_1EC7EDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF80);
  }

  return result;
}

unint64_t sub_1D5017E30()
{
  result = qword_1EC7EDF88;
  if (!qword_1EC7EDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF88);
  }

  return result;
}

unint64_t sub_1D5017E84()
{
  result = qword_1EC7EDF90;
  if (!qword_1EC7EDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF90);
  }

  return result;
}

uint64_t Playlist.Collaboration.InvitationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t Playlist.Collaboration.InvitationMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF98, &qword_1D5628DA8);
  OUTLINED_FUNCTION_4(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDFA0, &qword_1D5628DB0);
  OUTLINED_FUNCTION_4(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDFA8, &unk_1D5628DB8);
  OUTLINED_FUNCTION_4(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5017DDC();
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
    *v42 = &type metadata for Playlist.Collaboration.InvitationMode;
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
      sub_1D5017E30();
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
      sub_1D5017E84();
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

unint64_t sub_1D501840C()
{
  result = qword_1EC7EDFB0;
  if (!qword_1EC7EDFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDFB8, &qword_1D5628DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFB0);
  }

  return result;
}

unint64_t sub_1D5018474()
{
  result = qword_1EC7EDFC0;
  if (!qword_1EC7EDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFC0);
  }

  return result;
}

_BYTE *sub_1D50184D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50185D8()
{
  result = qword_1EC7EDFC8;
  if (!qword_1EC7EDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFC8);
  }

  return result;
}

unint64_t sub_1D5018630()
{
  result = qword_1EC7EDFD0;
  if (!qword_1EC7EDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFD0);
  }

  return result;
}

unint64_t sub_1D5018688()
{
  result = qword_1EC7EDFD8;
  if (!qword_1EC7EDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFD8);
  }

  return result;
}

unint64_t sub_1D50186E0()
{
  result = qword_1EC7EDFE0;
  if (!qword_1EC7EDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFE0);
  }

  return result;
}

unint64_t sub_1D5018738()
{
  result = qword_1EC7EDFE8;
  if (!qword_1EC7EDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFE8);
  }

  return result;
}

unint64_t sub_1D5018790()
{
  result = qword_1EC7EDFF0;
  if (!qword_1EC7EDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFF0);
  }

  return result;
}

unint64_t sub_1D50187E8()
{
  result = qword_1EC7EDFF8;
  if (!qword_1EC7EDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFF8);
  }

  return result;
}

uint64_t sub_1D5018840()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE000);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE000);
  v2 = *MEMORY[0x1E69767E0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static SocialProfile.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE000);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v123 = a4;
  v111 = a5;
  v110 = sub_1D5612B88();
  v8 = OUTLINED_FUNCTION_4(v110);
  v124 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v109 = v13 - v12;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D5610088();
  v15 = OUTLINED_FUNCTION_4(v14);
  v115 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v114 = v20 - v19;
  OUTLINED_FUNCTION_70_0();
  v120 = sub_1D560D838();
  v21 = OUTLINED_FUNCTION_4(v120);
  v119 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v106 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE018, &unk_1D5629170);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v104 - v31;
  OUTLINED_FUNCTION_70_0();
  v116 = type metadata accessor for SocialProfilePropertyProvider();
  OUTLINED_FUNCTION_24_0(v116);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v105 = v35 - v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v104 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v104 - v48;
  v108 = sub_1D5612478();
  v50 = OUTLINED_FUNCTION_4(v108);
  v107 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v56 = v55 - v54;

  v121 = a2;
  sub_1D560F7E8();
  v117 = sub_1D5019548();
  v123 = sub_1D5614C68();

  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v14);
  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v14);
  v118 = v56;
  OUTLINED_FUNCTION_0_51();
  sub_1D560D4D8();
  sub_1D4E7661C(v46, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v49, &qword_1EC7EA358, &unk_1D561DF50);
  v112 = a3;
  sub_1D4EC76A8(a3, v125);
  v113 = a1;
  if (!v126)
  {
    sub_1D4E7661C(v125, &qword_1EC7EEC40, &unk_1D561C070);
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
LABEL_8:
    v57 = v39;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_8;
  }

  v57 = v39;
  if (!*(&v128 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v127, &qword_1EC7EA368, &unk_1D5629620);
    v59 = v116;
    goto LABEL_10;
  }

  sub_1D4E48324(&v127, &v130);
  __swift_project_boxed_opaque_existential_1(&v130, v131);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v58 = v122;
  v59 = v116;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
    v60 = v105;
    sub_1D501AB90(v58, v105);
    sub_1D501AAD0(v60, v57);
    v61 = v60 + v59[12];
    v62 = v106;
    sub_1D560D718();
    (*(v119 + 40))(v57 + v59[12], v62, v120);
    v63 = v114;
    sub_1D5612468();
    (*(v115 + 40))(v57 + v59[13], v63, v14);
    v64 = sub_1D5612458();
    v66 = v65;
    sub_1D501AB34(v60);
    v67 = (v57 + v59[14]);
    v68 = v67[1];

    *v67 = v64;
    v67[1] = v66;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v58, 1, 1, v59);
  sub_1D4E7661C(v58, &qword_1EC7EE018, &unk_1D5629170);
  __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_10:
  v69 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v69);
  v70 = v59[10];
  v71 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(v57 + v70, 1, 1, v71);
  (*(v119 + 16))(v57 + v59[12], a1, v120);
  v72 = v57 + v59[13];
  sub_1D5612468();
  v73 = sub_1D5612458();
  v122 = v74;
  sub_1D5614A88();
  v115 = OUTLINED_FUNCTION_6_37();
  v75 = OUTLINED_FUNCTION_6_37();
  v76 = OUTLINED_FUNCTION_6_37();
  v77 = OUTLINED_FUNCTION_6_37();
  v78 = (v57 + v59[5]);
  *v78 = 0;
  v78[1] = 0;
  *(v57 + v59[6]) = 2;
  *(v57 + v59[7]) = 2;
  *(v57 + v59[8]) = 2;
  v79 = (v57 + v59[9]);
  *v79 = 0;
  v79[1] = 0;
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v80 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v103 = sub_1D5615E18();

    v80 = v103;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v57 + v59[11]) = v80;
  v81 = (v57 + v59[14]);
  v82 = v122;
  *v81 = v73;
  v81[1] = v82;
  *(v57 + v59[15]) = v115;
  *(v57 + v59[16]) = v75;
  *(v57 + v59[17]) = v76;
  *(v57 + v59[18]) = v77;
LABEL_15:
  swift_getKeyPath();
  LOBYTE(v130) = 0;
  v83 = *MEMORY[0x1E6976668];
  v84 = v124;
  v85 = *(v124 + 104);
  v115 = v124 + 104;
  v86 = v109;
  v87 = v110;
  v85(v109, v83, v110);
  v106 = sub_1D501AF34(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider);
  sub_1D5610D98();

  v88 = *(v84 + 8);
  v89 = OUTLINED_FUNCTION_0_33();
  v88(v89);
  v124 = v84 + 8;
  swift_getKeyPath();
  LOBYTE(v130) = 1;
  v90 = *MEMORY[0x1E6976670];
  v122 = v85;
  v85(v86, v90, v87);
  OUTLINED_FUNCTION_3_38();
  sub_1D5610D68();

  v91 = OUTLINED_FUNCTION_0_33();
  v88(v91);
  swift_getKeyPath();
  LOBYTE(v130) = 2;
  LODWORD(v114) = v90;
  v85(v86, v90, v87);
  v92 = v106;
  OUTLINED_FUNCTION_19_27();

  v93 = OUTLINED_FUNCTION_0_33();
  v88(v93);
  swift_getKeyPath();
  LOBYTE(v130) = 3;
  (v122)(v86, v90, v87);
  OUTLINED_FUNCTION_19_27();

  v94 = OUTLINED_FUNCTION_0_33();
  v88(v94);
  swift_getKeyPath();
  v95 = OUTLINED_FUNCTION_12_31(4);
  v96(v95);
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_19_27();

  v97 = OUTLINED_FUNCTION_0_33();
  v88(v97);
  swift_getKeyPath();
  v98 = OUTLINED_FUNCTION_12_31(5);
  v99(v98);
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_19_27();

  v100 = OUTLINED_FUNCTION_0_33();
  v88(v100);
  v131 = v116;
  v132 = v92;
  v101 = __swift_allocate_boxed_opaque_existential_0(&v130);
  sub_1D501AAD0(v57, v101);
  SocialProfile.init(propertyProvider:)(&v130, v111);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v112, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v119 + 8))(v113, v120);
  (*(v107 + 8))(v118, v108);
  return sub_1D501AB34(v57);
}

unint64_t sub_1D5019548()
{
  result = qword_1EC7EE020;
  if (!qword_1EC7EE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE020);
  }

  return result;
}

uint64_t SocialProfile.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - v4;
  sub_1D4ECCADC();
  v15 = sub_1D5614BD8();
  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v6 = sub_1D56140F8();
  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile);
  sub_1D501AF34(&qword_1EC7EE028, type metadata accessor for SocialProfile);
  OUTLINED_FUNCTION_11_34();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E7661C(v5, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v7 + 8))(v5, v6);
  }

  sub_1D4EC8650(&v13, 0);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34();
  if (!*(&v13 + 1))
  {
    *&v14 = 0;
  }

  v8 = OUTLINED_FUNCTION_17_27(*(&v13 + 1));
  sub_1D4EC8650(v8, 1);
  if (qword_1EDD53F88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34();
  v9 = OUTLINED_FUNCTION_14_28();
  sub_1D4EC8650(v9, 3);
  if (qword_1EDD53FD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34();
  v10 = OUTLINED_FUNCTION_14_28();
  sub_1D4EC8650(v10, 4);
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34();
  if (!*(&v13 + 1))
  {
    *&v14 = 0;
  }

  v11 = OUTLINED_FUNCTION_17_27(*(&v13 + 1));
  sub_1D4EC8650(v11, 5);
  return v15;
}

uint64_t sub_1D5019928()
{
  v1 = sub_1D5614118();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v24 = sub_1D501AF34(&qword_1EDD5D238, MEMORY[0x1E6976FC8]);
  v8 = sub_1D5614BD8();
  v9 = *MEMORY[0x1E6976FA8];
  v25 = v2[13];
  v25(v7, v9, v1);
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile);
  sub_1D501AF34(&qword_1EC7EE028, type metadata accessor for SocialProfile);
  v10 = MEMORY[0x1E69E6158];
  v26 = v0;
  sub_1D560EC28();
  v28 = v2;
  if (*(&v31 + 1))
  {
    *(&v32 + 1) = v10;
    sub_1D4E519A8(&v31, v30);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v8;
    sub_1D4F137BC();
    v8 = v29;
    v11 = v2[1];
    v11(v7, v1);
  }

  else
  {
    sub_1D4F0E0D0();
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = v8;
      v15 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
      sub_1D5615D78();
      v8 = *&v30[0];
      v16 = v2 + 1;
      v11 = v2[1];
      v11((*(*&v30[0] + 48) + v16[8] * v14), v1);
      sub_1D4E519A8((*(v8 + 56) + 32 * v14), &v31);
      sub_1D5615D98();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v11 = v2[1];
    }

    v11(v7, v1);
    sub_1D4E7661C(&v31, &qword_1EC7E9F98, &qword_1D561C420);
  }

  v17 = v27;
  v25(v27, *MEMORY[0x1E6976FB0], v1);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  v18 = MEMORY[0x1E69E6158];
  sub_1D560EC28();
  if (*(&v31 + 1))
  {
    *(&v32 + 1) = v18;
    sub_1D4E519A8(&v31, v30);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v8;
    sub_1D4F137BC();
    v8 = v29;
    v11(v17, v1);
  }

  else
  {
    sub_1D4F0E0D0();
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = v8;
      v22 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
      sub_1D5615D78();
      v8 = *&v30[0];
      v11((*(*&v30[0] + 48) + v28[9] * v21), v1);
      sub_1D4E519A8((*(v8 + 56) + 32 * v21), &v31);
      sub_1D5615D98();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v11(v17, v1);
    sub_1D4E7661C(&v31, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v8;
}

id sub_1D5019E78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v117 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v106 - v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D560D838();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v119 = (v17 - v18);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v118 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v116 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v115 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v112 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  v109 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v107 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v108 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  v110 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v111 = v36;
  OUTLINED_FUNCTION_23();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v106 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v106 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v106 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v106 - v50;
  v121 = a1;
  v120 = sub_1D5019928();
  type metadata accessor for SocialProfile();
  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile);
  OUTLINED_FUNCTION_81_0();
  v125 = v1;
  sub_1D560EC98();
  sub_1D560D7A8();
  v52 = *(v14 + 8);
  v124 = v11;
  v52(v45, v11);
  v53 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v51, 1, v53) == 1)
  {
    sub_1D4E7661C(v51, &unk_1EC7F1970, &qword_1D561F4A0);
    v123 = 0;
  }

  else
  {
    v123 = sub_1D517FFC8();
    OUTLINED_FUNCTION_24_0(v53);
    (*(v54 + 8))(v51, v53);
  }

  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D808();
  v56 = v55;
  v57 = v124;
  v52(v43, v124);
  if (v56)
  {
    v122 = sub_1D5614D38();
  }

  else
  {
    v122 = 0;
  }

  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D688();
  v59 = v58;
  v52(v40, v57);
  if (v59)
  {
    v114 = sub_1D5614D38();
  }

  else
  {
    v114 = 0;
  }

  v60 = v111;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D768();
  v62 = v61;
  v52(v60, v57);
  if (v62)
  {
    v111 = sub_1D5614D38();
  }

  else
  {
    v111 = 0;
  }

  v63 = v110;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D648();
  v64 = OUTLINED_FUNCTION_2_34();
  (v52)(v64);
  if (v63)
  {
    v110 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v110 = 0;
  }

  v65 = v108;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D628();
  v66 = OUTLINED_FUNCTION_2_34();
  (v52)(v66);
  if (v65)
  {
    v108 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v108 = 0;
  }

  v67 = v107;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D568();
  v68 = OUTLINED_FUNCTION_2_34();
  (v52)(v68);
  if (v67)
  {
    v107 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v107 = 0;
  }

  v69 = v109;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  v70 = v113;
  sub_1D560D5C8();
  v52(v69, v57);
  v71 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v70, 1, v71) == 1)
  {
    sub_1D4E7661C(v70, &unk_1EC7EBF20, &unk_1D561F530);
    v109 = 0;
  }

  else
  {
    v109 = sub_1D5115F20();
    OUTLINED_FUNCTION_24_0(v71);
    (*(v72 + 8))(v70, v71);
  }

  v73 = v112;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D5A8();
  v74 = OUTLINED_FUNCTION_2_34();
  (v52)(v74);
  if (v73)
  {
    v113 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v113 = 0;
  }

  v75 = v115;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  v76 = v117;
  sub_1D560D6C8();
  v52(v75, v57);
  if (__swift_getEnumTagSinglePayload(v76, 1, v71) == 1)
  {
    sub_1D4E7661C(v76, &unk_1EC7EBF20, &unk_1D561F530);
    v77 = 0;
  }

  else
  {
    v77 = sub_1D5115F20();
    OUTLINED_FUNCTION_24_0(v71);
    (*(v78 + 8))(v76, v71);
  }

  v79 = v116;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D728();
  v80 = OUTLINED_FUNCTION_16_27();
  (v52)(v80);
  if (v79)
  {
    v81 = sub_1D5614D38();
  }

  else
  {
    v81 = 0;
  }

  v82 = v118;
  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D548();
  v83 = OUTLINED_FUNCTION_16_27();
  (v52)(v83);
  if (v82)
  {
    v84 = sub_1D5614D38();
  }

  else
  {
    v84 = 0;
  }

  v85 = objc_opt_self();
  v86 = v119;
  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  v87 = sub_1D560D7C8();
  v52(v86, v124);
  sub_1D4F40C50(v87);
  v89 = v88;

  v90 = sub_1D51594D4();
  v105 = v85;
  v104 = v89;
  v103 = v81;
  *(&v102 + 1) = v77;
  v91 = v81;
  v92 = v113;
  *&v102 = v113;
  v93 = v114;
  v95 = v110;
  v94 = v111;
  v97 = v108;
  v96 = v109;
  v98 = v77;
  v99 = v107;
  v125 = sub_1D501AE58(v123, v122, v114, v111, v110, v108, v107, v109, v102, v103, v84, v104, 5, v90, v105);

  sub_1D5614118();
  sub_1D501AF34(&qword_1EDD5D228, MEMORY[0x1E6976FC8]);
  sub_1D5614BF8();

  v100 = objc_allocWithZone(MEMORY[0x1E6977640]);
  return sub_1D4ECA8B8(v125, 5);
}

uint64_t SocialProfile.LegacyModelSocialProfilePropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t SocialProfile.LegacyModelSocialProfilePropertyKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D501A8EC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SocialProfile.LegacyModelSocialProfilePropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D501A8F8@<X0>(unint64_t *a1@<X8>)
{
  result = SocialProfile.LegacyModelSocialProfilePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SocialProfile.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767E0];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D501A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D501AF34(&qword_1EC7EE048, type metadata accessor for SocialProfile);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D501AA48()
{
  sub_1D501AF34(&qword_1EC7EE040, type metadata accessor for SocialProfile);

  return sub_1D56132F8();
}

uint64_t sub_1D501AAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfilePropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D501AB34(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfilePropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D501AB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfilePropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D501ABF8()
{
  result = qword_1EC7EE030;
  if (!qword_1EC7EE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE030);
  }

  return result;
}

unint64_t sub_1D501AC54()
{
  result = qword_1EC7EE038;
  if (!qword_1EC7EE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE038);
  }

  return result;
}

uint64_t _s35LegacyModelSocialProfilePropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s35LegacyModelSocialProfilePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1D501AE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_1D5615158();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_1D501AF34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_35()
{

  return sub_1D5614D38();
}

uint64_t type metadata accessor for CloudVideoOffer()
{
  result = qword_1EDD56FE8;
  if (!qword_1EDD56FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D501B008()
{
  sub_1D4E518A0(319, &qword_1EDD52708);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D501B1CC(319, &qword_1EDD5CF48, MEMORY[0x1E6969530]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D501B1CC(319, &qword_1EDD533F0, MEMORY[0x1E6975710]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52730);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v10 > 0x3F)
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

void sub_1D501B1CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D501B268()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE068, &qword_1D56294F8);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v52 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for VideoOffer();
  v11 = OUTLINED_FUNCTION_4(v10);
  v45 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v51 = v16 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4(v53);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v23 = *(v1 + 16);
  if (v23)
  {
    v24 = *(v20 + 16);
    v25 = *(v20 + 80);
    OUTLINED_FUNCTION_43_3();
    v27 = v1 + v26;
    v49 = *(v28 + 56);
    v50 = v29;
    v48 = (v28 - 8);
    v30 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    v46 = v28;
    v47 = v9;
    do
    {
      v50(v22, v27, v53);
      sub_1D501DA74(v52);
      (*v48)(v22, v53);
      v31 = v52;
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v10);
      v32 = v31;
      v33 = v47;
      sub_1D4F39A1C(v32, v47, &qword_1EC7EE068, &qword_1D56294F8);
      OUTLINED_FUNCTION_57(v33, 1, v10);
      if (v34)
      {
        sub_1D4E50004(v33, &qword_1EC7EE068, &qword_1D56294F8);
      }

      else
      {
        sub_1D501EDC0(v33, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = *(v30 + 16);
          sub_1D4EFFD28();
          v30 = v41;
        }

        v36 = *(v30 + 16);
        if (v36 >= *(v30 + 24) >> 1)
        {
          sub_1D4EFFD28();
          v30 = v42;
        }

        *(v30 + 16) = v36 + 1;
        v37 = *(v45 + 80);
        OUTLINED_FUNCTION_43_3();
        sub_1D501EDC0(v51, v30 + v38 + *(v39 + 72) * v36);
        v10 = v44;
      }

      v27 += v49;
      --v23;
    }

    while (v23);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D501B598()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = type metadata accessor for VideoOffer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4(v25);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *(v1 + 16);
  if (v15)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D4F03E4C();
    v16 = v26;
    v17 = *(v3 + 80);
    OUTLINED_FUNCTION_43_3();
    v19 = v1 + v18;
    v24 = *(v3 + 72);
    do
    {
      sub_1D501ED0C(v19, v7, type metadata accessor for VideoOffer);
      sub_1D501E524();
      sub_1D501ED68(v7, type metadata accessor for VideoOffer);
      v26 = v16;
      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_1D4F03E4C();
        v16 = v26;
      }

      *(v16 + 16) = v20 + 1;
      v21 = *(v9 + 80);
      OUTLINED_FUNCTION_43_3();
      (*(v9 + 32))(v16 + v22 + *(v9 + 72) * v20, v14, v25);
      v19 += v24;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D501B7A4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v162 = sub_1D560F548();
  v4 = OUTLINED_FUNCTION_4(v162);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v159 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v160 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC60, &unk_1D56294E0);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v161 = v20;
  v21 = sub_1D560C328();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v156 - v38;
  v40 = *(v1 + 8);
  if (*(v3 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v3 != *v1)
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_27;
    }
  }

  v156 = v6;
  v41 = type metadata accessor for CloudVideoOffer();
  v163 = v1;
  v42 = *(v41 + 20);
  v43 = *(v34 + 48);
  v157 = v41;
  v158 = v3;
  sub_1D4F39AB0(v3 + v42, v39, &qword_1EC7EA3B8, &unk_1D561E370);
  v44 = v163 + v42;
  v45 = v163;
  sub_1D4F39AB0(v44, &v39[v43], &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v39, 1, v21);
  if (v50)
  {
    OUTLINED_FUNCTION_57(&v39[v43], 1, v21);
    if (v50)
    {
      sub_1D4E50004(v39, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_17;
    }

LABEL_15:
    v54 = &qword_1EC7EB578;
    v55 = &unk_1D5644D10;
    v56 = v39;
LABEL_26:
    sub_1D4E50004(v56, v54, v55);
    goto LABEL_27;
  }

  v46 = OUTLINED_FUNCTION_134_0();
  sub_1D4F39AB0(v46, v47, v48, v49);
  OUTLINED_FUNCTION_57(&v39[v43], 1, v21);
  if (v50)
  {
    v51 = *(v24 + 8);
    v52 = OUTLINED_FUNCTION_71();
    v53(v52);
    goto LABEL_15;
  }

  (*(v24 + 32))(v29, &v39[v43], v21);
  OUTLINED_FUNCTION_3_39();
  sub_1D501EE24(v57, v58);
  v59 = sub_1D5614D18();
  v60 = *(v24 + 8);
  v60(v29, v21);
  v61 = OUTLINED_FUNCTION_71();
  (v60)(v61);
  sub_1D4E50004(v39, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v63 = v157;
  v62 = v158;
  v64 = v157[6];
  v65 = *(v16 + 48);
  v66 = v161;
  sub_1D4F39AB0(v158 + v64, v161, &qword_1EC7EAC58, &unk_1D561DA70);
  sub_1D4F39AB0(v45 + v64, v66 + v65, &qword_1EC7EAC58, &unk_1D561DA70);
  v67 = v162;
  OUTLINED_FUNCTION_57(v66, 1, v162);
  if (!v50)
  {
    v68 = v160;
    sub_1D4F39AB0(v66, v160, &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_57(v66 + v65, 1, v67);
    if (!v69)
    {
      v70 = v156;
      v71 = v66 + v65;
      v72 = v159;
      (*(v156 + 32))(v159, v71, v67);
      OUTLINED_FUNCTION_2_35();
      sub_1D501EE24(v73, v74);
      v75 = sub_1D5614D18();
      v76 = *(v70 + 8);
      v76(v72, v67);
      v76(v68, v67);
      sub_1D4E50004(v66, &qword_1EC7EAC58, &unk_1D561DA70);
      if ((v75 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    (*(v156 + 8))(v68, v67);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_57(v66 + v65, 1, v67);
  if (!v50)
  {
LABEL_25:
    v54 = &qword_1EC7EAC60;
    v55 = &unk_1D56294E0;
    v56 = v66;
    goto LABEL_26;
  }

  sub_1D4E50004(v66, &qword_1EC7EAC58, &unk_1D561DA70);
LABEL_29:
  OUTLINED_FUNCTION_6_6(v63[7]);
  if (v78)
  {
    if (!v77)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v79)
    {
      goto LABEL_27;
    }
  }

  v80 = v63[8];
  OUTLINED_FUNCTION_27_20();
  if (v83)
  {
    if (!v81)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v82);
    v86 = v50 && v84 == v85;
    if (!v86 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v81)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6(v63[9]);
  if (v88)
  {
    if (!v87)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v89)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_6_6(v63[10]);
  if (v91)
  {
    if (!v90)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v92)
    {
      goto LABEL_27;
    }
  }

  v93 = v63[11];
  v94 = *(v62 + v93);
  v95 = *(v45 + v93);
  if (v94 == 2)
  {
    if (v95 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v95 == 2 || ((v95 ^ v94) & 1) != 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6(v63[12]);
  if (v97)
  {
    if (!v96)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v98)
    {
      goto LABEL_27;
    }
  }

  v99 = v63[13];
  OUTLINED_FUNCTION_27_20();
  if (v102)
  {
    if (!v100)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v101);
    v105 = v50 && v103 == v104;
    if (!v105 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v100)
  {
    goto LABEL_27;
  }

  v106 = v63[14];
  OUTLINED_FUNCTION_27_20();
  if (v109)
  {
    if (!v107)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v108);
    v112 = v50 && v110 == v111;
    if (!v112 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v107)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6(v63[15]);
  if (v114)
  {
    if (!v113)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v115)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_6_6(v63[16]);
  if (v117)
  {
    if (!v116)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v118)
    {
      goto LABEL_27;
    }
  }

  v119 = v157[17];
  v120 = *(v158 + v119 + 8);
  v121 = *(v163 + v119 + 8);
  if (v120)
  {
    if (!v121)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v122)
    {
      goto LABEL_27;
    }
  }

  v123 = v157[18];
  OUTLINED_FUNCTION_38_1(v158);
  if (v126)
  {
    if (!v124)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v125);
    v129 = v50 && v127 == v128;
    if (!v129 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v124)
  {
    goto LABEL_27;
  }

  v130 = v157[19];
  v131 = *(v158 + v130);
  v132 = *(v163 + v130);
  if (v131 == 2)
  {
    v133 = v163;
    v135 = v157;
    v134 = v158;
    if (v132 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v132 == 2)
    {
      goto LABEL_27;
    }

    v136 = v132 ^ v131;
    v133 = v163;
    v135 = v157;
    v134 = v158;
    if (v136)
    {
      goto LABEL_27;
    }
  }

  v137 = v135[20];
  v138 = *(v134 + v137);
  v139 = *(v133 + v137);
  if (v138 == 2)
  {
    v140 = v163;
    v141 = v157;
    v142 = v158;
    if (v139 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v139 == 2)
    {
      goto LABEL_27;
    }

    v143 = v139 ^ v138;
    v140 = v163;
    v141 = v157;
    v142 = v158;
    if (v143)
    {
      goto LABEL_27;
    }
  }

  v144 = v141[21];
  v145 = *(v140 + v144 + 8);
  if (*(v142 + v144 + 8))
  {
    if (!v145)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0((v142 + v144));
    v148 = v50 && v146 == v147;
    if (!v148 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v145)
  {
    goto LABEL_27;
  }

  v149 = v157[22];
  OUTLINED_FUNCTION_38_1(v158);
  if (v152 && v150)
  {
    OUTLINED_FUNCTION_31_0(v151);
    if (v50)
    {
      v155 = v153 == v154;
    }

    else
    {
      v155 = 0;
    }

    if (!v155)
    {
      sub_1D5616168();
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D501C00C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001D56819C0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E696769726FLL && a2 == 0xED00006563697250;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001D56819E0 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x80000001D5681A00 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x726564726F657270 && a2 == 0xEC000000796C6E4FLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x726F466563697270 && a2 == 0xEE0064657474616DLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001D5681A20 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001D5681A40 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x64496C61746E6572 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x80000001D5681A60 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x664F6E6F73616573 && a2 == 0xEF646E694B726566;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E4F6E6F73616573 && a2 == 0xEA0000000000796CLL;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7550646572616873 && a2 == 0xEE00657361686372;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000018 && 0x80000001D5681A80 == a2;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1D501C5C0(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6C616E696769726FLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x72656E776FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0x726564726F657270;
      break;
    case 8:
      result = 0x6563697270;
      break;
    case 9:
      result = 0x726F466563697270;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0x64496C61746E6572;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x664F6E6F73616573;
      break;
    case 15:
      result = 0x6E4F6E6F73616573;
      break;
    case 16:
      result = 0x7550646572616873;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x746E6169726176;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1D501C808(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE058, &qword_1D56294D8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D501DA20();
  sub_1D56163D8();
  v14 = *v3;
  v15 = *(v3 + 8);
  v28 = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616058();
  if (!v2)
  {
    v16 = type metadata accessor for CloudVideoOffer();
    v17 = v16[5];
    v28 = 1;
    sub_1D560C328();
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v18, v19);
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v20 = v16[6];
    v28 = 2;
    sub_1D560F548();
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v21, v22);
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_154(v16[7]);
    OUTLINED_FUNCTION_1_48(3);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v16[8]);
    OUTLINED_FUNCTION_1_48(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v16[9]);
    OUTLINED_FUNCTION_1_48(5);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v16[10]);
    OUTLINED_FUNCTION_1_48(6);
    sub_1D5616058();
    v23 = *(v3 + v16[11]);
    v28 = 7;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_154(v16[12]);
    OUTLINED_FUNCTION_1_48(8);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v16[13]);
    OUTLINED_FUNCTION_1_48(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v16[14]);
    OUTLINED_FUNCTION_1_48(10);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v16[15]);
    OUTLINED_FUNCTION_1_48(11);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v16[16]);
    OUTLINED_FUNCTION_1_48(12);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v16[17]);
    OUTLINED_FUNCTION_1_48(13);
    sub_1D5616058();
    OUTLINED_FUNCTION_35_5(v16[18]);
    OUTLINED_FUNCTION_1_48(14);
    sub_1D5616028();
    v24 = *(v3 + v16[19]);
    v28 = 15;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v25 = *(v3 + v16[20]);
    v28 = 16;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v16[21]);
    OUTLINED_FUNCTION_1_48(17);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v16[22]);
    OUTLINED_FUNCTION_1_48(18);
    sub_1D5616028();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1D501CBD0()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D560F548();
  v3 = OUTLINED_FUNCTION_4(v2);
  v56 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v55 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = sub_1D560C328();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_38_2();
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = *v0;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v28);
  }

  v29 = type metadata accessor for CloudVideoOffer();
  sub_1D4F39AB0(v0 + v29[5], v1, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v1, 1, v15);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v18 + 32))(v23, v1, v15);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v31, v32);
    sub_1D5614CB8();
    (*(v18 + 8))(v23, v15);
  }

  sub_1D4F39AB0(v0 + v29[6], v14, &qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_57(v14, 1, v2);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v34 = v55;
    v33 = v56;
    (*(v56 + 32))(v55, v14, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v35, v36);
    sub_1D5614CB8();
    (*(v33 + 8))(v34, v2);
  }

  OUTLINED_FUNCTION_157(v29[7]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v37);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v38 = v2;
    }

    else
    {
      v38 = 0;
    }

    MEMORY[0x1DA6EC100](v38);
  }

  OUTLINED_FUNCTION_37_17(v29[8]);
  if (v2)
  {
    OUTLINED_FUNCTION_30_0(v39);
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157(v29[9]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v40);
    MEMORY[0x1DA6EC0D0](v2);
  }

  OUTLINED_FUNCTION_157(v29[10]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v41);
    MEMORY[0x1DA6EC0D0](v2);
  }

  v42 = *(v0 + v29[11]);
  if (v42 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_157(v29[12]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v43);
    if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    MEMORY[0x1DA6EC100](v44);
  }

  OUTLINED_FUNCTION_37_17(v29[13]);
  if (v42)
  {
    OUTLINED_FUNCTION_30_0(v45);
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_37_17(v29[14]);
  if (v42)
  {
    OUTLINED_FUNCTION_30_0(v46);
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157(v29[15]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v47);
    MEMORY[0x1DA6EC0D0](v42);
  }

  OUTLINED_FUNCTION_157(v29[16]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v48);
    MEMORY[0x1DA6EC0D0](v42);
  }

  OUTLINED_FUNCTION_157(v29[17]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v49);
    MEMORY[0x1DA6EC0D0](v42);
  }

  OUTLINED_FUNCTION_37_17(v29[18]);
  if (v42)
  {
    OUTLINED_FUNCTION_30_0(v50);
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v29[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v51 = *(v0 + v29[20]);
  if (v51 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_37_17(v29[21]);
  if (v51)
  {
    OUTLINED_FUNCTION_30_0(v52);
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v53 = (v0 + v29[22]);
  if (v53[1])
  {
    v54 = *v53;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D501D108()
{
  sub_1D56162D8();
  sub_1D501CBD0();
  return sub_1D5616328();
}

uint64_t sub_1D501D148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE050, &qword_1D56294D0);
  OUTLINED_FUNCTION_4(v73);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v76 = type metadata accessor for CloudVideoOffer();
  v19 = OUTLINED_FUNCTION_14(v76);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v74 = a1;
  v75 = (v23 - v22);
  v25 = a1[3];
  v24 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D501DA20();
  sub_1D5616398();
  if (!v2)
  {
    v72 = a2;
    v77 = 0;
    v27 = sub_1D5615F68();
    v29 = v75;
    *v75 = v27;
    *(v29 + 8) = v30 & 1;
    sub_1D560C328();
    v77 = 1;
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v31, v32);
    sub_1D5615F78();
    v33 = v76;
    sub_1D4F39A1C(v15, v29 + v76[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D560F548();
    v77 = 2;
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v34, v35);
    sub_1D5615F78();
    sub_1D4F39A1C(v3, v29 + v33[6], &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_0_52(3);
    v36 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v36, v37, v29 + v33[7]);
    OUTLINED_FUNCTION_0_52(4);
    v38 = sub_1D5615F38();
    v39 = (v29 + v33[8]);
    *v39 = v38;
    v39[1] = v40;
    OUTLINED_FUNCTION_0_52(5);
    v41 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v41, v42, v29 + v33[9]);
    OUTLINED_FUNCTION_0_52(6);
    v43 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v43, v44, v29 + v33[10]);
    OUTLINED_FUNCTION_0_52(7);
    *(v29 + v33[11]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(8);
    v45 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v45, v46, v29 + v33[12]);
    OUTLINED_FUNCTION_0_52(9);
    v47 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v47, v48, v76[13]);
    OUTLINED_FUNCTION_0_52(10);
    v49 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v49, v50, v76[14]);
    OUTLINED_FUNCTION_0_52(11);
    v51 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v51, v52, v75 + v76[15]);
    OUTLINED_FUNCTION_0_52(12);
    v53 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v53, v54, v75 + v76[16]);
    OUTLINED_FUNCTION_0_52(13);
    v55 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v55, v56, v75 + v76[17]);
    OUTLINED_FUNCTION_0_52(14);
    v57 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v57, v58, v76[18]);
    OUTLINED_FUNCTION_0_52(15);
    *(v75 + v76[19]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(16);
    *(v75 + v76[20]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(17);
    v59 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v59, v60, v76[21]);
    OUTLINED_FUNCTION_0_52(18);
    v61 = sub_1D5615F38();
    v63 = v62;
    v64 = OUTLINED_FUNCTION_14_29();
    v65(v64);
    v66 = v75;
    v67 = (v75 + v76[22]);
    *v67 = v61;
    v67[1] = v63;
    sub_1D501ED0C(v66, v72, type metadata accessor for CloudVideoOffer);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v68 = OUTLINED_FUNCTION_71();
    return sub_1D501ED68(v68, v69);
  }

  OUTLINED_FUNCTION_16_28();
  v28 = v76;
  result = __swift_destroy_boxed_opaque_existential_1(v74);
  if (v25)
  {
    result = OUTLINED_FUNCTION_46_4(v28[13]);
    if ((v24 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v24)
  {
LABEL_5:
    if (!v26)
    {
      return result;
    }

    return OUTLINED_FUNCTION_46_4(v28[18]);
  }

  result = OUTLINED_FUNCTION_46_4(v28[14]);
  if (v26)
  {
    return OUTLINED_FUNCTION_46_4(v28[18]);
  }

  return result;
}

uint64_t sub_1D501D8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D501C00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D501D908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D501C5B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D501D930(uint64_t a1)
{
  v2 = sub_1D501DA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D501D96C(uint64_t a1)
{
  v2 = sub_1D501DA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D501D9E4()
{
  sub_1D56162D8();
  sub_1D501CBD0();
  return sub_1D5616328();
}

unint64_t sub_1D501DA20()
{
  result = qword_1EDD57018[0];
  if (!qword_1EDD57018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD57018);
  }

  return result;
}

void sub_1D501DA74(double *a1@<X8>)
{
  v172 = a1;
  v156 = sub_1D5611C78();
  v1 = OUTLINED_FUNCTION_4(v156);
  v155 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v154 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v174 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v173 = v16;
  v17 = type metadata accessor for CloudVideoOffer();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v171 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v170 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v169 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  v167 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v166 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v165 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v164 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  v163 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v162 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  v161 = v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  v160 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v159 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  v158 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  v157 = v47;
  OUTLINED_FUNCTION_23();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = v145 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = v145 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = v145 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = v145 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v62 = v145 - v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  sub_1D5610708();
  v63 = &v62[v17[22]];
  v64 = *(v63 + 1);
  v168 = *v63;

  OUTLINED_FUNCTION_5_33();
  sub_1D501ED68(v62, v65);
  if (v64)
  {
    v156 = v64;
    sub_1D5610708();
    v66 = *v60;
    v67 = v60[8];
    OUTLINED_FUNCTION_5_33();
    sub_1D501ED68(v60, v68);
    v69 = 0.0;
    v70 = 0.0;
    LODWORD(v155) = v67;
    if ((v67 & 1) == 0)
    {
      v70 = v66 / 1000.0;
    }

    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    sub_1D4F39AB0(&v57[v17[5]], v173, &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D501ED68(v57, type metadata accessor for CloudVideoOffer);
    sub_1D5610708();
    sub_1D4F39AB0(&v54[v17[6]], v174, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D501ED68(v54, type metadata accessor for CloudVideoOffer);
    sub_1D5610708();
    v71 = &v51[v17[7]];
    v154 = *v71;
    v153 = v71[8];
    sub_1D501ED68(v51, type metadata accessor for CloudVideoOffer);
    v72 = v157;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v73 = (v72 + v17[8]);
    v74 = v73[1];
    v151 = *v73;
    v152 = v74;

    sub_1D501ED68(v72, type metadata accessor for CloudVideoOffer);
    v75 = v158;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v76 = v75 + v17[9];
    v157 = *v76;
    v150 = *(v76 + 8);
    sub_1D501ED68(v75, type metadata accessor for CloudVideoOffer);
    v77 = v159;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v78 = v77 + v17[10];
    v79 = *v78;
    v80 = *(v78 + 8);
    sub_1D501ED68(v77, type metadata accessor for CloudVideoOffer);
    LODWORD(v159) = v80;
    if ((v80 & 1) == 0)
    {
      v69 = v79 / 1000.0;
    }

    v81 = v160;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    LODWORD(v158) = *(v81 + v17[11]);
    sub_1D501ED68(v81, type metadata accessor for CloudVideoOffer);
    v82 = v161;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v83 = v82 + v17[12];
    v160 = *v83;
    v149 = *(v83 + 8);
    v84 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v84, v85);
    v86 = v162;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v87 = (v86 + v17[13]);
    v88 = v87[1];
    v148 = *v87;
    v161 = v88;

    v89 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v89, v90);
    v91 = v163;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v92 = (v91 + v17[14]);
    v93 = v92[1];
    v147 = *v92;
    v162 = v93;

    v94 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v94, v95);
    v96 = v164;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v97 = v96 + v17[15];
    v98 = *v97;
    v99 = *(v97 + 8);
    v100 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v100, v101);
    v102 = 0.0;
    LODWORD(v164) = v99;
    if ((v99 & 1) == 0)
    {
      v102 = v98 / 1000.0;
    }

    v103 = v165;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v104 = v103 + v17[16];
    v105 = *v104;
    v106 = *(v104 + 8);
    OUTLINED_FUNCTION_5_33();
    sub_1D501ED68(v103, v107);
    if (v106)
    {
      v165 = 0;
      v163 = 0;
    }

    else
    {
      v175 = v105;
      sub_1D56160F8();
      v165 = sub_1D560EED8();
      v163 = v112;
    }

    v113 = v166;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v114 = v113 + v17[17];
    v146 = *v114;
    v145[1] = *(v114 + 8);
    sub_1D501ED68(v113, type metadata accessor for CloudVideoOffer);
    v115 = v167;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v116 = (v115 + v17[18]);
    v117 = v116[1];
    v166 = *v116;

    sub_1D501ED68(v115, type metadata accessor for CloudVideoOffer);
    v118 = v169;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    LODWORD(v167) = *(v118 + v17[19]);
    sub_1D501ED68(v118, type metadata accessor for CloudVideoOffer);
    v119 = v170;
    sub_1D5610708();
    LOBYTE(v118) = *(v119 + v17[20]);
    sub_1D501ED68(v119, type metadata accessor for CloudVideoOffer);
    v120 = v171;
    sub_1D5610708();
    v121 = (v120 + v17[21]);
    v122 = *v121;
    v123 = v121[1];

    sub_1D501ED68(v120, type metadata accessor for CloudVideoOffer);
    v124 = sub_1D5610718();
    v125 = v172;
    *v172 = v70;
    *(v125 + 8) = v155;
    v126 = type metadata accessor for VideoOffer();
    sub_1D4F39A1C(v173, v125 + v126[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F39A1C(v174, v125 + v126[6], &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_34_19((v125 + v126[7]));
    OUTLINED_FUNCTION_39_13(v127);
    v128 = (v125 + v126[8]);
    v129 = v152;
    *v128 = v151;
    v128[1] = v129;
    OUTLINED_FUNCTION_34_19((v125 + v126[9]));
    OUTLINED_FUNCTION_39_13(v130);
    v131 = (v125 + v126[10]);
    *v131 = v69;
    *(v131 + 8) = v159;
    *(v125 + v126[11]) = v158;
    v132 = (v125 + v126[12]);
    *v132 = v160;
    OUTLINED_FUNCTION_39_13(v132);
    v133 = (v125 + v126[13]);
    v134 = v161;
    *v133 = v148;
    v133[1] = v134;
    v135 = (v125 + v126[14]);
    v136 = v162;
    *v135 = v147;
    v135[1] = v136;
    v137 = (v125 + v126[15]);
    *v137 = v102;
    *(v137 + 8) = v164;
    v138 = (v125 + v126[16]);
    v139 = v163;
    *v138 = v165;
    v138[1] = v139;
    OUTLINED_FUNCTION_34_19((v125 + v126[17]));
    OUTLINED_FUNCTION_39_13(v140);
    v141 = (v125 + v126[18]);
    *v141 = v166;
    v141[1] = v117;
    *(v125 + v126[19]) = v167;
    *(v125 + v126[20]) = v118;
    v142 = (v125 + v126[21]);
    *v142 = v122;
    v142[1] = v123;
    v143 = (v125 + v126[22]);
    v144 = v156;
    *v143 = v168;
    v143[1] = v144;
    *(v125 + v126[23]) = v124;
  }

  else
  {
    v108 = v154;
    *v154 = 0x746E6169726176;
    v108[1] = 0xE700000000000000;
    v109 = v155;
    v110 = v156;
    (*(v155 + 104))(v108, *MEMORY[0x1E69763E0], v156);
    sub_1D501EE24(&qword_1EC7EE070, MEMORY[0x1E69763F0]);
    swift_allocError();
    (*(v109 + 16))(v111, v108, v110);
    swift_willThrow();
    (*(v109 + 8))(v108, v110);
  }
}

void sub_1D501E524()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v105 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38_2();
  v14 = type metadata accessor for CloudVideoOffer();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = 0;
  v22 = *(v0 + 8);
  if (v22)
  {
    goto LABEL_6;
  }

  v23 = *v0 * 1000.0;
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v21 = v23;
LABEL_6:
  v131 = v21;
  v132 = v3;
  v3 = type metadata accessor for VideoOffer();
  sub_1D4F39AB0(v0 + v3[5], v1, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F39AB0(v0 + v3[6], v9, &qword_1EC7EAC58, &unk_1D561DA70);
  v24 = 0;
  v25 = (v0 + v3[7]);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = (v0 + v3[8]);
  v29 = *v28;
  v30 = v28[1];
  v31 = (v0 + v3[9]);
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = v0 + v3[10];
  v35 = *(v34 + 8);
  if (v35)
  {
    goto LABEL_11;
  }

  v36 = *v34 * 1000.0;
  if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_96;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v24 = v36;
LABEL_11:
  v37 = *(v0 + v3[11]);
  v38 = (v0 + v3[12]);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v3[14];
  v42 = (v0 + v3[13]);
  v43 = *v42;
  v44 = v42[1];
  v45 = *(v0 + v41);
  v46 = *(v0 + v41 + 8);
  v47 = v0 + v3[15];
  v48 = *(v47 + 8);
  v130 = v22;
  if ((v48 & 1) == 0)
  {
    v49 = *v47 * 1000.0;
    if (COERCE__INT64(fabs(v49)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v49 > -9.22337204e18)
      {
        if (v49 < 9.22337204e18)
        {
          v113 = v49;
          goto LABEL_17;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    goto LABEL_99;
  }

  v113 = 0;
LABEL_17:
  v117 = v37;
  v118 = v40;
  v119 = v39;
  v120 = v24;
  v121 = v33;
  v122 = v32;
  v50 = (v0 + v3[16]);
  v51 = v50[1];
  v127 = v1;
  v128 = v9;
  v125 = v26;
  v126 = v29;
  v123 = v35;
  v124 = v27;
  v116 = v48;
  v114 = v43;
  v115 = v45;
  v133 = v44;
  v112 = v46;
  v129 = v30;
  if (!v51 || ((v52 = *v50, v53 = HIBYTE(v51) & 0xF, v54 = v52 & 0xFFFFFFFFFFFFLL, (v51 & 0x2000000000000000) != 0) ? (v55 = HIBYTE(v51) & 0xF) : (v55 = v52 & 0xFFFFFFFFFFFFLL), !v55))
  {

    v110 = 0;
    v111 = 1;
LABEL_92:
    v76 = v3[18];
    v77 = (v0 + v3[17]);
    v109 = *v77;
    v108 = *(v77 + 8);
    v78 = v3[20];
    v106 = *(v0 + v3[19]);
    v107 = *(v0 + v78);
    v80 = *(v0 + v76);
    v79 = *(v0 + v76 + 8);
    v81 = v3[22];
    v82 = (v0 + v3[21]);
    v83 = *v82;
    v84 = v82[1];
    v85 = *(v0 + v81);
    v86 = *(v0 + v81 + 8);
    *v20 = v131;
    *(v20 + 8) = v130;
    sub_1D4F39A1C(v127, v20 + v14[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F39A1C(v128, v20 + v14[6], &qword_1EC7EAC58, &unk_1D561DA70);
    v87 = v20 + v14[7];
    *v87 = v125;
    *(v87 + 8) = v124;
    v88 = (v20 + v14[8]);
    v89 = v129;
    *v88 = v126;
    v88[1] = v89;
    v90 = v20 + v14[9];
    *v90 = v122;
    *(v90 + 8) = v121;
    v91 = v20 + v14[10];
    *v91 = v120;
    *(v91 + 8) = v123;
    *(v20 + v14[11]) = v117;
    v92 = v20 + v14[12];
    *v92 = v119;
    *(v92 + 8) = v118;
    v93 = (v20 + v14[13]);
    v94 = v133;
    *v93 = v114;
    v93[1] = v94;
    v95 = (v20 + v14[14]);
    v96 = v112;
    *v95 = v115;
    v95[1] = v96;
    OUTLINED_FUNCTION_34_19((v20 + v14[15]));
    *(v97 + 8) = v116;
    OUTLINED_FUNCTION_34_19((v20 + v14[16]));
    *(v98 + 8) = v111 & 1;
    OUTLINED_FUNCTION_34_19((v20 + v14[17]));
    OUTLINED_FUNCTION_39_13(v99);
    v100 = (v20 + v14[18]);
    *v100 = v80;
    v100[1] = v79;
    *(v20 + v14[19]) = v106;
    *(v20 + v14[20]) = v107;
    v101 = (v20 + v14[21]);
    *v101 = v83;
    v101[1] = v84;
    v102 = (v20 + v14[22]);
    *v102 = v85;
    v102[1] = v86;
    v103 = *(v0 + v3[23]);

    sub_1D56106F8();
    OUTLINED_FUNCTION_46();
    return;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {

    v58 = sub_1D5341FA0(v52, v51, 10);
    v74 = v104;

    goto LABEL_88;
  }

  if ((v51 & 0x2000000000000000) == 0)
  {
    if ((v52 & 0x1000000000000000) != 0)
    {
      v56 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_26:
      v57 = *v56;
      if (v57 == 43)
      {
        if (v54 >= 1)
        {
          if (v54 != 1)
          {
            v58 = 0;
            if (v56)
            {
              while (1)
              {
                OUTLINED_FUNCTION_22_0();
                if (!v60 & v59)
                {
                  goto LABEL_86;
                }

                OUTLINED_FUNCTION_10_2();
                if (!v60)
                {
                  goto LABEL_86;
                }

                v58 = v67 + v66;
                if (__OFADD__(v67, v66))
                {
                  goto LABEL_86;
                }

                OUTLINED_FUNCTION_40_0();
                if (v60)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_86;
        }

        goto LABEL_106;
      }

      if (v57 != 45)
      {
        if (v54)
        {
          v58 = 0;
          if (v56)
          {
            while (1)
            {
              v70 = *v56 - 48;
              if (v70 > 9)
              {
                goto LABEL_86;
              }

              v71 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                goto LABEL_86;
              }

              v58 = v71 + v70;
              if (__OFADD__(v71, v70))
              {
                goto LABEL_86;
              }

              ++v56;
              if (!--v54)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_86:
        v58 = 0;
        v63 = 1;
        goto LABEL_87;
      }

      if (v54 >= 1)
      {
        if (v54 != 1)
        {
          v58 = 0;
          if (v56)
          {
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v60 & v59)
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_10_2();
              if (!v60)
              {
                goto LABEL_86;
              }

              v58 = v62 - v61;
              if (__OFSUB__(v62, v61))
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_40_0();
              if (v60)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_77:
          v63 = 0;
LABEL_87:
          v136 = v63;
          v74 = v63;

LABEL_88:
          v111 = v74;
          if (v74)
          {
            v75 = 0;
          }

          else
          {
            v75 = v58;
          }

          v110 = v75;
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_103:
    v56 = sub_1D5615C58();
    goto LABEL_26;
  }

  v134 = v52;
  v135 = v51 & 0xFFFFFFFFFFFFFFLL;
  if (v52 != 43)
  {
    if (v52 != 45)
    {
      if (v53)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v60 & v59)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v60)
          {
            break;
          }

          v58 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v60)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v53)
    {
      if (v53 != 1)
      {
        OUTLINED_FUNCTION_53_12();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v60 & v59)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v60)
          {
            break;
          }

          v58 = v65 - v64;
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v60)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_105;
  }

  if (v53)
  {
    if (v53 != 1)
    {
      OUTLINED_FUNCTION_53_12();
      while (1)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v60 & v59)
        {
          break;
        }

        OUTLINED_FUNCTION_10_2();
        if (!v60)
        {
          break;
        }

        v58 = v69 + v68;
        if (__OFADD__(v69, v68))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v60)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_107:
  __break(1u);
}

uint64_t sub_1D501ED0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D501ED68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D501EDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoOffer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D501EE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CloudVideoOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudVideoOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D501EFD4()
{
  result = qword_1EC7EE078;
  if (!qword_1EC7EE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE078);
  }

  return result;
}

unint64_t sub_1D501F02C()
{
  result = qword_1EDD57008;
  if (!qword_1EDD57008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57008);
  }

  return result;
}

unint64_t sub_1D501F084()
{
  result = qword_1EDD57010;
  if (!qword_1EDD57010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1D501F124@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D56109D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  (*(v4 + 16))(v28 - v9, v1, v3);
  sub_1D56109A8();
  sub_1D501F810(&unk_1EDD53170);
  v10 = OUTLINED_FUNCTION_0_53();
  v11 = *(v4 + 8);
  v11(v8, v3);
  if (v10)
  {
    v12 = OUTLINED_FUNCTION_93();
    (v11)(v12);
    return sub_1D560D908();
  }

  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EDD767D8);
  if (OUTLINED_FUNCTION_0_53())
  {
    v14 = OUTLINED_FUNCTION_93();
    (v11)(v14);
    if (qword_1EDD53D48 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560D9A8();
    v16 = v15;
    v17 = qword_1EDD53D50;
LABEL_9:
    v18 = __swift_project_value_buffer(v15, v17);
    return (*(*(v16 - 8) + 16))(a1, v18, v16);
  }

  sub_1D5610988();
  OUTLINED_FUNCTION_0_53();
  v19 = OUTLINED_FUNCTION_7_10();
  (v11)(v19);
  if (v10)
  {
    v20 = OUTLINED_FUNCTION_93();
    (v11)(v20);
    return sub_1D560D878();
  }

  else
  {
    sub_1D56109C8();
    OUTLINED_FUNCTION_0_53();
    v21 = OUTLINED_FUNCTION_7_10();
    (v11)(v21);
    sub_1D5610998();
    OUTLINED_FUNCTION_0_53();
    v22 = OUTLINED_FUNCTION_7_10();
    (v11)(v22);
    sub_1D56109B8();
    OUTLINED_FUNCTION_0_53();
    v23 = OUTLINED_FUNCTION_7_10();
    (v11)(v23);
    if (qword_1EC7E8B28 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_1EC87BF50);
    if (OUTLINED_FUNCTION_0_53())
    {
      v24 = OUTLINED_FUNCTION_93();
      (v11)(v24);
      if (qword_1EDD53C38 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EDD53C40;
      goto LABEL_9;
    }

    if (qword_1EC7E8B30 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_1EC87BF68);
    if (OUTLINED_FUNCTION_0_53())
    {
      v25 = OUTLINED_FUNCTION_93();
      (v11)(v25);
      if (qword_1EC7E8F18 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EC7F08A0;
      goto LABEL_9;
    }

    if (qword_1EC7E8B38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_1EC87BF80);
    if (OUTLINED_FUNCTION_0_53())
    {
      v26 = OUTLINED_FUNCTION_93();
      (v11)(v26);
      if (qword_1EDD53CE8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EDD53CF0;
      goto LABEL_9;
    }

    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D5681AE0);
    sub_1D501F810(&qword_1EC7EE080);
    v27 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v27);

    MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D5681B00);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D501F7B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D56109D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D56109E8();
}

uint64_t sub_1D501F810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D56109D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D501F854()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE088);
  __swift_project_value_buffer(v0, qword_1EC7EE088);
  v1 = *MEMORY[0x1E6976860];
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 104);

  return v3();
}

uint64_t static TVShow.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE088);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TVShow.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v155 = a3;
  v156 = a4;
  v147 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_48(&v137 - v11);
  v146 = sub_1D5612B88();
  v12 = OUTLINED_FUNCTION_4(v146);
  v157 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v17 - v16);
  v18 = sub_1D5610088();
  v19 = OUTLINED_FUNCTION_4(v18);
  v140 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v24 - v23);
  v153 = sub_1D560D838();
  v25 = OUTLINED_FUNCTION_4(v153);
  v152 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v138 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0A0, &qword_1D5673CE0);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_48(&v137 - v35);
  v36 = type metadata accessor for TVShowPropertyProvider();
  OUTLINED_FUNCTION_24_0(v36);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_59_0();
  v137 = v40 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v158 = &v137 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v137 - v52;
  v144 = sub_1D5612478();
  v54 = OUTLINED_FUNCTION_4(v144);
  v143 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v60 = v59 - v58;

  v154 = a2;
  sub_1D560F7E8();
  v150 = sub_1D502066C();
  v149 = sub_1D5614C68();

  sub_1D560FFE8();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v18);
  sub_1D560FFE8();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v18);
  v151 = v60;
  v156 = a1;
  sub_1D560D4D8();
  sub_1D4E7661C(v50, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v53, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v155, v160);
  v141 = v36;
  if (!v161)
  {
    sub_1D4E7661C(v160, &qword_1EC7EEC40, &unk_1D561C070);
    v162 = 0u;
    v163 = 0u;
    v164 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    goto LABEL_8;
  }

  if (!*(&v163 + 1))
  {
LABEL_8:
    sub_1D4E7661C(&v162, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v162, &v165);
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v61 = v148;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v36);
    v62 = v137;
    sub_1D5020FB8(v61, v137);
    v63 = v158;
    sub_1D5020EF8(v62, v158);
    v64 = v62 + v36[25];
    v65 = v138;
    sub_1D560D718();
    (*(v152 + 40))(v63 + v36[25], v65, v153);
    v66 = v139;
    sub_1D5612468();
    (*(v140 + 40))(v63 + v36[26], v66, v18);
    v67 = sub_1D5612458();
    v69 = v68;
    sub_1D5020F5C(v62);
    v70 = (v63 + v36[27]);
    v71 = v70[1];

    *v70 = v67;
    v70[1] = v69;
    __swift_destroy_boxed_opaque_existential_1(&v165);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v36);
  sub_1D4E7661C(v61, &qword_1EC7EE0A0, &qword_1D5673CE0);
  __swift_destroy_boxed_opaque_existential_1(&v165);
LABEL_9:
  sub_1D56140F8();
  v72 = v158;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = v36[9];
  v78 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
  v82 = v36[15];
  v83 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = v36[19];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v78);
  v91 = v36[20];
  sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = v36[21];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v83);
  v100 = v36[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  (*(v152 + 16))(v72 + v36[25], v156, v153);
  v105 = v72 + v36[26];
  sub_1D5612468();
  v148 = sub_1D5612458();
  v140 = v106;
  sub_1D5614A88();
  v107 = OUTLINED_FUNCTION_1_49();
  v108 = OUTLINED_FUNCTION_1_49();
  v109 = OUTLINED_FUNCTION_1_49();
  v110 = OUTLINED_FUNCTION_1_49();
  *(v72 + v36[5]) = 0;
  *(v72 + v36[6]) = 0;
  *(v72 + v36[7]) = 0;
  *(v72 + v36[8]) = 0;
  *(v72 + v36[10]) = 0;
  v111 = v72 + v36[11];
  *v111 = 0;
  *(v111 + 8) = 1;
  *(v72 + v36[12]) = 0;
  *(v72 + v36[13]) = 2;
  *(v72 + v36[14]) = 2;
  *(v72 + v36[16]) = 0;
  v112 = (v72 + v36[17]);
  *v112 = 0;
  v112[1] = 0;
  *(v72 + v36[18]) = 0;
  *(v72 + v36[23]) = 0;
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v113 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v136 = sub_1D5615E18();

    v113 = v136;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v114 = v158;
  *(v158 + v36[24]) = v113;
  v115 = (v114 + v36[27]);
  v116 = v140;
  *v115 = v148;
  v115[1] = v116;
  *(v114 + v36[28]) = v107;
  *(v114 + v36[29]) = v108;
  *(v114 + v36[30]) = v109;
  *(v114 + v36[31]) = v110;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v165) = 0;
  v117 = *MEMORY[0x1E6976668];
  v118 = v157;
  v140 = *(v157 + 104);
  v148 = v157 + 104;
  v119 = v142;
  v120 = v146;
  (v140)(v142, v117, v146);
  v139 = sub_1D5021280(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider);
  sub_1D5610D98();

  v121 = *(v118 + 8);
  v157 = v118 + 8;
  v122 = OUTLINED_FUNCTION_97_1();
  v121(v122);
  swift_getKeyPath();
  LOBYTE(v165) = 4;
  LOBYTE(v162) = 2;
  v160[0] = 8;
  v159 = 6;
  v123 = v145;
  sub_1D5614BE8();
  LODWORD(v138) = *MEMORY[0x1E6976670];
  v124 = v138;
  v125 = v140;
  (v140)(v119, v138, v120);
  sub_1D5610DB8();

  v126 = OUTLINED_FUNCTION_97_1();
  v121(v126);
  sub_1D4E7661C(v123, &qword_1EC7EAC98, &unk_1D561DA80);
  swift_getKeyPath();
  LOBYTE(v165) = 3;
  v125(v119, v124, v120);
  v127 = v139;
  v128 = v158;
  sub_1D5610D68();

  v129 = OUTLINED_FUNCTION_97_1();
  v121(v129);
  swift_getKeyPath();
  LOBYTE(v165) = 7;
  v125(v119, v138, v120);
  sub_1D5610D68();

  v130 = OUTLINED_FUNCTION_97_1();
  v121(v130);
  v166 = v141;
  v167 = v127;
  v131 = __swift_allocate_boxed_opaque_existential_0(&v165);
  sub_1D5020EF8(v128, v131);
  TVShow.init(propertyProvider:)(&v165, v147);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v155, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v152 + 8))(v156, v153);
  (*(v143 + 8))(v151, v144);
  return sub_1D5020F5C(v128);
}

unint64_t sub_1D502066C()
{
  result = qword_1EC7EE0A8;
  if (!qword_1EC7EE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0A8);
  }

  return result;
}

uint64_t TVShow.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  sub_1D4ECCA88();
  v53 = sub_1D5614BD8();
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v19 = sub_1D56140F8();
  sub_1D5021280(&qword_1EC7EA688, type metadata accessor for TVShow);
  sub_1D5021280(&qword_1EC7EC4A0, type metadata accessor for TVShow);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1D4E7661C(v18, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v19);
    (*(v20 + 8))(v18, v19);
  }

  v21 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v21, 0);
  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v22 = sub_1D5610978();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v12);
  if (v23)
  {
    sub_1D4E7661C(v12, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v24 = sub_1D5610968();
    v26 = v25;
    OUTLINED_FUNCTION_24_0(v22);
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_97_1();
    v30(v29);
    if (v26)
    {
      v52 = MEMORY[0x1E69E6158];
      v50 = v24;
      v51 = v26;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_11_35();
LABEL_14:
  v31 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v31, 2);
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  v32 = MEMORY[0x1E69E6530];
  sub_1D560EC28();
  v33 = v50;
  if (v51)
  {
    v33 = 0;
  }

  v52 = v32;
  v50 = v33;
  v34 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v34, 3);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v10);
  v35 = MEMORY[0x1E69E6158];
  if (v23)
  {
    sub_1D4E7661C(v10, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v36 = sub_1D5610948();
    v38 = v37;
    OUTLINED_FUNCTION_24_0(v22);
    (*(v39 + 8))(v10, v22);
    if (v38)
    {
      v52 = v35;
      v50 = v36;
      v51 = v38;
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_11_35();
LABEL_24:
  v40 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v40, 4);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v6);
  if (v23)
  {
    sub_1D4E7661C(v6, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_29:
    OUTLINED_FUNCTION_11_35();
    goto LABEL_30;
  }

  v41 = sub_1D5610958();
  v43 = v42;
  OUTLINED_FUNCTION_24_0(v22);
  (*(v44 + 8))(v6, v22);
  if (!v43)
  {
    goto LABEL_29;
  }

  v52 = v35;
  v50 = v41;
  v51 = v43;
LABEL_30:
  v45 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v45, 6);
  v46 = TVShow.name.getter();
  v52 = v35;
  v50 = v46;
  v51 = v47;
  v48 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v48, 7);
  return v53;
}

uint64_t TVShow.LegacyModelTVShowPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t TVShow.LegacyModelTVShowPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001CLL;
  switch(*v0)
  {
    case 1:
    case 4:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5020D14@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TVShow.LegacyModelTVShowPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D5020D20@<X0>(unint64_t *a1@<X8>)
{
  result = TVShow.LegacyModelTVShowPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVShow.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976860];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D5020DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5021280(&qword_1EC7EE0C0, type metadata accessor for TVShow);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5020E70()
{
  sub_1D5021280(&qword_1EC7EA390, type metadata accessor for TVShow);

  return sub_1D56132F8();
}

uint64_t sub_1D5020EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVShowPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5020F5C(uint64_t a1)
{
  v2 = type metadata accessor for TVShowPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5020FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVShowPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5021020()
{
  result = qword_1EC7EE0B0;
  if (!qword_1EC7EE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0B0);
  }

  return result;
}

unint64_t sub_1D502107C()
{
  result = qword_1EC7EE0B8;
  if (!qword_1EC7EE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0B8);
  }

  return result;
}

uint64_t _s28LegacyModelTVShowPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s28LegacyModelTVShowPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5021280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicRecentlySearchedViewModel.Entry.Source.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

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

uint64_t MusicRecentlySearchedViewModel.Entry.Source.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7972617262694CLL;
  }

  else
  {
    result = 0x754D2E656C707041;
  }

  *v0;
  return result;
}

uint64_t sub_1D502137C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicRecentlySearchedViewModel.Entry.Source.init(rawValue:)(a1);
}

uint64_t sub_1D5021388@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRecentlySearchedViewModel.Entry.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D50213B4()
{
  result = qword_1EC7EE0C8;
  if (!qword_1EC7EE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE0D0, &qword_1D56298A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0C8);
  }

  return result;
}

unint64_t sub_1D50214E8()
{
  result = qword_1EC7EE0D8;
  if (!qword_1EC7EE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0D8);
  }

  return result;
}

_BYTE *_s6SourceOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5021630()
{
  result = qword_1EC7EE0E0;
  if (!qword_1EC7EE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0E0);
  }

  return result;
}

uint64_t Station.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v98 = a1;
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v96 = v6;
  v97 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v95 = v10 - v9;
  v85 = sub_1D5610088();
  v11 = OUTLINED_FUNCTION_4(v85);
  v94 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v89 = v16 - v15;
  v92 = sub_1D5611AB8();
  v17 = OUTLINED_FUNCTION_4(v92);
  v86 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v84 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v79 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_71_1();
  v83 = v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_0();
  v82 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v81 = &v79 - v44;
  v45 = sub_1D5614408();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v93 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;
  v54 = *(v48 + 16);
  v54(v52 - v51, v1, v45);
  v55 = sub_1D5614388();
  v90 = v56;
  v91 = v55;
  v57 = _s8MusicKit7StationV0aB8InternalE12providerNameSSSgvg_0();
  v87 = v58;
  v88 = v57;
  sub_1D56143B8();
  sub_1D5614218();
  sub_1D5614378();
  v59 = v85;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v85);
  v100 = v45;
  v101 = MEMORY[0x1E6977168];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
  v80 = v53;
  v54(boxed_opaque_existential_0, v53, v45);
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v61 = v84;
  sub_1D5612AF8();
  v62 = v89;
  sub_1D5611A98();
  (*(v86 + 8))(v61, v92);
  sub_1D560FDD8();
  (*(v94 + 8))(v62, v59);
  sub_1D4E50004(v31, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v59);
  v63 = v29;
  v79 = v31;
  sub_1D4F7AFE0(v29, v31);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v64 = v95;
  sub_1D560EC98();
  sub_1D4E69910(v31, v29, &qword_1EC7EA358, &unk_1D561DF50);
  v65 = type metadata accessor for MusicSiriRepresentation();
  v66 = v98;
  v67 = v81;
  sub_1D4E69910(v81, v98 + v65[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v68 = v82;
  sub_1D4E69910(v82, v66 + v65[9], &qword_1EC7EC478, &unk_1D56299D0);
  v69 = v83;
  sub_1D4E69910(v83, v66 + v65[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v99[0]) = 13;
  v70 = v64;
  sub_1D50391CC();
  v72 = v71;
  v74 = v73;
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v96 + 8))(v70, v97);
  sub_1D4E50004(v79, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v69, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v68, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v67, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v93 + 8))(v80, v45);
  v76 = v98;
  *v98 = v72;
  v76[1] = v74;
  *(v76 + 16) = 13;
  v77 = v90;
  v76[3] = v91;
  v76[4] = v77;
  v78 = v87;
  v76[5] = v88;
  v76[6] = v78;
  return result;
}

uint64_t Station.airTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0E8, &qword_1D56299E0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  sub_1D56143F8();
  v7 = sub_1D56143E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D4E50004(v1, &qword_1EC7EE0E8, &qword_1D56299E0);
    v8 = type metadata accessor for Station.AirTime();
    v9 = a1;
    v10 = 1;
  }

  else
  {
    sub_1D56143D8();
    v11 = type metadata accessor for Station.AirTime();
    v12 = a1 + *(v11 + 20);
    sub_1D56143C8();
    OUTLINED_FUNCTION_24_0(v7);
    (*(v13 + 8))(v1, v7);
    v9 = a1;
    v10 = 0;
    v8 = v11;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t Station.kind.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F0, &qword_1D56299E8);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  sub_1D56143A8();
  v7 = sub_1D5614398();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    result = sub_1D4E50004(v1, &qword_1EC7EE0F0, &qword_1D56299E8);
    *a1 = 14;
  }

  else
  {
    Station._Kind.convertToStationKind()(a1);
    OUTLINED_FUNCTION_24_0(v7);
    return (*(v9 + 8))(v1, v7);
  }

  return result;
}

uint64_t Station.friendsWhoListened.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1D560CD48();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  sub_1D56142A8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1D4E50004(v22, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v24 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v25 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v25);
    type metadata accessor for SocialProfile();
    sub_1D5025AE4(&qword_1EDD57510, type metadata accessor for SocialProfile);
    sub_1D5025AE4(&qword_1EDD57518, type metadata accessor for SocialProfile);
    sub_1D5612368();
    sub_1D4E50004(v7, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v11 + 8))(v16, v8);
    OUTLINED_FUNCTION_24_0(v23);
    (*(v26 + 8))(v22, v23);
    v24 = 0;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  return __swift_storeEnumTagSinglePayload(a1, v24, 1, v27);
}

uint64_t sub_1D50221C8()
{
  v0 = sub_1D5610A18();
  __swift_allocate_value_buffer(v0, qword_1EC87BF98);
  __swift_project_value_buffer(v0, qword_1EC87BF98);
  return sub_1D5610A28();
}

uint64_t Station.AirTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C328();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Station.AirTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Station.AirTime() + 20);
  v4 = sub_1D560C328();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t static Station.AirTime.== infix(_:_:)()
{
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for Station.AirTime() + 20);

  return sub_1D560C2E8();
}

uint64_t sub_1D5022364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
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

uint64_t sub_1D5022434(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1D5022478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5022364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50224A0(uint64_t a1)
{
  v2 = sub_1D502549C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50224DC(uint64_t a1)
{
  v2 = sub_1D502549C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Station.AirTime.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F8, &qword_1D56299F0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D502549C();
  sub_1D56163D8();
  v16[15] = 0;
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v12, v13);
  OUTLINED_FUNCTION_19_28();
  if (!v1)
  {
    v14 = *(type metadata accessor for Station.AirTime() + 20);
    v16[14] = 1;
    OUTLINED_FUNCTION_19_28();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t Station.AirTime.hash(into:)()
{
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v1, v2);
  sub_1D5614CB8();
  v3 = v0 + *(type metadata accessor for Station.AirTime() + 20);
  return sub_1D5614CB8();
}

uint64_t Station.AirTime.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v1, v2);
  sub_1D5614CB8();
  v3 = v0 + *(type metadata accessor for Station.AirTime() + 20);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t Station.AirTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v43 = sub_1D560C328();
  v4 = OUTLINED_FUNCTION_4(v43);
  v39 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE108, &qword_1D56299F8);
  v41 = OUTLINED_FUNCTION_4(v12);
  v42 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v17 = type metadata accessor for Station.AirTime();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D502549C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v17;
  v36 = v10;
  v37 = v23;
  v25 = v39;
  v45 = 0;
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v26, v27);
  v28 = v40;
  sub_1D5615FD8();
  v40 = *(v25 + 32);
  (v40)(v37, v28, v43);
  v44 = 1;
  v29 = v36;
  sub_1D5615FD8();
  v30 = OUTLINED_FUNCTION_14_30();
  v31(v30);
  v32 = v37;
  (v40)(v37 + *(v35 + 20), v29, v43);
  sub_1D50254F0(v32, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5025554(v32);
}

uint64_t sub_1D5022B3C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D560C328();
  sub_1D5025AE4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  v4 = v2 + *(a2 + 20);
  sub_1D5614CB8();
  return sub_1D5616328();
}

BOOL static Station.Kind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
    case 9:
      return v3 == 9;
    case 0xA:
      return v3 == 10;
    case 0xB:
      return v3 == 11;
    case 0xC:
      return v3 == 12;
    case 0xD:
      return v3 == 13;
    default:
      if ((v3 - 3) < 0xB)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v3 != 2 && (sub_1D4F3ADEC(v2 & 1) & 1) != 0;
      }

      return v3 == 2;
  }
}

uint64_t sub_1D5022CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565536D75626C61 && a2 == 0xEB00000000646564;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4F747369747261 && a2 == 0xEA0000000000796CLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553747369747261 && a2 == 0xEC00000064656465;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001D5681B40 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEE00646564656553;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x64656553676E6F73 && a2 == 0xEA00000000006465;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 1919251317 && a2 == 0xE400000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1D5616168();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1D50230C4(char a1)
{
  result = 0x6565536D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x6E4F747369747261;
      break;
    case 2:
      result = 0x6553747369747261;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x65726E6567;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7972657571;
      break;
    case 9:
      result = 0x64656553676E6F73;
      break;
    case 10:
      result = 0x6E696D6165727473;
      break;
    case 11:
      result = 1919251317;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5023228(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1D50232A4(uint64_t a1)
{
  v2 = sub_1D50259F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50232E0(uint64_t a1)
{
  v2 = sub_1D50259F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D502331C(uint64_t a1)
{
  v2 = sub_1D50259A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023358(uint64_t a1)
{
  v2 = sub_1D50259A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023394(uint64_t a1)
{
  v2 = sub_1D502594C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50233D0(uint64_t a1)
{
  v2 = sub_1D502594C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5022CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D502343C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50230BC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5023464(uint64_t a1)
{
  v2 = sub_1D50255B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50234A0(uint64_t a1)
{
  v2 = sub_1D50255B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50234DC(uint64_t a1)
{
  v2 = sub_1D50258F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023518(uint64_t a1)
{
  v2 = sub_1D50258F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023554(uint64_t a1)
{
  v2 = sub_1D50258A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023590(uint64_t a1)
{
  v2 = sub_1D50258A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50235CC(uint64_t a1)
{
  v2 = sub_1D5025850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023608(uint64_t a1)
{
  v2 = sub_1D5025850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023644(uint64_t a1)
{
  v2 = sub_1D50257FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023680(uint64_t a1)
{
  v2 = sub_1D50257FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50236BC(uint64_t a1)
{
  v2 = sub_1D50257A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50236F8(uint64_t a1)
{
  v2 = sub_1D50257A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023734(uint64_t a1)
{
  v2 = sub_1D5025754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023770(uint64_t a1)
{
  v2 = sub_1D5025754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50237AC(uint64_t a1)
{
  v2 = sub_1D5025700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50237E8(uint64_t a1)
{
  v2 = sub_1D5025700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023828(uint64_t a1)
{
  v2 = sub_1D5025658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023864(uint64_t a1)
{
  v2 = sub_1D5025658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50238A0(uint64_t a1)
{
  v2 = sub_1D5025604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50238DC(uint64_t a1)
{
  v2 = sub_1D5025604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Station.Kind.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE110, &qword_1D5629A00);
  v6 = OUTLINED_FUNCTION_4(v5);
  v131 = v7;
  v132 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v128 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE118, &qword_1D5629A08);
  v13 = OUTLINED_FUNCTION_4(v12);
  v129 = v14;
  v130 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v127 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE120, &qword_1D5629A10);
  v20 = OUTLINED_FUNCTION_4(v19);
  v125 = v21;
  v126 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v124 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE128, &qword_1D5629A18);
  v27 = OUTLINED_FUNCTION_4(v26);
  v122 = v28;
  v123 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v121 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE130, &qword_1D5629A20);
  v34 = OUTLINED_FUNCTION_4(v33);
  v119 = v35;
  v120 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v118 = v39;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE138, &qword_1D5629A28);
  OUTLINED_FUNCTION_4(v117);
  v116 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v44);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE140, &qword_1D5629A30);
  OUTLINED_FUNCTION_4(v114);
  v113 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v49);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE148, &qword_1D5629A38);
  OUTLINED_FUNCTION_4(v111);
  v110 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v54);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE150, &qword_1D5629A40);
  OUTLINED_FUNCTION_4(v108);
  v107 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v59);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE158, &qword_1D5629A48);
  OUTLINED_FUNCTION_4(v105);
  v104[3] = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE160, &qword_1D5629A50);
  OUTLINED_FUNCTION_4(v65);
  v104[1] = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v104 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE168, &qword_1D5629A58);
  OUTLINED_FUNCTION_4(v72);
  v104[0] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  v78 = v104 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE170, &qword_1D5629A60);
  v134 = OUTLINED_FUNCTION_4(v79);
  v135 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_71_1();
  v84 = *v3;
  v85 = a1[4];
  v86 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50255B0();
  v133 = v2;
  sub_1D56163D8();
  switch(v84)
  {
    case 3:
      v137[3] = 0;
      sub_1D50259F4();
      v86 = v133;
      v85 = v134;
      sub_1D5616018();
      OUTLINED_FUNCTION_136(&v133);
      v88 = v78;
      v89 = v72;
      goto LABEL_15;
    case 4:
      v137[4] = 1;
      sub_1D50259A0();
      v86 = v133;
      v85 = v134;
      sub_1D5616018();
      OUTLINED_FUNCTION_136(&v134);
      v88 = v71;
      v89 = v65;
      goto LABEL_15;
    case 5:
      v137[5] = 2;
      sub_1D502594C();
      v94 = v104[2];
      OUTLINED_FUNCTION_5_34();
      OUTLINED_FUNCTION_136(&v136);
      v88 = v94;
      v91 = v137;
      goto LABEL_10;
    case 6:
      v137[6] = 3;
      sub_1D50258F8();
      v95 = v106;
      OUTLINED_FUNCTION_5_34();
      OUTLINED_FUNCTION_136(&v138);
      v88 = v95;
      v91 = v139;
      goto LABEL_10;
    case 7:
      v137[7] = 4;
      sub_1D50258A4();
      v90 = v109;
      OUTLINED_FUNCTION_5_34();
      OUTLINED_FUNCTION_136(&v140);
      v88 = v90;
      v91 = &v141;
      goto LABEL_10;
    case 8:
      v139[0] = 5;
      sub_1D5025850();
      v96 = v112;
      OUTLINED_FUNCTION_5_34();
      OUTLINED_FUNCTION_136(&v142);
      v88 = v96;
      v91 = &v143;
LABEL_10:
      v89 = *(v91 - 32);
      goto LABEL_15;
    case 9:
      v139[1] = 6;
      sub_1D50257FC();
      v97 = v115;
      OUTLINED_FUNCTION_5_34();
      OUTLINED_FUNCTION_136(&v144);
      v88 = v97;
      v89 = v117;
      goto LABEL_15;
    case 10:
      v139[2] = 7;
      sub_1D50257A8();
      v92 = v118;
      OUTLINED_FUNCTION_5_34();
      v93 = v119;
      v89 = v120;
      goto LABEL_14;
    case 11:
      v139[3] = 8;
      sub_1D5025754();
      v92 = v121;
      OUTLINED_FUNCTION_5_34();
      v93 = v122;
      v89 = v123;
      goto LABEL_14;
    case 12:
      v139[4] = 9;
      sub_1D5025700();
      v92 = v124;
      OUTLINED_FUNCTION_5_34();
      v93 = v125;
      v89 = v126;
      goto LABEL_14;
    case 13:
      v139[7] = 11;
      sub_1D5025604();
      v92 = v128;
      OUTLINED_FUNCTION_5_34();
      v93 = v131;
      v89 = v132;
LABEL_14:
      v87 = *(v93 + 8);
      v88 = v92;
LABEL_15:
      v87(v88, v89);
      result = (*(v135 + 8))(v86, v85);
      break;
    default:
      v139[6] = 10;
      sub_1D5025658();
      v100 = v133;
      v99 = v134;
      sub_1D5616018();
      v139[5] = v84;
      sub_1D50256AC();
      v101 = v130;
      sub_1D5616068();
      v102 = OUTLINED_FUNCTION_12_32();
      v103(v102, v101);
      result = (*(v135 + 8))(v100, v99);
      break;
  }

  return result;
}

uint64_t Station.Kind.hash(into:)()
{
  v1 = *v0;
  switch(*v0)
  {
    case 3:
      v2 = 0;
      goto LABEL_13;
    case 4:
      v2 = 1;
      goto LABEL_13;
    case 5:
      v2 = 2;
      goto LABEL_13;
    case 6:
      v2 = 3;
      goto LABEL_13;
    case 7:
      v2 = 4;
      goto LABEL_13;
    case 8:
      v2 = 5;
      goto LABEL_13;
    case 9:
      v2 = 6;
      goto LABEL_13;
    case 0xA:
      v2 = 7;
      goto LABEL_13;
    case 0xB:
      v2 = 8;
      goto LABEL_13;
    case 0xC:
      v2 = 9;
      goto LABEL_13;
    case 0xD:
      v2 = 11;
LABEL_13:
      result = MEMORY[0x1DA6EC0D0](v2);
      break;
    default:
      MEMORY[0x1DA6EC0D0](10);
      if (v1 == 2)
      {
        result = sub_1D56162F8();
      }

      else
      {
        sub_1D56162F8();
        sub_1D5614E28();
      }

      break;
  }

  return result;
}

uint64_t Station.Kind.hashValue.getter()
{
  v2 = *v0;
  sub_1D56162D8();
  Station.Kind.hash(into:)();
  return sub_1D5616328();
}

uint64_t Station.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v187 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1E8, &qword_1D5629A68);
  v5 = OUTLINED_FUNCTION_4(v4);
  v177 = v6;
  v178 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v185 = v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1F0, &qword_1D5629A70);
  OUTLINED_FUNCTION_4(v179);
  v157 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v186 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1F8, &qword_1D5629A78);
  v17 = OUTLINED_FUNCTION_4(v16);
  v175 = v18;
  v176 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v184 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE200, &qword_1D5629A80);
  v24 = OUTLINED_FUNCTION_4(v23);
  v173 = v25;
  v174 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v183 = v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE208, &qword_1D5629A88);
  OUTLINED_FUNCTION_4(v172);
  v171 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v190 = v34;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE210, &qword_1D5629A90);
  OUTLINED_FUNCTION_4(v169);
  v170 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v189 = v39;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE218, &qword_1D5629A98);
  OUTLINED_FUNCTION_4(v168);
  v167 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v188 = v44;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE220, &qword_1D5629AA0);
  OUTLINED_FUNCTION_4(v166);
  v165 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v182 = v49;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE228, &qword_1D5629AA8);
  OUTLINED_FUNCTION_4(v164);
  v163 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v181 = v54;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE230, &qword_1D5629AB0);
  OUTLINED_FUNCTION_4(v162);
  v161 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  v180 = v59;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE238, &qword_1D5629AB8);
  OUTLINED_FUNCTION_4(v160);
  v159 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v151 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE240, &qword_1D5629AC0);
  OUTLINED_FUNCTION_4(v66);
  v158 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_71_1();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE248, &unk_1D5629AC8);
  OUTLINED_FUNCTION_4(v71);
  v73 = v72;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v151 - v77;
  v79 = a1[3];
  v80 = a1[4];
  v191 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v79);
  sub_1D50255B0();
  v81 = v192;
  sub_1D5616398();
  if (v81)
  {
    goto LABEL_8;
  }

  v155 = v2;
  v154 = v66;
  v156 = v65;
  v82 = v189;
  v192 = v73;
  v83 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v83, 0);
  if (v86 == v87 >> 1)
  {
LABEL_7:
    v98 = v78;
    v99 = v71;
    v100 = sub_1D5615C18();
    swift_allocError();
    v102 = v101;
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v102 = &type metadata for Station.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    v104 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v100);
    (*(v105 + 104))(v102);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v192 + 8))(v98, v99);
LABEL_8:
    v106 = v191;
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v153 = 0;
  if (v86 < (v87 >> 1))
  {
    v152 = *(v85 + v86);
    sub_1D4FE35EC(v86 + 1, v87 >> 1, result, v85, v86, v87);
    v89 = v88;
    v91 = v90;
    swift_unknownObjectRelease();
    if (v89 == v91 >> 1)
    {
      v92 = v187;
      switch(v152)
      {
        case 1:
          v193[4] = 1;
          sub_1D50259A0();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v131 = OUTLINED_FUNCTION_6_38(&v191);
          v132(v131, v160);
          v133 = OUTLINED_FUNCTION_1_50();
          v134(v133);
          v97 = 4;
          break;
        case 2:
          v193[5] = 2;
          sub_1D502594C();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_6_38(v193);
          v120(v119, v162);
          v121 = OUTLINED_FUNCTION_1_50();
          v122(v121);
          v97 = 5;
          break;
        case 3:
          v193[6] = 3;
          sub_1D50258F8();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_6_38(&v194);
          v124(v123, v164);
          v125 = OUTLINED_FUNCTION_1_50();
          v126(v125);
          v97 = 6;
          break;
        case 4:
          v193[7] = 4;
          sub_1D50258A4();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_6_38(&v203);
          v112(v111, v166);
          v113 = OUTLINED_FUNCTION_1_50();
          v114(v113);
          v97 = 7;
          break;
        case 5:
          v195 = 5;
          sub_1D5025850();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v135 = OUTLINED_FUNCTION_6_38(&v204);
          v136(v135, v168);
          v137 = OUTLINED_FUNCTION_1_50();
          v138(v137);
          v97 = 8;
          break;
        case 6:
          v196 = 6;
          sub_1D50257FC();
          OUTLINED_FUNCTION_4_33();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_136(&v205);
          v139(v82, v169);
          v140 = OUTLINED_FUNCTION_1_50();
          v141(v140);
          v97 = 9;
          break;
        case 7:
          v197 = 7;
          sub_1D50257A8();
          OUTLINED_FUNCTION_4_33();
          swift_unknownObjectRelease();
          v127 = OUTLINED_FUNCTION_6_38(&v206);
          v128(v127, v172);
          v129 = OUTLINED_FUNCTION_1_50();
          v130(v129);
          v97 = 10;
          break;
        case 8:
          v198 = 8;
          sub_1D5025754();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v146 = OUTLINED_FUNCTION_12_32();
          v147(v146);
          v148 = OUTLINED_FUNCTION_1_50();
          v149(v148);
          v97 = 11;
          break;
        case 9:
          v199 = 9;
          sub_1D5025700();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_12_32();
          v116(v115);
          v117 = OUTLINED_FUNCTION_1_50();
          v118(v117);
          v97 = 12;
          break;
        case 10:
          v201 = 10;
          sub_1D5025658();
          v142 = v186;
          OUTLINED_FUNCTION_4_33();
          v143 = v71;
          sub_1D5025A48();
          v144 = v179;
          sub_1D5615F78();
          v145 = v192;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_136(&v189);
          v150(v142, v144);
          (*(v145 + 8))(v78, v143);
          v97 = v200;
          break;
        case 11:
          v202 = 11;
          sub_1D5025604();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_12_32();
          v108(v107);
          v109 = OUTLINED_FUNCTION_1_50();
          v110(v109);
          v97 = 13;
          break;
        default:
          v193[3] = 0;
          sub_1D50259F4();
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_6_38(&v190);
          v94(v93, v154);
          v95 = OUTLINED_FUNCTION_1_50();
          v96(v95);
          v97 = 3;
          break;
      }

      v106 = v191;
      *v92 = v97;
      return __swift_destroy_boxed_opaque_existential_1(v106);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5025240()
{
  v2 = *v0;
  sub_1D56162D8();
  Station.Kind.hash(into:)();
  return sub_1D5616328();
}

uint64_t Station.StreamingKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

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

uint64_t Station.StreamingKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x73616364616F7262;
  }

  else
  {
    result = 0x65646F73697065;
  }

  *v0;
  return result;
}

uint64_t sub_1D5025338@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Station.StreamingKind.init(rawValue:)(a1);
}

uint64_t sub_1D5025344@<X0>(uint64_t *a1@<X8>)
{
  result = Station.StreamingKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for Station.AirTime()
{
  result = qword_1EDD52DD0;
  if (!qword_1EDD52DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D502549C()
{
  result = qword_1EC7EE100;
  if (!qword_1EC7EE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE100);
  }

  return result;
}

uint64_t sub_1D50254F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Station.AirTime();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5025554(uint64_t a1)
{
  v2 = type metadata accessor for Station.AirTime();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50255B0()
{
  result = qword_1EC7EE178;
  if (!qword_1EC7EE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE178);
  }

  return result;
}

unint64_t sub_1D5025604()
{
  result = qword_1EC7EE180;
  if (!qword_1EC7EE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE180);
  }

  return result;
}

unint64_t sub_1D5025658()
{
  result = qword_1EC7EE188;
  if (!qword_1EC7EE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE188);
  }

  return result;
}

unint64_t sub_1D50256AC()
{
  result = qword_1EC7EE190;
  if (!qword_1EC7EE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE190);
  }

  return result;
}

unint64_t sub_1D5025700()
{
  result = qword_1EC7EE198;
  if (!qword_1EC7EE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE198);
  }

  return result;
}

unint64_t sub_1D5025754()
{
  result = qword_1EC7EE1A0;
  if (!qword_1EC7EE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1A0);
  }

  return result;
}

unint64_t sub_1D50257A8()
{
  result = qword_1EC7EE1A8;
  if (!qword_1EC7EE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1A8);
  }

  return result;
}

unint64_t sub_1D50257FC()
{
  result = qword_1EC7EE1B0;
  if (!qword_1EC7EE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1B0);
  }

  return result;
}

unint64_t sub_1D5025850()
{
  result = qword_1EC7EE1B8;
  if (!qword_1EC7EE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1B8);
  }

  return result;
}

unint64_t sub_1D50258A4()
{
  result = qword_1EC7EE1C0;
  if (!qword_1EC7EE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1C0);
  }

  return result;
}

unint64_t sub_1D50258F8()
{
  result = qword_1EC7EE1C8;
  if (!qword_1EC7EE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1C8);
  }

  return result;
}

unint64_t sub_1D502594C()
{
  result = qword_1EC7EE1D0;
  if (!qword_1EC7EE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1D0);
  }

  return result;
}

unint64_t sub_1D50259A0()
{
  result = qword_1EC7EE1D8;
  if (!qword_1EC7EE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1D8);
  }

  return result;
}

unint64_t sub_1D50259F4()
{
  result = qword_1EC7EE1E0;
  if (!qword_1EC7EE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1E0);
  }

  return result;
}

unint64_t sub_1D5025A48()
{
  result = qword_1EC7EE250;
  if (!qword_1EC7EE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE250);
  }

  return result;
}

uint64_t sub_1D5025AE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5025B30()
{
  result = qword_1EC7EE260;
  if (!qword_1EC7EE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE260);
  }

  return result;
}

unint64_t sub_1D5025B88()
{
  result = qword_1EC7EE268;
  if (!qword_1EC7EE268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE270, &qword_1D5629CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE268);
  }

  return result;
}

unint64_t sub_1D5025BF0()
{
  result = qword_1EC7EE278;
  if (!qword_1EC7EE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE278);
  }

  return result;
}

unsigned __int8 *_s4KindOwet_1(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0xC)
    {
      return (v8 - 11);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 13;
    if (a2 + 13 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 13);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s4KindOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 13;
  if (a3 + 13 >= 0xFFFF00)
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

  if (a3 >= 0xF3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF2)
  {
    v7 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5025E0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _s4KindO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4KindO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s4KindO19StreamingCodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D5026108(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50261E8()
{
  result = qword_1EC7EE280;
  if (!qword_1EC7EE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE280);
  }

  return result;
}

unint64_t sub_1D5026240()
{
  result = qword_1EC7EE288;
  if (!qword_1EC7EE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE288);
  }

  return result;
}

unint64_t sub_1D5026298()
{
  result = qword_1EC7EE290;
  if (!qword_1EC7EE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE290);
  }

  return result;
}

unint64_t sub_1D50262F0()
{
  result = qword_1EC7EE298;
  if (!qword_1EC7EE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE298);
  }

  return result;
}

unint64_t sub_1D5026348()
{
  result = qword_1EC7EE2A0;
  if (!qword_1EC7EE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2A0);
  }

  return result;
}

unint64_t sub_1D50263A0()
{
  result = qword_1EC7EE2A8;
  if (!qword_1EC7EE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2A8);
  }

  return result;
}

unint64_t sub_1D50263F8()
{
  result = qword_1EC7EE2B0;
  if (!qword_1EC7EE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2B0);
  }

  return result;
}

unint64_t sub_1D5026450()
{
  result = qword_1EC7EE2B8;
  if (!qword_1EC7EE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2B8);
  }

  return result;
}

unint64_t sub_1D50264A8()
{
  result = qword_1EC7EE2C0;
  if (!qword_1EC7EE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2C0);
  }

  return result;
}

unint64_t sub_1D5026500()
{
  result = qword_1EC7EE2C8;
  if (!qword_1EC7EE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2C8);
  }

  return result;
}

unint64_t sub_1D5026558()
{
  result = qword_1EC7EE2D0;
  if (!qword_1EC7EE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2D0);
  }

  return result;
}

unint64_t sub_1D50265B0()
{
  result = qword_1EC7EE2D8;
  if (!qword_1EC7EE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2D8);
  }

  return result;
}

unint64_t sub_1D5026608()
{
  result = qword_1EC7EE2E0;
  if (!qword_1EC7EE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2E0);
  }

  return result;
}

unint64_t sub_1D5026660()
{
  result = qword_1EC7EE2E8;
  if (!qword_1EC7EE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2E8);
  }

  return result;
}

unint64_t sub_1D50266B8()
{
  result = qword_1EC7EE2F0;
  if (!qword_1EC7EE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2F0);
  }

  return result;
}

unint64_t sub_1D5026710()
{
  result = qword_1EC7EE2F8;
  if (!qword_1EC7EE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2F8);
  }

  return result;
}

unint64_t sub_1D5026768()
{
  result = qword_1EC7EE300;
  if (!qword_1EC7EE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE300);
  }

  return result;
}

unint64_t sub_1D50267C0()
{
  result = qword_1EC7EE308;
  if (!qword_1EC7EE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE308);
  }

  return result;
}

unint64_t sub_1D5026818()
{
  result = qword_1EC7EE310;
  if (!qword_1EC7EE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE310);
  }

  return result;
}

unint64_t sub_1D5026870()
{
  result = qword_1EC7EE318;
  if (!qword_1EC7EE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE318);
  }

  return result;
}

unint64_t sub_1D50268C8()
{
  result = qword_1EC7EE320;
  if (!qword_1EC7EE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE320);
  }

  return result;
}

unint64_t sub_1D5026920()
{
  result = qword_1EC7EE328;
  if (!qword_1EC7EE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE328);
  }

  return result;
}

unint64_t sub_1D5026978()
{
  result = qword_1EC7EE330;
  if (!qword_1EC7EE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE330);
  }

  return result;
}

unint64_t sub_1D50269D0()
{
  result = qword_1EC7EE338;
  if (!qword_1EC7EE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE338);
  }

  return result;
}

unint64_t sub_1D5026A28()
{
  result = qword_1EC7EE340;
  if (!qword_1EC7EE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE340);
  }

  return result;
}

unint64_t sub_1D5026A80()
{
  result = qword_1EC7EE348;
  if (!qword_1EC7EE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE348);
  }

  return result;
}

unint64_t sub_1D5026AD8()
{
  result = qword_1EC7EE350;
  if (!qword_1EC7EE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE350);
  }

  return result;
}

unint64_t sub_1D5026B30()
{
  result = qword_1EC7EE358;
  if (!qword_1EC7EE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE358);
  }

  return result;
}

unint64_t sub_1D5026B88()
{
  result = qword_1EC7EE360;
  if (!qword_1EC7EE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE360);
  }

  return result;
}

unint64_t sub_1D5026BE0()
{
  result = qword_1EC7EE368;
  if (!qword_1EC7EE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE368);
  }

  return result;
}

unint64_t sub_1D5026C38()
{
  result = qword_1EC7EE370;
  if (!qword_1EC7EE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE370);
  }

  return result;
}

unint64_t sub_1D5026C8C()
{
  result = qword_1EC7EE378;
  if (!qword_1EC7EE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE378);
  }

  return result;
}

uint64_t MusicLibrary.MovePinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5026D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v36 = *(a3 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v35 - v20;
  v35[1] = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 1;
    return result;
  }

  v35[0] = a5;
  v23 = *(a4 + 8);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v14 + 8))(v17, v13);
  v24 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
  {
    sub_1D4E6C9CC(v21, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v25 = sub_1D560D488();
    v27 = v26;
    (*(*(v24 - 8) + 8))(v21, v24);
    if (v25 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v27 == v28)
    {
    }

    else
    {
      v30 = sub_1D5616168();

      if ((v30 & 1) == 0)
      {
        v31 = 1;
        v32 = v35[0];
LABEL_19:
        *v32 = v31;
        return result;
      }
    }
  }

  (*(v36 + 16))(v12, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    result = sub_1D4E6C9CC(&v39, &qword_1EC7EC500, &unk_1D5621030);
LABEL_18:
    v32 = v35[0];
    v31 = 3;
    goto LABEL_19;
  }

  sub_1D4F69344(&v39, v42);
  v33 = v43;
  v34 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v34 + 16))(&v37, v33, v34);
  if (!v38)
  {
    sub_1D4E6C9CC(&v37, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_18;
  }

  sub_1D4F69344(&v37, &v39);
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  sub_1D4F60168();
  if (v37)
  {
    *v35[0] = 4;
  }

  else
  {
    *v35[0] = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_1D5027198()
{
  result = qword_1EC7EE380;
  if (!qword_1EC7EE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE380);
  }

  return result;
}

_BYTE *_s13MovePinActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s13MovePinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t VideoSupportedLocales.primary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return sub_1D4F0A60C(v6, &v5);
}

uint64_t static VideoSupportedLocales.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v24[0] = *a1;
  v24[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v24[2] = a1[2];
  v25[0] = v5;
  v7 = a2[2];
  v9 = *a2;
  v8 = a2[1];
  v25[1] = v6;
  v25[2] = v7;
  v21 = v4;
  v22 = v3;
  v23 = a1[2];
  v11 = *(a1 + 6);
  v10 = *(a1 + 7);
  v13 = *(a2 + 6);
  v12 = *(a2 + 7);
  v18 = v9;
  v19 = v8;
  v20 = a2[2];
  sub_1D4F0A60C(v24, v27);
  sub_1D4F0A60C(v25, v27);
  static VideoLocale.== infix(_:_:)(&v21, &v18);
  v15 = v14;
  v26[0] = v18;
  v26[1] = v19;
  v26[2] = v20;
  sub_1D4F0A668(v26);
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = v23;
  sub_1D4F0A668(v27);
  if (v15 & 1) != 0 && (sub_1D4EF9A90(v11, v13))
  {
    sub_1D4F286E0();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D50274C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697469646461 && a2 == 0xEA00000000006C61;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
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

uint64_t sub_1D50275E4(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x6E6F697469646461;
  }

  return 0x65756C6156776172;
}

uint64_t sub_1D502764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50274C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5027674(uint64_t a1)
{
  v2 = sub_1D5027930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50276B0(uint64_t a1)
{
  v2 = sub_1D5027930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoSupportedLocales.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE388, &qword_1D562AA70);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v13 = v1[2];
  v25 = v12;
  v26 = v13;
  v14 = *(v1 + 7);
  v27 = *(v1 + 6);
  v19 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F0A60C(&v24, v23);
  sub_1D5027930();
  sub_1D56163D8();
  v23[0] = v24;
  v23[1] = v25;
  v23[2] = v26;
  v22 = 0;
  sub_1D5027984();
  sub_1D56160C8();
  if (v2)
  {
    OUTLINED_FUNCTION_2_37();
  }

  else
  {
    v16 = v19;
    OUTLINED_FUNCTION_2_37();
    v21 = v27;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3A0, &unk_1D562AA78);
    sub_1D5027E68(&qword_1EC7EE3A8, sub_1D5027984);
    OUTLINED_FUNCTION_0_54();
    v21 = v16;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_0_54();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1D5027930()
{
  result = qword_1EC7EE390;
  if (!qword_1EC7EE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE390);
  }

  return result;
}

unint64_t sub_1D5027984()
{
  result = qword_1EC7EE398;
  if (!qword_1EC7EE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE398);
  }

  return result;
}

void VideoSupportedLocales.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_35();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  VideoLocale.hash(into:)();
  sub_1D4F07C6C(a1, v3);

  sub_1D4F31AC0();
}

uint64_t VideoSupportedLocales.hashValue.getter()
{
  OUTLINED_FUNCTION_5_35();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1D56162D8();
  VideoLocale.hash(into:)();
  sub_1D4F07C6C(v4, v1);
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t VideoSupportedLocales.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3B0, &qword_1D562AA88);
  v5 = OUTLINED_FUNCTION_4(v17);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5027930();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  sub_1D5027E14();
  sub_1D5615FD8();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3A0, &unk_1D562AA78);
  LOBYTE(v18[0]) = 1;
  sub_1D5027E68(&qword_1EC7EE3C0, sub_1D5027E14);
  OUTLINED_FUNCTION_3_43();
  sub_1D5615FD8();
  v16 = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v28 = 2;
  sub_1D4F31CF4();
  OUTLINED_FUNCTION_3_43();
  sub_1D5615FD8();
  v9 = OUTLINED_FUNCTION_1_51();
  v10(v9);
  v11 = v21;
  v12 = v26;
  v18[0] = v25;
  v18[1] = v26;
  v13 = v27;
  v18[2] = v27;
  *&v19 = v16;
  *(&v19 + 1) = v21;
  *a2 = v25;
  a2[1] = v12;
  v14 = v19;
  a2[2] = v13;
  a2[3] = v14;
  sub_1D5027EE0(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_4_34();
  v20[6] = v16;
  v20[7] = v11;
  return sub_1D5000CD8(v20);
}

uint64_t sub_1D5027DD8()
{
  sub_1D56162D8();
  VideoSupportedLocales.hash(into:)(v1);
  return sub_1D5616328();
}

unint64_t sub_1D5027E14()
{
  result = qword_1EC7EE3B8;
  if (!qword_1EC7EE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3B8);
  }

  return result;
}

uint64_t sub_1D5027E68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE3A0, &unk_1D562AA78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5027F1C()
{
  result = qword_1EC7EE3C8;
  if (!qword_1EC7EE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3C8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5027F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D5027FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoSupportedLocales.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5028104()
{
  result = qword_1EC7EE3D0;
  if (!qword_1EC7EE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3D0);
  }

  return result;
}

unint64_t sub_1D502815C()
{
  result = qword_1EC7EE3D8;
  if (!qword_1EC7EE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3D8);
  }

  return result;
}

unint64_t sub_1D50281B4()
{
  result = qword_1EC7EE3E0;
  if (!qword_1EC7EE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3E0);
  }

  return result;
}

uint64_t Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v162 = a1;
  v145 = a4;
  v161 = sub_1D5612B88();
  v6 = OUTLINED_FUNCTION_4(v161);
  v164 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE400, &qword_1D562ACD0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_3(&KeyPath - v16);
  v17 = sub_1D5610088();
  v18 = OUTLINED_FUNCTION_4(v17);
  v152 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v23 - v22);
  v160 = sub_1D560D838();
  v24 = OUTLINED_FUNCTION_4(v160);
  v159 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v29 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE408, &unk_1D56749E0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v163 = &KeyPath - v34;
  v155 = type metadata accessor for PlaylistFolderPropertyProvider();
  OUTLINED_FUNCTION_24_0(v155);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  v149 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &KeyPath - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_59_0();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &KeyPath - v51;
  v142 = sub_1D5612478();
  v53 = OUTLINED_FUNCTION_4(v142);
  v141 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v59 = v58 - v57;

  v146 = a2;
  sub_1D560F7E8();
  v60 = sub_1D5614438();
  OUTLINED_FUNCTION_1_52();
  v156 = sub_1D5029B2C(v61, v62);
  v157 = sub_1D5614C68();

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v17);
  sub_1D560FF68();
  v153 = v17;
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v17);
  v158 = v59;
  v66 = v162;
  sub_1D560D4D8();
  sub_1D4E7661C(v49, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v52, &qword_1EC7EA358, &unk_1D561DF50);
  v147 = a3;
  sub_1D4EC76A8(a3, v165);
  if (!v166)
  {
    sub_1D4E7661C(v165, &qword_1EC7EEC40, &unk_1D561C070);
    v167 = 0u;
    v168 = 0u;
    v169 = 0;
LABEL_8:
    v67 = v155;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    goto LABEL_8;
  }

  v67 = v155;
  if (!*(&v168 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v167, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v167, &v170);
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v68 = v163;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
    v69 = v149;
    sub_1D5029A38(v68, v149);
    sub_1D5029978(v69, v42);
    v70 = v69 + v67[12];
    v71 = v150;
    sub_1D560D718();
    (*(v159 + 40))(&v42[v67[12]], v71, v160);
    v72 = v151;
    sub_1D5612468();
    (*(v152 + 40))(&v42[v67[13]], v72, v153);
    v73 = sub_1D5612458();
    v75 = v74;
    sub_1D50299DC(v69);
    v76 = &v42[v67[14]];
    v77 = v76[1];

    *v76 = v73;
    v76[1] = v75;
    __swift_destroy_boxed_opaque_existential_1(&v170);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v67);
  sub_1D4E7661C(v68, &qword_1EC7EE408, &unk_1D56749E0);
  __swift_destroy_boxed_opaque_existential_1(&v170);
LABEL_10:
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = v67[5];
  v83 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = v67[6];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v83);
  v91 = v67[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = v67[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  (*(v159 + 16))(&v42[v67[12]], v66, v160);
  v101 = &v42[v67[13]];
  sub_1D5612468();
  v102 = sub_1D5612458();
  v104 = v103;
  sub_1D5614A88();
  v163 = OUTLINED_FUNCTION_2_38();
  v153 = OUTLINED_FUNCTION_2_38();
  v105 = OUTLINED_FUNCTION_2_38();
  v106 = OUTLINED_FUNCTION_2_38();
  v107 = &v42[v67[7]];
  *v107 = 0;
  *(v107 + 1) = 0;
  v108 = &v42[v67[8]];
  *v108 = 0;
  *(v108 + 1) = 0;
  if (qword_1EC7E9808 != -1)
  {
    swift_once();
  }

  v109 = qword_1EC87C748;
  if (qword_1EC87C748 >> 62)
  {
    sub_1D560CDE8();

    v139 = sub_1D5615E18();

    v109 = v139;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v42[v67[11]] = v109;
  v110 = &v42[v67[14]];
  *v110 = v102;
  v110[1] = v104;
  *&v42[v67[15]] = v163;
  *&v42[v67[16]] = v153;
  *&v42[v67[17]] = v105;
  *&v42[v67[18]] = v106;
LABEL_15:
  v111 = v42;
  swift_getKeyPath();
  v112 = *MEMORY[0x1E69771B8];
  OUTLINED_FUNCTION_24_0(v60);
  v150 = *(v113 + 104);
  v151 = v113 + 104;
  v114 = v143;
  v115 = OUTLINED_FUNCTION_15_30();
  v116(v115);
  OUTLINED_FUNCTION_3_44();
  LODWORD(v149) = *MEMORY[0x1E6976668];
  v117 = v164;
  v118 = *(v164 + 104);
  v163 = (v164 + 104);
  v119 = v144;
  v120 = v161;
  v118(v144);
  v148 = v118;
  v152 = sub_1D5029B2C(&qword_1EC7EE418, type metadata accessor for PlaylistFolderPropertyProvider);
  OUTLINED_FUNCTION_10_37();
  v154 = v111;
  sub_1D5610D68();

  v121 = *(v117 + 8);
  v164 = v117 + 8;
  v153 = v121;
  v121(v119, v120);
  sub_1D4E7661C(v114, &qword_1EC7EE400, &qword_1D562ACD0);
  swift_getKeyPath();
  v122 = *MEMORY[0x1E69771D0];
  v123 = OUTLINED_FUNCTION_15_30();
  v124 = v150;
  v150(v123);
  OUTLINED_FUNCTION_3_44();
  v125 = v149;
  (v118)(v119, v149, v120);
  OUTLINED_FUNCTION_10_37();
  sub_1D5610D68();

  v126 = v161;
  v153(v119, v161);
  sub_1D4E7661C(v114, &qword_1EC7EE400, &qword_1D562ACD0);
  KeyPath = swift_getKeyPath();
  v127 = *MEMORY[0x1E69771C0];
  v128 = OUTLINED_FUNCTION_15_30();
  v124(v128);
  OUTLINED_FUNCTION_3_44();
  v148(v119, v125, v126);
  v129 = v154;
  sub_1D5610D58();

  v130 = v153;
  v153(v119, v126);
  sub_1D4E7661C(v114, &qword_1EC7EE400, &qword_1D562ACD0);
  swift_getKeyPath();
  v131 = *MEMORY[0x1E69771C8];
  v132 = OUTLINED_FUNCTION_15_30();
  v150(v132);
  OUTLINED_FUNCTION_3_44();
  sub_1D560BD68();
  v148(v119, v149, v126);
  v133 = v152;
  sub_1D5610D88();

  v130(v119, v126);
  sub_1D4E7661C(v114, &qword_1EC7EE400, &qword_1D562ACD0);
  v171 = v155;
  v172 = v133;
  v134 = __swift_allocate_boxed_opaque_existential_0(&v170);
  sub_1D5029978(v129, v134);
  Playlist.Folder.init(propertyProvider:)(&v170, v145);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v147, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v159 + 8))(v162, v160);
  (*(v141 + 8))(v158, v142);
  return sub_1D50299DC(v129);
}

uint64_t Playlist.Folder.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v55 = v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = sub_1D5614438();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v58 = (v18 - v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v57 = v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v54 - v23;
  OUTLINED_FUNCTION_1_52();
  v54[1] = sub_1D5029B2C(v25, v26);
  v27 = sub_1D5614BD8();
  v28 = *MEMORY[0x1E69771E0];
  v59 = v15;
  v60 = *(v15 + 104);
  v60(v24, v28, v12);
  if (qword_1EC7E8D00 != -1)
  {
    swift_once();
  }

  v29 = sub_1D56140F8();
  v30 = sub_1D5029B2C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  sub_1D5029B2C(&qword_1EC7EE420, type metadata accessor for Playlist.Folder);
  v56 = v30;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v29);
  v61 = v0;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v11, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v29);
    (*(v32 + 8))(v11, v29);
    if (*(&v65 + 1))
    {
      OUTLINED_FUNCTION_12_33();
      OUTLINED_FUNCTION_4_35();
      sub_1D4F13A5C();
      v27 = v62;
      v33 = *(v59 + 8);
      v33(v24, v12);
      v34 = v55;
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v64, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E1E0();
  if (v36)
  {
    v37 = v35;
    swift_isUniquelyReferenced_nonNull_native();
    v62 = v27;
    v38 = *(v27 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
    sub_1D5615D78();
    v27 = v62;
    v33 = *(v59 + 8);
    v33((*(v62 + 48) + *(v59 + 72) * v37), v12);
    sub_1D4E519A8((*(v27 + 56) + 32 * v37), v63);
    sub_1D5615D98();
  }

  else
  {
    memset(v63, 0, sizeof(v63));
    v33 = *(v59 + 8);
  }

  v34 = v55;
  v33(v24, v12);
  sub_1D4E7661C(v63, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v60(v57, *MEMORY[0x1E69771B8], v12);
  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  v39 = sub_1D560C328();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v34, 1, v39) == 1)
  {
    sub_1D4E7661C(v34, &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F0E1E0();
    if (v41)
    {
      v42 = v40;
      swift_isUniquelyReferenced_nonNull_native();
      *&v63[0] = v27;
      v43 = *(v27 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
      v44 = v59;
      sub_1D5615D78();
      v45 = *&v63[0];
      v33((*(*&v63[0] + 48) + *(v44 + 72) * v42), v12);
      sub_1D4E519A8((*(v45 + 56) + 32 * v42), &v64);
      sub_1D5615D98();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v48 = OUTLINED_FUNCTION_11_36();
    (v33)(v48);
    sub_1D4E7661C(&v64, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    *(&v65 + 1) = v39;
    __swift_allocate_boxed_opaque_existential_0(&v64);
    OUTLINED_FUNCTION_24_0(v39);
    (*(v46 + 32))();
    OUTLINED_FUNCTION_12_33();
    OUTLINED_FUNCTION_4_35();
    sub_1D4F13A5C();
    v47 = OUTLINED_FUNCTION_11_36();
    (v33)(v47);
  }

  v49 = v58;
  v60(v58, *MEMORY[0x1E69771D0], v12);
  v50 = Playlist.Folder.name.getter();
  *(&v65 + 1) = MEMORY[0x1E69E6158];
  *&v64 = v50;
  *(&v64 + 1) = v51;
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_4_35();
  sub_1D4F13A5C();
  v52 = v62;
  v33(v49, v12);
  return v52;
}

uint64_t sub_1D5029698()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE3E8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE3E8);
  v2 = *MEMORY[0x1E6976808];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Folder.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE3E8);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Playlist.Folder.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976808];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D502983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5029B2C(&qword_1EC7EE430, type metadata accessor for Playlist.Folder);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D50298F0()
{
  sub_1D5029B2C(&qword_1EC7EE428, type metadata accessor for Playlist.Folder);

  return sub_1D56132F8();
}

uint64_t sub_1D5029978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistFolderPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50299DC(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistFolderPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}