uint64_t sub_1D4FD7B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_76_2();
  a22 = v28;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v31 = v28[22];
  v32 = sub_1D560C758();
  v28[35] = OUTLINED_FUNCTION_62_4(v32, qword_1EC87C128);

  v33 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_129_2())
  {
    v34 = v28[22];
    OUTLINED_FUNCTION_142();
    v35 = OUTLINED_FUNCTION_37_0();
    a13 = v35;
    *v31 = 136446210;
    v36 = sub_1D4F636B4();
    v38 = sub_1D4E6835C(v36, v37, &a13);

    *(v31 + 4) = v38;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v39, v40, "<MusicLibraryPlaylistEditViewModel: %{public}s>  Begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  v41 = v28[30];
  v42 = v28[31];
  v43 = v28[22];
  *(v43 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 1;
  v44 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59();
  sub_1D4E69970(v43 + v44, v41, &unk_1EC7F1990, &unk_1D561CEF0);
  v45 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v45, v46, v42) == 1)
  {
    sub_1D4E50004(v28[30], &unk_1EC7F1990, &unk_1D561CEF0);
LABEL_12:
    OUTLINED_FUNCTION_86_6();
    v78 = v28[22];
    v79 = sub_1D4FD63A4();
    v80 = *(v78 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries);
    *(v78 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = v79;

    v81 = *(v78 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v28[2] = v28;
    OUTLINED_FUNCTION_36_12();
    v82 = swift_continuation_init();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v83);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    v28[13] = v84;
    v28[14] = v82;
    v85 = OUTLINED_FUNCTION_63_7();
    [v85 v86];
    OUTLINED_FUNCTION_63_0();

    return MEMORY[0x1EEE6DEC8](v87);
  }

  v47 = v28[22];
  (*(v28[32] + 32))(v28[34], v28[30], v28[31]);
  v48 = *(sub_1D4FD63A4() + 16);

  if (!v48)
  {
    (*(v28[32] + 8))(v28[34], v28[31]);
    goto LABEL_12;
  }

  v49 = v28[33];
  v50 = v28[34];
  v51 = v28[31];
  v52 = v28[32];
  v54 = v28[28];
  v53 = v28[29];
  v55 = v28[26];
  v56 = v28[27];
  v57 = v28[24];
  v91 = v28[23];
  v92 = v28[25];
  v90 = v28[22];
  v58 = *MEMORY[0x1E6976988];
  OUTLINED_FUNCTION_89_1();
  v59(v53);
  (*(v56 + 16))(v54, v53, v55);
  v60 = *(v52 + 16);
  v61 = OUTLINED_FUNCTION_71();
  v62(v61);
  sub_1D4ECAE6C();
  v28[36] = v63;
  (*(v56 + 8))(v53, v55);
  v64 = sub_1D4FD63A4();
  v28[21] = v64;
  v28[37] = v64;
  (*(v57 + 104))(v92, *MEMORY[0x1E69E7F88], v91);
  v65 = *(MEMORY[0x1E6977588] + 4);
  v66 = swift_task_alloc();
  v28[38] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  v28[39] = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  sub_1D4FE2138(&qword_1EC7ED3E8);
  OUTLINED_FUNCTION_78_6();
  *v66 = v67;
  v66[1] = sub_1D4FD7F7C;
  v68 = v28[25];
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEDD2260](v69, v70, v71, v72, v73, v74, v75, v76, a9, v90, v91, v92, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4FD7F7C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  v4 = v3[38];
  v5 = v3[37];
  v6 = v3[25];
  v7 = v3[24];
  v8 = v3[23];
  v9 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v12 + 320) = v11;

  v13 = OUTLINED_FUNCTION_15_8();
  v14(v13);

  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D4FD80D0()
{
  OUTLINED_FUNCTION_75_0();
  v34 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[22];
  v6 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  [v6 appendSection_];
  v7 = sub_1D5615158();

  v8 = OUTLINED_FUNCTION_121_3();
  [v8 v9];

  v10 = sub_1D560C738();
  v11 = sub_1D56156E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[22];
    v13 = OUTLINED_FUNCTION_142();
    v33 = OUTLINED_FUNCTION_138_0();
    *v13 = 136446210;
    v14 = sub_1D4F636B4();
    v16 = sub_1D4E6835C(v14, v15, &v33);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1D4E3F000, v10, v11, "<MusicLibraryPlaylistEditViewModel: %{public}s> Setting initial tracklist on underlying playlist edit controller.", v13, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v17 = v0[36];
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[32];
  [*(v0[22] + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) setInitialTrackList_];

  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_121();
  v23(v22);
  v24 = v0[22];
  v25 = sub_1D4FD63A4();
  v26 = *(v24 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries);
  *(v24 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = v25;

  v27 = *(v24 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v0[2] = v0;
  OUTLINED_FUNCTION_36_12();
  v28 = swift_continuation_init();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v29);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v30;
  v0[14] = v28;
  OUTLINED_FUNCTION_130_3(v31, sel_beginEditingWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D4FD8320()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD841C()
{
  OUTLINED_FUNCTION_160();
  v20 = v0;
  v1 = v0[35];
  v2 = v0[22];

  v3 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_129_2())
  {
    v4 = v0[22];
    OUTLINED_FUNCTION_142();
    v5 = OUTLINED_FUNCTION_37_0();
    v19 = v5;
    *v2 = 136446210;
    v6 = sub_1D4F636B4();
    v8 = sub_1D4E6835C(v6, v7, &v19);

    *(v2 + 4) = v8;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v9, v10, "<MusicLibraryPlaylistEditViewModel: %{public}s> Completed begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  v12 = v0[33];
  v11 = v0[34];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[28];
  v16 = v0[25];

  OUTLINED_FUNCTION_55();

  return v17();
}

uint64_t sub_1D4FD855C()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[41];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v9 = v0[41];

  return v8();
}

uint64_t sub_1D4FD8610@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D5614828();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D56131C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v10 + 104))(&v20 - v15, *MEMORY[0x1E6976988], v9);
  (*(v10 + 16))(v14, v16, v9);
  (*(v5 + 16))(v8, a1, v4);
  sub_1D4ECAE44();
  v18 = v17;
  result = (*(v10 + 8))(v16, v9);
  *a2 = v18;
  return result;
}

uint64_t sub_1D4FD87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD8810()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  *(v0 + 40) = *(v0 + 64);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v11 = OUTLINED_FUNCTION_96_4(boxed_opaque_existential_0, v3, v4, v5, v6, v7, v8, v9, v10);
  (*(v12 + 16))(v11);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1D4FD88E0;
  v14 = *(v0 + 80);

  return sub_1D4FD8A60();
}

uint64_t sub_1D4FD88E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D4FD8A04()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_1D4FD8A60()
{
  OUTLINED_FUNCTION_60();
  v1[33] = v2;
  v1[34] = v0;
  v3 = sub_1D56131C8();
  v1[35] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[36] = v4;
  v6 = *(v5 + 64);
  v1[37] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D4FD8B04()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (*(*(v1 + 272) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) != 1)
  {
    OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_11_28();
LABEL_8:
    OUTLINED_FUNCTION_43_13();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  sub_1D4E628D4(*(v1 + 264), v1 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_102_4())
  {
    *(v1 + 256) = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    sub_1D4E50004(v1 + 224, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_86_6();
  v3 = *(v1 + 288);
  v2 = *(v1 + 296);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  sub_1D4E48324((v1 + 224), v1 + 144);
  v6 = *(v4 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1((v1 + 144), v7);
  v9 = *MEMORY[0x1E6976988];
  OUTLINED_FUNCTION_89_1();
  v10(v2);
  v11 = sub_1D5159364(v2, v7, v8);
  *(v1 + 304) = v11;
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_201();
  v14(v13);
  OUTLINED_FUNCTION_78_6();
  *(v1 + 16) = v15;
  v16 = OUTLINED_FUNCTION_48_8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v17);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v1 + 104) = v18;
  *(v1 + 112) = v16;
  [v6 appendModelObject:v11 completion:v0];
  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v19);
}

uint64_t sub_1D4FD8D54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD8E50()
{
  OUTLINED_FUNCTION_60();

  sub_1D56153C8();
  *(v0 + 320) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D4FD8ECC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);

  sub_1D4FDD2A4();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FD8F30()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 296);
  OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4FD8F8C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  swift_willThrow();

  OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_55();
  v5 = v0[39];

  return v4();
}

uint64_t sub_1D4FD8FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD9018()
{
  v1 = *(v0 + 184);
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v2 = *(v0 + 144);
    v3 = swift_task_alloc();
    v25 = *(v0 + 168);
    *(v3 + 16) = *(v0 + 152);
    *(v3 + 32) = v25;
    v4 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25);
    sub_1D4FD9450(sub_1D4FE08D0, v3, v12, v4, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

    v15 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    *(v0 + 192) = sub_1D5615158();

    OUTLINED_FUNCTION_78_6();
    *(v0 + 16) = v16;
    v17 = OUTLINED_FUNCTION_48_8();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_35_7(v18);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    *(v0 + 104) = v19;
    *(v0 + 112) = v17;
    v20 = OUTLINED_FUNCTION_63_7();
    [v20 v21];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FD920C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD9308()
{
  OUTLINED_FUNCTION_60();

  sub_1D56153C8();
  *(v0 + 208) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D4FD9384()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  sub_1D4FDD2A4();
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4FD93E8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 200);

  return v3();
}

