uint64_t static MusicCreditsSection.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicCreditsSection() + 20);

  return sub_1D5611A78();
}

uint64_t MusicCreditsSection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicCreditsSection() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_5_39();
  sub_1D50416C4(v4, v5);
  return sub_1D5614CB8();
}

uint64_t MusicCreditsSection.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicCreditsSection() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_5_39();
  sub_1D50416C4(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503FE3C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D50416C4(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503FEE0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCreditsSection.subscript.getter(void *a1)
{
  return sub_1D503FF48(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D503FF48(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_2_43();
  sub_1D50416C4(v5, v1);
  OUTLINED_FUNCTION_7_39(&qword_1EC7EE848);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D503FF48(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_2_43();
  sub_1D50416C4(v5, v2);
  OUTLINED_FUNCTION_7_39(&qword_1EC7EE848);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5040138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  v12 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D504026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  v14 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D50403B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  v14 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5040538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  swift_getKeyPath();
  v6 = sub_1D560D178();

  *a5 = v6;
  return result;
}

uint64_t sub_1D50405C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D50416C4(&qword_1EC7EE8B8, type metadata accessor for CreditArtist);
  v0 = sub_1D560D0F8();

  qword_1EC7EE800 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.creditArtists.getter()
{
  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58();
  }
}

uint64_t sub_1D50406F4()
{
  sub_1D50416C4(&qword_1EC7EE850, type metadata accessor for MusicCreditsSection);

  return sub_1D5610C58();
}

uint64_t MusicCreditsSection.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicCreditsSection();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_3_49();
  sub_1D50416C4(v3, v4);
  OUTLINED_FUNCTION_4_39();
  sub_1D50416C4(v5, v1);
  OUTLINED_FUNCTION_6_41(&qword_1EC7EE870);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCreditsSection.encode(to:)()
{
  type metadata accessor for MusicCreditsSection();
  OUTLINED_FUNCTION_3_49();
  sub_1D50416C4(v1, v2);
  OUTLINED_FUNCTION_4_39();
  sub_1D50416C4(v3, v0);
  OUTLINED_FUNCTION_6_41(&qword_1EC7EE870);
  return sub_1D5612688();
}

uint64_t MusicCreditsSection.description.getter()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5682160);
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v4 = MusicCreditsSection.title.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x3A646E696B202C22, 0xEA00000000002220);
  v5 = MusicCreditsSection.kind.getter();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0;
}

unint64_t MusicCreditsSection.debugDescription.getter()
{
  v1 = type metadata accessor for CreditArtist();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE878, &qword_1D562CC58);
  v8 = OUTLINED_FUNCTION_14(v42);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v40 - v23;
  v53 = 0xD000000000000014;
  v54 = 0x80000001D5682180;
  strcpy(v50, "\n  id: ");
  BYTE1(v50[1]) = 0;
  WORD1(v50[1]) = 0;
  HIDWORD(v50[1]) = -402653184;
  v24 = *v0;
  v25 = v0[1];
  v26 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v26);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  strcpy(v50, ",\n  title: ");
  BYTE5(v50[1]) = 0;
  HIWORD(v50[1]) = -5120;
  v27 = MusicCreditsSection.title.getter();
  MEMORY[0x1DA6EAC70](v27);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  strcpy(v50, ",\n  kind: .");
  BYTE5(v50[1]) = 0;
  HIWORD(v50[1]) = -5120;
  v28 = MusicCreditsSection.kind.getter();
  MEMORY[0x1DA6EAC70](v28);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58();
  }

  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v29, type metadata accessor for MusicCreditsSection);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D4E50004(v16, &qword_1EC7EE880, &qword_1D562CC60);
  }

  else
  {
    v30 = v43;
    (*(v20 + 32))(v43, v16, v17);
    v51 = 0;
    v52 = 0xE000000000000000;
    v41 = v20;
    (*(v20 + 16))(v12, v30, v17);
    v31 = *(v42 + 36);
    sub_1D50410B0();
    sub_1D5615608();
    while (1)
    {
      sub_1D5615648();
      if (*&v12[v31] == v50[0])
      {
        break;
      }

      v32 = sub_1D5615688();
      sub_1D5041114(v33, v7);
      v32(v50, 0);
      sub_1D5615658();
      sub_1D5041178(v7, v5);
      v34 = v51 & 0xFFFFFFFFFFFFLL;
      if ((v52 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v52) & 0xF;
      }

      if (v34)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v50[0] = 10;
      v50[1] = 0xE100000000000000;
      v35 = CreditArtist.debugDescription.getter();
      MEMORY[0x1DA6EAC70](v35);

      MEMORY[0x1DA6EAC70](v50[0], v50[1]);

      sub_1D50411DC(v5);
    }

    sub_1D4E50004(v12, &qword_1EC7EE878, &qword_1D562CC58);
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v50, ",\n  artists: [");
    HIBYTE(v50[1]) = -18;
    v48 = v51;
    v49 = v52;
    v46 = 10;
    v47 = 0xE100000000000000;
    v44 = 0x202020200ALL;
    v45 = 0xE500000000000000;
    sub_1D4F53278();
    v36 = sub_1D5615968();
    v38 = v37;

    MEMORY[0x1DA6EAC70](v36, v38);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    MEMORY[0x1DA6EAC70](v50[0], v50[1]);

    (*(v41 + 8))(v43, v17);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v53;
}

unint64_t sub_1D50410B0()
{
  result = qword_1EC7EE888;
  if (!qword_1EC7EE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE888);
  }

  return result;
}

uint64_t sub_1D5041114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtist();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5041178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtist();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50411DC(uint64_t a1)
{
  v2 = type metadata accessor for CreditArtist();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5041240()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7EE808 = v4;
  return result;
}

uint64_t sub_1D504134C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6975228], v0);
  qword_1EC7EE810 = v4;
  return result;
}

uint64_t sub_1D5041460()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE818);
  __swift_project_value_buffer(v0, qword_1EC7EE818);
  type metadata accessor for MusicCreditsSection();
  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  return sub_1D560D988();
}

uint64_t sub_1D5041520()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE830);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE830);
  if (qword_1EC7E8C48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EE818);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D50416C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of MusicDonatableIntentRequest.containersToDonateForPlayback.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D4FBE984;

  return v9(a1, a2);
}

void RecentlyAddedMusicItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v95 = v3;
  v80 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_14(v80);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v81 = v7;
  OUTLINED_FUNCTION_70_0();
  v78 = type metadata accessor for TVSeason();
  v8 = OUTLINED_FUNCTION_14(v78);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v79 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5614898();
  v13 = OUTLINED_FUNCTION_4(v12);
  v83 = v14;
  v84 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v82 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D560EEA8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v86 = v20;
  v87 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v85 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D560D838();
  v25 = OUTLINED_FUNCTION_4(v24);
  v91 = v26;
  v92 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v90 = v29;
  OUTLINED_FUNCTION_70_0();
  v88 = type metadata accessor for MusicMovie();
  v30 = OUTLINED_FUNCTION_14(v88);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v89 = v33;
  OUTLINED_FUNCTION_70_0();
  v34 = sub_1D5613AF8();
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v40 = sub_1D5610088();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v77 - v47);
  v94 = type metadata accessor for RecentlyAddedMusicItem();
  v49 = OUTLINED_FUNCTION_14(v94);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v93 = v52;
  v53 = v2[3];
  v54 = v2[4];
  v96 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v53);
  sub_1D5610CF8();
  sub_1D560FFB8();
  sub_1D4E5E440(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
  v55 = OUTLINED_FUNCTION_19_30();
  v58 = *(v43 + 8);
  v56 = v43 + 8;
  v57 = v58;
  v59 = OUTLINED_FUNCTION_159_0();
  v58(v59);
  if (v55 & 1) != 0 || (sub_1D560FEA8(), v55 = OUTLINED_FUNCTION_19_30(), v60 = OUTLINED_FUNCTION_159_0(), v57(v60), (v55))
  {
    v61 = OUTLINED_FUNCTION_90_2();
    v57(v61);
    OUTLINED_FUNCTION_35_20();
    sub_1D5613978();
    v62 = *(v37 + 32);
    v63 = OUTLINED_FUNCTION_47_20();
    v64(v63);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1D5041F24(v55, v95, type metadata accessor for RecentlyAddedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FE28();
  OUTLINED_FUNCTION_19_30();
  v65 = OUTLINED_FUNCTION_20_38();
  v57(v65);
  if (v0)
  {
    v66 = OUTLINED_FUNCTION_90_2();
    v57(v66);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_26_26();
    v55 = v56;
    sub_1D560D708();
    v67 = OUTLINED_FUNCTION_25_29();
    v68(v67);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_2_44();
    OUTLINED_FUNCTION_56_11(v69, v70, v71);
    goto LABEL_4;
  }

  sub_1D560FE38();
  OUTLINED_FUNCTION_19_30();
  v72 = OUTLINED_FUNCTION_20_38();
  v57(v72);
  sub_1D5610038();
  OUTLINED_FUNCTION_19_30();
  v73 = OUTLINED_FUNCTION_20_38();
  v57(v73);
  sub_1D560FF58();
  OUTLINED_FUNCTION_19_30();
  v74 = OUTLINED_FUNCTION_20_38();
  v57(v74);
  sub_1D5610068();
  OUTLINED_FUNCTION_19_30();
  v75 = OUTLINED_FUNCTION_20_38();
  v57(v75);
  sub_1D560FF38();
  OUTLINED_FUNCTION_19_30();
  v76 = OUTLINED_FUNCTION_20_38();
  v57(v76);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D5041F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t RecentlyAddedMusicItem.id.getter()
{
  RecentlyAddedMusicItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t RecentlyAddedMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecentlyAddedMusicItem();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_98();
  sub_1D504221C(v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      a1[3] = type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_8_38();
      a1[4] = sub_1D4E5E440(v20, v21);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v17 = type metadata accessor for MusicMovie;
      goto LABEL_9;
    case 2u:
      v11 = sub_1D560EEA8();
      v12 = v11;
      v13 = MEMORY[0x1E69754B0];
      goto LABEL_6;
    case 3u:
      v11 = sub_1D5614898();
      v12 = v11;
      v13 = MEMORY[0x1E69773A0];
      goto LABEL_6;
    case 4u:
      a1[3] = type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_9_37();
      a1[4] = sub_1D4E5E440(v14, v15);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v17 = type metadata accessor for TVSeason;
      goto LABEL_9;
    case 5u:
      a1[3] = type metadata accessor for UploadedVideo();
      OUTLINED_FUNCTION_7_40();
      a1[4] = sub_1D4E5E440(v22, v23);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v17 = type metadata accessor for UploadedVideo;
LABEL_9:
      result = sub_1D5041F24(v8, boxed_opaque_existential_0, v17);
      break;
    default:
      v11 = sub_1D5613AF8();
      v12 = v11;
      v13 = MEMORY[0x1E6976CF0];
LABEL_6:
      a1[3] = v11;
      a1[4] = v13;
      v18 = __swift_allocate_boxed_opaque_existential_0(a1);
      result = (*(*(v12 - 8) + 32))(v18, v8, v12);
      break;
  }

  return result;
}

uint64_t sub_1D504221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void RecentlyAddedMusicItem.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v63 = v3;
  v61 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_14(v61);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v62 = v7;
  OUTLINED_FUNCTION_70_0();
  v59 = type metadata accessor for TVSeason();
  v8 = OUTLINED_FUNCTION_14(v59);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v60 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5614898();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v20 = type metadata accessor for MusicMovie();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v24 = sub_1D5613AF8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = OUTLINED_FUNCTION_44_13();
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  sub_1D504221C(v1, v35 - v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v36, v0, v49);
      v50 = *(v20 + 20);
      v51 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v51);
      (*(v52 + 16))(v63, v0 + v50);
      OUTLINED_FUNCTION_3_50();
      v54 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v43(v2, v36, v16);
      sub_1D560EDC8();
      (*(v0 + 8))(v2, v16);
      break;
    case 3u:
      v44 = OUTLINED_FUNCTION_63_9();
      v45(v44, v36, v0);
      sub_1D5614598();
      v46 = *(v20 + 8);
      v47 = OUTLINED_FUNCTION_59_2();
      v48(v47);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v37 = v60;
      sub_1D5041F24(v36, v60, v38);
      v39 = *(v59 + 20);
      v40 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v40);
      (*(v41 + 16))(v63, v60 + v39);
      v42 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v37 = v62;
      sub_1D5041F24(v36, v62, v55);
      v56 = *(v61 + 20);
      v57 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v57);
      (*(v58 + 16))(v63, v62 + v56);
      v42 = type metadata accessor for UploadedVideo;
LABEL_8:
      v53 = v42;
      v54 = v37;
LABEL_9:
      sub_1D5042E08(v54, v53);
      break;
    default:
      (*(v27 + 32))(v1, v36, v24);
      sub_1D5613968();
      (*(v27 + 8))(v1, v24);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void static RecentlyAddedMusicItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v113 = v2;
  v114 = v3;
  v101 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_14(v101);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v106 = v7;
  OUTLINED_FUNCTION_70_0();
  v100 = type metadata accessor for TVSeason();
  v8 = OUTLINED_FUNCTION_14(v100);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v105 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5614898();
  v13 = OUTLINED_FUNCTION_4(v12);
  v111 = v14;
  v112 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v104 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D560EEA8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v109 = v20;
  v110 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v102 = v23;
  OUTLINED_FUNCTION_70_0();
  v99 = type metadata accessor for MusicMovie();
  v24 = OUTLINED_FUNCTION_14(v99);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v103 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = sub_1D5613AF8();
  v29 = OUTLINED_FUNCTION_4(v28);
  v107 = v30;
  v108 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v33 = type metadata accessor for RecentlyAddedMusicItem();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v39 = (v37 - v38);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = (&v99 - v42);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_64_11();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v99 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = (&v99 - v49);
  MEMORY[0x1EEE9AC00](v48);
  v52 = (&v99 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8E8, &qword_1D562D020);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = &v99 - v58;
  v60 = *(v57 + 56);
  sub_1D504221C(v113, &v99 - v58);
  sub_1D504221C(v114, &v59[v60]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D504221C(v59, v50);
      if (OUTLINED_FUNCTION_55_12() != 1)
      {
        OUTLINED_FUNCTION_3_50();
        v88 = v50;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_2_44();
      v78 = v103;
      sub_1D5041F24(&v59[v60], v103, v79);
      v80 = *v50 == *v78 && v50[1] == v78[1];
      if (v80 || (sub_1D5616168() & 1) != 0)
      {
        v81 = *(v99 + 20);
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_29_24();
      sub_1D5042E08(v78, v82);
      v66 = v50;
      goto LABEL_44;
    case 2u:
      sub_1D504221C(v59, v47);
      if (OUTLINED_FUNCTION_55_12() == 2)
      {
        v67 = v109;
        OUTLINED_FUNCTION_48_10();
        v68 = v102;
        v69 = v110;
        v70(v102);
        sub_1D560EE28();
        v71 = *(v67 + 8);
        v71(v68, v69);
        v72 = v47;
        v73 = v69;
        goto LABEL_16;
      }

      (*(v109 + 8))(v47, v110);
      goto LABEL_38;
    case 3u:
      sub_1D504221C(v59, v0);
      if (OUTLINED_FUNCTION_55_12() != 3)
      {
        v89 = OUTLINED_FUNCTION_66_0();
        v91(v89, v90);
        goto LABEL_38;
      }

      v75 = v111;
      v74 = v112;
      OUTLINED_FUNCTION_48_10();
      v76 = v104;
      v77(v104);
      _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
      v71 = *(v75 + 8);
      v71(v76, v74);
      v72 = v0;
      v73 = v74;
LABEL_16:
      v71(v72, v73);
      goto LABEL_40;
    case 4u:
      sub_1D504221C(v59, v43);
      if (OUTLINED_FUNCTION_55_12() != 4)
      {
        OUTLINED_FUNCTION_32_20();
        v88 = v43;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_1_59();
      v61 = v105;
      sub_1D5041F24(&v59[v60], v105, v62);
      v63 = *v43 == *v61 && v43[1] == v61[1];
      if (v63 || (sub_1D5616168() & 1) != 0)
      {
        v64 = *(v100 + 20);
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_33_23();
      sub_1D5042E08(v61, v65);
      v66 = v43;
      goto LABEL_44;
    case 5u:
      sub_1D504221C(v59, v39);
      if (OUTLINED_FUNCTION_55_12() != 5)
      {
        OUTLINED_FUNCTION_16_30();
        v88 = v39;
LABEL_37:
        sub_1D5042E08(v88, v87);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_0_59();
      v83 = v106;
      sub_1D5041F24(&v59[v60], v106, v84);
      v85 = *v39 == *v83 && v39[1] == v83[1];
      if (v85 || (sub_1D5616168() & 1) != 0)
      {
        v86 = *(v101 + 20);
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_28_26();
      sub_1D5042E08(v83, v97);
      v66 = v39;
LABEL_44:
      sub_1D5042E08(v66, v52);
      OUTLINED_FUNCTION_10_40();
      sub_1D5042E08(v59, v98);
      break;
    default:
      sub_1D504221C(v59, v52);
      if (OUTLINED_FUNCTION_55_12())
      {
        (*(v107 + 8))(v52, v108);
LABEL_38:
        sub_1D4E50004(v59, &qword_1EC7EE8E8, &qword_1D562D020);
      }

      else
      {
        v92 = v107;
        OUTLINED_FUNCTION_48_10();
        v93 = v108;
        v94(v1);
        OUTLINED_FUNCTION_42_3();
        sub_1D5613A68();
        v95 = *(v92 + 8);
        v95(v1, v93);
        v95(v52, v93);
LABEL_40:
        OUTLINED_FUNCTION_10_40();
        sub_1D5042E08(v59, v96);
      }

      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5042E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5042E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4D636973756DLL && a2 == 0xEA00000000006569;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F736165537674 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D5043060(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x766F4D636973756DLL;
      break;
    case 2:
      result = 0x646956636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x6E6F736165537674;
      break;
    case 5:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5043128(uint64_t a1)
{
  v2 = sub_1D50441E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043164(uint64_t a1)
{
  v2 = sub_1D50441E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50431B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D504320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5042E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5043234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5043058();
  *a1 = result;
  return result;
}

uint64_t sub_1D504325C(uint64_t a1)
{
  v2 = sub_1D5043FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043298(uint64_t a1)
{
  v2 = sub_1D5043FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50432D4(uint64_t a1)
{
  v2 = sub_1D504418C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043310(uint64_t a1)
{
  v2 = sub_1D504418C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D504334C(uint64_t a1)
{
  v2 = sub_1D5044138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043388(uint64_t a1)
{
  v2 = sub_1D5044138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50433C4(uint64_t a1)
{
  v2 = sub_1D50440E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043400(uint64_t a1)
{
  v2 = sub_1D50440E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D504343C(uint64_t a1)
{
  v2 = sub_1D5044090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043478(uint64_t a1)
{
  v2 = sub_1D5044090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50434B4(uint64_t a1)
{
  v2 = sub_1D504403C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50434F0(uint64_t a1)
{
  v2 = sub_1D504403C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecentlyAddedMusicItem.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8F0, &qword_1D562D028);
  v3 = OUTLINED_FUNCTION_4(v2);
  v149 = v4;
  v150 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v148 = v8;
  OUTLINED_FUNCTION_70_0();
  v146 = type metadata accessor for UploadedVideo();
  v9 = OUTLINED_FUNCTION_14(v146);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v147 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8F8, &qword_1D562D030);
  v14 = OUTLINED_FUNCTION_4(v13);
  v144 = v15;
  v145 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v143 = v19;
  OUTLINED_FUNCTION_70_0();
  v141 = type metadata accessor for TVSeason();
  v20 = OUTLINED_FUNCTION_14(v141);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v142 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE900, &qword_1D562D038);
  v25 = OUTLINED_FUNCTION_4(v24);
  v139 = v26;
  v140 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v136 = v30;
  OUTLINED_FUNCTION_70_0();
  v31 = sub_1D5614898();
  v32 = OUTLINED_FUNCTION_4(v31);
  v137 = v33;
  v138 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v135 = v36;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE908, &qword_1D562D040);
  OUTLINED_FUNCTION_4(v134);
  v133 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v130 = v41;
  OUTLINED_FUNCTION_70_0();
  v132 = sub_1D560EEA8();
  v42 = OUTLINED_FUNCTION_4(v132);
  v131 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v129 = v46;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE910, &qword_1D562D048);
  OUTLINED_FUNCTION_4(v128);
  v127 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v126 = v51;
  OUTLINED_FUNCTION_70_0();
  v124 = type metadata accessor for MusicMovie();
  v52 = OUTLINED_FUNCTION_14(v124);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v125 = v55;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE918, &qword_1D562D050);
  OUTLINED_FUNCTION_4(v123);
  v122 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v121 - v60;
  v62 = sub_1D5613AF8();
  v63 = OUTLINED_FUNCTION_4(v62);
  v121 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  v69 = v68 - v67;
  v70 = type metadata accessor for RecentlyAddedMusicItem();
  v71 = OUTLINED_FUNCTION_14(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v76 = v75 - v74;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE920, &qword_1D562D058);
  v78 = OUTLINED_FUNCTION_4(v77);
  v152 = v79;
  v153 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v121 - v83;
  v86 = *(a1 + 24);
  v85 = *(a1 + 32);
  v87 = OUTLINED_FUNCTION_42_3();
  __swift_project_boxed_opaque_existential_1(v87, v88);
  sub_1D5043FE8();
  v151 = v84;
  sub_1D56163D8();
  sub_1D504221C(v154, v76);
  OUTLINED_FUNCTION_210();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = v125;
      sub_1D5041F24(v76, v125, type metadata accessor for MusicMovie);
      v156 = 1;
      sub_1D504418C();
      v110 = v126;
      OUTLINED_FUNCTION_54_10();
      OUTLINED_FUNCTION_8_38();
      sub_1D4E5E440(v111, v112);
      v113 = v128;
      sub_1D56160C8();
      (*(v127 + 8))(v110, v113);
      v98 = type metadata accessor for MusicMovie;
      goto LABEL_8;
    case 2u:
      v99 = v131;
      v100 = v129;
      v101 = v132;
      (*(v131 + 32))(v129, v76, v132);
      v157 = 2;
      sub_1D5044138();
      OUTLINED_FUNCTION_22_25();
      OUTLINED_FUNCTION_18_31();
      sub_1D4E5E440(v102, v103);
      OUTLINED_FUNCTION_67_11();
      v104 = v133;
      goto LABEL_6;
    case 3u:
      v99 = v137;
      v101 = v138;
      v100 = v135;
      (*(v137 + 32))(v135, v76, v138);
      v158 = 3;
      sub_1D50440E4();
      OUTLINED_FUNCTION_22_25();
      OUTLINED_FUNCTION_17_30();
      sub_1D4E5E440(v105, v106);
      OUTLINED_FUNCTION_67_11();
      v104 = v139;
LABEL_6:
      v107 = *(v104 + 8);
      v108 = OUTLINED_FUNCTION_59_2();
      v109(v108);
      (*(v99 + 8))(v100, v101);
      return (*(v152 + 8))(v84, v85);
    case 4u:
      v93 = v142;
      sub_1D5041F24(v76, v142, type metadata accessor for TVSeason);
      v159 = 4;
      sub_1D5044090();
      v94 = v143;
      OUTLINED_FUNCTION_54_10();
      OUTLINED_FUNCTION_9_37();
      sub_1D4E5E440(v95, v96);
      v97 = v145;
      sub_1D56160C8();
      (*(v144 + 8))(v94, v97);
      v98 = type metadata accessor for TVSeason;
LABEL_8:
      sub_1D5042E08(v93, v98);
      return (*(v152 + 8))(v61, v62);
    case 5u:
      v115 = v147;
      sub_1D5041F24(v76, v147, type metadata accessor for UploadedVideo);
      v160 = 5;
      sub_1D504403C();
      v116 = v148;
      OUTLINED_FUNCTION_22_25();
      OUTLINED_FUNCTION_7_40();
      sub_1D4E5E440(v117, v118);
      v119 = v150;
      sub_1D56160C8();
      (*(v149 + 8))(v116, v119);
      OUTLINED_FUNCTION_16_30();
      sub_1D5042E08(v115, v120);
      return (*(v152 + 8))(v84, v85);
    default:
      v89 = v121;
      (*(v121 + 32))(v69, v76, v62);
      v155 = 0;
      sub_1D50441E0();
      OUTLINED_FUNCTION_22_25();
      OUTLINED_FUNCTION_13_32();
      sub_1D4E5E440(v90, v91);
      v92 = v123;
      sub_1D56160C8();
      (*(v122 + 8))(v61, v92);
      (*(v89 + 8))(v69, v62);
      return (*(v152 + 8))(v84, v85);
  }
}

unint64_t sub_1D5043FE8()
{
  result = qword_1EC7EE928;
  if (!qword_1EC7EE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE928);
  }

  return result;
}

unint64_t sub_1D504403C()
{
  result = qword_1EC7EE930;
  if (!qword_1EC7EE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE930);
  }

  return result;
}

unint64_t sub_1D5044090()
{
  result = qword_1EC7EE940;
  if (!qword_1EC7EE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE940);
  }

  return result;
}

unint64_t sub_1D50440E4()
{
  result = qword_1EC7EE950;
  if (!qword_1EC7EE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE950);
  }

  return result;
}

unint64_t sub_1D5044138()
{
  result = qword_1EC7EE960;
  if (!qword_1EC7EE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE960);
  }

  return result;
}

unint64_t sub_1D504418C()
{
  result = qword_1EC7EE970;
  if (!qword_1EC7EE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE970);
  }

  return result;
}

unint64_t sub_1D50441E0()
{
  result = qword_1EC7EE980;
  if (!qword_1EC7EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE980);
  }

  return result;
}

void RecentlyAddedMusicItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v77 = v1;
  v75 = type metadata accessor for UploadedVideo();
  v3 = OUTLINED_FUNCTION_14(v75);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v76 = v6;
  OUTLINED_FUNCTION_70_0();
  v73 = type metadata accessor for TVSeason();
  v7 = OUTLINED_FUNCTION_14(v73);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v74 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v15 = sub_1D560EEA8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v19 = type metadata accessor for MusicMovie();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v23 = sub_1D5613AF8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = type metadata accessor for RecentlyAddedMusicItem();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_1D504221C(v77, v37 - v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v38, v0, v59);
      MEMORY[0x1DA6EC0D0](1);
      v60 = *v0;
      v61 = v0[1];
      sub_1D5614E28();
      v62 = *(v19 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v63, v64);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_3_50();
      v66 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v49(v2, v38, v15);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_18_31();
      sub_1D4E5E440(v50, v51);
      sub_1D5614CB8();
      (v0[1])(v2, v15);
      break;
    case 3u:
      v52 = OUTLINED_FUNCTION_63_9();
      v53(v52, v38, v0);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_17_30();
      sub_1D4E5E440(v54, v55);
      sub_1D5614CB8();
      v56 = *(v31 + 8);
      v57 = OUTLINED_FUNCTION_59_2();
      v58(v57);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v41 = v74;
      sub_1D5041F24(v38, v74, v42);
      MEMORY[0x1DA6EC0D0](4);
      v43 = *v74;
      v44 = v74[1];
      sub_1D5614E28();
      v45 = *(v73 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v46, v47);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v48 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v41 = v76;
      sub_1D5041F24(v38, v76, v67);
      MEMORY[0x1DA6EC0D0](5);
      v68 = *v76;
      v69 = v76[1];
      sub_1D5614E28();
      v70 = *(v75 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v71, v72);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v48 = type metadata accessor for UploadedVideo;
LABEL_8:
      v65 = v48;
      v66 = v41;
LABEL_9:
      sub_1D5042E08(v66, v65);
      break;
    default:
      (*(v26 + 32))(v31, v38, v23);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_13_32();
      sub_1D4E5E440(v39, v40);
      sub_1D5614CB8();
      (*(v26 + 8))(v31, v23);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t RecentlyAddedMusicItem.hashValue.getter()
{
  sub_1D56162D8();
  RecentlyAddedMusicItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t RecentlyAddedMusicItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE990, &qword_1D562D060);
  OUTLINED_FUNCTION_4(v145);
  v151 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v159 = v8;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE998, &qword_1D562D068);
  OUTLINED_FUNCTION_4(v144);
  v150 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v155 = v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9A0, &qword_1D562D070);
  OUTLINED_FUNCTION_4(v143);
  v149 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v154 = v18;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9A8, &qword_1D562D078);
  OUTLINED_FUNCTION_4(v142);
  v148 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v158 = v23;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9B0, &qword_1D562D080);
  OUTLINED_FUNCTION_4(v141);
  v147 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v153 = v28;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9B8, &qword_1D562D088);
  OUTLINED_FUNCTION_4(v140);
  v146 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v152 = v33;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9C0, &qword_1D562D090);
  OUTLINED_FUNCTION_4(v161);
  v157 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v131 - v38;
  v160 = type metadata accessor for RecentlyAddedMusicItem();
  v40 = OUTLINED_FUNCTION_14(v160);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  v139 = v43 - v44;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v138 = &v131 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v131 - v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_64_11();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v131 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v131 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v131 - v58;
  v61 = a1[3];
  v60 = a1[4];
  v162 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_1D5043FE8();
  v62 = v163;
  sub_1D5616398();
  if (v62)
  {
    goto LABEL_10;
  }

  v136 = v54;
  v134 = v2;
  v135 = v50;
  v137 = v57;
  v63 = v158;
  v163 = v59;
  v64 = v161;
  v65 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v65, 0);
  if (v68 == v69 >> 1)
  {
    v70 = v39;
    v71 = v157;
LABEL_9:
    OUTLINED_FUNCTION_65_0();
    v81 = sub_1D5615C18();
    swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v83 = v63;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69E6AF8], v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v70, v64);
