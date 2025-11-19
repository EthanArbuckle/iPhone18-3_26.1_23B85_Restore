uint64_t sub_1D51E0F28()
{
  sub_1D51E0F94(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);

  return sub_1D5612668();
}

uint64_t sub_1D51E0F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51E0FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF348, &qword_1D5631098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static MusicLibraryPlaylistRequest.editing<A>(_:name:description:userImage:isPublic:isVisible:curator:entries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_47();
  v105 = v26;
  v106 = v27;
  v103 = v28;
  v104 = v29;
  v102 = v30;
  v100 = v31;
  v107 = v32;
  v33 = sub_1D560D838();
  v34 = OUTLINED_FUNCTION_4(v33);
  v97 = v35;
  v98 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v96 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v101 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v95 = v48;
  OUTLINED_FUNCTION_70_0();
  v99 = sub_1D5614898();
  v49 = OUTLINED_FUNCTION_4(v99);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v54 = sub_1D56131C8();
  v55 = OUTLINED_FUNCTION_4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_59_0();
  v62 = v60 - v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_27_41();
  v64 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v64);
  v66 = v65;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_118_1();
  v70 = OUTLINED_FUNCTION_48_22(v66);
  v71(v70, a22, v64);
  OUTLINED_FUNCTION_9_25(v23);
  if (v90)
  {
    (*(v66 + 8))(v23, v64);
    v72 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_36_29();
    v72 = OUTLINED_FUNCTION_68_13();
    OUTLINED_FUNCTION_4_20();
    (*(v73 + 8))(v23, a23);
  }

  (*(v57 + 104))(v25, *MEMORY[0x1E6976988], v54);
  (*(v57 + 16))(v62, v25, v54);
  (*(v51 + 16))(v24, v100, v99);
  sub_1D4ECAE6C();
  v75 = v74;
  (*(v57 + 8))(v25, v54);
  OUTLINED_FUNCTION_34_36();
  if (v90)
  {
    v76 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v76 = OUTLINED_FUNCTION_53_19();
  }

  OUTLINED_FUNCTION_34_36();
  if (v90)
  {
    v77 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v77 = OUTLINED_FUNCTION_53_19();
  }

  v78 = OUTLINED_FUNCTION_97_1();
  sub_1D4E69910(v78, v79, v80, v81);
  v82 = sub_1D56141F8();
  OUTLINED_FUNCTION_57(v101, 1, v82);
  if (v90)
  {
    v83 = &qword_1EC7EA9A0;
    v84 = &qword_1D561D230;
    v85 = v101;
LABEL_16:
    sub_1D4E50004(v85, v83, v84);
    OUTLINED_FUNCTION_58_20();
    goto LABEL_17;
  }

  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v82);
  v87 = *(v86 + 8);
  v88 = OUTLINED_FUNCTION_29_12();
  v89(v88);
  v82 = v95;
  v23 = v96;
  sub_1D560D7A8();
  (*(v97 + 8))(v96, v98);
  sub_1D560F148();
  OUTLINED_FUNCTION_9_25(v95);
  if (v90)
  {
    v83 = &unk_1EC7F1970;
    v84 = &qword_1D561F4A0;
    v85 = v95;
    goto LABEL_16;
  }

  v23 = sub_1D560F138();
  v82 = v91;
  OUTLINED_FUNCTION_4_20();
  (*(v92 + 8))();
LABEL_17:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v93 = v106;

  v94 = sub_1D51E7FC4(v75, v72, v102, v103, v104, v105, v106, v76, v77, v23, v82);
  OUTLINED_FUNCTION_7_78(v94, v107);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.editing<A>(_:name:description:userImage:isPublic:isVisible:curator:entries:parent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47();
  v127 = v27;
  v132 = v28;
  v133 = v29;
  v130 = v30;
  v131 = v31;
  v129 = v32;
  v134 = v33;
  v124 = v34;
  v35 = sub_1D560D838();
  v36 = OUTLINED_FUNCTION_4(v35);
  v118 = v37;
  v119 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v117 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v128 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  v116 = v50;
  OUTLINED_FUNCTION_70_0();
  v123 = type metadata accessor for Playlist.Folder();
  v51 = OUTLINED_FUNCTION_14(v123);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v115 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_43_2();
  v59 = sub_1D5614898();
  v60 = OUTLINED_FUNCTION_4(v59);
  v120 = v61;
  v121 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v122 = sub_1D56131C8();
  v64 = OUTLINED_FUNCTION_4(v122);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_77();
  v70 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v70);
  v72 = v71;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_118_1();
  v76 = OUTLINED_FUNCTION_48_22(v72);
  v77(v76, a22, v70);
  v78 = OUTLINED_FUNCTION_35_1();
  v80 = v26;
  if (__swift_getEnumTagSinglePayload(v78, v79, a24) == 1)
  {
    v81 = *(v72 + 8);
    v82 = OUTLINED_FUNCTION_222();
    v83(v82);
    v126 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_36_29();
    v126 = OUTLINED_FUNCTION_68_13();
    OUTLINED_FUNCTION_24_0(a24);
    v85 = *(v84 + 8);
    v86 = OUTLINED_FUNCTION_21_1();
    v87(v86);
  }

  v88 = *MEMORY[0x1E6976988];
  v114 = v66[13];
  v114(v25, v88, v122);
  v89 = v66[2];
  v90 = OUTLINED_FUNCTION_45_3();
  v89(v90);
  (*(v120 + 16))(v24, v124, v121);
  sub_1D4ECAE6C();
  v125 = v91;
  v92 = v66[1];
  v93 = OUTLINED_FUNCTION_13_8();
  v92(v93);
  sub_1D4E69910(a23, v80, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v80, 1, v123);
  if (v109)
  {
    sub_1D4E50004(v80, &qword_1EC7F1980, &qword_1D5642040);
    v98 = 0;
  }

  else
  {
    v114(v25, v88, v122);
    v94 = OUTLINED_FUNCTION_45_3();
    v89(v94);
    OUTLINED_FUNCTION_0_9();
    sub_1D51E8724(v80, v115, v95);
    sub_1D4ECBA10();
    v88 = v96;
    v97 = OUTLINED_FUNCTION_13_8();
    v92(v97);
    v98 = v88;
    sub_1D4F187D4(v80);
  }

  OUTLINED_FUNCTION_34_36();
  if (v109)
  {
    v99 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v99 = OUTLINED_FUNCTION_53_19();
  }

  if (v127 == 2)
  {
    v100 = 0;
  }

  else
  {
    v88 = sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v100 = sub_1D5615828();
  }

  sub_1D4E69910(a21, v128, &qword_1EC7EA9A0, &qword_1D561D230);
  v101 = sub_1D56141F8();
  OUTLINED_FUNCTION_57(v128, 1, v101);
  if (v109)
  {
    v102 = &qword_1EC7EA9A0;
    v103 = &qword_1D561D230;
    v104 = v128;
LABEL_19:
    sub_1D4E50004(v104, v102, v103);
    OUTLINED_FUNCTION_58_20();
    goto LABEL_20;
  }

  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v101);
  v106 = *(v105 + 8);
  v107 = OUTLINED_FUNCTION_45_3();
  v108(v107);
  v101 = v116;
  v88 = v117;
  sub_1D560D7A8();
  (*(v118 + 8))(v117, v119);
  sub_1D560F148();
  OUTLINED_FUNCTION_9_25(v116);
  if (v109)
  {
    v102 = &unk_1EC7F1970;
    v103 = &qword_1D561F4A0;
    v104 = v116;
    goto LABEL_19;
  }

  v88 = sub_1D560F138();
  v101 = v110;
  OUTLINED_FUNCTION_4_20();
  (*(v111 + 8))();
LABEL_20:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v112 = v133;

  v113 = sub_1D51E8130(v125, v98, v126, v129, v130, v131, v132, v133, v99, v100, v88, v101);
  OUTLINED_FUNCTION_7_78(v113, v134);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47();
  v100 = v22;
  v101 = v23;
  v98 = v24;
  v99 = v25;
  v93 = v26;
  v102 = v27;
  v96 = a21;
  v97 = v28;
  v90[1] = v29;
  v94 = v29;
  v95 = v30;
  v31 = sub_1D560D838();
  v32 = OUTLINED_FUNCTION_4(v31);
  v91 = v33;
  v92 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v90 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_28_42();
  v49 = sub_1D5614898();
  v50 = OUTLINED_FUNCTION_4(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v57 = v56 - v55;
  v58 = sub_1D56131C8();
  v59 = OUTLINED_FUNCTION_4(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_59_0();
  v66 = v64 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v90 - v68;
  (*(v61 + 104))(v90 - v68, *MEMORY[0x1E6976988], v58);
  (*(v61 + 16))(v66, v69, v58);
  (*(v52 + 16))(v57, v93, v49);
  sub_1D4ECAE6C();
  v71 = v70;
  (*(v61 + 8))(v69, v58);
  v72 = 0;
  if (v94 != 2)
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v72 = sub_1D5615828();
  }

  OUTLINED_FUNCTION_34_36();
  if (v80)
  {
    v73 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v73 = OUTLINED_FUNCTION_53_19();
  }

  sub_1D4E69910(v96, v44, &qword_1EC7EA9A0, &qword_1D561D230);
  v74 = sub_1D56141F8();
  OUTLINED_FUNCTION_57(v44, 1, v74);
  if (v80)
  {
    v75 = &qword_1EC7EA9A0;
    v76 = &qword_1D561D230;
    v77 = v44;
LABEL_12:
    sub_1D4E50004(v77, v75, v76);
    v81 = 0;
    v83 = 0;
    goto LABEL_13;
  }

  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v74);
  (*(v78 + 8))(v44, v74);
  sub_1D560D7A8();
  (*(v91 + 8))(v38, v92);
  v79 = sub_1D560F148();
  OUTLINED_FUNCTION_57(v21, 1, v79);
  if (v80)
  {
    v75 = &unk_1EC7F1970;
    v76 = &qword_1D561F4A0;
    v77 = v21;
    goto LABEL_12;
  }

  v81 = sub_1D560F138();
  v83 = v82;
  OUTLINED_FUNCTION_24_0(v79);
  (*(v84 + 8))(v21, v79);
LABEL_13:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v85 = v101;
  v86 = v101;
  v87 = v100;

  v88 = v98;

  v89 = sub_1D51E7FC4(v71, 0, v97, v88, v99, v87, v85, v72, v73, v81, v83);
  OUTLINED_FUNCTION_7_78(v89, v102);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:parent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_47();
  v107 = v25;
  v108 = v26;
  v114 = v27;
  v115 = v28;
  v112 = v29;
  v113 = v30;
  v111 = v31;
  v116 = v32;
  v106 = v33;
  v34 = sub_1D560D838();
  v35 = OUTLINED_FUNCTION_4(v34);
  v103 = v36;
  v104 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v102 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v109 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v110 = v49;
  OUTLINED_FUNCTION_70_0();
  v105 = type metadata accessor for Playlist.Folder();
  v50 = OUTLINED_FUNCTION_14(v105);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v101 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  v58 = sub_1D5614898();
  v59 = OUTLINED_FUNCTION_4(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v64 = sub_1D56131C8();
  v65 = OUTLINED_FUNCTION_4(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_27_41();
  v100 = *MEMORY[0x1E6976988];
  v99 = v67[13];
  v99(v24);
  v71 = v67[2];
  OUTLINED_FUNCTION_45_26();
  v98 = v72;
  v72();
  (*(v61 + 16))(v23, v106, v58);
  sub_1D4ECAE6C();
  v74 = v73;
  v75 = v67[1];
  v76 = OUTLINED_FUNCTION_217();
  v75(v76);
  sub_1D4E69910(a22, v22, &qword_1EC7F1980, &qword_1D5642040);
  v77 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v77, v78, v105);
  if (v91)
  {
    sub_1D4E50004(v22, &qword_1EC7F1980, &qword_1D5642040);
    v81 = 0;
  }

  else
  {
    (v99)(v24, v100, v64);
    OUTLINED_FUNCTION_45_26();
    v98();
    OUTLINED_FUNCTION_0_9();
    sub_1D51E8724(v22, v101, v79);
    sub_1D4ECBA10();
    v81 = v80;
    v82 = OUTLINED_FUNCTION_217();
    v75(v82);
    sub_1D4F187D4(v22);
  }

  if (v107 == 2)
  {
    v83 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v83 = sub_1D5615828();
  }

  if (v108 == 2)
  {
    v84 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v84 = sub_1D5615828();
  }

  sub_1D4E69910(a21, v109, &qword_1EC7EA9A0, &qword_1D561D230);
  v85 = sub_1D56141F8();
  OUTLINED_FUNCTION_9_25(v109);
  if (v91)
  {
    v86 = &qword_1EC7EA9A0;
    v87 = &qword_1D561D230;
    v88 = v109;
LABEL_16:
    sub_1D4E50004(v88, v86, v87);
    v92 = 0;
    v94 = 0;
    goto LABEL_17;
  }

  sub_1D560EC98();
  OUTLINED_FUNCTION_4_20();
  (*(v89 + 8))(v109, v85);
  sub_1D560D7A8();
  (*(v103 + 8))(v102, v104);
  v90 = sub_1D560F148();
  OUTLINED_FUNCTION_9_25(v110);
  if (v91)
  {
    v86 = &unk_1EC7F1970;
    v87 = &qword_1D561F4A0;
    v88 = v110;
    goto LABEL_16;
  }

  v92 = sub_1D560F138();
  v94 = v93;
  OUTLINED_FUNCTION_4_20();
  (*(v95 + 8))(v110, v90);
LABEL_17:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v96 = v115;

  v97 = sub_1D51E8130(v74, v81, 0, v111, v112, v113, v114, v115, v83, v84, v92, v94);
  OUTLINED_FUNCTION_7_78(v97, v116);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v34 = v5;
  v35 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for Playlist.Folder();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v17 = sub_1D56131C8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v34 - v27;
  (*(v20 + 104))(&v34 - v27, *MEMORY[0x1E6976988], v17);
  (*(v20 + 16))(v25, v28, v17);
  OUTLINED_FUNCTION_0_9();
  sub_1D51E8724(v10, v0, v29);
  sub_1D4ECBA10();
  v31 = v30;
  (*(v20 + 8))(v28, v17);
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v32 = v2;

  v33 = sub_1D51E7FC4(v31, 0, v34, v8, v35, v4, v2, 0, 0, 0, 0);
  *v12 = 0;
  *(v12 + 8) = v33;
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:parent:)()
{
  OUTLINED_FUNCTION_47();
  v54 = v2;
  v55 = v1;
  v58 = v3;
  v59 = v4;
  v56 = v5;
  v57 = v6;
  v8 = v7;
  v60 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v52 = type metadata accessor for Playlist.Folder();
  v16 = OUTLINED_FUNCTION_14(v52);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v19 = sub_1D56131C8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v28 = v22[13];
  v51 = *MEMORY[0x1E6976988];
  v50 = v28;
  v28(&v49 - v26);
  v29 = v22[2];
  v30 = OUTLINED_FUNCTION_13_8();
  v29(v30);
  OUTLINED_FUNCTION_0_9();
  sub_1D51E8724(v8, v0, v31);
  OUTLINED_FUNCTION_29_12();
  sub_1D4ECBA10();
  v53 = v32;
  v33 = v22[1];
  v33(v27, v19);
  sub_1D4E69910(v54, v15, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v15, 1, v52);
  if (v34)
  {
    sub_1D4E50004(v15, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    v50(v27, v51, v19);
    v35 = OUTLINED_FUNCTION_13_8();
    v29(v35);
    OUTLINED_FUNCTION_0_9();
    v36 = OUTLINED_FUNCTION_97_1();
    sub_1D51E8724(v36, v37, v38);
    OUTLINED_FUNCTION_29_12();
    sub_1D4ECBA10();
    v33(v27, v19);
    sub_1D4F187D4(v15);
  }

  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v39 = v59;
  v40 = v59;

  OUTLINED_FUNCTION_57_21();
  v48 = sub_1D51E8130(v41, v42, v43, v44, v45, v46, v47, v39, 0, 0, 0, 0);
  OUTLINED_FUNCTION_7_78(v48, v60);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:isPublic:isVisible:curator:items:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_47();
  v59 = v23;
  v57 = v24;
  v58 = v25;
  v55 = v26;
  v56 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_118_1();
  v42 = OUTLINED_FUNCTION_48_22(v38);
  v43(v42, a21, v36);
  v44 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v44, v45, a23);
  if (v46)
  {
    v47 = *(v38 + 8);
    v48 = OUTLINED_FUNCTION_222();
    v49(v48);
    v50 = 0;
  }

  else
  {
    sub_1D5613D28();
    OUTLINED_FUNCTION_36_29();
    v50 = OUTLINED_FUNCTION_68_13();
    OUTLINED_FUNCTION_24_0(a23);
    v52 = *(v51 + 8);
    v53 = OUTLINED_FUNCTION_21_1();
    v54(v53);
  }

  sub_1D51E3190(v33, v31, v29, v55, v56, v57, v58, v59, v35, v50, a22);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51E2F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D56147B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69772B0])
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1D560EEA8();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    v11 = MEMORY[0x1E6976DF8];
LABEL_5:
    v13 = *v11;
    v14 = sub_1D5613D28();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
  }

  if (v9 == *MEMORY[0x1E69772B8])
  {
    (*(v5 + 96))(v8, v4);
    v12 = sub_1D5613838();
    (*(*(v12 - 8) + 32))(a2, v8, v12);
    v11 = MEMORY[0x1E6976E18];
    goto LABEL_5;
  }

  v16 = sub_1D5613D28();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
  return (*(v5 + 8))(v8, v4);
}

id sub_1D51E3190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v110 = a6;
  v105 = a5;
  v107 = a2;
  v106 = a1;
  v109 = a9;
  v104 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v93 - v21;
  v102 = type metadata accessor for Playlist.Folder();
  v23 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v103 = &v93 - v27;
  v128 = sub_1D560D838();
  v101 = *(v128 - 8);
  v28 = *(v101 + 64);
  v29 = MEMORY[0x1EEE9AC00](v128);
  v99 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v125 = &v93 - v31;
  v124 = sub_1D5613158();
  v32 = *(v124 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1D56131C8();
  v35 = *(v127 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v127);
  v126 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v132 = &v93 - v39;
  v122 = sub_1D5613D28();
  v40 = *(*(v122 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v122);
  v121 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v131 = &v93 - v44;
  v45 = MEMORY[0x1E6976988];
  v108 = a3;
  if (a10)
  {
    v97 = v22;
    v46 = MEMORY[0x1E69E7CC0];
    v133 = MEMORY[0x1E69E7CC0];
    v47 = *(a10 + 16);
    if (v47)
    {
      v94 = a7;
      v95 = a8;
      v100 = v18;
      v96 = a4;
      v49 = *(v43 + 16);
      v48 = v43 + 16;
      v50 = a10 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
      v118 = *(v48 + 56);
      v119 = v49;
      v117 = *MEMORY[0x1E6976988];
      v115 = (v35 + 16);
      v116 = (v35 + 104);
      v120 = v48;
      v113 = (v48 - 8);
      v114 = (v32 + 8);
      v112 = (v101 + 8);
      v93 = v35;
      v111 = (v35 + 8);
      v51 = v126;
      do
      {
        v129 = v50;
        v130 = v47;
        v52 = v131;
        v53 = v122;
        v54 = v119;
        v119(v131, v50, v122);
        v55 = v132;
        v56 = v127;
        (*v116)(v132, v117, v127);
        (*v115)(v51, v55, v56);
        v57 = v121;
        v54(v121, v52, v53);
        sub_1D56132E8();
        v58 = v123;
        sub_1D56132C8();
        v59 = sub_1D5159818();
        (*v114)(v58, v124);
        v60 = v125;
        sub_1D560EC98();
        v61 = *v113;
        (*v113)(v57, v53);
        v62 = sub_1D4F42FA4(v59, v51);
        (*v112)(v60, v128);
        v63 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v64 = sub_1D5614BA8();

        [v63 initWithIdentifierSet:v62 modelObjectType:v59 storageDictionary:v64];
        swift_unknownObjectRelease();

        v65 = *v111;
        (*v111)(v51, v56);
        v65(v132, v56);
        v66 = v61(v131, v53);
        MEMORY[0x1DA6EAF30](v66);
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D56151B8();
        }

        sub_1D56151F8();
        v50 = v129 + v118;
        v47 = v130 - 1;
      }

      while (v130 != 1);
      v46 = v133;
      a4 = v96;
      v18 = v100;
      a8 = v95;
      LOBYTE(a7) = v94;
      v35 = v93;
      v45 = MEMORY[0x1E6976988];
    }

    v131 = v46;
    v22 = v97;
  }

  else
  {
    v131 = 0;
  }

  v67 = v110;
  v68 = v103;
  sub_1D4E69910(v104, v103, &qword_1EC7F1980, &qword_1D5642040);
  if (__swift_getEnumTagSinglePayload(v68, 1, v102) == 1)
  {
    sub_1D4E50004(v68, &qword_1EC7F1980, &qword_1D5642040);
    v69 = 0;
  }

  else
  {
    v70 = *(v35 + 104);
    v71 = v132;
    v72 = v35;
    v73 = v127;
    v70(v132, *v45, v127);
    v74 = *(v72 + 16);
    v100 = v18;
    v74(v126, v71, v73);
    sub_1D51E8724(v68, v98, type metadata accessor for Playlist.Folder);
    v18 = v100;
    sub_1D4ECBA10();
    v69 = v75;
    v76 = v71;
    v67 = v110;
    (*(v72 + 8))(v76, v73);
    sub_1D4F187D4(v68);
  }

  if (v67 == 2)
  {
    v77 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v77 = sub_1D5615828();
  }

  if (a7 == 2)
  {
    v78 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v78 = sub_1D5615828();
  }

  sub_1D4E69910(a8, v18, &qword_1EC7EA9A0, &qword_1D561D230);
  v79 = sub_1D56141F8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v79) == 1)
  {
    v80 = &qword_1EC7EA9A0;
    v81 = &qword_1D561D230;
    v82 = v18;
  }

  else
  {
    v83 = v99;
    sub_1D560EC98();
    (*(*(v79 - 8) + 8))(v18, v79);
    sub_1D560D7A8();
    (*(v101 + 8))(v83, v128);
    v84 = sub_1D560F148();
    if (__swift_getEnumTagSinglePayload(v22, 1, v84) != 1)
    {
      v85 = sub_1D560F138();
      v86 = v87;
      (*(*(v84 - 8) + 8))(v22, v84);
      goto LABEL_25;
    }

    v80 = &unk_1EC7F1970;
    v81 = &qword_1D561F4A0;
    v82 = v22;
  }

  sub_1D4E50004(v82, v80, v81);
  v85 = 0;
  v86 = 0;