uint64_t sub_1D4FD9450(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v9 = v8;
  v83 = a2;
  v84 = a4;
  v82 = a1;
  v12 = MEMORY[0x1E69E6208];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v77 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v70 = a5;
  v71 = &v65 - v21;
  v68 = *(a5 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v80 = (v23 - v24);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v65 - v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D56158D8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v66 = v29;
  v67 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  v34 = v32 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v65 - v37;
  v39 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_59_0();
  v79 = v40 - v41;
  OUTLINED_FUNCTION_23();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v76 = *(a3 - 8);
  v44 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v75 = v46 - v45;
  v74 = a6;
  v85 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4(v85);
  v72 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_31();
  v51 = sub_1D5614FA8();
  v86 = sub_1D5615D08();
  v81 = sub_1D5615D18();
  sub_1D5615CA8();
  (*(v76 + 16))(v75, v73, a3);
  v84 = v12;
  v76 = a3;
  result = sub_1D5614F98();
  if (v51 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v51)
  {
    v53 = (v77 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D5615938();
      result = __swift_getEnumTagSinglePayload(v38, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v82(v38, v78);
      if (v9)
      {
        v63 = OUTLINED_FUNCTION_81_7();
        v64(v63);

        (*(v68 + 32))(v69, v78, v70);
        return (*v53)(v38, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v53)(v38, AssociatedTypeWitness);
      sub_1D5615CF8();
      if (!--v51)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v54 = (v77 + 32);
  v55 = (v77 + 8);
  v56 = v71;
  while (1)
  {
    sub_1D5615938();
    v57 = OUTLINED_FUNCTION_45_1();
    if (__swift_getEnumTagSinglePayload(v57, v58, AssociatedTypeWitness) == 1)
    {
      v59 = OUTLINED_FUNCTION_81_7();
      v60(v59);
      (*(v66 + 8))(v34, v67);
      return v86;
    }

    (*v54)(v56, v34, AssociatedTypeWitness);
    v82(v56, v80);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v55)(v56, AssociatedTypeWitness);
    sub_1D5615CF8();
  }

  (*v55)(v56, AssociatedTypeWitness);
  v61 = OUTLINED_FUNCTION_81_7();
  v62(v61);

  return (*(v68 + 32))(v69, v80, v70);
}

uint64_t sub_1D4FD9A40(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1D4F23514(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_1D4FD9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD9ACC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  *(v0 + 40) = *(v0 + 72);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v11 = OUTLINED_FUNCTION_96_4(boxed_opaque_existential_0, v3, v4, v5, v6, v7, v8, v9, v10);
  (*(v12 + 16))(v11);
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1D4FD9BA0;
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);

  return sub_1D4FD9D20();
}

uint64_t sub_1D4FD9BA0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D4FD9CC4()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_1D4FD9D20()
{
  OUTLINED_FUNCTION_60();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1D5614828();
  v1[36] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v1[39] = OUTLINED_FUNCTION_127();
  v11 = sub_1D56131C8();
  v1[40] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[41] = v12;
  v14 = *(v13 + 64);
  v1[42] = OUTLINED_FUNCTION_167();
  v1[43] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D4FD9E4C()
{
  if (*(*(v0 + 280) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) != 1)
  {
    OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_11_28();
LABEL_7:
    OUTLINED_FUNCTION_43_13();
    return sub_1D5615E08();
  }

  sub_1D4E628D4(*(v0 + 264), v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_102_4())
  {
    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    sub_1D4E50004(v0 + 224, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    goto LABEL_7;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 280);
  v28 = *(v0 + 272);
  v29 = *(v0 + 288);
  sub_1D4E48324((v0 + 224), v0 + 144);
  v31 = *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v6);
  v8 = *MEMORY[0x1E6976988];
  v27 = *(v3 + 104);
  v27(v1, v8, v2);
  v9 = sub_1D5159364(v1, v6, v7);
  *(v0 + 352) = v9;
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_201();
  v10(v11);
  sub_1D4E69970(v28, v4, &unk_1EC7F2BE0, &qword_1D56250F0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v29) == 1)
  {
    sub_1D4E50004(*(v0 + 312), &unk_1EC7F2BE0, &qword_1D56250F0);
    v8 = 0;
  }

  else
  {
    v30 = v9;
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v17 = *(v0 + 296);
    v25 = *(v0 + 288);
    v26 = *(v0 + 312);
    v27(*(v0 + 344), v8, v14);
    v18 = *(v15 + 16);
    v19 = OUTLINED_FUNCTION_99_4();
    v20(v19);
    (*(v17 + 16))(v16, v26, v25);
    sub_1D4ECAE44();
    v21 = OUTLINED_FUNCTION_92_3();
    (v10)(v21, v14);
    (*(v17 + 8))(v26, v25);
    v9 = v30;
  }

  *(v0 + 360) = v8;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D4FDA204;
  v22 = swift_continuation_init();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_34_2(v23);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v0 + 104) = v24;
  *(v0 + 112) = v22;
  [v31 insertModelObject:v9 afterEntry:v8 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D4FDA204()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDA300()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 352);

  sub_1D56153C8();
  *(v0 + 376) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4FDA380()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);

  sub_1D4FDD2A4();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDA3E4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  OUTLINED_FUNCTION_116_4();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4FDA464()
{
  OUTLINED_FUNCTION_160();
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  swift_willThrow();

  OUTLINED_FUNCTION_116_4();

  OUTLINED_FUNCTION_55();
  v9 = v0[46];

  return v8();
}

uint64_t sub_1D4FDA508()
{
  OUTLINED_FUNCTION_60();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v1[18] = v7;
  v8 = sub_1D5614828();
  v1[25] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_127();
  v12 = sub_1D56131C8();
  v1[28] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[29] = v13;
  v15 = *(v14 + 64);
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D4FDA63C()
{
  v1 = *(v0 + 192);
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v2 = *(v0 + 256);
    v3 = *(v0 + 200);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = swift_task_alloc();
    v51 = *(v0 + 176);
    *(v6 + 16) = *(v0 + 160);
    *(v6 + 32) = v51;
    v7 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v7, v8, v9, v10, v11, v12, v13, v14, v49, v50, v51);
    v15 = OUTLINED_FUNCTION_88_5();
    sub_1D4FD9450(v15, v16, v17, v7, v18, v19, v20, v21);
    OUTLINED_FUNCTION_92_3();

    v22 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    *(v0 + 264) = sub_1D5615158();

    v23 = OUTLINED_FUNCTION_45_3();
    sub_1D4E69970(v23, v24, v25, v26);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v28 = *(v0 + 256);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(*(v0 + 256), &unk_1EC7F2BE0, &qword_1D56250F0);
      v29 = 0;
    }

    else
    {
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      v33 = *(v0 + 224);
      v34 = *(v0 + 232);
      v35 = *(v0 + 208);
      v36 = *(v0 + 216);
      v37 = *(v0 + 200);
      v38 = *MEMORY[0x1E6976988];
      OUTLINED_FUNCTION_89_1();
      v39(v32);
      (*(v34 + 16))(v31, v32, v33);
      (*(v35 + 16))(v36, v28, v37);
      sub_1D4ECAE44();
      v29 = v40;
      v41 = *(v34 + 8);
      v42 = OUTLINED_FUNCTION_201();
      v43(v42);
      (*(v35 + 8))(v28, v37);
    }

    *(v0 + 272) = v29;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D4FDA950;
    v44 = swift_continuation_init();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_34_2(v45);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    *(v0 + 104) = v46;
    *(v0 + 112) = v44;
    v47 = OUTLINED_FUNCTION_96_2();
    [v47 v48];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FDA950()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDAA4C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 264);

  sub_1D56153C8();
  *(v0 + 288) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4FDAACC()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[36];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[24];

  sub_1D4FDD2A4();

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D4FDAB6C()
{
  OUTLINED_FUNCTION_160();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v9 = v0[35];

  return v8();
}

uint64_t sub_1D4FDAC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1D56131C8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v13 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v27, v29);
    v18 = v30;
    v19 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v20 = *MEMORY[0x1E6976988];
    OUTLINED_FUNCTION_89_1();
    v21(v3);
    v22 = sub_1D5159364(v3, v18, v19);
    v23 = *(v10 + 8);
    v24 = OUTLINED_FUNCTION_176();
    v25(v24);
    *a3 = v22;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1D4E50004(v27, &unk_1EC7ED400, &qword_1D5620CF0);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_45_3();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000005BLL, 0x80000001D5680D50);
    OUTLINED_FUNCTION_43_13();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4FDAE98()
{
  OUTLINED_FUNCTION_47();
  v47 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v38 - v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614828();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v16 = sub_1D56131C8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v48 = v0;
    v46 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v28 = v19[13];
    v43 = *MEMORY[0x1E6976988];
    v42 = v28;
    v28(&v38 - v26);
    v41 = v19[2];
    v41(v24, v27, v16);
    v44 = v13;
    v40 = *(v13 + 16);
    v40(v1, v4, v10);
    sub_1D4ECAE44();
    v45 = v29;
    v39 = v19[1];
    v39(v27, v16);
    sub_1D4E69970(v47, v49, &unk_1EC7F2BE0, &qword_1D56250F0);
    v30 = OUTLINED_FUNCTION_45_1();
    v47 = v10;
    if (__swift_getEnumTagSinglePayload(v30, v31, v10) == 1)
    {
      sub_1D4E50004(v49, &unk_1EC7F2BE0, &qword_1D56250F0);
      v32 = 0;
    }

    else
    {
      v42(v27, v43, v16);
      v41(v24, v27, v16);
      v40(v1, v49, v47);
      sub_1D4ECAE44();
      v32 = v33;
      v39(v27, v16);
      v34 = *(v44 + 8);
      v35 = OUTLINED_FUNCTION_71();
      v36(v35);
    }

    v37 = v45;
    [v46 moveEntry:v45 afterEntry:v32];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v38 = 312;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

void sub_1D4FDB218()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D5614828();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v9 = sub_1D56131C8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v19 = *MEMORY[0x1E6976988];
    OUTLINED_FUNCTION_89_1();
    v20(v17);
    v21 = *(v12 + 16);
    v22 = OUTLINED_FUNCTION_201();
    v23(v22);
    (*(v6 + 16))(v2, v0, v3);
    sub_1D4ECAE44();
    v25 = v24;
    (*(v12 + 8))(v17, v9);
    [v18 removeEntry_];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v26 = 336;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

void sub_1D4FDB418()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v79 = sub_1D5613158();
  v11 = OUTLINED_FUNCTION_4(v79);
  v81 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D56131C8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v64 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v80 = v23 - v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v63 - v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D5614828();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v33);
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v36 = v2;
    v37 = *(v2 + 16);
    if (v37)
    {
      v63 = v0;
      v85 = MEMORY[0x1E69E7CC0];
      v73 = v35;
      v82 = &v63 - v34;
      sub_1D5615CB8();
      v38 = *(v30 + 16);
      v39 = (v36 + ((*(v30 + 80) + 32) & ~*(v30 + 80)));
      v71 = *(v30 + 72);
      v72 = v38;
      v70 = *MEMORY[0x1E6976988];
      v68 = (v64 + 2);
      v69 = (v64 + 13);
      v66 = (v30 + 8);
      v67 = (v81 + 8);
      v65 = (v84 + 8);
      ++v64;
      v77 = v3;
      v78 = v10;
      v75 = v18;
      v76 = v17;
      v74 = v30 + 16;
      v40 = v80;
      do
      {
        v84 = v39;
        v81 = v37;
        v41 = v17;
        v42 = v10;
        v43 = v82;
        v44 = v72;
        v72(v82, v39, v27);
        v45 = v83;
        (*v69)(v83, v70, v18);
        (*v68)(v40, v45, v18);
        v46 = v27;
        v47 = v73;
        v44(v73, v43, v46);
        sub_1D56132E8();
        sub_1D56132C8();
        v48 = sub_1D5159818();
        (*v67)(v41, v79);
        sub_1D560EC98();
        v49 = *v66;
        (*v66)(v47, v46);
        v50 = OUTLINED_FUNCTION_176();
        v52 = sub_1D4F42FA4(v50, v51);
        (*v65)(v42, v3);
        v53 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v54 = sub_1D5614BA8();

        v55 = v48;
        v18 = v75;
        [v53 initWithIdentifierSet:v52 modelObjectType:v55 storageDictionary:v54];
        swift_unknownObjectRelease();

        v27 = v46;
        v56 = *v64;
        (*v64)(v40, v18);
        v56(v83, v18);
        v57 = v81;
        v49(v82, v46);
        v17 = v76;
        sub_1D5615C88();
        v58 = *(v85 + 16);
        sub_1D5615CC8();
        v3 = v77;
        v10 = v78;
        sub_1D5615CD8();
        sub_1D5615C98();
        v39 = &v84[v71];
        v37 = v57 - 1;
      }

      while (v37);
      v0 = v63;
    }

    v59 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v60 = sub_1D5615158();

    v61 = OUTLINED_FUNCTION_121_3();
    [v61 v62];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v63 = 347;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

uint64_t sub_1D4FDB9CC()
{
  OUTLINED_FUNCTION_60();
  v1[27] = v2;
  v1[28] = v0;
  v3 = sub_1D5614898();
  v1[29] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[30] = v4;
  v1[31] = *(v5 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v1[33] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[34] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v15 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v18 = sub_1D560D838();
  v1[37] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[38] = v19;
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_167();
  v1[40] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D4FDBB68()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession;
  v0[41] = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession;
  if (*(v1 + v2) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1D4FDBCE4;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED410, &qword_1D5625108);
    v0[10] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_38;
    v0[14] = v4;
    [v3 commitWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FDBCE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDBDE0()
{
  v51 = *(v0 + 320);
  v52 = *(v0 + 328);
  v1 = *(v0 + 304);
  v47 = *(v0 + 288);
  v49 = *(v0 + 280);
  v50 = *(v0 + 272);
  v53 = *(v0 + 296);
  v54 = *(v0 + 264);
  v2 = *(v0 + 224);
  v56 = *(v0 + 232);
  v58 = *(v0 + 312);
  v3 = *(v0 + 208);
  v48 = [v3 legacyIdentifierSet];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  OUTLINED_FUNCTION_64_1();
  v4 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D5621D90;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x1E6975040], v4);
  v12(v11 + v8, *MEMORY[0x1E6975030], v4);
  sub_1D560E718();
  v13 = sub_1D560D9E8();
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v13);
  sub_1D4F40E88(v48, v47, v49, v50, v51);
  *(v2 + v52) = 0;
  (*(v1 + 16))(v58, v51, v53);
  v59 = v3;
  v14 = [v3 underlyingObject];
  v15 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59();
  sub_1D4E69970(v2 + v15, v54, &unk_1EC7F1990, &unk_1D561CEF0);
  v16 = OUTLINED_FUNCTION_45_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v56);
  v19 = *(v0 + 264);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v0 + 264), &unk_1EC7F1990, &unk_1D561CEF0);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
  }

  else
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = MEMORY[0x1E69773A0];
    *(v0 + 168) = v20;
    *(v0 + 176) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
    (*(v21 + 32))(boxed_opaque_existential_0, v19, v20);
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 216);
  v26 = *(v0 + 224);
  sub_1D56144C8();
  v27 = *(v26 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries);
  v28 = *(v0 + 304);
  if (v27)
  {
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v55 = *(v0 + 296);
    v57 = *(v0 + 320);

    v35 = sub_1D4FD63A4();
    (*(v31 + 16))(v29, v34, v32);
    v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v27;
    (*(v31 + 32))(v37 + v36, v29, v32);
    sub_1D4FDC9B8();

    (*(v28 + 8))(v57, v55);
  }

  else
  {
    (*(v28 + 8))(*(v0 + 320), *(v0 + 296));
  }

  v39 = *(v0 + 312);
  v38 = *(v0 + 320);
  v41 = *(v0 + 280);
  v40 = *(v0 + 288);
  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v44 = *(v0 + 256);

  OUTLINED_FUNCTION_55();

  return v45();
}

uint64_t sub_1D4FDC1FC()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v10 = v0[42];

  return v9();
}

uint64_t sub_1D4FDC2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED490, &qword_1D5625298);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1D5614828();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED498, &qword_1D56252A0);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4FDC460, 0, 0);
}

uint64_t sub_1D4FDC460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(uint64_t, uint64_t, uint64_t), void (**a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  *(v16 + 16) = *(v16 + 40);
  v17 = *(v16 + 136);
  v18 = *(v16 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D4FE2138(&qword_1EC7ED4A0);
  sub_1D5614CC8();
  v19 = sub_1D5615EB8();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v16 + 96);
    v22 = *(v16 + 72);
    a9 = v19;
    v23 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    a12 = (v21 + 16);
    a13 = (v21 + 32);
    a11 = v21 + 8;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = *(v22 + 72);
    a10 = v25;
    do
    {
      v26 = *(v16 + 64);
      sub_1D4E69970(v23, *(v16 + 80), &qword_1EC7ED490, &qword_1D5625298);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D4E50004(*(v16 + 80), &qword_1EC7ED490, &qword_1D5625298);
      }

      else
      {
        v28 = *(v16 + 104);
        v27 = *(v16 + 112);
        v30 = *(v16 + 80);
        v29 = *(v16 + 88);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED4A8, &qword_1D56252A8);
        v32 = *a13;
        (*a13)(v27, v30 + *(v31 + 48), v29);
        (*a12)(v28, v27, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = *(v24 + 16);
          sub_1D4F00B4C();
          v24 = v37;
        }

        v33 = *(v24 + 16);
        if (v33 >= *(v24 + 24) >> 1)
        {
          sub_1D4F00B4C();
          v24 = v38;
        }

        v34 = *(v16 + 104);
        v35 = *(v16 + 88);
        (*(v21 + 8))(*(v16 + 112), v35);
        *(v24 + 16) = v33 + 1;
        v32(v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v33, v34, v35);
        v25 = a10;
      }

      v23 += v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  if (*(v24 + 16))
  {
    sub_1D526EC0C();
    *(v16 + 144) = v39;

    v40 = swift_task_alloc();
    *(v16 + 152) = v40;
    *v40 = v16;
    v40[1] = sub_1D4FDC81C;
    v41 = *(v16 + 56);
    v42 = *(v16 + 32);
    OUTLINED_FUNCTION_63_0();

    return sub_1D542C4D8();
  }

  else
  {
    v45 = *(v16 + 32);
    (*(*(v16 + 128) + 8))(*(v16 + 136), *(v16 + 120));

    type metadata accessor for MusicLibraryIntentDonation();
    v46 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    v50 = *(v16 + 136);
    v51 = *(v16 + 104);
    v52 = *(v16 + 112);
    v53 = *(v16 + 80);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1D4FDC81C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4FDC91C()
{
  OUTLINED_FUNCTION_80();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];

  OUTLINED_FUNCTION_55();

  return v5();
}

void sub_1D4FDC9B8()
{
  OUTLINED_FUNCTION_91_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDDEA4())
  {
    sub_1D5615458();
    v6 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_123();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_69_8(v10);
    v11 = OUTLINED_FUNCTION_26_19();
    sub_1D4F405A0(v11, v12, v13, v14, v1);

    sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v15 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v15, qword_1EDD76AF0);
    v21 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v21, v16))
    {
      v17 = OUTLINED_FUNCTION_142();
      v18 = OUTLINED_FUNCTION_138_0();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D4E6835C(0xD000000000000010, 0x80000001D567D600, &v22);
      OUTLINED_FUNCTION_128_4(&dword_1D4E3F000, v19, v20, "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }
}

void sub_1D4FDCB78()
{
  OUTLINED_FUNCTION_91_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDDF8C())
  {
    sub_1D5615458();
    v6 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_123();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_69_8(v10);
    v11 = OUTLINED_FUNCTION_26_19();
    sub_1D4F405A0(v11, v12, v13, v14, v1);

    sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v15 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v15, qword_1EDD76AF0);
    v21 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v21, v16))
    {
      v17 = OUTLINED_FUNCTION_142();
      v18 = OUTLINED_FUNCTION_138_0();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D4E6835C(0xD000000000000016, 0x80000001D567D620, &v22);
      OUTLINED_FUNCTION_128_4(&dword_1D4E3F000, v19, v20, "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }
}

void sub_1D4FDCD38()
{
  OUTLINED_FUNCTION_91_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDE074())
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = [v5 isPrivateListeningEnabled];

    if ((v6 & 1) == 0)
    {
      sub_1D5615458();
      v14 = OUTLINED_FUNCTION_25_9();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      OUTLINED_FUNCTION_123();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_69_8(v18);
      v19 = OUTLINED_FUNCTION_26_19();
      sub_1D4F405A0(v19, v20, v21, v22, v5);

      sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
      return;
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v7 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v7, qword_1EDD76AF0);
    v23 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v23, v8))
    {
      v9 = OUTLINED_FUNCTION_142();
      v10 = OUTLINED_FUNCTION_138_0();
      *(v9 + 4) = OUTLINED_FUNCTION_106_3(4.8149e-34);
      v11 = "MusicIntentDonator: %s is disabled.";
LABEL_11:
      _os_log_impl(&dword_1D4E3F000, v23, v0, v11, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();

      return;
    }
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v12 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v12, qword_1EDD76AF0);
    v23 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v23, v13))
    {
      v9 = OUTLINED_FUNCTION_142();
      v10 = OUTLINED_FUNCTION_138_0();
      *(v9 + 4) = OUTLINED_FUNCTION_106_3(4.8149e-34);
      v11 = "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist";
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D4FDCFC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_47_5();
  v5 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v27 - v13);
  v15 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) currentTrackList];
  sub_1D4FDD3A4(v15, v14);
  sub_1D5615458();
  v16 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_1D4FE1CA8(v14, v12, type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v0;
  sub_1D4FE1F40(v12, v21 + v20, type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties);

  v22 = OUTLINED_FUNCTION_26_19();
  sub_1D51EC8B4(v22, v23, v24, v25, v21);

  return sub_1D4FE1DDC();
}

