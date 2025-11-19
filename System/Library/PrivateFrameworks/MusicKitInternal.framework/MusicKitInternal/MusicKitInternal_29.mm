uint64_t sub_1D50ED834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v36 = a1;
  v37 = a2;
  v8 = sub_1D560CD48();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for StorePlatformPlaylistEntry();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  v27 = sub_1D5613D28();
  v35 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v27);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0();
    if (v29)
    {
      sub_1D50EF020(*(a3 + 56) + *(v17 + 72) * result, v24, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF0FC(v24, v26, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF020(v26, v21, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v32 + 16))(v11, v33, v8);
      v30 = v34;

      sub_1D50DD78C(v21, v11, v30, v15);
      sub_1D50EF07C(v26, type metadata accessor for StorePlatformPlaylistEntry);
      v31 = v35;
      sub_1D4E50004(v35, &qword_1EC7EA888, &qword_1D563B8C0);
      return sub_1D4F39A1C(v15, v31, &qword_1EC7EA888, &qword_1D563B8C0);
    }
  }

  return result;
}

uint64_t sub_1D50EDB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a3;
  v150 = a2;
  v148 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v119 - v7;
  v8 = sub_1D56109D8();
  v145 = *(v8 - 8);
  v146 = v8;
  v9 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v142 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F0, &qword_1D56299E8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v140 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v136 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v133 = &v119 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v135 = &v119 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v132 = &v119 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v123 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v130 = &v119 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v139 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v131 = &v119 - v44;
  v122 = sub_1D560FD08();
  v121 = *(v122 - 8);
  v45 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v119 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v128 = &v119 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0E8, &qword_1D56299E0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v129 = &v119 - v52;
  v53 = sub_1D5610088();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v126 = &v119 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D560D9A8();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v119 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D560D838();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v119 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D5612638();
  v137 = *(v66 - 8);
  v138 = v66;
  v67 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v127 = &v119 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D958();
  if (qword_1EC7E9810 != -1)
  {
    swift_once();
  }

  v69 = __swift_project_value_buffer(v53, qword_1EC87C750);
  v134 = type metadata accessor for StorePlatformStation();
  v70 = (a1 + *(v134 + 40));
  v71 = *v70;
  v72 = v70[1];
  v125 = v65;
  sub_1D54301F4(v69, v61, v71, v72, v65);
  (*(v58 + 8))(v61, v57);
  (*(v54 + 16))(v126, v69, v53);
  v124 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v73 = v127;
  sub_1D5612578();
  v74 = v128;
  sub_1D4F39AB0(a1, v128, &qword_1EC7EFC70, &unk_1D56766B0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC78, &qword_1D5634768);
  v76 = v73;
  if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
  {
    sub_1D4E50004(v74, &qword_1EC7EFC70, &unk_1D56766B0);
    v77 = sub_1D56143E8();
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v77);
  }

  else
  {
    v78 = v120;
    sub_1D5610708();
    (*(*(v75 - 8) + 8))(v74, v75);
    sub_1D560FCF8();
    (*(v121 + 8))(v78, v122);
  }

  v79 = v131;
  v80 = v130;
  sub_1D5612618();
  v81 = v134;
  sub_1D4F39AB0(a1 + *(v134 + 20), v80, &qword_1EC7EB5B8, &unk_1D56206A0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v82);
  v85 = v135;
  v84 = v136;
  v86 = v133;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v80, &qword_1EC7EB5B8, &unk_1D56206A0);
    v87 = 1;
  }

  else
  {
    sub_1D5610758();
    (*(*(v82 - 8) + 8))(v80, v82);
    v87 = 0;
  }

  v88 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v79, v87, 1, v88);
  sub_1D5612628();
  v89 = *(a1 + v81[6]);
  if (v89)
  {
    sub_1D5386528(v89, v132);
  }

  else
  {
    v90 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v90);
  }

  sub_1D5612558();
  v91 = *(a1 + v81[8]);

  sub_1D56125B8();
  sub_1D4F39AB0(a1 + v81[12], v86, &qword_1EC7EC960, &unk_1D56334C0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v86, 1, v92) == 1)
  {
    sub_1D4E50004(v86, &qword_1EC7EC960, &unk_1D56334C0);
    v93 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v92 - 8) + 8))(v86, v92);
    v93 = 0;
  }

  v94 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v85, v93, 1, v94);
  sub_1D5612588();
  v95 = *(a1 + v81[9]);

  sub_1D56125C8();
  sub_1D4F39AB0(a1 + v81[7], v84, &qword_1EC7EFC68, &qword_1D5634760);
  v96 = sub_1D560FD88();
  if (__swift_getEnumTagSinglePayload(v84, 1, v96) == 1)
  {
    sub_1D4E50004(v84, &qword_1EC7EFC68, &qword_1D5634760);
  }

  else
  {
    sub_1D560FD78();
    (*(*(v96 - 8) + 8))(v84, v96);
  }

  sub_1D5612568();
  v97 = *(a1 + v81[11]);
  sub_1D5612608();
  v98 = a1 + v81[14];
  v99 = *v98;
  v100 = *(v98 + 8);
  v101 = v141;
  sub_1D4F39AB0(a1 + v81[15], v141, &qword_1EC7EFC60, &unk_1D5634750);
  sub_1D50F1ADC(v99, v100, v101, v140);
  sub_1D56125E8();
  v102 = v142;
  sub_1D4F39AB0(a1 + v81[16], v142, &qword_1EC7EFBD0, &qword_1D5634650);
  v103 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v102, 1, v103) == 1)
  {
    v104 = &qword_1EC7EFBD0;
    v105 = &qword_1D5634650;
    v106 = v102;
  }

  else
  {
    v107 = v123;
    sub_1D4F39AB0(v102, v123, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v102, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v107, 1, v82) != 1)
    {
      v109 = v139;
      sub_1D5610758();
      (*(*(v82 - 8) + 8))(v107, v82);
      v108 = 0;
      goto LABEL_24;
    }

    v104 = &qword_1EC7EB5B8;
    v105 = &unk_1D56206A0;
    v106 = v107;
  }

  sub_1D4E50004(v106, v104, v105);
  v108 = 1;
  v109 = v139;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v109, v108, 1, v88);
  sub_1D56125A8();
  v110 = (a1 + v81[13]);
  v111 = *v110;
  v112 = v110[1];

  sub_1D56125F8();
  v113 = v144;
  sub_1D56109B8();
  sub_1D50E8048(v143);
  (*(v145 + 8))(v113, v146);
  sub_1D5612598();
  sub_1D4F39AB0(a1 + v81[17], v147, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56125D8();
  v114 = v138;
  v151[3] = v138;
  v151[4] = MEMORY[0x1E6976500];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v151);
  v116 = v137;
  (*(v137 + 16))(boxed_opaque_existential_0, v76, v114);
  sub_1D5614288();

  v117 = sub_1D560CD48();
  (*(*(v117 - 8) + 8))(v150, v117);
  (*(v116 + 8))(v76, v114);
  return sub_1D50EF07C(a1, type metadata accessor for StorePlatformStation);
}

uint64_t sub_1D50EEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v38 = a1;
  v39 = a2;
  v8 = sub_1D560CD48();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v32 - v14);
  v16 = type metadata accessor for StorePlatformTVEpisode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = (&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  v27 = type metadata accessor for TVEpisode();
  v37 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v27);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0();
    if (v29)
    {
      sub_1D50EF020(*(a3 + 56) + *(v17 + 72) * result, v24, type metadata accessor for StorePlatformTVEpisode);
      sub_1D50EF0FC(v24, v26, type metadata accessor for StorePlatformTVEpisode);
      sub_1D50EF020(v26, v21, type metadata accessor for StorePlatformTVEpisode);
      (*(v33 + 16))(v11, v35, v34);
      v30 = v36;

      sub_1D50DA260(v21, v11, v30, v15);
      sub_1D50EF07C(v26, type metadata accessor for StorePlatformTVEpisode);
      v31 = v37;
      sub_1D4E50004(v37, &qword_1EC7EA880, &unk_1D561CEE0);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v27);
      return sub_1D4F39A1C(v15, v31, &qword_1EC7EA880, &unk_1D561CEE0);
    }
  }

  return result;
}

uint64_t sub_1D50EEF84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D50EEFD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D50EF020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D50EF07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50EF0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_34_25()
{
  v2 = *v0;
  v3 = *(v1 - 120);
  result = *(v1 - 112);
  v5 = *(v1 - 128);
  return result;
}

uint64_t static MusicCollaborativePlaylist.Error.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7EFCA8 = a1;
}

uint64_t sub_1D50EF2A4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7EFCA8;
}

uint64_t sub_1D50EF2F4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7EFCA8 = v1;
}

uint64_t MusicCollaborativePlaylist.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D50EF3E0@<X0>(uint64_t *a1@<X8>)
{
  result = static MusicCollaborativePlaylist.Error.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D50EF414()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicCollaborativePlaylist.Error.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D50EF460()
{
  result = qword_1EC7EFCB0;
  if (!qword_1EC7EFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFCB8, &qword_1D56347E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFCB0);
  }

  return result;
}

unint64_t sub_1D50EF4C8()
{
  result = qword_1EC7EFCC0;
  if (!qword_1EC7EFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFCC0);
  }

  return result;
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicLibrary.supportedStatus<A, B>(for:action:)@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X8>)
{
  v263 = a5;
  v269 = a2;
  v273 = a1;
  v259 = a7;
  v253 = 0;
  v242 = a6;
  v9 = type metadata accessor for MusicLibrary.SupportedStatus();
  v10 = OUTLINED_FUNCTION_4(v9);
  v256 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v15);
  v260 = v16;
  v268 = sub_1D56158D8();
  v17 = OUTLINED_FUNCTION_4(v268);
  v267 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
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
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v37);
  OUTLINED_FUNCTION_1_0();
  v262 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v44);
  v261 = a4;
  v272 = *(a4 - 8);
  v45 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = sub_1D560DB08();
  v52 = OUTLINED_FUNCTION_4(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v240 - v58;
  v60 = sub_1D560E728();
  v61 = OUTLINED_FUNCTION_4(v60);
  v270 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v240 - v66;
  v68 = sub_1D560D838();
  v69 = OUTLINED_FUNCTION_4(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  v74 = MEMORY[0x1EEE9AC00](v69);
  v76 = &v240 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v240 - v77;
  v79 = *(v263 + 8);
  v274 = a3;
  v247 = v79;
  sub_1D560EC98();
  sub_1D560D588();
  v81 = *(v71 + 8);
  v80 = (v71 + 8);
  v248 = v68;
  v246 = v81;
  v81(v78, v68);
  v82 = *MEMORY[0x1E6975040];
  v271 = v54;
  isa = v54[13].isa;
  v83 = v54 + 13;
  v85 = v51;
  v245 = isa;
  (isa)(v59, v82, v51);
  v244 = sub_1D50F1358();
  v86 = sub_1D5614FC8();
  if (v86 == 2)
  {
    MEMORY[0x1EEE9AC00](v86);
    *(&v240 - 2) = v59;
    sub_1D4F257A8();
  }

  v87 = v86;
  v88 = *(v270 + 8);
  v270 += 8;
  v253 = v88;
  (v88)(v67, v60);
  v89 = v271 + 8;
  v90 = *(v271 + 8);
  v271 += 8;
  v90(v59, v51);
  if ((v87 & 1) == 0)
  {
    sub_1D560EC98();
    v91 = v249;
    sub_1D560D588();
    v87 = v91;
    v246(v76, v248);
    v92 = *MEMORY[0x1E6975030];
    v93 = OUTLINED_FUNCTION_21_31(v277);
    v245(v93);
    v94 = sub_1D5614FC8();
    if (v94 == 2)
    {
      v80 = &v240;
      MEMORY[0x1EEE9AC00](v94);
      *(&v240 - 2) = v89;
      sub_1D4F257A8();
    }

    v85 = v94;
    (v253)(v87, v60);
    v90(v89, v51);
    if ((v85 & 1) == 0)
    {
      if (qword_1EDD5D8A8 != -1)
      {
        swift_once();
      }

      v95 = sub_1D560C758();
      __swift_project_value_buffer(v95, qword_1EDD76DC8);
      v60 = v272;
      v96 = *(v272 + 16);
      v97 = v243;
      OUTLINED_FUNCTION_17_37();
      v98();
      v99 = v262;
      v76 = (v262 + 16);
      v83 = *(v262 + 16);
      v100 = OUTLINED_FUNCTION_21_31(&v272);
      v101 = v274;
      (v83)(v100, v273, v274);
      v85 = sub_1D560C738();
      v87 = sub_1D56156C8();
      if (os_log_type_enabled(v85, v87))
      {
        v102 = swift_slowAlloc();
        LODWORD(v270) = v87;
        v87 = v102;
        v271 = swift_slowAlloc();
        v278 = v271;
        *v87 = 136446466;
        swift_getDynamicType();
        v103 = sub_1D5616458();
        v253 = v85;
        v104 = v89;
        v89 = v103;
        v105 = v60;
        v60 = v106;
        (*(v105 + 8))(v97, v80);
        OUTLINED_FUNCTION_12_42();
        OUTLINED_FUNCTION_19_38();
        *(v87 + 4) = v89;
        *(v87 + 12) = 2082;
        v107 = OUTLINED_FUNCTION_21_31(&v278);
        (v83)(v107, v104, v101);
        sub_1D5614DB8();
        OUTLINED_FUNCTION_22_34();
        (*(v99 + 8))(v104, v101);
        OUTLINED_FUNCTION_12_42();
        OUTLINED_FUNCTION_19_38();
        *(v87 + 14) = v89;
        v108 = v253;
        _os_log_impl(&dword_1D4E3F000, v253, v270, "The correct supported status for action %{public}s cannot be guaranteed as the input item %{public}s has not been mapped.", v87, 0x16u);
        v85 = v271;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {

        (*(v99 + 8))(v89, v101);
        (*(v60 + 8))(v97, v80);
      }
    }
  }

  v109 = OUTLINED_FUNCTION_21_31(&v282);
  OUTLINED_FUNCTION_28_31(v109, 1);
  v110 = v272;
  v270 = *(v272 + 16);
  v271 = v272 + 16;
  v111 = v257;
  OUTLINED_FUNCTION_17_37();
  v112();
  if (OUTLINED_FUNCTION_7_53())
  {
    v113 = OUTLINED_FUNCTION_1_77();
    sub_1D518BB70(v113, v114, v115);
    OUTLINED_FUNCTION_23_35();
    v116 = OUTLINED_FUNCTION_14_41();
    v117(v116);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD40, &qword_1D5634948);
    OUTLINED_FUNCTION_10_52();
    v60 = v250;
    v118 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v60, v118 ^ 1u, 1, v76);
    v119 = OUTLINED_FUNCTION_15_42();
    v120(v119, v60, v87);
    OUTLINED_FUNCTION_26_34();
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_53();
  v87 = v268;
  v85 = v267;
  OUTLINED_FUNCTION_26_34();
  if (v121)
  {
    OUTLINED_FUNCTION_2_66();
    sub_1D55CD628(v122, v123, v124, v125, v126);
    v127 = OUTLINED_FUNCTION_0_84();
    v128(v127);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD38, &qword_1D5634940);
    OUTLINED_FUNCTION_10_52();
    v129 = &v273;
LABEL_40:
    v207 = *(v129 - 32);
    v208 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v207, v208 ^ 1u, 1, v76);
    v209 = OUTLINED_FUNCTION_15_42();
    v210(v209, v207, v87);
    goto LABEL_41;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v130 = OUTLINED_FUNCTION_1_77();
    sub_1D52FD1D0(v130, v131, v132);
    v133 = OUTLINED_FUNCTION_0_84();
    v134(v133);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD30, &qword_1D5634938);
    OUTLINED_FUNCTION_10_52();
    v129 = &v270;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v135 = OUTLINED_FUNCTION_1_77();
    sub_1D538BE54(v135, v136, v137, v138, v139);
    v140 = OUTLINED_FUNCTION_0_84();
    v141(v140);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD28, &qword_1D5634930);
    OUTLINED_FUNCTION_10_52();
    v129 = &v269;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v142 = OUTLINED_FUNCTION_1_77();
    sub_1D5026D84(v142, v143, v144, v145, v146);
    v147 = OUTLINED_FUNCTION_0_84();
    v148(v147);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD20, &qword_1D5634928);
    OUTLINED_FUNCTION_10_52();
    v129 = &v268;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v149 = OUTLINED_FUNCTION_1_77();
    sub_1D52E56C4(v149, v150, v151, v152, v153);
    v154 = OUTLINED_FUNCTION_0_84();
    v155(v154);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD18, &qword_1D5634920);
    OUTLINED_FUNCTION_10_52();
    v129 = &v267;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v156 = OUTLINED_FUNCTION_1_77();
    sub_1D5441D5C(v156, v157, v158, v159);
    v160 = OUTLINED_FUNCTION_0_84();
    v161(v160);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD10, &qword_1D5634918);
    OUTLINED_FUNCTION_10_52();
    v129 = &v266;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v162 = OUTLINED_FUNCTION_1_77();
    sub_1D526E550(v162, v163, v164, v165);
    v166 = OUTLINED_FUNCTION_0_84();
    v167(v166);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD08, &qword_1D5634910);
    OUTLINED_FUNCTION_10_52();
    v129 = &v265;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v168 = OUTLINED_FUNCTION_1_77();
    sub_1D51D9D00(v168, v169, v170, v171);
    v172 = OUTLINED_FUNCTION_0_84();
    v173(v172);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD00, &qword_1D5634908);
    OUTLINED_FUNCTION_10_52();
    v129 = &v264;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v174 = OUTLINED_FUNCTION_1_77();
    sub_1D50CE428(v174, v175, v176, v177, v178);
    v179 = OUTLINED_FUNCTION_0_84();
    v180(v179);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCF8, &qword_1D5634900);
    OUTLINED_FUNCTION_10_52();
    v129 = &v263;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v181 = OUTLINED_FUNCTION_1_77();
    sub_1D5233CE8(v181, v182, v183, v184, v185);
    v186 = OUTLINED_FUNCTION_0_84();
    v187(v186);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCF0, &qword_1D56348F8);
    OUTLINED_FUNCTION_10_52();
    v129 = &v262;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v188 = OUTLINED_FUNCTION_1_77();
    sub_1D517CB0C(v188, v189, v190, v191, v192);
    v193 = OUTLINED_FUNCTION_0_84();
    v194(v193);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCE8, &qword_1D56348F0);
    OUTLINED_FUNCTION_10_52();
    v129 = &v261;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    LOBYTE(v281[0]) = v278;
    OUTLINED_FUNCTION_2_66();
    sub_1D50FF574(v195, v196, v197, v198, v199);
    v87 = v268;
    v200 = OUTLINED_FUNCTION_0_84();
    v201(v200);
    LOBYTE(v281[0]) = v275[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCE0, &qword_1D56348E8);
    v129 = &v260;
    goto LABEL_40;
  }

  if (OUTLINED_FUNCTION_7_53())
  {
    v202 = OUTLINED_FUNCTION_1_77();
    sub_1D53A6120(v202, v203, v204);
    v205 = OUTLINED_FUNCTION_0_84();
    v206(v205);
    OUTLINED_FUNCTION_9_52();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCD8, &qword_1D56348E0);
    OUTLINED_FUNCTION_10_52();
    v129 = &v257;
    goto LABEL_40;
  }

  v281[3] = sub_1D560F0D8();
  v85 = v254;
  v281[0] = v254;
  sub_1D4E5194C(v281, v277);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFCC8, &qword_1D56348D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_52;
  }

  sub_1D4E48324(v275, &v278);
  v87 = *__swift_project_boxed_opaque_existential_1(&v278, v280);
  v234 = v241;
  sub_1D50F0C7C(v273, v269, v274, v80, v241);
  OUTLINED_FUNCTION_23_35();
  v89 = v266;
  v235 = OUTLINED_FUNCTION_14_41();
  v236(v235);
  OUTLINED_FUNCTION_28_31(v234, 0);
  v237 = OUTLINED_FUNCTION_15_42();
  v238(v237, v234, v87);
  __swift_destroy_boxed_opaque_existential_1(&v278);
  __swift_destroy_boxed_opaque_existential_1(v281);
  v83 = v259;
  v110 = v272;
  v60 = v258;
  v111 = v257;