LABEL_25:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v88 = v105;
  v89 = v105;

  v90 = v107;

  result = sub_1D51E82A8(v69, v131, 0, v106, v90, v108, a4, 0, v88, 0, 0, v77, v78, v85, v86);
  v92 = v109;
  *v109 = 0;
  *(v92 + 1) = result;
  return result;
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:isPublic:isVisible:curator:tracks:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_47();
  v109 = v27;
  v110 = v26;
  v107 = v28;
  v113 = v29;
  v114 = v30;
  v111 = v31;
  v112 = v32;
  v115 = v33;
  v34 = sub_1D560D838();
  v35 = OUTLINED_FUNCTION_4(v34);
  v105 = v36;
  v106 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v104 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v108 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v103 = v49;
  OUTLINED_FUNCTION_70_0();
  v50 = type metadata accessor for Playlist.Folder();
  v51 = OUTLINED_FUNCTION_14(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v102 = v54;
  OUTLINED_FUNCTION_70_0();
  v55 = sub_1D56131C8();
  v56 = OUTLINED_FUNCTION_4(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_59_0();
  v63 = v61 - v62;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_77();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_83_5();
  v69 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v69);
  v71 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_118_1();
  v75 = OUTLINED_FUNCTION_48_22(v71);
  v76(v75, a21, v69);
  v77 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v77, v78, a23);
  if (v97)
  {
    v79 = *(v71 + 8);
    v80 = OUTLINED_FUNCTION_222();
    v81(v80);
    v82 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_36_29();
    v82 = OUTLINED_FUNCTION_68_13();
    OUTLINED_FUNCTION_24_0(a23);
    (*(v83 + 8))(v23, a23);
  }

  sub_1D4E69910(a22, v24, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v24, 1, v50);
  if (v97)
  {
    sub_1D4E50004(v24, &qword_1EC7F1980, &qword_1D5642040);
    v86 = 0;
  }

  else
  {
    (*(v58 + 104))(v25, *MEMORY[0x1E6976988], v55);
    (*(v58 + 16))(v63, v25, v55);
    OUTLINED_FUNCTION_0_9();
    v23 = v102;
    sub_1D51E8724(v24, v102, v84);
    OUTLINED_FUNCTION_21_1();
    sub_1D4ECBA10();
    v86 = v85;
    (*(v58 + 8))(v25, v55);
    sub_1D4F187D4(v24);
  }

  OUTLINED_FUNCTION_34_36();
  if (v97)
  {
    v87 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v87 = OUTLINED_FUNCTION_53_19();
  }

  if (v107 == 2)
  {
    v88 = 0;
  }

  else
  {
    v23 = sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v88 = sub_1D5615828();
  }

  sub_1D4E69910(v109, v108, &qword_1EC7EA9A0, &qword_1D561D230);
  v89 = sub_1D56141F8();
  OUTLINED_FUNCTION_57(v108, 1, v89);
  if (v97)
  {
    v90 = &qword_1EC7EA9A0;
    v91 = &qword_1D561D230;
    v92 = v108;
LABEL_19:
    sub_1D4E50004(v92, v90, v91);
    OUTLINED_FUNCTION_58_20();
    goto LABEL_20;
  }

  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v89);
  v94 = *(v93 + 8);
  v95 = OUTLINED_FUNCTION_29_12();
  v96(v95);
  v89 = v103;
  v23 = v104;
  sub_1D560D7A8();
  (*(v105 + 8))(v104, v106);
  sub_1D560F148();
  OUTLINED_FUNCTION_9_25(v103);
  if (v97)
  {
    v90 = &unk_1EC7F1970;
    v91 = &qword_1D561F4A0;
    v92 = v103;
    goto LABEL_19;
  }

  v23 = sub_1D560F138();
  v89 = v98;
  OUTLINED_FUNCTION_4_20();
  (*(v99 + 8))();
LABEL_20:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v100 = v110;

  v101 = sub_1D51E82A8(v86, v82, 0, v111, v112, v113, v114, 0, v110, 0, 0, v87, v88, v23, v89);
  OUTLINED_FUNCTION_7_78(v101, v115);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51E43EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2(0);
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_3();
  v14 = sub_1D56131C8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_27_41();
  (*(v17 + 104))(v5, *MEMORY[0x1E6976988], v14);
  v21 = *(v17 + 16);
  OUTLINED_FUNCTION_45_26();
  v22();
  (*(v10 + 16))(v4, a1, v8);
  v23 = OUTLINED_FUNCTION_210();
  v24 = a3(v23);
  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_217();
  result = v27(v26);
  *a4 = v24;
  return result;
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<>(name:description:userImage:isPublic:isVisible:curator:)()
{
  OUTLINED_FUNCTION_47();
  v88 = v1;
  v85 = v2;
  v86 = v3;
  OUTLINED_FUNCTION_49_19(v4, v5, v6, v7, v8, v9);
  v10 = sub_1D560D838();
  v11 = OUTLINED_FUNCTION_4(v10);
  v83 = v12;
  v84 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v82 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v87 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v81 = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = type metadata accessor for Playlist.Folder();
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = sub_1D56131C8();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_77();
  v47 = OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v47, v48, 1, v26);
  v89 = v0;
  sub_1D4E69910(v0, v45, &qword_1EC7F1980, &qword_1D5642040);
  v49 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v49, v50, v26);
  if (v69)
  {
    sub_1D4E50004(v45, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    (*(v33 + 104))(v38, *MEMORY[0x1E6976988], v30);
    v51 = *(v33 + 16);
    v52 = OUTLINED_FUNCTION_97_1();
    v53(v52);
    OUTLINED_FUNCTION_0_9();
    v54 = OUTLINED_FUNCTION_222();
    sub_1D51E8724(v54, v55, v56);
    sub_1D4ECBA10();
    (*(v33 + 8))(v38, v30);
    sub_1D4F187D4(v45);
  }

  v57 = v87;
  if (v85 == 2)
  {
    v58 = 0;
  }

  else
  {
    v45 = sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v58 = sub_1D5615828();
  }

  OUTLINED_FUNCTION_34_36();
  if (v69)
  {
    v59 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v59 = OUTLINED_FUNCTION_53_19();
  }

  sub_1D4E69910(v88, v57, &qword_1EC7EA9A0, &qword_1D561D230);
  v60 = sub_1D56141F8();
  OUTLINED_FUNCTION_9_25(v57);
  if (v69)
  {
    v61 = &qword_1EC7EA9A0;
    v62 = &qword_1D561D230;
    v63 = v57;
LABEL_16:
    sub_1D4E50004(v63, v61, v62);
    OUTLINED_FUNCTION_58_20();
    goto LABEL_17;
  }

  v64 = v82;
  sub_1D560EC98();
  OUTLINED_FUNCTION_4_20();
  (*(v65 + 8))(v57, v60);
  v57 = v81;
  v45 = v64;
  sub_1D560D7A8();
  v66 = v64;
  v67 = v57;
  (*(v83 + 8))(v66, v84);
  v68 = sub_1D560F148();
  OUTLINED_FUNCTION_9_25(v57);
  if (v69)
  {
    v61 = &unk_1EC7F1970;
    v62 = &qword_1D561F4A0;
    v63 = v57;
    goto LABEL_16;
  }

  v45 = sub_1D560F138();
  v57 = v70;
  OUTLINED_FUNCTION_4_20();
  (*(v71 + 8))(v67, v68);
LABEL_17:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v72 = v90;
  v73 = v90;
  v74 = v94;

  v75 = v92;

  OUTLINED_FUNCTION_57_1();
  v79 = sub_1D51E82A8(v76, v77, v78, v91, v75, v93, v74, 0, v72, 0, 0, v58, v59, v45, v57);
  v80 = v95;
  *v95 = 0;
  *(v80 + 1) = v79;
  sub_1D4E50004(v89, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<>(name:description:userImage:isPublic:isVisible:curator:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47();
  v104 = v25;
  v105 = v24;
  v102 = v26;
  v103 = v27;
  v108 = v28;
  v109 = v29;
  v106 = v30;
  v107 = v31;
  v110 = v32;
  v101 = a21;
  v33 = sub_1D560D838();
  v34 = OUTLINED_FUNCTION_4(v33);
  v99 = v35;
  v100 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v98 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v97 = v47;
  OUTLINED_FUNCTION_70_0();
  v48 = type metadata accessor for Playlist.Folder();
  v49 = OUTLINED_FUNCTION_14(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v52 = sub_1D56131C8();
  v53 = OUTLINED_FUNCTION_4(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v96 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_118_1();
  sub_1D4E69910(v101, v21, &qword_1EC7F1980, &qword_1D5642040);
  v65 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v65, v66, v48);
  if (v83)
  {
    sub_1D4E50004(v21, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    (*(v55 + 104))(v60, *MEMORY[0x1E6976988], v52);
    v67 = *(v55 + 16);
    v68 = OUTLINED_FUNCTION_97_1();
    v69(v68);
    OUTLINED_FUNCTION_0_9();
    sub_1D51E8724(v21, v22, v70);
    sub_1D4ECBA10();
    (*(v55 + 8))(v60, v52);
    sub_1D4F187D4(v21);
  }

  if (v102 == 2)
  {
    v71 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v71 = sub_1D5615828();
  }

  OUTLINED_FUNCTION_34_36();
  if (v83)
  {
    v72 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v72 = OUTLINED_FUNCTION_53_19();
  }

  sub_1D4E69910(v104, v23, &qword_1EC7EA9A0, &qword_1D561D230);
  v73 = sub_1D56141F8();
  v74 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v74, v75, v73);
  if (v83)
  {
    v76 = &qword_1EC7EA9A0;
    v77 = &qword_1D561D230;
    v78 = v23;
LABEL_16:
    sub_1D4E50004(v78, v76, v77);
    v84 = 0;
    v86 = 0;
    goto LABEL_17;
  }

  v79 = v98;
  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v73);
  (*(v80 + 8))(v23, v73);
  v81 = v97;
  sub_1D560D7A8();
  (*(v99 + 8))(v79, v100);
  v82 = sub_1D560F148();
  OUTLINED_FUNCTION_57(v81, 1, v82);
  if (v83)
  {
    v76 = &unk_1EC7F1970;
    v77 = &qword_1D561F4A0;
    v78 = v81;
    goto LABEL_16;
  }

  v84 = sub_1D560F138();
  v86 = v85;
  OUTLINED_FUNCTION_24_0(v82);
  (*(v87 + 8))();
LABEL_17:
  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v88 = v105;
  v89 = v105;
  v90 = v109;

  v91 = v107;

  OUTLINED_FUNCTION_57_1();
  v95 = sub_1D51E82A8(v92, v93, v94, v106, v91, v108, v90, 0, v88, 0, 0, v71, v72, v84, v86);
  OUTLINED_FUNCTION_7_78(v95, v110);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.creatingFolder<>(name:description:userImage:parent:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_49_19(v4, v5, v6, v7, v8, v9);
  v10 = type metadata accessor for Playlist.Folder();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v14 = sub_1D56131C8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_27_41();
  v21 = OUTLINED_FUNCTION_21_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v44 - v27;
  sub_1D4E69910(v3, &v44 - v27, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v28, 1, v10);
  if (v29)
  {
    sub_1D4E50004(v28, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    (*(v17 + 104))(v1, *MEMORY[0x1E6976988], v14);
    v30 = *(v17 + 16);
    OUTLINED_FUNCTION_45_26();
    v31();
    OUTLINED_FUNCTION_0_9();
    sub_1D51E8724(v28, v0, v32);
    OUTLINED_FUNCTION_210();
    sub_1D4ECBA10();
    v33 = *(v17 + 8);
    v34 = OUTLINED_FUNCTION_217();
    v35(v34);
    sub_1D4F187D4(v28);
  }

  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v36 = v44;
  v37 = v44;
  v38 = v48;

  v39 = v46;

  OUTLINED_FUNCTION_52_21();
  v44 = v36;
  OUTLINED_FUNCTION_57_1();
  v43 = sub_1D51E82A8(v40, v41, v42, v45, v39, v47, v38, 1, v44, v45, v46, v47, v48, v49, v50);
  OUTLINED_FUNCTION_7_78(v43, v49);
  OUTLINED_FUNCTION_46();
}

void static MusicLibraryPlaylistRequest.creatingFolder<A>(name:description:userImage:parent:children:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v59 = v5;
  v60 = v4;
  v63 = v6;
  v64 = v7;
  v61 = v8;
  v62 = v9;
  v65 = v10;
  v11 = type metadata accessor for Playlist.Folder();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v58 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D56131C8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v57 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9();
  v31 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_118_1();
  v37 = *(v33 + 16);
  v38 = OUTLINED_FUNCTION_222();
  v39(v38);
  v40 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v40, v41, v3);
  if (v42)
  {
    (*(v33 + 8))(v0, v31);
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_36_29();
    sub_1D5615028();
    OUTLINED_FUNCTION_24_0(v3);
    (*(v43 + 8))(v0, v3);
  }

  sub_1D4E69910(v59, v1, &qword_1EC7F1980, &qword_1D5642040);
  v44 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v44, v45, v11);
  if (v42)
  {
    sub_1D4E50004(v1, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    (*(v19 + 104))(v26, *MEMORY[0x1E6976988], v16);
    (*(v19 + 16))(v57, v26, v16);
    OUTLINED_FUNCTION_0_9();
    sub_1D51E8724(v1, v58, v46);
    sub_1D4ECBA10();
    (*(v19 + 8))(v26, v16);
    sub_1D4F187D4(v1);
  }

  objc_allocWithZone(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
  v47 = v60;
  v48 = v60;

  OUTLINED_FUNCTION_52_21();
  v57 = v47;
  OUTLINED_FUNCTION_57_21();
  v56 = sub_1D51E82A8(v49, v50, v51, v52, v53, v54, v55, 1, v57, v58, v59, v60, v61, v62, v63);
  OUTLINED_FUNCTION_7_78(v56, v65);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51E55F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v9 + 104))(&v19 - v14, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  sub_1D51E8724(a1, v7, type metadata accessor for Playlist.Folder.Item);
  sub_1D4ECBC2C();
  v17 = v16;
  result = (*(v9 + 8))(v15, v8);
  *a2 = v17;
  return result;
}

uint64_t sub_1D51E57B0()
{
  OUTLINED_FUNCTION_60();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1D5614828();
  v0[5] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_127();
  v8 = sub_1D5614898();
  v0[8] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[9] = v9;
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_127();
  v12 = sub_1D56131C8();
  v0[11] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[12] = v13;
  v15 = *(v14 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D51E5908()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v27 = v0[7];
  v28 = v0[5];
  v8 = v0[4];
  v23 = v8;
  v25 = v0[6];
  v26 = v0[3];
  v29 = v0[2];
  v22 = *MEMORY[0x1E6976988];
  v21 = v4[13];
  v21(v1);
  v20 = v4[2];
  v9 = OUTLINED_FUNCTION_45_3();
  v10(v9);
  (*(v5 + 16))(v6, v23, v7);
  v11 = v2;
  sub_1D4ECAE6C();
  v24 = v12;
  v13 = v4[1];
  v13(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D561EAC0;
  (v21)(v1, v22, v3);
  v20(v11, v1, v3);
  (*(v25 + 16))(v27, v26, v28);
  sub_1D4ECAE44();
  v16 = v15;
  v13(v1, v3);
  *(v14 + 32) = v16;
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest);
  v17 = sub_1D51E8494(v24);
  *v29 = 0;
  *(v29 + 8) = v17;

  OUTLINED_FUNCTION_22_1();

  return v18();
}

void static MusicLibraryPlaylistRequest.duplicatingPlaylist<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1D5614898();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v33 = sub_1D56131C8();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &a9 - v43;
  (*(v36 + 104))(&a9 - v43, *MEMORY[0x1E6976988], v33);
  (*(v36 + 16))(v41, v44, v33);
  (*(v30 + 16))(v20, v24, v27);
  sub_1D4ECAE6C();
  v46 = v45;
  (*(v36 + 8))(v44, v33);
  v47 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest) initWithPlaylist_];

  *v26 = 0;
  *(v26 + 8) = v47;
  OUTLINED_FUNCTION_46();
}

uint64_t MusicLibraryPlaylistRequest.init(underlyingRequest:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D4E5194C(a1, v6);
  sub_1D4ECC7A8(0, &qword_1EC7F1988, off_1E84C0330);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = 0;
    *(a2 + 8) = v5;
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000025, 0x80000001D5687930);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000031, 0x80000001D5687960);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t MusicLibraryPlaylistRequest.response<>()(uint64_t a1)
{
  v2[4] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v2[5] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v2[6] = v6;
  OUTLINED_FUNCTION_69(v6);
  v2[7] = v7;
  v9 = *(v8 + 64);
  v2[8] = OUTLINED_FUNCTION_127();
  v10 = sub_1D5614898();
  v2[9] = v10;
  OUTLINED_FUNCTION_69(v10);
  v2[10] = v11;
  v13 = *(v12 + 64);
  v2[11] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  v2[12] = v14;
  OUTLINED_FUNCTION_69(v14);
  v2[13] = v15;
  v17 = *(v16 + 64);
  v2[14] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  v2[15] = OUTLINED_FUNCTION_127();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F19B0, &unk_1D561D170);
  v2[16] = v21;
  OUTLINED_FUNCTION_69(v21);
  v2[17] = v22;
  v24 = *(v23 + 64);
  v2[18] = OUTLINED_FUNCTION_127();
  v25 = sub_1D560D838();
  v2[19] = v25;
  OUTLINED_FUNCTION_69(v25);
  v2[20] = v26;
  v28 = *(v27 + 64);
  v2[21] = OUTLINED_FUNCTION_127();
  v29 = *v1;
  v30 = *(v1 + 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[22] = v31;
  *v31 = v32;
  v33 = OUTLINED_FUNCTION_50_1(v31);

  return sub_1D51E68E8(v33, v34, v35);
}