uint64_t sub_1D4FDD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D4FDD1CC, 0, 0);
}

uint64_t sub_1D4FDD1CC()
{
  OUTLINED_FUNCTION_60();
  sub_1D56153C8();
  *(v0 + 32) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D4FDD240()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D4FDDC7C(v2);
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D4FDD2A4()
{
  v1 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) currentTrackList];
  sub_1D4FDD3A4(v7, v6);
  v8 = *v6;

  sub_1D4FD5A10();
  v9 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
  sub_1D5612858();
  sub_1D4FD62CC();

  return sub_1D4FE1DDC();
}

uint64_t sub_1D4FDD3A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v13;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D4FE1C78;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D4FE1C80;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4F233EC;
  aBlock[3] = &block_descriptor_101;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v7 enumerateItemIdentifiersUsingBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = v13;

    v10 = [v7 underlyingSectionedCollection];
    *a2 = v9;
    aBlock[0] = v10;
    v11 = a2 + *(type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0) + 20);
    sub_1D5612878();
  }

  return result;
}

uint64_t sub_1D4FDD56C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v76 = a5;
  v71 = a4;
  v59 = a2;
  v69 = a1;
  v5 = sub_1D5614828();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v59 - v9;
  v70 = sub_1D5613558();
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560C4A8();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v59 - v17;
  v19 = sub_1D560E728();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D560D9A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D560D838();
  v28 = *(v27 - 8);
  v29 = v28;
  v62 = v27;
  v63 = v28;
  v30 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v61 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v60 = &v59 - v33;
  swift_unknownObjectRetain();
  sub_1D560D898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v34 = sub_1D560DB08();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D5621D90;
  v39 = v38 + v37;
  v40 = *(v35 + 104);
  v40(v39, *MEMORY[0x1E6975040], v34);
  v40(v39 + v36, *MEMORY[0x1E6975030], v34);
  sub_1D560E718();
  v41 = sub_1D560D9E8();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v41);
  v42 = v60;
  sub_1D4F40E88(v59, v26, v22, v18, v60);
  v43 = *(v29 + 16);
  v44 = v62;
  v45 = v42;
  v43(v61, v42, v62);
  (*(v65 + 16))(v64, v69, v66);
  v46 = [v71 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v46;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_1D560D898();
  (*(v68 + 104))(v67, *MEMORY[0x1E6976A60], v70);
  v47 = sub_1D5613568();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_1D5613538();
  *(&v78 + 1) = v47;
  v79 = MEMORY[0x1E6976A68];
  *&v77 = v50;

  v51 = v72;
  sub_1D5614768();
  v53 = v73;
  v52 = v74;
  v54 = v75;
  (*(v74 + 16))(v73, v51, v75);
  v55 = v76;
  sub_1D4EFF558();
  v56 = *(*v55 + 16);
  sub_1D4EFF7A0(v56);

  (*(v52 + 8))(v51, v54);
  (*(v63 + 8))(v45, v44);
  v57 = *v55;
  *(v57 + 16) = v56 + 1;
  return (*(v52 + 32))(v57 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v56, v53, v54);
}

uint64_t sub_1D4FDDC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D560C478();
  v4 = *(a2 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v7 = v6(v5);

  sub_1D56159A8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D4FDDC7C(uint64_t *a1)
{
  v1 = *a1;

  sub_1D4FD5A10();
  v2 = *(type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
  sub_1D5612858();
  return sub_1D4FD62CC();
}

uint64_t MusicLibraryPlaylistEditViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  OUTLINED_FUNCTION_14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries);

  v5 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 8))(v0 + v5);
  sub_1D4E50004(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, &unk_1EC7F1990, &unk_1D561CEF0);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library);

  v9 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver);

  v10 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes);

  return v0;
}