LABEL_41:
  v213 = *(v110 + 8);
  v211 = v110 + 8;
  v212 = v213;
  v213(v111, v80);
  (*(v85 + 16))(v60, v89, v87);
  if (__swift_getEnumTagSinglePayload(v60, 1, v76) == 1)
  {
    (v263)(v60, v87);
    v278 = 0;
    v279 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5684160);
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D5684190);
    OUTLINED_FUNCTION_6_3();
    for (i = 91; ; i = 86)
    {
      v240 = i;
      OUTLINED_FUNCTION_27_28();
      __break(1u);
LABEL_52:
      v276 = 0;
      memset(v275, 0, sizeof(v275));
      sub_1D4E6C9CC(v275, &qword_1EC7EFCD0, &qword_1D56348D8);
      v278 = 0;
      v279 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5684140);
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      OUTLINED_FUNCTION_6_3();
    }
  }

  v260 = v212;
  v272 = v211;
  v214 = v256;
  (*(v256 + 32))(v83, v60, v76);
  if (qword_1EDD54468 != -1)
  {
    swift_once();
  }

  v215 = sub_1D560C758();
  __swift_project_value_buffer(v215, qword_1EDD76A78);
  v216 = v214 + 16;
  v217 = *(v214 + 16);
  v218 = v255;
  v217(v255, v83, v76);
  OUTLINED_FUNCTION_16_41();
  v219();
  v220 = v262;
  v221 = v273;
  v273 = *(v262 + 16);
  v273(v265, v221, v274);
  v222 = sub_1D560C738();
  v223 = sub_1D56156E8();
  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    v259 = v222;
    v225 = v224;
    v226 = swift_slowAlloc();
    LODWORD(v258) = v223;
    v269 = v226;
    v278 = v226;
    *v225 = 136446722;
    v217(v251, v218, v76);
    sub_1D5614DB8();
    OUTLINED_FUNCTION_22_34();
    (*(v214 + 8))(v218, v76);
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_19_38();
    *(v225 + 4) = v216;
    *(v225 + 12) = 2082;
    OUTLINED_FUNCTION_16_41();
    v227();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_22_34();
    OUTLINED_FUNCTION_25_35();
    v228();
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_19_38();
    *(v225 + 14) = v216;
    *(v225 + 22) = 2082;
    v229 = v265;
    v230 = v274;
    v273(v252, v265, v274);
    sub_1D5614DB8();
    OUTLINED_FUNCTION_22_34();
    (*(v262 + 8))(v229, v230);
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_19_38();
    *(v225 + 24) = v216;
    v231 = v259;
    _os_log_impl(&dword_1D4E3F000, v259, v258, "Returning supported status: .%{public}s for action: %{public}s and item: %{public}s", v225, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    (*(v220 + 8))(v265, v274);
    OUTLINED_FUNCTION_25_35();
    v232();
    (*(v214 + 8))(v218, v76);
  }

  return (v263)(v266, v268);
}

uint64_t sub_1D50F0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v62 = a1;
  v67 = a5;
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v60 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicLibrary.SupportedStatus();
  v65 = sub_1D56158D8();
  v24 = OUTLINED_FUNCTION_4(v65);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v64 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v61 = v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v59 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = v59 - v36;
  __swift_storeEnumTagSinglePayload(v59 - v36, 1, 1, v23);
  v66 = v17;
  v38 = *(v17 + 16);
  v59[1] = a2;
  v38(v22, a2, a4);
  if (!swift_dynamicCast())
  {
    v46 = v62;
    v45 = v63;
    if (!swift_dynamicCast())
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1D5615B68();
      OUTLINED_FUNCTION_11_50();
      MEMORY[0x1DA6EAC70](v57 | 2, v58 | 0x8000000000000000);
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      OUTLINED_FUNCTION_6_3();
      v56 = 130;
LABEL_12:
      v59[0] = v56;
      goto LABEL_14;
    }

    v47 = *(v8 + 16);
    v39 = v8 + 16;
    v47(v60, v46, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (!swift_dynamicCast())
    {
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      sub_1D4E6C9CC(&v69, &qword_1EC7EC548, &qword_1D5621090);
      OUTLINED_FUNCTION_11_50();
      OUTLINED_FUNCTION_6_3();
      v59[0] = 125;
      goto LABEL_14;
    }

    sub_1D4E48324(&v69, &v72);
    v41 = v74;
    v48 = v75;
    __swift_project_boxed_opaque_existential_1(&v72, v74);
    sub_1D4F5636C(v41, v48, &v69);
    v49 = OUTLINED_FUNCTION_18_40();
    v41(v49);
    v68 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD48, &qword_1D5634A30);
    v50 = v61;
    v51 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v50, v51 ^ 1u, 1, v23);
    (*(v26 + 32))(v37, v50, v39);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v72);
    (*(v66 + 8))(v22, a4);
    v52 = v64;
    (*(v26 + 16))(v64, v37, v39);
    if (__swift_getEnumTagSinglePayload(v52, 1, v23) != 1)
    {
      (v41)(v37, v39);
      return (*(*(v23 - 8) + 32))(v67, v52, v23);
    }

    (v41)(v52, v39);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_11_50();
    MEMORY[0x1DA6EAC70](v54 + 11, v55 | 0x8000000000000000);
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D5684190);
    OUTLINED_FUNCTION_6_3();
    v56 = 133;
    goto LABEL_12;
  }

  v40 = *(v8 + 16);
  v39 = v8 + 16;
  v40(v15, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v69, &v72);
    v41 = v74;
    v42 = v75;
    __swift_project_boxed_opaque_existential_1(&v72, v74);
    sub_1D50A8ED8(v41, v42, &v69);
    v43 = OUTLINED_FUNCTION_18_40();
    v41(v43);
    v68 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD50, &qword_1D5634A38);
    v44 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v35, v44 ^ 1u, 1, v23);
    (*(v26 + 32))(v37, v35, v39);
    goto LABEL_7;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_1D4E6C9CC(&v69, &qword_1EC7EC548, &qword_1D5621090);
  OUTLINED_FUNCTION_11_50();
  OUTLINED_FUNCTION_6_3();
  v59[0] = 119;
LABEL_14:
  result = OUTLINED_FUNCTION_27_28();
  __break(1u);
  return result;
}

unint64_t sub_1D50F1358()
{
  result = qword_1EDD5D748;
  if (!qword_1EDD5D748)
  {
    sub_1D560E728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D748);
  }

  return result;
}

uint64_t sub_1D50F13C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1D50F1430(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((a2 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_23;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v10 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v9 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v9, AssociatedTypeWitness);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D50F15D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = *(v11 + 64) + 1;
  }

  v15 = 8 * v14;
  if (a3 > v13)
  {
    if (v14 <= 3)
    {
      v16 = ((a3 - v13 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v16))
      {
        v10 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v10 = v17;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v13 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v12 >= 2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2 + 1, v12, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> v15) + 1;
      if (v14)
      {
        v20 = v18 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v14 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v14] = v19;
        break;
      case 2:
        *&a1[v14] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_28_31(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 360);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

unint64_t sub_1D50F186C()
{
  result = qword_1EC7EFD58;
  if (!qword_1EC7EFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFD58);
  }

  return result;
}

uint64_t sub_1D50F18C0(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_7();
  sub_1D5616358();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_0_7();
    v1 = sub_1D5616198();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D50F1964(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D56161B8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1D50F19F8(uint64_t a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1);
  return sub_1D5616328();
}

uint64_t sub_1D50F1A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D50F18C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D50F1A98()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D50F1ADC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1D5614398();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  if (a2)
  {
    sub_1D50F1EA4(a3);
LABEL_3:

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v12);
  }

  else
  {
    switch(a1)
    {
      case 1:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770C8];
        goto LABEL_21;
      case 2:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770D8];
        goto LABEL_21;
      case 3:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E6977108];
        goto LABEL_21;
      case 4:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E6977110];
        goto LABEL_21;
      case 5:
        sub_1D50F1F0C(a3, v11);
        v22 = sub_1D560FC18();
        if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
        {
          sub_1D50F1EA4(a3);
          sub_1D50F1EA4(v11);
          v23 = sub_1D5614238();
          __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
        }

        else
        {
          sub_1D560FC08();
          sub_1D50F1EA4(a3);
          (*(*(v22 - 8) + 8))(v11, v22);
        }

        (*(v13 + 104))(v17, *MEMORY[0x1E6977118], v12);
        (*(v13 + 32))(v19, v17, v12);
        goto LABEL_22;
      case 6:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770F8];
        goto LABEL_21;
      case 7:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E6977100];
        goto LABEL_21;
      case 8:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770F0];
        goto LABEL_21;
      case 9:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770E0];
        goto LABEL_21;
      case 10:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770D0];
        goto LABEL_21;
      case 11:
        sub_1D50F1EA4(a3);
        v21 = MEMORY[0x1E69770E8];
        goto LABEL_21;
      default:
        sub_1D50F1EA4(a3);
        if (a1 != 12)
        {
          goto LABEL_3;
        }

        v21 = MEMORY[0x1E69770C0];
LABEL_21:
        (*(v13 + 104))(v19, *v21, v12);
LABEL_22:
        (*(v13 + 32))(a4, v19, v12);
        result = __swift_storeEnumTagSinglePayload(a4, 0, 1, v12);
        break;
    }
  }

  return result;
}

uint64_t sub_1D50F1EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50F1F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50F1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for MusicItemCache.Key();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (dynamic_cast_existential_1_conditional(a4))
  {
    v15 = *(v11 + 20);

    v16 = sub_1D560E358();
    *v14 = a1;
    v14[1] = a2;
    v17 = *(v6 + 32);
    MEMORY[0x1EEE9AC00](v16);
    v22[-4] = a4;
    v22[-3] = a5;
    v20 = v6;
    v21 = v14;
    sub_1D56158D8();

    sub_1D560F608();

    return sub_1D50F3940(v14);
  }

  else
  {
    v22[2] = 0;
    v22[3] = 0xE000000000000000;
    sub_1D5615B68();
    v19 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v19);

    MEMORY[0x1DA6EAC70](0xD00000000000004DLL, 0x80000001D5684360);
    result = OUTLINED_FUNCTION_1_78();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50F2170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D56158D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  swift_beginAccess();
  v13 = *(a1 + 24);

  sub_1D4ED05AC(a2, v13);

  if (v19)
  {
    sub_1D4ED16E4(v18, v17);
    sub_1D50F38D8(v18);
    sub_1D4F69344(v17, v20);
  }

  else
  {
    sub_1D50F38D8(v18);
    memset(v20, 0, sizeof(v20));
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC40, &unk_1D561C070);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    (*(*(a3 - 8) + 32))(a4, v12, a3);
    v14 = 0;
  }

  else
  {
    v14 = 1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
  }

  return __swift_storeEnumTagSinglePayload(a4, v14, 1, a3);
}

uint64_t sub_1D50F2378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dynamic_cast_existential_1_conditional(a3);
  if (v4)
  {
    v5 = *(v3 + 32);
    MEMORY[0x1EEE9AC00](v4);

    sub_1D560F608();
  }

  else
  {
    sub_1D5615B68();
    v7 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v7);

    MEMORY[0x1DA6EAC70](0xD000000000000043, 0x80000001D5684310);
    result = OUTLINED_FUNCTION_1_78();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50F24D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v52 = a6;
  v49 = a5;
  v48 = a4;
  v51 = a3;
  v9 = type metadata accessor for MusicItemCache.Key();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v47 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v46 = v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v42 - v16);
  v53 = sub_1D560C368();
  v54 = *(v53 - 8);
  v18 = *(v54 + 64);
  v19 = MEMORY[0x1EEE9AC00](v53);
  v45 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v42 - v21;
  v23 = a2[3];
  v24 = a2[4];
  v42[1] = __swift_project_boxed_opaque_existential_1(a2, v23);
  v43 = *(v24 + 8);
  v43(v23, v24);
  swift_beginAccess();
  v25 = *(a1 + 16);

  v26 = sub_1D4ED0594(v22, v25);

  v27 = *(v54 + 8);
  v54 += 8;
  v44 = v27;
  v27(v22, v53);
  v28 = MEMORY[0x1E69E7CD0];
  if (v26)
  {
    v28 = v26;
  }

  v61 = v28;
  v29 = sub_1D560EC18();
  v31 = v30;
  v32 = v17 + *(v10 + 28);
  sub_1D560E358();
  *v17 = v29;
  v17[1] = v31;
  v33 = v46;
  sub_1D50F3810(v17, v47);
  sub_1D52C7BE0();
  sub_1D50F3940(v33);
  v34 = v45;
  v43(v23, v24);
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  *&v55 = *(a1 + 16);
  v36 = v17;
  sub_1D4F13514();
  *(a1 + 16) = v55;
  v44(v34, v53);
  swift_endAccess();
  swift_beginAccess();
  v37 = *(a1 + 24);

  sub_1D4ED05AC(v36, v37);

  if (*(&v56 + 1))
  {
    v58 = v55;
    v59 = v56;
    v60 = v57;
    v38 = *(&v57 + 1) + 1;
    if (!__OFADD__(*(&v57 + 1), 1))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  sub_1D50F38D8(&v55);
  v39 = v52;
  *(&v59 + 1) = v52;
  *&v60 = v50;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_0, v51, v39);
  v38 = 1;