{
  v2[4] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v2[5] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v2[6] = v6;
  OUTLINED_FUNCTION_69(v6);
  v2[7] = v7;
  v9 = *(v8 + 64);
  v2[8] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for Playlist.Folder();
  v2[9] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v2[10] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v2[11] = v13;
  OUTLINED_FUNCTION_69(v13);
  v2[12] = v14;
  v16 = *(v15 + 64);
  v2[13] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  v2[14] = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v2[15] = v20;
  OUTLINED_FUNCTION_69(v20);
  v2[16] = v21;
  v23 = *(v22 + 64);
  v2[17] = OUTLINED_FUNCTION_127();
  v24 = sub_1D560D838();
  v2[18] = v24;
  OUTLINED_FUNCTION_69(v24);
  v2[19] = v25;
  v27 = *(v26 + 64);
  v2[20] = OUTLINED_FUNCTION_127();
  v28 = *v1;
  v29 = *(v1 + 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[21] = v30;
  *v30 = v31;
  v32 = OUTLINED_FUNCTION_50_1(v30);

  return sub_1D51E6E24(v32, v33, v34);
}

uint64_t sub_1D51E611C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51E6218()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[9];
  sub_1D560DD68();
  KeyPath = swift_getKeyPath();
  sub_1D560D5C8();
  v7 = sub_1D560D4C8();
  OUTLINED_FUNCTION_57(v4, 1, v7);
  if (v8)
  {
    v9 = v0[21];
    sub_1D4E50004(v0[15], &unk_1EC7EBF20, &unk_1D561F530);
    sub_1D560D708();
    OUTLINED_FUNCTION_59_16();
  }

  else
  {
    v10 = v0[15];
    sub_1D560D4B8();
    OUTLINED_FUNCTION_59_16();
    OUTLINED_FUNCTION_24_0(v7);
    (*(v11 + 8))(v10, v7);
  }

  v12 = v0[18];
  v13 = v0[16];
  v0[2] = v1;
  v0[3] = v4;
  MEMORY[0x1DA6E3AD0](KeyPath, v0 + 2, v13, MEMORY[0x1E6975510]);

  v14 = *(MEMORY[0x1E6975088] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[24] = v15;
  *v15 = v16;
  v15[1] = sub_1D51E63AC;
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];

  return MEMORY[0x1EEDCEAC0](v19, v18);
}

uint64_t sub_1D51E63AC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51E64A8()
{
  v6 = v2[14];
  v7 = v2[12];
  OUTLINED_FUNCTION_66_14();
  sub_1D4EC9C38(v4);
  (*(v5 + 8))(v1, v3);
  v8 = OUTLINED_FUNCTION_105();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v0);
  v12 = v2[20];
  v11 = v2[21];
  v13 = v2[18];
  v14 = v2[16];
  v15 = v2[17];
  v44 = v14;
  v45 = v2[19];
  if (EnumTagSinglePayload == 1)
  {
    v17 = v2[13];
    v16 = v2[14];
    v18 = v2[12];
    sub_1D4E50004(v2[5], &unk_1EC7F1990, &unk_1D561CEF0);
    v19 = sub_1D560F078();
    sub_1D51E8518(&qword_1EC7F19B8, MEMORY[0x1E6975580]);
    swift_allocError();
    v20 = *MEMORY[0x1E6975578];
    OUTLINED_FUNCTION_24_0(v19);
    (*(v21 + 104))();
    swift_willThrow();
    v22 = *(v17 + 8);
    v23 = OUTLINED_FUNCTION_210();
    v24(v23);
    (*(v15 + 8))(v13, v44);
    (*(v12 + 8))(v11, v45);
    v25 = v2[21];
    v26 = v2[18];
    v28 = v2[14];
    v27 = v2[15];
    v29 = v2[11];
    v30 = v2[8];
    v31 = v2[5];

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v33 = v2[15];
    v34 = v2[18];
    v35 = v2[21];
    v36 = v2[10];
    v37 = v2[11];
    v38 = v2[9];
    v43 = v2[8];
    v39 = v2[5];
    v42 = v2[4];
    (*(v2[13] + 8))(v2[14], v2[12]);
    (*(v15 + 8))(v34, v44);
    (*(v12 + 8))(v35, v45);
    v40 = *(v36 + 32);
    (v40)(v37, v39, v38);
    OUTLINED_FUNCTION_45_26();
    v40();

    OUTLINED_FUNCTION_22_1();
  }

  return v32();
}

uint64_t sub_1D51E6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 184);
  OUTLINED_FUNCTION_43_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D51E6824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = v10[20];
  v11 = v10[21];
  v13 = v10[19];
  (*(v10[17] + 8))(v10[18], v10[16]);
  (*(v12 + 8))(v11, v13);
  v14 = v10[25];
  OUTLINED_FUNCTION_43_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D51E68E8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 200) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v5 = *(*(sub_1D560E728() - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v6 = *(*(sub_1D560D9A8() - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D51E69E0, 0, 0);
}

uint64_t sub_1D51E69E0()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 160);
  v2 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D51E6AE0;
  swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1AE8, &unk_1D5642220);
  OUTLINED_FUNCTION_25_6(v3);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_19_51();
  [v1 performWithCompletionPolicy:v2 & 1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D51E6AE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D51E6BDC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v19 = v0[18];
  v20 = v0[19];
  sub_1D5614898();
  sub_1D560E358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
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
  sub_1D560D9E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1D4F40E88(v19, v2, v1, v3, v20);

  OUTLINED_FUNCTION_22_1();

  return v17();
}

uint64_t sub_1D51E6D9C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v6 = v0[24];

  return v5();
}

uint64_t sub_1D51E6E24(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 216) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v5 = *(*(sub_1D560E728() - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v6 = sub_1D560D9A8();
  *(v3 + 184) = v6;
  v7 = *(v6 - 8);
  *(v3 + 192) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D51E6F4C, 0, 0);
}

uint64_t sub_1D51E6F4C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 160);
  v2 = *(v0 + 216);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D51E704C;
  swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1AE8, &unk_1D5642220);
  OUTLINED_FUNCTION_25_6(v3);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_19_51();
  [v1 performWithCompletionPolicy:v2 & 1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D51E704C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D51E7148()
{
  v23 = v0[18];
  if (qword_1EDD52BA8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v22 = v0[19];
  v6 = __swift_project_value_buffer(v4, qword_1EDD52BB0);
  (*(v2 + 16))(v1, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v7 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 72);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D5621D90;
  v14 = v13 + v12;
  v15 = *(v9 + 104);
  v15(v14, *MEMORY[0x1E6975040], v7);
  v15(v14 + v11, *MEMORY[0x1E6975030], v7);
  sub_1D560E718();
  sub_1D560D9E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_1D4F40E88(v23, v1, v3, v5, v22);

  OUTLINED_FUNCTION_22_1();

  return v20();
}

uint64_t sub_1D51E7354()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v6 = v0[26];

  return v5();
}

uint64_t sub_1D51E764C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51E7748()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[9];
  sub_1D51E8518(&qword_1EC7F0910, type metadata accessor for Playlist.Folder);
  sub_1D560DD68();
  KeyPath = swift_getKeyPath();
  sub_1D560D5C8();
  v7 = sub_1D560D4C8();
  OUTLINED_FUNCTION_57(v4, 1, v7);
  if (v8)
  {
    v9 = v0[20];
    sub_1D4E50004(v0[14], &unk_1EC7EBF20, &unk_1D561F530);
    sub_1D560D708();
    OUTLINED_FUNCTION_59_16();
  }

  else
  {
    v10 = v0[14];
    sub_1D560D4B8();
    OUTLINED_FUNCTION_59_16();
    OUTLINED_FUNCTION_24_0(v7);
    (*(v11 + 8))(v10, v7);
  }

  v12 = v0[17];
  v13 = v0[15];
  v0[2] = v1;
  v0[3] = v4;
  MEMORY[0x1DA6E3AD0](KeyPath, v0 + 2, v13, MEMORY[0x1E6975510]);

  v14 = *(MEMORY[0x1E6975088] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v15;
  *v15 = v16;
  v15[1] = sub_1D51E7914;
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[13];

  return MEMORY[0x1EEDCEAC0](v19, v18);
}

uint64_t sub_1D51E7914()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51E7A10()
{
  v5 = v2[13];
  v6 = v2[11];
  v7 = OUTLINED_FUNCTION_66_14();
  sub_1D4ECA0A8(v7);
  (*(v4 + 8))(v1, v3);
  v8 = OUTLINED_FUNCTION_105();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v0);
  v12 = v2[19];
  v11 = v2[20];
  v13 = v2[17];
  v39 = v2[18];
  v14 = v2[15];
  v15 = v2[16];
  if (EnumTagSinglePayload == 1)
  {
    v16 = v2[12];
    v17 = v2[13];
    v18 = v2[11];
    sub_1D4E50004(v2[5], &qword_1EC7F1980, &qword_1D5642040);
    sub_1D51E8560();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v20 = *(v16 + 8);
    v21 = OUTLINED_FUNCTION_210();
    v22(v21);
    (*(v15 + 8))(v13, v14);
    (*(v12 + 8))(v11, v39);
    v23 = v2[20];
    v24 = v2[17];
    v26 = v2[13];
    v25 = v2[14];
    v27 = v2[10];
    v28 = v2[8];
    v29 = v2[5];

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v31 = v2[14];
    v32 = v2[10];
    v38 = v2[8];
    v34 = v2[4];
    v33 = v2[5];
    (*(v2[12] + 8))(v2[13], v2[11]);
    (*(v15 + 8))(v13, v14);
    (*(v12 + 8))(v11, v39);
    sub_1D4F1870C(v33, v32);
    v35 = OUTLINED_FUNCTION_210();
    sub_1D4F1870C(v35, v36);

    OUTLINED_FUNCTION_22_1();
  }

  return v30();
}