uint64_t MusicLibraryPlaylistEditViewModel.__deallocating_deinit()
{
  MusicLibraryPlaylistEditViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4FDDE64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicLibraryPlaylistEditViewModel(0);
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

BOOL sub_1D4FDDEA4()
{
  static ClientInfo.optionalDefault.getter(v6);
  if (*(&v6[0] + 1) && (v0 = v7, , v1 = sub_1D4E50004(v6, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    v5[0] = 0xD000000000000010;
    v5[1] = 0x80000001D567D600;
    MEMORY[0x1EEE9AC00](v1);
    v4[2] = v5;
    v2 = sub_1D4F25A04(sub_1D4FE23E8, v4, v0);
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL sub_1D4FDDF8C()
{
  static ClientInfo.optionalDefault.getter(v6);
  if (*(&v6[0] + 1) && (v0 = v7, , v1 = sub_1D4E50004(v6, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    v5[0] = 0xD000000000000016;
    v5[1] = 0x80000001D567D620;
    MEMORY[0x1EEE9AC00](v1);
    v4[2] = v5;
    v2 = sub_1D4F25A04(sub_1D4FE23E8, v4, v0);
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL sub_1D4FDE074()
{
  static ClientInfo.optionalDefault.getter(v6);
  if (*(&v6[0] + 1) && (v0 = v7, , v1 = sub_1D4E50004(v6, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    v5[0] = 0xD000000000000011;
    v5[1] = 0x80000001D567D5E0;
    MEMORY[0x1EEE9AC00](v1);
    v4[2] = v5;
    v2 = sub_1D4F25A04(sub_1D4FE1F9C, v4, v0);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_1D4FDE15C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED488, &qword_1D5625290) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[19] = v7;
  v8 = type metadata accessor for MusicLibraryIntentDonation();
  v4[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v4[24] = v11;
  *v11 = v4;
  v11[1] = sub_1D4FDE2E0;

  return v13(v7);
}

uint64_t sub_1D4FDE2E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4FDE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_87_5();
  if (v15)
  {
    sub_1D4E50004(v12, &qword_1EC7ED488, &qword_1D5625290);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v16 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
    v17 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v19, v20, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v21 = v13[23];
    v22 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1F40(v22, v23, v24);
    v25 = sub_1D542CFEC();
    v13[25] = v25;
    if (v25)
    {
      v26 = v25;
      v27 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
      v28 = v26;
      v29 = OUTLINED_FUNCTION_121_3();
      v13[26] = [v29 v30];
      v31 = [v28 identifier];

      if (v31)
      {
        v32 = OUTLINED_FUNCTION_96_2();
        [v32 v33];
      }

      OUTLINED_FUNCTION_86_6();
      v34 = sub_1D5614D38();
      OUTLINED_FUNCTION_130_3(v34, sel_setGroupIdentifier_);

      OUTLINED_FUNCTION_78_6();
      v13[2] = v35;
      OUTLINED_FUNCTION_48_8();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
      OUTLINED_FUNCTION_11_15(v36);
      OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_9_31();
      v37 = OUTLINED_FUNCTION_63_7();
      [v37 v38];
      OUTLINED_FUNCTION_73_0();

      return MEMORY[0x1EEE6DEC8](v39);
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v41 = v13[22];
    v42 = v13[23];
    v43 = sub_1D560C758();
    __swift_project_value_buffer(v43, qword_1EDD76AF0);
    v44 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v44, v45, v46);
    v47 = sub_1D560C738();
    v48 = sub_1D56156E8();
    v49 = OUTLINED_FUNCTION_104_5(v48);
    v51 = v13[22];
    v50 = v13[23];
    if (v49)
    {
      v53 = v13[20];
      v52 = v13[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v14 = 136446210;
      sub_1D4FE1CA8(v51, v52, type metadata accessor for MusicLibraryIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v54 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v54, v55, v56);
      OUTLINED_FUNCTION_107_3();
      *(v14 + 4) = v51;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v57, v58, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
  }

  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12);
}

uint64_t sub_1D4FDE76C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDE868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v15 = v14[26];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_129_2();
  v20 = v14[25];
  v21 = v14[26];
  v22 = v14[23];
  if (v19)
  {
    OUTLINED_FUNCTION_142();
    a10 = v22;
    a11 = OUTLINED_FUNCTION_37_0();
    *v22 = 136446210;
    v23 = v21;
    v24 = [v23 description];
    sub_1D5614D68();

    v25 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_107_3();
    *(v22 + 4) = v24;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v28, v29, "MusicIntentDonator: Successfully donated %{public}s");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_27();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FDE9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[27];
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v29 = v24[26];
  v28 = v24[27];
  v30 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v30, qword_1EDD76AF0);
  v31 = v29;
  v32 = OUTLINED_FUNCTION_92_3();
  v33 = sub_1D560C738();
  v34 = sub_1D56156C8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[26];
  v37 = v24[27];
  v38 = v24[25];
  v39 = v24[23];
  if (v35)
  {
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v39 = 136446466;
    a10 = v38;
    v40 = v36;
    v41 = [v40 description];
    sub_1D5614D68();

    v42 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v42, v43, v44);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v45 = sub_1D5614DB8();
    sub_1D4E6835C(v45, v46, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v39 + 14) = v41;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v47, v48, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_27();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4FDEC00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED478, &qword_1D5625278) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[19] = v7;
  v8 = type metadata accessor for MusicSearchIntentDonation();
  v4[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v4[24] = v11;
  *v11 = v4;
  v11[1] = sub_1D4FDED84;

  return v13(v7);
}

uint64_t sub_1D4FDED84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4FDEE68()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_87_5();
  if (v2)
  {
    sub_1D4E50004(v0, &unk_1EC7ED478, &qword_1D5625278);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v6, v7, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    sub_1D4FE1F40(v0, *(v1 + 184), type metadata accessor for MusicSearchIntentDonation);
    v10 = swift_task_alloc();
    *(v1 + 200) = v10;
    *v10 = v1;
    v10[1] = sub_1D4FDF008;
    v11 = *(v1 + 184);

    return sub_1D515D61C();
  }
}

uint64_t sub_1D4FDF008()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4FDF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[26];
  v15 = v12[23];
  sub_1D515DA88();
  v16 = objc_allocWithZone(MEMORY[0x1E696E9C8]);
  v17 = OUTLINED_FUNCTION_71();
  v19 = sub_1D4FE0844(v17, v18);
  v12[27] = v19;
  if (v19)
  {
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
    v22 = v20;
    v23 = OUTLINED_FUNCTION_121_3();
    v12[28] = [v23 v24];
    v25 = [v22 identifier];

    if (v25)
    {
      v26 = OUTLINED_FUNCTION_96_2();
      [v26 v27];
    }

    OUTLINED_FUNCTION_86_6();
    v28 = sub_1D5614D38();
    OUTLINED_FUNCTION_130_3(v28, sel_setGroupIdentifier_);

    OUTLINED_FUNCTION_78_6();
    v12[2] = v29;
    OUTLINED_FUNCTION_48_8();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v30);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_9_31();
    v31 = OUTLINED_FUNCTION_63_7();
    [v31 v32];
    OUTLINED_FUNCTION_73_0();

    return MEMORY[0x1EEE6DEC8](v33);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v35 = v12[22];
    v36 = v12[23];
    v37 = sub_1D560C758();
    __swift_project_value_buffer(v37, qword_1EDD76AF0);
    v38 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v38, v39, v40);
    v41 = sub_1D560C738();
    v42 = sub_1D56156E8();
    v43 = OUTLINED_FUNCTION_104_5(v42);
    v45 = v12[22];
    v44 = v12[23];
    if (v43)
    {
      v47 = v12[20];
      v46 = v12[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v13 = 136446210;
      sub_1D4FE1CA8(v45, v46, type metadata accessor for MusicSearchIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v48 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v48, v49, v50);
      OUTLINED_FUNCTION_107_3();
      *(v13 + 4) = v45;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v51, v52, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_73_0();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4FDF404()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v15 = v14[28];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[27];
  v22 = v14[28];
  v23 = v14[23];
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    a10 = v23;
    a11 = OUTLINED_FUNCTION_37_0();
    *v23 = 136446210;
    v24 = v22;
    v25 = [v24 description];
    sub_1D5614D68();

    v26 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_107_3();
    *(v23 + 4) = v25;
    _os_log_impl(&dword_1D4E3F000, v18, v19, "MusicIntentDonator: Successfully donated %{public}s", v23, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_29();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FDF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = *(v24 + 232);
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v29 = *(v24 + 224);
  v28 = *(v24 + 232);
  v30 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v30, qword_1EDD76AF0);
  v31 = v29;
  v32 = OUTLINED_FUNCTION_92_3();
  v33 = sub_1D560C738();
  v34 = sub_1D56156C8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v24 + 224);
  v37 = *(v24 + 232);
  v38 = *(v24 + 184);
  if (v35)
  {
    a10 = *(v24 + 216);
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v38 = 136446466;
    v39 = v36;
    v40 = [v39 description];
    sub_1D5614D68();

    v41 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v41, v42, v43);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v44 = sub_1D5614DB8();
    sub_1D4E6835C(v44, v45, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v38 + 14) = v40;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v46, v47, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_29();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4FDF8B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[19] = v7;
  v8 = type metadata accessor for MusicPlaybackIntentDonation(0);
  v4[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v4[24] = v11;
  *v11 = v4;
  v11[1] = sub_1D4FDFA34;

  return v13(v7);
}

uint64_t sub_1D4FDFA34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4FDFB18()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_87_5();
  if (v2)
  {
    sub_1D4E50004(v0, &unk_1EC7ED460, &unk_1D5625250);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v6, v7, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    sub_1D4FE1F40(v0, *(v1 + 184), type metadata accessor for MusicPlaybackIntentDonation);
    v10 = swift_task_alloc();
    *(v1 + 200) = v10;
    *v10 = v1;
    v10[1] = sub_1D4FDFCB8;
    v11 = *(v1 + 184);

    return sub_1D5130274();
  }
}

uint64_t sub_1D4FDFCB8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4FDFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[26];
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
    v16 = v14;
    v17 = OUTLINED_FUNCTION_63_7();
    v12[27] = [v17 v18];
    v19 = [v16 identifier];

    if (v19)
    {
      v20 = OUTLINED_FUNCTION_96_2();
      [v20 v21];
    }

    OUTLINED_FUNCTION_86_6();
    v22 = sub_1D5614D38();
    OUTLINED_FUNCTION_130_3(v22, sel_setGroupIdentifier_);

    OUTLINED_FUNCTION_78_6();
    v12[2] = v23;
    OUTLINED_FUNCTION_48_8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v24);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_9_31();
    v25 = OUTLINED_FUNCTION_63_7();
    [v25 v26];
    OUTLINED_FUNCTION_73_0();

    return MEMORY[0x1EEE6DEC8](v27);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v29 = v12[22];
    v30 = v12[23];
    v31 = sub_1D560C758();
    __swift_project_value_buffer(v31, qword_1EDD76AF0);
    v32 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v32, v33, v34);
    v35 = sub_1D560C738();
    v36 = sub_1D56156E8();
    v37 = OUTLINED_FUNCTION_104_5(v36);
    v39 = v12[22];
    v38 = v12[23];
    if (v37)
    {
      v41 = v12[20];
      v40 = v12[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v13 = 136446210;
      sub_1D4FE1CA8(v39, v40, type metadata accessor for MusicPlaybackIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v42 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v42, v43, v44);
      OUTLINED_FUNCTION_107_3();
      *(v13 + 4) = v39;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v45, v46, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_73_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4FE007C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FE0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v15 = v14[27];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_129_2();
  v20 = v14[26];
  v21 = v14[27];
  v22 = v14[23];
  if (v19)
  {
    OUTLINED_FUNCTION_142();
    a10 = v22;
    a11 = OUTLINED_FUNCTION_37_0();
    *v22 = 136446210;
    v23 = v21;
    v24 = [v23 description];
    sub_1D5614D68();

    v25 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_107_3();
    *(v22 + 4) = v24;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v28, v29, "MusicIntentDonator: Successfully donated %{public}s");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_32();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FE0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[28];
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v29 = v24[27];
  v28 = v24[28];
  v30 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v30, qword_1EDD76AF0);
  v31 = v29;
  v32 = OUTLINED_FUNCTION_92_3();
  v33 = sub_1D560C738();
  v34 = sub_1D56156C8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[27];
  v37 = v24[28];
  v38 = v24[26];
  v39 = v24[23];
  if (v35)
  {
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v39 = 136446466;
    a10 = v38;
    v40 = v36;
    v41 = [v40 description];
    sub_1D5614D68();

    v42 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v42, v43, v44);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v45 = sub_1D5614DB8();
    sub_1D4E6835C(v45, v46, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v39 + 14) = v41;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v47, v48, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_32();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

id sub_1D4FE0510(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

id sub_1D4FE056C(uint64_t *a1, uint64_t *a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = a1[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = *(v9 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1D5616158();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
  }

  v17 = a2[3];
  if (v17)
  {
    v18 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_1D5616158();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v5 initWithPlaylist:v16 underlyingSectionedCollection:v23 authorProfile:a3 library:a4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v24;
}

uint64_t sub_1D4FE07BC()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);
  v3 = OUTLINED_FUNCTION_71();

  return sub_1D4FD632C(v3, v4);
}

id sub_1D4FE0844(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1D4ECC7A8(0, &qword_1EDD52700, 0x1E696E8E8);
    v3 = sub_1D5615158();
  }

  else
  {
    v3 = 0;
  }

  v4 = OUTLINED_FUNCTION_63_7();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_1D4FE08D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  return sub_1D4FDAC14(a1, v2[3], a2);
}

uint64_t sub_1D4FE08F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  return sub_1D4FDAC14(a1, v2[3], a2);
}

uint64_t sub_1D4FE0920()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_64_1();
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32(v6);
  *v7 = v8;
  v7[1] = sub_1D4E73560;
  v9 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDC2C0(v9, v10, v11, v12);
}

void sub_1D4FE09F8()
{
  sub_1D4FE1C04(319, &qword_1EC7ED430, &qword_1EC7ED398, &unk_1D5625000);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D4FE1C04(319, &qword_1EC7ED438, &qword_1EC7EB720, &unk_1D561E890);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1D4FE22EC(319, &qword_1EDD52A70, MEMORY[0x1E69773E0], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 616) + **(v0 + 616));
  v1 = *(*(v0 + 616) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return v6();
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_58_0();
  v12 = (*(v6 + 624) + **(v6 + 624));
  v7 = *(*(v6 + 624) + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_43_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_12(v9);

  return v12(v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel._append(_:)()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v8 = (*(v2 + 632) + **(v2 + 632));
  v3 = *(*(v2 + 632) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_26_12(v5);

  return v8(v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v0 + 640) + **(v0 + 640));
  v1 = *(*(v0 + 640) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);
  v5 = OUTLINED_FUNCTION_45_3();

  return v7(v5);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:)()
{
  OUTLINED_FUNCTION_160();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_58_0();
  v14 = (*(v8 + 648) + **(v8 + 648));
  v9 = *(*(v8 + 648) + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_26_12(v11);

  return v14(v7, v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel._insert(_:after:)()
{
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58_0();
  v10 = (*(v4 + 656) + **(v4 + 656));
  v5 = *(*(v4 + 656) + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_26_12(v7);

  return v10(v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A, B>(_:afterEntry:)()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_58_0();
  v18 = (*(v12 + 664) + **(v12 + 664));
  v13 = *(*(v12 + 664) + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_43_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_26_12(v15);

  return v18(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.remove(_:)()
{
  return (*(*v0 + 688))();
}

{
  return (*(*v0 + 696))();
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.save()()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v8 = (*(v2 + 712) + **(v2 + 712));
  v3 = *(*(v2 + 712) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;

  return v8(v1);
}

void sub_1D4FE1C04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D560C928();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D4FE1CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D4FE1D04()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_64_1();
  v2 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(v1);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_32(v8);
  *v9 = v10;
  v9[1] = sub_1D4E73560;
  v11 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDD1AC(v11, v12, v13, v7, v14);
}

uint64_t sub_1D4FE1DDC()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D4FE1E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE1EA0()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDF8B0(v4, v5, v6, v0);
}

uint64_t sub_1D4FE1F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D4FE1FBC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E6ED20;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDEC00(v4, v5, v6, v0);
}

uint64_t objectdestroy_110Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_123();

  return swift_deallocObject();
}

uint64_t sub_1D4FE2098()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDE15C(v4, v5, v6, v0);
}

uint64_t sub_1D4FE2138(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED398, &unk_1D5625000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4FE2188()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);
  v3 = OUTLINED_FUNCTION_71();

  return sub_1D4FD5A70(v3, v4);
}

void sub_1D4FE2238()
{
  sub_1D4FE22EC(319, &qword_1EC7ED4C8, MEMORY[0x1E6977318], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D4FE2350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4FE22EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4FE2350()
{
  if (!qword_1EC7ED4D0)
  {
    v0 = sub_1D5612868();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7ED4D0);
    }
  }
}

id OUTLINED_FUNCTION_47_14()
{
  *(v2 + 4) = v3;
  *(v2 + 12) = 2082;
  *(v1 + 144) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_8()
{

  return sub_1D4FE1DDC();
}

uint64_t OUTLINED_FUNCTION_81_7()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3()
{
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_3(float a1)
{
  *v1 = a1;

  return sub_1D4E6835C(0xD000000000000011, v2 | 0x8000000000000000, (v3 - 56));
}

uint64_t OUTLINED_FUNCTION_110_4()
{

  return sub_1D5615338();
}

uint64_t OUTLINED_FUNCTION_116_4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
}

uint64_t OUTLINED_FUNCTION_127_3()
{

  return sub_1D560C908();
}

BOOL OUTLINED_FUNCTION_129_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1D4FE25EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6950746F6ELL && a2 == 0xE900000000000064;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E6E6970 && a2 == 0xE600000000000000)
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

uint64_t sub_1D4FE26B8(char a1)
{
  if (a1)
  {
    return 0x64656E6E6970;
  }

  else
  {
    return 0x656E6E6950746F6ELL;
  }
}

uint64_t sub_1D4FE26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE25EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FE2720(uint64_t a1)
{
  v2 = sub_1D4FE2B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE275C(uint64_t a1)
{
  v2 = sub_1D4FE2B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE2798(uint64_t a1)
{
  v2 = sub_1D4FE2BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE27D4(uint64_t a1)
{
  v2 = sub_1D4FE2BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE2810(uint64_t a1)
{
  v2 = sub_1D4FE2B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE284C(uint64_t a1)
{
  v2 = sub_1D4FE2B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicPinStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4D8, &qword_1D56252E0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4E0, &qword_1D56252E8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4E8, &qword_1D56252F0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FE2B08();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1D4FE2B5C();
    v29 = v33;
    sub_1D5616018();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1D4FE2BB0();
    sub_1D5616018();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_1D4FE2B08()
{
  result = qword_1EC7ED4F0;
  if (!qword_1EC7ED4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED4F0);
  }

  return result;
}

unint64_t sub_1D4FE2B5C()
{
  result = qword_1EC7ED4F8;
  if (!qword_1EC7ED4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED4F8);
  }

  return result;
}

unint64_t sub_1D4FE2BB0()
{
  result = qword_1EC7ED500;
  if (!qword_1EC7ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED500);
  }

  return result;
}

uint64_t MusicPinStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicPinStatus.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED508, &qword_1D56252F8);
  OUTLINED_FUNCTION_4(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED510, &qword_1D5625300);
  OUTLINED_FUNCTION_4(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED518, &unk_1D5625308);
  OUTLINED_FUNCTION_4(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FE2B08();
  v24 = v53;
  sub_1D5616398();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1D5615FE8();
  sub_1D4FE3168(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_1D5615C18();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v42 = &type metadata for MusicPinStatus;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1D4FE356C(v29 + 1, v30 >> 1, v27, v28, v29, v30);
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
      sub_1D4FE2B5C();
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
      sub_1D4FE2BB0();
      v44 = v47;
      OUTLINED_FUNCTION_3_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
  }
}

uint64_t MusicPinStatus.description.getter()
{
  if (*v0)
  {
    result = 0x64656E6E69702ELL;
  }

  else
  {
    result = 0x6E6E6950746F6E2ELL;
  }

  *v0;
  return result;
}

void sub_1D4FE3168(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_42();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1D4FE31A4()
{
  result = qword_1EC7ED520;
  if (!qword_1EC7ED520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED520);
  }

  return result;
}

_BYTE *sub_1D4FE3208(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4FE3308()
{
  result = qword_1EC7ED528;
  if (!qword_1EC7ED528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED528);
  }

  return result;
}

unint64_t sub_1D4FE3360()
{
  result = qword_1EC7ED530;
  if (!qword_1EC7ED530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED530);
  }

  return result;
}

unint64_t sub_1D4FE33B8()
{
  result = qword_1EC7ED538;
  if (!qword_1EC7ED538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED538);
  }

  return result;
}

unint64_t sub_1D4FE3410()
{
  result = qword_1EC7ED540;
  if (!qword_1EC7ED540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED540);
  }

  return result;
}

unint64_t sub_1D4FE3468()
{
  result = qword_1EC7ED548;
  if (!qword_1EC7ED548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED548);
  }

  return result;
}

unint64_t sub_1D4FE34C0()
{
  result = qword_1EC7ED550;
  if (!qword_1EC7ED550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED550);
  }

  return result;
}

unint64_t sub_1D4FE3518()
{
  result = qword_1EC7ED558;
  if (!qword_1EC7ED558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED558);
  }

  return result;
}

uint64_t sub_1D4FE356C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MusicCatalogSearchResponse.TopResult.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v1 = sub_1D5614408();
  v2 = OUTLINED_FUNCTION_4(v1);
  v110 = v3;
  v111 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v109 = v6;
  OUTLINED_FUNCTION_70_0();
  v108 = sub_1D5613838();
  v7 = OUTLINED_FUNCTION_4(v108);
  v107 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v106 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D560F8B8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v113 = v14;
  v114 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v112 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D5614B68();
  v19 = OUTLINED_FUNCTION_4(v18);
  v116 = v20;
  v117 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v115 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D5614898();
  v25 = OUTLINED_FUNCTION_4(v24);
  v119 = v26;
  v120 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v118 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = sub_1D560EEA8();
  v31 = OUTLINED_FUNCTION_4(v30);
  v122 = v32;
  v123 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v121 = v35;
  OUTLINED_FUNCTION_70_0();
  v36 = sub_1D56141F8();
  v37 = OUTLINED_FUNCTION_4(v36);
  v124 = v38;
  v125 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;
  v44 = sub_1D5613EF8();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v52 = v51 - v50;
  v53 = sub_1D5613AF8();
  v54 = OUTLINED_FUNCTION_4(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v61 = v60 - v59;
  v62 = sub_1D560DFB8();
  v63 = OUTLINED_FUNCTION_4(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  v70 = v69 - v68;
  (*(v65 + 16))(v69 - v68, v127, v62);
  v71 = (*(v65 + 88))(v70, v62);
  if (v71 == *MEMORY[0x1E6975158])
  {
    v72 = OUTLINED_FUNCTION_3_30();
    v73(v72);
    (*(v56 + 32))(v61, v70, v53);
    Album.siriRepresentation.getter();
    return (*(v56 + 8))(v61, v53);
  }

  if (v71 == *MEMORY[0x1E6975160])
  {
    v75 = OUTLINED_FUNCTION_3_30();
    v76(v75);
    (*(v47 + 32))(v52, v70, v44);
    Artist.siriRepresentation.getter(a1);
    return (*(v47 + 8))(v52, v44);
  }

  if (v71 == *MEMORY[0x1E6975168])
  {
    v77 = OUTLINED_FUNCTION_3_30();
    v78(v77);
    (*(v124 + 32))(v43, v70, v125);
    Curator.siriRepresentation.getter(a1);
    return (*(v124 + 8))(v43, v125);
  }

  if (v71 == *MEMORY[0x1E6975140])
  {
    v79 = OUTLINED_FUNCTION_3_30();
    v80(v79);
    v81 = v121;
    v82 = v122;
    v83 = OUTLINED_FUNCTION_4_6();
    v84 = v123;
    v85(v83);
    MusicVideo.siriRepresentation.getter(a1);
  }

  else if (v71 == *MEMORY[0x1E6975178])
  {
    v86 = OUTLINED_FUNCTION_3_30();
    v87(v86);
    v81 = v118;
    v82 = v119;
    v88 = OUTLINED_FUNCTION_4_6();
    v84 = v120;
    v89(v88);
    Playlist.siriRepresentation.getter();
  }

  else if (v71 == *MEMORY[0x1E6975180])
  {
    v90 = OUTLINED_FUNCTION_3_30();
    v91(v90);
    v81 = v115;
    v82 = v116;
    v92 = OUTLINED_FUNCTION_4_6();
    v84 = v117;
    v93(v92);
    RadioShow.siriRepresentation.getter();
  }

  else if (v71 == *MEMORY[0x1E6975148])
  {
    v94 = OUTLINED_FUNCTION_3_30();
    v95(v94);
    v81 = v112;
    v82 = v113;
    v96 = OUTLINED_FUNCTION_4_6();
    v84 = v114;
    v97(v96);
    RecordLabel.siriRepresentation.getter(a1);
  }

  else if (v71 == *MEMORY[0x1E6975150])
  {
    v98 = OUTLINED_FUNCTION_3_30();
    v99(v98);
    v82 = v107;
    v81 = v106;
    v100 = v70;
    v84 = v108;
    (*(v107 + 32))(v106, v100, v108);
    Song.siriRepresentation.getter();
  }

  else
  {
    if (v71 != *MEMORY[0x1E6975170])
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5680E20);
      sub_1D4FE3E24();
      v105 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v105);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v101 = OUTLINED_FUNCTION_3_30();
    v102(v101);
    v81 = v109;
    v82 = v110;
    v103 = OUTLINED_FUNCTION_4_6();
    v84 = v111;
    v104(v103);
    Station.siriRepresentation.getter(a1);
  }

  return (*(v82 + 8))(v81, v84);
}

unint64_t sub_1D4FE3E24()
{
  result = qword_1EC7ED560;
  if (!qword_1EC7ED560)
  {
    sub_1D560DFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED560);
  }

  return result;
}

void static MusicLibraryPlaylistViewModel.Delta.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  *&v119 = v4;
  *&v118 = v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED570, &unk_1D5671D30);
  v6 = OUTLINED_FUNCTION_14(v108);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  v113 = v107 - v16;
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D5614828();
  v18 = OUTLINED_FUNCTION_4(v17);
  v116 = v19;
  v117 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_43_14();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v107 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED580, &qword_1D56256E0);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = v107 - v49;
  v51 = v107 + *(v48 + 56) - v49;
  sub_1D4FE4934(v118, v107 - v49);
  sub_1D4FE4934(v119, v51);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4FE4934(v50, v1);
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48);
      v83 = *(v1 + v82);
      if (OUTLINED_FUNCTION_33_20() == 1)
      {
        v84 = v51[v82];
        v86 = v116;
        v85 = v117;
        (*(v116 + 32))(v2, v51, v117);
        sub_1D5614778();
        v87 = *(v86 + 8);
        v88 = OUTLINED_FUNCTION_130();
        v87(v88);
        (v87)(v1, v85);
        goto LABEL_33;
      }

      (*(v116 + 8))(v1, v117);
      goto LABEL_25;
    case 2u:
      sub_1D4FE4934(v50, v0);
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      if (OUTLINED_FUNCTION_33_20() != 2)
      {
        v89 = *(v116 + 8);
        v89(v0 + v58, v117);
        v90 = OUTLINED_FUNCTION_46_1();
        (v89)(v90);
        goto LABEL_25;
      }

      v60 = v116;
      v59 = v117;
      v61 = *(v116 + 32);
      v61(v111, v51, v117);
      v61(v115, (v0 + v58), v59);
      v61(v110, &v51[v58], v59);
      v62 = sub_1D5614778();
      v63 = *(v60 + 8);
      v63(v0, v59);
      if (v62)
      {
        v64 = v115;
        sub_1D5614778();
        v65 = OUTLINED_FUNCTION_130();
        (v63)(v65);
        v63(v64, v59);
      }

      else
      {
        v98 = OUTLINED_FUNCTION_130();
        (v63)(v98);
        v63(v115, v59);
      }

      v66 = OUTLINED_FUNCTION_217();
      (v63)(v66);
      goto LABEL_33;
    case 3u:
      sub_1D4FE4934(v50, v3);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      if (OUTLINED_FUNCTION_33_20() != 3)
      {
        sub_1D4E50004(v3 + v67, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v116 + 8))(v3, v117);
        goto LABEL_25;
      }

      v69 = v116;
      v68 = v117;
      v70 = v114;
      *&v119 = *(v116 + 32);
      (v119)(v114, v51, v117);
      v71 = v113;
      sub_1D4FE49F4(v3 + v67, v113);
      v72 = v112;
      sub_1D4FE49F4(&v51[v67], v112);
      v73 = sub_1D5614778();
      v74 = *(v69 + 8);
      v75 = OUTLINED_FUNCTION_217();
      v74(v75);
      if ((v73 & 1) == 0)
      {
        OUTLINED_FUNCTION_47_15(v72);
        OUTLINED_FUNCTION_47_15(v71);
        (v74)(v70, v68);
        goto LABEL_33;
      }

      v76 = v72;
      v77 = *(v108 + 48);
      v78 = v71;
      v79 = v71;
      v80 = v109;
      sub_1D4FE4A64(v78, v109);
      sub_1D4FE4A64(v76, v80 + v77);
      OUTLINED_FUNCTION_9_25(v80);
      if (v99)
      {
        sub_1D4E50004(v76, &unk_1EC7F2BE0, &qword_1D56250F0);
        sub_1D4E50004(v79, &unk_1EC7F2BE0, &qword_1D56250F0);
        v81 = OUTLINED_FUNCTION_22_21();
        v74(v81);
        OUTLINED_FUNCTION_9_25(v80 + v77);
        if (v99)
        {
          sub_1D4E50004(v80, &unk_1EC7F2BE0, &qword_1D56250F0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_1D4FE4A64(v80, v107[1]);
        OUTLINED_FUNCTION_9_25(v80 + v77);
        if (!v99)
        {
          v102 = v107[0];
          (v119)(v107[0], v80 + v77, v68);
          OUTLINED_FUNCTION_0_43();
          sub_1D4FE6FF0(v103, v104);
          sub_1D5614D18();
          (v74)(v102, v68);
          sub_1D4E50004(v112, &unk_1EC7F2BE0, &qword_1D56250F0);
          sub_1D4E50004(v113, &unk_1EC7F2BE0, &qword_1D56250F0);
          v105 = OUTLINED_FUNCTION_22_21();
          v74(v105);
          v106 = OUTLINED_FUNCTION_217();
          v74(v106);
          sub_1D4E50004(v80, &unk_1EC7F2BE0, &qword_1D56250F0);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_47_15(v112);
        OUTLINED_FUNCTION_47_15(v113);
        v100 = OUTLINED_FUNCTION_22_21();
        v74(v100);
        v101 = OUTLINED_FUNCTION_217();
        v74(v101);
      }

      sub_1D4E50004(v80, &unk_1EC7ED570, &unk_1D5671D30);
      goto LABEL_33;
    case 4u:
      sub_1D4FE4934(v50, v37);
      if (OUTLINED_FUNCTION_33_20() == 4)
      {
        v56 = v116;
        v55 = v117;
        (*(v116 + 32))(v24, v51, v117);
        sub_1D5614778();
        v57 = *(v56 + 8);
        v57(v24, v55);
        v57(v37, v55);
        goto LABEL_33;
      }

      (*(v116 + 8))(v37, v117);
      goto LABEL_25;
    case 5u:
      if (OUTLINED_FUNCTION_33_20() == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    default:
      sub_1D4FE4934(v50, v43);
      v52 = *(v43 + 1);
      v53 = *(v43 + 3);
      v54 = *(v43 + 5);
      if (OUTLINED_FUNCTION_33_20())
      {

LABEL_25:
        sub_1D4E50004(v50, &unk_1EC7ED580, &qword_1D56256E0);
      }

      else
      {
        v91 = v43[48];
        v92 = *(v43 + 4);
        v93 = *(v43 + 2);
        v94 = *v43;
        v95 = *v51;
        v96 = *(v51 + 5);
        v97 = v51[48];
        v125[0] = v94;
        v125[1] = v52;
        v125[2] = v93;
        v125[3] = v53;
        v125[4] = v92;
        v125[5] = v54;
        v126 = v91;
        v120 = v95;
        v118 = *(v51 + 8);
        v119 = *(v51 + 24);
        v121 = v118;
        v122 = v119;
        v123 = v96;
        v124 = v97;
        static MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.== infix(_:_:)(v125, &v120);

LABEL_33:
        sub_1D4FE4998(v50);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t type metadata accessor for MusicLibraryPlaylistViewModel.Delta()
{
  result = qword_1EC7ED5B8;
  if (!qword_1EC7ED5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FE4934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE4998(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FE49F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE4A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicLibraryPlaylistViewModel.Delta.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v62 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = sub_1D5614828();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  sub_1D4FE4934(v0, v30 - v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48));
      v54 = *(v16 + 32);
      v55 = OUTLINED_FUNCTION_24_22();
      v56(v55);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v57, v58);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
      MEMORY[0x1DA6EC0D0](v53);
      goto LABEL_8;
    case 2u:
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      v45 = *(v16 + 32);
      v46 = OUTLINED_FUNCTION_24_22();
      v45(v46);
      (v45)(v22, v31 + v44, v13);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v47, v48);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
      sub_1D5614CB8();
      v49 = *(v16 + 8);
      v49(v22, v13);
      v49(v24, v13);
      break;
    case 3u:
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      v61 = *(v16 + 32);
      v61(v1, v31, v13);
      sub_1D4FE49F4(v31 + v50, v12);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v51, v52);
      sub_1D5614CB8();
      sub_1D4FE4A64(v12, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
      {
        sub_1D56162F8();
        sub_1D4E50004(v12, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v16 + 8))(v1, v13);
      }

      else
      {
        v61(v24, v9, v13);
        sub_1D56162F8();
        OUTLINED_FUNCTION_38_17();
        sub_1D5614CB8();
        v59 = *(v16 + 8);
        v59(v24, v13);
        sub_1D4E50004(v12, &unk_1EC7F2BE0, &qword_1D56250F0);
        v59(v1, v13);
      }

      break;
    case 4u:
      v39 = *(v16 + 32);
      v40 = OUTLINED_FUNCTION_24_22();
      v41(v40);
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v42, v43);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
LABEL_8:
      (*(v16 + 8))(v24, v13);
      break;
    case 5u:
      MEMORY[0x1DA6EC0D0](5);
      break;
    default:
      v33 = *v31;
      v32 = v31[1];
      v35 = v31[2];
      v34 = v31[3];
      v37 = v31[4];
      v36 = v31[5];
      v38 = *(v31 + 48);
      MEMORY[0x1DA6EC0D0](0);
      v63 = v33;
      v64 = v32;
      v65 = v35;
      v66 = v34;
      v67 = v37;
      v68 = v36;
      v69 = v38;
      MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hash(into:)();

      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.hashValue.getter()
{
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4FE505C()
{
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.hash(into:)();
  return sub_1D5616328();
}

void sub_1D4FE5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_1D5614828();
  v29 = OUTLINED_FUNCTION_4(v28);
  v247 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v244 = (v33 - v34);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v246 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v223 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v249 = &v223 - v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D560E728();
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v248 = v50 - v49;
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D560D9A8();
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v57 = v56 - v55;
  v58 = sub_1D560D838();
  v250 = OUTLINED_FUNCTION_4(v58);
  v251 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v250);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  v245 = v63;
  OUTLINED_FUNCTION_23();
  v65 = MEMORY[0x1EEE9AC00](v64);
  v67 = (&v223 - v66);
  MEMORY[0x1EEE9AC00](v65);
  v68 = OUTLINED_FUNCTION_43_14();
  v69 = OUTLINED_FUNCTION_14(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v74 = (v73 - v72);
  switch([v25 musicKit_changeDetails_type])
  {
    case 0uLL:
      goto LABEL_32;
    case 1uLL:
      v238 = v74;
      v239 = v27;
      v240 = v39;
      v241 = v67;
      v242 = v28;
      v243 = v68;
      v75 = [v25 musicKit_changeDetails_item];
      if (!v75)
      {
        goto LABEL_33;
      }

      v76 = v75;
      v244 = [v75 legacyIdentifierSet];
      sub_1D560D898();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v78 = sub_1D560DB08();
      OUTLINED_FUNCTION_4(v78);
      v80 = v79;
      v82 = *(v81 + 72);
      v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      OUTLINED_FUNCTION_42_15();
      *(v84 - 256) = v77;
      v233 = v85;
      v86 = swift_allocObject();
      v229 = xmmword_1D5621D90;
      *(v86 + 16) = xmmword_1D5621D90;
      v234 = v83;
      v87 = v86 + v83;
      v88 = *(v80 + 104);
      LODWORD(v230) = *MEMORY[0x1E6975040];
      v88(v87);
      v89 = *MEMORY[0x1E6975030];
      v235 = v82;
      LODWORD(v228) = v89;
      v237 = v78;
      v232 = v88;
      v231 = v80 + 104;
      v88(v87 + v82);
      v90 = v248;
      sub_1D560E718();
      v91 = sub_1D560D9E8();
      v92 = v249;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v91);
      sub_1D4F40E88(v244, v57, v90, v92, v21);
      v96 = v250;
      v97 = *(v251 + 16);
      v97(v241, v21, v250);
      v244 = v76;
      v98 = [v76 underlyingObject];
      OUTLINED_FUNCTION_5_28();
      v99 = v240;
      sub_1D5614718();
      v100 = [v25 musicKit_changeDetails_isLastItem];
      if ((v100 & 1) != 0 || (v101 = [v25 musicKit_changeDetails_referenceItemPositionIdentifier]) == 0)
      {
        swift_unknownObjectRelease();

        (*(v251 + 8))(v21, v96);
        v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48);
        v74 = v238;
        (*(v247 + 32))(v238, v99, v242);
        *(v74 + v212) = v100;
        goto LABEL_25;
      }

      v226 = v97;
      v227 = v91;

      v102 = [v25 musicKit_changeDetails_referenceItem];
      if (v102)
      {
        v225 = v102;
        v224 = [v102 legacyIdentifierSet];
        sub_1D560D898();
        v103 = OUTLINED_FUNCTION_20_29();
        v104 = OUTLINED_FUNCTION_36_13(v103, v252);
        v107 = v105 + v106;
        v108 = v237;
        v109 = v57;
        v110 = v232;
        (v232)(v105 + v106, v230, v237, v104);
        (v110)(v107 + v235, v228, v108);
        v111 = v248;
        sub_1D560E718();
        v112 = v249;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v113, v114, v115, v227);
        v116 = v241;
        sub_1D4F40E88(v224, v109, v111, v112, v241);
        v117 = OUTLINED_FUNCTION_46_1();
        v118 = v250;
        v226(v117);
        v119 = v225;
        v120 = [v225 underlyingObject];
        OUTLINED_FUNCTION_5_28();
        v121 = v246;
        sub_1D5614718();
        swift_unknownObjectRelease();

        v122 = *(v251 + 8);
        v122(v116, v118);
        v122(v21, v118);
        v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
        v124 = *(v247 + 32);
        v74 = v238;
        v125 = v242;
        v124(v238, v240, v242);
        v124((v74 + v123), v121, v125);
LABEL_25:
        v27 = v239;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5681000);
      v252[0] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16();
      OUTLINED_FUNCTION_11_29();
      i = 63;
      goto LABEL_31;
    case 2uLL:
      v241 = v67;
      v242 = v28;
      v243 = v68;
      v126 = [v25 musicKit_changeDetails_item];
      v240 = v25;
      if (!v126)
      {
        OUTLINED_FUNCTION_13_28();
        sub_1D5615B68();
        OUTLINED_FUNCTION_29_18();
        OUTLINED_FUNCTION_23_22();
        MEMORY[0x1DA6EAC70](v219 + 28, v220 | 0x8000000000000000);
        v252[0] = v240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
        OUTLINED_FUNCTION_35_16();
        OUTLINED_FUNCTION_11_29();
        for (i = 76; ; i = 42)
        {
LABEL_31:
          v223 = i;
LABEL_32:
          sub_1D5615E08();
          __break(1u);
LABEL_33:
          OUTLINED_FUNCTION_13_28();
          sub_1D5615B68();
          OUTLINED_FUNCTION_29_18();
          OUTLINED_FUNCTION_23_22();
          MEMORY[0x1DA6EAC70](v217 + 25, v218 | 0x8000000000000000);
          v252[0] = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
          OUTLINED_FUNCTION_35_16();
          OUTLINED_FUNCTION_11_29();
        }
      }

      v127 = v126;
      v244 = [v126 legacyIdentifierSet];
      sub_1D560D898();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v128 = sub_1D560DB08();
      OUTLINED_FUNCTION_4(v128);
      v130 = v129;
      v132 = *(v131 + 72);
      v133 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_1D5621D90;
      v135 = v134 + v133;
      v136 = *(v130 + 104);
      v136(v135, *MEMORY[0x1E6975040], v128);
      v136(v135 + v132, *MEMORY[0x1E6975030], v128);
      v137 = v248;
      sub_1D560E718();
      sub_1D560D9E8();
      v138 = v249;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = v241;
      sub_1D4F40E88(v244, v57, v137, v138, v241);
      v144 = v250;
      v145 = v251;
      (*(v251 + 16))(v245, v143, v250);
      v146 = [v127 underlyingObject];
      OUTLINED_FUNCTION_5_28();
      v147 = v246;
      sub_1D5614718();
      swift_unknownObjectRelease();

      (*(v145 + 8))(v143, v144);
      (*(v247 + 32))(v74, v147, v242);
LABEL_26:
      v68 = v243;
LABEL_29:
      swift_storeEnumTagMultiPayload();
      sub_1D4FE7234(v74, v27);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v68);
      OUTLINED_FUNCTION_46();
      return;
    case 3uLL:
      v242 = v28;
      v243 = v68;
      v239 = v27;
      v148 = [v25 musicKit_changeDetails_item];
      v240 = v25;
      if (v148)
      {
        v238 = v148;
        v241 = [v148 legacyIdentifierSet];
        sub_1D560D898();
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        v150 = sub_1D560DB08();
        OUTLINED_FUNCTION_4(v150);
        v152 = v151;
        v154 = *(v153 + 72);
        v155 = (*(v151 + 80) + 32) & ~*(v151 + 80);
        OUTLINED_FUNCTION_42_15();
        *(v156 - 256) = v149;
        v233 = v157;
        v158 = swift_allocObject();
        v230 = xmmword_1D5621D90;
        *(v158 + 16) = xmmword_1D5621D90;
        v234 = v155;
        v159 = v158 + v155;
        v160 = *(v152 + 104);
        LODWORD(v231) = *MEMORY[0x1E6975040];
        v160(v159);
        v161 = *MEMORY[0x1E6975030];
        v235 = v154;
        LODWORD(v229) = v161;
        v237 = v150;
        v232 = v160;
        v160(v159 + v154);
        v162 = v248;
        sub_1D560E718();
        v163 = sub_1D560D9E8();
        v164 = v249;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v165, v166, v167, v163);
        sub_1D4F40E88(v241, v57, v162, v164, v20);
        v168 = v251;
        v169 = *(v251 + 16);
        v228 = v251 + 16;
        v227 = v169;
        v169(v67, v20, v250);
        v170 = [v238 underlyingObject];
        OUTLINED_FUNCTION_5_28();
        v171 = v244;
        sub_1D5614718();
        v172 = [v240 musicKit_changeDetails_referenceItem];
        if (v172)
        {
          v226 = v172;
          v225 = [v172 legacyIdentifierSet];
          sub_1D560D898();
          v173 = OUTLINED_FUNCTION_20_29();
          v241 = v67;
          v174 = OUTLINED_FUNCTION_36_13(v173, &a9);
          v175 = v162;
          v178 = v176 + v177;
          v179 = v237;
          v236 = v163;
          v180 = v164;
          v181 = v232;
          (v232)(v176 + v177, v231, v237, v174);
          (v181)(v178 + v235, v229, v179);
          sub_1D560E718();
          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v182, v183, v184, v236);
          v185 = v241;
          sub_1D4F40E88(v225, v57, v175, v180, v241);
          v186 = v250;
          v227(v245, v185, v250);
          v187 = v226;
          v188 = [v226 underlyingObject];
          OUTLINED_FUNCTION_5_28();
          v189 = v246;
          sub_1D5614718();
          swift_unknownObjectRelease();

          v190 = *(v251 + 8);
          v190(v185, v186);
          v190(v20, v186);
          v191 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
          v192 = *(v247 + 32);
          v193 = v242;
          v192(v74, v244, v242);
          v192((v74 + v191), v189, v193);
          v194 = v74 + v191;
          v195 = 0;
          v196 = 1;
          v197 = v193;
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v168 + 8))(v20, v250);
          v213 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
          v214 = v242;
          (*(v247 + 32))(v74, v171, v242);
          OUTLINED_FUNCTION_33();
          v197 = v214;
        }

        __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_23_22();
      MEMORY[0x1DA6EAC70](v221 + 26, v222 | 0x8000000000000000);
      v252[0] = v240;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16();
      OUTLINED_FUNCTION_11_29();
      i = 88;
      goto LABEL_31;
    case 4uLL:
      swift_unknownObjectRelease();
      goto LABEL_29;
    case 5uLL:
      if (qword_1EC7E8DF0 != -1)
      {
        swift_once();
      }

      v203 = sub_1D560C758();
      __swift_project_value_buffer(v203, qword_1EC87C140);
      v204 = sub_1D560C738();
      v205 = sub_1D56156E8();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        MEMORY[0x1DA6ED200](v206, -1, -1);
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_46();

      __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
      return;
    case 6uLL:
      v198 = [v25 musicKit_changeDetails_playlistName];
      if (v198)
      {
        v199 = v198;
        v200 = sub_1D5614D68();
        v202 = v201;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v200 = 0;
        v202 = 0;
      }

      *v74 = v200;
      v74[1] = v202;
      *(v74 + 1) = 0u;
      *(v74 + 2) = 0u;
      *(v74 + 48) = 2;
      goto LABEL_29;
    default:
      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      v215 = v25;
      v25 = 0xD000000000000010;
      MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5680EE0);
      v252[0] = v215;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16();
      MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5680F00);
      OUTLINED_FUNCTION_11_29();
      i = 127;
      goto LABEL_31;
  }
}