LABEL_10:
    v85 = v162;
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v133 = 0;
  if (v68 < (v69 >> 1))
  {
    v132 = *(v67 + v68);
    sub_1D4FE35EC(v68 + 1, v69 >> 1, result, v67, v68, v69);
    v73 = v72;
    v75 = v74;
    swift_unknownObjectRelease();
    v76 = v163;
    if (v73 == v75 >> 1)
    {
      v77 = v156;
      switch(v132)
      {
        case 1:
          v165 = 1;
          sub_1D504418C();
          v89 = v161;
          OUTLINED_FUNCTION_36_17();
          type metadata accessor for MusicMovie();
          OUTLINED_FUNCTION_8_38();
          sub_1D4E5E440(v96, v97);
          OUTLINED_FUNCTION_57_6();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_66_0();
          v122(v121, v89);
          v123 = OUTLINED_FUNCTION_12_5();
          v124(v123);
          v125 = v136;
          swift_storeEnumTagMultiPayload();
          v120 = v125;
          v119 = v162;
          break;
        case 2:
          v166 = 2;
          sub_1D5044138();
          OUTLINED_FUNCTION_36_17();
          sub_1D560EEA8();
          OUTLINED_FUNCTION_18_31();
          sub_1D4E5E440(v90, v91);
          v92 = v134;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v105 = *(v148 + 8);
          v106 = OUTLINED_FUNCTION_42_3();
          v107(v106);
          v108 = OUTLINED_FUNCTION_12_5();
          v109(v108);
          swift_storeEnumTagMultiPayload();
          v120 = v92;
          goto LABEL_18;
        case 3:
          v167 = 3;
          sub_1D50440E4();
          OUTLINED_FUNCTION_36_17();
          OUTLINED_FUNCTION_65_0();
          sub_1D5614898();
          OUTLINED_FUNCTION_17_30();
          sub_1D4E5E440(v93, v94);
          v95 = v135;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_62_15();
          v111(v110);
          v112 = OUTLINED_FUNCTION_12_5();
          v113(v112);
          OUTLINED_FUNCTION_90_2();
          swift_storeEnumTagMultiPayload();
          v120 = v95;
          v119 = v162;
          v76 = v163;
          break;
        case 4:
          v168 = 4;
          sub_1D5044090();
          v86 = v161;
          OUTLINED_FUNCTION_36_17();
          OUTLINED_FUNCTION_65_0();
          type metadata accessor for TVSeason();
          OUTLINED_FUNCTION_9_37();
          sub_1D4E5E440(v87, v88);
          OUTLINED_FUNCTION_58_9(&v170);
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v100 = *(v150 + 8);
          v101 = OUTLINED_FUNCTION_42_3();
          v102(v101);
          v103 = OUTLINED_FUNCTION_12_5();
          v104(v103);
          OUTLINED_FUNCTION_210();
          goto LABEL_17;
        case 5:
          v169 = 5;
          sub_1D504403C();
          v86 = v161;
          OUTLINED_FUNCTION_36_17();
          OUTLINED_FUNCTION_65_0();
          type metadata accessor for UploadedVideo();
          OUTLINED_FUNCTION_7_40();
          sub_1D4E5E440(v98, v99);
          OUTLINED_FUNCTION_58_9(&v171);
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v126 = *(v151 + 8);
          v127 = OUTLINED_FUNCTION_42_3();
          v128(v127);
          v129 = OUTLINED_FUNCTION_12_5();
          v130(v129);
          OUTLINED_FUNCTION_210();
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v120 = v86;
LABEL_18:
          v119 = v162;
          v77 = v156;
          break;
        default:
          v164 = 0;
          sub_1D50441E0();
          v78 = v161;
          OUTLINED_FUNCTION_36_17();
          sub_1D5613AF8();
          OUTLINED_FUNCTION_13_32();
          sub_1D4E5E440(v79, v80);
          OUTLINED_FUNCTION_57_6();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_66_0();
          v115(v114, v78);
          v116 = OUTLINED_FUNCTION_12_5();
          v117(v116);
          v118 = v137;
          swift_storeEnumTagMultiPayload();
          v119 = v162;
          v120 = v118;
          break;
      }

      sub_1D5041F24(v120, v76, type metadata accessor for RecentlyAddedMusicItem);
      sub_1D5041F24(v76, v77, type metadata accessor for RecentlyAddedMusicItem);
      v85 = v119;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v70 = v39;
    v71 = v157;
    v64 = v161;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D50454B8()
{
  sub_1D56162D8();
  RecentlyAddedMusicItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50454F4@<X0>(uint64_t *a1@<X8>)
{
  result = RecentlyAddedMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void RecentlyAddedMusicItem.cloudEndpointKind.getter()
{
  OUTLINED_FUNCTION_47();
  v62 = type metadata accessor for UploadedVideo();
  v5 = OUTLINED_FUNCTION_14(v62);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v61 = v8;
  OUTLINED_FUNCTION_70_0();
  v60 = type metadata accessor for TVSeason();
  v9 = OUTLINED_FUNCTION_14(v60);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v59 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D5614898();
  v14 = OUTLINED_FUNCTION_4(v13);
  v57 = v15;
  v58 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v18 = sub_1D560EEA8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v22 = type metadata accessor for MusicMovie();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v26 = sub_1D5613AF8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = OUTLINED_FUNCTION_44_13();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      v50 = OUTLINED_FUNCTION_98();
      sub_1D5041F24(v50, v51, v52);
      sub_1D4E5E440(&qword_1EC7EE9D8, type metadata accessor for MusicMovie);
      sub_1D4E5E440(&qword_1EDD59300, type metadata accessor for MusicMovie);
      sub_1D5610C58();
      OUTLINED_FUNCTION_3_50();
      v54 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v43(v3, v2, v18);
      sub_1D5610C58();
      v44 = *(v0 + 8);
      v45 = OUTLINED_FUNCTION_159_0();
      v46(v45);
      break;
    case 3u:
      (*(v57 + 32))(v4, v2, v58);
      sub_1D5610C58();
      v47 = *(v57 + 8);
      v48 = OUTLINED_FUNCTION_59_2();
      v49(v48);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v39 = v2;
      v40 = v59;
      sub_1D5041F24(v39, v59, v41);
      sub_1D4E5E440(&qword_1EC7EE9D0, type metadata accessor for TVSeason);
      sub_1D4E5E440(&qword_1EC7EA3C8, type metadata accessor for TVSeason);
      sub_1D5610C58();
      v42 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v55 = v2;
      v40 = v61;
      sub_1D5041F24(v55, v61, v56);
      sub_1D4E5E440(&qword_1EC7EE9C8, type metadata accessor for UploadedVideo);
      sub_1D4E5E440(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
      sub_1D5610C58();
      v42 = type metadata accessor for UploadedVideo;
LABEL_8:
      v53 = v42;
      v54 = v40;
LABEL_9:
      sub_1D5042E08(v54, v53);
      break;
    default:
      v37 = OUTLINED_FUNCTION_51_14(v29);
      v38(v37);
      sub_1D5610C58();
      (*(v29 + 8))(v1, v26);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void RecentlyAddedMusicItem.supportsFilteredByEquivalencies.getter()
{
  OUTLINED_FUNCTION_47();
  v65 = type metadata accessor for UploadedVideo();
  v3 = OUTLINED_FUNCTION_14(v65);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v64 = v6;
  OUTLINED_FUNCTION_70_0();
  v63 = type metadata accessor for TVSeason();
  v7 = OUTLINED_FUNCTION_14(v63);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v62 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v11);
  v60 = v13;
  v61 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_1D560EEA8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v59 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for MusicMovie();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v31 = sub_1D5613AF8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v37 = OUTLINED_FUNCTION_44_13();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      v49 = OUTLINED_FUNCTION_98();
      sub_1D5041F24(v49, v50, v51);
      OUTLINED_FUNCTION_8_38();
      sub_1D4E5E440(v52, v53);
      sub_1D5610C78();
      OUTLINED_FUNCTION_3_50();
      v55 = v0;
      goto LABEL_9;
    case 2u:
      (*(v59 + 32))(v26, v2, v19);
      sub_1D560EE48();
      (*(v59 + 8))(v26, v19);
      break;
    case 3u:
      (*(v60 + 32))(v18, v2, v61);
      sub_1D5610C78();
      (*(v60 + 8))(v18, v61);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v44 = v62;
      sub_1D5041F24(v2, v62, v45);
      OUTLINED_FUNCTION_9_37();
      sub_1D4E5E440(v46, v47);
      sub_1D5610C78();
      v48 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v44 = v64;
      sub_1D5041F24(v2, v64, v56);
      OUTLINED_FUNCTION_7_40();
      sub_1D4E5E440(v57, v58);
      sub_1D5610C78();
      v48 = type metadata accessor for UploadedVideo;
LABEL_8:
      v54 = v48;
      v55 = v44;
LABEL_9:
      sub_1D5042E08(v55, v54);
      break;
    default:
      v42 = OUTLINED_FUNCTION_51_14(v34);
      v43(v42);
      sub_1D5613A88();
      (*(v34 + 8))(v1, v31);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void RecentlyAddedMusicItem.itemToPin.getter()
{
  OUTLINED_FUNCTION_47();
  v43 = v0;
  v4 = v3;
  v5 = sub_1D5614898();
  v6 = OUTLINED_FUNCTION_4(v5);
  v42 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560EEA8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v18 = sub_1D5613AF8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v24 = type metadata accessor for RecentlyAddedMusicItem();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  sub_1D504221C(v43, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 5u:
      sub_1D4E50004(v4, &qword_1EC7EC500, &unk_1D5621030);
      OUTLINED_FUNCTION_10_40();
      sub_1D5042E08(v30, v31);
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0;
      goto LABEL_7;
    case 2u:
      v37 = *(v41 + 32);
      v38 = OUTLINED_FUNCTION_159_0();
      v37(v38);
      *(&v45 + 1) = v13;
      v46 = &protocol witness table for MusicVideo;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (v37)(boxed_opaque_existential_0, v1, v13);
      goto LABEL_6;
    case 3u:
      v35 = *(v42 + 32);
      v35(v12, v30, v5);
      *(&v45 + 1) = v5;
      v46 = &protocol witness table for Playlist;
      v36 = __swift_allocate_boxed_opaque_existential_0(&v44);
      v35(v36, v12, v5);
      goto LABEL_6;
    default:
      v32 = *(v21 + 32);
      v33 = OUTLINED_FUNCTION_210();
      v32(v33);
      *(&v45 + 1) = v18;
      v46 = &protocol witness table for Album;
      v34 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (v32)(v34, v2, v18);
LABEL_6:
      sub_1D4E50004(v4, &qword_1EC7EC500, &unk_1D5621030);
      v40 = v45;
      *v4 = v44;
      *(v4 + 16) = v40;
      *(v4 + 32) = v46;
LABEL_7:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void RecentlyAddedMusicItem.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v58 = v3;
  v4 = type metadata accessor for UploadedVideo();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v57 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for TVSeason();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D5614898();
  v17 = OUTLINED_FUNCTION_4(v16);
  v55 = v18;
  v56 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v21 = sub_1D560EEA8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v54 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v26 = type metadata accessor for MusicMovie();
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_1D5613AF8();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v39 = OUTLINED_FUNCTION_44_13();
  v40 = OUTLINED_FUNCTION_14(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v43);
  OUTLINED_FUNCTION_98();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v0, v32, v52);
      MusicMovie.siriRepresentation.getter(v58);
      OUTLINED_FUNCTION_3_50();
      v51 = v32;
      goto LABEL_8;
    case 2u:
      (*(v54 + 32))(v2, v0, v21);
      MusicVideo.siriRepresentation.getter(v58);
      (*(v54 + 8))(v2, v21);
      break;
    case 3u:
      (*(v55 + 32))(v1, v0, v56);
      Playlist.siriRepresentation.getter();
      (*(v55 + 8))(v1, v56);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      sub_1D5041F24(v0, v15, v49);
      TVSeason.siriRepresentation.getter(v58);
      OUTLINED_FUNCTION_32_20();
      v51 = v15;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      sub_1D5041F24(v0, v57, v53);
      UploadedVideo.siriRepresentation.getter(v58);
      OUTLINED_FUNCTION_16_30();
      v51 = v57;
LABEL_8:
      sub_1D5042E08(v51, v50);
      break;
    default:
      v44 = OUTLINED_FUNCTION_51_14(v36);
      v45(v44);
      Album.siriRepresentation.getter();
      v46 = *(v36 + 8);
      v47 = OUTLINED_FUNCTION_42_3();
      v48(v47);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D504654C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7EE8C0 = v4;
  return result;
}

uint64_t sub_1D50466B0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD5CD58);
  __swift_project_value_buffer(v0, qword_1EDD5CD58);
  type metadata accessor for RecentlyAddedMusicItem();
  sub_1D4E5E440(&qword_1EDD5CD30, type metadata accessor for RecentlyAddedMusicItem);
  return sub_1D560D988();
}

uint64_t sub_1D5046770()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE8C8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE8C8);
  if (qword_1EDD5CD50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDD5CD58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D504685C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D562D010;
  v5 = v4 + v3;
  sub_1D560D908();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5 + v2, v6, v0);
  sub_1D560D878();
  sub_1D560D968();
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C60);
  v7(v5 + 4 * v2, v8, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 5 * v2, v9, v0);
  qword_1EC7EE8E0 = v4;
  return result;
}

uint64_t sub_1D5046AD4(uint64_t a1)
{
  result = sub_1D4E5E440(&qword_1EC7EE9E0, type metadata accessor for RecentlyAddedMusicItem);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentlyAddedMusicItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5046D10(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D5046DC0()
{
  result = qword_1EC7EE9E8;
  if (!qword_1EC7EE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9E8);
  }

  return result;
}

unint64_t sub_1D5046E18()
{
  result = qword_1EC7EE9F0;
  if (!qword_1EC7EE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9F0);
  }

  return result;
}

unint64_t sub_1D5046E70()
{
  result = qword_1EC7EE9F8;
  if (!qword_1EC7EE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9F8);
  }

  return result;
}

unint64_t sub_1D5046EC8()
{
  result = qword_1EC7EEA00;
  if (!qword_1EC7EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA00);
  }

  return result;
}

unint64_t sub_1D5046F20()
{
  result = qword_1EC7EEA08;
  if (!qword_1EC7EEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA08);
  }

  return result;
}

unint64_t sub_1D5046F78()
{
  result = qword_1EC7EEA10;
  if (!qword_1EC7EEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA10);
  }

  return result;
}

unint64_t sub_1D5046FD0()
{
  result = qword_1EC7EEA18;
  if (!qword_1EC7EEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA18);
  }

  return result;
}

unint64_t sub_1D5047028()
{
  result = qword_1EC7EEA20;
  if (!qword_1EC7EEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA20);
  }

  return result;
}

unint64_t sub_1D5047080()
{
  result = qword_1EC7EEA28;
  if (!qword_1EC7EEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA28);
  }

  return result;
}

unint64_t sub_1D50470D8()
{
  result = qword_1EC7EEA30;
  if (!qword_1EC7EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA30);
  }

  return result;
}

unint64_t sub_1D5047130()
{
  result = qword_1EC7EEA38;
  if (!qword_1EC7EEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA38);
  }

  return result;
}

unint64_t sub_1D5047188()
{
  result = qword_1EC7EEA40;
  if (!qword_1EC7EEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA40);
  }

  return result;
}