LABEL_8:
  *(&v60 + 1) = v38;
  sub_1D50F3810(v36, v33);
  sub_1D4ED16E4(&v58, &v55);
  swift_beginAccess();
  sub_1D4EC82C0(&v55);
  swift_endAccess();
  sub_1D50F3A34(&v58);
  return sub_1D50F3940(v36);
}

uint64_t sub_1D50F2998()
{
  v1 = *(v0 + 32);

  sub_1D560F608();
}

uint64_t sub_1D50F2A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = type metadata accessor for MusicItemCache.Key();
  v90 = *(v86 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v81[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v81[-v14];
  v15 = sub_1D560C368();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v81[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 8))(a3, a4);
  swift_beginAccess();
  v20 = sub_1D5515AEC();
  v21 = v15;
  v22 = v20;
  (*(v16 + 8))(v19, v21);
  result = swift_endAccess();
  if (!v22)
  {
    return result;
  }

  v85 = v11;
  v84 = v4;
  v24 = v22 + 56;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  swift_beginAccess();
  v28 = 0;
  v29 = (v25 + 63) >> 6;
  v30 = v87;
  v88 = v29;
  if (v27)
  {
    while (1)
    {
LABEL_9:
      v32 = *(v22 + 48);
      v102 = *(v90 + 72);
      v33 = v89;
      sub_1D50F3810(v32 + v102 * (__clz(__rbit64(v27)) | (v28 << 6)), v89);
      sub_1D50F3874(v33, v30);
      v34 = *(a1 + 24);
      if (!*(v34 + 16))
      {
        goto LABEL_19;
      }

      v35 = *(a1 + 24);

      v36 = sub_1D4F0DF68();
      if ((v37 & 1) == 0)
      {
        break;
      }

      sub_1D4ED16E4(*(v34 + 56) + 48 * v36, &v99);

      if (!*(&v100 + 1) || *(&v101 + 1) <= 1)
      {
        goto LABEL_20;
      }

      --*(&v101 + 1);
      v38 = v30;
      v39 = v85;
      sub_1D50F3810(v38, v85);
      sub_1D50F399C(&v99, &v96);
      swift_beginAccess();
      if (*(&v97 + 1))
      {
        v83 = v22;
        v92 = v96;
        v93 = v97;
        v94 = v98;
        v40 = *(a1 + 24);
        swift_isUniquelyReferenced_nonNull_native();
        v91 = *(a1 + 24);
        v41 = v91;
        *(a1 + 24) = 0x8000000000000000;
        v42 = sub_1D4F0DF68();
        if (__OFADD__(v41[2], (v43 & 1) == 0))
        {
          goto LABEL_39;
        }

        v44 = v42;
        v82 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
        if (sub_1D5615D78())
        {
          v45 = sub_1D4F0DF68();
          v47 = v82;
          v30 = v87;
          v22 = v83;
          if ((v82 & 1) != (v46 & 1))
          {
            goto LABEL_41;
          }

          v44 = v45;
        }

        else
        {
          v30 = v87;
          v22 = v83;
          v47 = v82;
        }

        v72 = v91;
        if (v47)
        {
          sub_1D4F1579C(&v92, v91[7] + 48 * v44);
          sub_1D50F3940(v85);
        }

        else
        {
          v91[(v44 >> 6) + 8] |= 1 << v44;
          v73 = v85;
          sub_1D50F3810(v85, v72[6] + v44 * v102);
          v74 = (v72[7] + 48 * v44);
          v75 = v92;
          v76 = v94;
          v74[1] = v93;
          v74[2] = v76;
          *v74 = v75;
          sub_1D50F3940(v73);
          v77 = v72[2];
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (v78)
          {
            goto LABEL_40;
          }

          v72[2] = v79;
          v22 = v83;
        }

        v29 = v88;
        v80 = *(a1 + 24);
        *(a1 + 24) = v72;
      }

      else
      {
        sub_1D50F38D8(&v96);
        v59 = *(a1 + 24);
        v60 = sub_1D4F0DF68();
        if (v61)
        {
          v62 = v60;
          v63 = *(a1 + 24);
          LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
          v91 = *(a1 + 24);
          v64 = v91;
          *(a1 + 24) = 0x8000000000000000;
          v65 = a1;
          v66 = v22;
          v67 = v64[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
          v22 = v66;
          a1 = v65;
          sub_1D5615D78();
          v68 = v91;
          sub_1D50F3940(v91[6] + v62 * v102);
          v69 = (v68[7] + 48 * v62);
          v71 = v69[1];
          v70 = v69[2];
          v92 = *v69;
          v93 = v71;
          v94 = v70;
          sub_1D50F3A84(&qword_1EDD59100, type metadata accessor for MusicItemCache.Key);
          sub_1D5615D98();
          sub_1D50F3940(v39);
          *(v65 + 24) = v68;
        }

        else
        {
          sub_1D50F3940(v39);
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
        }

        v29 = v88;
        sub_1D50F38D8(&v92);
        v30 = v87;
      }

LABEL_24:
      swift_endAccess();
      sub_1D50F3940(v30);
      v27 &= v27 - 1;
      sub_1D50F38D8(&v99);
      if (!v27)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
LABEL_20:
    swift_beginAccess();
    v48 = *(a1 + 24);
    v49 = sub_1D4F0DF68();
    if (v50)
    {
      v51 = v49;
      v52 = *(a1 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v95 = *(a1 + 24);
      v53 = v95;
      *(a1 + 24) = 0x8000000000000000;
      v54 = *(v53 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
      v30 = v87;
      sub_1D5615D78();
      v55 = v95;
      sub_1D50F3940(*(v95 + 48) + v51 * v102);
      v56 = (*(v55 + 56) + 48 * v51);
      v58 = v56[1];
      v57 = v56[2];
      v96 = *v56;
      v97 = v58;
      v98 = v57;
      sub_1D50F3A84(&qword_1EDD59100, type metadata accessor for MusicItemCache.Key);
      sub_1D5615D98();
      *(a1 + 24) = v55;
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
    }

    v29 = v88;
    sub_1D50F38D8(&v96);
    goto LABEL_24;
  }

LABEL_5:
  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
    }

    v27 = *(v24 + 8 * v31);
    ++v28;
    if (v27)
    {
      v28 = v31;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D50F3248(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicItemCache.Key() + 20);

  return sub_1D560D8C8();
}

uint64_t sub_1D50F32C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicItemCache.Key() + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_0_85();
  sub_1D50F3A84(v4, v5);
  return sub_1D5614CB8();
}

uint64_t sub_1D50F3344()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicItemCache.Key() + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_0_85();
  sub_1D50F3A84(v4, v5);
  OUTLINED_FUNCTION_2_67();
  return sub_1D5616328();
}

uint64_t sub_1D50F33DC(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_0_85();
  sub_1D50F3A84(v7, v8);
  OUTLINED_FUNCTION_2_67();
  return sub_1D5616328();
}

void *sub_1D50F3460()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1D50F3490()
{
  sub_1D50F3460();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D50F34FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D50F353C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for MusicItemCache.Key()
{
  result = qword_1EDD590E8;
  if (!qword_1EDD590E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50F360C()
{
  result = sub_1D560D9A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1D50F36F0()
{
  sub_1D560C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD60, &qword_1D5634C08);
  sub_1D50F3A84(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  v0[2] = sub_1D5614BD8();
  type metadata accessor for MusicItemCache.Key();
  sub_1D50F3A84(&qword_1EDD59100, type metadata accessor for MusicItemCache.Key);
  v0[3] = sub_1D5614BD8();
  v1 = sub_1D560F628();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[4] = sub_1D560F618();
  return v0;
}

uint64_t sub_1D50F3810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemCache.Key();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50F3874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemCache.Key();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50F38D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F0, &qword_1D5634C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50F3940(uint64_t a1)
{
  v2 = type metadata accessor for MusicItemCache.Key();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50F399C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F0, &qword_1D5634C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50F3A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StorePlatformSong()
{
  result = qword_1EDD56A80;
  if (!qword_1EDD56A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50F3B4C()
{
  sub_1D4E518A0(319, &qword_1EDD53A08);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D50F3EE4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EC7EFD68, &qword_1EC7EFD70, ":Q\a");
    if (v9 > 0x3F)
    {
      return v7;
    }

    sub_1D50F3EE4(319, qword_1EDD559F8, type metadata accessor for StorePlatformComposer);
    v1 = v10;
    if (v11 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    v1 = v12;
    if (v13 > 0x3F)
    {
      return v1;
    }

    sub_1D4E518A0(319, &qword_1EDD52708);
    v1 = v14;
    if (v15 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v16 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v17 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v18 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    if (v19 > 0x3F)
    {
      return v7;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v20 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD60, &qword_1EC7EDD68, qword_1D56285B0);
    if (v21 > 0x3F)
    {
      return v7;
    }

    sub_1D50F3EE4(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
    v1 = v22;
    if (v23 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D50F3EE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D50F3F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v120 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v122 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD80, &qword_1D5634DA0);
  OUTLINED_FUNCTION_4(v123);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_68();
  v128 = type metadata accessor for StorePlatformSong();
  v36 = OUTLINED_FUNCTION_14(v128);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v127 = (v40 - v39);
  v42 = a1[3];
  v41 = a1[4];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D50F84E0();
  v124 = v2;
  v43 = v126;
  sub_1D5616398();
  v44 = v43;
  if (v43)
  {
    v126 = v43;
    LOBYTE(v42) = 0;
    v46 = 0;
    v44 = 0;
    v47 = 0;
    v48 = 0;
    LODWORD(v49) = 0;
    v50 = 0;
    v51 = 0;
    LODWORD(v115) = 0;
    OUTLINED_FUNCTION_6_54();
  }

  else
  {
    v126 = v19;
    v117 = v30;
    v118 = v26;
    v119 = v32;
    v130 = 0;
    v45 = sub_1D4F89C9C();
    OUTLINED_FUNCTION_42_4();
    v50 = v123;
    sub_1D5615F78();
    v65 = v127;
    *v127 = v129;
    OUTLINED_FUNCTION_33_7(1);
    *(v65 + 2) = sub_1D5615F38();
    *(v65 + 3) = v66;
    v67 = sub_1D560C0A8();
    LOBYTE(v129) = 2;
    OUTLINED_FUNCTION_1_79();
    v69 = sub_1D50F88B0(v68);
    sub_1D5615F78();
    v114 = v69;
    v115 = v67;
    v116 = v45;
    v49 = v128;
    v70 = v128[6];
    sub_1D4FB8058();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v129) = 3;
    sub_1D50F85E8(&qword_1EDD531B8);
    v48 = v126;
    OUTLINED_FUNCTION_71_10();
    sub_1D5615F78();
    v71 = v49[7];
    sub_1D4FB8058();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    v130 = 4;
    sub_1D50F8534();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_71_10();
    sub_1D5615F78();
    *(v65 + v49[8]) = v129;
    v130 = 5;
    OUTLINED_FUNCTION_42_4();
    sub_1D5615F78();
    *(v65 + v49[9]) = v129;
    OUTLINED_FUNCTION_33_7(6);
    v72 = sub_1D5615F38();
    v73 = (v65 + v49[10]);
    *v73 = v72;
    v73[1] = v74;
    type metadata accessor for StorePlatformComposer();
    LOBYTE(v129) = 7;
    OUTLINED_FUNCTION_38_22();
    sub_1D50F88B0(v75);
    v51 = v122;
    OUTLINED_FUNCTION_74_10();
    v46 = 0;
    v76 = v49[11];
    sub_1D4FB8058();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v130 = 8;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_74_10();
    v126 = 0;
    *(v127 + v128[12]) = v129;
    OUTLINED_FUNCTION_33_7(9);
    v77 = sub_1D5615F38();
    v126 = 0;
    v78 = (v127 + v128[13]);
    *v78 = v77;
    v78[1] = v79;
    OUTLINED_FUNCTION_15_43(10);
    v80 = sub_1D5615F68();
    v126 = 0;
    OUTLINED_FUNCTION_107_4(v80, v81, v128[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v130 = 11;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_17_38();
    v126 = 0;
    *(v127 + v128[15]) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v130 = 12;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_17_38();
    v126 = 0;
    *(v127 + v128[16]) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v130 = 13;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_17_38();
    v126 = 0;
    *(v127 + v128[17]) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    v130 = 14;
    sub_1D500E5CC();
    OUTLINED_FUNCTION_17_38();
    v126 = 0;
    *(v127 + v128[18]) = v129;
    OUTLINED_FUNCTION_33_7(15);
    v82 = sub_1D5615F48();
    v126 = 0;
    *(v127 + v128[19]) = v82;
    OUTLINED_FUNCTION_15_43(16);
    v83 = sub_1D5615F48();
    v126 = 0;
    *(v127 + v128[20]) = v83;
    v130 = 17;
    OUTLINED_FUNCTION_42_4();
    v47 = v124;
    v84 = v126;
    sub_1D5615FD8();
    v126 = v84;
    if (!v84)
    {
      v88 = *(&v129 + 1);
      v89 = (v127 + v128[21]);
      *v89 = v129;
      v89[1] = v88;
      OUTLINED_FUNCTION_15_43(18);
      v90 = sub_1D5615F48();
      v126 = 0;
      *(v127 + v128[22]) = v90;
      OUTLINED_FUNCTION_15_43(19);
      v91 = sub_1D5615F48();
      v126 = 0;
      *(v127 + v128[23]) = v91;
      OUTLINED_FUNCTION_15_43(20);
      v92 = sub_1D5615F38();
      v126 = 0;
      v93 = (v127 + v128[24]);
      *v93 = v92;
      v93[1] = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
      v130 = 21;
      sub_1D500E680();
      OUTLINED_FUNCTION_17_38();
      v126 = 0;
      *(v127 + v128[25]) = v129;
      OUTLINED_FUNCTION_33_7(22);
      v95 = sub_1D5615F38();
      v126 = 0;
      v96 = (v127 + v128[26]);
      *v96 = v95;
      v96[1] = v97;
      LOBYTE(v129) = 23;
      OUTLINED_FUNCTION_75_9();
      v126 = 0;
      v98 = v128[27];
      sub_1D4FB8058();
      OUTLINED_FUNCTION_15_43(24);
      v99 = sub_1D5615F48();
      v126 = 0;
      *(v127 + v128[28]) = v99;
      OUTLINED_FUNCTION_15_43(25);
      v100 = sub_1D5615F68();
      v126 = 0;
      OUTLINED_FUNCTION_107_4(v100, v101, v128[29]);
      type metadata accessor for StorePlatformUber();
      LOBYTE(v129) = 26;
      OUTLINED_FUNCTION_41_25();
      sub_1D50F88B0(v102);
      v103 = v126;
      sub_1D5615F78();
      v126 = v103;
      if (!v103)
      {
        v108 = v128[30];
        sub_1D4FB8058();
        LOBYTE(v129) = 27;
        OUTLINED_FUNCTION_75_9();
        v126 = 0;
        v109 = OUTLINED_FUNCTION_16_42();
        v110(v109);
        v111 = v127;
        v112 = v128[31];
        sub_1D4FB8058();
        sub_1D50F8760();
        __swift_destroy_boxed_opaque_existential_1(v125);
        return sub_1D50F8800(v111, type metadata accessor for StorePlatformSong);
      }

      v104 = OUTLINED_FUNCTION_16_42();
      v105(v104);
      LODWORD(v114) = 0;
      __swift_destroy_boxed_opaque_existential_1(v125);
      v46 = 1;
      v44 = 1;
      v47 = 1;
      v48 = 1;
      LODWORD(v49) = 1;
      v50 = 1;
      v51 = 1;
      LODWORD(v115) = 1;
      OUTLINED_FUNCTION_12_43(1);
      OUTLINED_FUNCTION_56_13(v106);
      LODWORD(v124) = v107;
      v54 = 1;
      v52 = v127;
      goto LABEL_6;
    }

    v85 = OUTLINED_FUNCTION_16_42();
    v86(v85);
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    OUTLINED_FUNCTION_0_86();
    OUTLINED_FUNCTION_12_43(v87);
  }

  v52 = v127;
  result = __swift_destroy_boxed_opaque_existential_1(v125);
  if ((v42 & 1) == 0)
  {
    LODWORD(v114) = 0;
    v54 = 0;
    goto LABEL_27;
  }

  v54 = 0;
  LODWORD(v114) = 0;
LABEL_6:
  v55 = *(v52 + 1);

  if (v46)
  {
    v56 = *(v52 + 3);

    if ((v44 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v44)
  {
LABEL_8:
    v57 = v128;
    if (v47)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v57 = v128;
  result = sub_1D4E50004(v52 + v128[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v47)
  {
LABEL_9:
    result = sub_1D4E50004(v52 + v57[7], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v48 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v48)
  {
LABEL_10:
    if (v49)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v60 = *(v52 + v57[8]);

  if (v49)
  {
LABEL_11:
    result = OUTLINED_FUNCTION_46_4(v57[9]);
    if ((v50 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v50)
  {
LABEL_12:
    if (v51)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = OUTLINED_FUNCTION_46_4(v57[10]);
  if (v51)
  {
LABEL_13:
    result = sub_1D4E50004(v52 + v57[11], &qword_1EC7EFC48, &unk_1D5634C20);
    if ((v115 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v115)
  {
LABEL_14:
    if (v116)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v61 = *(v52 + v57[12]);

  if (v116)
  {
LABEL_15:
    result = OUTLINED_FUNCTION_46_4(v57[13]);
    if ((v117 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v117)
  {
LABEL_16:
    if (v118)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v62 = *(v52 + v57[15]);

  if (v118)
  {
LABEL_17:
    v58 = *(v52 + v57[16]);

    if ((v119 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v119)
  {
LABEL_18:
    if (v120)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v63 = *(v52 + v57[17]);

  if (v120)
  {
LABEL_19:
    v59 = *(v52 + v57[18]);

    if ((v121 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v121)
  {
LABEL_20:
    if (v122)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = OUTLINED_FUNCTION_46_4(v57[21]);
  if (v122)
  {
LABEL_21:
    result = OUTLINED_FUNCTION_46_4(v57[24]);
    if ((v123 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (!v123)
  {
LABEL_22:
    if (v124)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v64 = *(v52 + v57[25]);

  if (v124)
  {
LABEL_23:
    result = OUTLINED_FUNCTION_46_4(v57[26]);
    if ((v54 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    result = sub_1D4E50004(v52 + v57[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v114 & 1) == 0)
    {
      return result;
    }

    return sub_1D4E50004(v52 + v57[30], &qword_1EC7EFBD0, &qword_1D5634650);
  }

LABEL_43:
  if (v54)
  {
    goto LABEL_44;
  }

LABEL_24:
  if (!v114)
  {
    return result;
  }

  return sub_1D4E50004(v52 + v57[30], &qword_1EC7EFBD0, &qword_1D5634650);
}

uint64_t sub_1D50F4FDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDB0, &qword_1D5634DA8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50F84E0();
  sub_1D56163D8();
  v45 = *v3;
  v46 = 0;
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_19_39();
  OUTLINED_FUNCTION_29_0();
  sub_1D5616068();
  if (!v2)
  {
    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    OUTLINED_FUNCTION_7(1);
    sub_1D5616028();
    v44 = type metadata accessor for StorePlatformSong();
    v16 = v44[6];
    LOBYTE(v45) = 2;
    v17 = sub_1D560C0A8();
    OUTLINED_FUNCTION_1_79();
    v19 = sub_1D50F88B0(v18);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v43[1] = v19;
    v43[2] = v17;
    v20 = v44;
    v21 = v44[7];
    LOBYTE(v45) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50F85E8(&qword_1EC7EC350);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v20[8]);
    v46 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    sub_1D50F86AC();
    OUTLINED_FUNCTION_8_2();
    v45 = *(v3 + v20[9]);
    v46 = 5;
    OUTLINED_FUNCTION_19_39();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v20[10]);
    OUTLINED_FUNCTION_7(6);
    sub_1D5616028();
    v22 = v20[11];
    LOBYTE(v45) = 7;
    type metadata accessor for StorePlatformComposer();
    OUTLINED_FUNCTION_38_22();
    sub_1D50F88B0(v23);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v20[12]);
    v46 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v20[13]);
    OUTLINED_FUNCTION_7(9);
    sub_1D5616028();
    v24 = (v3 + v20[14]);
    v25 = *v24;
    v26 = *(v24 + 8);
    OUTLINED_FUNCTION_7(10);
    sub_1D5616058();
    OUTLINED_FUNCTION_61_1(v44[15]);
    v46 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v44[16]);
    v46 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4FC7D20();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v44[17]);
    v46 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v44[18]);
    v46 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2();
    v27 = *(v3 + v44[19]);
    OUTLINED_FUNCTION_24_9(15);
    v28 = *(v3 + v44[20]);
    OUTLINED_FUNCTION_24_9(16);
    v29 = (v3 + v44[21]);
    v31 = *v29;
    v30 = v29[1];
    *&v45 = v31;
    *(&v45 + 1) = v30;
    v46 = 17;
    OUTLINED_FUNCTION_19_39();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v32 = *(v3 + v44[22]);
    OUTLINED_FUNCTION_24_9(18);
    v33 = *(v3 + v44[23]);
    OUTLINED_FUNCTION_24_9(19);
    OUTLINED_FUNCTION_35_5(v44[24]);
    OUTLINED_FUNCTION_7(20);
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v44[25]);
    v46 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
    sub_1D500E858();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v44[26]);
    OUTLINED_FUNCTION_7(22);
    sub_1D5616028();
    v34 = v44[27];
    LOBYTE(v45) = 23;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v35 = *(v3 + v44[28]);
    OUTLINED_FUNCTION_24_9(24);
    v36 = (v3 + v44[29]);
    v37 = *v36;
    v38 = *(v36 + 8);
    OUTLINED_FUNCTION_7(25);
    sub_1D5616058();
    v39 = v44[30];
    LOBYTE(v45) = 26;
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_41_25();
    sub_1D50F88B0(v40);
    OUTLINED_FUNCTION_21_0();
    v41 = v44[31];
    LOBYTE(v45) = 27;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D50F5698(void *a1, void *a2)
{
  v277 = type metadata accessor for StorePlatformUber();
  v4 = OUTLINED_FUNCTION_14(v277);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v278 = v14;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v280);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v279 = v18;
  v19 = type metadata accessor for StorePlatformComposer();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v264 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDE0, &qword_1D5634DB0);
  OUTLINED_FUNCTION_14(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v264 - v36;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v287);
  v283 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v281 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v282 = v47;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v285);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v286 = v51;
  v52 = sub_1D560C0A8();
  v53 = OUTLINED_FUNCTION_4(v52);
  v289 = v54;
  v290 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v284 = v58 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_59_0();
  v276 = v63 - v64;
  OUTLINED_FUNCTION_23();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v264 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v288 = &v264 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v71 = OUTLINED_FUNCTION_14(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_59_0();
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v264 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v80 = a1;
  v82 = &v264 - v81;
  v83 = a2;
  v84 = v80[1];
  v85 = a2[1];
  if (v84)
  {
    if (!v85)
    {
      return 0;
    }

    v86 = *v80 == *a2 && v84 == v85;
    if (!v86)
    {
      v274 = v19;
      v275 = v32;
      v273 = v31;
      v87 = v37;
      v88 = v25;
      v89 = v9;
      v90 = v77;
      v91 = v68;
      v92 = v79;
      v93 = v78;
      v94 = v83;
      v95 = v80;
      v96 = sub_1D5616168();
      v80 = v95;
      v83 = v94;
      v78 = v93;
      v79 = v92;
      v68 = v91;
      v77 = v90;
      v9 = v89;
      v25 = v88;
      v37 = v87;
      v31 = v273;
      v19 = v274;
      v32 = v275;
      if ((v96 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v85)
  {
    return 0;
  }

  v97 = v80[3];
  v98 = v83[3];
  v275 = v32;
  if (v97)
  {
    if (!v98)
    {
      return 0;
    }

    v270 = v78;
    v271 = v25;
    v99 = v79;
    v100 = v80;
    v101 = v83;
    v102 = v80[2] == v83[2] && v97 == v98;
    if (!v102 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v270 = v78;
    v271 = v25;
    v99 = v79;
    v100 = v80;
    v101 = v83;
    if (v98)
    {
      return 0;
    }
  }

  v273 = v31;
  v274 = v19;
  v268 = v37;
  v265 = v77;
  v266 = v68;
  v267 = v9;
  v103 = type metadata accessor for StorePlatformSong();
  v272 = v101;
  v104 = v103[6];
  v105 = v100;
  v106 = v99;
  v107 = *(v99 + 48);
  v269 = v105;
  sub_1D4FB8150();
  sub_1D4FB8150();
  v108 = v290;
  OUTLINED_FUNCTION_57(v82, 1, v290);
  if (v86)
  {
    OUTLINED_FUNCTION_57(&v82[v107], 1, v108);
    if (v86)
    {
      sub_1D4E50004(v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_29;
    }

LABEL_27:
    v111 = &qword_1EC7E9FB0;
    v112 = &qword_1D562C590;
    v113 = v82;
    goto LABEL_38;
  }

  v109 = v288;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(&v82[v107], 1, v108);
  if (v110)
  {
    (*(v289 + 8))(v109, v108);
    goto LABEL_27;
  }

  v114 = v289;
  v115 = *(v289 + 32);
  v264 = v106;
  v116 = v284;
  v115();
  OUTLINED_FUNCTION_1_79();
  sub_1D50F88B0(v117);
  v118 = sub_1D5614D18();
  v119 = *(v114 + 8);
  v120 = v116;
  v106 = v264;
  v119(v120, v108);
  v119(v109, v108);
  sub_1D4E50004(v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v118 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v121 = v103[7];
  v122 = v286;
  v123 = *(v285 + 48);
  v124 = v269;
  sub_1D4FB8150();
  sub_1D4FB8150();
  v125 = v287;
  OUTLINED_FUNCTION_57(v122, 1, v287);
  if (v86)
  {
    OUTLINED_FUNCTION_57(v122 + v123, 1, v125);
    if (v86)
    {
      sub_1D4E50004(v122, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_42;
    }

LABEL_37:
    v111 = &qword_1EC7EC330;
    v112 = &qword_1D56222C0;
    v113 = v122;
    goto LABEL_38;
  }

  v126 = v282;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v122 + v123, 1, v125);
  if (v127)
  {
    (*(v283 + 8))(v126, v125);
    goto LABEL_37;
  }

  v129 = v122;
  v130 = v283;
  v131 = v129 + v123;
  v132 = v281;
  (*(v283 + 32))(v281, v131, v125);
  sub_1D4F39858();
  v133 = sub_1D5614D18();
  v134 = *(v130 + 8);
  v134(v132, v125);
  v134(v126, v125);
  v135 = v129;
  v124 = v269;
  sub_1D4E50004(v135, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v133 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v136 = v103;
  v137 = v103[8];
  v138 = *(v124 + v137);
  v139 = *(v272 + v137);
  if (v138)
  {
    v140 = v275;
    if (!v139)
    {
      return 0;
    }

    v141 = *(v272 + v137);

    OUTLINED_FUNCTION_159();
    sub_1D4EF9D14();
    OUTLINED_FUNCTION_70_2();
    if ((v138 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v140 = v275;
    if (v139)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_22_35(v124 + v136[9]);
  if (v144)
  {
    if (!v142)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v143);
    v147 = v86 && v145 == v146;
    if (!v147 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_35(v124 + v136[10]);
  if (v150)
  {
    if (!v148)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v149);
    v153 = v86 && v151 == v152;
    if (!v153 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v148)
  {
    return 0;
  }

  v154 = v106;
  v155 = v136[11];
  v156 = *(v140 + 48);
  v157 = v268;
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_27_29();
  v158 = v274;
  OUTLINED_FUNCTION_57(v157, 1, v274);
  if (v86)
  {
    OUTLINED_FUNCTION_57(v157 + v156, 1, v158);
    if (v86)
    {
      sub_1D4E50004(v157, &qword_1EC7EFC48, &unk_1D5634C20);
      goto LABEL_75;
    }

LABEL_73:
    v111 = &qword_1EC7EFDE0;
    v112 = &qword_1D5634DB0;
    v113 = v157;
    goto LABEL_38;
  }

  v159 = v273;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v157 + v156, 1, v158);
  if (v160)
  {
    OUTLINED_FUNCTION_37_22();
    sub_1D50F8800(v159, v161);
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_36_25();
  v162 = v271;
  sub_1D50F8858();
  v163 = sub_1D50CF334(v159, v162);
  sub_1D50F8800(v162, type metadata accessor for StorePlatformComposer);
  sub_1D50F8800(v159, type metadata accessor for StorePlatformComposer);
  sub_1D4E50004(v157, &qword_1EC7EFC48, &unk_1D5634C20);
  if (!v163)
  {
    return 0;
  }

LABEL_75:
  v164 = v136[12];
  v165 = *(v124 + v164);
  v166 = *(v272 + v164);
  if (v165)
  {
    if (!v166)
    {
      return 0;
    }

    v167 = *(v272 + v164);

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v165 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v166)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_35(v124 + v136[13]);
  if (v170)
  {
    if (!v168)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v169);
    v173 = v86 && v171 == v172;
    if (!v173 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v168)
  {
    return 0;
  }

  v174 = v280;
  OUTLINED_FUNCTION_67_15(v136[14]);
  if (v176)
  {
    if (!v175)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v177)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_21_32(v136[15]);
  if (v165)
  {
    if (!v136)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v165 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_32(v136[16]);
  if (v165)
  {
    if (!v136)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v165 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  v178 = v136[17];
  v179 = *(v269 + v178);
  v180 = *(v272 + v178);
  if (v179)
  {
    if (!v180 || (sub_1D4EF81E0(v179, v180) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v180)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_32(v136[18]);
  if (v165)
  {
    if (!v136)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v165 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_51(v136[19]);
  if (v86)
  {
    if (v181 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v182 || ((v183 ^ v184) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_11_51(v136[20]);
  if (v86)
  {
    if (v185 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v186 || ((v187 ^ v188) & 1) != 0)
    {
      return result;
    }
  }

  v189 = v136[21];
  v190 = *(v269 + v189);
  v191 = *(v269 + v189 + 8);
  v192 = (v272 + v189);
  v193 = v190 == *v192 && v191 == v192[1];
  if (!v193 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_51(v136[22]);
  if (v86)
  {
    if (v194 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v195 || ((v196 ^ v197) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_11_51(v136[23]);
  if (v86)
  {
    if (v198 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v199 || ((v200 ^ v201) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_22_35(v269 + v136[24]);
  if (v204)
  {
    if (!v202)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v203);
    v207 = v86 && v205 == v206;
    if (!v207 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v202)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_32(v136[25]);
  if (v165)
  {
    if (!v136)
    {
      return 0;
    }

    v208 = OUTLINED_FUNCTION_159();
    sub_1D4EF905C(v208, v209, v210, v211, v212, v213, v214, v215, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
    OUTLINED_FUNCTION_70_2();
    if ((v165 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_35(v269 + v136[26]);
  if (v218)
  {
    if (!v216)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v217);
    v221 = v86 && v219 == v220;
    if (!v221 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v216)
  {
    return 0;
  }

  v222 = v136[27];
  v223 = *(v154 + 48);
  OUTLINED_FUNCTION_29_20();
  v224 = v265;
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_25_8(v224);
  if (!v86)
  {
    v225 = v265;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_25_8(v225 + v223);
    if (!v226)
    {
      v228 = v289;
      v227 = v290;
      v229 = v265;
      v230 = v284;
      (*(v289 + 32))(v284, &v265[v223], v290);
      OUTLINED_FUNCTION_1_79();
      sub_1D50F88B0(v231);
      v232 = v266;
      LODWORD(v288) = sub_1D5614D18();
      v233 = *(v228 + 8);
      v233(v230, v227);
      v233(v232, v227);
      sub_1D4E50004(v229, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v288 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_175;
    }

    (*(v289 + 8))(v266, v290);
LABEL_173:
    v111 = &qword_1EC7E9FB0;
    v112 = &qword_1D562C590;
    v113 = v265;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_25_8(&v265[v223]);
  if (!v86)
  {
    goto LABEL_173;
  }

  sub_1D4E50004(v265, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_175:
  OUTLINED_FUNCTION_11_51(v136[28]);
  if (v86)
  {
    if (v234 != 2)
    {
      return 0;
    }

LABEL_181:
    OUTLINED_FUNCTION_67_15(v136[29]);
    if (v239)
    {
      if (!v238)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112_4();
      if (v240)
      {
        return 0;
      }
    }

    v241 = v136[30];
    v242 = *(v174 + 48);
    OUTLINED_FUNCTION_29_20();
    v243 = v279;
    OUTLINED_FUNCTION_8_1();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_27_29();
    OUTLINED_FUNCTION_57(v243, 1, v277);
    if (v86)
    {
      OUTLINED_FUNCTION_57(v279 + v242, 1, v277);
      if (v86)
      {
        sub_1D4E50004(v279, &qword_1EC7EFBD0, &qword_1D5634650);
LABEL_195:
        v251 = v136[31];
        v252 = *(v154 + 48);
        OUTLINED_FUNCTION_29_20();
        v253 = v270;
        OUTLINED_FUNCTION_8_1();
        sub_1D4FB8150();
        OUTLINED_FUNCTION_27_29();
        v254 = v253;
        OUTLINED_FUNCTION_25_8(v253);
        if (v86)
        {
          OUTLINED_FUNCTION_25_8(v253 + v252);
          if (v86)
          {
            sub_1D4E50004(v253, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          sub_1D4FB8150();
          OUTLINED_FUNCTION_25_8(v253 + v252);
          if (!v255)
          {
            v256 = v289;
            v257 = v253 + v252;
            v258 = v284;
            v259 = v290;
            (*(v289 + 32))(v284, v257, v290);
            OUTLINED_FUNCTION_1_79();
            sub_1D50F88B0(v260);
            v261 = v276;
            v262 = sub_1D5614D18();
            v263 = *(v256 + 8);
            v263(v258, v259);
            v263(v261, v259);
            sub_1D4E50004(v254, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v262 & 1) != 0;
          }

          (*(v289 + 8))(v276, v290);
        }

        v111 = &qword_1EC7E9FB0;
        v112 = &qword_1D562C590;
        v113 = v253;
LABEL_38:
        sub_1D4E50004(v113, v111, v112);
        return 0;
      }
    }

    else
    {
      v244 = v279;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v244 + v242, 1, v277);
      if (!v245)
      {
        OUTLINED_FUNCTION_39_19();
        v247 = v279;
        v248 = v267;
        sub_1D50F8858();
        v249 = v278;
        v250 = sub_1D54D5E40(v278, v248);
        sub_1D50F8800(v248, type metadata accessor for StorePlatformUber);
        sub_1D50F8800(v249, type metadata accessor for StorePlatformUber);
        sub_1D4E50004(v247, &qword_1EC7EFBD0, &qword_1D5634650);
        if (!v250)
        {
          return 0;
        }

        goto LABEL_195;
      }

      OUTLINED_FUNCTION_40_23();
      sub_1D50F8800(v278, v246);
    }

    v111 = &qword_1EC7EFDD8;
    v112 = &unk_1D5639570;
    v113 = v279;
    goto LABEL_38;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v235 && ((v236 ^ v237) & 1) == 0)
  {
    goto LABEL_181;
  }

  return result;
}

uint64_t sub_1D50F68F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449747369747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000064496E6FLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00656D614E6E6FLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
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
                              v19 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001D56843B0 == a2;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 25705 && a2 == 0xE200000000000000;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x80000001D56843D0 == a2;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                              if (v27 || (sub_1D5616168() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1D5616168() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                                                  if (v29 || (sub_1D5616168() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                    if (v30 || (sub_1D5616168() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 1919246965 && a2 == 0xE400000000000000;
                                                      if (v31 || (sub_1D5616168() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                                      {

                                                        return 27;
                                                      }

                                                      else
                                                      {
                                                        v33 = sub_1D5616168();

                                                        if (v33)
                                                        {
                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          return 28;
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
  }
}

unint64_t sub_1D50F7138(char a1)
{
  result = 0x6449747369747261;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x7255747369747261;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = 0x6172546F69647561;
      break;
    case 5:
    case 6:
      result = 0x697463656C6C6F63;
      break;
    case 7:
      result = 0x7265736F706D6F63;
      break;
    case 8:
    case 24:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6867697279706F63;
      break;
    case 10:
      result = 0x626D754E63736964;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6169726F74696465;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x7365726E6567;
      break;
    case 15:
      result = 0x636972794C736168;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 25705;
      break;
    case 18:
      result = 0x616C696176417369;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 1701667182;
      break;
    case 21:
      result = 0x73726566666FLL;
      break;
    case 22:
      result = 0x44657361656C6572;
      break;
    case 23:
      result = 0x6C725574726F6873;
      break;
    case 25:
      result = 0x6D754E6B63617274;
      break;
    case 26:
      result = 1919246965;
      break;
    case 27:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50F7428()
{
  v1 = v0;
  v147 = type metadata accessor for StorePlatformUber();
  v2 = OUTLINED_FUNCTION_14(v147);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v148 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v145 = v11;
  v149 = type metadata accessor for StorePlatformComposer();
  v12 = OUTLINED_FUNCTION_14(v149);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v150 = (v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v142 = v21;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v146);
  v141 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v140 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  v139 = v31 - v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v138 - v34;
  v36 = sub_1D560C0A8();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_59_0();
  v144 = v49 - v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  v143 = v138 - v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  v138[1] = v138 - v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v138 - v56;
  if (v0[1])
  {
    v58 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[3])
  {
    v59 = v0[2];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v60 = v39;
  v61 = type metadata accessor for StorePlatformSong();
  v62 = v61[6];
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v57, 1, v36);
  v63 = v44;
  if (v121)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v60 + 32))(v44, v57, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_79();
    sub_1D50F88B0(v64);
    OUTLINED_FUNCTION_44_18();
    v65 = OUTLINED_FUNCTION_26_17();
    v66(v65);
  }

  v67 = v146;
  v68 = v61[7];
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v35, 1, v67);
  if (v121)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v69 = v141;
    v70 = v35;
    v71 = v36;
    v72 = v63;
    v73 = v60;
    v74 = v140;
    (*(v141 + 32))(v140, v70, v67);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    sub_1D5614CB8();
    v75 = v74;
    v60 = v73;
    v63 = v72;
    v36 = v71;
    (*(v69 + 8))(v75, v67);
  }

  v76 = *(v0 + v61[8]);
  if (v76)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F08560();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_57_14(v61[9]);
  if (v76)
  {
    OUTLINED_FUNCTION_45_20(v77);
    OUTLINED_FUNCTION_48_15();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_57_14(v61[10]);
  if (v76)
  {
    OUTLINED_FUNCTION_45_20(v78);
    OUTLINED_FUNCTION_48_15();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v79 = v150;
  v80 = v61[11];
  v81 = v142;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_25_8(v81);
  if (v121)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_36_25();
    sub_1D50F8858();
    OUTLINED_FUNCTION_27();
    if (v79[1])
    {
      OUTLINED_FUNCTION_45_20(v150);
      v79 = v150;
      sub_1D5614E28();
    }

    else
    {
      OUTLINED_FUNCTION_36();
    }

    v82 = *(v149 + 20);
    sub_1D4FB8150();
    v83 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v83, v84, v36);
    if (v121)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v85 = OUTLINED_FUNCTION_30_27();
      v86(v85);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_79();
      sub_1D50F88B0(v87);
      OUTLINED_FUNCTION_44_18();
      v88 = OUTLINED_FUNCTION_26_17();
      v89(v88);
    }

    OUTLINED_FUNCTION_37_22();
    sub_1D50F8800(v79, v90);
  }

  v91 = *(v1 + v61[12]);
  if (v91)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_57_14(v61[13]);
  if (v91)
  {
    OUTLINED_FUNCTION_45_20(v92);
    OUTLINED_FUNCTION_48_15();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v93 = v1 + v61[14];
  if (v93[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v94 = *v93;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v94);
  }

  if (*(v1 + v61[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v61[16]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v61[17]))
  {
    OUTLINED_FUNCTION_27();
    v95 = OUTLINED_FUNCTION_140_3();
    sub_1D4F06928(v95, v96);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v97 = *(v1 + v61[18]);
  if (v97)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_40_6(v61[19]);
  if (!v121)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6(v61[20]);
  if (!v121)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v98 = (v1 + v61[21]);
  v99 = *v98;
  v100 = v98[1];
  sub_1D5614E28();
  OUTLINED_FUNCTION_40_6(v61[22]);
  if (!v121)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6(v61[23]);
  if (!v121)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_57_14(v61[24]);
  if (v97)
  {
    OUTLINED_FUNCTION_45_20(v101);
    OUTLINED_FUNCTION_48_15();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v102 = *(v1 + v61[25]);
  if (v102)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F080F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_57_14(v61[26]);
  if (v102)
  {
    OUTLINED_FUNCTION_45_20(v103);
    OUTLINED_FUNCTION_48_15();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v104 = v61[27];
  sub_1D4FB8150();
  v105 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v105, v106, v36);
  if (v121)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v107 = OUTLINED_FUNCTION_30_27();
    v108(v107);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_79();
    sub_1D50F88B0(v109);
    OUTLINED_FUNCTION_44_18();
    v110 = OUTLINED_FUNCTION_26_17();
    v111(v110);
  }

  OUTLINED_FUNCTION_40_6(v61[28]);
  if (!v121)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v112 = v1 + v61[29];
  if (v112[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v113 = *v112;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v113);
  }

  v114 = v148;
  v115 = v61[30];
  sub_1D4FB8150();
  v116 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v116, v117, v147);
  if (v121)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_39_19();
    sub_1D50F8858();
    OUTLINED_FUNCTION_27();
    v118 = v139;
    sub_1D4FB8150();
    v119 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v119, v120, v67);
    if (v121)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v122 = v141;
      v123 = *(v141 + 32);
      v150 = v36;
      v124 = v63;
      v125 = v67;
      v126 = v60;
      v127 = v140;
      v123(v140, v118, v125);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      sub_1D5614CB8();
      v128 = v127;
      v60 = v126;
      v129 = v125;
      v63 = v124;
      v36 = v150;
      (*(v122 + 8))(v128, v129);
    }

    OUTLINED_FUNCTION_40_23();
    sub_1D50F8800(v114, v130);
  }

  v131 = v61[31];
  sub_1D4FB8150();
  v132 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v132, v133, v36);
  if (v121)
  {
    return OUTLINED_FUNCTION_36();
  }

  v134 = OUTLINED_FUNCTION_30_27();
  v135(v134);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_79();
  sub_1D50F88B0(v136);
  OUTLINED_FUNCTION_44_18();
  return (*(v60 + 8))(v63, v36);
}

uint64_t sub_1D50F7ED8()
{
  sub_1D56162D8();
  sub_1D50F7428();
  return sub_1D5616328();
}

uint64_t sub_1D50F7F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50F68F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50F7F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50F7130();
  *a1 = result;
  return result;
}

uint64_t sub_1D50F7F70(uint64_t a1)
{
  v2 = sub_1D50F84E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50F7FAC(uint64_t a1)
{
  v2 = sub_1D50F84E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50F8024()
{
  sub_1D56162D8();
  sub_1D50F7428();
  return sub_1D5616328();
}

uint64_t sub_1D50F8060()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_68();
  v6 = sub_1D560F548();
  v7 = OUTLINED_FUNCTION_4(v6);
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for StorePlatformOffer(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = *(v1 + *(type metadata accessor for StorePlatformSong() + 100));
  if (!v23)
  {
    return 0;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = *(v14 + 20);
  v26 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v27 = *(v17 + 72);
  v40 = (v39 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  v41 = v13;
  do
  {
    sub_1D50F8760();
    sub_1D4FB8150();
    sub_1D50F8800(v22, type metadata accessor for StorePlatformOffer);
    OUTLINED_FUNCTION_57(v0, 1, v6);
    if (v29)
    {
      sub_1D4E50004(v0, &qword_1EC7EAC58, &unk_1D561DA70);
    }

    else
    {
      v30 = v6;
      v31 = *v40;
      v32 = v30;
      (*v40)(v41, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v28 + 16);
        sub_1D4F00C24();
        v28 = v36;
      }

      v34 = *(v28 + 16);
      if (v34 >= *(v28 + 24) >> 1)
      {
        sub_1D4F00C24();
        v28 = v37;
      }

      *(v28 + 16) = v34 + 1;
      (v31)(v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, v41, v32);
      v6 = v32;
    }

    v26 += v27;
    --v24;
  }

  while (v24);
  return v28;
}

uint64_t sub_1D50F8364()
{
  v1 = *(v0 + *(type metadata accessor for StorePlatformSong() + 88));
  if (v1 != 2)
  {
    return v1 & 1;
  }

  sub_1D50F88B0(&qword_1EC7EFC50);
  sub_1D50F88B0(&qword_1EC7EFC58);

  return sub_1D5612A28();
}

uint64_t sub_1D50F8460()
{
  sub_1D50F88B0(&qword_1EC7EFC58);

  return sub_1D5612A28();
}

unint64_t sub_1D50F84E0()
{
  result = qword_1EC7EFD88;
  if (!qword_1EC7EFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFD88);
  }

  return result;
}

unint64_t sub_1D50F8534()
{
  result = qword_1EC7EFD90;
  if (!qword_1EC7EFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFD70, ":Q\a");
    sub_1D50F88B0(&unk_1EC7EFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFD90);
  }

  return result;
}

unint64_t sub_1D50F85E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50F88B0(&unk_1EDD533A8);
    sub_1D50F88B0(&unk_1EDD533B0);
    result = OUTLINED_FUNCTION_65_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50F86AC()
{
  result = qword_1EC7EFDB8;
  if (!qword_1EC7EFDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFD70, ":Q\a");
    sub_1D50F88B0(&unk_1EC7EFDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFDB8);
  }

  return result;
}

uint64_t sub_1D50F8760()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D50F87B8()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C0B0);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FFA8();
}

uint64_t sub_1D50F8800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50F8858()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

unint64_t sub_1D50F88B0(uint64_t a1)
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

uint64_t _s4MoodOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformSong.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50F8A5C()
{
  result = qword_1EC7EFDE8;
  if (!qword_1EC7EFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFDE8);
  }

  return result;
}

unint64_t sub_1D50F8AB4()
{
  result = qword_1EC7EFDF0;
  if (!qword_1EC7EFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFDF0);
  }

  return result;
}

unint64_t sub_1D50F8B0C()
{
  result = qword_1EC7EFDF8;
  if (!qword_1EC7EFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFDF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_71_10()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_10()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_75_9()
{
  v3 = *(v0 - 216);
  v2 = *(v0 - 208);
  v4 = *(v0 - 144);
  v5 = *(v0 - 136);
  v6 = *(v0 - 120);

  return sub_1D5615F78();
}

uint64_t sub_1D50F8BEC()
{
  result = 0x7972676E61;
  switch(*v0)
  {
    case 1:
      v2 = 1769038434;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 2:
      return 0x6C6C696863;
    case 3:
      return 0x6E776F646C6F6F63;
    case 4:
      return 0x6974656772656E65;
    case 5:
      return OUTLINED_FUNCTION_2_69();
    case 6:
      return OUTLINED_FUNCTION_3_70();
    case 7:
      v3 = 1886413160;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
    case 8:
      return 6578547;
    case 9:
      return 0x7373656E746966;
    case 0xA:
      v4 = 0x697375636F66;
      goto LABEL_29;
    case 0xB:
      v2 = 1768776039;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 0xC:
      return OUTLINED_FUNCTION_1_80();
    case 0xD:
      v4 = OUTLINED_FUNCTION_6_55();
      goto LABEL_29;
    case 0xE:
      return 0xD000000000000012;
    case 0xF:
      return 0x697461746964656DLL;
    case 0x10:
      return 0x6574617669746F6DLL;
    case 0x11:
      v3 = 1953653104;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
    case 0x12:
      return 0x726170206C6F6F70;
    case 0x13:
      v4 = 0x6978616C6572;
      goto LABEL_29;
    case 0x14:
      return 0x6E697265776F6873;
    case 0x15:
      return 0x7065656C73;
    case 0x16:
      v4 = 0x697964757473;
LABEL_29:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 0x17:
      result = 0x72656D6D7573;
      break;
    case 0x18:
      result = 0x746165627075;
      break;
    case 0x19:
      result = 0x6E6F697461636176;
      break;
    case 0x1A:
      result = 0x676E696B6C6177;
      break;
    case 0x1B:
      result = 0x74756F6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50F8E84(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_7();
  sub_1D5616358();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_0_7();
    v1 = sub_1D5616188();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D50F8F30(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1D50F8FCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D50F8E84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D50F8FF8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1D50F8F30(a1);
}

uint64_t sub_1D50F9014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972676E61 && a2 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 0;
LABEL_7:
    *a3 = v8;
    return result;
  }

  v9 = a1 == 0x676E69716262 && a2 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_7;
  }

  v10 = a1 == 0x6C6C696863 && a2 == 0xE500000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 2;
    goto LABEL_7;
  }

  v11 = a1 == 0x6E776F646C6F6F63 && a2 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 3;
    goto LABEL_7;
  }

  v12 = a1 == 0x6974656772656E65 && a2 == 0xE900000000000063;
  if (v12 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 4;
    goto LABEL_7;
  }

  v14 = a1 == OUTLINED_FUNCTION_2_69() && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 5;
    goto LABEL_7;
  }

  v16 = a1 == OUTLINED_FUNCTION_3_70() && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 6;
    goto LABEL_7;
  }

  v17 = a1 == 0x7970706168 && a2 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 7;
    goto LABEL_7;
  }

  v18 = a1 == 6578547 && a2 == 0xE300000000000000;
  if (v18 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 8;
    goto LABEL_7;
  }

  v19 = a1 == 0x7373656E746966 && a2 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 9;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_53(0x697375636F66);
  v20 = v6 && a2 == 0xE800000000000000;
  if (v20 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 10;
    goto LABEL_7;
  }

  v21 = a1 == 0x676E696D6167 && a2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 11;
    goto LABEL_7;
  }

  v23 = a1 == OUTLINED_FUNCTION_1_80() && a2 == v22;
  if (v23 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 12;
    goto LABEL_7;
  }

  v24 = OUTLINED_FUNCTION_6_55();
  OUTLINED_FUNCTION_4_53(v24);
  v26 = v6 && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 13;
    goto LABEL_7;
  }

  v27 = a1 == 0xD000000000000012 && 0x80000001D5684460 == a2;
  if (v27 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 14;
    goto LABEL_7;
  }

  v28 = a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL;
  if (v28 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 15;
    goto LABEL_7;
  }

  v29 = a1 == 0x6574617669746F6DLL && a2 == 0xE900000000000064;
  if (v29 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 16;
    goto LABEL_7;
  }

  v30 = a1 == 0x7974726170 && a2 == 0xE500000000000000;
  if (v30 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 17;
    goto LABEL_7;
  }

  v31 = a1 == 0x726170206C6F6F70 && a2 == 0xEA00000000007974;
  if (v31 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 18;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_53(0x6978616C6572);
  v32 = v6 && a2 == 0xE800000000000000;
  if (v32 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 19;
    goto LABEL_7;
  }

  v33 = a1 == 0x6E697265776F6873 && a2 == 0xE900000000000067;
  if (v33 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 20;
    goto LABEL_7;
  }

  v34 = a1 == 0x7065656C73 && a2 == 0xE500000000000000;
  if (v34 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 21;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_53(0x697964757473);
  v35 = v6 && a2 == 0xE800000000000000;
  if (v35 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 22;
    goto LABEL_7;
  }

  v36 = a1 == 0x72656D6D7573 && a2 == 0xE600000000000000;
  if (v36 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 23;
    goto LABEL_7;
  }

  v37 = a1 == 0x746165627075 && a2 == 0xE600000000000000;
  if (v37 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 24;
    goto LABEL_7;
  }

  v38 = a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000;
  if (v38 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 25;
    goto LABEL_7;
  }

  v39 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
  if (v39 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
  {

    v8 = 26;
    goto LABEL_7;
  }

  if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    goto LABEL_171;
  }

  v41 = OUTLINED_FUNCTION_0_87();

  if (v41)
  {
LABEL_171:
    v8 = 27;
    goto LABEL_7;
  }

  v42 = sub_1D5611C78();
  sub_1D50F96EC();
  swift_allocError();
  (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69763E8], v42);
  return swift_willThrow();
}

unint64_t sub_1D50F96EC()
{
  result = qword_1EC7EE070;
  if (!qword_1EC7EE070)
  {
    sub_1D5611C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE070);
  }

  return result;
}

unint64_t sub_1D50F9758()
{
  result = qword_1EC7EFE00;
  if (!qword_1EC7EFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE00);
  }

  return result;
}

uint64_t MusicPin.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v136 = a4;
  v138 = a3;
  v139 = a5;
  v129 = sub_1D5613D28();
  v7 = OUTLINED_FUNCTION_4(v129);
  v127 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v128 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v116 - v13;
  OUTLINED_FUNCTION_70_0();
  v125 = sub_1D5614898();
  v14 = OUTLINED_FUNCTION_4(v125);
  v124 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v123 = v19 - v18;
  OUTLINED_FUNCTION_70_0();
  v122 = sub_1D5613EF8();
  v20 = OUTLINED_FUNCTION_4(v122);
  v121 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v120 = v25 - v24;
  OUTLINED_FUNCTION_70_0();
  v119 = sub_1D5613AF8();
  v26 = OUTLINED_FUNCTION_4(v119);
  v118 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v117 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v116 - v34;
  v132 = sub_1D560E728();
  v36 = OUTLINED_FUNCTION_4(v132);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v133 = sub_1D560D9A8();
  v42 = OUTLINED_FUNCTION_4(v133);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v140 = sub_1D560D838();
  v47 = OUTLINED_FUNCTION_4(v140);
  v135 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v130 = v51;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v131 = &v116 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v134 = &v116 - v55;
  v56 = sub_1D560F7E8();
  sub_1D50FA3E4();
  v57 = sub_1D5614C68();
  v58 = sub_1D50FA438(v57);
  if (v59)
  {
    v60 = 1;
  }

  else
  {
    v60 = v58;
  }

  v137 = a2;
  v61 = sub_1D560F7B8();
  if (!v61)
  {
    goto LABEL_16;
  }

  v62 = v61;
  switch(v60)
  {
    case 1:
      sub_1D560D928();
      sub_1D560D588();
      v131 = a1;
      sub_1D560D4F8();
      v63 = v130;
      sub_1D560F7D8();
      sub_1D4E50004(v35, &unk_1EC7EBF30, &qword_1D561C8C0);
      v64 = OUTLINED_FUNCTION_6_56();
      v65(v64);
      v66 = OUTLINED_FUNCTION_5_59();
      v67(v66);
      v68 = v135;
      (*(v135 + 16))(v134, v63, v140);
      v69 = v138;
      sub_1D4EC76A8(v138, &v141);
      swift_unknownObjectRetain();

      v70 = v126;
      sub_1D5613C88();
      v71 = v127;
      v72 = v128;
      v73 = v129;
      (*(v127 + 16))(v128, v70, v129);
      v74 = (*(v71 + 88))(v72, v73);
      if (v74 == *MEMORY[0x1E6976E18])
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v69, &qword_1EC7EEC40, &unk_1D561C070);
        v75 = *(v68 + 8);
        v76 = v140;
        v75(v131, v140);
        (*(v71 + 8))(v70, v73);
        v75(v130, v76);
        (*(v71 + 96))(v72, v73);
        v77 = sub_1D5613838();
        OUTLINED_FUNCTION_14(v77);
        (*(v78 + 32))(v139, v72);
      }

      else
      {
        v106 = v140;
        v107 = v131;
        if (v74 != *MEMORY[0x1E6976DF8])
        {
          while (1)
          {
            v141 = 0;
            v142 = 0xE000000000000000;
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5684550);
            sub_1D50FAE48(&qword_1EC7EA708, MEMORY[0x1E6976E60]);
            v115 = sub_1D56160F8();
            MEMORY[0x1DA6EAC70](v115);

            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_16:
            sub_1D5615E08();
            __break(1u);
          }
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v69, &qword_1EC7EEC40, &unk_1D561C070);
        v108 = *(v68 + 8);
        v108(v107, v106);
        v109 = v127;
        v110 = v129;
        (*(v127 + 8))(v126, v129);
        v108(v130, v106);
        v111 = v128;
        (*(v109 + 96))(v128, v110);
        v112 = sub_1D560EEA8();
        OUTLINED_FUNCTION_14(v112);
        (*(v113 + 32))(v139, v111);
      }

LABEL_13:
      type metadata accessor for MusicPin.Item();
      return swift_storeEnumTagMultiPayload();
    case 2:

      sub_1D560D908();
      sub_1D560D588();
      sub_1D560D4F8();
      OUTLINED_FUNCTION_3_71();
      sub_1D4E50004(v35, &unk_1EC7EBF30, &qword_1D561C8C0);
      v97 = OUTLINED_FUNCTION_6_56();
      v98(v97);
      v99 = OUTLINED_FUNCTION_5_59();
      v100(v99);
      v101 = v140;
      (*(v135 + 16))(v131, v56, v140);
      OUTLINED_FUNCTION_10_53();
      v102 = v117;
      sub_1D56138E8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v41, &qword_1EC7EEC40, &unk_1D561C070);
      v103 = OUTLINED_FUNCTION_14_6();
      v62(v103);
      (v62)(v56, v101);
      v104 = OUTLINED_FUNCTION_4_54(&v144);
      v105(v104, v102, v119);
      goto LABEL_13;
    case 3:

      sub_1D560D938();
      sub_1D560D588();
      sub_1D560D4F8();
      OUTLINED_FUNCTION_3_71();
      sub_1D4E50004(v35, &unk_1EC7EBF30, &qword_1D561C8C0);
      v79 = OUTLINED_FUNCTION_6_56();
      v80(v79);
      v81 = OUTLINED_FUNCTION_5_59();
      v82(v81);
      v83 = OUTLINED_FUNCTION_7_55();
      v84(v83);
      OUTLINED_FUNCTION_10_53();
      OUTLINED_FUNCTION_9_53(&v145);
      sub_1D5613D98();
      swift_unknownObjectRelease();
      sub_1D4E50004(v41, &qword_1EC7EEC40, &unk_1D561C070);
      v85 = OUTLINED_FUNCTION_14_6();
      v62(v85);
      (v62)(v56, v35);
      v86 = OUTLINED_FUNCTION_4_54(&v146);
      v87(v86, v44, v122);
      goto LABEL_13;
    case 4:

      sub_1D560D968();
      sub_1D560D588();
      sub_1D560D4F8();
      OUTLINED_FUNCTION_3_71();
      sub_1D4E50004(v35, &unk_1EC7EBF30, &qword_1D561C8C0);
      v88 = OUTLINED_FUNCTION_6_56();
      v89(v88);
      v90 = OUTLINED_FUNCTION_5_59();
      v91(v90);
      v92 = OUTLINED_FUNCTION_7_55();
      v93(v92);
      OUTLINED_FUNCTION_10_53();
      OUTLINED_FUNCTION_9_53(&v147);
      sub_1D56144C8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v41, &qword_1EC7EEC40, &unk_1D561C070);
      v94 = OUTLINED_FUNCTION_14_6();
      v62(v94);
      (v62)(v56, v35);
      v95 = OUTLINED_FUNCTION_4_54(&v148);
      v96(v95, v44, v125);
      goto LABEL_13;
    default:
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000025, 0x80000001D5684520);
      v143 = v60;
      type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType();
      sub_1D5615D48();
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      goto LABEL_16;
  }
}

unint64_t sub_1D50FA3E4()
{
  result = qword_1EC7EFE08;
  if (!qword_1EC7EFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE08);
  }

  return result;
}

id sub_1D50FA438(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D4F0E510(), (v3 & 1) != 0) && (sub_1D4E5194C(*(a1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0))
  {
    return [objc_opt_self() typeForRawValue_];
  }

  else
  {
    return 0;
  }
}

uint64_t MusicPin.Item.convertToRawDictionary(for:)()
{
  v0 = sub_1D5613838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v58 = v2;
  v59 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v57 = v6 - v5;
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D5614898();
  v8 = OUTLINED_FUNCTION_4(v7);
  v55 = v9;
  v56 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D560EEA8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v54 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D5613EF8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v53 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = sub_1D5613AF8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = type metadata accessor for MusicPin.Item();
  v41 = OUTLINED_FUNCTION_14(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  sub_1D4F6FD08(v60, v45 - v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v53 + 32))(v30, v46, v23);
      sub_1D50FAE48(&qword_1EC7EF9B8, MEMORY[0x1E6976F28]);
      v51 = sub_1D56132F8();
      (*(v53 + 8))(v30, v23);
      break;
    case 2u:
      (*(v54 + 32))(v22, v46, v15);
      sub_1D50FAE48(&qword_1EC7EA728, MEMORY[0x1E69754E8]);
      v51 = sub_1D56132F8();
      (*(v54 + 8))(v22, v15);
      break;
    case 3u:
      (*(v55 + 32))(v14, v46, v56);
      sub_1D50FAE48(&qword_1EC7EB4E8, MEMORY[0x1E69773E0]);
      v51 = sub_1D56132F8();
      (*(v55 + 8))(v14, v56);
      break;
    case 4u:
      v39 = v57;
      v34 = v58;
      v49 = OUTLINED_FUNCTION_4_6();
      v31 = v59;
      v50(v49);
      sub_1D50FAE48(&qword_1EC7EA730, MEMORY[0x1E6976BE8]);
      goto LABEL_4;
    default:
      v47 = OUTLINED_FUNCTION_4_6();
      v48(v47);
      sub_1D50FAE48(&qword_1EC7EB4F0, MEMORY[0x1E6976D28]);
LABEL_4:
      v51 = sub_1D56132F8();
      (*(v34 + 8))(v39, v31);
      break;
  }

  return v51;
}

uint64_t MusicPin.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Item();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D4F6FD08(v1, v8 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = sub_1D5613158();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 104))(a1, **(&unk_1E84C4C48 + EnumCaseMultiPayload));
  return sub_1D4F70890(v9);
}

BOOL sub_1D50FAB18()
{
  v0 = sub_1D5615EF8();

  return v0 != 0;
}

BOOL sub_1D50FAB88@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D50FAB18();
  *a2 = result;
  return result;
}

unint64_t sub_1D50FABBC@<X0>(void *a1@<X8>)
{
  result = sub_1D50FAB60();
  *a1 = 0xD00000000000002BLL;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D50FABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50FAE48(&qword_1EC7EFE28, type metadata accessor for MusicPin.Item);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

_BYTE *_s34LegacyModelMusicPinItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50FAD44()
{
  result = qword_1EC7EFE10;
  if (!qword_1EC7EFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE10);
  }

  return result;
}

unint64_t sub_1D50FAD9C()
{
  result = qword_1EC7EFE18;
  if (!qword_1EC7EFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE18);
  }

  return result;
}

unint64_t sub_1D50FADF4()
{
  result = qword_1EC7EFE20;
  if (!qword_1EC7EFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE20);
  }

  return result;
}

uint64_t sub_1D50FAE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CloudMusicSummary.Attributes.year.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t static CloudMusicSummary.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_53_0();
}

uint64_t sub_1D50FAECC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1918985593 && a2 == 0xE400000000000000)
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

uint64_t sub_1D50FAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50FAECC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D50FAF84(uint64_t a1)
{
  v2 = sub_1D50FB114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50FAFC0(uint64_t a1)
{
  v2 = sub_1D50FB114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicSummary.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE40, &qword_1D5635140);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9();
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D50FB114();
  sub_1D56163D8();
  sub_1D5616058();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D50FB114()
{
  result = qword_1EC7EFE48;
  if (!qword_1EC7EFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE48);
  }

  return result;
}

uint64_t CloudMusicSummary.Attributes.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1D56162F8();
  }

  v2 = *v0;
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t CloudMusicSummary.Attributes.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2 != 1)
  {
    MEMORY[0x1DA6EC0D0](v1);
  }

  return sub_1D5616328();
}

void CloudMusicSummary.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE50, &qword_1D5635148);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D50FB114();
  sub_1D5616398();
  if (!v0)
  {
    v13 = sub_1D5615F68();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    *(v5 + 8) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D50FB3B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2 != 1)
  {
    MEMORY[0x1DA6EC0D0](v1);
  }

  return sub_1D5616328();
}

uint64_t CloudMusicSummary.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudMusicSummary.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D50FB53C@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudMusicSummary.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1D50FB57C(uint64_t a1)
{
  v2 = sub_1D50FBA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50FB5B8(uint64_t a1)
{
  v2 = sub_1D50FBA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudMusicSummary.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_31();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE68, &qword_1D5635160);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_0();
  v41 = *(v40 + 56);
  sub_1D4FB8150();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v20, 1, v24);
  if (!v42)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v20 + v41, 1, v24);
    if (!v42)
    {
      (*(v26 + 32))(v31, v20 + v41, v24);
      sub_1D50FC2A8(&qword_1EC7EFE70, &qword_1EC7EB308);
      sub_1D5614D18();
      v43 = *(v26 + 8);
      v44 = OUTLINED_FUNCTION_71();
      v43(v44);
      (v43)(v21, v24);
      sub_1D4E50004(v20, &qword_1EC7EFE58, &qword_1D5635150);
      goto LABEL_10;
    }

    (*(v26 + 8))(v21, v24);
LABEL_9:
    sub_1D4E50004(v20, &qword_1EC7EFE68, &qword_1D5635160);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v20 + v41, 1, v24);
  if (!v42)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v20, &qword_1EC7EFE58, &qword_1D5635150);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicSummary.Relationships.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE78, &qword_1D5635168);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  OUTLINED_FUNCTION_62_1();
  sub_1D50FBA18();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  sub_1D50FC2A8(&qword_1EC7EFE88, &qword_1EC7EC648);
  sub_1D5616068();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1D50FBA18()
{
  result = qword_1EC7EFE80;
  if (!qword_1EC7EFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE80);
  }

  return result;
}

uint64_t sub_1D50FBA6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CloudMusicSummary.Relationships.hash(into:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v12)
  {
    return sub_1D56162F8();
  }

  (*(v4 + 32))(v0, v1, v2);
  sub_1D56162F8();
  OUTLINED_FUNCTION_5_60();
  sub_1D50FC2A8(v13, v14);
  sub_1D5614CB8();
  return (*(v4 + 8))(v0, v2);
}

uint64_t CloudMusicSummary.Relationships.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1D56162D8();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v12, 1, v1);
  if (v13)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v0, v12, v1);
    sub_1D56162F8();
    OUTLINED_FUNCTION_5_60();
    sub_1D50FC2A8(v14, v15);
    sub_1D5614CB8();
    (*(v3 + 8))(v0, v1);
  }

  return sub_1D5616328();
}

void CloudMusicSummary.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v22 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE98, &qword_1D5635170);
  OUTLINED_FUNCTION_4(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = type metadata accessor for CloudMusicSummary.Relationships(0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D50FBA18();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D50FC2A8(&qword_1EC7EFEA0, &qword_1EC7EC6A8);
    sub_1D5615F78();
    (*(v23 + 8))(v1, v9);
    sub_1D4FB8058();
    sub_1D50FC344(v20, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D50FC08C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - v7;
  sub_1D56162D8();
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v8, 1, v0) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v1 + 32))(v4, v8, v0);
    sub_1D56162F8();
    sub_1D50FC2A8(&qword_1EC7EFE90, &qword_1EC7EB310);
    sub_1D5614CB8();
    (*(v1 + 8))(v4, v0);
  }

  return sub_1D5616328();
}

uint64_t sub_1D50FC2A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D50FBA6C(a2, MEMORY[0x1E6976480]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50FC344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMusicSummary.Relationships(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50FC3AC(uint64_t a1)
{
  v2 = sub_1D50FC468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50FC3E8(uint64_t a1)
{
  v2 = sub_1D50FC468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D50FC468()
{
  result = qword_1EC7EFEB0;
  if (!qword_1EC7EFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEB0);
  }

  return result;
}

uint64_t sub_1D50FC53C(uint64_t a1)
{
  v2 = sub_1D50FC6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50FC578(uint64_t a1)
{
  v2 = sub_1D50FC6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D50FC5F8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D50FC6F0()
{
  result = qword_1EC7EFEC0;
  if (!qword_1EC7EFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEC0);
  }

  return result;
}

uint64_t CloudMusicSummary.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudMusicSummary.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void CloudMusicSummary.attributes.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CloudMusicSummary.views.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudMusicSummary(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudMusicSummary.meta.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudMusicSummary(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D50FC90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FEB8();
  qword_1EC7EFE38 = v3;
  return result;
}

uint64_t sub_1D50FCCA4(char a1)
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

uint64_t sub_1D50FCD40(uint64_t a1)
{
  v2 = sub_1D50FCFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50FCD7C(uint64_t a1)
{
  v2 = sub_1D50FCFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudMusicSummary.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFED8, &qword_1D5635198);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  OUTLINED_FUNCTION_62_1();
  sub_1D50FCFE8();
  sub_1D56163D8();
  v19 = *v4;
  v23 = v4[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v2)
  {
    v20 = v4[2];
    v24 = *(v4 + 24);
    sub_1D50FD03C();
    OUTLINED_FUNCTION_61_0();
    sub_1D56160C8();
    v14 = type metadata accessor for CloudMusicSummary(0);
    v15 = v14[6];
    type metadata accessor for CloudMusicSummary.Relationships(0);
    OUTLINED_FUNCTION_11_52();
    sub_1D50FBA6C(v16, v17);
    sub_1D5616068();
    v21 = *(v4 + v14[7]);
    sub_1D50FD090();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v22 = *(v4 + v14[8]);
    sub_1D50FD0E4();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1D50FCFE8()
{
  result = qword_1EC7EFEE0;
  if (!qword_1EC7EFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEE0);
  }

  return result;
}

unint64_t sub_1D50FD03C()
{
  result = qword_1EC7EFEE8;
  if (!qword_1EC7EFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEE8);
  }

  return result;
}

unint64_t sub_1D50FD090()
{
  result = qword_1EC7EFEF8;
  if (!qword_1EC7EFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEF8);
  }

  return result;
}

unint64_t sub_1D50FD0E4()
{
  result = qword_1EC7EFF00;
  if (!qword_1EC7EFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF00);
  }

  return result;
}

void CloudMusicSummary.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  OUTLINED_FUNCTION_4(v2);
  v39 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v13 = type metadata accessor for CloudMusicSummary.Relationships(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v26 = *v0;
  v27 = v0[1];
  sub_1D5614E28();
  if (*(v0 + 24) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v28 = v0[2];
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v28);
  }

  v29 = type metadata accessor for CloudMusicSummary(0);
  v30 = v29[6];
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v25, 1, v13);
  if (v31)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D50FC344(v25, v19);
    sub_1D56162F8();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v1, 1, v2);
    if (v31)
    {
      sub_1D56162F8();
    }

    else
    {
      v32 = v39;
      (*(v39 + 32))(v8, v1, v2);
      sub_1D56162F8();
      OUTLINED_FUNCTION_5_60();
      sub_1D50FC2A8(v33, v34);
      sub_1D5614CB8();
      (*(v32 + 8))(v8, v2);
    }

    OUTLINED_FUNCTION_1_81();
    sub_1D50FD9C0(v19, v35);
  }

  v36 = *(v0 + v29[7]);
  sub_1D56162F8();
  v37 = *(v0 + v29[8]);
  sub_1D56162F8();
  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicSummary.hashValue.getter()
{
  sub_1D56162D8();
  CloudMusicSummary.hash(into:)();
  return sub_1D5616328();
}

void CloudMusicSummary.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v30[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFF08, &unk_1D56351A0);
  OUTLINED_FUNCTION_4(v31);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for CloudMusicSummary(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = v2[3];
  v20 = v2[4];
  v32 = v2;
  OUTLINED_FUNCTION_62_1();
  sub_1D50FCFE8();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30[0] = v9;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v22 = v34;
    *v19 = v33;
    *(v19 + 8) = v22;
    sub_1D50FD8C4();
    OUTLINED_FUNCTION_7_56();
    sub_1D5615FD8();
    v23 = v34;
    *(v19 + 16) = v33;
    *(v19 + 24) = v23;
    type metadata accessor for CloudMusicSummary.Relationships(0);
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_11_52();
    sub_1D50FBA6C(v24, v25);
    sub_1D5615F78();
    v26 = v13[6];
    sub_1D4FB8058();
    sub_1D50FD918();
    OUTLINED_FUNCTION_7_56();
    sub_1D5615F78();
    *(v19 + v13[7]) = v33;
    sub_1D50FD96C();
    OUTLINED_FUNCTION_7_56();
    sub_1D5615F78();
    v27 = OUTLINED_FUNCTION_16_1();
    v28(v27);
    *(v19 + v13[8]) = v33;
    OUTLINED_FUNCTION_10_54();
    sub_1D50FE8A8();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_4_55();
    sub_1D50FD9C0(v19, v29);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D50FD888()
{
  sub_1D56162D8();
  CloudMusicSummary.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D50FD8C4()
{
  result = qword_1EC7EFF10;
  if (!qword_1EC7EFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF10);
  }

  return result;
}

unint64_t sub_1D50FD918()
{
  result = qword_1EC7EFF20;
  if (!qword_1EC7EFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF20);
  }

  return result;
}

unint64_t sub_1D50FD96C()
{
  result = qword_1EC7EFF28;
  if (!qword_1EC7EFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF28);
  }

  return result;
}

uint64_t sub_1D50FD9C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void MusicSummary.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v96 = v0;
  v98 = v1;
  v3 = v2;
  v5 = v4;
  v93 = v6;
  v102 = sub_1D5612478();
  v7 = OUTLINED_FUNCTION_4(v102);
  v89 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v101 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v90 = v23;
  v24 = OUTLINED_FUNCTION_70_0();
  v25 = type metadata accessor for CloudMusicSummary(v24);
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v95 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v89 - v35;
  v37 = type metadata accessor for MusicSummaryPropertyProvider();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;
  if (qword_1EC7E8A80 != -1)
  {
    swift_once();
  }

  v44 = sub_1D560D9A8();
  __swift_project_value_buffer(v44, qword_1EC7ECEE8);
  v45 = sub_1D56109F8();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v45);
  v46 = *(v37 + 28);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC028, &qword_1D561F9A0);
  sub_1D56105B8();
  sub_1D4E50004(v36, &qword_1EC7EB5C0, &unk_1D56223C0);
  v99 = v37;
  v48 = *(v37 + 32);
  v94 = v43;
  sub_1D5610658();
  v100 = sub_1D5610618();
  v92 = v49;
  v91 = sub_1D56105C8();
  v50 = sub_1D56105F8();
  v51 = sub_1D56105E8();
  v97 = v47;
  v52 = sub_1D56105A8();
  if (qword_1EC7E8E08 != -1)
  {
    swift_once();
  }

  v53 = qword_1EC87C170;
  if (qword_1EC87C170 >> 62)
  {
    sub_1D560CDE8();

    v88 = sub_1D5615E18();

    v53 = v88;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v54 = v94;
  *(v94 + 32) = v53;
  v55 = v99;
  v56 = (v54 + *(v99 + 36));
  *v56 = v100;
  v56[1] = v92;
  *(v54 + v55[10]) = v91;
  *(v54 + v55[11]) = v50;
  *(v54 + v55[12]) = v51;
  v57 = v54;
  *(v54 + v55[13]) = v52;
  v58 = v95;
  v59 = v97;
  sub_1D5610648();
  v60 = *(v58 + 24);
  *v57 = *(v58 + 16);
  *(v57 + 8) = v60;
  v61 = *(v25 + 24);
  sub_1D4FB8150();
  v62 = type metadata accessor for CloudMusicSummary.Relationships(0);
  OUTLINED_FUNCTION_57(v18, 1, v62);
  if (v69)
  {
    sub_1D4E50004(v18, &qword_1EC7EFEC8, &qword_1D5635188);
    v63 = 0;
    v64 = 0;
    v65 = v96;
  }

  else
  {
    v66 = v90;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_1_81();
    sub_1D50FD9C0(v18, v67);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
    OUTLINED_FUNCTION_57(v66, 1, v68);
    v65 = v96;
    if (v69)
    {
      sub_1D4E50004(v66, &qword_1EC7EFE58, &qword_1D5635150);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v70 = sub_1D56123B8();
      (*(*(v68 - 8) + 8))(v66, v68);
      v71 = *(v70 + 16);
      if (v71)
      {
        v91 = v3;
        v92 = v5;
        v100 = *(v89 + 16);
        v72 = *(v89 + 80);
        v90 = v70;
        v73 = v70 + ((v72 + 32) & ~v72);
        v74 = *(v89 + 72);
        v75 = (v89 + 8);
        v76 = MEMORY[0x1E69E7CC0];
        do
        {
          v78 = v101;
          v77 = v102;
          v100(v101, v73, v102);
          v79 = sub_1D5612448();
          v81 = v80;
          (*v75)(v78, v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = v76[2];
            sub_1D4F0062C();
            v76 = v85;
          }

          v82 = v76[2];
          if (v82 >= v76[3] >> 1)
          {
            sub_1D4F0062C();
            v76 = v86;
          }

          v76[2] = v82 + 1;
          v83 = &v76[2 * v82];
          v83[4] = v79;
          v83[5] = v81;
          v73 += v74;
          --v71;
        }

        while (v71);

        v3 = v91;
        v5 = v92;
        v58 = v95;
        v65 = v96;
        v57 = v94;
      }

      else
      {

        v76 = MEMORY[0x1E69E7CC0];
      }

      if (v76[2])
      {
        v63 = v76[4];
        v64 = v76[5];
      }

      else
      {

        v63 = 0;
        v64 = 0;
      }

      v59 = v97;
    }
  }

  *(v57 + 16) = v63;
  *(v57 + 24) = v64;
  v103[3] = v99;
  v103[4] = sub_1D50FBA6C(&qword_1EC7EFF30, type metadata accessor for MusicSummaryPropertyProvider);
  __swift_allocate_boxed_opaque_existential_0(v103);
  sub_1D50FE8A8();
  MusicSummary.init(propertyProvider:)(v103, v93);

  (*(*(v65 - 8) + 8))(v3, v65);
  (*(*(v59 - 8) + 8))(v5, v59);
  OUTLINED_FUNCTION_4_55();
  sub_1D50FD9C0(v58, v87);
  sub_1D50FD9C0(v57, type metadata accessor for MusicSummaryPropertyProvider);
  OUTLINED_FUNCTION_46();
}

void MusicSummary.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v95 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v93 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v89 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v88 = v16;
  OUTLINED_FUNCTION_70_0();
  v94 = sub_1D5612B78();
  v17 = OUTLINED_FUNCTION_4(v94);
  v92 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v91 = v22 - v21;
  v23 = OUTLINED_FUNCTION_70_0();
  v100 = type metadata accessor for CloudMusicSummary(v23);
  v24 = OUTLINED_FUNCTION_14(v100);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v99 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v90 = v83 - v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v87 = type metadata accessor for CloudMusicSummary.Relationships(v30);
  v31 = OUTLINED_FUNCTION_14(v87);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v98 = v35 - v34;
  OUTLINED_FUNCTION_70_0();
  v36 = sub_1D5610088();
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v43 = sub_1D5612478();
  v44 = OUTLINED_FUNCTION_4(v43);
  v96 = v45;
  v97 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v50 = v49 - v48;
  if (qword_1EC7E8A60 != -1)
  {
    swift_once();
  }

  sub_1D50FBA6C(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  sub_1D50FBA6C(&qword_1EC7ECF00, type metadata accessor for MusicSummary);
  sub_1D560EC28();
  v85 = v101;
  v84 = v102;
  v51 = *v0;
  v52 = v0[1];
  v53 = *(type metadata accessor for MusicSummary() + 20);

  sub_1D5611A98();
  sub_1D5611A88();

  v86 = v50;
  v83[1] = v42;
  sub_1D5612438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE78, &qword_1D56351B0);
  v54 = *(v96 + 72);
  v55 = v96;
  v56 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D561C050;
  (*(v55 + 16))(v57 + v56, v50, v97);
  sub_1D56123A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v100;
  v63 = *(v100 + 24);
  v64 = v90;
  sub_1D50FE8A8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v87);
  *v64 = v51;
  *(v64 + 8) = v52;
  *(v64 + 16) = v85;
  *(v64 + 24) = v84;
  *(v64 + *(v62 + 28)) = 1;
  *(v64 + *(v62 + 32)) = 1;
  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v72);
  v73 = v91;
  sub_1D5612B38();
  OUTLINED_FUNCTION_10_54();
  sub_1D50FE8A8();
  sub_1D5611A98();
  v74 = sub_1D5611A88();
  v88 = v75;
  v89 = v74;
  v76 = v92;
  v77 = v94;
  (*(v92 + 16))(v93, v73, v94);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  v87 = sub_1D5611A38();
  sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50FBA6C(&qword_1EC7EFF38, type metadata accessor for CloudMusicSummary);
  sub_1D5610628();
  (*(v76 + 8))(v73, v77);
  OUTLINED_FUNCTION_4_55();
  sub_1D50FD9C0(v64, v81);
  OUTLINED_FUNCTION_1_81();
  sub_1D50FD9C0(v98, v82);
  (*(v96 + 8))(v86, v97);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50FE83C()
{
  sub_1D50FBA6C(&qword_1EC7EC048, type metadata accessor for MusicSummary);

  return sub_1D5612668();
}

uint64_t sub_1D50FE8A8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

unint64_t sub_1D50FE904()
{
  result = qword_1EC7EFF40;
  if (!qword_1EC7EFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF40);
  }

  return result;
}

unint64_t sub_1D50FE95C()
{
  result = qword_1EC7EFF48;
  if (!qword_1EC7EFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF48);
  }

  return result;
}

unint64_t sub_1D50FE9B4()
{
  result = qword_1EC7EFF50;
  if (!qword_1EC7EFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF50);
  }

  return result;
}

unint64_t sub_1D50FEA0C()
{
  result = qword_1EC7EFF58;
  if (!qword_1EC7EFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF58);
  }

  return result;
}

unint64_t sub_1D50FEA64()
{
  result = qword_1EC7EFF60;
  if (!qword_1EC7EFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFF68, &qword_1D5635360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF60);
  }

  return result;
}

unint64_t sub_1D50FEB14()
{
  result = qword_1EC7EFF78;
  if (!qword_1EC7EFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF78);
  }

  return result;
}

unint64_t sub_1D50FEB6C()
{
  result = qword_1EC7EFF80;
  if (!qword_1EC7EFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFF80);
  }

  return result;
}

void sub_1D50FED6C()
{
  sub_1D50FEE40();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7EFFA8);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7EFFB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D50FEE40()
{
  if (!qword_1EC7EFFA0)
  {
    type metadata accessor for CloudMusicSummary.Relationships(255);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EFFA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudMusicSummary.Attributes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CloudMusicSummary.Attributes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void sub_1D50FEF1C()
{
  sub_1D50FEF88();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D50FEF88()
{
  if (!qword_1EC7EFFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EFFC8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudMusicSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D50FF118(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50FF1C8()
{
  result = qword_1EC7EFFD0;
  if (!qword_1EC7EFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFD0);
  }

  return result;
}

unint64_t sub_1D50FF220()
{
  result = qword_1EC7EFFD8;
  if (!qword_1EC7EFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFD8);
  }

  return result;
}

unint64_t sub_1D50FF278()
{
  result = qword_1EC7EFFE0;
  if (!qword_1EC7EFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFE0);
  }

  return result;
}

unint64_t sub_1D50FF2D0()
{
  result = qword_1EC7EFFE8;
  if (!qword_1EC7EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFE8);
  }

  return result;
}

unint64_t sub_1D50FF328()
{
  result = qword_1EC7EFFF0;
  if (!qword_1EC7EFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFF0);
  }

  return result;
}

unint64_t sub_1D50FF380()
{
  result = qword_1EC7EFFF8;
  if (!qword_1EC7EFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFFF8);
  }

  return result;
}

unint64_t sub_1D50FF3D8()
{
  result = qword_1EC7F0000;
  if (!qword_1EC7F0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0000);
  }

  return result;
}

unint64_t sub_1D50FF430()
{
  result = qword_1EC7F0008;
  if (!qword_1EC7F0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0008);
  }

  return result;
}

unint64_t sub_1D50FF488()
{
  result = qword_1EC7F0010;
  if (!qword_1EC7F0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0010);
  }

  return result;
}

unint64_t sub_1D50FF4E0()
{
  result = qword_1EC7F0018;
  if (!qword_1EC7F0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0018);
  }

  return result;
}

uint64_t sub_1D50FF574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v114 = a4;
  v115 = a1;
  v102 = sub_1D56128E8();
  v10 = OUTLINED_FUNCTION_4(v102);
  v101 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v97[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v97[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v97[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_48(&v97[-v22]);
  v108 = sub_1D5613EF8();
  v23 = OUTLINED_FUNCTION_4(v108);
  v105 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v28 - v27);
  v110 = sub_1D560EEA8();
  v29 = OUTLINED_FUNCTION_4(v110);
  v106 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v34 - v33);
  v112 = sub_1D5613838();
  v35 = OUTLINED_FUNCTION_4(v112);
  v109 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v111 = v40 - v39;
  v41 = *(a3 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  v47 = sub_1D560D838();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v55 = v54 - v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = &v97[-v58];
  v60 = *v6;
  v113 = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    goto LABEL_2;
  }

  v98 = v60;
  v63 = v115;
  v64 = *(v114 + 8);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v50 + 8))(v55, v47);
  v65 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v59, 1, v65) == 1)
  {
    sub_1D4E6C9CC(v59, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v66 = sub_1D560D488();
    v68 = v67;
    (*(*(v65 - 8) + 8))(v59, v65);
    if (v66 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v68 == v69)
    {
    }

    else
    {
      v71 = sub_1D5616168();

      if ((v71 & 1) == 0)
      {
LABEL_2:
        v62 = 1;
LABEL_19:
        *a5 = v62;
        return result;
      }
    }
  }

  (*(v41 + 16))(v46, v63, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    result = sub_1D4E6C9CC(&v118, &qword_1EC7EC500, &unk_1D5621030);
LABEL_18:
    v62 = 3;
    goto LABEL_19;
  }

  sub_1D4F69344(&v118, v121);
  v72 = v122;
  v73 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  (*(v73 + 16))(&v116, v72, v73);
  if (!v117)
  {
    sub_1D4E6C9CC(&v116, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(v121);
    goto LABEL_18;
  }

  sub_1D4F69344(&v116, &v118);
  sub_1D4E628D4(&v118, &v116);
  if (swift_dynamicCast())
  {
    v74 = OUTLINED_FUNCTION_4_56(&v125);
    v75(v74);
    v76 = v98;
    goto LABEL_22;
  }

  sub_1D4E628D4(&v118, &v116);
  v77 = swift_dynamicCast();
  v76 = v98;
  if (v77)
  {
    v78 = OUTLINED_FUNCTION_4_56(&v124);
    v79(v78);
LABEL_22:
    if (v76 >= 2)
    {
      if (v76 == 2)
      {
        v80 = 2;
        goto LABEL_39;
      }

LABEL_38:
      v80 = 3;
      goto LABEL_39;
    }

LABEL_33:
    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    sub_1D4F60168();
    if ((v116 & 1) == 0)
    {
      *a5 = 0;
LABEL_40:
      __swift_destroy_boxed_opaque_existential_1(&v118);
      return __swift_destroy_boxed_opaque_existential_1(v121);
    }

    v80 = 5;
LABEL_39:
    *a5 = v80;
    goto LABEL_40;
  }

  sub_1D4E628D4(&v118, &v116);
  v81 = v107;
  v82 = v108;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v82);
    v91 = &qword_1EC7EA8A8;
    v92 = &qword_1D561CF10;
LABEL_32:
    sub_1D4E6C9CC(v81, v91, v92);
    goto LABEL_33;
  }

  __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
  (*(v105 + 32))(v104, v81, v82);
  v81 = v103;
  sub_1D5613E08();
  v83 = sub_1D560C328();
  if (__swift_getEnumTagSinglePayload(v81, 1, v83) != 1)
  {
    v93 = OUTLINED_FUNCTION_2_70();
    v94(v93);
    v91 = &qword_1EC7EA3B8;
    v92 = &unk_1D561E370;
    goto LABEL_32;
  }

  sub_1D4E6C9CC(v81, &qword_1EC7EA3B8, &unk_1D561E370);
  v84 = v100;
  sub_1D5613DB8();
  v85 = v101;
  v86 = v99;
  v87 = v102;
  (*(v101 + 16))(v99, v84, v102);
  v88 = (*(v85 + 88))(v86, v87);
  if (v88 == *MEMORY[0x1E69765E8])
  {
    goto LABEL_37;
  }

  if (v88 == *MEMORY[0x1E69765F8])
  {
    (*(v85 + 8))(v84, v87);
    v89 = OUTLINED_FUNCTION_2_70();
    v90(v89);
    goto LABEL_33;
  }

  if (v88 == *MEMORY[0x1E69765F0])
  {
LABEL_37:
    (*(v85 + 8))(v84, v87);
    v95 = OUTLINED_FUNCTION_2_70();
    v96(v95);
    goto LABEL_38;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.UpdatePinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D50FFFA8()
{
  result = qword_1EC7F0020;
  if (!qword_1EC7F0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0020);
  }

  return result;
}

uint64_t _s15UpdatePinActionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 4;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *_s15UpdatePinActionVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s15UpdatePinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static UserState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(a1 + 1);
    v7 = a2[3];
    v8 = a2[4];
    v9 = *(a2 + 1);
    if (v4 == 4)
    {
      if (v7 != 4)
      {
        return 0;
      }
    }

    else if (v7 == 4 || v4 != v7)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }
    }

    else if (v8 == 2 || ((v8 ^ v5) & 1) != 0)
    {
      return 0;
    }

    if (v6)
    {
      if (!v9)
      {
        return 0;
      }

      sub_1D5100BA4();
      v11 = v9;
      v12 = v6;
      v13 = sub_1D5615848();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void UserState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 1);
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  if (v4 != 4)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  if (v5 != 2)
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v5 & 1);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_1D56162F8();
    return;
  }

  sub_1D56162F8();
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1D56162F8();
  v7 = v6;
  sub_1D5615858();
}