void sub_1D4FE631C()
{
  OUTLINED_FUNCTION_47();
  v140 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v135 - v14;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D5614828();
  v16 = OUTLINED_FUNCTION_4(v15);
  v141 = v17;
  v142 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v137 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  v138 = v27;
  OUTLINED_FUNCTION_23();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v135 - v33;
  v35 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v41 = (v40 - v39);
  v151 = 0;
  v152 = 0xE000000000000000;
  sub_1D4FE4934(v0, v40 - v39);
  OUTLINED_FUNCTION_130();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v92 = *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48));
      v94 = v141;
      v93 = v142;
      (*(v141 + 32))(v34, v41, v142);
      MEMORY[0x1DA6EAC70](0x286464612ELL, 0xE500000000000000);
      if (v140)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v95 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v95, v96);
        v147 = v97;
        v148 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        sub_1D5615968();
        OUTLINED_FUNCTION_26_0();
        v98 = OUTLINED_FUNCTION_46_1();
        MEMORY[0x1DA6EAC70](v98);

        MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
        OUTLINED_FUNCTION_37_15();
        OUTLINED_FUNCTION_19_23(v99);
        v102 = v101 | 0x646E0000u;
        if (v100)
        {
          v103 = 0x696E6E696765622ELL;
        }

        else
        {
          v103 = v102;
        }

        if (v100)
        {
          v104 = 0xEA0000000000676ELL;
        }

        else
        {
          v104 = 0xE400000000000000;
        }

        MEMORY[0x1DA6EAC70](v103, v104);

        OUTLINED_FUNCTION_21_20();

        v105 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v105);
      }

      else
      {
        v116 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v116);

        OUTLINED_FUNCTION_37_15();
        OUTLINED_FUNCTION_19_23(v117 | 0xC);
        v120 = v119 | 0x646E0000u;
        if (v118)
        {
          v121 = 0x696E6E696765622ELL;
        }

        else
        {
          v121 = v120;
        }

        if (v118)
        {
          v122 = 0xEA0000000000676ELL;
        }

        else
        {
          v122 = 0xE400000000000000;
        }

        MEMORY[0x1DA6EAC70](v121, v122);

        v123 = OUTLINED_FUNCTION_31_17();
        MEMORY[0x1DA6EAC70](v123);
        OUTLINED_FUNCTION_21_20();
      }

      (*(v94 + 8))(v34, v93);
      break;
    case 2u:
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      v69 = v141;
      v68 = v142;
      v70 = *(v141 + 32);
      v70(v2, v41, v142);
      v70(v31, (v41 + v67), v68);
      MEMORY[0x1DA6EAC70](0x28747265736E692ELL, 0xE800000000000000);
      if (v140)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v71 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v71, v72);
        v147 = v73;
        v148 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v74 = sub_1D5615968();
        v76 = v75;

        MEMORY[0x1DA6EAC70](v74, v76);

        MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
        MEMORY[0x1DA6EAC70](0x3A72657466612020, 0xE900000000000020);
        v145 = sub_1D5614748();
        v146 = v77;
        v148 = 0xE500000000000000;
        v149 = 10;
        v150 = 0xE100000000000000;
        OUTLINED_FUNCTION_8_33();
        v147 = v78;
        v69 = v141;
        OUTLINED_FUNCTION_3_31();
        sub_1D5615968();
        OUTLINED_FUNCTION_26_0();
        v79 = OUTLINED_FUNCTION_46_1();
        MEMORY[0x1DA6EAC70](v79);

        v80 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v80);
      }

      else
      {
        v107 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v107);

        v145 = 0x3A7265746661202CLL;
        v146 = 0xE900000000000020;
        v108 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v108);

        v109 = OUTLINED_FUNCTION_31_17();
        MEMORY[0x1DA6EAC70](v109);
        OUTLINED_FUNCTION_21_20();
      }

      v110 = *(v69 + 8);
      v111 = v142;
      v110(v31, v142);
      v110(v2, v111);
      break;
    case 3u:
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      v82 = v142;
      v83 = v138;
      v136 = *(v141 + 32);
      v136(v138, v41, v142);
      v84 = v139;
      sub_1D4FE49F4(v41 + v81, v139);
      MEMORY[0x1DA6EAC70](0x2865766F6D2ELL, 0xE600000000000000);
      if (v140)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v145 = sub_1D5614748();
        v146 = v85;
        v149 = 10;
        v150 = 0xE100000000000000;
        v147 = 0x202020200ALL;
        v148 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v86 = sub_1D5615968();
        v88 = v87;

        MEMORY[0x1DA6EAC70](v86, v88);
        v89 = v139;
        v90 = v142;

        sub_1D4FE4A64(v89, v3);
        if (__swift_getEnumTagSinglePayload(v3, 1, v90) == 1)
        {
          sub_1D4E50004(v3, &unk_1EC7F2BE0, &qword_1D56250F0);
          MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
          MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D5681070);
          v91 = v141;
        }

        else
        {
          v124 = v137;
          v136(v137, v3, v90);
          MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
          MEMORY[0x1DA6EAC70](0x3A72657466612020, 0xE900000000000020);
          v145 = sub_1D5614748();
          v146 = v125;
          v148 = 0xE500000000000000;
          v149 = 10;
          v150 = 0xE100000000000000;
          OUTLINED_FUNCTION_8_33();
          v147 = v126;
          OUTLINED_FUNCTION_3_31();
          v127 = sub_1D5615968();
          v129 = v128;

          MEMORY[0x1DA6EAC70](v127, v129);

          v91 = v141;
          (*(v141 + 8))(v124, v90);
        }

        v130 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v130);
        sub_1D4E50004(v89, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v91 + 8))(v138, v90);
      }

      else
      {
        v112 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v112);

        sub_1D4FE4A64(v84, v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v82) == 1)
        {
          sub_1D4E50004(v11, &unk_1EC7F2BE0, &qword_1D56250F0);
          MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D5681040);
          sub_1D4E50004(v84, &unk_1EC7F2BE0, &qword_1D56250F0);
          (*(v141 + 8))(v83, v82);
        }

        else
        {
          v131 = OUTLINED_FUNCTION_46_1();
          (v136)(v131);
          v145 = 0x3A7265746661202CLL;
          v146 = 0xE900000000000020;
          v132 = sub_1D5614708();
          MEMORY[0x1DA6EAC70](v132);

          v133 = OUTLINED_FUNCTION_31_17();
          MEMORY[0x1DA6EAC70](v133);
          OUTLINED_FUNCTION_21_20();

          v134 = *(v141 + 8);
          v134(v1, v82);
          sub_1D4E50004(v84, &unk_1EC7F2BE0, &qword_1D56250F0);
          v134(v83, v82);
        }
      }

      break;
    case 4u:
      v59 = v141;
      v58 = v142;
      (*(v141 + 32))(v22, v41, v142);
      MEMORY[0x1DA6EAC70](0x2865766F6D65722ELL, 0xE800000000000000);
      if (v140)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v60 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v60, v61);
        v147 = v62;
        v148 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v63 = sub_1D5615968();
        v65 = v64;

        MEMORY[0x1DA6EAC70](v63, v65);

        v66 = OUTLINED_FUNCTION_30_12();
      }

      else
      {
        v106 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v106);

        v66 = OUTLINED_FUNCTION_31_17();
      }

      MEMORY[0x1DA6EAC70](v66);
      (*(v59 + 8))(v22, v58);
      break;
    case 5u:
      v56 = 0x4165766F6D65722ELL;
      v57 = 0xEA00000000006C6CLL;
      goto LABEL_27;
    default:
      v43 = *v41;
      v42 = v41[1];
      v45 = v41[2];
      v44 = v41[3];
      v47 = v41[4];
      v46 = v41[5];
      v48 = *(v41 + 48);
      MEMORY[0x1DA6EAC70](0x286574616470752ELL, 0xE800000000000000);
      if (v140)
      {
        OUTLINED_FUNCTION_16_22();
        MEMORY[0x1DA6EAC70](0xD000000000000013, 0x80000001D56810A0);
        OUTLINED_FUNCTION_27_16();
        v49 = MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.debugDescription.getter();
        v51 = v50;

        v149 = v49;
        v150 = v51;
        v147 = 10;
        v148 = 0xE100000000000000;
        OUTLINED_FUNCTION_8_33();
        v143 = v52;
        v144 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_3_31();
        v53 = sub_1D5615968();
        v55 = v54;

        MEMORY[0x1DA6EAC70](v53, v55);

        v56 = OUTLINED_FUNCTION_30_12();
      }

      else
      {
        OUTLINED_FUNCTION_27_16();
        v113 = MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.description.getter();
        v115 = v114;

        MEMORY[0x1DA6EAC70](v113, v115);

        v56 = OUTLINED_FUNCTION_31_17();
      }