uint64_t sub_1D51E7C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 176);
  OUTLINED_FUNCTION_44_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D51E7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = v10[19];
  v11 = v10[20];
  v13 = v10[18];
  (*(v10[16] + 8))(v10[17], v10[15]);
  (*(v12 + 8))(v11, v13);
  v14 = v10[24];
  OUTLINED_FUNCTION_44_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t *sub_1D51E7DC0(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1D4F23510(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MusicLibraryPlaylistRequest.CompletionPolicy.allCases.getter()
{
  type metadata accessor for MusicLibraryPlaylistRequest.CompletionPolicy();
  sub_1D5616108();
  swift_allocObject();
  v0 = sub_1D5615198();
  *v1 = 256;

  return sub_1D5047750(v0);
}

uint64_t MusicLibraryPlaylistRequest.CompletionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D51E7F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = static MusicLibraryPlaylistRequest.CompletionPolicy.allCases.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D51E7F88()
{
  sub_1D56162D8();
  MusicLibraryPlaylistRequest.CompletionPolicy.hash(into:)();
  return sub_1D5616328();
}

id sub_1D51E7FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  if (a2)
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v18 = sub_1D5615158();

    if (a4)
    {
LABEL_3:
      v19 = sub_1D5614D38();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  if (a6)
  {
    v20 = sub_1D5614D38();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v21 = sub_1D5614D38();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v12 initWithPlaylist:a1 playlistEntries:v18 playlistName:v19 playlistDescription:v20 playlistUserImage:a7 publicPlaylist:a8 visiblePlaylist:a9 authorStoreIdentifier:v21];

  return v22;
}

id sub_1D51E8130(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (a3)
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v18 = sub_1D5615158();

    if (a5)
    {
LABEL_3:
      v19 = sub_1D5614D38();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  if (a7)
  {
    v20 = sub_1D5614D38();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_1D5614D38();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v13 initWithPlaylist:a1 parentPlaylist:a2 playlistEntries:v18 playlistName:v19 playlistDescription:v20 playlistUserImage:a8 publicPlaylist:a9 visiblePlaylist:a10 authorStoreIdentifier:v21];

  return v22;
}

id sub_1D51E82A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v18 = sub_1D5615158();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v19 = sub_1D5615158();

  if (a5)
  {
LABEL_4:
    v20 = sub_1D5614D38();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (a7)
  {
    v21 = sub_1D5614D38();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = sub_1D5614D38();
  }

  else
  {
    v22 = 0;
  }

  if (a15)
  {
    v23 = sub_1D5614D38();
  }

  else
  {
    v23 = 0;
  }

  v28 = [v27 initWithParentPlaylist:a1 playlistEntries:v18 children:v19 playlistName:v20 playlistDescription:v21 createFolder:a8 & 1 playlistUserImage:a9 coverArtworkRecipe:v22 publicPlaylist:a12 visiblePlaylist:a13 authorStoreIdentifier:v23];

  return v28;
}

id sub_1D51E8494(void *a1)
{
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v3 = sub_1D5615158();

  v4 = [v1 initWithPlaylist:a1 entriesToRemove:v3];

  return v4;
}

uint64_t sub_1D51E8518(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D51E8560()
{
  result = qword_1EC7F19E0[0];
  if (!qword_1EC7F19E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F19E0);
  }

  return result;
}

uint64_t sub_1D51E8604()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1D51E8658(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D51E8724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_25_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 11) = a8;
  *(v8 - 24) = a6;
  *(v8 - 23) = a7;
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
}

uint64_t OUTLINED_FUNCTION_66_14()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return sub_1D560DE38();
}

uint64_t OUTLINED_FUNCTION_68_13()
{

  return sub_1D5615028();
}

uint64_t CreditArtist.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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
  v20 = a2 + *(type metadata accessor for CreditArtist() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CreditArtist.artwork.getter()
{
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_3_102();
  sub_1D51EA86C(v1, v0);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t CreditArtist.name.getter()
{
  if (qword_1EC7E9060 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_75();
  sub_1D51EA86C(v1, v0);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v2, v0);
  sub_1D560EC28();
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CreditArtist.roleNames.getter()
{
  if (qword_1EC7E9068 != -1)
  {
    OUTLINED_FUNCTION_11_72();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D51EA86C(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v0, type metadata accessor for CreditArtist);
  sub_1D560EC28();
  if (v2)
  {
    return v2;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CreditArtist.artists.getter()
{
  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_2_104();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_3_102();
  sub_1D51EA86C(v1, v0);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t CreditArtist.debugDescription.getter()
{
  v58 = sub_1D5613EF8();
  v1 = OUTLINED_FUNCTION_4(v58);
  v53 = v2;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08B8, &unk_1D5642230);
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = (&v52 - v16);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v17 = OUTLINED_FUNCTION_4(v56);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v52 - v22;
  strcpy(v68, "CreditArtist(");
  HIWORD(v68[1]) = -4864;
  strcpy(v65, "\n  id: ");
  BYTE1(v65[1]) = 0;
  WORD1(v65[1]) = 0;
  HIDWORD(v65[1]) = -402653184;
  v24 = *v0;
  v25 = v0[1];
  v26 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v26);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  strcpy(v65, ",\n  name: ");
  HIDWORD(v65[1]) = -352321536;
  v27 = CreditArtist.name.getter();
  v29 = v28;
  MEMORY[0x1DA6EAC70](v27);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  sub_1D5615B68();

  v65[0] = 0xD000000000000010;
  v65[1] = 0x80000001D56879E0;
  if (qword_1EC7E9068 != -1)
  {
    OUTLINED_FUNCTION_11_72();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_4_75();
  sub_1D51EA86C(v30, v29);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v31, v29);
  sub_1D560EC28();
  if (v66)
  {
    v32 = v66;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = MEMORY[0x1DA6EAF70](v32, MEMORY[0x1E69E6158]);
  v35 = v34;

  MEMORY[0x1DA6EAC70](v33, v35);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v65[0], v65[1]);

  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_2_104();
  }

  v36 = v54;
  v37 = v56;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_1D4E50004(v36, &off_1EC7EB5B0, &unk_1D5632170);
  }

  else
  {
    v19[4](v23, v36, v37);
    v66 = 0;
    v67 = 0xE000000000000000;
    v54 = v19;
    v19[2](v13, v23, v37);
    v38 = *(v8 + 36);
    sub_1D5146F5C();
    v52 = v23;
    sub_1D5615608();
    v39 = (v53 + 16);
    v40 = (v53 + 32);
    v41 = (v53 + 8);
    while (1)
    {
      sub_1D5615648();
      if (*&v13[v38] == v65[0])
      {
        break;
      }

      v42 = sub_1D5615688();
      v43 = v55;
      v44 = v58;
      (*v39)(v55);
      v42(v65, 0);
      sub_1D5615658();
      (*v40)(v57, v43, v44);
      v45 = v66 & 0xFFFFFFFFFFFFLL;
      if ((v67 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v67) & 0xF;
      }

      if (v45)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v65[0] = 10;
      v65[1] = 0xE100000000000000;
      v46 = v57;
      v47 = sub_1D5613DF8();
      MEMORY[0x1DA6EAC70](v47);

      MEMORY[0x1DA6EAC70](v65[0], v65[1]);

      (*v41)(v46, v58);
      v37 = v56;
    }

    sub_1D4E50004(v13, &qword_1EC7F08B8, &unk_1D5642230);
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v65, ",\n  artists: [");
    HIBYTE(v65[1]) = -18;
    v63 = v66;
    v64 = v67;
    v61 = 10;
    v62 = 0xE100000000000000;
    v59 = 0x202020200ALL;
    v60 = 0xE500000000000000;
    sub_1D4F53278();
    v48 = sub_1D5615968();
    v50 = v49;

    MEMORY[0x1DA6EAC70](v48, v50);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_15_59();

    v54[1](v52, v37);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v68[0];
}

uint64_t static CreditArtist.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CreditArtist() + 20);

  return sub_1D5611A78();
}

uint64_t CreditArtist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CreditArtist.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CreditArtist() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t CreditArtist.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for CreditArtist() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_7_79();
  sub_1D51EA86C(v4, v5);
  return sub_1D5614CB8();
}

uint64_t CreditArtist.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for CreditArtist() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_7_79();
  sub_1D51EA86C(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51E9674(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D51EA86C(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51E9718@<X0>(uint64_t *a1@<X8>)
{
  result = CreditArtist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CreditArtist.subscript.getter(void *a1)
{
  return sub_1D51E9780(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D51E9780(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_5_79();
  sub_1D51EA86C(v5, v1);
  OUTLINED_FUNCTION_8_70(&qword_1EC7EB600);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D51E9780(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_5_79();
  sub_1D51EA86C(v5, v2);
  OUTLINED_FUNCTION_8_70(&qword_1EC7EB600);
  OUTLINED_FUNCTION_0_129();
  sub_1D51EA86C(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D51E9970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D51EA86C(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  v12 = sub_1D51EA86C(&qword_1EC7EE8B8, type metadata accessor for CreditArtist);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D51E9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D51EA86C(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  v14 = sub_1D51EA86C(&qword_1EC7EE8B8, type metadata accessor for CreditArtist);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51E9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D51EA86C(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  v14 = sub_1D51EA86C(&qword_1EC7EE8B8, type metadata accessor for CreditArtist);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51E9D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  swift_getKeyPath();
  sub_1D51EA86C(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v0 = sub_1D560D188();

  qword_1EC87C2A0 = v0;
  return result;
}

uint64_t sub_1D51E9DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  swift_getKeyPath();
  v0 = sub_1D560D178();

  qword_1EC87C2A8 = v0;
  return result;
}

uint64_t sub_1D51E9E4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  swift_getKeyPath();
  sub_1D50384C0();
  v0 = sub_1D560D178();

  qword_1EC87C2B0 = v0;
  return result;
}

uint64_t sub_1D51E9ECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D51EA86C(&unk_1EDD52E00, MEMORY[0x1E6976F28]);
  v0 = sub_1D560D0F8();

  qword_1EC7F1AF0 = v0;
  return result;
}

uint64_t sub_1D51E9FF0()
{
  sub_1D51EA86C(&qword_1EC7EB608, type metadata accessor for CreditArtist);

  return sub_1D5610C58();
}

uint64_t sub_1D51EA074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D51EA86C(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t CreditArtist.init(from:)(uint64_t *a1)
{
  type metadata accessor for CreditArtist();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_104();
  sub_1D51EA86C(v3, v4);
  OUTLINED_FUNCTION_6_72();
  sub_1D51EA86C(v5, v1);
  OUTLINED_FUNCTION_9_72(&qword_1EDD53120);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CreditArtist.encode(to:)()
{
  type metadata accessor for CreditArtist();
  OUTLINED_FUNCTION_1_104();
  sub_1D51EA86C(v1, v2);
  OUTLINED_FUNCTION_6_72();
  sub_1D51EA86C(v3, v0);
  OUTLINED_FUNCTION_9_72(&qword_1EDD53120);
  return sub_1D5612688();
}

unint64_t CreditArtist.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v4 = CreditArtist.name.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1D51EA42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F1AF8 = v4;
  return result;
}

uint64_t sub_1D51EA538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = *(sub_1D560E348() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560E338();
  qword_1EC7F1B00 = v3;
  return result;
}

uint64_t sub_1D51EA620()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F1B08);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for CreditArtist();
  OUTLINED_FUNCTION_1_104();
  sub_1D51EA86C(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D51EA6CC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F1B20);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E9088 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EC7F1B08);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t sub_1D51EA86C(unint64_t *a1, void (*a2)(uint64_t))
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

void static MusicSuggestedPivotSeed.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for MusicSuggestedPivotContainer();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD8, &unk_1D561DBD0);
  OUTLINED_FUNCTION_14(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &a9 - v42;
  if (sub_1D5613CF8())
  {
    v44 = *(type metadata accessor for MusicSuggestedPivotSeed() + 20);
    v45 = *(v38 + 48);
    sub_1D4E69910(v26 + v44, v43, &qword_1EC7EADD0, &qword_1D56331E0);
    sub_1D4E69910(v24 + v44, &v43[v45], &qword_1EC7EADD0, &qword_1D56331E0);
    OUTLINED_FUNCTION_5_1(v43);
    if (!v46)
    {
      sub_1D4E69910(v43, v20, &qword_1EC7EADD0, &qword_1D56331E0);
      OUTLINED_FUNCTION_5_1(&v43[v45]);
      if (!v46)
      {
        OUTLINED_FUNCTION_3_103();
        sub_1D51EB2F8(&v43[v45], v33, v47);
        static MusicSuggestedPivotContainer.== infix(_:_:)();
        sub_1D51EAB28(v33);
        sub_1D51EAB28(v20);
        sub_1D4E50004(v43, &qword_1EC7EADD0, &qword_1D56331E0);
        goto LABEL_11;
      }

      sub_1D51EAB28(v20);
LABEL_10:
      sub_1D4E50004(v43, &qword_1EC7EADD8, &unk_1D561DBD0);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5_1(&v43[v45]);
    if (!v46)
    {
      goto LABEL_10;
    }

    sub_1D4E50004(v43, &qword_1EC7EADD0, &qword_1D56331E0);
  }

LABEL_11:
  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for MusicSuggestedPivotSeed()
{
  result = qword_1EC7F1B58;
  if (!qword_1EC7F1B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D51EAB28(uint64_t a1)
{
  v2 = type metadata accessor for MusicSuggestedPivotContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicSuggestedPivotSeed.init(track:album:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v66 = v6;
  v7 = sub_1D5613D28();
  v8 = OUTLINED_FUNCTION_4(v7);
  v64 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v62 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v23 = sub_1D5613AF8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_218();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v65 = v3;
  sub_1D4E69910(v3, v1, &qword_1EC7EEC30, &unk_1D5620CE0);
  v44 = OUTLINED_FUNCTION_88();
  if (__swift_getEnumTagSinglePayload(v44, v45, v23) == 1)
  {
    sub_1D4E50004(v1, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    sub_1D4E50004(v0, &qword_1EC7EADD0, &qword_1D56331E0);
    v46 = *(v26 + 32);
    v46(v31, v1, v23);
    v46(v0, v31, v23);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_218();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  v51 = v64;
  (*(v64 + 16))(v62, v5, v7);
  sub_1D4E69910(v0, v38, &qword_1EC7EADD0, &qword_1D56331E0);
  v52 = v63;
  MusicSuggestedPivotSeed.init(track:container:)();
  sub_1D4E50004(v65, &qword_1EC7EEC30, &unk_1D5620CE0);
  (*(v51 + 8))(v5, v7);
  sub_1D4E50004(v0, &qword_1EC7EADD0, &qword_1D56331E0);
  v53 = type metadata accessor for MusicSuggestedPivotSeed();
  v54 = OUTLINED_FUNCTION_88();
  if (__swift_getEnumTagSinglePayload(v54, v55, v53))
  {
    sub_1D4E50004(v52, &qword_1EC7EF790, &qword_1D5632E90);
  }

  else
  {
    OUTLINED_FUNCTION_0_130();
    sub_1D51EB2F8(v52, v66, v56);
  }

  OUTLINED_FUNCTION_218();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  OUTLINED_FUNCTION_46();
}

void MusicSuggestedPivotSeed.init(track:container:)()
{
  OUTLINED_FUNCTION_47();
  v50 = v0;
  v51 = v1;
  v3 = v2;
  v4 = sub_1D5613D28();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v47 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for MusicSuggestedPivotSeed();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = *(v7 + 16);
  v22(v14, v3, v4);
  v23 = (*(v7 + 88))(v14, v4);
  v24 = *MEMORY[0x1E6976E18];
  v48 = *(v7 + 8);
  v49 = v7 + 8;
  v48(v14, v4);
  if (v23 == v24)
  {
    (*(v7 + 32))(v21, v3, v4);
    sub_1D51EC6B0(v50, v21 + *(v15 + 20));
    OUTLINED_FUNCTION_0_130();
    v25 = v51;
    sub_1D51EB2F8(v21, v51, v26);
    v27 = 0;
    v28 = v25;
    v29 = v15;
  }

  else
  {
    v46 = v15;
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_10_71();
    }

    v30 = sub_1D560C758();
    __swift_project_value_buffer(v30, qword_1EC87C2E8);
    v31 = v47;
    v22(v47, v3, v4);
    v32 = sub_1D560C738();
    v33 = sub_1D56156C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136446210;
      OUTLINED_FUNCTION_2_105();
      sub_1D51EC768(v36, v37);
      v38 = sub_1D56160F8();
      v40 = v39;
      v41 = v31;
      v42 = v48;
      v48(v41, v4);
      v43 = sub_1D4E6835C(v38, v40, &v52);

      *(v34 + 4) = v43;
      _os_log_impl(&dword_1D4E3F000, v32, v33, "MusicSuggestedPivotSeed: Attempting to create a seed with an unsupported track kind=%{public}s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();

      sub_1D4E50004(v50, &qword_1EC7EADD0, &qword_1D56331E0);
      v42(v3, v4);
    }

    else
    {

      sub_1D4E50004(v50, &qword_1EC7EADD0, &qword_1D56331E0);
      v44 = v48;
      v48(v3, v4);
      v44(v31, v4);
    }

    v27 = 1;
    v28 = v51;
    v29 = v46;
  }

  __swift_storeEnumTagSinglePayload(v28, v27, 1, v29);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51EB2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void MusicSuggestedPivotSeed.init(playlistEntry:playlist:)()
{
  OUTLINED_FUNCTION_47();
  v128 = v0;
  v2 = v1;
  v126 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v115 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v115 - v13;
  v15 = sub_1D5614898();
  v16 = OUTLINED_FUNCTION_4(v15);
  v116 = v17;
  v117 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v115 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v119 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v115 - v29;
  v31 = sub_1D5613D28();
  v32 = OUTLINED_FUNCTION_4(v31);
  v122 = v33;
  v123 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v118 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v121 = &v115 - v39;
  v40 = sub_1D5614828();
  v41 = OUTLINED_FUNCTION_4(v40);
  v124 = v42;
  v125 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v115 - v52;
  v54 = sub_1D56147B8();
  v55 = OUTLINED_FUNCTION_4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_59_0();
  v62 = v60 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v115 - v64;
  v127 = v2;
  sub_1D56147E8();
  OUTLINED_FUNCTION_5_1(v53);
  if (v66)
  {
    sub_1D4E50004(v53, &qword_1EC7EED08, &qword_1D562E660);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_10_71();
    }

    v67 = sub_1D560C758();
    __swift_project_value_buffer(v67, qword_1EC87C2E8);
    v68 = v124;
    v69 = v125;
    v70 = v127;
    (*(v124 + 16))(v47, v127, v125);
    v71 = sub_1D560C738();
    v72 = sub_1D56156C8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v129 = v74;
      *v73 = 136446210;
      sub_1D51EC768(&qword_1EC7EDCA0, MEMORY[0x1E6977318]);
      v75 = sub_1D56160F8();
      v77 = v76;
      v78 = *(v68 + 8);
      v78(v47, v69);
      v79 = sub_1D4E6835C(v75, v77, &v129);

      *(v73 + 4) = v79;
      _os_log_impl(&dword_1D4E3F000, v71, v72, "MusicSuggestedPivotSeed: Attempting to create a seed with an unsupported playlist entry kind=%{public}s.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();

      sub_1D4E50004(v128, &unk_1EC7F1990, &unk_1D561CEF0);
      v78(v127, v69);
    }

    else
    {

      sub_1D4E50004(v128, &unk_1EC7F1990, &unk_1D561CEF0);
      v87 = *(v68 + 8);
      v87(v70, v69);
      v87(v47, v69);
    }

    goto LABEL_17;
  }

  (*(v57 + 32))(v65, v53, v54);
  (*(v57 + 16))(v62, v65, v54);
  v80 = (*(v57 + 88))(v62, v54);
  if (v80 == *MEMORY[0x1E69772B0])
  {
    v81 = OUTLINED_FUNCTION_16_59();
    v82(v81);
    v83 = sub_1D560EEA8();
    v84 = MEMORY[0x1E6976DF8];
    v85 = v128;
    v86 = v117;
LABEL_12:
    v117 = v65;
    v90 = v121;
    (*(*(v83 - 8) + 32))(v121, v62);
    (*(v122 + 104))(v90, *v84, v123);
    type metadata accessor for MusicSuggestedPivotContainer();
    v91 = v30;
    OUTLINED_FUNCTION_218();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    sub_1D4E69910(v85, v14, &unk_1EC7F1990, &unk_1D561CEF0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v86) == 1)
    {
      sub_1D4E50004(v14, &unk_1EC7F1990, &unk_1D561CEF0);
    }

    else
    {
      sub_1D4E50004(v30, &qword_1EC7EADD0, &qword_1D56331E0);
      v96 = v115;
      v97 = *(v116 + 32);
      v97(v115, v14, v86);
      v97(v30, v96, v86);
      v91 = v30;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_218();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    }

    v103 = v121;
    v102 = v122;
    v104 = v123;
    (*(v122 + 16))(v118, v121, v123);
    sub_1D4E69910(v91, v119, &qword_1EC7EADD0, &qword_1D56331E0);
    v105 = v120;
    MusicSuggestedPivotSeed.init(track:container:)();
    sub_1D4E50004(v128, &unk_1EC7F1990, &unk_1D561CEF0);
    (*(v124 + 8))(v127, v125);
    sub_1D4E50004(v91, &qword_1EC7EADD0, &qword_1D56331E0);
    (*(v102 + 8))(v103, v104);
    (*(v57 + 8))(v117, v54);
    v106 = type metadata accessor for MusicSuggestedPivotSeed();
    v107 = OUTLINED_FUNCTION_88();
    if (!__swift_getEnumTagSinglePayload(v107, v108, v106))
    {
      OUTLINED_FUNCTION_0_130();
      sub_1D51EB2F8(v105, v126, v113);
      OUTLINED_FUNCTION_218();
      goto LABEL_18;
    }

    sub_1D4E50004(v105, &qword_1EC7EF790, &qword_1D5632E90);
LABEL_17:
    v109 = type metadata accessor for MusicSuggestedPivotSeed();
    v110 = v126;
    v111 = 1;
    v112 = 1;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v109);
    OUTLINED_FUNCTION_46();
    return;
  }

  v85 = v128;
  v86 = v117;
  if (v80 == *MEMORY[0x1E69772B8])
  {
    v88 = OUTLINED_FUNCTION_16_59();
    v89(v88);
    v83 = sub_1D5613838();
    v84 = MEMORY[0x1E6976E18];
    goto LABEL_12;
  }

  v129 = 0;
  v130 = 0xE000000000000000;
  sub_1D5615B68();

  v129 = 0xD000000000000029;
  v130 = 0x80000001D5687A50;
  sub_1D51EC768(&qword_1EC7F1B48, MEMORY[0x1E69772C0]);
  v114 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v114);

  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  sub_1D5615E08();
  __break(1u);
}

void MusicSuggestedPivotSeed.init(song:station:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v56 = v5;
  v57 = v6;
  v7 = sub_1D5613D28();
  v8 = OUTLINED_FUNCTION_4(v7);
  v54 = v9;
  v55 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v23 = sub_1D5614408();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_18_53();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v40);
  sub_1D4E69910(v4, v2, &unk_1EC7F65A0, &unk_1D561D200);
  v41 = OUTLINED_FUNCTION_88();
  if (__swift_getEnumTagSinglePayload(v41, v42, v23) == 1)
  {
    sub_1D4E50004(v2, &unk_1EC7F65A0, &unk_1D561D200);
  }

  else
  {
    sub_1D4E50004(v1, &qword_1EC7EADD0, &qword_1D56331E0);
    v43 = *(v26 + 32);
    v43(v31, v2, v23);
    v43(v1, v31, v23);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v40);
  }

  v44 = sub_1D5613838();
  OUTLINED_FUNCTION_4(v44);
  v46 = v45;
  (*(v47 + 16))(v14, v56, v44);
  (*(v54 + 104))(v14, *MEMORY[0x1E6976E18], v55);
  sub_1D4E69910(v1, v38, &qword_1EC7EADD0, &qword_1D56331E0);
  MusicSuggestedPivotSeed.init(track:container:)();
  sub_1D4E50004(v4, &unk_1EC7F65A0, &unk_1D561D200);
  (*(v46 + 8))(v56, v44);
  sub_1D4E50004(v1, &qword_1EC7EADD0, &qword_1D56331E0);
  v48 = type metadata accessor for MusicSuggestedPivotSeed();
  if (__swift_getEnumTagSinglePayload(v0, 1, v48))
  {
    sub_1D4E50004(v0, &qword_1EC7EF790, &qword_1D5632E90);
  }

  else
  {
    OUTLINED_FUNCTION_0_130();
    sub_1D51EB2F8(v0, v57, v49);
  }

  OUTLINED_FUNCTION_218();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotSeed.track.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5613D28();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MusicSuggestedPivotSeed.hash(into:)()
{
  v1 = type metadata accessor for MusicSuggestedPivotContainer();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1D5613D28();
  OUTLINED_FUNCTION_2_105();
  sub_1D51EC768(v14, v15);
  sub_1D5614CB8();
  v16 = type metadata accessor for MusicSuggestedPivotSeed();
  sub_1D4E69910(v0 + *(v16 + 20), v13, &qword_1EC7EADD0, &qword_1D56331E0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    return sub_1D56162F8();
  }

  OUTLINED_FUNCTION_3_103();
  sub_1D51EB2F8(v13, v7, v18);
  sub_1D56162F8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D51EAB28(v7);
}

uint64_t MusicSuggestedPivotSeed.hashValue.getter()
{
  v2 = type metadata accessor for MusicSuggestedPivotContainer();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1D56162D8();
  sub_1D5613D28();
  OUTLINED_FUNCTION_2_105();
  sub_1D51EC768(v13, v14);
  sub_1D5614CB8();
  v15 = type metadata accessor for MusicSuggestedPivotSeed();
  sub_1D4E69910(v0 + *(v15 + 20), v1, &qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_5_1(v1);
  if (v16)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_3_103();
    sub_1D51EB2F8(v1, v8, v17);
    sub_1D56162F8();
    MusicSuggestedPivotContainer.hash(into:)();
    sub_1D51EAB28(v8);
  }

  return sub_1D5616328();
}

uint64_t sub_1D51EC4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  sub_1D56162D8();
  sub_1D5613D28();
  sub_1D51EC768(&qword_1EC7EAE50, MEMORY[0x1E6976E60]);
  sub_1D5614CB8();
  sub_1D4E69910(v2 + *(a2 + 20), v11, &qword_1EC7EADD0, &qword_1D56331E0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D51EB2F8(v11, v7, type metadata accessor for MusicSuggestedPivotContainer);
    sub_1D56162F8();
    MusicSuggestedPivotContainer.hash(into:)();
    sub_1D51EAB28(v7);
  }

  return sub_1D5616328();
}

uint64_t sub_1D51EC688@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotSeed.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51EC6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51EC768(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D51EC7D8()
{
  sub_1D5613D28();
  if (v0 <= 0x3F)
  {
    sub_1D51EC85C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D51EC85C()
{
  if (!qword_1EC7F1B68)
  {
    type metadata accessor for MusicSuggestedPivotContainer();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F1B68);
    }
  }
}

uint64_t sub_1D51EC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_60(v14, v24);
  v15 = sub_1D5615458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v5, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    OUTLINED_FUNCTION_24_0(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D4E7661C(a3, &qword_1EC7EB710, &qword_1D561F440);
    OUTLINED_FUNCTION_13_57();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D5615338();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D5614DE8();
  OUTLINED_FUNCTION_13_57();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  sub_1D4E7661C(a3, &qword_1EC7EB710, &qword_1D561F440);

  return v22;
}

uint64_t sub_1D51ECB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_15_60(v13, v23);
  v14 = sub_1D5615458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v5, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    OUTLINED_FUNCTION_24_0(v14);
    (*(v16 + 8))(v5, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D4E7661C(a3, &qword_1EC7EB710, &qword_1D561F440);
    OUTLINED_FUNCTION_13_57();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
    return swift_task_create();
  }

  swift_getObjectType();
  v19 = sub_1D5615338();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D5614DE8();
  OUTLINED_FUNCTION_13_57();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
  swift_task_create();
  OUTLINED_FUNCTION_82();

  sub_1D4E7661C(a3, &qword_1EC7EB710, &qword_1D561F440);

  return v19;
}

uint64_t MusicLibraryDownloadQueueViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MusicLibraryDownloadQueueViewModel.init()();
  return v3;
}

uint64_t MusicLibraryDownloadQueueViewModel.init()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B70, &unk_1D56426E8);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  *(v2 + 16) = 0;
  v26 = OBJC_IVAR____TtC16MusicKitInternal34MusicLibraryDownloadQueueViewModel__downloadQueue;
  sub_1D5613D28();
  sub_1D560D9F8();
  (*(v18 + 16))(v23, v25, v15);
  sub_1D560C8B8();
  (*(v18 + 8))(v25, v15);
  (*(v11 + 32))(v2 + v26, v1, v9);
  *(v2 + 24) = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest) init];
  sub_1D5611CC8();
  v27 = [objc_opt_self() downloadQueueDidChangeNotificationName];
  v28 = *(v2 + 24);
  swift_allocObject();
  swift_weakInit();
  v29 = v28;

  v30 = sub_1D5611CB8();

  v31 = *(v2 + 16);
  *(v2 + 16) = v30;

  v32 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v32);
  v33 = swift_allocObject();
  swift_weakInit();

  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v33;
  sub_1D51EC8B4(0, 0, v8, &unk_1D5642710, v34);

  return v2;
}

uint64_t sub_1D51ED1D4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_1D56153C8();
  v2[6] = sub_1D56153B8();
  v4 = sub_1D5615338();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D51ED26C, v4, v3);
}

uint64_t sub_1D51ED26C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1D51ED340;

    return sub_1D51EDEF4();
  }

  else
  {
    v4 = v0[6];

    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D51ED340()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_1D51ED4A0;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_1D51ED448;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D51ED448()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D51ED4A0()
{
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v3 = v0[11];
  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76DC8);
  v5 = OUTLINED_FUNCTION_82();
  v6 = sub_1D560C738();
  v7 = sub_1D56156C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v14, v15, "Failed to update download queue due to error: %@");
    sub_1D4E7661C(v11, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();

  return v16();
}

uint64_t sub_1D51ED620()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4E6ED20;

  return sub_1D51ED1D4(v3, v0);
}