uint64_t UserState.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  v6 = *(v0 + 1);
  sub_1D56162D8();
  UserState.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5100510()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  v6 = *(v0 + 1);
  sub_1D56162D8();
  UserState.hash(into:)();
  return sub_1D5616328();
}

uint64_t UserState.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = OUTLINED_FUNCTION_0_88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_61();
  switch(v8)
  {
    case 1:
      OUTLINED_FUNCTION_4_57();
      break;
    case 2:
      OUTLINED_FUNCTION_9_54();
      break;
    case 3:
      OUTLINED_FUNCTION_10_55();
      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_8_50();
      break;
  }

  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_3_72();

  OUTLINED_FUNCTION_12_44();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11_53();
  v11 = v10 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (!v12)
  {
    v11 = 0xEB00000000393174;
  }

  if (v9 == 2)
  {
    v13 = 7104878;
  }

  else
  {
    v13 = 0x6963696C7078652ELL;
  }

  if (v9 == 2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x1DA6EAC70](v13, v14);

  OUTLINED_FUNCTION_3_72();

  if (v21)
  {
    OUTLINED_FUNCTION_12_44();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v15 = [v20 description];
    v16 = sub_1D5614D68();
    v18 = v17;

    MEMORY[0x1DA6EAC70](v16, v18);

    OUTLINED_FUNCTION_3_72();
  }

  else
  {
    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5684630);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v22;
}