unint64_t sub_1D50471E0()
{
  result = qword_1EC7EEA48;
  if (!qword_1EC7EEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA48);
  }

  return result;
}

unint64_t sub_1D5047238()
{
  result = qword_1EC7EEA50;
  if (!qword_1EC7EEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA50);
  }

  return result;
}

unint64_t sub_1D5047290()
{
  result = qword_1EC7EEA58;
  if (!qword_1EC7EEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA58);
  }

  return result;
}

unint64_t sub_1D50472E8()
{
  result = qword_1EC7EEA60;
  if (!qword_1EC7EEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA60);
  }

  return result;
}

unint64_t sub_1D5047340()
{
  result = qword_1EC7EEA68;
  if (!qword_1EC7EEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA68);
  }

  return result;
}

unint64_t sub_1D5047398()
{
  result = qword_1EC7EEA70;
  if (!qword_1EC7EEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA70);
  }

  return result;
}

unint64_t sub_1D50473F0()
{
  result = qword_1EC7EEA78;
  if (!qword_1EC7EEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA78);
  }

  return result;
}

unint64_t sub_1D5047448()
{
  result = qword_1EC7EEA80;
  if (!qword_1EC7EEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA80);
  }

  return result;
}

unint64_t sub_1D50474A0()
{
  result = qword_1EC7EEA88;
  if (!qword_1EC7EEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentlyAddedMusicItem.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50475D4()
{
  result = qword_1EC7EEA90;
  if (!qword_1EC7EEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA90);
  }

  return result;
}

unint64_t sub_1D504762C()
{
  result = qword_1EC7EEA98;
  if (!qword_1EC7EEA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EEAA0, qword_1D562DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_29()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_67_11()
{
  v2 = *(v0 - 104);

  return sub_1D56160C8();
}

uint64_t sub_1D5047780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + a2 - 32);
  v6 = *(a1 + a2 - 16);
  sub_1D560E678();
  result = MusicLibrarySectionedRequest.library.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D50477CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *a1;

  v7 = *(v4 - 32);
  v8 = *(v4 - 16);
  sub_1D560E678();
  return MusicLibrarySectionedRequest.library.setter();
}

uint64_t (*MusicLibrarySectionedRequest.library.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvg_0();
  return sub_1D5047878;
}

uint64_t sub_1D5047878(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }

  else
  {
    v7 = *a1;
    return _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }
}

uint64_t (*MusicLibrarySectionedRequest.wantsDetailedLibraryResponse.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE013wantsDetailedC8ResponseSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047930;
}

uint64_t (*MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D504799C;
}

uint64_t (*MusicLibrarySectionedRequest.includeNonLibraryAddedContent.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE010includeNonC12AddedContentSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047A08;
}

uint64_t (*MusicLibrarySectionedRequest.excludeNonPinnedItems.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE21excludeNonPinnedItemsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047A74;
}

uint64_t (*MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25excludeNonPinnedPlaylistsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047AE0;
}

uint64_t sub_1D5047B08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = OUTLINED_FUNCTION_59_11(a1 + a2);
  result = a3(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D5047B58(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = OUTLINED_FUNCTION_59_11(a3 + a4);
  return a5(v6, v7);
}

uint64_t (*MusicLibrarySectionedRequest.deferIdentifierResolution.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25deferIdentifierResolutionSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047BEC;
}

void MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v33 = v2;
  v34 = v1;
  v4 = v3;
  v5 = v1;
  v7 = (*v6 + *MEMORY[0x1E69E77B0]);
  v36 = *(v7[1] + 16);
  v8 = *(v36 + 16);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v35 = v14;
  v15 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45();
  v37 = *(v4 + 24);
  v38 = *v7;
  v39 = *(*(v33 + 8) + 8);
  OUTLINED_FUNCTION_35_21();
  v21 = *(v10 + 16);
  v21(v0, v5, v8);
  v22 = *MEMORY[0x1E69750A0];
  v23 = *(v17 + 104);
  v24 = OUTLINED_FUNCTION_41_18();
  v25(v24);

  sub_1D560F178();

  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v26);
  sub_1D56151F8();
  v27 = OUTLINED_FUNCTION_20_11();
  v15(v27);
  v28 = sub_1D560E588();
  v30 = v29;
  sub_1D4EFF488();
  v31 = *(*v30 + 16);
  sub_1D4EFF6F0();
  v21(v35, v34, v8);
  sub_1D504A434(v31, v35, v30, v8, *(v36 + 24));
  v32 = OUTLINED_FUNCTION_20_11();
  v28(v32);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39(v3);
  v5 = (v4 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 + 1);
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v16 = *v5;
  OUTLINED_FUNCTION_9_38(*(v2 + 24));
  v17 = OUTLINED_FUNCTION_39_15();
  v5(v17);
  v18 = *MEMORY[0x1E6975090];
  v19 = *(v12 + 104);
  v20 = OUTLINED_FUNCTION_41_18();
  v21(v20);

  OUTLINED_FUNCTION_63_10();

  OUTLINED_FUNCTION_54_11();
  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v22);
  OUTLINED_FUNCTION_64_12();
  v23 = OUTLINED_FUNCTION_23_27();
  v10(v23);
  v24 = OUTLINED_FUNCTION_50_12();
  v5(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (OUTLINED_FUNCTION_44_14())
  {
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_49_11();
    sub_1D560E588();
    OUTLINED_FUNCTION_24_4();
    sub_1D4EFF488();
    OUTLINED_FUNCTION_19_31(*v0);
    sub_1D4EFF6F0();
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_1_0();
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v27);
    v29 = OUTLINED_FUNCTION_3_51(v28, v32);
    v30(v29);
    OUTLINED_FUNCTION_15_7();
    __swift_destroy_boxed_opaque_existential_1(v33);
    v31 = OUTLINED_FUNCTION_24_26();
    v5(v31);

    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {

    OUTLINED_FUNCTION_12_2();
    sub_1D4E7661C(v33, &qword_1EC7EEC40, &unk_1D561C070);
  }

  OUTLINED_FUNCTION_46();
}

{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39(v3);
  v5 = (v4 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 + 1);
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v16 = *v5;
  OUTLINED_FUNCTION_9_38(*(v2 + 24));
  v17 = OUTLINED_FUNCTION_31_22();
  v5(v17);
  v18 = *MEMORY[0x1E6975090];
  v19 = *(v12 + 104);
  v20 = OUTLINED_FUNCTION_41_18();
  v21(v20);

  OUTLINED_FUNCTION_63_10();

  OUTLINED_FUNCTION_40_19();
  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v22);
  OUTLINED_FUNCTION_64_12();
  v23 = OUTLINED_FUNCTION_23_27();
  v10(v23);
  v24 = OUTLINED_FUNCTION_140_3();
  v5(v24);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v6 + 16)) == 1)
  {

    v25 = OUTLINED_FUNCTION_55_13();
    v26(v25);
    OUTLINED_FUNCTION_12_2();
LABEL_8:
    sub_1D4E7661C(v35, &qword_1EC7EEC40, &unk_1D561C070);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_45_14() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  if (!v35[3])
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_49_11();
  sub_1D560E588();
  OUTLINED_FUNCTION_24_4();
  sub_1D4EFF488();
  OUTLINED_FUNCTION_19_31(*v0);
  sub_1D4EFF6F0();
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_1_0();
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = OUTLINED_FUNCTION_3_51(v30, v34);
  v32(v31);
  OUTLINED_FUNCTION_15_7();
  __swift_destroy_boxed_opaque_existential_1(v35);
  v33 = OUTLINED_FUNCTION_24_26();
  (v2)(v33);

  __swift_destroy_boxed_opaque_existential_1(&v36);
LABEL_9:
  OUTLINED_FUNCTION_46();
}

void sub_1D5048448()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40(v4);
  v6 = v5 + *MEMORY[0x1E69E77B0];
  v7 = OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 24));
  OUTLINED_FUNCTION_35_21();
  *v3 = v2;
  v11 = *MEMORY[0x1E6975098];
  v12 = OUTLINED_FUNCTION_21_26();
  v13(v12);

  OUTLINED_FUNCTION_61_15();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v0(v15);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_13();
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_56_12();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_0(v5);
  (*(v10 + 16))(v3, v1, v5);
  v11 = *MEMORY[0x1E6975090];
  v12 = OUTLINED_FUNCTION_48_11();
  v13(v12);
  OUTLINED_FUNCTION_62_16();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v0(v15);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_52_12();
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_56_12();
  swift_getKeyPath();
  *v3 = v1;
  v10 = *MEMORY[0x1E6975098];
  v11 = OUTLINED_FUNCTION_48_11();
  v12(v11);

  OUTLINED_FUNCTION_62_16();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v13 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v13);
  OUTLINED_FUNCTION_36_0();
  v14 = OUTLINED_FUNCTION_20_11();
  v0(v14);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.includeItems<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40(v5);
  v7 = v6 + *MEMORY[0x1E69E77B0];
  v8 = OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 24));
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_24_0(v3);
  (*(v12 + 16))(v4, v2, v3);
  v13 = *MEMORY[0x1E6975090];
  v14 = OUTLINED_FUNCTION_21_26();
  v15(v14);

  OUTLINED_FUNCTION_61_15();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v16 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v16);
  OUTLINED_FUNCTION_36_0();
  v17 = OUTLINED_FUNCTION_20_11();
  v0(v17);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39(v3);
  v5 = (v4 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 + 1);
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v16 = *v5;
  OUTLINED_FUNCTION_9_38(*(v2 + 16));
  v17 = OUTLINED_FUNCTION_39_15();
  v5(v17);
  v18 = *MEMORY[0x1E6975090];
  v19 = *(v12 + 104);
  v20 = OUTLINED_FUNCTION_41_18();
  v21(v20);

  OUTLINED_FUNCTION_63_10();

  OUTLINED_FUNCTION_54_11();
  sub_1D560E578();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v22);
  OUTLINED_FUNCTION_64_12();
  v23 = OUTLINED_FUNCTION_23_27();
  v10(v23);
  v24 = OUTLINED_FUNCTION_50_12();
  v5(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (OUTLINED_FUNCTION_44_14())
  {
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_49_11();
    sub_1D560E588();
    OUTLINED_FUNCTION_24_4();
    sub_1D4EFF488();
    OUTLINED_FUNCTION_19_31(*v0);
    sub_1D4EFF6F0();
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_1_0();
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v27);
    v29 = OUTLINED_FUNCTION_3_51(v28, v32);
    v30(v29);
    OUTLINED_FUNCTION_15_7();
    __swift_destroy_boxed_opaque_existential_1(v33);
    v31 = OUTLINED_FUNCTION_24_26();
    v5(v31);

    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {

    OUTLINED_FUNCTION_12_2();
    sub_1D4E7661C(v33, &qword_1EC7EEC40, &unk_1D561C070);
  }

  OUTLINED_FUNCTION_46();
}

{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39(v3);
  v5 = (v4 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 + 1);
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v16 = *v5;
  OUTLINED_FUNCTION_9_38(*(v2 + 16));
  v17 = OUTLINED_FUNCTION_31_22();
  v5(v17);
  v18 = *MEMORY[0x1E6975090];
  v19 = *(v12 + 104);
  v20 = OUTLINED_FUNCTION_41_18();
  v21(v20);

  OUTLINED_FUNCTION_63_10();

  OUTLINED_FUNCTION_40_19();
  sub_1D560E578();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v22);
  OUTLINED_FUNCTION_64_12();
  v23 = OUTLINED_FUNCTION_23_27();
  v10(v23);
  v24 = OUTLINED_FUNCTION_140_3();
  v5(v24);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v6 + 16)) == 1)
  {

    v25 = OUTLINED_FUNCTION_55_13();
    v26(v25);
    OUTLINED_FUNCTION_12_2();
LABEL_8:
    sub_1D4E7661C(v35, &qword_1EC7EEC40, &unk_1D561C070);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_45_14() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  if (!v35[3])
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_49_11();
  sub_1D560E588();
  OUTLINED_FUNCTION_24_4();
  sub_1D4EFF488();
  OUTLINED_FUNCTION_19_31(*v0);
  sub_1D4EFF6F0();
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_1_0();
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = OUTLINED_FUNCTION_3_51(v30, v34);
  v32(v31);
  OUTLINED_FUNCTION_15_7();
  __swift_destroy_boxed_opaque_existential_1(v35);
  v33 = OUTLINED_FUNCTION_24_26();
  (v2)(v33);

  __swift_destroy_boxed_opaque_existential_1(&v36);
LABEL_9:
  OUTLINED_FUNCTION_46();
}

void sub_1D5048F34()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40(v4);
  v6 = v5 + *MEMORY[0x1E69E77B0];
  v7 = OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 16));
  OUTLINED_FUNCTION_35_21();
  *v3 = v2;
  v11 = *MEMORY[0x1E6975098];
  v12 = OUTLINED_FUNCTION_21_26();
  v13(v12);

  OUTLINED_FUNCTION_61_15();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v0(v15);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v26[0] = v0;
  v2 = v1;
  v4 = (*v3 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4[1] + 16);
  v6 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = *v4;
  v26[2] = *(v2 + 16);
  v26[3] = v14;
  v26[4] = v5;
  v26[5] = MEMORY[0x1E6976CF0];
  OUTLINED_FUNCTION_35_21();
  v15 = *(v5 + 16);
  v16 = sub_1D504A3C8(v15, v15);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = *(v15 - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  swift_allocObject();
  sub_1D5615198();
  (*(v19 + 16))(v22, v26[0], v15);
  sub_1D56152D8();
  v23 = *(v5 + 24);
  sub_1D560D9F8();
  (*(v8 + 104))(v13, *MEMORY[0x1E69750A0], v6);

  sub_1D560F178();

  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v24 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v24);
  OUTLINED_FUNCTION_36_0();
  v25 = OUTLINED_FUNCTION_20_11();
  ((v8 + 104))(v25);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_13();
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_42_17();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_0(v5);
  (*(v10 + 16))(v3, v1, v5);
  v11 = *MEMORY[0x1E6975090];
  v12 = OUTLINED_FUNCTION_48_11();
  v13(v12);
  OUTLINED_FUNCTION_62_16();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v0(v15);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_52_12();
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_42_17();
  swift_getKeyPath();
  *v3 = v1;
  v10 = *MEMORY[0x1E6975098];
  v11 = OUTLINED_FUNCTION_48_11();
  v12(v11);

  OUTLINED_FUNCTION_62_16();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v13 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v13);
  OUTLINED_FUNCTION_36_0();
  v14 = OUTLINED_FUNCTION_20_11();
  v0(v14);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40(v5);
  v7 = v6 + *MEMORY[0x1E69E77B0];
  v8 = OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 16));
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_24_0(v3);
  (*(v12 + 16))(v4, v2, v3);
  v13 = *MEMORY[0x1E6975090];
  v14 = OUTLINED_FUNCTION_21_26();
  v15(v14);

  OUTLINED_FUNCTION_61_15();

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v16 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v16);
  OUTLINED_FUNCTION_36_0();
  v17 = OUTLINED_FUNCTION_20_11();
  v0(v17);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50496A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t))
{
  v7 = *(*a1 + *MEMORY[0x1E69E77B0]);
  sub_1D560DE18();

  sub_1D560DE28();

  a5(v10, a3);
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  sub_1D56151F8();
  a5(v10, 0);
}

uint64_t sub_1D5049798()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t MusicLibrarySectionedRequest.containersToDonateForPlayback.getter(uint64_t a1, double a2, int64x2_t a3)
{
  *(v4 + 328) = a1;
  *(v4 + 336) = v3;
  v6 = *(a1 + 16);
  *(v4 + 344) = v6;
  a3.i64[0] = v6;
  v17 = *(a1 + 32);
  v18 = vzip1q_s64(a3, *(a1 + 24));
  *(v4 + 256) = v18;
  *(v4 + 272) = v17;
  *(v4 + 352) = sub_1D560DDA8();
  v7 = sub_1D56158D8();
  *(v4 + 360) = v7;
  v8 = *(v7 - 8);
  *(v4 + 368) = v8;
  v9 = *(v8 + 64);
  *(v4 + 376) = OUTLINED_FUNCTION_127();
  v10 = *(*(v6 - 8) + 64);
  *(v4 + 384) = OUTLINED_FUNCTION_127();
  *(v4 + 288) = v18;
  *(v4 + 304) = v17;
  v11 = sub_1D560E768();
  *(v4 + 392) = v11;
  v12 = *(v11 - 8);
  *(v4 + 400) = v12;
  v13 = *(v12 + 64);
  *(v4 + 408) = OUTLINED_FUNCTION_127();
  v14 = *(a1 - 8);
  *(v4 + 416) = v14;
  v15 = *(v14 + 64);
  *(v4 + 424) = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D5049A40, 0, 0);
}

uint64_t sub_1D5049A40()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = sub_1D560E598();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D4E628D4(v5, v0 + 16);
      sub_1D4E48324((v0 + 16), v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_1D4E48324((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = *(v6 + 16);
            sub_1D4F01348();
            v6 = v9;
          }

          v7 = *(v6 + 16);
          if (v7 >= *(v6 + 24) >> 1)
          {
            sub_1D4F01348();
            v6 = v10;
          }

          *(v6 + 16) = v7 + 1;
          sub_1D4E48324((v0 + 56), v6 + 40 * v7 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_1D4E7661C(v0 + 96, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_12:
      v5 += 40;
      if (!--v4)
      {

        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v11 = *(v0 + 424);
  if (*(v6 + 16))
  {
    v12 = *(v0 + 408);
    v14 = *(v0 + 376);
    v13 = *(v0 + 384);
    v15 = *(v0 + 424);

    v16 = OUTLINED_FUNCTION_51_15();

    return v17(v16);
  }

  else
  {
    v19 = *(v0 + 416);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);

    (*(v19 + 16))(v11, v20, v21);
    _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
    v22 = *(MEMORY[0x1E6975348] + 4);
    v23 = swift_task_alloc();
    *(v0 + 432) = v23;
    *v23 = v0;
    v23[1] = sub_1D5049D20;
    v24 = *(v0 + 424);
    v25 = *(v0 + 408);
    v26 = *(v0 + 328);

    return MEMORY[0x1EEDCEF40](v25, v26);
  }
}

uint64_t sub_1D5049D20()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v5 + 440) = v0;

  if (v0)
  {
    v6 = sub_1D504A190;
  }

  else
  {
    v6 = sub_1D5049E2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5049E2C()
{
  v5 = *(v1 + 408);
  v6 = *(v1 + 392);
  v7 = *(v1 + 352);
  sub_1D560E758();
  v8 = sub_1D5615208();

  if (v8 != 1)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + 408);
  v10 = *(v1 + 392);
  v11 = *(v1 + 376);
  v0 = *(v1 + 352);
  v2 = sub_1D560E758();
  *(v1 + 320) = v2;
  sub_1D56152D8();
  swift_getWitnessTable();
  sub_1D5615668();

  if (__swift_getEnumTagSinglePayload(v11, 1, v0) == 1)
  {
    (*(*(v1 + 368) + 8))(*(v1 + 376), *(v1 + 360));
  }

  else
  {
    v13 = *(v1 + 376);
    v12 = *(v1 + 384);
    v2 = *(v1 + 344);
    v0 = *(v1 + 352);
    _s8MusicKit0A14LibrarySectionV0aB8InternalE4itemxvg_0();
    OUTLINED_FUNCTION_24_0(v0);
    (*(v14 + 8))(v13, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
    if (swift_dynamicCast())
    {
      if (*(v1 + 240))
      {
        OUTLINED_FUNCTION_58_10();
        sub_1D4E48324((v1 + 216), v1 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0E8, &unk_1D561DE90);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1D561C050;
        sub_1D4E48324((v1 + 176), v15 + 32);
        (*(v4 + 8))(v0, v2);
        v16 = *(v3 + 8);
        v17 = OUTLINED_FUNCTION_140_3();
        v18(v17);
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

  *(v1 + 248) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 216) = 0u;
LABEL_8:
  sub_1D4E7661C(v1 + 216, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_9:
  if (qword_1EDD544B0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EDD76AF0);
  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();
  if (os_log_type_enabled(v20, v21))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_1D4E3F000, v20, v21, "Skipping donation for MusicLibrarySectionedRequest because the response has more than one section.", v0, 2u);
    MEMORY[0x1DA6ED200](v0, -1, -1);
  }

  OUTLINED_FUNCTION_58_10();

  (*(v4 + 8))(v0, v2);
  v22 = *(v3 + 8);
  v23 = OUTLINED_FUNCTION_140_3();
  v24(v23);
LABEL_14:
  v25 = *(v1 + 424);
  v26 = *(v1 + 408);
  v28 = *(v1 + 376);
  v27 = *(v1 + 384);

  v29 = OUTLINED_FUNCTION_51_15();

  return v30(v29);
}

uint64_t sub_1D504A190()
{
  v1 = v0[51];
  v3 = v0[47];
  v2 = v0[48];
  (*(v0[52] + 8))(v0[53], v0[41]);

  v4 = v0[1];
  v5 = v0[55];

  return v4();
}

uint64_t sub_1D504A23C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D504A2D0;

  return MusicLibrarySectionedRequest.containersToDonateForPlayback.getter(a1, v4, v5);
}

uint64_t sub_1D504A2D0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_1D504A3C8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  }

  else
  {

    return sub_1D5616108();
  }
}

uint64_t sub_1D504A434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  __swift_allocate_boxed_opaque_existential_0(&v11);
  OUTLINED_FUNCTION_24_0(a4);
  (*(v8 + 32))();
  v9 = *a3;
  *(v9 + 16) = a1 + 1;
  return sub_1D4E48324(&v11, v9 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_31_22()
{
  *(v2 - 216) = v1;
  v3 = *(v1 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_33_24()
{
  v2 = *(v0 + 8);

  return sub_1D560DDF8();
}

uint64_t OUTLINED_FUNCTION_34_21()
{

  return sub_1D560DDF8();
}

__n128 OUTLINED_FUNCTION_42_17()
{
  *(v2 - 160) = v1;
  result = *(v0 + 24);
  *(v2 - 152) = result;
  v4 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_12@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1D4E6C078(v2);
}

void OUTLINED_FUNCTION_47_21()
{

  JUMPOUT(0x1DA6EAF30);
}

uint64_t OUTLINED_FUNCTION_61_15()
{

  return sub_1D560F178();
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return sub_1D560F178();
}

_BYTE *storeEnumTagSinglePayload for CloudVideoCapability(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D504A720()
{
  result = qword_1EC7EEAB0;
  if (!qword_1EC7EEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAB0);
  }

  return result;
}

uint64_t sub_1D504A774()
{
  v2 = *v0;
  if ((*v0 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v1 = 1;
  sub_1D4F00CFC();
  v3 = v4;
  v5 = *(v4 + 16);
  v0 = (v5 + 1);
  if (v5 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_60();
    v3 = v9;
  }

  *(v3 + 16) = v0;
  *(v3 + v5 + 32) = 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v10;
    }

    OUTLINED_FUNCTION_2_45();
    if (v6)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v11;
    }

    *(v3 + 16) = v0;
    *(v3 + v1 + 32) = 2;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v12;
    }

    OUTLINED_FUNCTION_2_45();
    if (v6)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v13;
    }

    *(v3 + 16) = v0;
    *(v3 + v1 + 32) = 3;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        return v3;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_60();
    v3 = v14;
  }

  OUTLINED_FUNCTION_2_45();
  if (v6)
  {
    OUTLINED_FUNCTION_0_60();
    v3 = v15;
  }

  *(v3 + 16) = v0;
  *(v3 + v1 + 32) = 4;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v16;
    }

    v7 = *(v3 + 16);
    if (v7 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v17;
    }

    *(v3 + 16) = v7 + 1;
    *(v3 + v7 + 32) = 0;
  }

  return v3;
}