uint64_t sub_1D51ED6D4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1D51ED7A0;

    return sub_1D51EDEF4();
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D51ED7A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D51ED8C4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D51ED8C4()
{
  v1 = *(v0 + 48);

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = *(v0 + 64);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76DC8);
  v4 = OUTLINED_FUNCTION_82();
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 64);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v13, v14, "Unable to fetch initial download queue request due to error: %{public}@.");
    sub_1D4E7661C(v10, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();

  return v15();
}

uint64_t sub_1D51EDA38()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32(v6);
  *v7 = v8;
  v7[1] = sub_1D4E73560;

  return sub_1D51ED6B4(v2, v3, v4, v5);
}

uint64_t sub_1D51EDB2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D51EDBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_18_54(v4);
  v9(v8);

  sub_1D560C908();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1D51EDCB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
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

uint64_t sub_1D51EDD6C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B70, &unk_1D56426E8);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D51EDDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B88, &qword_1D5642828);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_18_54(v4);
  v9(v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B70, &unk_1D56426E8);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1D51EDEF4()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v1[20] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_1D5613558();
  v1[24] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[25] = v7;
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  v10 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64) + 15;
  v1[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B78, &qword_1D5642808);
  v1[28] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[29] = v14;
  v16 = *(v15 + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_1D56153C8();
  v1[31] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v18 = sub_1D5615338();
  v1[32] = v18;
  v1[33] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D51EE0CC, v18, v17);
}

uint64_t sub_1D51EE0CC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D51EE1E8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4F232C8;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 performWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D51EE1E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 272) = v4;
  v5 = v3[33];
  v6 = v3[32];
  if (v4)
  {
    v7 = sub_1D51EE5C8;
  }

  else
  {
    v7 = sub_1D51EE30C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D51EE30C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v20 = v0[27];
  v21 = v0[26];
  v5 = v0[25];
  v22 = v0[24];
  v6 = v0[23];
  v7 = v0[21];
  v24 = v0[20];
  v25 = v0[22];
  v26 = v0[19];

  v8 = v0[18];
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B80, &unk_1D5642818);
  [v8 results];
  (*(v4 + 104))(v2, *MEMORY[0x1E69769E8], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v9 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 72);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D5621D90;
  v16 = v15 + v14;
  v17 = *(v11 + 104);
  v17(v16, *MEMORY[0x1E6975040], v9);
  v17(v16 + v13, *MEMORY[0x1E6975030], v9);
  sub_1D560E718();
  (*(v5 + 104))(v21, *MEMORY[0x1E6976A58], v22);
  sub_1D5613208();

  sub_1D560DAC8();
  (*(v7 + 16))(v25, v6, v24);
  sub_1D51EDBA4(v25);

  (*(v7 + 8))(v6, v24);

  OUTLINED_FUNCTION_55();

  return v18();
}

uint64_t sub_1D51EE5C8()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];

  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v9 = v0[34];

  return v8();
}

uint64_t MusicLibraryDownloadQueueViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MusicKitInternal34MusicLibraryDownloadQueueViewModel__downloadQueue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B70, &unk_1D56426E8);
  OUTLINED_FUNCTION_24_0(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t MusicLibraryDownloadQueueViewModel.__deallocating_deinit()
{
  MusicLibraryDownloadQueueViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D51EE748@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicLibraryDownloadQueueViewModel();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MusicLibraryDownloadQueueViewModel()
{
  result = qword_1EDD59CF0;
  if (!qword_1EDD59CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D51EE7DC()
{
  sub_1D51EE8F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D51EE8F8()
{
  if (!qword_1EDD54400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA4E8, &unk_1D561C470);
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54400);
    }
  }
}

uint64_t sub_1D51EE95C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D51EE9EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t Playlist.Collaboration.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a1;
  v104 = a4;
  v113 = sub_1D5612B88();
  v6 = OUTLINED_FUNCTION_4(v113);
  v117 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v11 - v10);
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_4(v12);
  v107 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v18 - v17);
  v19 = sub_1D560D838();
  v20 = OUTLINED_FUNCTION_4(v19);
  v114 = v21;
  v115 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v99 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF528, &qword_1D56319C8);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48(&v97 - v30);
  v111 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  OUTLINED_FUNCTION_24_0(v111);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v98 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v97 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v97 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v97 - v45;
  v102 = sub_1D5612478();
  v47 = OUTLINED_FUNCTION_4(v102);
  v101 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;

  v105 = a2;
  sub_1D560F7E8();
  v110 = sub_1D506930C();
  v109 = sub_1D5614C68();

  sub_1D560FF78();
  OUTLINED_FUNCTION_31_4(v46, 0);
  sub_1D560FF78();
  OUTLINED_FUNCTION_31_4(v44, 0);
  v112 = v53;
  v54 = v116;
  sub_1D560D4D8();
  sub_1D4E7661C(v44, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v46, &qword_1EC7EA358, &unk_1D561DF50);
  v106 = a3;
  sub_1D4EC76A8(a3, v118);
  if (!v119)
  {
    sub_1D4E7661C(v118, &qword_1EC7EEC40, &unk_1D561C070);
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
LABEL_8:
    v55 = v37;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    goto LABEL_8;
  }

  v55 = v37;
  if (!*(&v121 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v120, &qword_1EC7EA368, &unk_1D5629620);
    v57 = v111;
    goto LABEL_10;
  }

  sub_1D4E48324(&v120, &v123);
  __swift_project_boxed_opaque_existential_1(&v123, v124);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v56 = v108;
  v57 = v111;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    v58 = v98;
    sub_1D50A8B30(v56, v98);
    sub_1D5163A60(v58, v55);
    v59 = v58 + v57[13];
    v60 = v99;
    sub_1D560D718();
    (*(v114 + 40))(&v55[v57[13]], v60, v115);
    v61 = v100;
    sub_1D5612468();
    (*(v107 + 40))(&v55[v57[14]], v61, v12);
    v62 = sub_1D5612458();
    v64 = v63;
    sub_1D50A8BE4(v58);
    v65 = &v55[v57[15]];
    v66 = v65[1];

    *v65 = v62;
    v65[1] = v64;
    __swift_destroy_boxed_opaque_existential_1(&v123);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
  sub_1D4E7661C(v56, &qword_1EC7EF528, &qword_1D56319C8);
  __swift_destroy_boxed_opaque_existential_1(&v123);
LABEL_10:
  v67 = v57[6];
  v68 = sub_1D560C328();
  OUTLINED_FUNCTION_4_76(v68);
  v69 = v57[8];
  v70 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4_76(v70);
  v71 = v57[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_31_4(&v55[v71], 1);
  OUTLINED_FUNCTION_31_4(&v55[v57[10]], 1);
  v72 = v57[11];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4_76(v73);
  (*(v114 + 16))(&v55[v57[13]], v54, v115);
  v74 = &v55[v57[14]];
  sub_1D5612468();
  v75 = sub_1D5612458();
  v108 = v76;
  sub_1D5614A88();
  v77 = OUTLINED_FUNCTION_1_105();
  v78 = OUTLINED_FUNCTION_1_105();
  v79 = OUTLINED_FUNCTION_1_105();
  v80 = OUTLINED_FUNCTION_1_105();
  *v55 = 516;
  v55[v57[7]] = 2;
  if (qword_1EC7E8D90 != -1)
  {
    swift_once();
  }

  v81 = qword_1EC87C090;
  if (qword_1EC87C090 >> 62)
  {
    sub_1D560CDE8();

    v96 = sub_1D5615E18();

    v81 = v96;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v55[v57[12]] = v81;
  v82 = &v55[v57[15]];
  v83 = v108;
  *v82 = v75;
  v82[1] = v83;
  *&v55[v57[16]] = v77;
  *&v55[v57[17]] = v78;
  *&v55[v57[18]] = v79;
  *&v55[v57[19]] = v80;
LABEL_15:
  swift_getKeyPath();
  LOBYTE(v123) = 1;
  LODWORD(v108) = *MEMORY[0x1E6976668];
  v84 = v117;
  v107 = *(v117 + 104);
  v100 = v117 + 104;
  v85 = v103;
  v86 = v113;
  (v107)(v103);
  v87 = sub_1D51EFFA8(&qword_1EC7EC8E8, type metadata accessor for PlaylistCollaborationPropertyProvider);
  sub_1D51EF6C0();
  v99 = v87;
  v88 = v55;
  sub_1D5610D88();

  v89 = *(v84 + 8);
  v89(v85, v86);
  v117 = v84 + 8;
  swift_getKeyPath();
  LOBYTE(v123) = 4;
  v90 = v108;
  v91 = v107;
  (v107)(v85, v108, v86);
  sub_1D5610D68();

  v92 = v113;
  v89(v85, v113);
  swift_getKeyPath();
  LOBYTE(v123) = 0;
  v91(v85, v90, v92);
  sub_1D51EF714();
  v93 = v99;
  sub_1D5610D88();

  v89(v85, v92);
  swift_getKeyPath();
  LOBYTE(v123) = 3;
  (v107)(v85, v108, v92);
  sub_1D5610D68();

  v89(v85, v92);
  v124 = v111;
  v125 = v93;
  v94 = __swift_allocate_boxed_opaque_existential_0(&v123);
  sub_1D5163A60(v88, v94);
  Playlist.Collaboration.init(propertyProvider:)(&v123, v104);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v106, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v114 + 8))(v116, v115);
  (*(v101 + 8))(v112, v102);
  return sub_1D50A8BE4(v88);
}

uint64_t static Playlist.Collaboration.defaultLegacyModelStorageDictionary.getter()
{
  sub_1D4ECCA34();
  v3 = sub_1D5614BD8();
  v2 = MEMORY[0x1E69E6530];
  v1[0] = 0;
  sub_1D4EC87F0(v1, 0);
  v2 = MEMORY[0x1E69E6810];
  v1[0] = 0;
  sub_1D4EC87F0(v1, 1);
  v2 = MEMORY[0x1E69E6370];
  LOBYTE(v1[0]) = 0;
  sub_1D4EC87F0(v1, 2);
  return v3;
}

unint64_t sub_1D51EF6C0()
{
  result = qword_1EC7F1BA8;
  if (!qword_1EC7F1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BA8);
  }

  return result;
}

unint64_t sub_1D51EF714()
{
  result = qword_1EC7F1BB0;
  if (!qword_1EC7F1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BB0);
  }

  return result;
}

uint64_t sub_1D51EF768()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F1B90);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F1B90);
  v2 = *MEMORY[0x1E6976888];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Collaboration.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F1B90);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Playlist.Collaboration.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  sub_1D4ECCA34();
  v33 = sub_1D5614BD8();
  if (qword_1EC7E8F98 != -1)
  {
    swift_once();
  }

  sub_1D51EFFA8(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  sub_1D51EFFA8(&qword_1EC7F0CA8, type metadata accessor for Playlist.Collaboration);
  OUTLINED_FUNCTION_3_104();
  if (v31 == 2)
  {
    v12 = 0;
    v13 = 0;
    *(&v31 + 1) = 0;
    *&v32 = 0;
  }

  else
  {
    if (v31)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v12 = [objc_opt_self() rawValueForSharingMode_];
    v13 = MEMORY[0x1E69E6530];
  }

  *&v31 = v12;
  *(&v32 + 1) = v13;
  v15 = OUTLINED_FUNCTION_7_80();
  sub_1D4EC87F0(v15, 0);
  if (qword_1EC7E8F80 != -1)
  {
    swift_once();
  }

  v16 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_3_104();
  v17 = 1;
  switch(v31)
  {
    case 1:
      v17 = 3;
      goto LABEL_16;
    case 2:
      goto LABEL_16;
    case 3:
      v17 = 2;
      goto LABEL_16;
    case 4:
      *(&v32 + 1) = MEMORY[0x1E69E6810];
      *&v31 = 0;
      goto LABEL_17;
    default:
      v17 = 4;
LABEL_16:
      v18 = [objc_opt_self() rawValueForCollaboratorStatus_];
      v30 = v16;
      *&v29 = v18;
      sub_1D4E519A8(&v29, &v31);
LABEL_17:
      v19 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v19, 1);
      if (qword_1EC7E8F88 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_3_104();
      if (v31 == 2)
      {
        v20 = 0;
        v31 = 0uLL;
        *&v32 = 0;
      }

      else
      {
        LOBYTE(v31) = v31 & 1;
        v20 = MEMORY[0x1E69E6370];
      }

      *(&v32 + 1) = v20;
      v21 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v21, 2);
      if (qword_1EC7E8F90 != -1)
      {
        swift_once();
      }

      v22 = sub_1D560C328();
      OUTLINED_FUNCTION_3_104();
      if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
      {
        sub_1D4E7661C(v11, &qword_1EC7EA3B8, &unk_1D561E370);
        v31 = 0u;
        v32 = 0u;
      }

      else
      {
        *(&v32 + 1) = v22;
        __swift_allocate_boxed_opaque_existential_0(&v31);
        OUTLINED_FUNCTION_24_0(v22);
        (*(v23 + 32))();
      }

      v24 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v24, 4);
      if (qword_1EC7E8FA0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D560C0A8();
      OUTLINED_FUNCTION_3_104();
      if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
      {
        sub_1D4E7661C(v5, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v31 = 0u;
        v32 = 0u;
      }

      else
      {
        *(&v32 + 1) = v25;
        __swift_allocate_boxed_opaque_existential_0(&v31);
        OUTLINED_FUNCTION_24_0(v25);
        (*(v26 + 32))();
      }

      v27 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v27, 3);
      return v33;
  }
}

uint64_t Playlist.Collaboration.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976888];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D51EFE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D51EFFA8(&qword_1EC7F1BB8, type metadata accessor for Playlist.Collaboration);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D51EFF1C()
{
  sub_1D51EFFA8(&qword_1EC7EEFD0, type metadata accessor for Playlist.Collaboration);

  return sub_1D56132F8();
}

uint64_t sub_1D51EFFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51EFFF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D4F03980();
  result = v9;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      if (*v4)
      {
        v5 = 0x4E79616C70736964;
      }

      else
      {
        v5 = 0x726F62616C6C6F63;
      }

      if (*v4)
      {
        v6 = 0xEB00000000656D61;
      }

      else
      {
        v6 = 0xED00006E6F697461;
      }

      v10 = result;
      v7 = *(result + 16);
      if (v7 >= *(result + 24) >> 1)
      {
        sub_1D4F03980();
        result = v10;
      }

      *(result + 16) = v7 + 1;
      v8 = result + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D51F0124(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v17 = a1 + 40;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v3 = (v17 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = v5 == 0x726F62616C6C6F63 && v6 == 0xED00006E6F697461;
    if (v7 || (v8 = *(v3 - 1), v9 = *v3, (sub_1D5616168() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_18;
    }

    if (v5 != 0x4E79616C70736964 || v6 != 0xEB00000000656D61)
    {
      ++v1;
      v3 += 2;
      if ((sub_1D5616168() & 1) == 0)
      {
        continue;
      }
    }

    v11 = 1;
LABEL_18:
    v12 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(v18 + 16);
      sub_1D4F00648();
      v12 = v15;
    }

    v13 = *(v12 + 16);
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1D4F00648();
      v12 = v16;
    }

    *(v12 + 16) = v13 + 1;
    v18 = v12;
    *(v12 + v13 + 32) = v11;
    v1 = v4;
    goto LABEL_2;
  }
}