uint64_t UserState.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = OUTLINED_FUNCTION_0_88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_6_57();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_61();
  switch(v8)
  {
    case 1:
      OUTLINED_FUNCTION_4_57();
      break;
    case 2:
      OUTLINED_FUNCTION_9_54();
      break;
    case 3:
      OUTLINED_FUNCTION_10_55();
      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_8_50();
      break;
  }

  OUTLINED_FUNCTION_7_57();

  OUTLINED_FUNCTION_3_72();

  OUTLINED_FUNCTION_12_44();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11_53();
  v11 = v10 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (!v12)
  {
    v11 = 0xEB00000000393174;
  }

  if (v9 == 2)
  {
    v13 = 7104878;
  }

  else
  {
    v13 = 0x6963696C7078652ELL;
  }

  if (v9 == 2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x1DA6EAC70](v13, v14);

  OUTLINED_FUNCTION_3_72();

  if (v21)
  {
    OUTLINED_FUNCTION_12_44();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v15 = [v20 description];
    v16 = sub_1D5614D68();
    v18 = v17;

    MEMORY[0x1DA6EAC70](v16, v18);

    OUTLINED_FUNCTION_3_72();
  }

  else
  {
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D56846D0);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v22;
}

unint64_t sub_1D5100BA4()
{
  result = qword_1EC7F0028;
  if (!qword_1EC7F0028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7F0028);
  }

  return result;
}