uint64_t sub_1D504A914()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D504A960(char a1)
{
  result = 17459;
  switch(a1)
  {
    case 1:
      result = 19252;
      break;
    case 2:
      result = 5391432;
      break;
    case 3:
      result = 0x6D744179626C6F64;
      break;
    case 4:
      result = 0x73695679626C6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D504A9E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D504A914();
  *a2 = result;
  return result;
}

uint64_t sub_1D504AA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D504A960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D504AB28()
{
  result = qword_1EC7EEAB8;
  if (!qword_1EC7EEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAB8);
  }

  return result;
}

unint64_t sub_1D504AB8C()
{
  result = qword_1EC7EEAC0;
  if (!qword_1EC7EEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAC0);
  }

  return result;
}

uint64_t sub_1D504ABE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void GenericMusicItem.propertyProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v245 = v26;
  v246 = v20;
  v243 = type metadata accessor for UnknownMusicItem();
  v27 = OUTLINED_FUNCTION_14(v243);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v244 = v30;
  OUTLINED_FUNCTION_70_0();
  v241 = type metadata accessor for UploadedVideo();
  v31 = OUTLINED_FUNCTION_14(v241);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v242 = v34;
  OUTLINED_FUNCTION_70_0();
  v239 = type metadata accessor for UploadedAudio();
  v35 = OUTLINED_FUNCTION_14(v239);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v240 = v38;
  OUTLINED_FUNCTION_70_0();
  v237 = type metadata accessor for TVShow();
  v39 = OUTLINED_FUNCTION_14(v237);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v238 = v42;
  OUTLINED_FUNCTION_70_0();
  v235 = type metadata accessor for TVSeason();
  v43 = OUTLINED_FUNCTION_14(v235);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v236 = v46;
  OUTLINED_FUNCTION_70_0();
  v233 = type metadata accessor for TVEpisode();
  v47 = OUTLINED_FUNCTION_14(v233);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v234 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D5614408();
  v52 = OUTLINED_FUNCTION_4(v51);
  v231 = v53;
  v232 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D5613838();
  v57 = OUTLINED_FUNCTION_4(v56);
  v229 = v58;
  v230 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v61 = type metadata accessor for SocialProfile();
  v62 = OUTLINED_FUNCTION_20(v61, &a18);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  v228 = v65;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D560F8B8();
  v67 = OUTLINED_FUNCTION_12_0(v66, &a17);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D5614B68();
  v72 = OUTLINED_FUNCTION_12_0(v71, &a14);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = type metadata accessor for Playlist.Folder();
  v77 = OUTLINED_FUNCTION_20(v76, &a10);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v80);
  v81 = sub_1D5614898();
  v82 = OUTLINED_FUNCTION_12_0(v81, &a9);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = sub_1D560EEA8();
  v87 = OUTLINED_FUNCTION_12_0(v86, &v245);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v91 = type metadata accessor for MusicMovie();
  v92 = OUTLINED_FUNCTION_20(v91, &v241);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D5613C48();
  v97 = OUTLINED_FUNCTION_12_0(v96, &v240);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v100);
  v101 = type metadata accessor for EditorialItem();
  v102 = OUTLINED_FUNCTION_20(v101, &v236);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D56141F8();
  v107 = OUTLINED_FUNCTION_12_0(v106, &v235);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v110);
  v111 = type metadata accessor for CreditArtist();
  v112 = OUTLINED_FUNCTION_14(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v115);
  v116 = type metadata accessor for Composer();
  v117 = OUTLINED_FUNCTION_14(v116);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v120 = sub_1D5613EF8();
  v121 = OUTLINED_FUNCTION_4(v120);
  v227 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v125 = sub_1D5613AF8();
  v126 = OUTLINED_FUNCTION_4(v125);
  v128 = v127;
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_23_7();
  v131 = type metadata accessor for GenericMusicItem();
  v132 = OUTLINED_FUNCTION_14(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  sub_1D4F26680(v246, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v171(v23, v22, v120);
      sub_1D5613E18();
      (*(v227 + 8))(v23, v120);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v22, v21, v150);
      v151 = *(v116 + 20);
      v152 = sub_1D5611AB8();
      OUTLINED_FUNCTION_3_36(v152);
      (*(v153 + 16))(v245, v21 + v151);
      OUTLINED_FUNCTION_13_33();
      v155 = v21;
      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_123_3(v22, v158, &v232);
      v159 = *(v111 + 20);
      v160 = sub_1D5611AB8();
      OUTLINED_FUNCTION_3_36(v160);
      v162 = *(v161 + 16);
      v163 = OUTLINED_FUNCTION_84_5();
      v164(v163);
      v143 = type metadata accessor for CreditArtist;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_30_19(&v234);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v147();
      sub_1D5614158();
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v22, v184, &v237);
      v185 = OUTLINED_FUNCTION_130_5(&v236);
      OUTLINED_FUNCTION_3_36(v185);
      v187 = *(v186 + 16);
      v188 = OUTLINED_FUNCTION_84_5();
      v189(v188);
      v143 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19(&v239);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v203();
      sub_1D5613B98();
      goto LABEL_24;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v22, v165, &v242);
      v166 = OUTLINED_FUNCTION_130_5(&v241);
      OUTLINED_FUNCTION_3_36(v166);
      v168 = *(v167 + 16);
      v169 = OUTLINED_FUNCTION_84_5();
      v170(v169);
      v143 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19(&v244);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v216();
      sub_1D560EDC8();
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_30_19(&v247);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v149();
      sub_1D5614598();
      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v22, v210, &a11);
      v211 = OUTLINED_FUNCTION_130_5(&a10);
      OUTLINED_FUNCTION_3_36(v211);
      v213 = *(v212 + 16);
      v214 = OUTLINED_FUNCTION_84_5();
      v215(v214);
      v143 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_30_19(&a13);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v146();
      sub_1D5614AC8();
      goto LABEL_24;
    case 0xCu:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v148();
      sub_1D560F828();
      goto LABEL_24;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v20 = v228;
      sub_1D50572C4(v22, v228, v197);
      v198 = OUTLINED_FUNCTION_130_5(&a18);
      OUTLINED_FUNCTION_3_36(v198);
      v200 = *(v199 + 16);
      v201 = OUTLINED_FUNCTION_84_5();
      v202(v201);
      v143 = type metadata accessor for SocialProfile;
      goto LABEL_26;
    case 0xEu:
      v21 = v229;
      v144 = OUTLINED_FUNCTION_45_15();
      v145(v144, v22, v230);
      sub_1D56136D8();
      goto LABEL_24;
    case 0xFu:
      v21 = v231;
      v156 = OUTLINED_FUNCTION_45_15();
      v157(v156, v22, v232);
      sub_1D5614278();
LABEL_24:
      v217 = *(v21 + 8);
      v218 = OUTLINED_FUNCTION_159();
      v219(v218);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v20 = v234;
      sub_1D50572C4(v22, v234, v137);
      v138 = OUTLINED_FUNCTION_138_5(v233);
      OUTLINED_FUNCTION_3_36(v138);
      v140 = *(v139 + 16);
      v141 = OUTLINED_FUNCTION_84_5();
      v142(v141);
      v143 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v20 = v236;
      sub_1D50572C4(v22, v236, v172);
      v173 = OUTLINED_FUNCTION_138_5(v235);
      OUTLINED_FUNCTION_3_36(v173);
      v175 = *(v174 + 16);
      v176 = OUTLINED_FUNCTION_84_5();
      v177(v176);
      v143 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v20 = v238;
      sub_1D50572C4(v22, v238, v204);
      v205 = OUTLINED_FUNCTION_138_5(v237);
      OUTLINED_FUNCTION_3_36(v205);
      v207 = *(v206 + 16);
      v208 = OUTLINED_FUNCTION_84_5();
      v209(v208);
      v143 = type metadata accessor for TVShow;
      goto LABEL_26;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_162_3(v22, v220, v221);
      v222 = OUTLINED_FUNCTION_138_5(v239);
      OUTLINED_FUNCTION_3_36(v222);
      v224 = *(v223 + 16);
      v225 = OUTLINED_FUNCTION_84_5();
      v226(v225);
      v143 = type metadata accessor for UploadedAudio;
      goto LABEL_26;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v20 = v242;
      sub_1D50572C4(v22, v242, v178);
      v179 = OUTLINED_FUNCTION_138_5(v241);
      OUTLINED_FUNCTION_3_36(v179);
      v181 = *(v180 + 16);
      v182 = OUTLINED_FUNCTION_84_5();
      v183(v182);
      v143 = type metadata accessor for UploadedVideo;
      goto LABEL_26;
    case 0x15u:
      v190 = *v22;
      v191 = v22[1];
      v20 = v244;
      sub_1D4FD2984(v244);
      v192 = OUTLINED_FUNCTION_138_5(v243);
      OUTLINED_FUNCTION_3_36(v192);
      v194 = *(v193 + 16);
      v195 = OUTLINED_FUNCTION_84_5();
      v196(v195);
      v143 = type metadata accessor for UnknownMusicItem;
LABEL_26:
      v154 = v143;
      v155 = v20;
LABEL_27:
      sub_1D504CF98(v155, v154);
      break;
    default:
      v135 = OUTLINED_FUNCTION_46_13(v128);
      v136(v135);
      sub_1D5613968();
      (*(v128 + 8))(v20, v125);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t GenericMusicItem.id.getter()
{
  GenericMusicItem.innerItem.getter(v1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_128();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t GenericMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GenericMusicItem();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = OUTLINED_FUNCTION_98();
  sub_1D4F26680(v9, v10);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = sub_1D5613EF8();
      v12 = v11;
      v13 = MEMORY[0x1E6976EF8];
      goto LABEL_23;
    case 2u:
      a1[3] = type metadata accessor for Composer();
      OUTLINED_FUNCTION_100_4();
      v21 = sub_1D50573F4(v19, v20);
      v17 = OUTLINED_FUNCTION_104_0(v21);
      v18 = type metadata accessor for Composer;
      goto LABEL_25;
    case 3u:
      a1[3] = type metadata accessor for CreditArtist();
      OUTLINED_FUNCTION_99_6();
      v24 = sub_1D50573F4(v22, v23);
      v17 = OUTLINED_FUNCTION_104_0(v24);
      v18 = type metadata accessor for CreditArtist;
      goto LABEL_25;
    case 4u:
      v11 = sub_1D56141F8();
      v12 = v11;
      v13 = MEMORY[0x1E6977018];
      goto LABEL_23;
    case 5u:
      a1[3] = type metadata accessor for EditorialItem();
      OUTLINED_FUNCTION_95_6();
      v36 = sub_1D50573F4(v34, v35);
      v17 = OUTLINED_FUNCTION_104_0(v36);
      v18 = type metadata accessor for EditorialItem;
      goto LABEL_25;
    case 6u:
      v11 = sub_1D5613C48();
      v12 = v11;
      v13 = MEMORY[0x1E6976DA0];
      goto LABEL_23;
    case 7u:
      a1[3] = type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_98_5();
      v27 = sub_1D50573F4(v25, v26);
      v17 = OUTLINED_FUNCTION_104_0(v27);
      v18 = type metadata accessor for MusicMovie;
      goto LABEL_25;
    case 8u:
      v11 = sub_1D560EEA8();
      v12 = v11;
      v13 = MEMORY[0x1E69754B0];
      goto LABEL_23;
    case 9u:
      v11 = sub_1D5614898();
      v12 = v11;
      v13 = MEMORY[0x1E69773A0];
      goto LABEL_23;
    case 0xAu:
      a1[3] = type metadata accessor for Playlist.Folder();
      OUTLINED_FUNCTION_92_5();
      v50 = sub_1D50573F4(v48, v49);
      v17 = OUTLINED_FUNCTION_104_0(v50);
      v18 = type metadata accessor for Playlist.Folder;
      goto LABEL_25;
    case 0xBu:
      v11 = sub_1D5614B68();
      v12 = v11;
      v13 = MEMORY[0x1E6977520];
      goto LABEL_23;
    case 0xCu:
      v11 = sub_1D560F8B8();
      v12 = v11;
      v13 = MEMORY[0x1E6975870];
      goto LABEL_23;
    case 0xDu:
      a1[3] = type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_94_6();
      v44 = sub_1D50573F4(v42, v43);
      v17 = OUTLINED_FUNCTION_104_0(v44);
      v18 = type metadata accessor for SocialProfile;
      goto LABEL_25;
    case 0xEu:
      v11 = sub_1D5613838();
      v12 = v11;
      v13 = MEMORY[0x1E6976BB0];
      goto LABEL_23;
    case 0xFu:
      v11 = sub_1D5614408();
      v12 = v11;
      v13 = MEMORY[0x1E6977150];
      goto LABEL_23;
    case 0x10u:
      a1[3] = type metadata accessor for TVEpisode();
      OUTLINED_FUNCTION_101_2();
      v16 = sub_1D50573F4(v14, v15);
      v17 = OUTLINED_FUNCTION_104_0(v16);
      v18 = type metadata accessor for TVEpisode;
      goto LABEL_25;
    case 0x11u:
      a1[3] = type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_97_7();
      v30 = sub_1D50573F4(v28, v29);
      v17 = OUTLINED_FUNCTION_104_0(v30);
      v18 = type metadata accessor for TVSeason;
      goto LABEL_25;
    case 0x12u:
      a1[3] = type metadata accessor for TVShow();
      OUTLINED_FUNCTION_93_7();
      v47 = sub_1D50573F4(v45, v46);
      v17 = OUTLINED_FUNCTION_104_0(v47);
      v18 = type metadata accessor for TVShow;
      goto LABEL_25;
    case 0x13u:
      a1[3] = type metadata accessor for UploadedAudio();
      OUTLINED_FUNCTION_91_7();
      v54 = sub_1D50573F4(v52, v53);
      v17 = OUTLINED_FUNCTION_104_0(v54);
      v18 = type metadata accessor for UploadedAudio;
      goto LABEL_25;
    case 0x14u:
      a1[3] = type metadata accessor for UploadedVideo();
      OUTLINED_FUNCTION_96_6();
      v33 = sub_1D50573F4(v31, v32);
      v17 = OUTLINED_FUNCTION_104_0(v33);
      v18 = type metadata accessor for UploadedVideo;
LABEL_25:
      result = sub_1D50572C4(v8, v17, v18);
      break;
    case 0x15u:
      v38 = *v8;
      v37 = v8[1];
      a1[3] = type metadata accessor for UnknownMusicItem();
      v39 = sub_1D50573F4(&qword_1EC7ED340, type metadata accessor for UnknownMusicItem);
      OUTLINED_FUNCTION_104_0(v39);
      OUTLINED_FUNCTION_98();
      result = sub_1D4FD2984(v40);
      break;
    default:
      v11 = sub_1D5613AF8();
      v12 = v11;
      v13 = MEMORY[0x1E6976CF0];
LABEL_23:
      a1[3] = v11;
      a1[4] = v13;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v12);
      result = (*(v51 + 32))();
      break;
  }

  return result;
}