uint64_t CloudUserProfile.Attributes.discoverabilityConsentVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for CloudUserProfile.Attributes(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CloudUserProfile.Attributes.handle.getter()
{
  v1 = (v0 + *(type metadata accessor for CloudUserProfile.Attributes(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUserProfile.Attributes.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CloudUserProfile.Attributes(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUserProfile.Attributes.url.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Attributes(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 64));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

void static CloudUserProfile.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v118 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v120 = v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v119);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v121 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_38_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_47_5();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_45();
  v122 = v6;
  v38 = *v6;
  v39 = v4;
  v40 = *v4;
  if (v38)
  {
    if (!v40 || (sub_1D4EF81E0(v38, v40) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v40)
  {
    goto LABEL_16;
  }

  v115 = v14;
  v116 = v7;
  v117 = type metadata accessor for CloudUserProfile.Attributes(0);
  v41 = v117[5];
  v42 = *(v34 + 48);
  sub_1D4F39AB0(v122 + v41, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v39 + v41, v1 + v42, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1, 1, v24);
  if (v43)
  {
    OUTLINED_FUNCTION_57(v1 + v42, 1, v24);
    if (v43)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_18;
    }

LABEL_14:
    v47 = &qword_1EC7EC330;
    v48 = &qword_1D56222C0;
    v49 = v1;
LABEL_15:
    sub_1D4E50004(v49, v47, v48);
    goto LABEL_16;
  }

  sub_1D4F39AB0(v1, v0, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1 + v42, 1, v24);
  if (v43)
  {
    v44 = *(v26 + 8);
    v45 = OUTLINED_FUNCTION_71();
    v46(v45);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_40_3();
  v50(v2, v1 + v42, v24);
  sub_1D4F39858();
  v51 = sub_1D5614D18();
  v52 = *(v26 + 8);
  v52(v2, v24);
  v53 = OUTLINED_FUNCTION_71();
  (v52)(v53);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  OUTLINED_FUNCTION_13_58(v117[6]);
  if (v43)
  {
    if (v54 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v55 || ((v56 ^ v57) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v58 = v117[7];
  v59 = (v122 + v58);
  v60 = *(v122 + v58 + 8);
  v61 = (v39 + v58);
  v62 = *(v39 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_16;
    }
  }

  v63 = v117[8];
  OUTLINED_FUNCTION_96_12();
  if (v64)
  {
    if (!v65)
    {
      goto LABEL_16;
    }

    v68 = *v66 == *v67 && v64 == v65;
    if (!v68 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v65)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_13_58(v117[9]);
  if (v43)
  {
    if (v69 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v70 || ((v71 ^ v72) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58(v117[10]);
  if (v43)
  {
    if (v73 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v74 || ((v75 ^ v76) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58(v117[11]);
  if (v43)
  {
    if (v77 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v78 || ((v79 ^ v80) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58(v117[12]);
  if (v43)
  {
    if (v81 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v82 || ((v83 ^ v84) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58(v117[13]);
  if (v43)
  {
    if (v85 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v86 || ((v87 ^ v88) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58(v117[14]);
  if (v43)
  {
    if (v89 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v90 || ((v91 ^ v92) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v93 = v117[15];
  OUTLINED_FUNCTION_96_12();
  if (!v94)
  {
    if (v95)
    {
      goto LABEL_16;
    }

    goto LABEL_84;
  }

  if (v95)
  {
    v98 = *v96 == *v97 && v94 == v95;
    if (v98 || (sub_1D5616168() & 1) != 0)
    {
LABEL_84:
      v99 = v117[16];
      v100 = *(v119 + 48);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v101, v102, v103, v104);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v105, v106, v107, v108);
      OUTLINED_FUNCTION_57(v121, 1, v116);
      if (v43)
      {
        OUTLINED_FUNCTION_1(v121 + v100);
        if (v43)
        {
          sub_1D4E50004(v121, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_16;
        }
      }

      else
      {
        sub_1D4F39AB0(v121, v120, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_1(v121 + v100);
        if (!v109)
        {
          OUTLINED_FUNCTION_81();
          v110(v115, v121 + v100, v116);
          OUTLINED_FUNCTION_7_81();
          sub_1D51F0C00(v111, v112);
          sub_1D5614D18();
          v113 = *(v118 + 8);
          v114 = OUTLINED_FUNCTION_93();
          v113(v114);
          (v113)(v120, v116);
          sub_1D4E50004(v121, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_16;
        }

        (*(v118 + 8))(v120, v116);
      }

      v47 = &qword_1EC7E9FB0;
      v48 = &qword_1D562C590;
      v49 = v121;
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F0C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51F0C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747065636361 && a2 == 0xED0000736D726554;
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
      v7 = a1 == 0xD000000000000014 && 0x80000001D5687B20 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x80000001D5687B40 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72616F626E4F7369 && a2 == 0xEB00000000646564;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001D5687B60 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001D5687B80 == a2;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001D5687BA0 == a2;
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

                        else if (a1 == 7107189 && a2 == 0xE300000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1D5616168();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1D51F1048(char a1)
{
  result = 0x6465747065636361;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0x656C646E6168;
      break;
    case 5:
      result = 0x7461766972507369;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0x72616F626E4F7369;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51F11F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D51F0C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51F1218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51F1040();
  *a1 = result;
  return result;
}

uint64_t sub_1D51F1240(uint64_t a1)
{
  v2 = sub_1D51F15C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F127C(uint64_t a1)
{
  v2 = sub_1D51F15C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUserProfile.Attributes.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BC8, &unk_1D5642998);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1D51F15C8();
  OUTLINED_FUNCTION_15_35();
  v40 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D51F9A3C(&qword_1EC7ECA00);
  OUTLINED_FUNCTION_31_33();
  sub_1D5616068();
  if (!v2)
  {
    v15 = type metadata accessor for CloudUserProfile.Attributes(0);
    v16 = v15[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
    v17 = *(v3 + v15[6]);
    OUTLINED_FUNCTION_17_57(2);
    v18 = v3 + v15[7];
    v19 = *v18;
    v20 = v18[8];
    OUTLINED_FUNCTION_42_25(3);
    sub_1D5616058();
    v21 = (v3 + v15[8]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_42_25(4);
    sub_1D5616028();
    v24 = *(v3 + v15[9]);
    OUTLINED_FUNCTION_17_57(5);
    v25 = *(v3 + v15[10]);
    OUTLINED_FUNCTION_17_57(6);
    v26 = *(v3 + v15[11]);
    OUTLINED_FUNCTION_17_57(7);
    v27 = *(v3 + v15[12]);
    OUTLINED_FUNCTION_17_57(8);
    v28 = *(v3 + v15[13]);
    OUTLINED_FUNCTION_17_57(9);
    v29 = *(v3 + v15[14]);
    OUTLINED_FUNCTION_17_57(10);
    v30 = (v3 + v15[15]);
    v31 = *v30;
    v32 = v30[1];
    OUTLINED_FUNCTION_42_25(11);
    sub_1D5616028();
    v33 = v15[16];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v34, v35);
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
  }

  v36 = *(v7 + 8);
  v37 = OUTLINED_FUNCTION_134_0();
  return v38(v37);
}

unint64_t sub_1D51F15C8()
{
  result = qword_1EDD56F18[0];
  if (!qword_1EDD56F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56F18);
  }

  return result;
}

void CloudUserProfile.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v5 = sub_1D560C0A8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v46 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v45 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_2();
  v27 = *v0;
  if (*v0)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928(v4, v27);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v28 = type metadata accessor for CloudUserProfile.Attributes(0);
  sub_1D4F39AB0(v0 + v28[5], v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_12_7(v2);
  if (v29)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v30(v1, v2, v17);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v19 + 8))(v1, v17);
  }

  OUTLINED_FUNCTION_67_22(v28[6]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v31 = v0 + v28[7];
  if (v31[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v32 = *v31;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v32);
  }

  v33 = (v0 + v28[8]);
  if (v33[1])
  {
    v34 = *v33;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_67_22(v28[9]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22(v28[10]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22(v28[11]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22(v28[12]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22(v28[13]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22(v28[14]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v35 = (v0 + v28[15]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v28[16], v16, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v16, 1, v5);
  if (v29)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v38 = v45;
    v37 = v46;
    OUTLINED_FUNCTION_81();
    v39(v38, v16, v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v40, v41);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v42 = *(v37 + 8);
    v43 = OUTLINED_FUNCTION_93();
    v44(v43);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_114();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD0, &qword_1D56429A8);
  OUTLINED_FUNCTION_4(v46);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45();
  v48 = type metadata accessor for CloudUserProfile.Attributes(0);
  v26 = OUTLINED_FUNCTION_14(v48);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v47 = v29;
  v30 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1D51F15C8();
  sub_1D5616398();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D51F9A3C(&qword_1EDD52778);
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    *v47 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F886BC();
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    sub_1D4F39A1C(v12, v47 + v48[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_5_80(2);
    *(v47 + v48[6]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(3);
    v31 = sub_1D5615F68();
    v32 = v47 + v48[7];
    *v32 = v31;
    v32[8] = v33 & 1;
    OUTLINED_FUNCTION_5_80(4);
    v34 = sub_1D5615F38();
    v35 = (v47 + v48[8]);
    *v35 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_5_80(5);
    *(v47 + v48[9]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(6);
    *(v47 + v48[10]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(7);
    *(v47 + v48[11]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(8);
    *(v47 + v48[12]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(9);
    *(v47 + v48[13]) = sub_1D5615F48();
    OUTLINED_FUNCTION_44_25();
    *(v47 + v48[14]) = sub_1D5615F48();
    OUTLINED_FUNCTION_44_25();
    v37 = sub_1D5615F38();
    v38 = (v47 + v48[15]);
    *v38 = v37;
    v38[1] = v39;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v40, v41);
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    v42 = OUTLINED_FUNCTION_84_11();
    v43(v42);
    sub_1D4F39A1C(v11, v47 + v48[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v44 = OUTLINED_FUNCTION_71();
    sub_1D51F9CFC(v44, v45);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F2138()
{
  v0 = OUTLINED_FUNCTION_94_13();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_64_5();
  return sub_1D4F39AB0(v3, v4, v5, v6);
}

uint64_t CloudUserProfile.Relationships.shareablePlaylists.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 28));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.sharedPlaylists.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 32));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.socialProfile.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 36));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.topGenres.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 40));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

MusicKitInternal::CloudUserProfile::Relationships::CodingKeys_optional __swiftcall CloudUserProfile.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKitInternal::CloudUserProfile::Relationships::CodingKeys_optional __swiftcall CloudUserProfile.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudUserProfile.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1D51F2360()
{
  result = 0x6565776F6C6C6F66;
  switch(*v0)
  {
    case 1:
      result = 0x7265776F6C6C6F66;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x702D6C6169636F73;
      break;
    case 6:
      result = 0x726E65672D706F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51F247C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudUserProfile.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51F24C0(uint64_t a1)
{
  v2 = sub_1D51F9B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F24FC(uint64_t a1)
{
  v2 = sub_1D51F9B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudUserProfile.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v205);
  v202 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v14);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_14(v203);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v204 = v18;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v215);
  v212 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v209 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v208 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v211 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v210 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v213 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v38);
  v222 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v218 = v43;
  v44 = OUTLINED_FUNCTION_159();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v206 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  v214 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  v217 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v200 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD8, &unk_1D56429B0);
  v59 = OUTLINED_FUNCTION_14(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13();
  v207 = v62;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  v216 = v64;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_111_9();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = &v200 - v68;
  v219 = v67;
  v70 = *(v67 + 48);
  v221 = v4;
  sub_1D4F39AB0(v4, &v200 - v68, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v220 = v2;
  sub_1D4F39AB0(v2, &v69[v70], &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v69, 1, v38);
  if (v71)
  {
    OUTLINED_FUNCTION_57(&v69[v70], 1, v38);
    if (v71)
    {
      sub_1D4E50004(v69, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_11;
    }

LABEL_9:
    v75 = &qword_1EC7F1BD8;
    v76 = &unk_1D56429B0;
    v77 = v69;
LABEL_51:
    sub_1D4E50004(v77, v75, v76);
    goto LABEL_52;
  }

  sub_1D4F39AB0(v69, v57, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(&v69[v70], 1, v38);
  if (v71)
  {
    v72 = *(v222 + 8);
    v73 = OUTLINED_FUNCTION_109();
    v74(v73);
    goto LABEL_9;
  }

  v78 = v31;
  v79 = v222;
  v80 = v218;
  (*(v222 + 32))(v218, &v69[v70], v38);
  sub_1D51F9AC8();
  v81 = sub_1D5614D18();
  v82 = v79;
  v31 = v78;
  v83 = *(v82 + 8);
  v83(v80, v38);
  v83(v57, v38);
  sub_1D4E50004(v69, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_11:
  v84 = type metadata accessor for CloudUserProfile.Relationships(0);
  v85 = v84[5];
  v86 = *(v219 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v87, v88, v89, v90);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v91, v92, v93, v94);
  OUTLINED_FUNCTION_57(v0, 1, v38);
  v95 = v38;
  if (v71)
  {
    OUTLINED_FUNCTION_12_7(v0 + v86);
    if (v71)
    {
      sub_1D4E50004(v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v96 = v217;
  sub_1D4F39AB0(v0, v217, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_12_7(v0 + v86);
  if (v97)
  {
    (*(v222 + 8))(v96, v38);
LABEL_19:
    v75 = &qword_1EC7F1BD8;
    v76 = &unk_1D56429B0;
    v77 = v0;
    goto LABEL_51;
  }

  v98 = v222;
  v99 = v84;
  v100 = v218;
  (*(v222 + 32))(v218, v0 + v86, v95);
  sub_1D51F9AC8();
  OUTLINED_FUNCTION_201();
  v101 = sub_1D5614D18();
  v102 = *(v98 + 8);
  v103 = v100;
  v84 = v99;
  v102(v103, v95);
  v102(v96, v95);
  sub_1D4E50004(v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_21:
  v104 = v84[6];
  v105 = *(v219 + 48);
  OUTLINED_FUNCTION_97_3();
  v106 = v216;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v107, v108, v109, v110);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v111, v112, v113, v114);
  OUTLINED_FUNCTION_12_7(v106);
  v115 = v95;
  if (v71)
  {
    OUTLINED_FUNCTION_43_0(v106 + v105);
    if (v71)
    {
      v214 = v95;
      sub_1D4E50004(v106, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v116 = v214;
  sub_1D4F39AB0(v106, v214, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_43_0(v106 + v105);
  if (v117)
  {
    v118 = OUTLINED_FUNCTION_57_22();
    v119(v118);
LABEL_29:
    v75 = &qword_1EC7F1BD8;
    v76 = &unk_1D56429B0;
    v77 = v106;
    goto LABEL_51;
  }

  v120 = v222;
  v121 = v84;
  v122 = v218;
  (*(v222 + 32))(v218, v106 + v105, v115);
  sub_1D51F9AC8();
  OUTLINED_FUNCTION_74_0();
  v123 = OUTLINED_FUNCTION_185_1();
  v124 = *(v120 + 8);
  v125 = v122;
  v84 = v121;
  v124(v125, v115);
  v214 = v115;
  v124(v116, v115);
  sub_1D4E50004(v106, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v123 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v217 = v84;
  v126 = v84[7];
  v127 = *(v31 + 48);
  OUTLINED_FUNCTION_97_3();
  v128 = v213;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v129, v130, v131, v132);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v133, v134, v135, v136);
  v137 = v215;
  OUTLINED_FUNCTION_57(v128, 1, v215);
  if (v71)
  {
    OUTLINED_FUNCTION_43_0(v128 + v127);
    if (v71)
    {
      sub_1D4E50004(v128, &qword_1EC7ECD18, &qword_1D5631040);
      goto LABEL_42;
    }

LABEL_39:
    v75 = &qword_1EC7EDA98;
    v76 = &unk_1D5627020;
LABEL_40:
    v77 = v128;
    goto LABEL_51;
  }

  v138 = v211;
  sub_1D4F39AB0(v128, v211, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_43_0(v128 + v127);
  if (v139)
  {
    (*(v212 + 8))(v138, v137);
    goto LABEL_39;
  }

  v140 = v212;
  v141 = v209;
  (*(v212 + 32))(v209, v128 + v127, v137);
  sub_1D50003B4();
  OUTLINED_FUNCTION_141();
  v142 = OUTLINED_FUNCTION_185_1();
  v143 = *(v140 + 8);
  v143(v141, v137);
  v143(v138, v137);
  sub_1D4E50004(v128, &qword_1EC7ECD18, &qword_1D5631040);
  if ((v142 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_42:
  v144 = v217[8];
  v145 = *(v31 + 48);
  OUTLINED_FUNCTION_97_3();
  v146 = v210;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v147, v148, v149, v150);
  OUTLINED_FUNCTION_44_22();
  v151 = v215;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v152, v153, v154, v155);
  OUTLINED_FUNCTION_43_0(v146);
  if (v71)
  {
    OUTLINED_FUNCTION_43_0(v146 + v145);
    if (v71)
    {
      sub_1D4E50004(v146, &qword_1EC7ECD18, &qword_1D5631040);
      goto LABEL_54;
    }

LABEL_50:
    v75 = &qword_1EC7EDA98;
    v76 = &unk_1D5627020;
    v77 = v146;
    goto LABEL_51;
  }

  v156 = v208;
  sub_1D4F39AB0(v146, v208, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_43_0(v146 + v145);
  if (v157)
  {
    (*(v212 + 8))(v156, v151);
    goto LABEL_50;
  }

  v158 = v212;
  v159 = v146 + v145;
  v160 = v209;
  (*(v212 + 32))(v209, v159, v151);
  sub_1D50003B4();
  v161 = OUTLINED_FUNCTION_185_1();
  v162 = *(v158 + 8);
  v162(v160, v151);
  v162(v156, v151);
  sub_1D4E50004(v146, &qword_1EC7ECD18, &qword_1D5631040);
  if ((v161 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  v163 = v217[9];
  v164 = *(v219 + 48);
  OUTLINED_FUNCTION_97_3();
  v128 = v207;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v165, v166, v167, v168);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v169, v170, v171, v172);
  v173 = v214;
  OUTLINED_FUNCTION_57(v128, 1, v214);
  if (v71)
  {
    OUTLINED_FUNCTION_1(v128 + v164);
    if (v71)
    {
      sub_1D4E50004(v128, &qword_1EC7EA7E0, &unk_1D5623AB0);
LABEL_64:
      v181 = v217[10];
      v182 = v204;
      v183 = *(v203 + 48);
      OUTLINED_FUNCTION_97_3();
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v184, v185, v186, v187);
      OUTLINED_FUNCTION_44_22();
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v188, v189, v190, v191);
      v192 = v205;
      OUTLINED_FUNCTION_57(v182, 1, v205);
      if (v71)
      {
        OUTLINED_FUNCTION_43_0(v182 + v183);
        if (v71)
        {
          sub_1D4E50004(v182, &qword_1EC7EA7F0, &unk_1D561E8C0);
          goto LABEL_52;
        }
      }

      else
      {
        v193 = v201;
        sub_1D4F39AB0(v182, v201, &qword_1EC7EA7F0, &unk_1D561E8C0);
        OUTLINED_FUNCTION_43_0(v182 + v183);
        if (!v194)
        {
          v195 = v202;
          OUTLINED_FUNCTION_40_3();
          v196 = v182 + v183;
          v197 = v200;
          v198(v200, v196, v192);
          sub_1D4F88E6C();
          OUTLINED_FUNCTION_185_1();
          v199 = *(v195 + 8);
          v199(v197, v192);
          v199(v193, v192);
          sub_1D4E50004(v182, &qword_1EC7EA7F0, &unk_1D561E8C0);
          goto LABEL_52;
        }

        (*(v202 + 8))(v193, v192);
      }

      v75 = &qword_1EC7ECA68;
      v76 = &unk_1D5622330;
      v77 = v182;
      goto LABEL_51;
    }

    goto LABEL_62;
  }

  v174 = v206;
  sub_1D4F39AB0(v128, v206, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_1(v128 + v164);
  if (v175)
  {
    (*(v222 + 8))(v174, v173);
LABEL_62:
    v75 = &qword_1EC7F1BD8;
    v76 = &unk_1D56429B0;
    goto LABEL_40;
  }

  v176 = v222;
  v177 = v218;
  (*(v222 + 32))(v218, v128 + v164, v173);
  sub_1D51F9AC8();
  v178 = v173;
  v179 = sub_1D5614D18();
  v180 = *(v176 + 8);
  v180(v177, v178);
  v180(v174, v178);
  sub_1D4E50004(v128, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (v179)
  {
    goto LABEL_64;
  }

LABEL_52:
  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BE8, &qword_1D56429C0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1D51F9B4C();
  OUTLINED_FUNCTION_15_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  sub_1D51F9BA0();
  OUTLINED_FUNCTION_38();
  if (!v0)
  {
    v13 = type metadata accessor for CloudUserProfile.Relationships(0);
    v14 = v13[5];
    OUTLINED_FUNCTION_38();
    v15 = v13[6];
    OUTLINED_FUNCTION_38();
    v22 = v13[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    sub_1D5616068();
    v16 = v13[8];
    sub_1D5616068();
    v17 = v13[9];
    OUTLINED_FUNCTION_38();
    v18 = v13[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89134();
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
  }

  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_134_0();
  v21(v20);
  OUTLINED_FUNCTION_26();
}

void CloudUserProfile.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v97);
  v87 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v86 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v96 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v15 = OUTLINED_FUNCTION_4(v14);
  v94 = v16;
  v95 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v93 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v91 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  v90 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_47_5();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v92 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_111_9();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v86 - v42;
  v89 = v1;
  sub_1D4F39AB0(v1, &v86 - v42, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v43, 1, v28);
  v98 = v0;
  v99 = v30;
  if (v44)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v45 = OUTLINED_FUNCTION_141();
    v46(v45);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v30 + 8))(v0, v28);
  }

  v88 = type metadata accessor for CloudUserProfile.Relationships(0);
  v47 = v89;
  sub_1D4F39AB0(v89 + *(v88 + 20), v2, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v2, 1, v28);
  v48 = v95;
  if (v44)
  {
    sub_1D56162F8();
  }

  else
  {
    v50 = v98;
    v49 = v99;
    OUTLINED_FUNCTION_40_3();
    v51(v50, v2, v28);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    v52 = *(v49 + 8);
    v53 = OUTLINED_FUNCTION_201();
    v54(v53);
  }

  v55 = v97;
  v56 = v88;
  sub_1D4F39AB0(v47 + *(v88 + 24), v3, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v57 = OUTLINED_FUNCTION_52_22();
  OUTLINED_FUNCTION_57(v57, v58, v28);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v2 = v99;
    (*(v99 + 32))(v98, v3, v28);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v59 = *(v2 + 8);
    v60 = OUTLINED_FUNCTION_201();
    v61(v60);
  }

  v62 = v90;
  sub_1D4F39AB0(v47 + v56[7], v90, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_12_7(v62);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_73_13();
    v64(v63);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v3 + 8))(v2, v48);
  }

  v65 = v91;
  sub_1D4F39AB0(v47 + v56[8], v91, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_12_7(v65);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_73_13();
    v67(v66);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v3 + 8))(v2, v48);
  }

  v68 = v55;
  v69 = v92;
  sub_1D4F39AB0(v47 + v56[9], v92, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v70 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v70, v71, v28);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v73 = v98;
    v72 = v99;
    OUTLINED_FUNCTION_40_3();
    v74(v73, v69, v28);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v75 = *(v72 + 8);
    v76 = OUTLINED_FUNCTION_201();
    v77(v76);
  }

  sub_1D4F39AB0(v47 + v56[10], v96, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v78 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v78, v79, v68);
  if (v44)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v80 = v87;
    OUTLINED_FUNCTION_81();
    v81 = OUTLINED_FUNCTION_109();
    v82(v81);
    OUTLINED_FUNCTION_27();
    sub_1D4F89490();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v83 = *(v80 + 8);
    v84 = OUTLINED_FUNCTION_93();
    v85(v84);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v92);
  v84 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v91 = v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v85);
  v90 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v89 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v87 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v86 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_114();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v88 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40_4();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v83 - v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_91_13();
  sub_1D56162D8();
  v42 = v1;
  sub_1D4F39AB0(v1, v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v0);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_56_21();
    v45(v44, v0, v26);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19();
    v46 = OUTLINED_FUNCTION_55_19();
    v47(v46);
  }

  v48 = type metadata accessor for CloudUserProfile.Relationships(0);
  sub_1D4F39AB0(v1 + v48[5], v41, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v41);
  v49 = v85;
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_56_21();
    v51(v50, v41, v26);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19();
    v52 = OUTLINED_FUNCTION_55_19();
    v53(v52);
  }

  sub_1D4F39AB0(v1 + v48[6], v3, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v3);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v54 = OUTLINED_FUNCTION_56_21();
    v55(v54, v3, v26);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19();
    v56 = OUTLINED_FUNCTION_55_19();
    v57(v56);
  }

  v58 = v1 + v48[7];
  v59 = v86;
  sub_1D4F39AB0(v58, v86, &qword_1EC7ECD18, &qword_1D5631040);
  v60 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v60, v61, v49);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v63 = v89;
    v62 = v90;
    OUTLINED_FUNCTION_40_3();
    v64(v63, v59, v49);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_115_8();
    (*(v62 + 8))(v63, v49);
  }

  v65 = v87;
  sub_1D4F39AB0(v42 + v48[8], v87, &qword_1EC7ECD18, &qword_1D5631040);
  v66 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v66, v67, v49);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v68 = v89;
    OUTLINED_FUNCTION_40_3();
    v69(v68, v65, v49);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_115_8();
    v70 = OUTLINED_FUNCTION_59_17();
    v71(v70);
  }

  v72 = v88;
  sub_1D4F39AB0(v42 + v48[9], v88, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v72);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v73 = OUTLINED_FUNCTION_56_21();
    v74(v73, v72, v26);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19();
    (*(v28 + 8))(v2, v26);
  }

  v75 = v91;
  sub_1D4F39AB0(v42 + v48[10], v91, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v76 = OUTLINED_FUNCTION_35_1();
  v77 = v92;
  OUTLINED_FUNCTION_57(v76, v78, v92);
  if (v43)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v79 = v84;
    (*(v84 + 32))(v83, v75, v77);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F89490();
    sub_1D5614CB8();
    v80 = *(v79 + 8);
    v81 = OUTLINED_FUNCTION_134_0();
    v82(v81);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v64 = v1;
  v4 = v3;
  v57 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v58 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v59 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40_4();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_91_13();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BF8, &qword_1D56429C8);
  v60 = OUTLINED_FUNCTION_4(v30);
  v61 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v55 - v35;
  v63 = type metadata accessor for CloudUserProfile.Relationships(0);
  v37 = OUTLINED_FUNCTION_14(v63);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v65 = v40;
  v66 = v4;
  v41 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D51F9B4C();
  v62 = v36;
  v42 = v64;
  sub_1D5616398();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    v64 = v2;
    v56 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    v43 = sub_1D51F9C24();
    OUTLINED_FUNCTION_120_7();
    v44 = v65;
    sub_1D4F39A1C(v0, v65, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v45 = v29;
    OUTLINED_FUNCTION_85_11();
    sub_1D5615F78();
    v46 = v63;
    sub_1D4F39A1C(v45, v44 + v63[5], &qword_1EC7EA7E0, &unk_1D5623AB0);
    v47 = v64;
    OUTLINED_FUNCTION_85_11();
    sub_1D5615F78();
    v55 = v43;
    sub_1D4F39A1C(v47, v44 + v46[6], &qword_1EC7EA7E0, &unk_1D5623AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000974();
    OUTLINED_FUNCTION_92_11();
    sub_1D5615F78();
    sub_1D4F39A1C(v18, v44 + v63[7], &qword_1EC7ECD18, &qword_1D5631040);
    v48 = v59;
    OUTLINED_FUNCTION_92_11();
    OUTLINED_FUNCTION_120_7();
    v49 = v48;
    v50 = v63;
    sub_1D4F39A1C(v49, v44 + v63[8], &qword_1EC7ECD18, &qword_1D5631040);
    v51 = v56;
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_120_7();
    sub_1D4F39A1C(v51, v44 + v50[9], &qword_1EC7EA7E0, &unk_1D5623AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    v52 = v58;
    OUTLINED_FUNCTION_92_11();
    OUTLINED_FUNCTION_120_7();
    v53 = OUTLINED_FUNCTION_86_15();
    v54(v53);
    sub_1D4F39A1C(v52, v44 + v50[10], &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_1D51F9CFC(v44, type metadata accessor for CloudUserProfile.Relationships);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F49BC(uint64_t a1, int *a2)
{
  v64 = a2;
  v3 = v2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v56 = *(v65 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v55 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v59 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v54 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v54 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v54 - v32;
  sub_1D56162D8();
  v34 = v3;
  sub_1D4F39AB0(v3, v33, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v17) == 1)
  {
    v35 = v18;
    sub_1D56162F8();
  }

  else
  {
    (*(v18 + 32))(v21, v33, v17);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    v35 = v18;
    (*(v18 + 8))(v21, v17);
  }

  v36 = v64;
  v37 = v34;
  sub_1D4F39AB0(v34 + v64[5], v31, &qword_1EC7EA7E0, &unk_1D5623AB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v17);
  v39 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
    v40 = v35;
  }

  else
  {
    v41 = v31;
    v40 = v35;
    (*(v35 + 32))(v21, v41, v17);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v35 + 8))(v21, v17);
  }

  sub_1D4F39AB0(v34 + v36[6], v28, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v17) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v40 + 32))(v21, v28, v17);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v40 + 8))(v21, v17);
  }

  v42 = v57;
  sub_1D4F39AB0(v34 + v36[7], v57, &qword_1EC7ECD18, &qword_1D5631040);
  v43 = v62;
  if (__swift_getEnumTagSinglePayload(v42, 1, v62) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v45 = v60;
    v44 = v61;
    (*(v61 + 32))(v60, v42, v43);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v44 + 8))(v45, v43);
  }

  v46 = v58;
  sub_1D4F39AB0(v37 + v36[8], v58, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v46, 1, v43) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v48 = v60;
    v47 = v61;
    (*(v61 + 32))(v60, v46, v43);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v47 + 8))(v48, v43);
  }

  v49 = v59;
  sub_1D4F39AB0(v37 + v36[9], v59, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v17) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v40 + 32))(v21, v49, v17);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v40 + 8))(v21, v17);
  }

  v50 = v63;
  sub_1D4F39AB0(v37 + v36[10], v63, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v39) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v52 = v55;
    v51 = v56;
    (*(v56 + 32))(v55, v50, v39);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v51 + 8))(v52, v39);
  }

  return sub_1D5616328();
}

uint64_t sub_1D51F51EC(uint64_t a1)
{
  v2 = sub_1D51F9D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5228(uint64_t a1)
{
  v2 = sub_1D51F9D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51F532C(uint64_t a1)
{
  v2 = sub_1D51F9DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5368(uint64_t a1)
{
  v2 = sub_1D51F9DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D51F53E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v35, v28);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUserProfile.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUserProfile.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = *(type metadata accessor for CloudUserProfile(v0) + 20);
  OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_152(v2);
  return sub_1D51F9CA8();
}

uint64_t sub_1D51F558C()
{
  v0 = OUTLINED_FUNCTION_94_13();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_64_5();
  return sub_1D4F39AB0(v3, v4, v5, v6);
}

uint64_t CloudUserProfile.views.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUserProfile(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudUserProfile.meta.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUserProfile(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D51F5674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FE68();
  qword_1EDD56E10 = v3;
  return result;
}

void static CloudUserProfile.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_106_0();
  v4 = type metadata accessor for CloudUserProfile.Relationships(v3);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C20, &qword_1D56429E8);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  v21 = *v1 == *v0 && v1[1] == v0[1];
  if (v21 || (sub_1D5616168() & 1) != 0)
  {
    v22 = type metadata accessor for CloudUserProfile(0);
    v23 = v22[5];
    static CloudUserProfile.Attributes.== infix(_:_:)();
    if (v24)
    {
      v34 = v10;
      v25 = v22[6];
      v26 = *(v17 + 48);
      sub_1D4F39AB0(v1 + v25, v2, &qword_1EC7ECD48, &qword_1D56429E0);
      sub_1D4F39AB0(v0 + v25, v2 + v26, &qword_1EC7ECD48, &qword_1D56429E0);
      OUTLINED_FUNCTION_74(v2);
      if (v21)
      {
        OUTLINED_FUNCTION_74(v2 + v26);
        if (v21)
        {
          sub_1D4E50004(v2, &qword_1EC7ECD48, &qword_1D56429E0);
LABEL_17:
          if (*(v1 + v22[7]) == *(v0 + v22[7]))
          {
            v32 = *(v1 + v22[8]) ^ *(v0 + v22[8]) ^ 1u;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_1D4F39AB0(v2, v16, &qword_1EC7ECD48, &qword_1D56429E0);
        OUTLINED_FUNCTION_74(v2 + v26);
        if (!v27)
        {
          v29 = v34;
          sub_1D51F9F18();
          OUTLINED_FUNCTION_93();
          static CloudUserProfile.Relationships.== infix(_:_:)();
          v31 = v30;
          sub_1D51F9CFC(v29, type metadata accessor for CloudUserProfile.Relationships);
          sub_1D51F9CFC(v16, type metadata accessor for CloudUserProfile.Relationships);
          sub_1D4E50004(v2, &qword_1EC7ECD48, &qword_1D56429E0);
          if ((v31 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_1_106();
        sub_1D51F9CFC(v16, v28);
      }

      sub_1D4E50004(v2, &qword_1EC7F1C20, &qword_1D56429E8);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F59F8(char a1)
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

uint64_t sub_1D51F5A8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D51F5AE0(uint64_t a1)
{
  v2 = sub_1D51F9E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5B1C(uint64_t a1)
{
  v2 = sub_1D51F9E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUserProfile.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C28, &qword_1D56429F0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1D51F9E1C();
  OUTLINED_FUNCTION_15_35();
  v26 = *v3;
  v29 = v3[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v2)
  {
    v15 = type metadata accessor for CloudUserProfile(0);
    v16 = v15[5];
    type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_49_20();
    sub_1D51F0C00(v17, v18);
    OUTLINED_FUNCTION_31_33();
    sub_1D56160C8();
    v19 = v15[6];
    type metadata accessor for CloudUserProfile.Relationships(0);
    OUTLINED_FUNCTION_48_23();
    sub_1D51F0C00(v20, v21);
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
    v27 = *(v3 + v15[7]);
    sub_1D51F9E70();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v28 = *(v3 + v15[8]);
    sub_1D51F9EC4();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  v22 = *(v7 + 8);
  v23 = OUTLINED_FUNCTION_134_0();
  return v24(v23);
}

uint64_t CloudUserProfile.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for CloudUserProfile(0);
  v5 = v0 + v4[5];
  CloudUserProfile.Attributes.hash(into:)();
  v6 = v1 + v4[6];
  sub_1D4F86798();
  v7 = *(v1 + v4[7]);
  sub_1D56162F8();
  v8 = *(v1 + v4[8]);
  return sub_1D56162F8();
}

uint64_t sub_1D51F5E40(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudUserProfile.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v31 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for CloudUserProfile.Attributes(v8);
  v9 = OUTLINED_FUNCTION_14(v32);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C50, &qword_1D56429F8);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_114();
  v16 = type metadata accessor for CloudUserProfile(0);
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51F9E1C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v22 = v33;
    v22[1] = v34;
    OUTLINED_FUNCTION_49_20();
    sub_1D51F0C00(v24, v25);
    sub_1D5615FD8();
    v26 = v16[5];
    sub_1D51F9F18();
    type metadata accessor for CloudUserProfile.Relationships(0);
    OUTLINED_FUNCTION_48_23();
    sub_1D51F0C00(v27, v28);
    sub_1D5615F78();
    sub_1D4F39A1C(v31, v22 + v16[6], &qword_1EC7ECD48, &qword_1D56429E0);
    sub_1D51F9F6C();
    OUTLINED_FUNCTION_128_1();
    *(v22 + v16[7]) = 2;
    sub_1D51F9FC0();
    OUTLINED_FUNCTION_128_1();
    v29 = OUTLINED_FUNCTION_51_1();
    v30(v29);
    *(v22 + v16[8]) = 2;
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D51F9CFC(v22, type metadata accessor for CloudUserProfile);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F6338(uint64_t a1)
{
  v2 = sub_1D51F0C00(&qword_1EC7F1CD8, type metadata accessor for CloudUserProfile);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D51F63F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void UserProfile.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v369 = v23;
  v374 = v24;
  v375 = v25;
  v373[1] = v26;
  v28 = v27;
  v357 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v367 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v364 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v368 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  v59 = OUTLINED_FUNCTION_22(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_135();
  v366 = v65;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  v371 = v74;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  v365 = v83;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v97);
  v370 = type metadata accessor for CloudUserProfile(0);
  v98 = OUTLINED_FUNCTION_14(v370);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  v376 = v101;
  OUTLINED_FUNCTION_70_0();
  v102 = type metadata accessor for UserProfilePropertyProvider();
  v103 = OUTLINED_FUNCTION_14(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  v108 = (v107 - v106);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v109);
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_47_5();
  v113 = sub_1D560D838();
  v114 = OUTLINED_FUNCTION_4(v113);
  v116 = v115;
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5();
  v121 = v120 - v119;
  if (qword_1EDD53D28 != -1)
  {
    swift_once();
  }

  v122 = sub_1D560D9A8();
  __swift_project_value_buffer(v122, qword_1EDD53D30);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C58, &unk_1D5642A00);
  OUTLINED_FUNCTION_159();
  sub_1D56105B8();
  sub_1D4E50004(v20, &qword_1EC7EB5C0, &unk_1D56223C0);
  v128 = v102[5];
  v129 = sub_1D56140F8();
  v343 = v128;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v129);
  v133 = v102[6];
  OUTLINED_FUNCTION_33();
  v342 = v129;
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v129);
  v137 = v102[19];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v138);
  v142 = OUTLINED_FUNCTION_40_5(v102[20]);
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v138);
  v145 = OUTLINED_FUNCTION_40_5(v102[21]);
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v138);
  v148 = v102[22];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v149);
  v153 = OUTLINED_FUNCTION_40_5(v102[23]);
  v362 = v149;
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v149);
  v156 = OUTLINED_FUNCTION_40_5(v102[24]);
  v377 = v138;
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v138);
  v159 = v102[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_33();
  v352 = v160;
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v160);
  v354 = v116;
  v353 = v121;
  v355 = v113;
  (*(v116 + 16))(v108 + v102[27], v121, v113);
  v164 = v108 + v102[28];
  sub_1D5610658();
  v341 = sub_1D5610618();
  v166 = v165;
  v167 = sub_1D56105C8();
  v168 = sub_1D56105F8();
  v169 = sub_1D56105E8();
  v372 = v127;
  v170 = sub_1D56105A8();
  *(v108 + v102[10]) = 2;
  v373[0] = v102;
  v171 = v102[13];
  v378 = v108;
  *(v108 + v171) = 2;
  if (qword_1EDD54F08 != -1)
  {
    swift_once();
  }

  v172 = qword_1EDD76B68;
  if (qword_1EDD76B68 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_109();
    v337 = sub_1D5615E18();

    v172 = v337;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v173 = v373[0];
  v174 = v378;
  *(v378 + *(v373[0] + 104)) = v172;
  v175 = v174;
  v176 = (v174 + v173[29]);
  *v176 = v341;
  v176[1] = v166;
  v177 = v173;
  *(v174 + v173[30]) = v167;
  *(v174 + v173[31]) = v168;
  *(v174 + v173[32]) = v169;
  *(v174 + v173[33]) = v170;
  sub_1D5610648();
  v178 = (v376 + *(v370 + 20));
  v179 = *v178;
  if (*v178)
  {
    sub_1D51F0124(v179);
  }

  *v175 = v179;
  v180 = type metadata accessor for CloudUserProfile.Attributes(0);
  sub_1D4F39AB0(v178 + v180[5], v344, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v344);
  v358 = v28;
  if (v210)
  {
    sub_1D4E50004(v344, &qword_1EC7EB5B8, &unk_1D56206A0);
    v186 = 1;
    v181 = v346;
  }

  else
  {
    v181 = v346;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v183 = *(v182 + 8);
    v184 = OUTLINED_FUNCTION_159();
    v185(v184);
    v186 = 0;
  }

  __swift_storeEnumTagSinglePayload(v181, v186, 1, v342);
  v187 = v177[7];
  v188 = v175 + v177[8];
  v189 = (v378 + v177[9]);
  v345 = v177[11];
  v347 = v177[12];
  v190 = v181;
  v192 = v177[14];
  v191 = v177[15];
  v194 = v177[16];
  v193 = v177[17];
  v195 = (v378 + v177[18]);
  sub_1D4E68940(v190, v378 + v343, &qword_1EC7E9CA0, &unk_1D561A0C0);
  *(v378 + v187) = *(v178 + v180[6]);
  v196 = v178 + v180[7];
  v197 = *v196;
  LOBYTE(v196) = v196[8];
  *v188 = v197;
  v188[8] = v196;
  v198 = (v178 + v180[8]);
  v199 = v198[1];
  *v189 = *v198;
  v189[1] = v199;
  v200 = v378;
  *(v378 + v194) = *(v178 + v180[9]);
  *(v200 + v193) = *(v178 + v180[10]);
  *(v200 + v192) = *(v178 + v180[11]);
  *(v200 + v191) = *(v178 + v180[12]);
  *(v200 + v345) = *(v178 + v180[13]);
  *(v200 + v347) = *(v178 + v180[14]);
  v201 = (v178 + v180[15]);
  v202 = v201[1];
  *v195 = *v201;
  v195[1] = v202;
  v203 = *(v370 + 24);
  v204 = v376;
  sub_1D4F39AB0(v376 + v203, v348, &qword_1EC7ECD48, &qword_1D56429E0);
  v205 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_12_7(v348);
  if (v210)
  {

    v206 = &qword_1EC7ECD48;
    v207 = &qword_1D56429E0;
    v208 = v348;
  }

  else
  {
    sub_1D4F39AB0(v348, v338, &qword_1EC7EA7E0, &unk_1D5623AB0);

    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v348, v209);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v338);
    if (!v210)
    {
      v211 = sub_1D560CD98();
      v204 = v368;
      OUTLINED_FUNCTION_15_4(v368, v212, v213, v211);
      type metadata accessor for SocialProfile();
      v370 = v203;
      sub_1D51F0C00(&qword_1EDD57510, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v214, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v215 = sub_1D5612368();
      OUTLINED_FUNCTION_116_11(v215, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v217 = *(v216 + 8);
      v218 = OUTLINED_FUNCTION_159();
      v219(v218);
      v220 = 0;
      goto LABEL_19;
    }

    v206 = &qword_1EC7EA7E0;
    v207 = &unk_1D5623AB0;
    v208 = v338;
  }

  sub_1D4E50004(v208, v206, v207);
  v220 = 1;
LABEL_19:
  v221 = v371;
  v222 = v366;
  v223 = v361;
  OUTLINED_FUNCTION_122_6(v359, v220);
  OUTLINED_FUNCTION_61_2(&v369);
  sub_1D4E68940(v359, v224, v225, v226);
  OUTLINED_FUNCTION_117_8(v204 + v203, &qword_1EC7ECD48, &qword_1D56429E0, v373);
  OUTLINED_FUNCTION_12_7(v359);
  if (v210)
  {
    v227 = &qword_1EC7ECD48;
    v228 = &qword_1D56429E0;
    v229 = v359;
  }

  else
  {
    sub_1D4F39AB0(v359 + v205[5], v349, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v359, v230);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v349);
    if (!v232)
    {
      v233 = sub_1D560CD98();
      v204 = v368;
      OUTLINED_FUNCTION_15_4(v368, v234, v235, v233);
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v236, v221);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v237, v221);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v238 = sub_1D5612368();
      v223 = v361;
      v222 = v366;
      v221 = v371;
      OUTLINED_FUNCTION_116_11(v238, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v239 + 8))(v349, v231);
      v240 = 0;
      goto LABEL_26;
    }

    v227 = &qword_1EC7EA7E0;
    v228 = &unk_1D5623AB0;
    v229 = v349;
  }

  sub_1D4E50004(v229, v227, v228);
  v240 = 1;
LABEL_26:
  v241 = v367;
  OUTLINED_FUNCTION_122_6(v360, v240);
  OUTLINED_FUNCTION_61_2(&v371);
  sub_1D4E68940(v360, v242, v243, v244);
  sub_1D4F39AB0(v204 + v203, v223, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_12_7(v223);
  if (v210)
  {
    sub_1D4E50004(v223, &qword_1EC7ECD48, &qword_1D56429E0);
    v245 = 1;
    v246 = v221;
  }

  else
  {
    sub_1D4F39AB0(v223 + v205[6], v339, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v223, v247);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v339);
    if (!v248)
    {
      v249 = sub_1D560CD98();
      v204 = v368;
      OUTLINED_FUNCTION_15_4(v368, v250, v251, v249);
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v252, v221);
      OUTLINED_FUNCTION_10_1();
      v253 = v221;
      v254 = v363;
      sub_1D51F0C00(v255, v253);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v256 = sub_1D5612368();
      v222 = v366;
      v246 = v371;
      OUTLINED_FUNCTION_116_11(v256, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v258 = *(v257 + 8);
      v259 = OUTLINED_FUNCTION_159();
      v260(v259);
      v245 = 0;
      v241 = v367;
      goto LABEL_33;
    }

    v246 = v221;
    sub_1D4E50004(v339, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v245 = 1;
    v241 = v367;
  }

  v254 = v363;
LABEL_33:
  OUTLINED_FUNCTION_122_6(v350, v245);
  OUTLINED_FUNCTION_61_2(&v372);
  sub_1D4E68940(v350, v261, v262, v263);
  sub_1D4F39AB0(v204 + v203, v222, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_12_7(v222);
  if (v210)
  {
    sub_1D4E50004(v222, &qword_1EC7ECD48, &qword_1D56429E0);
    v264 = 1;
    v265 = v351;
  }

  else
  {
    sub_1D4F39AB0(v222 + v205[7], v241, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v222, v266);
    v267 = v241;
    v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v267);
    v265 = v351;
    if (v268)
    {
      sub_1D4E50004(v267, &qword_1EC7ECD18, &qword_1D5631040);
      v264 = 1;
    }

    else
    {
      v269 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v368, v270, v271, v269);
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      sub_1D51F0C00(v272, v273);
      OUTLINED_FUNCTION_83_12();
      OUTLINED_FUNCTION_64_5();
      sub_1D5612368();
      v246 = v371;
      v254 = v363;
      sub_1D4E50004(v368, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v275 = *(v274 + 8);
      v276 = OUTLINED_FUNCTION_159();
      v277(v276);
      v264 = 0;
    }
  }

  v278 = v362;
  __swift_storeEnumTagSinglePayload(v265, v264, 1, v362);
  OUTLINED_FUNCTION_61_2(&v374);
  sub_1D4E68940(v265, v279, v280, v281);
  OUTLINED_FUNCTION_117_8(v204 + v203, &qword_1EC7ECD48, &qword_1D56429E0, &v378);
  OUTLINED_FUNCTION_12_7(v241);
  if (v210)
  {
    v282 = &qword_1EC7ECD48;
    v283 = &qword_1D56429E0;
    v284 = v241;
  }

  else
  {
    sub_1D4F39AB0(v241 + v205[8], v254, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v241, v285);
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v254);
    if (!v287)
    {
      v288 = sub_1D560CD98();
      v289 = v254;
      v254 = v368;
      OUTLINED_FUNCTION_15_4(v368, v290, v291, v288);
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      sub_1D51F0C00(v292, v293);
      OUTLINED_FUNCTION_83_12();
      OUTLINED_FUNCTION_64_5();
      sub_1D5612368();
      v278 = v362;
      v246 = v371;
      sub_1D4E50004(v368, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v294 + 8))(v289, v286);
      v295 = 0;
      goto LABEL_46;
    }

    v282 = &qword_1EC7ECD18;
    v283 = &qword_1D5631040;
    v284 = v254;
  }

  sub_1D4E50004(v284, v282, v283);
  v295 = 1;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v364, v295, 1, v278);
  OUTLINED_FUNCTION_61_2(&v376);
  sub_1D4E68940(v364, v296, v297, v298);
  OUTLINED_FUNCTION_117_8(v204 + v203, &qword_1EC7ECD48, &qword_1D56429E0, v381);
  OUTLINED_FUNCTION_12_7(v364);
  if (v210)
  {
    sub_1D4E50004(v364, &qword_1EC7ECD48, &qword_1D56429E0);
    v299 = 1;
    v301 = v374;
    v300 = v375;
  }

  else
  {
    sub_1D4F39AB0(v364 + v205[9], v246, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v364, v302);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v246);
    v301 = v374;
    if (v303)
    {
      sub_1D4E50004(v246, &qword_1EC7EA7E0, &unk_1D5623AB0);
      v299 = 1;
      v300 = v375;
    }

    else
    {
      v304 = sub_1D560CD98();
      v204 = v368;
      OUTLINED_FUNCTION_15_4(v368, v305, v306, v304);
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v307, v254);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v308, v254);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      v300 = v375;
      OUTLINED_FUNCTION_109_13();
      v309 = sub_1D5612368();
      OUTLINED_FUNCTION_116_11(v309, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v311 = *(v310 + 8);
      v312 = OUTLINED_FUNCTION_159();
      v313(v312);
      v299 = 0;
    }
  }

  OUTLINED_FUNCTION_122_6(v365, v299);
  OUTLINED_FUNCTION_61_2(&v377);
  sub_1D4E68940(v365, v314, v315, v316);
  OUTLINED_FUNCTION_117_8(v204 + v203, &qword_1EC7ECD48, &qword_1D56429E0, &a10);
  OUTLINED_FUNCTION_12_7(v365);
  if (v210)
  {
    sub_1D4E50004(v365, &qword_1EC7ECD48, &qword_1D56429E0);
    v317 = 1;
    v318 = v356;
  }

  else
  {
    sub_1D4F39AB0(v365 + v205[10], v340, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v365, v319);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_1(v340);
    v318 = v356;
    if (v320)
    {
      sub_1D4E50004(v340, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v317 = 1;
    }

    else
    {
      v321 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v368, v322, v323, v321);
      sub_1D5613C48();
      OUTLINED_FUNCTION_46_20();
      sub_1D51F0C00(v324, v325);
      OUTLINED_FUNCTION_83_12();
      sub_1D5612368();
      sub_1D4E50004(v368, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v327 = *(v326 + 8);
      v328 = OUTLINED_FUNCTION_134_0();
      v329(v328);
      v317 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v318, v317, 1, v352);
  OUTLINED_FUNCTION_61_2(&v380);
  sub_1D4E68940(v318, v330, v331, v332);
  v381[0] = v373[0];
  v381[1] = sub_1D51F0C00(&qword_1EDD54EF0, type metadata accessor for UserProfilePropertyProvider);
  __swift_allocate_boxed_opaque_existential_0(v379);
  sub_1D51F9CA8();
  UserProfile.init(propertyProvider:)(v379, v357);

  OUTLINED_FUNCTION_24_0(v300);
  (*(v333 + 8))(v301, v300);
  OUTLINED_FUNCTION_24_0(v372);
  (*(v334 + 8))(v358);
  sub_1D51F9CFC(v204, type metadata accessor for CloudUserProfile);
  (*(v354 + 8))(v353, v355);
  v335 = OUTLINED_FUNCTION_134_0();
  sub_1D51F9CFC(v335, v336);
  OUTLINED_FUNCTION_46();
}

void UserProfile.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v1;
  v272 = v4;
  v296 = v5;
  v297 = v6;
  v279 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = sub_1D5610088();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v277 = sub_1D5612B78();
  v28 = OUTLINED_FUNCTION_4(v277);
  v276 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v286 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v274 = type metadata accessor for CloudUserProfile(v33);
  v34 = OUTLINED_FUNCTION_14(v274);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v285 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v283 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D5613578();
  v52 = OUTLINED_FUNCTION_4(v51);
  v294 = v53;
  v295 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v293 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v58 = OUTLINED_FUNCTION_22(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_91_13();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_135();
  v290 = v76;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_2();
  v291 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_135();
  v289 = v87;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_135();
  v292 = v89;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_135();
  v298 = v91;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  v300 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  v100 = v258 - v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v101);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_38_2();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_3();
  v284 = v109;
  v110 = OUTLINED_FUNCTION_70_0();
  v111 = type metadata accessor for CloudUserProfile.Attributes(v110);
  v112 = OUTLINED_FUNCTION_14(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_0();
  v288 = v115;
  if (qword_1EDD54140 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
  v116 = sub_1D51F0C00(&qword_1EDD57E88, type metadata accessor for UserProfile);
  sub_1D51F0C00(&qword_1EDD57E78, type metadata accessor for UserProfile);
  OUTLINED_FUNCTION_29_37();
  if (v301)
  {
    v117 = v301;
  }

  else
  {
    v117 = MEMORY[0x1E69E7CC0];
  }

  v271 = sub_1D51EFFF0(v117);

  if (qword_1EDD54088 != -1)
  {
    swift_once();
  }

  v118 = sub_1D56140F8();
  OUTLINED_FUNCTION_29_37();
  v119 = OUTLINED_FUNCTION_52_22();
  OUTLINED_FUNCTION_57(v119, v120, v118);
  if (v121)
  {
    sub_1D4E50004(v2, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v122 = v284;
  }

  else
  {
    v122 = v284;
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v118);
    (*(v123 + 8))(v2, v118);
  }

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_24_8(v122, v125, v126, v124);
  if (qword_1EDD540D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v127 = v301;
  if (qword_1EDD540B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v270 = v301;
  v269 = v302;
  if (qword_1EDD54098 != -1)
  {
    swift_once();
  }

  v299 = v100;
  v287 = v0;
  OUTLINED_FUNCTION_18_55();
  v268 = v301;
  v267 = v302;
  if (qword_1EDD54050 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v128 = v301;
  if (qword_1EDD54158 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v266 = v301;
  if (qword_1EDD54150 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v129 = v301;
  if (qword_1EDD540E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v130 = v301;
  if (qword_1EDD540C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v131 = v301;
  if (qword_1EDD540C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v132 = v127 & 1;
  v261 = v128 & 1;
  v262 = v266 & 1;
  v263 = v129 & 1;
  v264 = v130 & 1;
  v265 = v131 & 1;
  v266 = v301 & 1;
  if (qword_1EDD540A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55();
  v133 = v301;
  v134 = v302;
  if (qword_1EC7E9148 != -1)
  {
    swift_once();
  }

  v135 = v111[16];
  sub_1D560C0A8();
  v136 = v288;
  OUTLINED_FUNCTION_29_37();
  *v136 = v271;
  sub_1D4F39A1C(v284, v136 + v111[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v136 + v111[6]) = v132;
  v137 = v136 + v111[7];
  *v137 = v270;
  v137[8] = v269;
  v138 = (v136 + v111[8]);
  v139 = v267;
  *v138 = v268;
  v138[1] = v139;
  OUTLINED_FUNCTION_77_9(v111[9]);
  OUTLINED_FUNCTION_77_9(v111[10]);
  OUTLINED_FUNCTION_77_9(v111[11]);
  OUTLINED_FUNCTION_77_9(v111[12]);
  OUTLINED_FUNCTION_77_9(v111[13]);
  OUTLINED_FUNCTION_77_9(v111[14]);
  v140 = (v136 + v111[15]);
  *v140 = v133;
  v140[1] = v134;
  v141 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v141);
  if (qword_1EDD54070 != -1)
  {
    swift_once();
  }

  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_29_37();
  v146 = v287;
  if (qword_1EDD54058 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37();
  if (qword_1EDD54120 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37();
  if (qword_1EDD540F8 != -1)
  {
    swift_once();
  }

  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_29_37();
  if (qword_1EDD54130 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37();
  if (qword_1EDD54168 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37();
  if (qword_1EDD54040 != -1)
  {
    swift_once();
  }

  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_29_37();
  OUTLINED_FUNCTION_12_7(v300);
  if (!v121 || (OUTLINED_FUNCTION_12_7(v298), !v121) || (OUTLINED_FUNCTION_12_7(v292), !v121) || (OUTLINED_FUNCTION_57(v291, 1, v147), !v121) || (OUTLINED_FUNCTION_57(v290, 1, v147), !v121) || (OUTLINED_FUNCTION_12_7(v289), !v121) || (OUTLINED_FUNCTION_57(v146, 1, v284), !v121))
  {
    v271 = v147;
    v148 = v141;
    v149 = v258[0];
    sub_1D4F39AB0(v300, v258[0], &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_12_7(v149);
    if (v121)
    {
      sub_1D4E50004(v149, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v150, v116);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v151, v116);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v152);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v153(v116);
      OUTLINED_FUNCTION_24_0(v145);
      (*(v154 + 8))(v149, v145);
    }

    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v155);
    OUTLINED_FUNCTION_74_15(&v284);
    sub_1D4F39AB0(v156, v157, v158, v159);
    OUTLINED_FUNCTION_12_7(v134);
    v160 = v148;
    if (v121)
    {
      sub_1D4E50004(v134, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v161, v116);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v162, v116);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v163);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v164(v116);
      OUTLINED_FUNCTION_24_0(v145);
      (*(v165 + 8))(v134, v145);
    }

    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v166);
    OUTLINED_FUNCTION_74_15(&v285);
    sub_1D4F39AB0(v167, v168, v169, v170);
    OUTLINED_FUNCTION_12_7(v134);
    v171 = v271;
    if (v121)
    {
      sub_1D4E50004(v134, &qword_1EC7EA778, &qword_1D5622E60);
      v176 = v281;
    }

    else
    {
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v172, v116);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v173, v116);
      v174 = v293;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v175);
      v176 = v281;
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v177(v174);
      OUTLINED_FUNCTION_24_0(v145);
      (*(v178 + 8))(v134, v145);
    }

    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_24_8(v176, v180, v181, v179);
    OUTLINED_FUNCTION_74_15(&v286);
    sub_1D4F39AB0(v182, v183, v184, v185);
    v186 = OUTLINED_FUNCTION_52_22();
    OUTLINED_FUNCTION_57(v186, v187, v171);
    if (v121)
    {
      sub_1D4E50004(v134, &qword_1EC7EB620, &unk_1D561E5B0);
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      v176 = sub_1D51F0C00(v188, v189);
      v190 = v293;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v191);
      OUTLINED_FUNCTION_101_6();
      OUTLINED_FUNCTION_75_15();
      v192(v190);
      OUTLINED_FUNCTION_24_0(v171);
      (*(v193 + 8))(v134, v171);
    }

    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_51_23(v194);
    OUTLINED_FUNCTION_74_15(&v287);
    sub_1D4F39AB0(v195, v196, v197, v198);
    v199 = OUTLINED_FUNCTION_52_22();
    OUTLINED_FUNCTION_57(v199, v200, v171);
    if (v121)
    {
      sub_1D4E50004(v134, &qword_1EC7EB620, &unk_1D561E5B0);
      v205 = v259;
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      v176 = sub_1D51F0C00(v201, v202);
      v203 = v293;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v204);
      v205 = v259;
      OUTLINED_FUNCTION_101_6();
      OUTLINED_FUNCTION_75_15();
      v206(v203);
      OUTLINED_FUNCTION_24_0(v171);
      (*(v207 + 8))(v134, v171);
    }

    v208 = v258[5];
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_24_8(v205, v210, v211, v209);
    sub_1D4F39AB0(v289, v208, &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_12_7(v208);
    if (v121)
    {
      sub_1D4E50004(v208, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v212, v176);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v213, v176);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v214);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v215(v176);
      OUTLINED_FUNCTION_24_0(v145);
      (*(v216 + 8))(v208, v145);
    }

    v217 = v260;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v218);
    OUTLINED_FUNCTION_74_15(&v290);
    sub_1D4F39AB0(v219, v220, v221, v222);
    v223 = OUTLINED_FUNCTION_52_22();
    v224 = v284;
    OUTLINED_FUNCTION_57(v223, v225, v284);
    v226 = v3;
    if (v121)
    {
      v232 = v299;
      sub_1D4E50004(v299, &qword_1EC7ECD48, &qword_1D56429E0);
      sub_1D4E50004(v208, &qword_1EC7EA788, &unk_1D56223A0);
    }

    else
    {
      sub_1D5613C48();
      OUTLINED_FUNCTION_46_20();
      sub_1D51F0C00(v227, v228);
      v229 = v293;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v230);
      sub_1D560DA98();
      (*(v294 + 8))(v229, v295);
      v231 = v224;
      v232 = v299;
      sub_1D4E50004(v299, &qword_1EC7ECD48, &qword_1D56429E0);
      OUTLINED_FUNCTION_24_0(v231);
      (*(v233 + 8))(v208, v231);
    }

    v234 = v281;
    v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v217, v236, v237, v235);
    OUTLINED_FUNCTION_74_15(&v289);
    OUTLINED_FUNCTION_118_9(v238, v239);
    OUTLINED_FUNCTION_118_9(v280, v208 + v160[5]);
    OUTLINED_FUNCTION_118_9(v234, v208 + v160[6]);
    sub_1D4F39A1C(v283, v208 + v160[7], &qword_1EC7ECD18, &qword_1D5631040);
    sub_1D4F39A1C(v205, v208 + v160[8], &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_118_9(v282, v208 + v160[9]);
    sub_1D4F39A1C(v217, v208 + v160[10], &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_storeEnumTagSinglePayload(v208, 0, 1, v160);
    sub_1D4F39A1C(v208, v232, &qword_1EC7ECD48, &qword_1D56429E0);
    v3 = v226;
  }

  v240 = *v3;
  v241 = v3[1];
  v242 = v274;
  v243 = v274[5];
  OUTLINED_FUNCTION_47_28();
  v297 = v244;
  v245 = v275;
  sub_1D51F9CA8();
  sub_1D4F39AB0(v299, v245 + v242[6], &qword_1EC7ECD48, &qword_1D56429E0);
  *v245 = v240;
  v245[1] = v241;
  *(v245 + v242[7]) = 1;
  *(v245 + v242[8]) = 1;
  LODWORD(v240) = *(type metadata accessor for UserProfile() + 20);

  v246 = v273;
  sub_1D5611A28();
  v247 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v246, 0, 1, v247);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v248, v249, v250, v251);
  v252 = v286;
  OUTLINED_FUNCTION_109();
  sub_1D5612B38();
  v296 = type metadata accessor for CloudUserProfile;
  sub_1D51F9CA8();
  sub_1D5611A98();
  v253 = sub_1D5611A88();
  v294 = v254;
  v295 = v253;
  v255 = v276;
  v256 = v278;
  v257 = v277;
  (*(v276 + 16))(v278, v252, v277);
  __swift_storeEnumTagSinglePayload(v256, 0, 1, v257);
  v293 = sub_1D5611A38();
  v284 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D51F0C00(&qword_1EDD56D18, type metadata accessor for CloudUserProfile);
  sub_1D5610628();
  (*(v255 + 8))(v286, v257);
  sub_1D51F9CFC(v245, v296);
  sub_1D4E50004(v299, &qword_1EC7ECD48, &qword_1D56429E0);
  sub_1D51F9CFC(v288, v297);
  OUTLINED_FUNCTION_119_1(v300);
  sub_1D4E50004(v287, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_119_1(v289);
  sub_1D4E50004(v290, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v291, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_119_1(v292);
  OUTLINED_FUNCTION_119_1(v298);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F9964()
{
  sub_1D51F0C00(&qword_1EDD57E80, type metadata accessor for UserProfile);

  return sub_1D5612668();
}

uint64_t sub_1D51F99D0(uint64_t a1)
{
  v2 = sub_1D51F0C00(&qword_1EC7F1CD0, type metadata accessor for UserProfile);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D51F9A3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D51F9AC8()
{
  result = qword_1EC7F1BE0;
  if (!qword_1EC7F1BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D4F36DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BE0);
  }

  return result;
}

unint64_t sub_1D51F9B4C()
{
  result = qword_1EDD56DF8;
  if (!qword_1EDD56DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DF8);
  }

  return result;
}

unint64_t sub_1D51F9BA0()
{
  result = qword_1EC7F1BF0;
  if (!qword_1EC7F1BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D5158964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BF0);
  }

  return result;
}

unint64_t sub_1D51F9C24()
{
  result = qword_1EDD530C8;
  if (!qword_1EDD530C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D5157370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD530C8);
  }

  return result;
}

uint64_t sub_1D51F9CA8()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D51F9CFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D51F9D54()
{
  result = qword_1EC7F1C08;
  if (!qword_1EC7F1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C08);
  }

  return result;
}

unint64_t sub_1D51F9DA8()
{
  result = qword_1EC7F1C18;
  if (!qword_1EC7F1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C18);
  }

  return result;
}

unint64_t sub_1D51F9E1C()
{
  result = qword_1EDD56E38[0];
  if (!qword_1EDD56E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56E38);
  }

  return result;
}

unint64_t sub_1D51F9E70()
{
  result = qword_1EC7F1C40;
  if (!qword_1EC7F1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C40);
  }

  return result;
}

unint64_t sub_1D51F9EC4()
{
  result = qword_1EC7F1C48;
  if (!qword_1EC7F1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C48);
  }

  return result;
}

uint64_t sub_1D51F9F18()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}