unint64_t sub_1D5100BEC()
{
  result = qword_1EC7F0030;
  if (!qword_1EC7F0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0030);
  }

  return result;
}

uint64_t sub_1D5100C40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1D5100C94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D5100D38(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1);
  MEMORY[0x1DA6EC0D0](a2);
  return sub_1D5616328();
}

uint64_t sub_1D5100DBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D5100E20()
{
  v2 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  v0 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v0);

  return v2;
}

uint64_t sub_1D5100EBC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D5100E20();
}

unint64_t sub_1D5100EE8()
{
  result = qword_1EC7F0038;
  if (!qword_1EC7F0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0038);
  }

  return result;
}

uint64_t sub_1D5100F3C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1D5100F7C(a1);
  return v5;
}

void *sub_1D5100F7C(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *a1;
  v6 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D4F625B0();
  sub_1D534329C(&v18);
  OUTLINED_FUNCTION_54_0();
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  sub_1D51011C8(&v18);
  swift_endAccess();
  sub_1D4F62958();
  v9 = v21;
  if (v21 == 1)
  {
    v10 = v20 & 7;
  }

  else
  {
    v10 = v20;
  }

  OUTLINED_FUNCTION_54_0();
  v18 = v10;
  v19 = v9;
  sub_1D51012AC(&v18);
  swift_endAccess();
  v11 = *(v5 + 88);
  type metadata accessor for MusicLibrary.ItemState();
  swift_getWitnessTable();
  v20 = sub_1D560C838();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v12;
  v13[4] = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D51024C8;
  *(v14 + 24) = v13;
  sub_1D560C898();

  v15 = sub_1D560C948();

  v16 = *(v2 + v6);
  *(v2 + v6) = v15;

  return v2;
}