void GenericMusicItem.artwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v198 = v26;
  v199 = v20;
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v197 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for UploadedAudio();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v196 = v36;
  OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for TVShow();
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v195 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = type metadata accessor for TVSeason();
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v194 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = type metadata accessor for TVEpisode();
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v193 = v51;
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5614408();
  v53 = OUTLINED_FUNCTION_4(v52);
  v192 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v57 = sub_1D5613838();
  v58 = OUTLINED_FUNCTION_4(v57);
  v190 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v62 = type metadata accessor for SocialProfile();
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v191 = v66;
  OUTLINED_FUNCTION_70_0();
  v67 = sub_1D560F8B8();
  v68 = OUTLINED_FUNCTION_4(v67);
  v189 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v72 = sub_1D5614B68();
  v73 = OUTLINED_FUNCTION_4(v72);
  v187 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = type metadata accessor for Playlist.Folder();
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  v188 = v82;
  OUTLINED_FUNCTION_70_0();
  v83 = sub_1D5614898();
  v84 = OUTLINED_FUNCTION_12_0(v83, &a17);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v87);
  v88 = sub_1D560EEA8();
  v89 = OUTLINED_FUNCTION_12_0(v88, &a13);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v92);
  v93 = type metadata accessor for MusicMovie();
  v94 = OUTLINED_FUNCTION_22(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v97);
  v98 = sub_1D5613C48();
  v99 = OUTLINED_FUNCTION_12_0(v98, &a10);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v102);
  v103 = type metadata accessor for EditorialItem();
  v104 = OUTLINED_FUNCTION_22(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v107 = sub_1D56141F8();
  v108 = OUTLINED_FUNCTION_4(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v111 = type metadata accessor for CreditArtist();
  v112 = OUTLINED_FUNCTION_22(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v115);
  v116 = sub_1D5613EF8();
  v117 = OUTLINED_FUNCTION_4(v116);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v120 = sub_1D5613AF8();
  v121 = OUTLINED_FUNCTION_4(v120);
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_23_7();
  v126 = type metadata accessor for GenericMusicItem();
  v127 = OUTLINED_FUNCTION_14(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5();
  v132 = v131 - v130;
  sub_1D4F26680(v20, v131 - v130);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_2(&v199);
      v160(v22, v132, v116);
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D0, &qword_1D562DEE0);
      v162 = *(v161 + 48);
      v163 = *(v161 + 52);
      swift_allocObject();
      sub_1D560DE48();
      sub_1D5613EE8();
      (*(v126 + 8))(v22, v116);

      break;
    case 2u:
      v151 = sub_1D56140F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v151);
      OUTLINED_FUNCTION_19_32();
      v153 = v132;
      goto LABEL_44;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_154_4(v132, v156, &v200);
      if (qword_1EC7E9058 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EC7EB600, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_86_7();
      sub_1D50573F4(v157, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for CreditArtist;
      goto LABEL_43;
    case 4u:
      OUTLINED_FUNCTION_35_0(&v198);
      v144 = OUTLINED_FUNCTION_98();
      v145(v144);
      sub_1D56141E8();
      (*(v120 + 8))(v21, v107);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      sub_1D50572C4(v132, v23, v168);
      sub_1D4F5C79C();
      v152 = type metadata accessor for EditorialItem;
      v153 = v23;
      goto LABEL_44;
    case 6u:
      OUTLINED_FUNCTION_30_19(&a9);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v174(v172, v173);
      _s8MusicKit5GenreV0aB8InternalE7artworkAA7ArtworkVSgvg_0();
      goto LABEL_39;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_154_4(v132, v158, &a15);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD59308, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D50573F4(v159, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for MusicMovie;
      goto LABEL_43;
    case 8u:
      OUTLINED_FUNCTION_30_19(&a12);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v181(v179, v180);
      sub_1D560EE78();
      goto LABEL_39;
    case 9u:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v150(v148, v149);
      sub_1D5614848();
      goto LABEL_39;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      v126 = v188;
      sub_1D50572C4(v132, v188, v177);
      if (qword_1EC7E8D00 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_81_9();
      sub_1D50573F4(v178, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for Playlist.Folder;
      goto LABEL_43;
    case 0xBu:
      v21 = v187;
      OUTLINED_FUNCTION_33_1();
      v142 = OUTLINED_FUNCTION_51_16();
      v143(v142);
      sub_1D5614B48();
      goto LABEL_39;
    case 0xCu:
      v21 = v189;
      OUTLINED_FUNCTION_33_1();
      v146 = OUTLINED_FUNCTION_159();
      v147(v146);
      sub_1D560F8A8();
      goto LABEL_39;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v126 = v191;
      sub_1D50572C4(v132, v191, v170);
      if (qword_1EDD53F90 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57518, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      sub_1D50573F4(v171, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for SocialProfile;
      goto LABEL_43;
    case 0xEu:
      v21 = v190;
      OUTLINED_FUNCTION_45_15();
      OUTLINED_FUNCTION_158_2();
      v141(v139, v140);
      sub_1D56137F8();
      goto LABEL_39;
    case 0xFu:
      v21 = v192;
      OUTLINED_FUNCTION_33_1();
      v154 = OUTLINED_FUNCTION_159();
      v155(v154);
      sub_1D56143B8();
LABEL_39:
      v182 = *(v21 + 8);
      v183 = OUTLINED_FUNCTION_159();
      v184(v183);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v126 = v193;
      sub_1D50572C4(v132, v193, v136);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD54508, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D50573F4(v137, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for TVEpisode;
      goto LABEL_43;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v126 = v194;
      sub_1D50572C4(v132, v194, v164);
      if (qword_1EC7E8B58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&unk_1EDD546A0, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_83_7();
      sub_1D50573F4(v165, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for TVSeason;
      goto LABEL_43;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v126 = v195;
      sub_1D50572C4(v132, v195, v175);
      if (qword_1EC7E9538 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EC7EA688, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_82_7();
      sub_1D50573F4(v176, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for TVShow;
      goto LABEL_43;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v126 = v196;
      sub_1D50572C4(v132, v196, v185);
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D50573F4(v186, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for UploadedAudio;
      goto LABEL_43;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v126 = v197;
      sub_1D50572C4(v132, v197, v166);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D50573F4(v167, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_32_21();
      v138 = type metadata accessor for UploadedVideo;
LABEL_43:
      v152 = v138;
      v153 = v126;
LABEL_44:
      sub_1D504CF98(v153, v152);
      break;
    case 0x15u:
      sub_1D504CF98(v132, type metadata accessor for GenericMusicItem);
      v169 = sub_1D56140F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v169);
      break;
    default:
      v133 = *(v123 + 32);
      v134 = OUTLINED_FUNCTION_159();
      v135(v134);
      sub_1D5613AE8();
      (*(v123 + 8))(v20, v120);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D504CF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void GenericMusicItem.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v194 = v20;
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v193 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for UploadedAudio();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v192 = v36;
  OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for TVShow();
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v191 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = type metadata accessor for TVSeason();
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for TVEpisode();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v190 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D5614408();
  v52 = OUTLINED_FUNCTION_4(v51);
  v188 = v53;
  v189 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v186 = v56;
  OUTLINED_FUNCTION_70_0();
  v57 = sub_1D5613838();
  v58 = OUTLINED_FUNCTION_4(v57);
  v185 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  v184 = v62;
  OUTLINED_FUNCTION_70_0();
  v63 = type metadata accessor for SocialProfile();
  v64 = OUTLINED_FUNCTION_22(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  v187 = v67;
  OUTLINED_FUNCTION_70_0();
  v68 = sub_1D560F8B8();
  v69 = OUTLINED_FUNCTION_4(v68);
  v182 = v70;
  v183 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  v181 = v73;
  OUTLINED_FUNCTION_70_0();
  v74 = sub_1D5614B68();
  v75 = OUTLINED_FUNCTION_4(v74);
  v179 = v76;
  v180 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  v178 = v79;
  OUTLINED_FUNCTION_70_0();
  v80 = type metadata accessor for Playlist.Folder();
  v81 = OUTLINED_FUNCTION_22(v80);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D5614898();
  v86 = OUTLINED_FUNCTION_12_0(v85, &a17);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v89);
  v90 = sub_1D560EEA8();
  v91 = OUTLINED_FUNCTION_12_0(v90, &a14);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v94);
  v95 = type metadata accessor for MusicMovie();
  v96 = OUTLINED_FUNCTION_22(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D5613C48();
  v101 = OUTLINED_FUNCTION_12_0(v100, &a10);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v104);
  v105 = type metadata accessor for EditorialItem();
  v106 = OUTLINED_FUNCTION_22(v105);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v109);
  v110 = sub_1D56141F8();
  v111 = OUTLINED_FUNCTION_12_0(v110, &v195);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v114 = type metadata accessor for CreditArtist();
  v115 = OUTLINED_FUNCTION_22(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v118 = type metadata accessor for Composer();
  v119 = OUTLINED_FUNCTION_22(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v122 = sub_1D5613EF8();
  v123 = OUTLINED_FUNCTION_4(v122);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v126 = sub_1D5613AF8();
  v127 = OUTLINED_FUNCTION_4(v126);
  v129 = v128;
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_23_7();
  v132 = type metadata accessor for GenericMusicItem();
  v133 = OUTLINED_FUNCTION_14(v132);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5();
  v138 = v137 - v136;
  sub_1D4F26680(v20, v137 - v136);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_30_19(&v193);
      v162(v22, v138, v122);
      sub_1D5613ED8();
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v22, v122);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v138, v23, v153);
      Composer.name.getter();
      OUTLINED_FUNCTION_87_6();
      OUTLINED_FUNCTION_13_33();
      v155 = v23;
      goto LABEL_34;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      v158 = OUTLINED_FUNCTION_128();
      sub_1D50572C4(v158, v159, v160);
      CreditArtist.name.getter();
      OUTLINED_FUNCTION_87_6();
      OUTLINED_FUNCTION_14_33();
      v155 = v21;
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_30_19(&v194);
      OUTLINED_FUNCTION_56_1();
      v148();
      sub_1D56141D8();
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v24, v138);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v138, v169, &v196);
      EditorialItem.name.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19(&a9);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v172();
      sub_1D5613C28();
      goto LABEL_28;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v138, v161, &a11);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19(&a13);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v175();
      sub_1D560EE68();
      goto LABEL_28;
    case 9u:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v152();
      sub_1D56146D8();
      goto LABEL_28;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v138, v174, &a18);
      Playlist.Folder.name.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      v20 = v178;
      v21 = v179;
      v145 = OUTLINED_FUNCTION_45_15();
      v146 = v138;
      v138 = v180;
      v147(v145, v146, v180);
      sub_1D5614B38();
      goto LABEL_28;
    case 0xCu:
      v20 = v181;
      v21 = v182;
      v149 = OUTLINED_FUNCTION_45_15();
      v150 = v138;
      v138 = v183;
      v151(v149, v150, v183);
      sub_1D560F898();
      goto LABEL_28;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v165 = v187;
      sub_1D50572C4(v138, v187, v170);
      if (qword_1EDD53FA8 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57518, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      sub_1D50573F4(v171, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_127_4();
      OUTLINED_FUNCTION_147_3();
      v168 = type metadata accessor for SocialProfile;
      goto LABEL_33;
    case 0xEu:
      v20 = v184;
      v21 = v185;
      OUTLINED_FUNCTION_45_15();
      OUTLINED_FUNCTION_158_2();
      v144();
      sub_1D56137E8();
      goto LABEL_28;
    case 0xFu:
      v21 = v188;
      OUTLINED_FUNCTION_33_1();
      v20 = v186;
      v156 = OUTLINED_FUNCTION_159();
      v138 = v189;
      v157(v156);
      sub_1D5614388();
LABEL_28:
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v20, v138);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v20 = v190;
      sub_1D50572C4(v138, v190, v142);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      OUTLINED_FUNCTION_162_3(v138, v163, v164);
      TVSeason.title.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v20 = v191;
      sub_1D50572C4(v138, v191, v173);
      TVShow.name.getter();
      OUTLINED_FUNCTION_87_6();
      v143 = type metadata accessor for TVShow;
LABEL_26:
      v154 = v143;
      v155 = v20;
      goto LABEL_34;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v165 = v192;
      sub_1D50572C4(v138, v192, v176);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D50573F4(v177, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_127_4();
      OUTLINED_FUNCTION_147_3();
      v168 = type metadata accessor for UploadedAudio;
      goto LABEL_33;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v165 = v193;
      sub_1D50572C4(v138, v193, v166);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D50573F4(v167, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_127_4();
      OUTLINED_FUNCTION_147_3();
      v168 = type metadata accessor for UploadedVideo;
LABEL_33:
      v154 = v168;
      v155 = v165;
LABEL_34:
      sub_1D504CF98(v155, v154);
      break;
    case 0x15u:
      sub_1D504CF98(v138, type metadata accessor for GenericMusicItem);
      break;
    default:
      v139 = *(v129 + 32);
      v140 = OUTLINED_FUNCTION_159();
      v141(v140);
      sub_1D5613AB8();
      (*(v129 + 8))(v20, v126);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void static GenericMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v349 = v23;
  v350 = v22;
  v24 = type metadata accessor for UploadedVideo();
  v25 = OUTLINED_FUNCTION_20(v24, v327);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v28);
  v29 = type metadata accessor for UploadedAudio();
  v30 = OUTLINED_FUNCTION_20(v29, &v326);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v33);
  v34 = type metadata accessor for TVShow();
  v35 = OUTLINED_FUNCTION_20(v34, &v325);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v38);
  v39 = type metadata accessor for TVSeason();
  v40 = OUTLINED_FUNCTION_20(v39, &v324);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v44 = type metadata accessor for TVEpisode();
  v45 = OUTLINED_FUNCTION_20(v44, &v323);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D5614408();
  v50 = OUTLINED_FUNCTION_4(v49);
  v345 = v51;
  v346 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v54);
  v55 = sub_1D5613838();
  v56 = OUTLINED_FUNCTION_4(v55);
  v343 = v57;
  v344 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = type metadata accessor for SocialProfile();
  v62 = OUTLINED_FUNCTION_20(v61, &v322);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D560F8B8();
  v67 = OUTLINED_FUNCTION_4(v66);
  v341 = v68;
  v342 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v71);
  v72 = sub_1D5614B68();
  v73 = OUTLINED_FUNCTION_4(v72);
  v339 = v74;
  v340 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = type metadata accessor for Playlist.Folder();
  v79 = OUTLINED_FUNCTION_20(v78, &v321);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D5614898();
  v84 = OUTLINED_FUNCTION_4(v83);
  v337 = v85;
  v338 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560EEA8();
  v90 = OUTLINED_FUNCTION_4(v89);
  v335 = v91;
  v336 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v94);
  v95 = type metadata accessor for MusicMovie();
  v96 = OUTLINED_FUNCTION_20(v95, &v320);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D5613C48();
  v101 = OUTLINED_FUNCTION_4(v100);
  v333 = v102;
  v334 = v101;
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v105);
  v106 = type metadata accessor for EditorialItem();
  v107 = OUTLINED_FUNCTION_20(v106, &v319);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v110);
  v111 = sub_1D56141F8();
  v112 = OUTLINED_FUNCTION_4(v111);
  v331 = v113;
  v332 = v112;
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v116);
  v117 = type metadata accessor for CreditArtist();
  v118 = OUTLINED_FUNCTION_20(v117, &v318);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v121);
  v122 = type metadata accessor for Composer();
  v123 = OUTLINED_FUNCTION_20(v122, &v317);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v126);
  v330 = sub_1D5613EF8();
  v127 = OUTLINED_FUNCTION_4(v330);
  v329 = v128;
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v131);
  v132 = sub_1D5613AF8();
  v133 = OUTLINED_FUNCTION_4(v132);
  v347 = v134;
  v348 = v133;
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v137);
  v138 = type metadata accessor for GenericMusicItem();
  v139 = OUTLINED_FUNCTION_14(v138);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v155 = MEMORY[0x1EEE9AC00](v154);
  v157 = v313 - v156;
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v159 = MEMORY[0x1EEE9AC00](v158);
  v161 = v313 - v160;
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v163 = MEMORY[0x1EEE9AC00](v162);
  v165 = v313 - v164;
  v166 = MEMORY[0x1EEE9AC00](v163);
  v168 = (v313 - v167);
  v169 = MEMORY[0x1EEE9AC00](v166);
  v171 = (v313 - v170);
  v172 = MEMORY[0x1EEE9AC00](v169);
  v174 = (v313 - v173);
  MEMORY[0x1EEE9AC00](v172);
  v176 = v313 - v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEAF0, &unk_1D562DEE8);
  v178 = OUTLINED_FUNCTION_22(v177);
  v180 = *(v179 + 64);
  v181 = MEMORY[0x1EEE9AC00](v178);
  v183 = v313 - v182;
  v184 = v313 + *(v181 + 56) - v182;
  sub_1D4F26680(v350, v313 - v182);
  v350 = v184;
  sub_1D4F26680(v349, v184);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F26680(v183, v174);
      OUTLINED_FUNCTION_184();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_60_1(&a18);
        v234 = OUTLINED_FUNCTION_52_13();
        v235 = v330;
        v236(v234);
        sub_1D5613EA8();
        v237 = *(v161 + 1);
        v237(v165, v235);
        v238 = OUTLINED_FUNCTION_24();
        (v237)(v238);
        goto LABEL_34;
      }

      (*(v329 + 8))(v174, v330);
      goto LABEL_148;
    case 2u:
      sub_1D4F26680(v183, v171);
      if (OUTLINED_FUNCTION_55_14() != 2)
      {
        OUTLINED_FUNCTION_13_33();
        v304 = v171;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_10_42();
      OUTLINED_FUNCTION_123_3(v174, v207, &v328);
      v208 = *v171 == *v168 && v171[1] == v168[1];
      if (v208 || (sub_1D5616168() & 1) != 0)
      {
        v209 = *(v313[1] + 20);
        if (sub_1D5611A78())
        {
          OUTLINED_FUNCTION_80_5();
          sub_1D504CF98(v168, v210);
          v211 = v171;
          goto LABEL_123;
        }
      }

      OUTLINED_FUNCTION_80_5();
      sub_1D504CF98(v168, v309);
      v211 = v171;
      goto LABEL_159;
    case 3u:
      v218 = OUTLINED_FUNCTION_109();
      sub_1D4F26680(v218, v219);
      if (OUTLINED_FUNCTION_55_14() != 3)
      {
        OUTLINED_FUNCTION_14_33();
        v304 = v168;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_66_1(&v329);
      sub_1D50572C4(v220, v221, v222);
      v223 = *v168 == *v138 && v168[1] == v138[1];
      if (v223 || (sub_1D5616168() & 1) != 0)
      {
        v224 = *(v313[2] + 20);
        if (sub_1D5611A78())
        {
          OUTLINED_FUNCTION_79_3();
          sub_1D504CF98(v138, v225);
          v211 = v168;
          goto LABEL_123;
        }
      }

      OUTLINED_FUNCTION_79_3();
      sub_1D504CF98(v138, v310);
      v211 = v168;
      goto LABEL_159;
    case 4u:
      sub_1D4F26680(v183, v165);
      if (OUTLINED_FUNCTION_55_14() == 4)
      {
        v192 = v332;
        OUTLINED_FUNCTION_81();
        v197 = OUTLINED_FUNCTION_40_20();
        v198(v197);
        OUTLINED_FUNCTION_45_3();
        sub_1D56141A8();
        goto LABEL_32;
      }

      v302 = v331;
      v301 = v332;
      goto LABEL_132;
    case 5u:
      OUTLINED_FUNCTION_66_1(&v347);
      sub_1D4F26680(v254, v255);
      if (OUTLINED_FUNCTION_55_14() != 5)
      {
        v300 = type metadata accessor for EditorialItem;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v174, v256, &v331);
      OUTLINED_FUNCTION_158();
      v259 = v190 && v257 == v258;
      if (v259 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v319))
      {
        v191 = type metadata accessor for EditorialItem;
        goto LABEL_122;
      }

      v308 = type metadata accessor for EditorialItem;
      goto LABEL_158;
    case 6u:
      sub_1D4F26680(v183, v161);
      if (OUTLINED_FUNCTION_55_14() == 6)
      {
        v274 = v333;
        v273 = v334;
        OUTLINED_FUNCTION_81();
        v275 = v314;
        v276(v314, v174, v273);
        sub_1D5613BF8();
        v277 = *(v274 + 8);
        v277(v275, v273);
        v277(v161, v273);
        goto LABEL_34;
      }

      (*(v333 + 8))(v161, v334);
      goto LABEL_148;
    case 7u:
      OUTLINED_FUNCTION_66_1(&v350);
      sub_1D4F26680(v226, v227);
      if (OUTLINED_FUNCTION_55_14() != 7)
      {
        v300 = type metadata accessor for MusicMovie;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v174, v228, &v333);
      OUTLINED_FUNCTION_158();
      v231 = v190 && v229 == v230;
      if (v231 || (sub_1D5616168() & 1) != 0)
      {
        v232 = OUTLINED_FUNCTION_48_12(&v320);
        OUTLINED_FUNCTION_112_5();
        if (v232)
        {
          v233 = type metadata accessor for MusicMovie;
          goto LABEL_70;
        }
      }

      else
      {
        OUTLINED_FUNCTION_112_5();
      }

      v311 = type metadata accessor for MusicMovie;
      goto LABEL_167;
    case 8u:
      sub_1D4F26680(v183, v157);
      if (OUTLINED_FUNCTION_55_14() == 8)
      {
        v291 = v335;
        v290 = v336;
        v292 = v315;
        (*(v335 + 32))(v315, v174, v336);
        sub_1D560EE28();
        v293 = *(v291 + 8);
        v293(v292, v290);
        v293(v157, v290);
        OUTLINED_FUNCTION_19_32();
        v217 = v183;
        goto LABEL_35;
      }

      (*(v335 + 8))(v157, v336);
      goto LABEL_148;
    case 9u:
      OUTLINED_FUNCTION_66_1(&v346);
      sub_1D4F26680(v201, v202);
      if (OUTLINED_FUNCTION_55_14() == 9)
      {
        v204 = v337;
        v203 = v338;
        v205 = v316;
        (*(v337 + 32))(v316, v174, v338);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v206 = *(v204 + 8);
        v206(v205, v203);
        v206(v138, v203);
        goto LABEL_34;
      }

      (*(v337 + 8))(v138, v338);
      goto LABEL_148;
    case 0xAu:
      OUTLINED_FUNCTION_66_1(&a10);
      sub_1D4F26680(v284, v285);
      if (OUTLINED_FUNCTION_55_14() != 10)
      {
        v300 = type metadata accessor for Playlist.Folder;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v174, v286, &v336);
      OUTLINED_FUNCTION_158();
      v289 = v190 && v287 == v288;
      if (v289 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v321))
      {
        v191 = type metadata accessor for Playlist.Folder;
        goto LABEL_122;
      }

      v308 = type metadata accessor for Playlist.Folder;
      goto LABEL_158;
    case 0xBu:
      OUTLINED_FUNCTION_161_4(v183, &v348);
      if (OUTLINED_FUNCTION_55_14() == 11)
      {
        v192 = v340;
        OUTLINED_FUNCTION_81();
        v195 = OUTLINED_FUNCTION_40_20();
        v196(v195);
        OUTLINED_FUNCTION_45_3();
        sub_1D5614B18();
        goto LABEL_32;
      }

      v302 = v339;
      v301 = v340;
      goto LABEL_132;
    case 0xCu:
      OUTLINED_FUNCTION_161_4(v183, &v349);
      if (OUTLINED_FUNCTION_55_14() == 12)
      {
        v192 = v342;
        OUTLINED_FUNCTION_81();
        v199 = OUTLINED_FUNCTION_40_20();
        v200(v199);
        OUTLINED_FUNCTION_45_3();
        sub_1D560F878();
        goto LABEL_32;
      }

      v302 = v341;
      v301 = v342;
      goto LABEL_132;
    case 0xDu:
      OUTLINED_FUNCTION_66_1(&a12);
      sub_1D4F26680(v267, v268);
      if (OUTLINED_FUNCTION_55_14() != 13)
      {
        v300 = type metadata accessor for SocialProfile;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_8_40();
      OUTLINED_FUNCTION_123_3(v174, v269, &v339);
      OUTLINED_FUNCTION_158();
      v272 = v190 && v270 == v271;
      if (v272 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v322))
      {
        v191 = type metadata accessor for SocialProfile;
        goto LABEL_122;
      }

      v308 = type metadata accessor for SocialProfile;
      goto LABEL_158;
    case 0xEu:
      OUTLINED_FUNCTION_161_4(v183, &v351);
      if (OUTLINED_FUNCTION_55_14() == 14)
      {
        v192 = v344;
        OUTLINED_FUNCTION_81();
        v193 = OUTLINED_FUNCTION_40_20();
        v194(v193);
        OUTLINED_FUNCTION_45_3();
        sub_1D56137A8();
        goto LABEL_32;
      }

      v302 = v343;
      v301 = v344;
      goto LABEL_132;
    case 0xFu:
      OUTLINED_FUNCTION_161_4(v183, &a9);
      if (OUTLINED_FUNCTION_55_14() == 15)
      {
        v192 = v346;
        OUTLINED_FUNCTION_81();
        v212 = OUTLINED_FUNCTION_40_20();
        v213(v212);
        OUTLINED_FUNCTION_45_3();
        sub_1D5614368();
LABEL_32:
        v214 = OUTLINED_FUNCTION_157_4();
        (v174)(v214);
        v215 = v165;
        goto LABEL_33;
      }

      v302 = v345;
      v301 = v346;
LABEL_132:
      (*(v302 + 8))(v165, v301);
      goto LABEL_148;
    case 0x10u:
      OUTLINED_FUNCTION_66_1(&a13);
      sub_1D4F26680(v185, v186);
      if (OUTLINED_FUNCTION_55_14() != 16)
      {
        v300 = type metadata accessor for TVEpisode;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_6_43();
      OUTLINED_FUNCTION_123_3(v174, v187, &v341);
      OUTLINED_FUNCTION_158();
      v190 = v190 && v188 == v189;
      if (v190 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v323))
      {
        v191 = type metadata accessor for TVEpisode;
        goto LABEL_122;
      }

      v308 = type metadata accessor for TVEpisode;
      goto LABEL_158;
    case 0x11u:
      OUTLINED_FUNCTION_66_1(&a14);
      sub_1D4F26680(v239, v240);
      if (OUTLINED_FUNCTION_55_14() != 17)
      {
        v300 = type metadata accessor for TVSeason;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_4_41();
      OUTLINED_FUNCTION_123_3(v174, v241, &v342);
      OUTLINED_FUNCTION_158();
      v244 = v190 && v242 == v243;
      if (v244 || (sub_1D5616168() & 1) != 0)
      {
        v245 = OUTLINED_FUNCTION_48_12(&v324);
        OUTLINED_FUNCTION_111_5();
        if (v245)
        {
          v233 = type metadata accessor for TVSeason;
          goto LABEL_70;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111_5();
      }

      v311 = type metadata accessor for TVSeason;
      goto LABEL_167;
    case 0x12u:
      OUTLINED_FUNCTION_66_1(&a15);
      sub_1D4F26680(v278, v279);
      if (OUTLINED_FUNCTION_55_14() != 18)
      {
        v300 = type metadata accessor for TVShow;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_123_3(v174, v280, &v343);
      OUTLINED_FUNCTION_158();
      v283 = v190 && v281 == v282;
      if (v283 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v325))
      {
        v191 = type metadata accessor for TVShow;
        goto LABEL_122;
      }

      v308 = type metadata accessor for TVShow;
      goto LABEL_158;
    case 0x13u:
      OUTLINED_FUNCTION_66_1(&a16);
      sub_1D4F26680(v294, v295);
      if (OUTLINED_FUNCTION_55_14() != 19)
      {
        v300 = type metadata accessor for UploadedAudio;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_123_3(v174, v296, &v344);
      OUTLINED_FUNCTION_158();
      v299 = v190 && v297 == v298;
      if (v299 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12(&v326))
      {
        v191 = type metadata accessor for UploadedAudio;
LABEL_122:
        v174 = v191;
        sub_1D504CF98(v168, v191);
        v211 = v138;
LABEL_123:
        v253 = v174;
      }

      else
      {
        v308 = type metadata accessor for UploadedAudio;
LABEL_158:
        v174 = v308;
        sub_1D504CF98(v168, v308);
        v211 = v138;
LABEL_159:
        v253 = v174;
      }

      goto LABEL_168;
    case 0x14u:
      OUTLINED_FUNCTION_66_1(&a17);
      sub_1D4F26680(v246, v247);
      if (OUTLINED_FUNCTION_55_14() == 20)
      {
        OUTLINED_FUNCTION_3_52();
        OUTLINED_FUNCTION_123_3(v174, v248, &v345);
        OUTLINED_FUNCTION_158();
        v251 = v190 && v249 == v250;
        if (v251 || (sub_1D5616168() & 1) != 0)
        {
          v252 = OUTLINED_FUNCTION_48_12(v327);
          OUTLINED_FUNCTION_110_6();
          if (v252)
          {
            v233 = type metadata accessor for UploadedVideo;
LABEL_70:
            v253 = v233;
            v211 = v138;
LABEL_168:
            sub_1D504CF98(v211, v253);
            goto LABEL_169;
          }
        }

        else
        {
          OUTLINED_FUNCTION_110_6();
        }

        v311 = type metadata accessor for UploadedVideo;
LABEL_167:
        v253 = v311;
        v211 = v138;
        goto LABEL_168;
      }

      v300 = type metadata accessor for UploadedVideo;
LABEL_146:
      v303 = v300;
      v304 = v138;
LABEL_147:
      sub_1D504CF98(v304, v303);
LABEL_148:
      sub_1D4E50004(v183, &qword_1EC7EEAF0, &unk_1D562DEE8);
LABEL_170:
      OUTLINED_FUNCTION_46();
      return;
    case 0x15u:
      v260 = v324;
      sub_1D4F26680(v183, v324);
      v262 = *v260;
      v261 = v260[1];
      v263 = v350;
      OUTLINED_FUNCTION_184();
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_148;
      }

      v264 = *v263;
      v265 = v263[1];
      if (v262 != v264 || v261 != v265)
      {
        OUTLINED_FUNCTION_98();
        sub_1D5616168();
      }

LABEL_169:
      OUTLINED_FUNCTION_19_32();
      sub_1D504CF98(v183, v312);
      goto LABEL_170;
    default:
      sub_1D4F26680(v183, v176);
      if (OUTLINED_FUNCTION_55_14())
      {
        (*(v347 + 8))(v176, v348);
        goto LABEL_148;
      }

      v192 = v348;
      OUTLINED_FUNCTION_81();
      v305 = OUTLINED_FUNCTION_40_20();
      v306(v305);
      sub_1D5613A68();
      v307 = OUTLINED_FUNCTION_157_4();
      (v174)(v307);
      v215 = v176;
LABEL_33:
      (v174)(v215, v192);
LABEL_34:
      OUTLINED_FUNCTION_19_32();
      v217 = v183;
LABEL_35:
      sub_1D504CF98(v217, v216);
      goto LABEL_170;
  }
}

void GenericMusicItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v223 = v26;
  v224 = v20;
  v221 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_14(v221);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v222 = v30;
  OUTLINED_FUNCTION_70_0();
  v219 = type metadata accessor for UploadedAudio();
  v31 = OUTLINED_FUNCTION_14(v219);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v220 = v34;
  OUTLINED_FUNCTION_70_0();
  v217 = type metadata accessor for TVShow();
  v35 = OUTLINED_FUNCTION_14(v217);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v218 = v38;
  OUTLINED_FUNCTION_70_0();
  v215 = type metadata accessor for TVSeason();
  v39 = OUTLINED_FUNCTION_14(v215);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v216 = v42;
  OUTLINED_FUNCTION_70_0();
  v213 = type metadata accessor for TVEpisode();
  v43 = OUTLINED_FUNCTION_14(v213);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v214 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D5614408();
  v48 = OUTLINED_FUNCTION_4(v47);
  v212[0] = v49;
  v212[1] = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v211 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D5613838();
  v54 = OUTLINED_FUNCTION_4(v53);
  v209 = v55;
  v210 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v208 = v58;
  OUTLINED_FUNCTION_70_0();
  v206 = type metadata accessor for SocialProfile();
  v59 = OUTLINED_FUNCTION_14(v206);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v207 = v62;
  OUTLINED_FUNCTION_70_0();
  v205 = sub_1D560F8B8();
  v63 = OUTLINED_FUNCTION_4(v205);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5614B68();
  v68 = OUTLINED_FUNCTION_12_0(v67, &a16);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v71);
  v72 = type metadata accessor for Playlist.Folder();
  v73 = OUTLINED_FUNCTION_20(v72, &a12);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5614898();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a11);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D560EEA8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v225);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v86);
  v87 = type metadata accessor for MusicMovie();
  v88 = OUTLINED_FUNCTION_20(v87, &v221);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D5613C48();
  v93 = OUTLINED_FUNCTION_12_0(v92, &v220);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v96);
  v97 = type metadata accessor for EditorialItem();
  v98 = OUTLINED_FUNCTION_20(v97, &v216);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v101);
  v102 = sub_1D56141F8();
  v103 = OUTLINED_FUNCTION_12_0(v102, &v215);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v106);
  v107 = type metadata accessor for CreditArtist();
  v108 = OUTLINED_FUNCTION_14(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v111);
  v112 = type metadata accessor for Composer();
  v113 = OUTLINED_FUNCTION_14(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v116 = sub_1D5613EF8();
  v117 = OUTLINED_FUNCTION_4(v116);
  v198 = v118;
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v121 = sub_1D5613AF8();
  v122 = OUTLINED_FUNCTION_4(v121);
  v124 = v123;
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v127 = type metadata accessor for GenericMusicItem();
  v128 = OUTLINED_FUNCTION_14(v127);
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_23_7();
  sub_1D4F26680(v224, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v169 = OUTLINED_FUNCTION_109();
      v170(v169);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_104_6();
      sub_1D50573F4(v171, v172);
      sub_1D5614CB8();
      (*(v198 + 8))(v21, v116);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      v149 = OUTLINED_FUNCTION_184();
      sub_1D50572C4(v149, v150, v151);
      OUTLINED_FUNCTION_137_4();
      v152 = *v23;
      v153 = v23[1];
      sub_1D5614E28();
      v154 = *(v112 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v155, v156);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_13_33();
      v158 = v23;
      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_154_4(v20, v160, v212);
      OUTLINED_FUNCTION_137_4();
      v161 = *v21;
      v162 = v21[1];
      sub_1D5614E28();
      v163 = *(v107 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v164, v165);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_14_33();
      v158 = v21;
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_30_19(&v214);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v145();
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_74_8();
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      v135 = v200;
      sub_1D50572C4(v20, v200, v179);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v199);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v180, v181);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19(&v219);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v187();
      MEMORY[0x1DA6EC0D0](6);
      OUTLINED_FUNCTION_103_5();
      goto LABEL_24;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      v135 = v202;
      sub_1D50572C4(v20, v202, v166);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v201);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v167, v168);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19(&v224);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v194();
      MEMORY[0x1DA6EC0D0](8);
      OUTLINED_FUNCTION_102_6();
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_30_19(&a10);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v148();
      MEMORY[0x1DA6EC0D0](9);
      OUTLINED_FUNCTION_72_11();
      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      v135 = v204;
      sub_1D50572C4(v20, v204, v191);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v203);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v192, v193);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_30_19(&a15);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v144();
      MEMORY[0x1DA6EC0D0](11);
      OUTLINED_FUNCTION_75_6();
      goto LABEL_24;
    case 0xCu:
      OUTLINED_FUNCTION_30_19(&a18);
      v146 = OUTLINED_FUNCTION_57_4();
      v124 = v205;
      v147(v146);
      MEMORY[0x1DA6EC0D0](12);
      OUTLINED_FUNCTION_73_7();
      goto LABEL_24;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v135 = v207;
      sub_1D50572C4(v20, v207, v184);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v206);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v185, v186);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for SocialProfile;
      goto LABEL_26;
    case 0xEu:
      v107 = v208;
      v121 = v209;
      OUTLINED_FUNCTION_33_1();
      v140 = OUTLINED_FUNCTION_116();
      v124 = v210;
      v141(v140);
      MEMORY[0x1DA6EC0D0](14);
      OUTLINED_FUNCTION_76_7();
      goto LABEL_24;
    case 0xFu:
      v107 = v211;
      v121 = v212[0];
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_158_2();
      v159();
      MEMORY[0x1DA6EC0D0](15);
      OUTLINED_FUNCTION_105_6();
LABEL_24:
      sub_1D50573F4(v142, v143);
      sub_1D5614CB8();
      (*(v121 + 8))(v107, v124);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v135 = v214;
      sub_1D50572C4(v20, v214, v136);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v213);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v137, v138);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v135 = v216;
      sub_1D50572C4(v20, v216, v173);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v215);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v174, v175);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v135 = v218;
      sub_1D50572C4(v20, v218, v188);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v217);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v189, v190);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for TVShow;
      goto LABEL_26;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v135 = v220;
      sub_1D50572C4(v20, v220, v195);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v219);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v196, v197);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for UploadedAudio;
      goto LABEL_26;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v135 = v222;
      sub_1D50572C4(v20, v222, v176);
      OUTLINED_FUNCTION_137_4();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v221);
      OUTLINED_FUNCTION_1_61();
      sub_1D50573F4(v177, v178);
      OUTLINED_FUNCTION_49_1();
      v139 = type metadata accessor for UploadedVideo;
LABEL_26:
      v157 = v139;
      v158 = v135;