LABEL_27:
      MEMORY[0x1DA6EAC70](v56, v57);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FE6FF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4FE7038()
{
  sub_1D4FE70E0();
  if (v0 <= 0x3F)
  {
    sub_1D4FE714C();
    if (v1 <= 0x3F)
    {
      sub_1D4FE71B4();
      if (v2 <= 0x3F)
      {
        sub_1D5614828();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4FE70E0()
{
  if (!qword_1EC7ED5C8)
  {
    sub_1D5614828();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5C8);
    }
  }
}

void sub_1D4FE714C()
{
  if (!qword_1EC7ED5D0)
  {
    sub_1D5614828();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5D0);
    }
  }
}

void sub_1D4FE71B4()
{
  if (!qword_1EC7ED5D8)
  {
    sub_1D5614828();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F2BE0, &qword_1D56250F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5D8);
    }
  }
}

uint64_t sub_1D4FE7234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_29()
{
  v2 = *(v0 - 296) | 7;
  v3 = *(v0 - 272);
  v4 = *(v0 - 304);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_20()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_47_15(uint64_t a1)
{

  return sub_1D4E50004(a1, v1, v2);
}

uint64_t FlexAnalysis.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_201();
  sub_1D5610CD8();
  v13 = sub_1D560D708();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  *a2 = v13;
  a2[1] = v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = a2 + *(type metadata accessor for FlexAnalysis() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for FlexAnalysis()
{
  result = qword_1EDD57C80;
  if (!qword_1EDD57C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FE7520(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v5);
  OUTLINED_FUNCTION_36_1();
  if (v7)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D4FE7608(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v5);

  return sub_1D560EC28();
}

uint64_t FlexAnalysis.events.getter()
{
  if (qword_1EC7E8AC8 != -1)
  {
    OUTLINED_FUNCTION_16_23();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v0);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_36_1();
  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

MusicKitInternal::FlexAnalysis::Event_optional __swiftcall FlexAnalysis.Event.init(time:score:)(Swift::Double time, Swift::Int score)
{
  if ((score - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 0;
LABEL_10:
    v5 = (score % 100);
    *v2 = time;
    v3 = v5 / 100.0;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5 / 100.0;
    goto LABEL_11;
  }

  if ((score - 500) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 1;
    goto LABEL_10;
  }

  if ((score - 700) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if ((score - 900) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 3;
    goto LABEL_10;
  }

  v3 = 0.0;
  *v2 = xmmword_1D56257E0;
  *(v2 + 16) = 0;
LABEL_11:
  result.value.amplitude = v5;
  result.value.time = v3;
  result.value.timeScale = score;
  return result;
}

uint64_t FlexAnalysis.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t FlexAnalysis.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlexAnalysis() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t static FlexAnalysis.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for FlexAnalysis() + 20);

  return sub_1D5611A78();
}

uint64_t FlexAnalysis.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for FlexAnalysis() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_12_29();
  sub_1D4FEE8A0(v4);
  return sub_1D5614CB8();
}

uint64_t FlexAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for FlexAnalysis() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_12_29();
  sub_1D4FEE8A0(v4);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FE7A80(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4FEE8A0(&qword_1EC7ECF08);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FE7B24@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlexAnalysis.subscript.getter(void *a1)
{
  return sub_1D4FE7B8C(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D4FE7B8C(a1, MEMORY[0x1E6975378]);
}

{
  v1 = (*a1 + *MEMORY[0x1E6975138]);
  v2 = v1[1];
  v3 = v1[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_10_33();
  sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_15_25(&qword_1EC7ECFF0);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v5);
  v7 = v1[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FE7B8C(void *a1, void *a2)
{
  v2 = *a1 + *a2;
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_10_33();
  sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_15_25(&qword_1EC7ECFF0);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v5);
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FE7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v12 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D4FE7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v14 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D4FE7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v14 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D4FE815C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEEA10();
  v0 = OUTLINED_FUNCTION_49_8();

  qword_1EC87BF08 = v0;
  return result;
}

uint64_t sub_1D4FE81D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEE938();
  v0 = OUTLINED_FUNCTION_49_8();

  qword_1EC87BF10 = v0;
  return result;
}

uint64_t sub_1D4FE8244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEEA10();
  v0 = sub_1D560D178();

  qword_1EC87BF18 = v0;
  return result;
}

uint64_t sub_1D4FE82E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEE8E4();
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

double sub_1D4FE83A4@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t FlexAnalysis.init(from:)(uint64_t *a1)
{
  type metadata accessor for FlexAnalysis();
  sub_1D4E628D4(a1, v5);
  OUTLINED_FUNCTION_11_30();
  sub_1D4FEE8A0(v2);
  OUTLINED_FUNCTION_9_32();
  sub_1D4FEE8A0(v3);
  OUTLINED_FUNCTION_14_23(&unk_1EC7ED628);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FlexAnalysis.encode(to:)()
{
  type metadata accessor for FlexAnalysis();
  OUTLINED_FUNCTION_11_30();
  sub_1D4FEE8A0(v0);
  OUTLINED_FUNCTION_9_32();
  sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_14_23(&unk_1EC7ED628);
  return sub_1D5612688();
}

unint64_t FlexAnalysis.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t FlexAnalysis.debugDescription.getter()
{
  strcpy(v20, "FlexAnalysis(");
  HIWORD(v20[1]) = -4864;
  strcpy(v19, "\n  id: ");
  BYTE1(v19[1]) = 0;
  WORD1(v19[1]) = 0;
  HIDWORD(v19[1]) = -402653184;
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v19[0], v19[1]);

  sub_1D5615B68();

  strcpy(v19, ",\n  events: ");
  HIWORD(v19[1]) = -4864;
  if (qword_1EC7E8AC8 != -1)
  {
    OUTLINED_FUNCTION_16_23();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v5);
  OUTLINED_FUNCTION_22_22();
  v6 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v7 = v18;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1DA6EAF70](v7, &type metadata for FlexAnalysis.Event);
  v10 = v9;

  MEMORY[0x1DA6EAC70](v8, v10);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v19[0], v19[1]);

  sub_1D5615B68();

  v19[0] = 0xD000000000000011;
  v19[1] = 0x80000001D56810E0;
  if (qword_1EC7E8AC0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_22_22();
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x1DA6EAF70](v11, &type metadata for FlexAnalysis.PivotPoints);

  v12 = OUTLINED_FUNCTION_201();
  MEMORY[0x1DA6EAC70](v12);

  MEMORY[0x1DA6EAC70](v19[0], v19[1]);

  sub_1D5615B68();

  v19[0] = 0xD000000000000010;
  v19[1] = 0x80000001D5681100;
  if (qword_1EC7E8AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22_22();
  if (v18)
  {
    v13 = v18;
  }

  else
  {
    v13 = v6;
  }

  v14 = MEMORY[0x1DA6EAF70](v13, &type metadata for FlexAnalysis.PivotPoints);
  v16 = v15;

  MEMORY[0x1DA6EAC70](v14, v16);

  MEMORY[0x1DA6EAC70](v19[0], v19[1]);

  if (qword_1EC7E8AE0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v19[2])
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5681120);
    LOBYTE(v19[1]) &= 1u;
    sub_1D5615D48();

    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v20[0];
}

uint64_t sub_1D4FE8B30()
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
  qword_1EC7ED5E8 = v4;
  return result;
}

uint64_t static FlexAnalysis.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E8AE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FE8CCC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ED5F0);
  __swift_project_value_buffer(v0, qword_1EC7ED5F0);
  type metadata accessor for FlexAnalysis();
  sub_1D4FEE8A0(&qword_1EC7ECFF0);
  return sub_1D560D988();
}