uint64_t sub_1D51011FC(char *a1)
{
  v2 = *v1;
  v3 = *a1;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51012AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  return sub_1D560C8B8();
}

uint64_t sub_1D51012E8(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  OUTLINED_FUNCTION_13_5();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_13_5();
  v8 = *(v7 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51013A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D560C9B8();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E699CC();
  v15 = sub_1D5615738();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1D510251C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4E735E0;
  aBlock[3] = &block_descriptor_8;
  v17 = _Block_copy(aBlock);

  sub_1D560C9A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5102528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D5102580();
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_1D510163C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D5101FEC();
  }

  return result;
}

uint64_t sub_1D510169C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5101710();
  *a2 = v5;
  return result;
}

uint64_t sub_1D51016D8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D51011FC(&v4);
}

uint64_t sub_1D5101710()
{
  v1 = *v0;
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();
}

void (*sub_1D51017B0())(void *)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v2);
  v3 = *v0;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v9 = swift_getKeyPath();
  *(v1 + 48) = OUTLINED_FUNCTION_39_2(v9);
  return sub_1D51025E4;
}

uint64_t sub_1D5101888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0058, &qword_1D5635FB8);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = OUTLINED_FUNCTION_1_3(v8, v12);
  v10(v9);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0050, &qword_1D5635FB0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v2);
}