LABEL_27:
      sub_1D504CF98(v158, v157);
      break;
    case 0x15u:
      v182 = *v20;
      v183 = v20[1];
      MEMORY[0x1DA6EC0D0](21);
      OUTLINED_FUNCTION_159();
      sub_1D5614E28();

      break;
    default:
      OUTLINED_FUNCTION_52_8();
      v131 = OUTLINED_FUNCTION_123_2();
      v132(v131);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_77_4();
      sub_1D50573F4(v133, v134);
      sub_1D5614CB8();
      (*(v124 + 8))(v22, v121);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t GenericMusicItem.hashValue.getter()
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D505017C()
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50501B8@<X0>(uint64_t *a1@<X8>)
{
  result = GenericMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void GenericMusicItem.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v204 = v23;
  v205 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for UploadedVideo();
  v30 = OUTLINED_FUNCTION_20(v29, &v188);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v33);
  v34 = type metadata accessor for UploadedAudio();
  v35 = OUTLINED_FUNCTION_20(v34, &v190);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v38);
  v39 = type metadata accessor for TVShow();
  v40 = OUTLINED_FUNCTION_20(v39, &v192);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v44 = type metadata accessor for TVSeason();
  v45 = OUTLINED_FUNCTION_20(v44, &v194);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v48);
  v49 = type metadata accessor for TVEpisode();
  v50 = OUTLINED_FUNCTION_20(v49, &v197);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v53);
  v54 = sub_1D5614408();
  v55 = OUTLINED_FUNCTION_12_0(v54, &v201);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v58);
  v59 = sub_1D5613838();
  v60 = OUTLINED_FUNCTION_12_0(v59, &v203);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = type metadata accessor for SocialProfile();
  v65 = OUTLINED_FUNCTION_20(v64, &v204);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v68);
  v69 = sub_1D560F8B8();
  v70 = OUTLINED_FUNCTION_12_0(v69, &v208);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D5614B68();
  v75 = OUTLINED_FUNCTION_12_0(v74, &v209 + 8);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = type metadata accessor for Playlist.Folder();
  v80 = OUTLINED_FUNCTION_20(v79, &v211);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  v206 = v83;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D5614898();
  v85 = OUTLINED_FUNCTION_12_0(v84, &v214);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560EEA8();
  v90 = OUTLINED_FUNCTION_12_0(v89, &v216);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = type metadata accessor for MusicMovie();
  v95 = OUTLINED_FUNCTION_20(v94, &v219);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D5613C48();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v221);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v103);
  v104 = type metadata accessor for EditorialItem();
  v105 = OUTLINED_FUNCTION_20(v104, &a11);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D56141F8();
  v110 = OUTLINED_FUNCTION_12_0(v109, &a13);
  v192 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v114);
  v115 = type metadata accessor for CreditArtist();
  v116 = OUTLINED_FUNCTION_20(v115, &a15);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v119);
  v120 = type metadata accessor for Composer();
  v121 = OUTLINED_FUNCTION_20(v120, &a18);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v124);
  v125 = sub_1D5613EF8();
  v126 = OUTLINED_FUNCTION_4(v125);
  v199 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  v203 = v130;
  OUTLINED_FUNCTION_70_0();
  v131 = sub_1D5613AF8();
  v132 = OUTLINED_FUNCTION_4(v131);
  v202 = v133;
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  v137 = v136;
  v138 = *(v26 - 8);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_23_7();
  v141 = type metadata accessor for GenericMusicItem();
  v142 = OUTLINED_FUNCTION_14(v141);
  v144 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5();
  v147 = v146 - v145;
  v148 = *(v138 + 16);
  v207 = v28;
  v148(v20, v28, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v149 = v26;
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v208, &v211);
    __swift_project_boxed_opaque_existential_1(&v211, v214);
    v150 = v205;
    sub_1D560D078();
    (*(v138 + 8))(v207, v149);
    __swift_destroy_boxed_opaque_existential_1(&v211);
  }

  else
  {
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    sub_1D4E50004(&v208, &qword_1EC7EC520, &unk_1D5621050);
    v219 = v26;
    v220 = v204;
    v151 = __swift_allocate_boxed_opaque_existential_0(&v216);
    (*(v138 + 32))(v151, v207, v26);
    v150 = v205;
  }

  v152 = OUTLINED_FUNCTION_72_2();
  sub_1D4E48324(v152, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v154 = swift_dynamicCast();
  v155 = v206;
  if (v154)
  {
    (*(v202 + 32))(v147, v137, v131);
  }

  else if (swift_dynamicCast())
  {
    v156 = *(v199 + 32);
    OUTLINED_FUNCTION_136_4();
    v157();
  }

  else
  {
    v158 = v200;
    if (OUTLINED_FUNCTION_128_5(&a18))
    {
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v158, v147, v159);
    }

    else
    {
      v160 = v197;
      if (OUTLINED_FUNCTION_128_5(&a15))
      {
        OUTLINED_FUNCTION_9_39();
        sub_1D50572C4(v160, v147, v161);
      }

      else
      {
        OUTLINED_FUNCTION_61_16(&a12);
        if (OUTLINED_FUNCTION_132_3(&a13))
        {
          OUTLINED_FUNCTION_44_15(&a9);
          OUTLINED_FUNCTION_136_4();
          v162();
        }

        else
        {
          OUTLINED_FUNCTION_61_16(&a10);
          if (OUTLINED_FUNCTION_128_5(&a11))
          {
            OUTLINED_FUNCTION_2_46();
            v163 = OUTLINED_FUNCTION_27_1();
            sub_1D50572C4(v163, v164, v165);
          }

          else
          {
            OUTLINED_FUNCTION_61_16(&v220);
            if (OUTLINED_FUNCTION_132_3(&v221))
            {
              OUTLINED_FUNCTION_44_15(&v217);
              OUTLINED_FUNCTION_136_4();
              v166();
            }

            else
            {
              OUTLINED_FUNCTION_61_16(&v218);
              if (OUTLINED_FUNCTION_128_5(&v219))
              {
                OUTLINED_FUNCTION_5_41();
                v167 = OUTLINED_FUNCTION_27_1();
                sub_1D50572C4(v167, v168, v169);
              }

              else
              {
                OUTLINED_FUNCTION_61_16(&v215);
                if (OUTLINED_FUNCTION_132_3(&v216))
                {
                  OUTLINED_FUNCTION_44_15(&v212);
                  OUTLINED_FUNCTION_136_4();
                  v170();
                }

                else
                {
                  OUTLINED_FUNCTION_61_16(&v213);
                  if (OUTLINED_FUNCTION_132_3(&v214))
                  {
                    OUTLINED_FUNCTION_44_15(&v210);
                    OUTLINED_FUNCTION_136_4();
                    v171();
                  }

                  else if (OUTLINED_FUNCTION_128_5(&v211))
                  {
                    OUTLINED_FUNCTION_11_39();
                    sub_1D50572C4(v155, v147, v172);
                  }

                  else if (swift_dynamicCast())
                  {
                    v173 = OUTLINED_FUNCTION_44_15(&v207);
                    v174(v173);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_116_5(&v208 + 8);
                    if (OUTLINED_FUNCTION_128_5(&v208))
                    {
                      v175 = OUTLINED_FUNCTION_44_15(&v205);
                      v176(v175);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_116_5(&v206);
                      if (OUTLINED_FUNCTION_128_5(&v204))
                      {
                        OUTLINED_FUNCTION_8_40();
                        OUTLINED_FUNCTION_155_3(v177, &v206);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_116_5(&v202);
                        if (OUTLINED_FUNCTION_128_5(&v203))
                        {
                          v178 = OUTLINED_FUNCTION_44_15(&v199);
                          v179(v178);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_116_5(&v200);
                          if (OUTLINED_FUNCTION_128_5(&v201))
                          {
                            v180 = OUTLINED_FUNCTION_44_15(&v196);
                            v181(v180);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_116_5(&v198);
                            if (OUTLINED_FUNCTION_128_5(&v197))
                            {
                              OUTLINED_FUNCTION_6_43();
                              OUTLINED_FUNCTION_155_3(v182, &v198);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_116_5(&v195);
                              if (OUTLINED_FUNCTION_128_5(&v194))
                              {
                                OUTLINED_FUNCTION_4_41();
                                OUTLINED_FUNCTION_155_3(v183, &v195);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_116_5(&v193);
                                if (OUTLINED_FUNCTION_128_5(&v192))
                                {
                                  OUTLINED_FUNCTION_0_61();
                                  OUTLINED_FUNCTION_155_3(v184, &v193);
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_116_5(&v191);
                                  if (OUTLINED_FUNCTION_128_5(&v190))
                                  {
                                    OUTLINED_FUNCTION_7_42();
                                    OUTLINED_FUNCTION_155_3(v185, &v191);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_116_5(&v189);
                                    if (!OUTLINED_FUNCTION_128_5(&v188))
                                    {
                                      __swift_destroy_boxed_opaque_existential_1(&v211);
                                      v187 = 1;
                                      goto LABEL_47;
                                    }

                                    OUTLINED_FUNCTION_3_52();
                                    OUTLINED_FUNCTION_155_3(v186, &v189);
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

  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(&v211);
  sub_1D50572C4(v147, v150, type metadata accessor for GenericMusicItem);
  v187 = 0;
LABEL_47:
  __swift_storeEnumTagSinglePayload(v150, v187, 1, v141);
  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.cloudEndpointKind.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v207 = v26;
  v208 = v20;
  v206 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_14(v206);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v205 = v30;
  OUTLINED_FUNCTION_70_0();
  v204 = type metadata accessor for UploadedAudio();
  v31 = OUTLINED_FUNCTION_14(v204);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v203 = v34;
  OUTLINED_FUNCTION_70_0();
  v202 = type metadata accessor for TVShow();
  v35 = OUTLINED_FUNCTION_14(v202);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v201 = v38;
  OUTLINED_FUNCTION_70_0();
  v200 = type metadata accessor for TVSeason();
  v39 = OUTLINED_FUNCTION_14(v200);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v199 = v42;
  OUTLINED_FUNCTION_70_0();
  v198 = type metadata accessor for TVEpisode();
  v43 = OUTLINED_FUNCTION_14(v198);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v197 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D5614408();
  v48 = OUTLINED_FUNCTION_4(v47);
  v196 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v195 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D5613838();
  v54 = OUTLINED_FUNCTION_4(v53);
  v193 = v55;
  v194 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v190 = v58;
  OUTLINED_FUNCTION_70_0();
  v192 = type metadata accessor for SocialProfile();
  v59 = OUTLINED_FUNCTION_14(v192);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v191 = v62;
  OUTLINED_FUNCTION_70_0();
  v189 = sub_1D560F8B8();
  v63 = OUTLINED_FUNCTION_4(v189);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5614B68();
  v68 = OUTLINED_FUNCTION_12_0(v67, &a16);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v71);
  v72 = type metadata accessor for Playlist.Folder();
  v73 = OUTLINED_FUNCTION_20(v72, &a14);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5614898();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a11);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D560EEA8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v209);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v86);
  v87 = type metadata accessor for MusicMovie();
  v88 = OUTLINED_FUNCTION_20(v87, &v207);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D5613C48();
  v93 = OUTLINED_FUNCTION_12_0(v92, &v204);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v96);
  v97 = type metadata accessor for EditorialItem();
  v98 = OUTLINED_FUNCTION_20(v97, &v202);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v101);
  v102 = sub_1D56141F8();
  v103 = OUTLINED_FUNCTION_12_0(v102, &v199);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v106 = type metadata accessor for CreditArtist();
  v107 = OUTLINED_FUNCTION_20(v106, &v197);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v110);
  v111 = type metadata accessor for Composer();
  v112 = OUTLINED_FUNCTION_14(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v115 = sub_1D5613EF8();
  v116 = OUTLINED_FUNCTION_4(v115);
  v187 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v120 = sub_1D5613AF8();
  v121 = OUTLINED_FUNCTION_4(v120);
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_23_7();
  v126 = type metadata accessor for GenericMusicItem();
  v127 = OUTLINED_FUNCTION_14(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5();
  v132 = v131 - v130;
  sub_1D4F26680(v208, v131 - v130);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v160(v22, v132, v115);
      sub_1D5610C58();
      v138 = *(v187 + 8);
      v136 = v22;
      v137 = v115;
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v132, v23, v150);
      sub_1D50573F4(&qword_1EC7EEB38, type metadata accessor for Composer);
      sub_1D50573F4(&qword_1EDD54818, type metadata accessor for Composer);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_116();
      sub_1D5610C58();
      OUTLINED_FUNCTION_13_33();
      v152 = v23;
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      sub_1D50572C4(v132, v188, v154);
      sub_1D50573F4(&qword_1EC7EEB30, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_86_7();
      sub_1D50573F4(v155, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_106_4();
      sub_1D5610C58();
      OUTLINED_FUNCTION_14_33();
      v152 = v188;
      goto LABEL_30;
    case 4u:
      OUTLINED_FUNCTION_35_0(&v198);
      OUTLINED_FUNCTION_56_1();
      v146();
      sub_1D5610C58();
      (*(v111 + 8))(v21, v123);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_66_1(&v201);
      sub_1D50572C4(v167, v168, v169);
      sub_1D50573F4(&qword_1EC7EEB28, type metadata accessor for EditorialItem);
      sub_1D50573F4(&qword_1EC7EB3D0, type metadata accessor for EditorialItem);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for EditorialItem;
      goto LABEL_29;
    case 6u:
      OUTLINED_FUNCTION_35_0(&v203);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v175();
      goto LABEL_26;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_66_1(&v206);
      sub_1D50572C4(v156, v157, v158);
      sub_1D50573F4(&qword_1EC7EE9D8, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D50573F4(v159, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for MusicMovie;
      goto LABEL_29;
    case 8u:
      OUTLINED_FUNCTION_35_0(&v208);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v183();
      goto LABEL_26;
    case 9u:
      OUTLINED_FUNCTION_35_0(&a10);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v149();
      goto LABEL_26;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_66_1(&a13);
      sub_1D50572C4(v179, v180, v181);
      sub_1D50573F4(&qword_1EC7EEB20, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_81_9();
      sub_1D50573F4(v182, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for Playlist.Folder;
      goto LABEL_29;
    case 0xBu:
      OUTLINED_FUNCTION_35_0(&a15);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v145();
      goto LABEL_26;
    case 0xCu:
      OUTLINED_FUNCTION_35_0(&a18);
      v147 = OUTLINED_FUNCTION_11_21();
      v123 = v189;
      v148(v147, v132, v189);
      goto LABEL_26;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v172 = v132;
      v132 = v191;
      sub_1D50572C4(v172, v191, v173);
      sub_1D50573F4(&qword_1EC7EEB18, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      sub_1D50573F4(v174, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for SocialProfile;
      goto LABEL_29;
    case 0xEu:
      v111 = v193;
      v123 = v194;
      OUTLINED_FUNCTION_81();
      v20 = v190;
      v143 = OUTLINED_FUNCTION_222();
      v144(v143);
      goto LABEL_26;
    case 0xFu:
      v20 = v195;
      v111 = v196;
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_158_2();
      v153();
LABEL_26:
      sub_1D5610C58();
      (*(v111 + 8))(v20, v123);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v139 = v132;
      v132 = v197;
      sub_1D50572C4(v139, v197, v140);
      sub_1D50573F4(&qword_1EC7EEB10, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D50573F4(v141, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for TVEpisode;
      goto LABEL_29;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v161 = v132;
      v132 = v199;
      sub_1D50572C4(v161, v199, v162);
      sub_1D50573F4(&qword_1EC7EE9D0, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_83_7();
      sub_1D50573F4(v163, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for TVSeason;
      goto LABEL_29;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v176 = v132;
      v132 = v201;
      sub_1D50572C4(v176, v201, v177);
      sub_1D50573F4(&qword_1EC7EEB08, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_82_7();
      sub_1D50573F4(v178, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for TVShow;
      goto LABEL_29;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v184 = v132;
      v132 = v203;
      sub_1D50572C4(v184, v203, v185);
      sub_1D50573F4(&qword_1EC7EEB00, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D50573F4(v186, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for UploadedAudio;
      goto LABEL_29;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v164 = v132;
      v132 = v205;
      sub_1D50572C4(v164, v205, v165);
      sub_1D50573F4(&qword_1EC7EE9C8, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D50573F4(v166, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_143_3();
      v142 = type metadata accessor for UploadedVideo;
LABEL_29:
      v151 = v142;
      v152 = v132;
LABEL_30:
      sub_1D504CF98(v152, v151);
      break;
    case 0x15u:
      sub_1D504CF98(v132, type metadata accessor for GenericMusicItem);
      if (qword_1EC7E8A98 != -1)
      {
        swift_once();
      }

      v170 = sub_1D5610F88();
      __swift_project_value_buffer(v170, qword_1EC87BE98);
      OUTLINED_FUNCTION_24_0(v170);
      (*(v171 + 16))(v207);
      break;
    default:
      OUTLINED_FUNCTION_52_8();
      v133 = OUTLINED_FUNCTION_222();
      v134(v133);
      sub_1D5610C58();
      v135 = *(v123 + 8);
      v136 = OUTLINED_FUNCTION_184();
LABEL_14:
      v138(v136, v137);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.supportsFilteredByEquivalencies.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v209 = v21;
  v208 = type metadata accessor for UploadedVideo();
  v26 = OUTLINED_FUNCTION_14(v208);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v207 = v29;
  OUTLINED_FUNCTION_70_0();
  v206 = type metadata accessor for UploadedAudio();
  v30 = OUTLINED_FUNCTION_14(v206);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v205 = v33;
  OUTLINED_FUNCTION_70_0();
  v204 = type metadata accessor for TVShow();
  v34 = OUTLINED_FUNCTION_14(v204);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v203 = v37;
  OUTLINED_FUNCTION_70_0();
  v202 = type metadata accessor for TVSeason();
  v38 = OUTLINED_FUNCTION_14(v202);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v201 = v41;
  OUTLINED_FUNCTION_70_0();
  v200 = type metadata accessor for TVEpisode();
  v42 = OUTLINED_FUNCTION_14(v200);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v199 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5614408();
  v47 = OUTLINED_FUNCTION_4(v46);
  v197 = v48;
  v198 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D5613838();
  v52 = OUTLINED_FUNCTION_4(v51);
  v195 = v53;
  v196 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v194 = type metadata accessor for SocialProfile();
  v56 = OUTLINED_FUNCTION_14(v194);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v193 = v59;
  OUTLINED_FUNCTION_70_0();
  v60 = sub_1D560F8B8();
  v61 = OUTLINED_FUNCTION_4(v60);
  v191 = v62;
  v192 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D5614B68();
  v67 = OUTLINED_FUNCTION_12_0(v66, &a17);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = type metadata accessor for Playlist.Folder();
  v72 = OUTLINED_FUNCTION_20(v71, &a14);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5614898();
  v77 = OUTLINED_FUNCTION_12_0(v76, &a12);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v80);
  v81 = sub_1D560EEA8();
  v82 = OUTLINED_FUNCTION_12_0(v81, &a9);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = type metadata accessor for MusicMovie();
  v87 = OUTLINED_FUNCTION_20(v86, &v208);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v91 = sub_1D5613C48();
  v92 = OUTLINED_FUNCTION_12_0(v91, &v206);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v95);
  v96 = type metadata accessor for EditorialItem();
  v97 = OUTLINED_FUNCTION_20(v96, &v203);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v100);
  v101 = sub_1D56141F8();
  v102 = OUTLINED_FUNCTION_12_0(v101, &v201);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v105);
  v106 = type metadata accessor for CreditArtist();
  v107 = OUTLINED_FUNCTION_20(v106, &v198);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v110 = type metadata accessor for Composer();
  v111 = OUTLINED_FUNCTION_14(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v114 = sub_1D5613EF8();
  v115 = OUTLINED_FUNCTION_4(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v118 = sub_1D5613AF8();
  v119 = OUTLINED_FUNCTION_4(v118);
  v121 = v120;
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_23_7();
  v124 = type metadata accessor for GenericMusicItem();
  v125 = OUTLINED_FUNCTION_14(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5();
  v130 = v129 - v128;
  sub_1D4F26680(v209, v129 - v128);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0(&v197);
      v158(v20, v130, v114);
      sub_1D5610C78();
      v159 = *(v22 + 8);
      v160 = OUTLINED_FUNCTION_128();
      v161(v160);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v130, v22, v145);
      OUTLINED_FUNCTION_100_4();
      sub_1D50573F4(v146, v147);
      sub_1D5610C78();
      OUTLINED_FUNCTION_13_33();
      v149 = v22;
      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      sub_1D50572C4(v130, v23, v152);
      OUTLINED_FUNCTION_99_6();
      sub_1D50573F4(v153, v154);
      sub_1D5610C78();
      OUTLINED_FUNCTION_14_33();
      v149 = v23;
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_30_19(&v200);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v140(v139);
      goto LABEL_20;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v130, v168, &v202);
      OUTLINED_FUNCTION_95_6();
      sub_1D50573F4(v169, v170);
      sub_1D5610C78();
      v134 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19(&v205);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v175(v174);
      goto LABEL_20;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v130, v155, &v207);
      OUTLINED_FUNCTION_98_5();
      sub_1D50573F4(v156, v157);
      sub_1D5610C78();
      v134 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19(&v210);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v187(v186);
      sub_1D560EE48();
      goto LABEL_21;
    case 9u:
      OUTLINED_FUNCTION_30_19(&a11);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v144(v143);
      goto LABEL_20;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v130, v183, &a13);
      OUTLINED_FUNCTION_92_5();
      sub_1D50573F4(v184, v185);
      sub_1D5610C78();
      v134 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v138(v137);
      goto LABEL_20;
    case 0xCu:
      v114 = v191;
      OUTLINED_FUNCTION_33_1();
      v141 = OUTLINED_FUNCTION_11_21();
      v142(v141, v130, v192);
      goto LABEL_20;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v21 = v193;
      sub_1D50572C4(v130, v193, v171);
      OUTLINED_FUNCTION_94_6();
      sub_1D50573F4(v172, v173);
      sub_1D5610C78();
      v134 = type metadata accessor for SocialProfile;
      goto LABEL_26;
    case 0xEu:
      v114 = v195;
      v135 = OUTLINED_FUNCTION_45_15();
      v136(v135, v130, v196);
      sub_1D56137C8();
      goto LABEL_21;
    case 0xFu:
      v114 = v197;
      v150 = OUTLINED_FUNCTION_45_15();
      v151(v150, v130, v198);
LABEL_20:
      sub_1D5610C78();
LABEL_21:
      v176 = *(v114 + 8);
      v177 = OUTLINED_FUNCTION_159();
      v178(v177);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v21 = v199;
      sub_1D50572C4(v130, v199, v131);
      OUTLINED_FUNCTION_101_2();
      sub_1D50573F4(v132, v133);
      sub_1D5610C78();
      v134 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v21 = v201;
      sub_1D50572C4(v130, v201, v162);
      OUTLINED_FUNCTION_97_7();
      sub_1D50573F4(v163, v164);
      sub_1D5610C78();
      v134 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_162_3(v130, v179, v180);
      OUTLINED_FUNCTION_93_7();
      sub_1D50573F4(v181, v182);
      sub_1D5610C78();
      v134 = type metadata accessor for TVShow;
      goto LABEL_26;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v21 = v205;
      sub_1D50572C4(v130, v205, v188);
      OUTLINED_FUNCTION_91_7();
      sub_1D50573F4(v189, v190);
      sub_1D5610C78();
      v134 = type metadata accessor for UploadedAudio;
      goto LABEL_26;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v21 = v207;
      sub_1D50572C4(v130, v207, v165);
      OUTLINED_FUNCTION_96_6();
      sub_1D50573F4(v166, v167);
      sub_1D5610C78();
      v134 = type metadata accessor for UploadedVideo;
LABEL_26:
      v148 = v134;
      v149 = v21;
LABEL_27:
      sub_1D504CF98(v149, v148);
      break;
    case 0x15u:
      sub_1D504CF98(v130, type metadata accessor for GenericMusicItem);
      break;
    default:
      (*(v121 + 32))(v21, v130, v118);
      sub_1D5613A88();
      (*(v121 + 8))(v21, v118);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t static GenericMusicItem.catalogFilterID(for:)()
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
  result = OUTLINED_FUNCTION_124_2();
  __break(1u);
  return result;
}

uint64_t sub_1D5052D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D50573F4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

BOOL GenericMusicItem.hasSiriRepresentation.getter()
{
  v0 = type metadata accessor for GenericMusicItem();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_222();
  sub_1D4F26680(v7, v8);
  OUTLINED_FUNCTION_98();
  v9 = swift_getEnumCaseMultiPayload() != 21;
  sub_1D504CF98(v6, type metadata accessor for GenericMusicItem);
  return v9;
}

void GenericMusicItem.optional_siriRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v184 = v27;
  v28 = type metadata accessor for UploadedVideo();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v183 = v32;
  OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for UploadedAudio();
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v182 = v37;
  OUTLINED_FUNCTION_70_0();
  v38 = type metadata accessor for TVShow();
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v181 = v42;
  OUTLINED_FUNCTION_70_0();
  v43 = type metadata accessor for TVSeason();
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v180 = v47;
  OUTLINED_FUNCTION_70_0();
  v48 = type metadata accessor for TVEpisode();
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5614408();
  v53 = OUTLINED_FUNCTION_4(v52);
  v179 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v57 = sub_1D5613838();
  v58 = OUTLINED_FUNCTION_4(v57);
  v178 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D560F8B8();
  v63 = OUTLINED_FUNCTION_4(v62);
  v177 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v67 = sub_1D5614B68();
  v68 = OUTLINED_FUNCTION_4(v67);
  v176 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v72 = sub_1D5614898();
  v73 = OUTLINED_FUNCTION_4(v72);
  v175 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = sub_1D560EEA8();
  v79 = OUTLINED_FUNCTION_12_0(v78, &a17);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = type metadata accessor for MusicMovie();
  v84 = OUTLINED_FUNCTION_22(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v87);
  v88 = sub_1D5613C48();
  v89 = OUTLINED_FUNCTION_12_0(v88, &a13);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v92);
  v93 = type metadata accessor for EditorialItem();
  v94 = OUTLINED_FUNCTION_22(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v97);
  v98 = sub_1D56141F8();
  v99 = OUTLINED_FUNCTION_4(v98);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v102 = type metadata accessor for Composer();
  v103 = OUTLINED_FUNCTION_22(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v106 = sub_1D5613EF8();
  v107 = OUTLINED_FUNCTION_4(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v110 = sub_1D5613AF8();
  v111 = OUTLINED_FUNCTION_4(v110);
  v113 = v112;
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_23_7();
  v116 = type metadata accessor for GenericMusicItem();
  v117 = OUTLINED_FUNCTION_14(v116);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  sub_1D4F26680(v20, v22);
  OUTLINED_FUNCTION_27_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_2(&v185);
      v151(v21, v22, v106);
      OUTLINED_FUNCTION_67_12();
      Artist.siriRepresentation.getter(v152);
      (*(v116 + 8))(v21, v106);
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v22, v23, v135);
      OUTLINED_FUNCTION_67_12();
      Composer.siriRepresentation.getter(v136);
      OUTLINED_FUNCTION_13_33();
      v138 = v23;
      goto LABEL_25;
    case 3u:
    case 0xAu:
    case 0xDu:
      v120 = type metadata accessor for MusicSiriRepresentation();
      __swift_storeEnumTagSinglePayload(v184, 1, 1, v120);
      OUTLINED_FUNCTION_19_32();
      sub_1D504CF98(v22, v121);
      goto LABEL_29;
    case 4u:
      OUTLINED_FUNCTION_30_19(&a9);
      OUTLINED_FUNCTION_136_4();
      v161();
      OUTLINED_FUNCTION_67_12();
      Curator.siriRepresentation.getter(v162);
      (*(v21 + 8))(v24, v98);
      goto LABEL_26;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v22, v142, &a10);
      OUTLINED_FUNCTION_67_12();
      EditorialItem.siriRepresentation.getter(v143);
      v125 = type metadata accessor for EditorialItem;
      goto LABEL_24;
    case 6u:
      OUTLINED_FUNCTION_69_2(&a12);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_133();
      v167();
      OUTLINED_FUNCTION_67_12();
      Genre.siriRepresentation.getter(v168);
      goto LABEL_21;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v22, v133, &a14);
      OUTLINED_FUNCTION_67_12();
      MusicMovie.siriRepresentation.getter(v134);
      v125 = type metadata accessor for MusicMovie;
      goto LABEL_24;
    case 8u:
      OUTLINED_FUNCTION_69_2(&a16);
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_133();
      v165();
      OUTLINED_FUNCTION_67_12();
      MusicVideo.siriRepresentation.getter(v166);
      goto LABEL_21;
    case 9u:
      v116 = v175;
      v128 = *(v175 + 32);
      v129 = OUTLINED_FUNCTION_41_19();
      v130(v129);
      OUTLINED_FUNCTION_67_12();
      Playlist.siriRepresentation.getter();
      goto LABEL_21;
    case 0xBu:
      v116 = v176;
      v131 = OUTLINED_FUNCTION_46_13(v176);
      v132(v131);
      OUTLINED_FUNCTION_67_12();
      RadioShow.siriRepresentation.getter();
      goto LABEL_21;
    case 0xCu:
      v116 = v177;
      v158 = OUTLINED_FUNCTION_46_13(v177);
      v159(v158);
      OUTLINED_FUNCTION_67_12();
      RecordLabel.siriRepresentation.getter(v160);
      goto LABEL_21;
    case 0xEu:
      v116 = v178;
      v126 = OUTLINED_FUNCTION_46_13(v178);
      v127(v126);
      OUTLINED_FUNCTION_67_12();
      Song.siriRepresentation.getter();
      goto LABEL_21;
    case 0xFu:
      v116 = v179;
      v139 = OUTLINED_FUNCTION_46_13(v179);
      v140(v139);
      OUTLINED_FUNCTION_67_12();
      Station.siriRepresentation.getter(v141);
LABEL_21:
      v169 = *(v116 + 8);
      v170 = OUTLINED_FUNCTION_222();
      v172(v170, v171);
      goto LABEL_26;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      OUTLINED_FUNCTION_162_3(v22, v122, v123);
      OUTLINED_FUNCTION_67_12();
      TVEpisode.siriRepresentation.getter(v124);
      v125 = type metadata accessor for TVEpisode;
      goto LABEL_24;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v20 = v180;
      sub_1D50572C4(v22, v180, v153);
      OUTLINED_FUNCTION_67_12();
      TVSeason.siriRepresentation.getter(v154);
      v125 = type metadata accessor for TVSeason;
      goto LABEL_24;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v20 = v181;
      sub_1D50572C4(v22, v181, v163);
      OUTLINED_FUNCTION_67_12();
      TVShow.siriRepresentation.getter(v164);
      v125 = type metadata accessor for TVShow;
      goto LABEL_24;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v20 = v182;
      sub_1D50572C4(v22, v182, v173);
      OUTLINED_FUNCTION_67_12();
      UploadedAudio.siriRepresentation.getter(v174);
      v125 = type metadata accessor for UploadedAudio;
      goto LABEL_24;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v20 = v183;
      sub_1D50572C4(v22, v183, v155);
      OUTLINED_FUNCTION_67_12();
      UploadedVideo.siriRepresentation.getter(v156);
      v125 = type metadata accessor for UploadedVideo;
LABEL_24:
      v137 = v125;
      v138 = v20;
LABEL_25:
      sub_1D504CF98(v138, v137);
LABEL_26:
      v149 = type metadata accessor for MusicSiriRepresentation();
      v150 = v110;
      goto LABEL_27;
    case 0x15u:
      sub_1D504CF98(v22, type metadata accessor for GenericMusicItem);
      v149 = type metadata accessor for MusicSiriRepresentation();
      v150 = v184;
      v157 = 1;
      goto LABEL_28;
    default:
      v144 = OUTLINED_FUNCTION_46_13(v113);
      v145(v144);
      Album.siriRepresentation.getter();
      v146 = *(v113 + 8);
      v147 = OUTLINED_FUNCTION_159();
      v148(v147);
      v149 = type metadata accessor for MusicSiriRepresentation();
      v150 = v184;
LABEL_27:
      v157 = 0;
LABEL_28:
      __swift_storeEnumTagSinglePayload(v150, v157, 1, v149);
LABEL_29:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t GenericMusicItem.init(from:)(uint64_t *a1)
{
  type metadata accessor for GenericMusicItem();
  sub_1D4E62938(a1, v7);
  OUTLINED_FUNCTION_28_27();
  sub_1D50573F4(v3, v4);
  OUTLINED_FUNCTION_90_7();
  sub_1D50573F4(v5, v1);
  OUTLINED_FUNCTION_113_6(qword_1EDD5CE70);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GenericMusicItem.encode(to:)()
{
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_28_27();
  sub_1D50573F4(v1, v2);
  OUTLINED_FUNCTION_90_7();
  sub_1D50573F4(v3, v0);
  OUTLINED_FUNCTION_113_6(qword_1EDD5CE70);
  OUTLINED_FUNCTION_27_1();
  return sub_1D5612688();
}

void GenericMusicItem.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v255 = v21;
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v253 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for UploadedAudio();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v252 = v36;
  OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for TVShow();
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v254 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = type metadata accessor for TVSeason();
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v251 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = type metadata accessor for TVEpisode();
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v248 = v51;
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5614408();
  v53 = OUTLINED_FUNCTION_4(v52);
  v249 = v54;
  v250 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v247 = v57;
  OUTLINED_FUNCTION_70_0();
  v58 = sub_1D5613838();
  v59 = OUTLINED_FUNCTION_4(v58);
  v245 = v60;
  v246 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v244 = v63;
  OUTLINED_FUNCTION_70_0();
  v64 = type metadata accessor for SocialProfile();
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v241 = v68;
  OUTLINED_FUNCTION_70_0();
  v69 = sub_1D560F8B8();
  v70 = OUTLINED_FUNCTION_4(v69);
  v242 = v71;
  v243 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v240 = v74;
  OUTLINED_FUNCTION_70_0();
  v239 = sub_1D5614B68();
  v75 = OUTLINED_FUNCTION_4(v239);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = type metadata accessor for Playlist.Folder();
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v83);
  v84 = sub_1D5614898();
  v85 = OUTLINED_FUNCTION_12_0(v84, &a16);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560EEA8();
  v90 = OUTLINED_FUNCTION_12_0(v89, &a12);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = type metadata accessor for MusicMovie();
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D5613C48();
  v100 = OUTLINED_FUNCTION_12_0(v99, &a9);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v103);
  v104 = type metadata accessor for EditorialItem();
  v105 = OUTLINED_FUNCTION_22(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D56141F8();
  v110 = OUTLINED_FUNCTION_12_0(v109, &v256 + 8);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v113 = type metadata accessor for CreditArtist();
  v114 = OUTLINED_FUNCTION_22(v113);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v117 = type metadata accessor for Composer();
  v118 = OUTLINED_FUNCTION_22(v117);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v121);
  v122 = sub_1D5613EF8();
  v123 = OUTLINED_FUNCTION_4(v122);
  v125 = v124;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v128 = sub_1D5613AF8();
  v129 = OUTLINED_FUNCTION_4(v128);
  v131 = v130;
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v134 = type metadata accessor for GenericMusicItem();
  v135 = OUTLINED_FUNCTION_14(v134);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_23_7();
  sub_1D4F26680(v21, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v194 = *(v125 + 32);
      v195 = OUTLINED_FUNCTION_123_2();
      v196(v195);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v198 - 7;
      v258 = v197;
      OUTLINED_FUNCTION_104_6();
      sub_1D50573F4(v199, v200);
      sub_1D56160F8();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      (*(v125 + 8))(v23, v122);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      OUTLINED_FUNCTION_66_1(&v254);
      sub_1D50572C4(v169, v170, v171);
      v257 = 0;
      v258 = 0xE000000000000000;
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v173 - 5;
      v258 = v172;
      *&v256 = 0;
      *(&v256 + 1) = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(&v256, "Composer(id: ");
      HIBYTE(v256) = -18;
      v174 = *v131;
      v175 = v131[1];
      v176 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v176);

      OUTLINED_FUNCTION_148_5();
      v177 = Composer.name.getter();
      MEMORY[0x1DA6EAC70](v177);

      OUTLINED_FUNCTION_160_4();
      MEMORY[0x1DA6EAC70](v256, *(&v256 + 1));

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for Composer;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      v182 = OUTLINED_FUNCTION_159();
      sub_1D50572C4(v182, v183, v184);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v186 - 1;
      v258 = v185;
      v187 = CreditArtist.description.getter();
      MEMORY[0x1DA6EAC70](v187);

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_14_33();
      v189 = v20;
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_35_0(&v256);
      OUTLINED_FUNCTION_133();
      v157();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v159 - 6;
      v258 = v158;
      OUTLINED_FUNCTION_74_8();
      sub_1D50573F4(v160, v161);
      sub_1D56160F8();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      (*(v128 + 8))(v24, v131);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_66_1(&v255);
      sub_1D50572C4(v205, v206, v207);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v208);
      EditorialItem.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_35_0(&v259);
      v146 = v235;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_133();
      v216();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v218 - 8;
      v258 = v217;
      OUTLINED_FUNCTION_103_5();
      goto LABEL_23;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_66_1(&v258);
      sub_1D50572C4(v190, v191, v192);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v193);
      MusicMovie.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_35_0(&a11);
      v146 = v236;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_133();
      v230();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v232 - 3;
      v258 = v231;
      OUTLINED_FUNCTION_102_6();
      goto LABEL_23;
    case 9u:
      OUTLINED_FUNCTION_35_0(&a15);
      v146 = v237;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_133();
      v166();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v168 - 5;
      v258 = v167;
      OUTLINED_FUNCTION_72_11();
      goto LABEL_23;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_66_1(&a14);
      sub_1D50572C4(v226, v227, v228);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v229);
      Playlist.Folder.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_35_0(&a18);
      v146 = v238;
      v153 = OUTLINED_FUNCTION_109();
      v131 = v239;
      v154(v153);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v156 - 4;
      v258 = v155;
      OUTLINED_FUNCTION_75_6();
      goto LABEL_23;
    case 0xCu:
      v128 = v242;
      v131 = v243;
      OUTLINED_FUNCTION_81();
      v146 = v240;
      v162 = OUTLINED_FUNCTION_109();
      v163(v162);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v165 - 2;
      v258 = v164;
      OUTLINED_FUNCTION_73_7();
      goto LABEL_23;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v131 = v241;
      sub_1D50572C4(v21, v241, v214);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v215);
      SocialProfile.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for SocialProfile;
      goto LABEL_26;
    case 0xEu:
      v146 = v244;
      v128 = v245;
      OUTLINED_FUNCTION_81();
      v147 = OUTLINED_FUNCTION_109();
      v131 = v246;
      v148(v147);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v150 - 9;
      v258 = v149;
      OUTLINED_FUNCTION_76_7();
      goto LABEL_23;
    case 0xFu:
      v128 = v249;
      v131 = v250;
      OUTLINED_FUNCTION_81();
      v146 = v247;
      v178 = OUTLINED_FUNCTION_109();
      v179(v178);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v181 - 6;
      v258 = v180;
      OUTLINED_FUNCTION_105_6();
LABEL_23:
      sub_1D50573F4(v151, v152);
      sub_1D56160F8();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      (*(v128 + 8))(v146, v131);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v131 = v248;
      sub_1D50572C4(v21, v248, v143);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v144);
      TVEpisode.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v131 = v251;
      sub_1D50572C4(v21, v251, v201);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v202);
      TVSeason.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v131 = v254;
      sub_1D50572C4(v21, v254, v219);
      v257 = 0;
      v258 = 0xE000000000000000;
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v221 - 7;
      v258 = v220;
      *(&v256 + 1) = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(&v256, "TVShow(id: ");
      BYTE13(v256) = 0;
      HIWORD(v256) = -5120;
      v222 = *v254;
      v223 = v254[1];
      v224 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v224);

      OUTLINED_FUNCTION_148_5();
      v225 = TVShow.name.getter();
      MEMORY[0x1DA6EAC70](v225);

      OUTLINED_FUNCTION_160_4();
      MEMORY[0x1DA6EAC70](v256, *(&v256 + 1));

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for TVShow;
      goto LABEL_26;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v131 = v252;
      sub_1D50572C4(v21, v252, v233);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v234);
      UploadedAudio.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for UploadedAudio;
      goto LABEL_26;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v131 = v253;
      sub_1D50572C4(v21, v253, v203);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      OUTLINED_FUNCTION_119_4(v204);
      UploadedVideo.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v145 = type metadata accessor for UploadedVideo;
LABEL_26:
      v188 = v145;
      v189 = v131;
LABEL_27:
      sub_1D504CF98(v189, v188);
      break;
    case 0x15u:
      v209 = *v21;
      v210 = v21[1];
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v212 - 3;
      v258 = v211;
      OUTLINED_FUNCTION_128();
      sub_1D560EEC8();

      v213 = OUTLINED_FUNCTION_24();
      MEMORY[0x1DA6EAC70](v213);

      OUTLINED_FUNCTION_160_4();
      break;
    default:
      OUTLINED_FUNCTION_33_1();
      v138(v22, v21, v128);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_22_27();
      v257 = v140 - 8;
      v258 = v139;
      OUTLINED_FUNCTION_77_4();
      sub_1D50573F4(v141, v142);
      sub_1D56160F8();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      (v131[1])(v22, v128);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v252 = v21;
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v251 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for UploadedAudio();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v250 = v36;
  OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for TVShow();
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v249 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = type metadata accessor for TVSeason();
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v248 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = type metadata accessor for TVEpisode();
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v247 = v51;
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5614408();
  v53 = OUTLINED_FUNCTION_4(v52);
  v245 = v54;
  v246 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v244 = v57;
  OUTLINED_FUNCTION_70_0();
  v58 = sub_1D5613838();
  v59 = OUTLINED_FUNCTION_4(v58);
  v242 = v60;
  v243 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v241 = v63;
  OUTLINED_FUNCTION_70_0();
  v64 = type metadata accessor for SocialProfile();
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v240 = v68;
  OUTLINED_FUNCTION_70_0();
  v69 = sub_1D560F8B8();
  v70 = OUTLINED_FUNCTION_12_0(v69, &a18);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D5614B68();
  v75 = OUTLINED_FUNCTION_12_0(v74, &a15);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = type metadata accessor for Playlist.Folder();
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v83);
  v84 = sub_1D5614898();
  v85 = OUTLINED_FUNCTION_12_0(v84, &a11);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560EEA8();
  v90 = OUTLINED_FUNCTION_12_0(v89, &v260);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = type metadata accessor for MusicMovie();
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D5613C48();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v256);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v103);
  v104 = type metadata accessor for EditorialItem();
  v105 = OUTLINED_FUNCTION_22(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D56141F8();
  v110 = OUTLINED_FUNCTION_12_0(v109, &v252);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v113);
  v114 = type metadata accessor for CreditArtist();
  v115 = OUTLINED_FUNCTION_22(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v118 = type metadata accessor for Composer();
  v119 = OUTLINED_FUNCTION_22(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v122 = sub_1D5613EF8();
  v123 = OUTLINED_FUNCTION_4(v122);
  v125 = v124;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v128 = sub_1D5613AF8();
  v129 = OUTLINED_FUNCTION_4(v128);
  v131 = v130;
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v134 = type metadata accessor for GenericMusicItem();
  v135 = OUTLINED_FUNCTION_14(v134);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_23_7();
  sub_1D4F26680(v252, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v195 = *(v125 + 32);
      v196 = OUTLINED_FUNCTION_109();
      v197(v196);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v198);
      v199 = sub_1D5613DF8();
      OUTLINED_FUNCTION_18_32(v199, v200);
      v201 = OUTLINED_FUNCTION_15_33();
      v203 = v202;

      MEMORY[0x1DA6EAC70](v201, v203);

      OUTLINED_FUNCTION_53();
      (*(v125 + 8))(v23, v122);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      v173 = OUTLINED_FUNCTION_159();
      sub_1D50572C4(v173, v174, v175);
      OUTLINED_FUNCTION_21_27();
      v258 = v177 - 5;
      v259 = v176;
      v256 = Composer.debugDescription.getter();
      v257 = v178;
      v254[1] = 10;
      v255 = 0xE100000000000000;
      v253 = 2105354;
      v254[0] = 0xE300000000000000;
      sub_1D4F53278();
      OUTLINED_FUNCTION_15_33();

      v179 = OUTLINED_FUNCTION_27_1();
      MEMORY[0x1DA6EAC70](v179);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_13_33();
      v181 = v20;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      sub_1D50572C4(v21, v24, v186);
      OUTLINED_FUNCTION_21_27();
      v258 = v188 - 1;
      v259 = v187;
      v189 = CreditArtist.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v189, v190);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_14_33();
      v181 = v24;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_69_2(&v253);
      v161 = OUTLINED_FUNCTION_52_13();
      v162(v161);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v163);
      v164 = sub_1D5614148();
      OUTLINED_FUNCTION_18_32(v164, v165);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v166 = *(v23 + 8);
      v167 = OUTLINED_FUNCTION_45_3();
      v168(v167);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_154_4(v21, v212, v254);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v213);
      v214 = EditorialItem.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v214, v215);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for EditorialItem;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_60_1(&v255);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_151();
      v224();
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v225);
      v157 = sub_1D5613B88();
      goto LABEL_23;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_154_4(v21, v191, &v257);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v192);
      v193 = MusicMovie.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v193, v194);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for MusicMovie;
      goto LABEL_25;
    case 8u:
      OUTLINED_FUNCTION_60_1(&v259);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_151();
      v234();
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v235);
      v157 = sub_1D560EDB8();
      goto LABEL_23;
    case 9u:
      OUTLINED_FUNCTION_60_1(&a10);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_151();
      v171();
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v172);
      v157 = sub_1D5614588();
      goto LABEL_23;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_154_4(v21, v230, &a12);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v231);
      v232 = Playlist.Folder.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v232, v233);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for Playlist.Folder;
      goto LABEL_25;
    case 0xBu:
      OUTLINED_FUNCTION_60_1(&a14);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_151();
      v159();
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v160);
      v157 = sub_1D5614AB8();
      goto LABEL_23;
    case 0xCu:
      OUTLINED_FUNCTION_60_1(&a17);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_151();
      v169();
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v170);
      v157 = sub_1D560F818();
      goto LABEL_23;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v23 = v240;
      sub_1D50572C4(v21, v240, v220);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v221);
      v222 = SocialProfile.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v222, v223);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for SocialProfile;
      goto LABEL_25;
    case 0xEu:
      v134 = v241;
      v128 = v242;
      v153 = *(v242 + 32);
      v154 = OUTLINED_FUNCTION_123_2();
      v23 = v243;
      v155(v154);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v156);
      v157 = sub_1D56136C8();
      goto LABEL_23;
    case 0xFu:
      v134 = v244;
      v128 = v245;
      v182 = *(v245 + 32);
      v183 = OUTLINED_FUNCTION_123_2();
      v23 = v246;
      v184(v183);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_120_3(v185);
      v157 = sub_1D5614268();