uint64_t sub_1D4FE8D8C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ED608);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E8AF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7ED5F0);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D4FE8E70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D560D9A8();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_24_0(v5);
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t sub_1D4FE8F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1735290732 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F4C6172747865 && a2 == 0xE900000000000067)
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

uint64_t sub_1D4FE9088(char a1)
{
  result = 0x74726F6873;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1735290732;
      break;
    case 3:
      result = 0x6E6F4C6172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FE9120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE8F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FE9148(uint64_t a1)
{
  v2 = sub_1D4FE973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9184(uint64_t a1)
{
  v2 = sub_1D4FE973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE91C0(uint64_t a1)
{
  v2 = sub_1D4FE9790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE91FC(uint64_t a1)
{
  v2 = sub_1D4FE9790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE9238(uint64_t a1)
{
  v2 = sub_1D4FE97E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9274(uint64_t a1)
{
  v2 = sub_1D4FE97E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE92B0(uint64_t a1)
{
  v2 = sub_1D4FE9838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE92EC(uint64_t a1)
{
  v2 = sub_1D4FE9838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE9328(uint64_t a1)
{
  v2 = sub_1D4FE988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9364(uint64_t a1)
{
  v2 = sub_1D4FE988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Event.TimeScale.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED630, &qword_1D5625800);
  v5 = OUTLINED_FUNCTION_4(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED638, &qword_1D5625808);
  v12 = OUTLINED_FUNCTION_4(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v49 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED640, &qword_1D5625810);
  v19 = OUTLINED_FUNCTION_4(v18);
  v47 = v20;
  v48 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v46 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED648, &qword_1D5625818);
  v26 = OUTLINED_FUNCTION_4(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED650, &qword_1D5625820);
  OUTLINED_FUNCTION_4(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v44 - v37;
  v39 = *v0;
  v40 = v3[4];
  OUTLINED_FUNCTION_23_23(v3, v3[3]);
  sub_1D4FE973C();
  sub_1D56163D8();
  switch(v39)
  {
    case 1:
      OUTLINED_FUNCTION_41_15();
      sub_1D4FE9838();
      v41 = v46;
      OUTLINED_FUNCTION_17_23();
      v43 = v47;
      v42 = v48;
      goto LABEL_6;
    case 2:
      sub_1D4FE97E4();
      v41 = v49;
      OUTLINED_FUNCTION_17_23();
      v43 = v50;
      v42 = v51;
      goto LABEL_6;
    case 3:
      sub_1D4FE9790();
      v41 = v52;
      OUTLINED_FUNCTION_17_23();
      v43 = v53;
      v42 = v54;
LABEL_6:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      sub_1D4FE988C();
      OUTLINED_FUNCTION_17_23();
      (*(v44 + 8))(v1, v45);
      break;
  }

  (*(v33 + 8))(v38, v31);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FE973C()
{
  result = qword_1EC7ED658;
  if (!qword_1EC7ED658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED658);
  }

  return result;
}

unint64_t sub_1D4FE9790()
{
  result = qword_1EC7ED660;
  if (!qword_1EC7ED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED660);
  }

  return result;
}

unint64_t sub_1D4FE97E4()
{
  result = qword_1EC7ED668;
  if (!qword_1EC7ED668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED668);
  }

  return result;
}

unint64_t sub_1D4FE9838()
{
  result = qword_1EC7ED670;
  if (!qword_1EC7ED670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED670);
  }

  return result;
}

unint64_t sub_1D4FE988C()
{
  result = qword_1EC7ED678;
  if (!qword_1EC7ED678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED678);
  }

  return result;
}

uint64_t FlexAnalysis.Event.TimeScale.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void FlexAnalysis.Event.TimeScale.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v65 = v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED680, &qword_1D5625828);
  OUTLINED_FUNCTION_4(v68);
  v64 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v67 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED688, &qword_1D5625830);
  v13 = OUTLINED_FUNCTION_4(v12);
  v61 = v14;
  v62 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v63 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED690, &qword_1D5625838);
  v20 = OUTLINED_FUNCTION_4(v19);
  v59 = v21;
  v60 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED698, &qword_1D5625840);
  OUTLINED_FUNCTION_4(v25);
  v58 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6A0, &unk_1D5625848);
  OUTLINED_FUNCTION_4(v30);
  v66 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_31();
  v35 = v5[4];
  OUTLINED_FUNCTION_23_23(v5, v5[3]);
  sub_1D4FE973C();
  OUTLINED_FUNCTION_28_21();
  sub_1D5616398();
  if (v0)
  {
    goto LABEL_8;
  }

  v57 = v2;
  v69 = v5;
  v36 = v1;
  v37 = sub_1D5615FE8();
  v41 = sub_1D4FE35F0(v37, 0);
  if (v39 == v40 >> 1)
  {
LABEL_7:
    v47 = sub_1D5615C18();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v49 = &type metadata for FlexAnalysis.Event.TimeScale;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    v51 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v47);
    (*(v52 + 104))(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v66 + 8))(v36, v30);
    v5 = v69;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v39 < (v40 >> 1))
  {
    v42 = *(v38 + v39);
    sub_1D4FE35EC(v39 + 1, v40 >> 1, v41, v38, v39, v40);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      v56 = v42;
      switch(v42)
      {
        case 1:
          OUTLINED_FUNCTION_41_15();
          sub_1D4FE9838();
          v53 = v3;
          OUTLINED_FUNCTION_21_4();
          swift_unknownObjectRelease();
          v55 = v59;
          v54 = v60;
          goto LABEL_13;
        case 2:
          sub_1D4FE97E4();
          v53 = v63;
          OUTLINED_FUNCTION_21_4();
          swift_unknownObjectRelease();
          v55 = v61;
          v54 = v62;
LABEL_13:
          (*(v55 + 8))(v53, v54);
          break;
        case 3:
          sub_1D4FE9790();
          sub_1D5615F18();
          swift_unknownObjectRelease();
          (*(v64 + 8))(v67, v68);
          break;
        default:
          sub_1D4FE988C();
          OUTLINED_FUNCTION_21_4();
          swift_unknownObjectRelease();
          (*(v58 + 8))(v57, v25);
          break;
      }

      (*(v66 + 8))(v36, v30);
      *v65 = v56;
      __swift_destroy_boxed_opaque_existential_1(v69);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static FlexAnalysis.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D4FE9F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616353656D6974 && a2 == 0xE900000000000065;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x647574696C706D61 && a2 == 0xE900000000000065)
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

uint64_t sub_1D4FEA094(char a1)
{
  if (!a1)
  {
    return 1701669236;
  }

  if (a1 == 1)
  {
    return 0x6C616353656D6974;
  }

  return 0x647574696C706D61;
}

uint64_t sub_1D4FEA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE9F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEA11C(uint64_t a1)
{
  v2 = sub_1D4FECB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEA158(uint64_t a1)
{
  v2 = sub_1D4FECB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Event.encode(to:)()
{
  OUTLINED_FUNCTION_47_16();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6A8, &qword_1D5625858);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = v0[2];
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v15, v16);
  sub_1D4FECB70();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_39_10();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_41_15();
    sub_1D4FECBC4();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v17 = *(v6 + 8);
  v18 = OUTLINED_FUNCTION_134_0();
  v19(v18);
  OUTLINED_FUNCTION_46_10();
}

uint64_t FlexAnalysis.Event.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  MEMORY[0x1DA6EC0D0](v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  return MEMORY[0x1DA6EC100](*&v4);
}

uint64_t FlexAnalysis.Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_164();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1DA6EC100](*&v4);
  MEMORY[0x1DA6EC0D0](v2);
  OUTLINED_FUNCTION_50_9();
  return sub_1D5616328();
}

void FlexAnalysis.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14)
{
  OUTLINED_FUNCTION_47_16();
  OUTLINED_FUNCTION_26_20();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6C0, &qword_1D5625860);
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  sub_1D4FECB70();
  OUTLINED_FUNCTION_19_24();
  if (!v15)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v22 = v21;
    OUTLINED_FUNCTION_41_15();
    sub_1D4FECC18();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_3_32();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = a14;
    *(v16 + 16) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_46_10();
}

uint64_t sub_1D4FEA57C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1DA6EC100](*&v4);
  MEMORY[0x1DA6EC0D0](v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1DA6EC100](*&v5);
  return sub_1D5616328();
}

uint64_t FlexAnalysis.SampledValues.samplingFrequency.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t static FlexAnalysis.SampledValues.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return sub_1D4EFA0D0(v5, v7);
}

uint64_t sub_1D4FEA64C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D5681140 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1D4FEA718(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D4FEA770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEA64C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEA798(uint64_t a1)
{
  v2 = sub_1D4FECC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEA7D4(uint64_t a1)
{
  v2 = sub_1D4FECC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.SampledValues.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6D0, &qword_1D5625868);
  OUTLINED_FUNCTION_4(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = *v0;
  v10 = *(v0 + 8);
  v15 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_23_23(v3, v3[3]);
  sub_1D4FECC6C();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616048();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    sub_1D4FECCC0(&unk_1EC7ED6E8);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v12 = *(v16 + 8);
  v13 = OUTLINED_FUNCTION_134_0();
  v14(v13);
  OUTLINED_FUNCTION_26();
}

void FlexAnalysis.SampledValues.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  if (*(v1 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v4 = *v1;
    sub_1D56162F8();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA6EC100](v5);
  }

  sub_1D4F07ACC(a1, v3);
}

uint64_t FlexAnalysis.SampledValues.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6EC100](v4);
  }

  sub_1D4F07ACC(v6, v3);
  return sub_1D5616328();
}

void FlexAnalysis.SampledValues.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6F0, &qword_1D5625878);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  sub_1D4FECC6C();
  OUTLINED_FUNCTION_19_24();
  if (!v1)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    v7 = sub_1D5615F58();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    sub_1D4FECCC0(&unk_1EC7ED6F8);
    OUTLINED_FUNCTION_18_28();
    sub_1D5615FD8();
    v10 = OUTLINED_FUNCTION_3_32();
    v11(v10);
    *v2 = v7;
    *(v2 + 8) = v9 & 1;
    *(v2 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FEAC60()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1D56162D8();
  FlexAnalysis.SampledValues.hash(into:)(v4);
  return sub_1D5616328();
}

uint64_t FlexAnalysis.PivotPoints.fadeToBlackScore.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t static FlexAnalysis.PivotPoints.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if ((sub_1D4F0B2DC(*(a1 + 8), *(a2 + 8), *a1) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = OUTLINED_FUNCTION_71();

  return sub_1D4F0B2E0(v10);
}

uint64_t sub_1D4FEAD7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E696167 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D5681160 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1936154996 && a2 == 0xE400000000000000)
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