void (*sub_1D5101990())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0058, &qword_1D5635FB8);
  OUTLINED_FUNCTION_9_3(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D510186C();
  return sub_1D5101A5C;
}

uint64_t sub_1D5101A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5101AF8();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1D5101AB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return sub_1D51012E8(&v5);
}

uint64_t sub_1D5101AF8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();
}

void (*sub_1D5101B98())(void *)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v2);
  v3 = *v0;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v9 = swift_getKeyPath();
  *(v1 + 48) = OUTLINED_FUNCTION_39_2(v9);
  return sub_1D4F62A98;
}

uint64_t sub_1D5101C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = *a2;
  return a7(v15);
}

uint64_t sub_1D5101D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0068, &qword_1D5635FC8);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = OUTLINED_FUNCTION_1_3(v8, v12);
  v10(v9);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0060, &qword_1D5635FC0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v2);
}

void (*sub_1D5101E40())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0068, &qword_1D5635FC8);
  OUTLINED_FUNCTION_9_3(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D5101D1C();
  return sub_1D5101F0C;
}

void sub_1D5101F24(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = *v4;
    a3((*a1)[4]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D5101FEC()
{
  sub_1D4F625B0();
  sub_1D534329C(&v4);
  sub_1D51011FC(&v4);
  sub_1D4F62958();
  v0 = v2;
  if (v3 == 1)
  {
    v0 = v2 & 7;
  }

  v2 = v0;
  return sub_1D51012E8(&v2);
}

uint64_t Presto_MusicLibrary.ItemState.deinit()
{
  v1 = qword_1EC7F0040;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0050, &qword_1D5635FB0);
  OUTLINED_FUNCTION_4_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = qword_1EC7F0048;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0060, &qword_1D5635FC0);
  OUTLINED_FUNCTION_4_0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + qword_1EC7F0070);

  return v0;
}

uint64_t Presto_MusicLibrary.ItemState.__deallocating_deinit()
{
  Presto_MusicLibrary.ItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5102180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for Presto_MusicLibrary.ItemState();
  result = sub_1D560C838();
  *a2 = result;
  return result;
}