LABEL_23:
      OUTLINED_FUNCTION_18_32(v157, v158);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      (*(v128 + 8))(v134, v23);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v23 = v247;
      sub_1D50572C4(v21, v247, v148);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v149);
      v150 = TVEpisode.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v150, v151);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for TVEpisode;
      goto LABEL_25;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v23 = v248;
      sub_1D50572C4(v21, v248, v204);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v205);
      v206 = TVSeason.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v206, v207);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for TVSeason;
      goto LABEL_25;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v23 = v249;
      sub_1D50572C4(v21, v249, v226);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v227);
      v228 = TVShow.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v228, v229);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for TVShow;
      goto LABEL_25;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v23 = v250;
      sub_1D50572C4(v21, v250, v236);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v237);
      v238 = UploadedAudio.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v238, v239);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for UploadedAudio;
      goto LABEL_25;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v23 = v251;
      sub_1D50572C4(v21, v251, v208);
      OUTLINED_FUNCTION_21_27();
      OUTLINED_FUNCTION_109_6(v209);
      v210 = UploadedVideo.debugDescription.getter();
      OUTLINED_FUNCTION_18_32(v210, v211);
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_53();
      v152 = type metadata accessor for UploadedVideo;
LABEL_25:
      v180 = v152;
      v181 = v23;
LABEL_26:
      sub_1D504CF98(v181, v180);
      break;
    case 0x15u:
      v216 = *v21;
      v217 = v21[1];
      OUTLINED_FUNCTION_21_27();
      v258 = v219 - 6;
      v259 = v218;
      sub_1D560EEC8();

      OUTLINED_FUNCTION_65_13();

      OUTLINED_FUNCTION_160_4();
      break;
    default:
      v138 = *(v131 + 32);
      v139 = OUTLINED_FUNCTION_116();
      v140(v139);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_21_27();
      v258 = v142 - 8;
      v259 = v141;
      v143 = sub_1D5613958();
      OUTLINED_FUNCTION_18_32(v143, v144);
      v145 = OUTLINED_FUNCTION_15_33();
      v147 = v146;

      MEMORY[0x1DA6EAC70](v145, v147);

      OUTLINED_FUNCTION_53();
      (*(v131 + 8))(v22, v128);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v129 = v3;
  v4 = sub_1D56120A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v121 = v6;
  v122 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v120 = v9;
  OUTLINED_FUNCTION_70_0();
  v125 = sub_1D5612998();
  v10 = OUTLINED_FUNCTION_4(v125);
  v119 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v124 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D5612518();
  v16 = OUTLINED_FUNCTION_4(v15);
  v123 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v20 = sub_1D5610088();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v26);
  v128 = sub_1D5613158();
  v27 = OUTLINED_FUNCTION_4(v128);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v127 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v118 - v35;
  v37 = v2[3];
  v36 = v2[4];
  v130 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v37);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_39_16();
  sub_1D50573F4(v38, v39);
  LOBYTE(v2) = OUTLINED_FUNCTION_29_25();
  v40 = *(v23 + 8);
  v41 = OUTLINED_FUNCTION_66();
  v40(v41);
  if (v2 & 1) != 0 || (sub_1D560FEA8(), v42 = OUTLINED_FUNCTION_29_25(), v43 = OUTLINED_FUNCTION_66(), v40(v43), (v42))
  {
    v44 = OUTLINED_FUNCTION_130();
    v40(v44);
    v45 = MEMORY[0x1E6976838];
  }

  else
  {
    sub_1D560FFD8();
    v59 = OUTLINED_FUNCTION_29_25();
    v60 = OUTLINED_FUNCTION_66();
    v40(v60);
    if (v59 & 1) != 0 || (sub_1D560FEE8(), v61 = OUTLINED_FUNCTION_29_25(), v62 = OUTLINED_FUNCTION_66(), v40(v62), (v61))
    {
      v63 = OUTLINED_FUNCTION_130();
      v40(v63);
      v45 = MEMORY[0x1E6976850];
    }

    else
    {
      sub_1D560FE88();
      v64 = OUTLINED_FUNCTION_29_25();
      v65 = OUTLINED_FUNCTION_66();
      v40(v65);
      if (v64)
      {
        v66 = OUTLINED_FUNCTION_130();
        v40(v66);
        v45 = MEMORY[0x1E69767B8];
      }

      else
      {
        sub_1D560FFF8();
        v67 = OUTLINED_FUNCTION_29_25();
        v68 = OUTLINED_FUNCTION_66();
        v40(v68);
        if (v67)
        {
          v69 = OUTLINED_FUNCTION_130();
          v40(v69);
          v45 = MEMORY[0x1E6976868];
        }

        else
        {
          sub_1D560FE78();
          v70 = OUTLINED_FUNCTION_29_25();
          v71 = OUTLINED_FUNCTION_66();
          v40(v71);
          if (v70)
          {
            v72 = v130[3];
            v118 = v130[4];
            __swift_project_boxed_opaque_existential_1(v130, v72);
            sub_1D5610CC8();
            v73 = OUTLINED_FUNCTION_72_2();
            sub_1D4E62938(v73, v74);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
            if (swift_dynamicCast())
            {
              __swift_destroy_boxed_opaque_existential_1(&v133);
              v75 = OUTLINED_FUNCTION_130();
              v40(v75);
              (*(v123 + 8))(v0, v15);
              v45 = MEMORY[0x1E69767B0];
            }

            else
            {
              v78 = OUTLINED_FUNCTION_72_2();
              sub_1D4E62938(v78, v79);
              if (swift_dynamicCast())
              {
                __swift_destroy_boxed_opaque_existential_1(&v133);
                v80 = OUTLINED_FUNCTION_130();
                v40(v80);
                v81 = *(v119 + 8);
                v82 = OUTLINED_FUNCTION_159();
                v83(v82);
                v45 = MEMORY[0x1E6976898];
              }

              else
              {
                v85 = OUTLINED_FUNCTION_72_2();
                sub_1D4E62938(v85, v86);
                if (!swift_dynamicCast())
                {
                  v131 = 0;
                  v132 = 0xE000000000000000;
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D56829C0);
                  v108 = v130[4];
                  __swift_project_boxed_opaque_existential_1(v130, v130[3]);
                  OUTLINED_FUNCTION_24();
                  sub_1D5610CF8();
                  OUTLINED_FUNCTION_39_16();
                  sub_1D50573F4(v109, v110);
                  v111 = sub_1D56160F8();
                  MEMORY[0x1DA6EAC70](v111);

                  v112 = OUTLINED_FUNCTION_66();
                  v40(v112);
                  MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56829F0);
                  OUTLINED_FUNCTION_72_2();
                  sub_1D5615D48();
                  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
                  while (1)
                  {
                    OUTLINED_FUNCTION_124_2();
                    __break(1u);
LABEL_27:
                    v133 = 0;
                    v134 = 0xE000000000000000;
                    sub_1D5615B68();

                    v133 = 0xD00000000000002FLL;
                    v134 = 0x80000001D5682990;
                    v113 = v130[4];
                    __swift_project_boxed_opaque_existential_1(v130, v130[3]);
                    OUTLINED_FUNCTION_24();
                    sub_1D5610CF8();
                    OUTLINED_FUNCTION_39_16();
                    sub_1D50573F4(v114, v115);
                    v116 = sub_1D56160F8();
                    MEMORY[0x1DA6EAC70](v116);

                    v117 = OUTLINED_FUNCTION_66();
                    v40(v117);
                    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
                  }
                }

                __swift_destroy_boxed_opaque_existential_1(&v133);
                v87 = OUTLINED_FUNCTION_130();
                v40(v87);
                v88 = *(v121 + 8);
                v89 = OUTLINED_FUNCTION_159();
                v90(v89);
                v45 = MEMORY[0x1E6976840];
              }
            }
          }

          else
          {
            sub_1D560FED8();
            OUTLINED_FUNCTION_29_25();
            v76 = OUTLINED_FUNCTION_33_25();
            v40(v76);
            if (v0)
            {
              v77 = OUTLINED_FUNCTION_130();
              v40(v77);
              v45 = MEMORY[0x1E69767C8];
            }

            else
            {
              sub_1D560FFC8();
              OUTLINED_FUNCTION_29_25();
              v84 = OUTLINED_FUNCTION_33_25();
              v40(v84);
              sub_1D560FE28();
              OUTLINED_FUNCTION_29_25();
              v91 = OUTLINED_FUNCTION_33_25();
              v40(v91);
              if ((v0 & 1) == 0)
              {
                sub_1D560FE38();
                OUTLINED_FUNCTION_29_25();
                v93 = OUTLINED_FUNCTION_33_25();
                v40(v93);
                sub_1D560FDF8();
                OUTLINED_FUNCTION_29_25();
                v94 = OUTLINED_FUNCTION_33_25();
                v40(v94);
                sub_1D5610038();
                OUTLINED_FUNCTION_29_25();
                v95 = OUTLINED_FUNCTION_33_25();
                v40(v95);
                sub_1D560FF58();
                OUTLINED_FUNCTION_29_25();
                v96 = OUTLINED_FUNCTION_33_25();
                v40(v96);
                sub_1D560FF68();
                OUTLINED_FUNCTION_29_25();
                v97 = OUTLINED_FUNCTION_33_25();
                v40(v97);
                sub_1D560FE58();
                OUTLINED_FUNCTION_29_25();
                v98 = OUTLINED_FUNCTION_33_25();
                v40(v98);
                sub_1D560FF18();
                OUTLINED_FUNCTION_29_25();
                v99 = OUTLINED_FUNCTION_33_25();
                v40(v99);
                sub_1D560FFA8();
                OUTLINED_FUNCTION_29_25();
                v100 = OUTLINED_FUNCTION_33_25();
                v40(v100);
                sub_1D560FE48();
                OUTLINED_FUNCTION_29_25();
                v101 = OUTLINED_FUNCTION_33_25();
                v40(v101);
                sub_1D5610008();
                OUTLINED_FUNCTION_29_25();
                v102 = OUTLINED_FUNCTION_33_25();
                v40(v102);
                sub_1D5610078();
                OUTLINED_FUNCTION_29_25();
                v103 = OUTLINED_FUNCTION_33_25();
                v40(v103);
                sub_1D5610068();
                OUTLINED_FUNCTION_29_25();
                v104 = OUTLINED_FUNCTION_33_25();
                v40(v104);
                sub_1D560FFE8();
                OUTLINED_FUNCTION_29_25();
                v105 = OUTLINED_FUNCTION_33_25();
                v40(v105);
                sub_1D560FF28();
                OUTLINED_FUNCTION_29_25();
                v106 = OUTLINED_FUNCTION_33_25();
                v40(v106);
                sub_1D560FF38();
                OUTLINED_FUNCTION_29_25();
                v107 = OUTLINED_FUNCTION_33_25();
                v40(v107);
                goto LABEL_27;
              }

              v92 = OUTLINED_FUNCTION_130();
              v40(v92);
              v45 = MEMORY[0x1E6976798];
            }
          }
        }
      }
    }
  }

  v46 = v126;
  v47 = v128;
  (*(v29 + 104))(v126, *v45, v128);
  v48 = v130;
  sub_1D4E62938(v130, &v133);
  v49 = v127;
  (*(v29 + 16))(v127, v46, v47);
  GenericMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)(&v133, v49, v50, v51, v52, v53, v54, v55, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v56 = *(v29 + 8);
  v57 = OUTLINED_FUNCTION_109();
  v58(v57);
  __swift_destroy_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50569B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561D750;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69751F8], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x1E69751F0], v0);
  qword_1EC7EEAC8 = v4;
  return result;
}

uint64_t sub_1D5056B58()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD5C618);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_28_27();
  sub_1D50573F4(v3, v4);
  return sub_1D560D988();
}