unint64_t sub_1D4FEAED8(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 0x736E696167;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FEAF48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FEAF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEAD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEAFC4(uint64_t a1)
{
  v2 = sub_1D4FECD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEB000(uint64_t a1)
{
  v2 = sub_1D4FECD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexAnalysis.PivotPoints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED700, &qword_1D5625880);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = *v1;
  v18 = v1[2];
  v19 = v1[1];
  v17 = *(v1 + 24);
  v11 = v1[4];
  v12 = a1[4];
  OUTLINED_FUNCTION_23_23(a1, a1[3]);
  sub_1D4FECD28();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECD7C();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616048();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FECE54();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_134_0();
  return v15(v14);
}

uint64_t FlexAnalysis.PivotPoints.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v3);
  sub_1D4F0B2F4(a1);
  if (v6 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA6EC100](v8);
  }

  return sub_1D4F0B2F8(a1, v7);
}

uint64_t FlexAnalysis.PivotPoints.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v6[11] = v2;
  v7 = v3;
  v8 = v4;
  sub_1D56162D8();
  FlexAnalysis.PivotPoints.hash(into:)(v6);
  return sub_1D5616328();
}

uint64_t FlexAnalysis.PivotPoints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED740, &qword_1D5625898);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  sub_1D4FECD28();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_40_15();
  sub_1D5615FB8();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED710, &qword_1D5625888);
  sub_1D4FECF2C();
  OUTLINED_FUNCTION_18_28();
  sub_1D5615FD8();
  v12 = v18;
  LOBYTE(v18) = 2;
  OUTLINED_FUNCTION_40_15();
  v13 = sub_1D5615F58();
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED728, &qword_1D5625890);
  sub_1D4FED004();
  OUTLINED_FUNCTION_18_28();
  sub_1D5615FD8();
  v15 = OUTLINED_FUNCTION_3_32();
  v16(v15);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v17 & 1;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4FEB5E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v6[11] = v2;
  v7 = v3;
  v8 = v4;
  sub_1D56162D8();
  FlexAnalysis.PivotPoints.hash(into:)(v6);
  return sub_1D5616328();
}

uint64_t static FlexAnalysis.Gain.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D4FEB67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7366664F656D6974 && a2 == 0xEA00000000007465;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1D4FEB748(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x7366664F656D6974;
  }
}

uint64_t sub_1D4FEB788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEB67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEB7B0(uint64_t a1)
{
  v2 = sub_1D4FED0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEB7EC(uint64_t a1)
{
  v2 = sub_1D4FED0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexAnalysis.Gain.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED768, &qword_1D56258A0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v11 = *v1;
  v10 = v1[1];
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v14, v15);
  sub_1D4FED0DC();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_134_0();
  return v18(v17);
}

uint64_t FlexAnalysis.Gain.hash(into:)()
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

uint64_t FlexAnalysis.Gain.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6EC100](*&v3);
  OUTLINED_FUNCTION_50_9();
  return sub_1D5616328();
}

void FlexAnalysis.Gain.init(from:)()
{
  OUTLINED_FUNCTION_47_16();
  OUTLINED_FUNCTION_26_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED778, &qword_1D56258A8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  sub_1D4FED0DC();
  OUTLINED_FUNCTION_19_24();
  if (!v1)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v8 = v7;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_3_32();
    v12(v11);
    *v2 = v8;
    v2[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_46_10();
}

uint64_t sub_1D4FEBB7C()
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

uint64_t sub_1D4FEBC08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C6173 && a2 == 0xE700000000000000)
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

uint64_t sub_1D4FEBCCC(char a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a1 & 1);
  return sub_1D5616328();
}

uint64_t sub_1D4FEBD0C(char a1)
{
  if (a1)
  {
    return 0x746E65696C6173;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_1D4FEBD40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FEBD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEBC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEBDBC(uint64_t a1)
{
  v2 = sub_1D4FED130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBDF8(uint64_t a1)
{
  v2 = sub_1D4FED130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FEBE34(uint64_t a1)
{
  v2 = sub_1D4FED1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBE70(uint64_t a1)
{
  v2 = sub_1D4FED1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FEBEAC(uint64_t a1)
{
  v2 = sub_1D4FED184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBEE8(uint64_t a1)
{
  v2 = sub_1D4FED184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Tag.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED780, &qword_1D56258B0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED788, &qword_1D56258B8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED790, &qword_1D56258C0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D4FED130();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1D4FED184();
    v29 = v32;
    OUTLINED_FUNCTION_17_23();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1D4FED1D8();
    OUTLINED_FUNCTION_17_23();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_26();
}

uint64_t FlexAnalysis.Tag.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void FlexAnalysis.Tag.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v54 = v0;
  v4 = v3;
  v51 = v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7B0, &qword_1D56258C8);
  OUTLINED_FUNCTION_4(v53);
  v50 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7B8, &qword_1D56258D0);
  OUTLINED_FUNCTION_4(v12);
  v49 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7C0, &qword_1D56258D8);
  OUTLINED_FUNCTION_4(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v22 = v4[4];
  OUTLINED_FUNCTION_23_23(v4, v4[3]);
  sub_1D4FED130();
  v23 = v54;
  sub_1D5616398();
  if (v23)
  {
    goto LABEL_10;
  }

  v47 = v12;
  v48 = v2;
  v54 = v4;
  v24 = v53;
  v25 = sub_1D5615FE8();
  v26 = sub_1D4FE35F0(v25, 0);
  if (v28 == v29 >> 1)
  {
    v53 = v26;
LABEL_9:
    v39 = sub_1D5615C18();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v41 = &type metadata for FlexAnalysis.Tag;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    v43 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v39);
    (*(v44 + 104))(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v1, v17);
    v4 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v46[1] = 0;
  if (v28 < (v29 >> 1))
  {
    v30 = *(v27 + v28);
    v31 = sub_1D4FE35EC(v28 + 1, v29 >> 1, v26, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      if (v30)
      {
        sub_1D4FED184();
        v36 = v11;
        OUTLINED_FUNCTION_3_0();
        v37 = v51;
        v38 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v36, v24);
      }

      else
      {
        sub_1D4FED1D8();
        v45 = v48;
        OUTLINED_FUNCTION_3_0();
        v37 = v51;
        v38 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v38 + 8))(v1, v33);
      *v37 = v30;
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_11;
    }

    v53 = v31;
    goto LABEL_9;
  }

  __break(1u);
}

void FlexAnalysis.SampledValues.subscript.getter(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(*(v2 + 16) + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    OUTLINED_FUNCTION_8_1();
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t FlexAnalysis.SampledValues.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    if (*(v2 + 16) > result)
    {
      v3 = *(v2 + 8 * result + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FlexAnalysis.SampledValues.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FlexAnalysis.SampledValues.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall FlexAnalysis.SampledValues.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (offsetBy < 1)
  {
    if (v3 <= 0 && v3 > offsetBy)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (v3 < 0 || v3 >= offsetBy)
  {
LABEL_11:
    v5 = __OFADD__(_, offsetBy);
    _ += offsetBy;
    if (!v5)
    {
      LOBYTE(offsetBy) = 0;
      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_5:
  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_15:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1D4FEC7D4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = FlexAnalysis.SampledValues.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D4FEC818@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.SampledValues.endIndex.getter();
  *a1 = result;
  return result;
}

double (*sub_1D4FEC840(void *a1, unint64_t *a2))(void, void)
{
  FlexAnalysis.SampledValues.subscript.getter(*a2);
  *a1 = v3;
  return nullsub_1;
}

void sub_1D4FEC888(uint64_t a1@<X0>, void *a2@<X8>)
{
  FlexAnalysis.SampledValues.subscript.getter(*a1, *(a1 + 8));
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_1D4FEC8BC@<X0>(void *a1@<X8>)
{
  result = FlexAnalysis.SampledValues.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FEC92C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FEC984(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FEC998(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = v2[2];
  return sub_1D4FEC9C0(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_1D4FEC9C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1D4FEC9D4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = FlexAnalysis.SampledValues.index(after:)(*a1);
  *a2 = result;
  return result;
}

void sub_1D4FECA18(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

uint64_t sub_1D4FECA6C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D4F033A0(*(a3 + 16), 0);
  v8 = sub_1D4EFECA0(v10, (v7 + 4), v4, a1, a2 & 1, a3);

  if (v8 == v4)
  {

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4FECB70()
{
  result = qword_1EC7ED6B0;
  if (!qword_1EC7ED6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6B0);
  }

  return result;
}

unint64_t sub_1D4FECBC4()
{
  result = qword_1EC7ED6B8;
  if (!qword_1EC7ED6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6B8);
  }

  return result;
}

unint64_t sub_1D4FECC18()
{
  result = qword_1EC7ED6C8;
  if (!qword_1EC7ED6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6C8);
  }

  return result;
}

unint64_t sub_1D4FECC6C()
{
  result = qword_1EC7ED6D8;
  if (!qword_1EC7ED6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6D8);
  }

  return result;
}

unint64_t sub_1D4FECCC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED6E0, &qword_1D5625870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FECD28()
{
  result = qword_1EC7ED708;
  if (!qword_1EC7ED708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED708);
  }

  return result;
}

unint64_t sub_1D4FECD7C()
{
  result = qword_1EC7ED718;
  if (!qword_1EC7ED718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED718);
  }

  return result;
}

unint64_t sub_1D4FECE00()
{
  result = qword_1EC7ED720;
  if (!qword_1EC7ED720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED720);
  }

  return result;
}

unint64_t sub_1D4FECE54()
{
  result = qword_1EC7ED730;
  if (!qword_1EC7ED730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FECED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED730);
  }

  return result;
}

unint64_t sub_1D4FECED8()
{
  result = qword_1EC7ED738;
  if (!qword_1EC7ED738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED738);
  }

  return result;
}

unint64_t sub_1D4FECF2C()
{
  result = qword_1EC7ED748;
  if (!qword_1EC7ED748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED748);
  }

  return result;
}

unint64_t sub_1D4FECFB0()
{
  result = qword_1EC7ED750;
  if (!qword_1EC7ED750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED750);
  }

  return result;
}

unint64_t sub_1D4FED004()
{
  result = qword_1EC7ED758;
  if (!qword_1EC7ED758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FED088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED758);
  }

  return result;
}

unint64_t sub_1D4FED088()
{
  result = qword_1EC7ED760;
  if (!qword_1EC7ED760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED760);
  }

  return result;
}

unint64_t sub_1D4FED0DC()
{
  result = qword_1EC7ED770;
  if (!qword_1EC7ED770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED770);
  }

  return result;
}

unint64_t sub_1D4FED130()
{
  result = qword_1EC7ED798;
  if (!qword_1EC7ED798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED798);
  }

  return result;
}

unint64_t sub_1D4FED184()
{
  result = qword_1EC7ED7A0;
  if (!qword_1EC7ED7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7A0);
  }

  return result;
}

unint64_t sub_1D4FED1D8()
{
  result = qword_1EC7ED7A8;
  if (!qword_1EC7ED7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7A8);
  }

  return result;
}

unint64_t sub_1D4FED2C0()
{
  result = qword_1EC7ED7C8;
  if (!qword_1EC7ED7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7C8);
  }

  return result;
}

unint64_t sub_1D4FED318()
{
  result = qword_1EC7ED7D0;
  if (!qword_1EC7ED7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7D0);
  }

  return result;
}

unint64_t sub_1D4FED370()
{
  result = qword_1EC7ED7D8;
  if (!qword_1EC7ED7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7D8);
  }

  return result;
}

unint64_t sub_1D4FED3C8()
{
  result = qword_1EC7ED7E0;
  if (!qword_1EC7ED7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7E0);
  }

  return result;
}

unint64_t sub_1D4FED420()
{
  result = qword_1EC7ED7E8;
  if (!qword_1EC7ED7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7E8);
  }

  return result;
}

unint64_t sub_1D4FED4BC()
{
  result = qword_1EC7ED7F8;
  if (!qword_1EC7ED7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7F8);
  }

  return result;
}

unint64_t sub_1D4FED514()
{
  result = qword_1EC7ED800;
  if (!qword_1EC7ED800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED800);
  }

  return result;
}

unint64_t sub_1D4FED59C()
{
  result = qword_1EC7ED818;
  if (!qword_1EC7ED818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED818);
  }

  return result;
}

unint64_t sub_1D4FED638()
{
  result = qword_1EC7ED830;
  if (!qword_1EC7ED830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED830);
  }

  return result;
}

unint64_t sub_1D4FED708()
{
  result = qword_1EC7ED848;
  if (!qword_1EC7ED848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED848);
  }

  return result;
}

unint64_t sub_1D4FED79C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED810, &qword_1D5625FD0);
    sub_1D4FED59C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FED898(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for FlexAnalysis.Event(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 24))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FlexAnalysis.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D4FED9A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1D4FED9E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D4FEDA34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D4FEDA74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioAnalysis.TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioAnalysis.TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *sub_1D4FEDB84(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlexAnalysis.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D4FEDD38(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_35(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FEDE54()
{
  result = qword_1EC7ED870;
  if (!qword_1EC7ED870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED870);
  }

  return result;
}

unint64_t sub_1D4FEDEAC()
{
  result = qword_1EC7ED878;
  if (!qword_1EC7ED878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED878);
  }

  return result;
}

unint64_t sub_1D4FEDF04()
{
  result = qword_1EC7ED880;
  if (!qword_1EC7ED880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED880);
  }

  return result;
}

unint64_t sub_1D4FEDF5C()
{
  result = qword_1EC7ED888;
  if (!qword_1EC7ED888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED888);
  }

  return result;
}

unint64_t sub_1D4FEDFB4()
{
  result = qword_1EC7ED890;
  if (!qword_1EC7ED890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED890);
  }

  return result;
}

unint64_t sub_1D4FEE00C()
{
  result = qword_1EC7ED898;
  if (!qword_1EC7ED898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED898);
  }

  return result;
}

unint64_t sub_1D4FEE064()
{
  result = qword_1EC7ED8A0;
  if (!qword_1EC7ED8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8A0);
  }

  return result;
}

unint64_t sub_1D4FEE0BC()
{
  result = qword_1EC7ED8A8;
  if (!qword_1EC7ED8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8A8);
  }

  return result;
}

unint64_t sub_1D4FEE114()
{
  result = qword_1EC7ED8B0;
  if (!qword_1EC7ED8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8B0);
  }

  return result;
}

unint64_t sub_1D4FEE16C()
{
  result = qword_1EC7ED8B8;
  if (!qword_1EC7ED8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8B8);
  }

  return result;
}

unint64_t sub_1D4FEE1C4()
{
  result = qword_1EC7ED8C0;
  if (!qword_1EC7ED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8C0);
  }

  return result;
}

unint64_t sub_1D4FEE21C()
{
  result = qword_1EC7ED8C8;
  if (!qword_1EC7ED8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8C8);
  }

  return result;
}

unint64_t sub_1D4FEE274()
{
  result = qword_1EC7ED8D0;
  if (!qword_1EC7ED8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8D0);
  }

  return result;
}

unint64_t sub_1D4FEE2CC()
{
  result = qword_1EC7ED8D8;
  if (!qword_1EC7ED8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8D8);
  }

  return result;
}

unint64_t sub_1D4FEE324()
{
  result = qword_1EC7ED8E0;
  if (!qword_1EC7ED8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8E0);
  }

  return result;
}

unint64_t sub_1D4FEE37C()
{
  result = qword_1EC7ED8E8;
  if (!qword_1EC7ED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8E8);
  }

  return result;
}

unint64_t sub_1D4FEE3D4()
{
  result = qword_1EC7ED8F0;
  if (!qword_1EC7ED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8F0);
  }

  return result;
}

unint64_t sub_1D4FEE42C()
{
  result = qword_1EC7ED8F8;
  if (!qword_1EC7ED8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8F8);
  }

  return result;
}

unint64_t sub_1D4FEE484()
{
  result = qword_1EC7ED900;
  if (!qword_1EC7ED900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED900);
  }

  return result;
}