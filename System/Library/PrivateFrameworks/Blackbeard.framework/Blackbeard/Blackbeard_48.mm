uint64_t sub_1E63CB6B4()
{
  v25 = v0;
  v1 = v0[36];
  v2 = v0[24];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1E65DB958();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v23 = v0[24];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[15];
    v11 = MEMORY[0x1E694E6D0](v0[16], v0[17]);
    v13 = sub_1E5DFD4B0(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch award description with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[31];
  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[24];
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1E63CB8C0()
{
  v25 = v0;
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[40];
  v2 = v0[24];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1E65DB958();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v23 = v0[24];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[15];
    v11 = MEMORY[0x1E694E6D0](v0[16], v0[17]);
    v13 = sub_1E5DFD4B0(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch award description with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[31];
  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[24];
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1E63CBAE4(uint64_t a1, uint64_t *a2)
{
  Description = type metadata accessor for AwardsService()[-1].Description;
  v7 = (Description[80] + 24) & ~Description[80];
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return sub_1E63CA908(a1, a2, v8, v2 + v7);
}

uint64_t sub_1E63CBBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FB0, &qword_1E6600490) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FB8, &qword_1E6600498);
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CBDA0, 0, 0);
}

uint64_t sub_1E63CBDA0()
{
  v1 = v0[2];
  v2 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[14] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1E63CBE9C;
  v6 = v0[10];

  return v8(v6);
}

uint64_t sub_1E63CBE9C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63CBFB4, 0, 0);
}

uint64_t sub_1E63CBFB4()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1E63CC090;
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[7];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E63CC090()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63CC18C, 0, 0);
}

uint64_t sub_1E63CC18C()
{
  v1 = v0[7];
  v2 = sub_1E65DE238();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[10];
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[6];
    sub_1E65DB958();
    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6338();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "AchievementEnvironmentCache updated, refreshing description state", v10, 2u);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];

    (*(v12 + 8))(v11, v13);
    sub_1E65E6058();
    v0[17] = sub_1E65E6048();
    v15 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63CC380, v15, v14);
  }
}

uint64_t sub_1E63CC380()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E63CC3F0, 0, 0);
}

uint64_t sub_1E63CC3F0()
{
  sub_1E5DFE50C(v0[7], &qword_1ED078FB0, &qword_1E6600490);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1E63CC090;
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E63CC4B0(uint64_t a1)
{
  Description = type metadata accessor for AwardsService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63CBBD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E63CC5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CC798, 0, 0);
}

uint64_t sub_1E63CC798()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[14] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1E63CC894;
  v6 = v0[10];

  return v8(v6);
}

uint64_t sub_1E63CC894()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63CC9AC, 0, 0);
}

uint64_t sub_1E63CC9AC()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1E63CCA88;
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[7];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E63CCA88()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63CCB84, 0, 0);
}

uint64_t sub_1E63CCB84()
{
  v1 = v0[7];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[10];
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[6];
    sub_1E65DB958();
    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6338();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "Remote browsing identity updated, resetting description state", v10, 2u);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];

    (*(v12 + 8))(v11, v13);
    sub_1E65E6058();
    v0[17] = sub_1E65E6048();
    v15 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63CCD78, v15, v14);
  }
}

uint64_t sub_1E63CCD78()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);

  sub_1E65E4E58();

  return MEMORY[0x1EEE6DFA0](sub_1E63CCDE8, 0, 0);
}

uint64_t sub_1E63CCDE8()
{
  sub_1E5DFE50C(v0[7], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1E63CCA88;
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t objectdestroy_6Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E63CCF88(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63CC5D0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E63CD0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v151 = a3;
  v169 = a2;
  v174 = a1;
  v172 = a4;
  v141 = type metadata accessor for RemoveLibraryActionLoadState();
  v4 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v161 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v170 = *(v6 - 8);
  v171 = v6;
  v7 = *(v170 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v138 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v139 = &v138 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v138 - v14;
  v15 = sub_1E65D76F8();
  v167 = *(v15 - 8);
  v168 = v15;
  v16 = *(v167 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v155 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v138 - v19;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v20 = *(*(v165 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v165);
  v153 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = &v138 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v148 = &v138 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v176 = &v138 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v138 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v163 = *(v30 - 8);
  v164 = v30;
  v31 = *(v163 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v147 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v138 - v34;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v35 = *(*(v144 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v144);
  v166 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v143 = &v138 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v175 = &v138 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v173 = &v138 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v160 = &v138 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v158 = *(v45 - 8);
  v46 = *(v158 + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v138 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v142 = &v138 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = &v138 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v146 = &v138 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v138 - v59;
  v61 = sub_1E65D7848();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x1EEE9AC00](v61);
  v162 = &v138 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v157 = &v138 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v138 - v69;
  sub_1E5DFD1CC(v159, &v138 - v69, &qword_1ED072AA8, &unk_1E65FA900);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v73 = *v70;
  v72 = *(v70 + 1);
  v74 = v70[16];
  if (EnumCaseMultiPayload != 1)
  {
    v176 = v45;
    v180 = v73;
    v181 = v72;
    v182 = v74;
    v86 = type metadata accessor for AppState();
    v87 = v74;
    v88 = v86;
    v89 = *(v86 + 28);
    v90 = v87;
    sub_1E600B01C(v73, v72, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v60);
    sub_1E5DFE50C(v54, &qword_1ED071F78, &unk_1E65EA3F0);
    v91 = *(v62 + 48);
    if (v91(v60, 1, v61) == 1)
    {
      sub_1E65D77C8();
      if (v91(v60, 1, v61) != 1)
      {
        sub_1E5DFE50C(v60, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v62 + 32))(v157, v60, v61);
    }

    v92 = v88[22];
    v177 = v73;
    v178 = v72;
    v179 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    v93 = v174;
    v94 = v142;
    sub_1E65E4D78();
    v95 = v176;
    sub_1E65E4C98();
    (*(v158 + 8))(v94, v95);
    v96 = v88[29];
    v177 = v73;
    v178 = v72;
    v179 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    v97 = v145;
    sub_1E65E4D78();
    v98 = v164;
    sub_1E65E4C98();
    (*(v163 + 8))(v97, v98);
    (*(v167 + 16))(v150, v169, v168);
    v99 = *(v93 + v88[48] + 64);
    if (*(v99 + 16))
    {
      v100 = sub_1E6416FB4(v73, v72, v90);
      v102 = v101;
      sub_1E6001C2C(v73, v72, v90);
      if (v102)
      {
        v103 = *(v99 + 56);
        v105 = v170;
        v104 = v171;
        v106 = v139;
        (*(v170 + 16))(v139, v103 + *(v170 + 72) * v100, v171);
        (*(v105 + 32))(v152, v106, v104);
LABEL_16:
        sub_1E604BABC();
        return sub_1E65DE948();
      }
    }

    else
    {
      sub_1E6001C2C(v73, v72, v90);
    }

    (*(v170 + 104))(v152, *MEMORY[0x1E699CB70], v171);
    goto LABEL_16;
  }

  v159 = v62;
  v160 = v61;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930);
  v76 = v161;
  sub_1E63CE20C(&v70[*(v75 + 48)], v161);
  v157 = type metadata accessor for AppState();
  v77 = *(v157 + 22);
  v180 = v73;
  v181 = v72;
  v182 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v78 = v174;
  sub_1E65E4D78();
  v79 = v173;
  sub_1E65E4C98();
  (*(v158 + 8))(v49, v45);
  v80 = v143;
  sub_1E5DFD1CC(v79, v143, &unk_1ED077CC0, &unk_1E65F2610);
  v81 = swift_getEnumCaseMultiPayload();
  v82 = v76;
  v83 = v54;
  if (v81 > 2)
  {
    goto LABEL_18;
  }

  if (!v81)
  {
    goto LABEL_6;
  }

  if (v81 == 1)
  {
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v85 = sub_1E65D76A8();
    (*(*(v85 - 8) + 8))(v80 + v84, v85);
LABEL_6:
    v82 = v173;
    goto LABEL_18;
  }

  sub_1E5DFE50C(v80, &unk_1ED077CC0, &unk_1E65F2610);
  v82 = v76;
LABEL_18:
  sub_1E5DFD1CC(v82, v175, &unk_1ED077CC0, &unk_1E65F2610);
  v108 = v157;
  v109 = *(v157 + 29);
  v180 = v73;
  v181 = v72;
  v182 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v110 = v147;
  sub_1E65E4D78();
  v111 = v148;
  v112 = v164;
  sub_1E65E4C98();
  v113 = (*(v163 + 8))(v110, v112);
  MEMORY[0x1EEE9AC00](v113);
  *(&v138 - 16) = v151 & 1;
  sub_1E5DF23E0();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v111, &unk_1ED077CD0, &unk_1E65F42F0);
  v180 = v73;
  v181 = v72;
  v182 = v74;
  v114 = *(v108 + 7);
  sub_1E600B01C(v73, v72, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  v115 = v146;
  sub_1E5E1F544(v146);
  sub_1E5DFE50C(v83, &qword_1ED071F78, &unk_1E65EA3F0);
  v116 = v159;
  v117 = *(v159 + 48);
  v118 = v160;
  if (v117(v115, 1, v160) == 1)
  {
    sub_1E65D77C8();
    v119 = v117(v115, 1, v118);
    v120 = v155;
    v121 = v154;
    if (v119 != 1)
    {
      sub_1E5DFE50C(v115, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v116 + 32))(v162, v115, v118);
    v120 = v155;
    v121 = v154;
  }

  sub_1E5DFD1CC(v175, v166, &unk_1ED077CC0, &unk_1E65F2610);
  v122 = v153;
  sub_1E5DFD1CC(v176, v153, &unk_1ED077CD0, &unk_1E65F42F0);
  v123 = swift_getEnumCaseMultiPayload();
  v124 = v161;
  if (v123 <= 2)
  {
    v125 = v123;
    v126 = v176;
    if (!v125)
    {
      goto LABEL_28;
    }

    if (v125 == 1)
    {
      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v128 = sub_1E65D76A8();
      (*(*(v128 - 8) + 8))(v122 + v127, v128);
      v126 = v176;
      goto LABEL_28;
    }

    sub_1E5DFE50C(v122, &unk_1ED077CD0, &unk_1E65F42F0);
  }

  v126 = v124 + *(v141 + 20);
LABEL_28:
  sub_1E5DFD1CC(v126, v121, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v167 + 16))(v120, v169, v168);
  v129 = *(v78 + *(v108 + 48) + 64);
  if (!*(v129 + 16))
  {
    sub_1E6001C2C(v73, v72, v74);
    v133 = v173;
    goto LABEL_32;
  }

  v130 = sub_1E6416FB4(v73, v72, v74);
  v132 = v131;
  sub_1E6001C2C(v73, v72, v74);
  v133 = v173;
  if ((v132 & 1) == 0)
  {
LABEL_32:
    (*(v170 + 104))(v156, *MEMORY[0x1E699CB70], v171);
    goto LABEL_33;
  }

  v134 = *(v129 + 56);
  v136 = v170;
  v135 = v171;
  v137 = v140;
  (*(v170 + 16))(v140, v134 + *(v170 + 72) * v130, v171);
  (*(v136 + 32))(v156, v137, v135);
LABEL_33:
  sub_1E604BABC();
  sub_1E65DE948();
  sub_1E5DFE50C(v176, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E5DFE50C(v175, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E5DFE50C(v133, &unk_1ED077CC0, &unk_1E65F2610);
  return sub_1E63CE890(v124);
}

uint64_t type metadata accessor for RemoveLibraryActionLoadState()
{
  result = qword_1EE2D8108;
  if (!qword_1EE2D8108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E63CE20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveLibraryActionLoadState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63CE270(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FD0, &qword_1E66005B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63CE970();
  sub_1E65E6DA8();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C6E4(&qword_1ED075A00);
  sub_1E65E6B78();
  if (!v1)
  {
    v9 = *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E63CE460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FC0, &qword_1E66005A8);
  v27 = *(v30 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RemoveLibraryActionLoadState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63CE970();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = a1;
  v17 = v15;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  sub_1E613C6E4(&qword_1ED075A38);
  v21 = v29;
  v20 = v30;
  sub_1E65E6AD8();
  sub_1E5FAB460(v21, v17, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = 1;
  sub_1E613BED0(&qword_1ED075A40);
  sub_1E65E6AD8();
  (*(v19 + 8))(v11, v20);
  sub_1E5FAB460(v18, v17 + *(v23 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E63CE9C4(v17, v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E63CE890(v17);
}

uint64_t sub_1E63CE7E8(uint64_t a1)
{
  v2 = sub_1E63CE970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63CE824(uint64_t a1)
{
  v2 = sub_1E63CE970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63CE890(uint64_t a1)
{
  v2 = type metadata accessor for RemoveLibraryActionLoadState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E63CE918()
{
  result = qword_1EE2D8118[0];
  if (!qword_1EE2D8118[0])
  {
    type metadata accessor for RemoveLibraryActionLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D8118);
  }

  return result;
}

unint64_t sub_1E63CE970()
{
  result = qword_1ED078FC8;
  if (!qword_1ED078FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FC8);
  }

  return result;
}

uint64_t sub_1E63CE9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveLibraryActionLoadState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63CEA3C()
{
  result = qword_1ED078FD8;
  if (!qword_1ED078FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FD8);
  }

  return result;
}

unint64_t sub_1E63CEA94()
{
  result = qword_1ED078FE0;
  if (!qword_1ED078FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FE0);
  }

  return result;
}

unint64_t sub_1E63CEAEC()
{
  result = qword_1ED078FE8;
  if (!qword_1ED078FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FE8);
  }

  return result;
}

uint64_t static RouteDestination.marketingLink(environment:url:metric:topicRoutingBehavior:source:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 144) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_1E65DB848();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CEC0C, 0, 0);
}

uint64_t sub_1E63CEC0C()
{
  v1 = v0[3];
  v2 = type metadata accessor for AppEnvironment();
  v0[10] = v2;
  v3 = v1 + *(v2 + 24);
  v4 = AccountService.fetchCurrentAccount.getter();
  v0[11] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1E63CED14;

  return v9();
}

uint64_t sub_1E63CED14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1E63CF1FC;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_1E63CEE44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63CEE44()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = v1;
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 80) + 76);
  v4 = v1;
  v5 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 128) = v6;
  v13 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1E63CEF64;
  v9 = *(v0 + 72);
  v10 = *(v0 + 40);
  v11 = *(v0 + 144);

  return v13(v9, v10, v11);
}

uint64_t sub_1E63CEF64()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63CF07C, 0, 0);
}

uint64_t sub_1E63CF07C()
{
  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *v7 = v1;
  (*(v3 + 16))(&v7[v9], v2, v4);
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 16))(&v7[v10], v6, v11);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(v5, &v7[*(v12 + 20)], type metadata accessor for RouteSource);
  (*(v3 + 8))(v2, v4);

  *&v7[*(v12 + 24)] = MEMORY[0x1E69E7CD0];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E63CF1FC()
{
  v1 = *(v0 + 88);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 120) = 0;
  v13 = *(v0 + 24) + *(*(v0 + 80) + 76);
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 128) = v15;
  v22 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1E63CEF64;
  v18 = *(v0 + 72);
  v19 = *(v0 + 40);
  v20 = *(v0 + 144);

  return v22(v18, v19, v20);
}

uint64_t static RouteDestination.editorialGallery(identifier:metricsBehavior:displayStyle:title:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 17) = a4;
  v15 = sub_1E65D72D8();
  (*(*(v15 - 8) + 16))(a7 + v14, a5, v15);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a6, a7 + *(v16 + 20), type metadata accessor for RouteSource);
  *(a7 + *(v16 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.buildWorkoutPlan(identifier:title:workoutPlanSchedule:modalityPreferences:recommendationMetrics:variation:weekCount:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v16 = (a9 + v15[12]);
  v17 = v15[16];
  v18 = v15[20];
  v19 = v15[24];
  v20 = v15[28];
  v21 = a9 + v15[32];
  sub_1E5DFD1CC(a1, a9, &unk_1ED077760, &unk_1E66011D0);
  *v16 = a2;
  v16[1] = a3;
  sub_1E5DFD1CC(a4, a9 + v17, &qword_1ED072B60, &unk_1E65FA490);
  *(a9 + v18) = a5;
  sub_1E5DFD1CC(a6, a9 + v19, &unk_1ED077750, &unk_1E66011C0);
  *(a9 + v20) = a7;
  *v21 = a8;
  *(v21 + 8) = a10 & 1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a11, a9 + *(v22 + 20), type metadata accessor for RouteSource);
  *(a9 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.siriBeginSession(criteria:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65DB718();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination();
  v6 = *(v5 + 20);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.standardPlayer(identifier:streamingURL:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v5 = v4[12];
  v6 = (a2 + v4[16]);
  v7 = v4[20];
  v8 = (a2 + v4[24]);
  v9 = (a2 + v4[28]);
  v10 = v4[32];
  v18 = v4[36];

  sub_1E65E6848();
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 16))(a2 + v5, a1, v11);
  v12 = sub_1E65DB3E8();
  *v6 = 0;
  v6[1] = 0;
  (*(*(v12 - 8) + 56))(a2 + v7, 1, 1, v12);
  *v8 = 0;
  v8[1] = 0;
  v13 = sub_1E65DB5D8();
  *v9 = 0;
  v9[1] = 0;
  (*(*(v13 - 8) + 56))(a2 + v10, 1, 1, v13);
  v14 = sub_1E65D7A38();
  (*(*(v14 - 8) + 56))(a2 + v18, 1, 1, v14);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for RouteDestination();
  v16 = *(v15 + 20);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v15 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1E63CF9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a3, a4 + *(v6 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.playlist(identifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for PlaylistType();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a3, a4 + *(v6 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E63CFB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RouteDestination();
  result = sub_1E63D0D8C(a1, a2 + *(v4 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.libraryGalleryPage(libraryPage:source:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination();
  result = sub_1E63D0D8C(a2, &a3[*(v5 + 20)], type metadata accessor for RouteSource);
  *&a3[*(v5 + 24)] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.workoutPlanDetail(identifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for RouteDestination();
  result = sub_1E63D0D8C(a2, a3 + *(v7 + 20), type metadata accessor for RouteSource);
  *(a3 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.sharePlayBeginActivity(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RouteDestination();
  v5 = *(v4 + 20);
  v6 = sub_1E65D8D48();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.awardDetail(for:source:animated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a3, a4 + *(v6 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.session(sessionIdentifier:workoutIdentifier:activityType:mediaType:startTime:groupActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = a8;
  v17 = sub_1E65D96F8();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for RouteDestination();
  v19 = *(v18 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(a7 + *(v18 + 24)) = MEMORY[0x1E69E7CD0];
}

id static RouteDestination.privacyLink(bundleIdentifier:presentationStyle:present:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = *(a3 + 8);
  *(a5 + 24) = v8;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a4, a5 + *(v9 + 20), type metadata accessor for RouteSource);
  *(a5 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];

  return sub_1E5FA9D20(v7, v8);
}

id static RouteDestination.sampleContentSession(sessionIdentifier:workoutIdentifier:activityType:mediaType:startTime:marketingItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a9;
  *(a8 + 56) = a7;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for RouteDestination();
  v11 = *(v10 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(a8 + *(v10 + 24)) = MEMORY[0x1E69E7CD0];

  return a7;
}

uint64_t static RouteDestination.activeWorkoutPlan(source:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RouteDestination();
  result = sub_1E63D0D8C(a1, a2 + *(v4 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.marketingItem(environment:placement:metric:topicRoutingBehavior:source:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 152) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1E65DB848();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D02D0, 0, 0);
}

uint64_t sub_1E63D02D0()
{
  v1 = v0[3];
  v2 = type metadata accessor for AppEnvironment();
  v0[11] = v2;
  v3 = v1 + *(v2 + 24);
  v4 = AccountService.fetchCurrentAccount.getter();
  v0[12] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1E63D03D8;

  return v9();
}

uint64_t sub_1E63D03D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1E63D08B0;
  }

  else
  {
    v8 = *(v4 + 96);

    *(v4 + 120) = a1;
    v7 = sub_1E63D0508;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63D0508()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = v1;
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 88) + 76);
  v4 = v1;
  v5 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 136) = v6;
  v13 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1E63D0628;
  v9 = *(v0 + 80);
  v10 = *(v0 + 40);
  v11 = *(v0 + 152);

  return v13(v9, v10, v11);
}

uint64_t sub_1E63D0628()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D0740, 0, 0);
}

uint64_t sub_1E63D0740()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v8 = v1;
  (*(v3 + 32))(&v8[v10], v2, v5);
  v12 = sub_1E65E1518();
  (*(*(v12 - 8) + 16))(&v8[v11], v7, v12);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(v6, &v8[*(v13 + 20)], type metadata accessor for RouteSource);
  *&v8[*(v13 + 24)] = v4;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63D08B0()
{
  v1 = *(v0 + 96);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 128) = 0;
  v13 = *(v0 + 24) + *(*(v0 + 88) + 76);
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 136) = v15;
  v22 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_1E63D0628;
  v18 = *(v0 + 80);
  v19 = *(v0 + 40);
  v20 = *(v0 + 152);

  return v22(v18, v19, v20);
}

uint64_t static RouteDestination.filter(rootFilterItem:rootFilterName:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48));
  sub_1E63D0D8C(a1, a5, MEMORY[0x1E699DD40]);
  *v10 = a2;
  v10[1] = a3;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a4, a5 + *(v11 + 20), type metadata accessor for RouteSource);
  *(a5 + *(v11 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.trainerTipPlayer(configuration:options:metricContext:metricTopicRoutingBehavior:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v16 = v15[12];
  v17 = (a8 + v15[16]);
  v18 = v15[20];
  v19 = sub_1E65E57D8();
  (*(*(v19 - 8) + 16))(a8, a1, v19);
  v20 = sub_1E65E5528();
  (*(*(v20 - 8) + 16))(a8 + v16, a2, v20);
  *v17 = a3;
  v17[1] = a4;
  *(a8 + v18) = a5;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for RouteDestination();
  sub_1E63D0D8C(a6, a8 + *(v21 + 20), type metadata accessor for RouteSource);
  *(a8 + *(v21 + 24)) = a7;
  sub_1E5FA9D34(a3, a4);
}

uint64_t sub_1E63D0D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63D0DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1E601C600(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1E601C600((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 24 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1E5F87098(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63D1024(uint64_t a1)
{
  v37 = sub_1E65D7B58();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1E65D7B38();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1E601C0B8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1E5F87098(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63D132C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v105 = type metadata accessor for ArchivedSessionService();
  Description = v105[-1].Description;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v105);
  v103 = v4;
  v104 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v91 - v7;
  v123 = type metadata accessor for CatalogService();
  v121 = v123[-1].Description;
  v8 = v121[8];
  MEMORY[0x1EEE9AC00](v123);
  v113 = v9;
  v122 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for AssetService();
  v127 = v117[-1].Description;
  v10 = v127[8];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v11;
  v126 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentAvailabilityService();
  v13 = v12[-1].Description;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v125 = v15;
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  v128 = *(v101 - 8);
  v17 = *(v128 + 64);
  v18 = MEMORY[0x1EEE9AC00](v101);
  v119 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v91 - v20;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v21 = sub_1E65E3B68();
  __swift_project_value_buffer(v21, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v22 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v124 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v23 = type metadata accessor for AppEnvironment();
  v24 = v23[9];
  v100 = v23[8];
  v99 = v24;
  v25 = v23[12];
  v26 = v23[14];
  v115 = v26;
  v107 = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v27 = v13[2];
  v114 = (v13 + 2);
  v116 = v27;
  v27(v16, v22 + v26, v12);
  v28 = v127;
  v29 = v127[2];
  v97 = (v127 + 2);
  v98 = v29;
  v30 = v117;
  v29(v126, v22 + v24, v117);
  v31 = v121;
  (v121[2])(v122, v22 + v25, v123);
  v109 = *(v13 + 80);
  v32 = v12;
  v33 = (v109 + 16) & ~v109;
  v111 = v109 | 7;
  v34 = v30;
  v95 = *(v28 + 80);
  v35 = (v125 + v95 + v33) & ~v95;
  v36 = *(v31 + 80);
  v110 = v16;
  v37 = (v118 + v36 + v35) & ~v36;
  v38 = swift_allocObject();
  v39 = v13[4];
  v112 = (v13 + 4);
  v113 = v39;
  v39(v38 + v33, v16, v32);
  v40 = v28[4];
  v127 = v28 + 4;
  v94 = v40;
  v40(v38 + v35, v126, v34);
  (v31[4])(v38 + v37, v122, v123);

  v41 = v129;
  sub_1E65E4E08();
  v42 = v120;
  v43 = v101;
  v120[3] = v101;
  v42[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v45 = (v128 + 16);
  v46 = *(v128 + 16);
  v46(boxed_opaque_existential_1, v41, v43);
  v106 = v46;
  v121 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA190;
  v107 = sub_1E65E60A8();
  v47 = *(v107 - 8);
  v122 = *(v47 + 56);
  v123 = (v47 + 56);
  (v122)(v131, 1, 1, v107);
  v48 = v124;
  v49 = v110;
  v50 = v32;
  v92 = v32;
  v116(v110, v124 + v115, v32);
  v51 = v119;
  v46(v119, v41, v43);
  v52 = (v109 + 32) & ~v109;
  v96 = v52;
  v53 = v128;
  v54 = *(v128 + 80);
  v55 = (v52 + v125 + v54) & ~v54;
  v93 = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v113(v56 + v52, v49, v50);
  v109 = *(v53 + 32);
  v125 = v53 + 32;
  v57 = v51;
  (v109)(v56 + v55, v51, v43);
  v58 = v131;
  v59 = sub_1E6059EAC(0, 0, v131, &unk_1E6600720, v56);
  v60 = KeyPath;
  *(KeyPath + 32) = v59;
  v61 = v107;
  (v122)(v58, 1, 1, v107);
  v62 = v126;
  v63 = v117;
  v98(v126, v48 + v99, v117);
  v64 = v43;
  v65 = v43;
  v66 = v106;
  v106(v57, v129, v64);
  v67 = (v95 + 32) & ~v95;
  v68 = (v67 + v118 + v54) & ~v54;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  v94(v69 + v67, v62, v63);
  v70 = v119;
  (v109)(v69 + v68, v119, v65);
  v71 = v131;
  *(v60 + 40) = sub_1E6059EAC(0, 0, v131, &unk_1E6600730, v69);
  (v122)(v71, 1, 1, v61);
  v72 = Description;
  v73 = v104;
  v74 = v105;
  (Description[2])(v104, v124 + v100, v105);
  v75 = v70;
  v66(v70, v129, v65);
  v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v77 = (v103 + v54 + v76) & ~v54;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  (v72[4])(v78 + v76, v73, v74);
  v79 = v75;
  v80 = v109;
  (v109)(v78 + v77, v75, v65);
  v81 = v131;
  v82 = sub_1E6059EAC(0, 0, v131, &unk_1E6600740, v78);
  v83 = KeyPath;
  *(KeyPath + 48) = v82;
  (v122)(v81, 1, 1, v107);
  v84 = v110;
  v85 = v92;
  v116(v110, v124 + v115, v92);
  v86 = v129;
  v87 = v65;
  v106(v79, v129, v65);
  v88 = v93;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  v113(v89 + v96, v84, v85);
  v80(v89 + v88, v79, v87);
  *(v83 + 56) = sub_1E6059EAC(0, 0, v131, &unk_1E6600750, v89);
  result = (*(v128 + 8))(v86, v87);
  v120[5] = v83;
  return result;
}

uint64_t sub_1E63D1EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8BD8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D1FA0, 0, 0);
}

uint64_t sub_1E63D1FA0()
{
  v1 = v0[3];
  v2 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  v0[9] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D2094;

  return v7();
}

uint64_t sub_1E63D2094(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = sub_1E63D234C;
  }

  else
  {
    *(v4 + 96) = a1;
    v8 = sub_1E63D21D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E63D21D0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];
  v5 = sub_1E63D0DF4(v0[12]);

  sub_1E5FA9F88(&unk_1F5FA8C68);
  v6 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
  v0[13] = v7;
  sub_1E600BE38(v5);

  sub_1E65D8BC8();
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E63D24CC;
  v10 = v0[8];

  return v12(v10);
}

uint64_t sub_1E63D234C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = sub_1E63D0DF4(MEMORY[0x1E69E7CD0]);

  sub_1E5FA9F88(&unk_1F5FA8C68);
  v4 = v3;
  v5 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
  v0[13] = v6;
  sub_1E600BE38(v4);

  sub_1E65D8BC8();
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1E63D24CC;
  v9 = v0[8];

  return v11(v9);
}

uint64_t sub_1E63D24CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[13];
  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E63D2964;
  }

  else
  {
    v4[16] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E63D2678;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E63D2678()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
  v4 = CatalogService.queryCachedCatalogWorkoutLockups.getter();
  v0[17] = v5;
  v6 = sub_1E63D1024(v1);

  v7 = sub_1E600AA08(v6);
  v0[18] = v7;

  v11 = (v4 + *v4);
  v8 = v4[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1E63D27BC;

  return (v11)(v7, 23, 0);
}

uint64_t sub_1E63D27BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1E63D29C8;
  }

  else
  {
    v8 = v4[17];
    v9 = v4[18];

    v4[21] = a1;
    v7 = sub_1E63D28F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63D28F4()
{
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E63D2964()
{
  v1 = v0[15];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63D29C8()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[20];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63D2A3C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for AssetService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v8[8];
  v11 = type metadata accessor for CatalogService()[-1].Description;
  v12 = (v9 + v10 + v11[80]) & ~v11[80];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E63D1EDC(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1E63D2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D2D10, 0, 0);
}

uint64_t sub_1E63D2D10()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D2E0C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E63D2E0C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D2F24, 0, 0);
}

uint64_t sub_1E63D2F24()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E63D3000;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E63D3000()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D30FC, 0, 0);
}

uint64_t sub_1E63D30FC()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D31FC, v5, v4);
  }
}

uint64_t sub_1E63D31FC()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D3000;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E63D32C8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D2BDC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF8, &qword_1E65EECE0);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3590, 0, 0);
}

uint64_t sub_1E63D3590()
{
  v1 = v0[2];
  v2 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D368C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E63D368C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FAE0A4;
  }

  else
  {
    v4 = sub_1E63D37BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63D37BC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E63D3898;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E63D3898()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D3994, 0, 0);
}

uint64_t sub_1E63D3994()
{
  v1 = v0[4];
  v2 = sub_1E65D7B58();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D3AE4, v7, v6);
  }
}

uint64_t sub_1E63D3AE4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3B68, 0, 0);
}

uint64_t sub_1E63D3B68()
{
  sub_1E60662D4(v0[4]);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E63D3898;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E63D3C18(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D3424(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3EA8, 0, 0);
}

uint64_t sub_1E63D3EA8()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D3FA4;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E63D3FA4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E63D40D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63D40D4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E63D41B0;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E63D41B0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D42AC, 0, 0);
}

uint64_t sub_1E63D42AC()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D43AC, v2, v1);
  }

  else
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E63D43AC()
{
  v1 = v0[15];
  v2 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D41B0;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E63D4478(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D3D74(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D4708, 0, 0);
}

uint64_t sub_1E63D4708()
{
  v1 = v0[4];
  v2 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D4804;
  v6 = v0[8];

  return v8(v6);
}

uint64_t sub_1E63D4804()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D491C, 0, 0);
}

uint64_t sub_1E63D491C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E63D49F8;
  v7 = v0[11];
  v8 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E63D49F8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63D4AF4, 0, 0);
}

uint64_t sub_1E63D4AF4()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D4BF4, v2, v1);
  }

  else
  {
    v3 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E63D4BF4()
{
  v1 = v0[15];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D49F8;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t objectdestroy_3Tm_11(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E63D4E24(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D45D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D4F80(uint64_t a1)
{
  v3 = sub_1E65D76A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65D8AB8();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E65DCAE8();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v36 = v1;
  v54 = MEMORY[0x1E69E7CC0];
  sub_1E601D008(0, v13, 0);
  v14 = v54;
  v15 = -1 << *(a1 + 32);
  v53 = a1 + 56;
  result = sub_1E65E6748();
  v17 = result;
  v18 = 0;
  v43 = v9;
  v44 = v6;
  v41 = v6 + 8;
  v42 = v6 + 16;
  v39 = a1;
  v40 = v9 + 32;
  v37 = a1 + 64;
  v38 = v13;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v53 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v49 = v18;
    v50 = *(a1 + 36);
    v51 = v17 >> 6;
    v21 = v44;
    v22 = *(a1 + 48) + *(v44 + 72) * v17;
    v23 = *(v44 + 16);
    v24 = v46;
    v52 = v14;
    v25 = v47;
    v23(v46, v22, v47);
    sub_1E65D8AA8();
    sub_1E65D8A88();
    sub_1E65DCAC8();
    v26 = v25;
    v14 = v52;
    (*(v21 + 8))(v24, v26);
    v54 = v14;
    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1E601D008(v27 > 1, v28 + 1, 1);
      v14 = v54;
    }

    *(v14 + 16) = v28 + 1;
    result = (*(v43 + 32))(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28, v12, v45);
    a1 = v39;
    v19 = 1 << *(v39 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v29 = *(v53 + 8 * v51);
    if ((v29 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(v39 + 36))
    {
      goto LABEL_24;
    }

    v30 = v29 & (-2 << (v17 & 0x3F));
    if (v30)
    {
      v19 = __clz(__rbit64(v30)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v38;
    }

    else
    {
      v31 = v51 << 6;
      v32 = v51 + 1;
      v20 = v38;
      v33 = (v37 + 8 * v51);
      while (v32 < (v19 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_1E60C349C(v17, v50, 0);
          v19 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_1E60C349C(v17, v50, 0);
    }

LABEL_4:
    v18 = v49 + 1;
    v17 = v19;
    if (v49 + 1 == v20)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63D53AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v3 = type metadata accessor for AppComposer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v37 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v37 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v37 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v37 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v37 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  sub_1E5E1DBD4(v2, &v37 - v24, type metadata accessor for AppComposer);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v46 = swift_allocObject();
  sub_1E5E1E8D0(v25, v46 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v23, type metadata accessor for AppComposer);
  v44 = swift_allocObject();
  sub_1E5E1E8D0(v23, v44 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v20, type metadata accessor for AppComposer);
  v41 = swift_allocObject();
  sub_1E5E1E8D0(v20, v41 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v17, type metadata accessor for AppComposer);
  v40 = swift_allocObject();
  sub_1E5E1E8D0(v17, v40 + v26, type metadata accessor for AppComposer);
  v27 = v37;
  sub_1E5E1DBD4(v2, v37, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  sub_1E5E1E8D0(v27, v38 + v26, type metadata accessor for AppComposer);
  v28 = v39;
  sub_1E5E1DBD4(v2, v39, type metadata accessor for AppComposer);
  v29 = swift_allocObject();
  sub_1E5E1E8D0(v28, v29 + v26, type metadata accessor for AppComposer);
  v30 = v42;
  sub_1E5E1DBD4(v2, v42, type metadata accessor for AppComposer);
  v31 = swift_allocObject();
  sub_1E5E1E8D0(v30, v31 + v26, type metadata accessor for AppComposer);
  v32 = v43;
  sub_1E5E1DBD4(v2, v43, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  sub_1E5E1E8D0(v32, v33 + v26, type metadata accessor for AppComposer);
  v34 = v45;
  sub_1E5E1DBD4(v2, v45, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  sub_1E5E1E8D0(v34, v35 + v26, type metadata accessor for AppComposer);
  swift_retain_n();
  return sub_1E65DCA78();
}

uint64_t sub_1E63D590C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v3, &qword_1ED072828, &qword_1E65EBE20);
}

uint64_t sub_1E63D59E0()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.clearSearchHistory.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E60102EC;

  return v9();
}

uint64_t sub_1E63D5AF4()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63D59C0(v0 + v3);
}

void sub_1E63D5BC0()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t sub_1E63D5C54()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.querySearchHistory.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E63D5D68;

  return v9();
}

uint64_t sub_1E63D5D68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1E5F9D2C8;
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 48) = a1;
    v7 = sub_1E63D5E98;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63D5E98()
{
  v1 = v0[5];
  v2 = sub_1E63D4F80(v0[6]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1E63D5F18()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E63D5C34(v0 + v3);
}

uint64_t sub_1E63D6004()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.fetchSearchLandingShelfTileDescriptors.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E63D6118;

  return v9();
}

uint64_t sub_1E63D6118(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1E5F9F07C;
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 48) = a1;
    v7 = sub_1E63D6248;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63D6248()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_1E5F9FAA4(sub_1E63D9AF8, v4, v1);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E63D6304()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E63D5FE4(v0 + v3);
}

uint64_t sub_1E63D63D0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v10 = a1 + *(type metadata accessor for AppComposer() + 20);
  v11 = type metadata accessor for AppEnvironment();
  sub_1E5FC25FC(v8, &v10[*(v11 + 136)], a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E63D6508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E50, &qword_1E65ECC08) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65DCBA8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079008, &qword_1E66008F0);
  v3[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_1E65D8718();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_1E65DCC58();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_1E65D8388();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D6760, 0, 0);
}

uint64_t sub_1E63D6760()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 232) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for AppEnvironment();
  *(v0 + 168) = v4;
  v5 = v3 + *(v4 + 56);
  v6 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  *(v0 + 176) = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_1E63D687C;

  return v11();
}

uint64_t sub_1E63D687C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_1E63D70A8;
  }

  else
  {
    v8 = *(v4 + 176);

    *(v4 + 200) = a1;
    v7 = sub_1E63D69AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63D69AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32) + *(v0 + 232);
  v9 = sub_1E63C7514(*(v0 + 200));

  v10 = sub_1E600A428(v9);

  (*(v5 + 16))(v4, v7, v6);
  sub_1E637A744(v10, v4);
  v11 = v8 + *(v3 + 104);
  v12 = SearchService.fetchSearchResults.getter();
  *(v0 + 208) = v13;
  v19 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_1E63D6B40;
  v16 = *(v0 + 160);
  v17 = *(v0 + 112);

  return v19(v17, v16);
}

uint64_t sub_1E63D6B40()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_1E63D7170;
  }

  else
  {
    v5 = sub_1E63D6C5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D6C5C()
{
  v1 = v0[26];
  v2 = v0[14];

  sub_1E65D86E8();
  result = sub_1E65D86F8();
  v4 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v5 = 0;
    v6 = v0[7];
    v45 = (v6 + 56);
    v47 = v0[10];
    v40 = v6;
    v41 = (v6 + 32);
    v43 = (v6 + 48);
    v52 = MEMORY[0x1E69E7CC0];
    v7 = v0[28];
    v49 = result;
    while (v5 < *(v4 + 16))
    {
      v8 = v0[11];
      v9 = v0[4];
      v10 = sub_1E65D8E28();
      v11 = *(v10 - 8);
      v12 = *(v11 + 16);
      v13 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v5;
      v14 = v8 + *(v47 + 48);
      *v8 = v5;
      v12(v14, v13, v10);
      v15 = sub_1E65D8E18();
      v16 = swift_task_alloc();
      *(v16 + 16) = v14;
      *(v16 + 24) = v9;
      v17 = sub_1E6402828(sub_1E63D9ADC, v16, v15);

      if (v17[2])
      {
        v18 = v0[5];
        sub_1E65D8DF8();
        sub_1E65D8E08();

        sub_1E65DCB18();
        v19 = 0;
      }

      else
      {

        v19 = 1;
      }

      v20 = v0[11];
      v22 = v0[5];
      v21 = v0[6];
      (*v45)(v22, v19, 1, v21);
      sub_1E5DFE50C(v20, &qword_1ED079008, &qword_1E66008F0);
      if ((*v43)(v22, 1, v21) == 1)
      {
        result = sub_1E5DFE50C(v0[5], &qword_1ED072E50, &qword_1E65ECC08);
        v4 = v49;
      }

      else
      {
        v23 = v0[8];
        v24 = v0[9];
        v25 = v0[6];
        v26 = *v41;
        (*v41)(v24, v0[5], v25);
        v26(v23, v24, v25);
        v4 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1E64F6EA8(0, v52[2] + 1, 1, v52);
        }

        v28 = v52[2];
        v27 = v52[3];
        if (v28 >= v27 >> 1)
        {
          v52 = sub_1E64F6EA8(v27 > 1, v28 + 1, 1, v52);
        }

        v29 = v0[8];
        v30 = v0[6];
        v52[2] = v28 + 1;
        result = (v26)(v52 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, v29, v30);
      }

      if (v50 == ++v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v31 = v0[19];
    v32 = v0[20];
    v42 = v0[18];
    v44 = v0[17];
    v33 = v0[13];
    v34 = v0[14];
    v35 = v0[12];
    v46 = v0[11];
    v48 = v0[9];
    v51 = v0[8];
    v36 = v0[5];
    v38 = v0[2];
    v37 = v0[3];

    sub_1E65DCC38();
    sub_1E65DD108();
    (*(v33 + 8))(v34, v35);
    (*(v31 + 8))(v32, v42);

    v39 = v0[1];

    return v39();
  }

  return result;
}

uint64_t sub_1E63D70A8()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63D7170()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63D7248(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63D6508(a1, a2, v2 + v7);
}

uint64_t sub_1E63D732C@<X0>(char *a1@<X0>, uint64_t *a2@<X2>, char *a3@<X8>)
{
  v19[0] = a3;
  v19[1] = a1;
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DCA68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = sub_1E65D8DF8();
  v13[1] = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E699EE68], v9);
  v15 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v16 = a2 + *(type metadata accessor for AppComposer() + 20);
  v17 = type metadata accessor for AppEnvironment();
  sub_1E645A968(v13, v8, &v16[*(v17 + 136)], v19[0]);
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E63D7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8AE8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1E65D96A8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF8, &qword_1E66008E0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1E65DCE18();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079000, &qword_1E66008E8);
  v4[17] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = sub_1E65DA038();
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D7780, 0, 0);
}

uint64_t sub_1E63D7780()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.fetchSearchSuggestions.getter();
  v0[22] = v5;
  v12 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_1E63D78A0;
  v8 = v0[21];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v8, v9, v10);
}

uint64_t sub_1E63D78A0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1E63D7E48;
  }

  else
  {
    v3 = sub_1E63D79B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63D79B4()
{
  v2 = v0[21];
  v1 = v0[22];

  sub_1E65DA018();
  result = sub_1E65DA008();
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v55 = v0[17];
    v7 = v0[14];
    v8 = v0[10];
    v42 = (v8 + 8);
    v43 = (v8 + 32);
    v51 = (v7 + 48);
    v53 = (v7 + 56);
    v44 = v7;
    v49 = (v7 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v47 = v0[7];
    v41 = *(result + 16);
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v0[18];
      v11 = v0[8];
      v12 = v0[6];
      v13 = v4 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v6;
      v14 = *(v55 + 48);
      *v10 = v6;
      v15 = MEMORY[0x1E69CB878];
      sub_1E5E1DBD4(v13, v10 + v14, MEMORY[0x1E69CB878]);
      sub_1E5E1DBD4(v10 + v14, v11, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      (*v43)(v0[11], v0[8], v0[9]);
      v16 = sub_1E65D9698();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        (*v42)(v0[11], v0[9]);
        goto LABEL_13;
      }

      v20 = v0[11];
      v45 = v0[12];
      v46 = v0[9];
      sub_1E65D9698();
      sub_1E65D9688();

      v5 = v41;
      sub_1E65DCDF8();
      (*v42)(v20, v46);
      v21 = 0;
LABEL_14:
      v22 = v0[18];
      v24 = v0[12];
      v23 = v0[13];
      (*v53)(v24, v21, 1, v23);
      sub_1E5DFE50C(v22, &qword_1ED079000, &qword_1E66008E8);
      if ((*v51)(v24, 1, v23) == 1)
      {
        result = sub_1E5DFE50C(v0[12], &qword_1ED078FF8, &qword_1E66008E0);
      }

      else
      {
        v25 = v0[15];
        v26 = v0[16];
        v27 = v0[13];
        v28 = *v49;
        (*v49)(v26, v0[12], v27);
        v28(v25, v26, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E64F6ED0(0, v9[2] + 1, 1, v9);
        }

        v30 = v9[2];
        v29 = v9[3];
        if (v30 >= v29 >> 1)
        {
          v9 = sub_1E64F6ED0(v29 > 1, v30 + 1, 1, v9);
        }

        v31 = v0[15];
        v32 = v0[13];
        v9[2] = v30 + 1;
        result = (v28)(v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30, v31, v32);
      }

      if (v5 == ++v6)
      {
        goto LABEL_20;
      }
    }

    sub_1E63D9A7C(v0[8], MEMORY[0x1E69CB878]);
LABEL_13:
    v21 = 1;
    goto LABEL_14;
  }

LABEL_20:
  v34 = v0[20];
  v33 = v0[21];
  v36 = v0[18];
  v35 = v0[19];
  v48 = v0[16];
  v50 = v0[15];
  v52 = v0[12];
  v54 = v0[11];
  v56 = v0[8];
  v38 = v0[3];
  v37 = v0[4];
  v39 = v0[2];

  sub_1E65DCA98();
  (*(v34 + 8))(v33, v35);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1E63D7E48()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

uint64_t sub_1E63D7F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E63D7528(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E63D8000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8024, 0, 0);
}

uint64_t sub_1E63D8024()
{
  v1 = v0[4];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.insertSearchHistory.getter();
  v0[5] = v5;
  v11 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1E63D8140;
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8);
}

uint64_t sub_1E63D8140()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E5F9E470;
  }

  else
  {
    v3 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63D8254(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63D8000(a1, a2, v2 + v7);
}

uint64_t sub_1E63D8334(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8354, 0, 0);
}

uint64_t sub_1E63D8354()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 32);
  v5 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E63D9A18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE36AC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E63D84AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63D8334(a1, v1 + v5);
}

uint64_t sub_1E63D8588()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63D861C, v2, v1);
}

uint64_t sub_1E63D861C()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_1E65E5C48();
  v4 = sub_1E65E6448();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1E63D86E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8700, 0, 0);
}

uint64_t sub_1E63D8700()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 104);
  v4 = SearchService.makeIntentStream.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E628AFA8;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E63D881C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63D86E0(a1, v1 + v5);
}

uint64_t sub_1E63D88F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8918, 0, 0);
}

uint64_t sub_1E63D8918()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeTrainerTipJournalsUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E63D9A18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E6138840;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E63D8A70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63D88F8(a1, v1 + v5);
}

uint64_t sub_1E63D8B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DD1C8();
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "[Canvas] Sending refreshCanvas action.", v11, 2u);
    MEMORY[0x1E694F1C0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v3, &qword_1ED072828, &qword_1E65EBE20);
}

uint64_t sub_1E63D8D24(void *a1, uint64_t a2)
{
  v127 = a1;
  v104 = sub_1E65DCCE8();
  v109 = *(v104 - 8);
  v3 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E65DCF98();
  v118 = *(v102 - 8);
  v5 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for SearchItemContext();
  v7 = *(*(v105 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v105);
  v117 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v123 = v98 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v11 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v99 = (v98 - v12);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v108 = *(v130 - 8);
  v13 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v15 = v98 - v14;
  v124 = type metadata accessor for ItemContext();
  v131 = *(v124 - 8);
  v16 = *(v131 + 64);
  v17 = MEMORY[0x1EEE9AC00](v124);
  v19 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v98 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v98 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (v98 - v31);
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v132;
  if (v133)
  {
    return sub_1E5FED3F8(v132, v133);
  }

  v125 = v32;
  v116 = v29;
  v107 = v28;
  v106 = v27;
  v122 = v25;
  v115 = v22;
  v100 = v19;
  v34 = *(v132 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  v98[1] = a2;
  v36 = v127;
  v114 = v34;
  if (!v34)
  {
    v60 = v123;
    v39 = v109;
    v42 = v118;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v130 = v35[2];
    if (!v130)
    {
      v129 = MEMORY[0x1E69E7CC0];
LABEL_54:

      v96 = sub_1E600A878(v129);

      v97 = v99;
      *v99 = v96;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v97, &qword_1ED072828, &qword_1E65EBE20);
    }

    v66 = v36;
    v67 = 0;
    v128 = (v42 + 32);
    v125 = (v39 + 32);
    v126 = (v42 + 8);
    v121 = (v39 + 8);
    v68 = v66 + 7;
    v129 = MEMORY[0x1E69E7CC0];
    v69 = v131;
    while (1)
    {
      v70 = v117;
      if (v67 >= v35[2])
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = v35;
      v73 = *(v69 + 72);
      v74 = v35 + v71 + v73 * v67;
      v75 = v122;
      sub_1E5E1DBD4(v74, v122, type metadata accessor for ItemContext);
      v76 = v115;
      sub_1E5E1DBD4(v75, v115, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1E5E1E8D0(v76, v60, type metadata accessor for SearchItemContext);
        sub_1E5E1DBD4(v60, v70, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v77 = v103;
          v78 = v104;
          (*v125)(v103, v70, v104);
          v79 = sub_1E65DCCB8();
          v81 = v80;
          v82 = v121;
        }

        else
        {
          v77 = v101;
          v78 = v102;
          (*v128)(v101, v70, v102);
          v79 = sub_1E65DCED8();
          v81 = v83;
          v82 = v126;
        }

        (*v82)(v77, v78);
        v60 = v123;
        if (v127[2])
        {
          v84 = v127;
          v85 = v127[5];
          sub_1E65E6D28();
          sub_1E65E5D78();
          v86 = sub_1E65E6D78();
          v87 = -1 << *(v84 + 32);
          v88 = v86 & ~v87;
          if ((*(v68 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
          {
            v89 = ~v87;
            while (1)
            {
              v90 = (v127[6] + 16 * v88);
              v91 = *v90 == v79 && v90[1] == v81;
              if (v91 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v88 = (v88 + 1) & v89;
              if (((*(v68 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            sub_1E63D9A7C(v60, type metadata accessor for SearchItemContext);

            sub_1E5E1E8D0(v122, v100, type metadata accessor for ItemContext);
            v92 = v129;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v134 = v92;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601BFA8(0, *(v92 + 16) + 1, 1);
              v92 = v134;
            }

            v35 = v72;
            v95 = *(v92 + 16);
            v94 = *(v92 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_1E601BFA8(v94 > 1, v95 + 1, 1);
              v92 = v134;
            }

            *(v92 + 16) = v95 + 1;
            v129 = v92;
            result = sub_1E5E1E8D0(v100, v92 + v71 + v95 * v73, type metadata accessor for ItemContext);
            goto LABEL_32;
          }
        }

LABEL_47:
        sub_1E63D9A7C(v60, type metadata accessor for SearchItemContext);

        result = sub_1E63D9A7C(v122, type metadata accessor for ItemContext);
      }

      else
      {
        sub_1E63D9A7C(v75, type metadata accessor for ItemContext);
        result = sub_1E63D9A7C(v76, type metadata accessor for ItemContext);
      }

      v35 = v72;
LABEL_32:
      ++v67;
      v69 = v131;
      if (v67 == v130)
      {
        goto LABEL_54;
      }
    }
  }

  v37 = 0;
  v38 = v116;
  v113 = v132 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v112 = v116 + 16;
  v128 = (v108 + 8);
  v129 = v108 + 16;
  v111 = (v116 + 8);
  v39 = v109;
  v40 = v107;
  v110 = v132;
  while (1)
  {
    if (v37 >= *(result + 16))
    {
      goto LABEL_56;
    }

    v43 = *(v38 + 72);
    v126 = v37;
    v44 = v125;
    (*(v38 + 16))(v125, v113 + v43 * v37, v40);
    v45 = sub_1E65E0518();
    swift_getKeyPath();
    v46 = *(v45 + 16);
    if (v46)
    {
      v121 = v35;
      v132 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v46, 0);
      v47 = v132;
      v48 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v120 = v45;
      v49 = v45 + v48;
      v50 = *(v108 + 72);
      v51 = *(v108 + 16);
      v52 = v106;
      do
      {
        v53 = v130;
        v51(v15, v49, v130);
        swift_getAtKeyPath();
        (*v128)(v15, v53);
        v132 = v47;
        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1E601BFA8(v54 > 1, v55 + 1, 1);
          v47 = v132;
        }

        *(v47 + 16) = v55 + 1;
        sub_1E5E1E8D0(v52, v47 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v55, type metadata accessor for ItemContext);
        v49 += v50;
        --v46;
      }

      while (v46);
      v40 = v107;
      (*v111)(v125, v107);

      v36 = v127;
      v35 = v121;
      v39 = v109;
    }

    else
    {

      result = (*v111)(v44, v40);
      v47 = MEMORY[0x1E69E7CC0];
    }

    v56 = *(v47 + 16);
    v57 = v35[2];
    v58 = v57 + v56;
    if (__OFADD__(v57, v56))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v58 > v35[3] >> 1)
    {
      if (v57 <= v58)
      {
        v59 = v57 + v56;
      }

      else
      {
        v59 = v57;
      }

      result = sub_1E64F6184(result, v59, 1, v35);
      v35 = result;
    }

    v60 = v123;
    if (*(v47 + 16))
    {
      if ((v35[3] >> 1) - v35[2] < v56)
      {
        goto LABEL_59;
      }

      v61 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v62 = *(v131 + 72);
      swift_arrayInitWithCopy();

      v38 = v116;
      result = v110;
      v41 = v126;
      if (v56)
      {
        v63 = v35[2];
        v64 = __OFADD__(v63, v56);
        v65 = v63 + v56;
        if (v64)
        {
          goto LABEL_60;
        }

        v35[2] = v65;
      }
    }

    else
    {

      v38 = v116;
      result = v110;
      v41 = v126;
      if (v56)
      {
        goto LABEL_58;
      }
    }

    v37 = v41 + 1;
    v42 = v118;
    if (v37 == v114)
    {
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1E63D99D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E63D9A18()
{
  result = qword_1EE2D4740;
  if (!qword_1EE2D4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D10, &qword_1E65F37A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4740);
  }

  return result;
}

uint64_t sub_1E63D9A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RouteDestination.init(resource:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E63D9B9C(a1, a4, type metadata accessor for RouteResource);
  v7 = type metadata accessor for RouteDestination();
  result = sub_1E63D9B9C(a2, a4 + *(v7 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_1E63D9B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63D9C04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v28 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v33 = a2 + 56;
  v29 = v8;
  v30 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
    v14 = v13[1];
    v32 = *v13;
    v15 = *(a2 + 40);
    sub_1E65E6D28();
    v31 = v10;
    if (v14 > 2)
    {
      if (v14 != 3 && v14 != 4 && v14 != 5)
      {
LABEL_21:
        sub_1E5E05374(v32, v14);
        MEMORY[0x1E694D7C0](v32, v14);
      }
    }

    else if (v14 > 2)
    {
      goto LABEL_21;
    }

    sub_1E65E5D78();

    v16 = sub_1E65E6D78();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v33 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_70:
      sub_1E5E0476C(v32, v14);
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      if (v22 > 2)
      {
        break;
      }

      if (!v22)
      {
        v23 = 0xE700000000000000;
        v24 = 0x65726F6C707865;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v23 = 0xE700000000000000;
          v24 = 0x7972617262696CLL;
          if (v14 <= 2)
          {
            goto LABEL_42;
          }

          goto LABEL_36;
        }

LABEL_51:
        sub_1E5E05374(v21, v22);
        MEMORY[0x1E694D7C0](v21, v22);
        v24 = 0x7974696C61646F6DLL;
        v23 = 0xE90000000000003ALL;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      v23 = 0xE600000000000000;
      v24 = 0x756F59726F66;
      if (v14 <= 2)
      {
        goto LABEL_42;
      }

LABEL_36:
      if (v14 == 3)
      {
        v25 = 0xE600000000000000;
        if (v24 == 0x686372616573)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v14 != 4)
      {
        if (v14 == 5)
        {
          v25 = 0xE500000000000000;
          if (v24 == 0x736E616C70)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_53:
        v26 = v24;
        MEMORY[0x1E694D7C0](v32, v14);
        v25 = 0xE90000000000003ALL;
        if (v26 == 0x7974696C61646F6DLL)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      v25 = 0xE600000000000000;
      if (v24 == 0x7478654E7075)
      {
        goto LABEL_62;
      }

LABEL_63:
      v27 = sub_1E65E6C18();
      sub_1E5E0476C(v21, v22);

      if (v27)
      {
        goto LABEL_67;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v33 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (v22 == 3)
    {
      v23 = 0xE600000000000000;
      v24 = 0x686372616573;
      if (v14 <= 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (v22 != 4)
    {
      if (v22 == 5)
      {
        v23 = 0xE500000000000000;
        v24 = 0x736E616C70;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      goto LABEL_51;
    }

    v23 = 0xE600000000000000;
    v24 = 0x7478654E7075;
    if (v14 > 2)
    {
      goto LABEL_36;
    }

LABEL_42:
    if (!v14)
    {
      v25 = 0xE700000000000000;
      if (v24 == 0x65726F6C707865)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (v14 != 1)
    {
      if (v14 == 2)
      {
        v25 = 0xE700000000000000;
        if (v24 == 0x7972617262696CLL)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_53;
    }

    v25 = 0xE600000000000000;
    if (v24 != 0x756F59726F66)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v23 != v25)
    {
      goto LABEL_63;
    }

    sub_1E5E0476C(v21, v22);

LABEL_67:
    sub_1E5E0476C(v32, v14);
    v8 = v29;
    result = v30;
    v7 = v31;
  }

  while (v31);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v28 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA160(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1E65E6D28();

    sub_1E65E5D78();
    v17 = sub_1E65E6D78();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1E65E6C18() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1E65E6D28();
    MEMORY[0x1E694E740](v13);
    result = sub_1E65E6D78();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA6C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1E63DAF4C(&qword_1ED072C50, MEMORY[0x1E69CCF28]);
      v28 = sub_1E65E5B38();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1E63DAF4C(&qword_1ED0755A8, MEMORY[0x1E69CCF28]);
        v33 = sub_1E65E5B98();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D9D28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1E63DAF4C(&qword_1ED0741A0, MEMORY[0x1E69CC8D0]);
      v28 = sub_1E65E5B38();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1E63DAF4C(&qword_1ED079018, MEMORY[0x1E69CC8D0]);
        v33 = sub_1E65E5B98();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static RouteDestination.== infix(_:_:)(char *a1, uint64_t *a2)
{
  if (_s10Blackbeard13RouteResourceO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for RouteDestination(), (_s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(&a1[*(v4 + 20)], a2 + *(v4 + 20))))
  {
    v5 = sub_1E63DA318(*&a1[*(v4 + 24)], *(a2 + *(v4 + 24)));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t RouteDestination.hash(into:)(__int128 *a1)
{
  v2 = v1;
  RouteResource.hash(into:)(a1);
  v4 = type metadata accessor for RouteDestination();
  v5 = v1 + *(v4 + 20);
  RouteSource.hash(into:)(a1);
  v6 = *(v2 + *(v4 + 24));

  return sub_1E61B7778(a1, v6);
}

uint64_t RouteDestination.hashValue.getter()
{
  v1 = v0;
  sub_1E65E6D28();
  RouteResource.hash(into:)(v5);
  v2 = type metadata accessor for RouteDestination();
  v3 = v0 + *(v2 + 20);
  RouteSource.hash(into:)(v5);
  sub_1E61B7778(v5, *(v1 + *(v2 + 24)));
  return sub_1E65E6D78();
}

uint64_t sub_1E63DAD38(uint64_t a1)
{
  v3 = v1;
  sub_1E65E6D28();
  RouteResource.hash(into:)(v6);
  v4 = v1 + *(a1 + 20);
  RouteSource.hash(into:)(v6);
  sub_1E61B7778(v6, *(v3 + *(a1 + 24)));
  return sub_1E65E6D78();
}

uint64_t sub_1E63DADA8(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  RouteResource.hash(into:)(a1);
  v6 = v2 + *(a2 + 20);
  RouteSource.hash(into:)(a1);
  v7 = *(v4 + *(a2 + 24));

  return sub_1E61B7778(a1, v7);
}

uint64_t sub_1E63DAE08(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E65E6D28();
  RouteResource.hash(into:)(v7);
  v5 = v2 + *(a2 + 20);
  RouteSource.hash(into:)(v7);
  sub_1E61B7778(v7, *(v4 + *(a2 + 24)));
  return sub_1E65E6D78();
}

uint64_t sub_1E63DAE74(char *a1, uint64_t *a2, uint64_t a3)
{
  if (static RouteResource.== infix(_:_:)(a1, a2) & 1) != 0 && (static RouteSource.== infix(_:_:)(&a1[*(a3 + 20)], a2 + *(a3 + 20)))
  {
    v6 = sub_1E63DA318(*&a1[*(a3 + 24)], *(a2 + *(a3 + 24)));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E63DAF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63DAF98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState() + 132) + 8);
}

uint64_t sub_1E63DAFE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState() + 132);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E63DB038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a4;
  v104 = a3;
  v105 = a2;
  v112 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = &v93 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079020, &qword_1E66009A8);
  v109 = *(v110 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v93 - v16;
  v17 = sub_1E65E0B48();
  v121 = *(v17 - 8);
  v116 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v103 = *(v19 - 8);
  v102 = *(v103 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v93 - v22;
  v122 = &v93 - v22;
  v24 = type metadata accessor for AppComposer();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  sub_1E63820A8(a1, a2, a3, &v132);
  sub_1E5E1DC3C(v5, v29, type metadata accessor for AppComposer);
  v30 = *(v25 + 80);
  v31 = (v30 + 16) & ~v30;
  v130 = v31 + v26;
  v128 = v30 | 7;
  v126 = swift_allocObject();
  v129 = v31;
  v123 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v29, v126 + v31, type metadata accessor for AppComposer);
  sub_1E5DF650C(v125, &v131);
  v125 = swift_allocObject();
  sub_1E5DF599C(&v131, v125 + 16);
  v32 = v23;
  v33 = a1;
  sub_1E63DBF68(v5, a1, v32);
  v34 = v5;
  v127 = v5;
  v114 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(v5, v29, type metadata accessor for AppComposer);
  v124 = swift_allocObject();
  sub_1E5E1E938(v29, v124 + v31, type metadata accessor for AppComposer);
  v113 = MEMORY[0x1E699DD40];
  v35 = v33;
  v101 = v33;
  v36 = v115;
  sub_1E5E1DC3C(v33, v115, MEMORY[0x1E699DD40]);
  v37 = *(v121 + 80);
  v95 = v37 + 16;
  v38 = (v37 + 16) & ~v37;
  v117 = swift_allocObject();
  v39 = MEMORY[0x1E699DD40];
  v96 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v36, v117 + v38, MEMORY[0x1E699DD40]);
  sub_1E5E1DC3C(v34, v29, type metadata accessor for AppComposer);
  v121 = swift_allocObject();
  v40 = v129;
  v41 = v123;
  sub_1E5E1E938(v29, v121 + v129, v123);
  v42 = v35;
  v43 = v36;
  sub_1E5E1DC3C(v42, v36, v113);
  v120 = swift_allocObject();
  sub_1E5E1E938(v36, v120 + v38, v39);
  v44 = v127;
  v45 = v114;
  sub_1E5E1DC3C(v127, v29, v114);
  v46 = v130;
  v119 = swift_allocObject();
  sub_1E5E1E938(v29, v119 + v40, v41);
  sub_1E5E1DC3C(v44, v29, v45);
  sub_1E5DFD1CC(v122, v118, &qword_1ED0769C0, &qword_1E65F75B0);
  sub_1E5E1DC3C(v101, v43, v113);
  v113 = *(&v132 + 1);
  v97 = v132;
  v98 = *(&v133 + 1);
  v99 = *(&v134 + 1);
  v100 = *(&v135 + 1);
  v101 = *(&v136 + 1);
  v47 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + *(v103 + 80) + 16) & ~*(v103 + 80);
  v49 = (v102 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v95 + v94) & ~v37;
  v53 = &v116[v102 + 7] & 0xFFFFFFFFFFFFFFF8;
  v103 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v116 = v29;
  sub_1E5E1E938(v29, v54 + v129, v123);
  v55 = (v54 + v47);
  v56 = v126;
  *v55 = sub_1E63DBD88;
  v55[1] = v56;
  sub_1E5FAB460(v118, v54 + v48, &qword_1ED0769C0, &qword_1E65F75B0);
  v57 = (v54 + v49);
  v58 = v125;
  *v57 = &unk_1E66009B8;
  v57[1] = v58;
  v59 = (v54 + v50);
  v60 = v124;
  *v59 = &unk_1E66009C8;
  v59[1] = v60;
  v61 = (v54 + v51);
  v62 = v117;
  *v61 = sub_1E63DC904;
  v61[1] = v62;
  v63 = (v54 + v52);
  v64 = v121;
  *v63 = &unk_1E66009D8;
  v63[1] = v64;
  v65 = (v54 + v93);
  v66 = v120;
  *v65 = sub_1E63DCB34;
  v65[1] = v66;
  v67 = (v54 + v94);
  v68 = v119;
  *v67 = &unk_1E66009E8;
  v67[1] = v68;
  sub_1E5E1E938(v115, v54 + v102, v96);
  v69 = (v54 + v53);
  v70 = v108;
  v71 = v104;
  *v69 = v105;
  v69[1] = v71;
  v72 = (v54 + v103);
  v73 = v136;
  v74 = v134;
  v72[3] = v135;
  v72[4] = v73;
  v75 = v133;
  *v72 = v132;
  v72[1] = v75;
  v72[2] = v74;
  v76 = v106;
  sub_1E5E1DC3C(v127, v106, v114);
  v77 = swift_allocObject();
  sub_1E5E1E938(v76, v77 + v129, v123);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  sub_1E65E0B78();
  v78 = sub_1E65E4FD8();
  v79 = v107;
  (*(*(v78 - 8) + 56))();
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v80 = sub_1E65E5018();
  __swift_project_value_buffer(v80, qword_1EE2D49E8);
  v81 = sub_1E65E2E78();
  v82 = v111;
  (*(*(v81 - 8) + 56))(v111, 1, 1, v81);
  sub_1E5FED46C(&qword_1ED079028, &qword_1ED079020, &qword_1E66009A8);
  v83 = v112;
  v84 = v110;
  sub_1E65E4728();

  sub_1E5DFE50C(v82, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v79, &qword_1ED071EF8, &unk_1E65FA470);
  (*(v109 + 8))(v70, v84);
  sub_1E5DFE50C(v122, &qword_1ED0769C0, &qword_1E65F75B0);
  v85 = swift_allocObject();
  v86 = v135;
  v85[3] = v134;
  v85[4] = v86;
  v85[5] = v136;
  v87 = v133;
  v85[1] = v132;
  v85[2] = v87;
  v88 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079030, &qword_1E66009F0) + 36));
  *v88 = 0;
  v88[1] = 0;
  v88[2] = sub_1E5F99E38;
  v88[3] = v85;
  v89 = v116;
  sub_1E5E1DC3C(v127, v116, type metadata accessor for AppComposer);
  v90 = swift_allocObject();
  sub_1E5E1E938(v89, v90 + v129, type metadata accessor for AppComposer);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v92 = (v83 + *(result + 36));
  *v92 = sub_1E5FF0278;
  v92[1] = v90;
  return result;
}

uint64_t sub_1E63DBDAC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FEEF74;

  return v8(1, v2, v3);
}

uint64_t sub_1E63DBED4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63DBD8C(v0 + 16);
}

uint64_t sub_1E63DBF68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65E0D48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v19 = v35;
  if (*(v35 + 16) && (v20 = sub_1E6416E08(a2), (v21 & 1) != 0))
  {
    (*(v7 + 16))(v10, *(v19 + 56) + *(v7 + 72) * v20, v6);

    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E699DEA0])
    {
      (*(v7 + 96))(v10, v6);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
      v23 = v22[12];
      v24 = v22[16];
      v25 = v22[20];
      v26 = *&v10[v22[24]];

      v27 = *&v10[v22[28]];

      v28 = *&v10[v22[32]];

      sub_1E5FAB460(v10, v17, &qword_1ED0769C0, &qword_1E65F75B0);
      sub_1E5DFE50C(&v10[v25], &qword_1ED0769D0, &qword_1E65F75E8);
      sub_1E5DFE50C(&v10[v24], &qword_1ED0769D8, &qword_1E65F75F0);
      v29 = sub_1E65E0D08();
      (*(*(v29 - 8) + 8))(&v10[v23], v29);
      sub_1E5FAB460(v17, v15, &qword_1ED0769C0, &qword_1E65F75B0);
      v30 = sub_1E65E0EE8();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v15, 1, v30) != 1)
      {
        (*(v31 + 32))(a3, v15, v30);
        return (*(v31 + 56))(a3, 0, 1, v30);
      }

      sub_1E5DFE50C(v15, &qword_1ED0769C0, &qword_1E65F75B0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
  }

  v32 = sub_1E65E0EE8();
  return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
}

uint64_t sub_1E63DC35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9158();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D8048();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63DC47C, 0, 0);
}

uint64_t sub_1E63DC47C()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  sub_1E601B608();
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.filterCatalog.getter();
  v0[11] = v7;
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1E63DC5A8;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v10);
}

uint64_t sub_1E63DC5A8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);

    v5 = sub_1E63DC798;
  }

  else
  {
    v5 = sub_1E63DC6C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63DC6C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[2];

  sub_1E634B13C(v8);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63DC798()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1E63DC820(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DC35C(a1, a2, v2 + v7);
}

uint64_t sub_1E63DC91C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63DC93C, 0, 0);
}

uint64_t sub_1E63DC93C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 32);
  v4 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FACF3C;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E63DCA58(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63DC91C(a1, v1 + v5);
}

uint64_t sub_1E63DCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9458();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1E65D8C28();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63DCC90, 0, 0);
}

uint64_t sub_1E63DCC90()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  sub_1E5FC52C8(v2);
  v5 = sub_1E65D9758();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_1E65E5D08();
  sub_1E65D8C18();
  v6 = v4 + *(type metadata accessor for AppComposer() + 20);
  v7 = v6 + *(type metadata accessor for AppEnvironment() + 48);
  v8 = CatalogService.queryCatalogFilterOptions.getter();
  v0[12] = v9;
  v15 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1E63DCE20;
  v12 = v0[11];
  v13 = v0[7];

  return v15(v13, v12);
}

uint64_t sub_1E63DCE20()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);

    v5 = sub_1E63DD018;
  }

  else
  {
    v5 = sub_1E63DCF3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63DCF3C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  sub_1E6314B98();
  (*(v8 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63DD018()
{
  v1 = v0[8];
  v2 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E63DD0B4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DCB38(a1, a2, v2 + v7);
}

uint64_t sub_1E63DD198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  v70 = a8;
  v79 = a7;
  v67 = a6;
  v78 = a5;
  v64 = a4;
  v77 = a2;
  v82 = a18;
  v83 = a19;
  v81 = a17;
  v72 = a1;
  v73 = a15;
  v69 = a16;
  v74 = a13;
  v66 = a14;
  v75 = a11;
  v76 = a9;
  v21 = type metadata accessor for AppComposer();
  v88 = *(v21 - 8);
  v86 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v85 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65E0B48();
  v71 = *(v23 - 8);
  v68 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079038, &qword_1E66009F8);
  v89 = *(v25 - 8);
  v90 = v25;
  v26 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v64 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v64 - v30;
  v32 = sub_1E65E0D78();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v91 = sub_1E65E0CE8();
  v87 = *(v91 - 8);
  v34 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v80 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a1;
  sub_1E5DFD1CC(v64, v31, &qword_1ED0769C0, &qword_1E65F75B0);

  sub_1E65E0D68();
  sub_1E65E0CD8();
  v36 = MEMORY[0x1E699DD40];
  v37 = v81;
  v38 = v65;
  sub_1E5E1DC3C(v81, v65, MEMORY[0x1E699DD40]);
  v39 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v40 = (v39 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v38, v41 + v39, MEMORY[0x1E699DD40]);
  v43 = (v41 + v40);
  v44 = v83;
  *v43 = v82;
  v43[1] = v44;
  sub_1E5E1DC3C(v37, v38, v36);
  v45 = swift_allocObject();
  sub_1E5E1E938(v38, v45 + v39, v42);
  type metadata accessor for AppFeature();
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v82 = sub_1E63E9D64(&qword_1ED079040, MEMORY[0x1E699DE70]);

  sub_1E65E4DE8();
  v46 = v85;
  sub_1E5E1DC3C(v72, v85, type metadata accessor for AppComposer);
  v47 = *a20;
  v48 = a20[3];
  v49 = a20[5];
  v50 = a20[7];
  v51 = a20[9];
  v52 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v53 = (v86 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1E5E1E938(v46, v54 + v52, type metadata accessor for AppComposer);
  v55 = (v54 + v53);
  v56 = *(a20 + 3);
  v55[2] = *(a20 + 2);
  v55[3] = v56;
  v55[4] = *(a20 + 4);
  v57 = *(a20 + 1);
  *v55 = *a20;
  v55[1] = v57;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1E63E8A18;
  *(v58 + 24) = v54;

  v59 = v80;
  v61 = v91;
  v60 = v92;
  v62 = sub_1E65E4F08();

  (*(v89 + 8))(v60, v90);
  (*(v87 + 8))(v59, v61);
  return v62;
}

uint64_t sub_1E63DD8FC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0) - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1E65E0B48() - 8);
  v13 = (*(v12 + 80) + v11 + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63DD198((v0 + v2), *(v0 + v3), *(v0 + v3 + 8), v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v10), *(v0 + v10 + 8), *(v0 + v11), *(v0 + v11 + 8), v0 + v13, *(v0 + v14), *(v0 + v14 + 8), (v0 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E63DDB10()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63DDBA4, v2, v1);
}

uint64_t sub_1E63DDBA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E63DDC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a1;
  v34 = a2;
  v5 = sub_1E65E0C48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E0C78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v35 = &v28 - v14;
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, v33, v8);
  v17 = v5;
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v5);
  v18 = a4[3];
  v30 = *a4;
  v31 = v18;
  v19 = a4[7];
  v32 = a4[5];
  v33 = v19;
  v34 = a4[9];
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v9 + 32))(v23 + v20, v11, v8);
  (*(v6 + 32))(v23 + v21, v29, v17);
  v24 = (v23 + v22);
  v25 = *(a4 + 3);
  v24[2] = *(a4 + 2);
  v24[3] = v25;
  v24[4] = *(a4 + 4);
  v26 = *(a4 + 1);
  *v24 = *a4;
  v24[1] = v26;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v35, &unk_1E6600A08, v23);
}

uint64_t sub_1E63DDF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ArtworkContent();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArtworkDescriptor();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v15, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v11, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v43, &v19[v25], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  v26 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v27 = sub_1E65DAE38();
  v28 = sub_1E65DAE38();
  v29 = sub_1E65E4B48();
  v30 = 4.0;
  if (v29)
  {
    v30 = 8.0;
  }

  v31 = 16.0;
  if (v29)
  {
    v31 = 18.0;
  }

  if (v27 == v28)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if (v27 == v28)
  {
    v33 = 12.0;
  }

  else
  {
    v33 = 8.0;
  }

  sub_1E5E1E938(v19, v24, type metadata accessor for ArtworkContent);
  *(v24 + v21[7]) = MEMORY[0x1E69E7CD0];
  v34 = (v24 + v21[8]);
  *v34 = 0.0;
  v34[1] = v32;
  v34[2] = v32;
  v34[3] = v33;
  *(v24 + v21[9]) = 1;
  v35 = (v24 + v21[10]);
  *v35 = 0;
  v35[1] = 0;
  v36 = v44;
  sub_1E64D2DD0(v24, a4, v44);
  v37 = sub_1E65E4B98();
  v39 = v38;
  v40 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v24, a4, v40);
  sub_1E63E9E88(v24, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v42 = (v40 + *(result + 36));
  *v42 = v37;
  v42[1] = v39;
  return result;
}

uint64_t sub_1E63DE27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E63DDF2C(a1, a2, a3, v10, a4);
}

uint64_t sub_1E63DE314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v181 = a5;
  v196 = a4;
  v191 = a3;
  v154 = a2;
  v195 = a1;
  v162 = a6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079058, &qword_1E6600A70);
  v159 = *(v157 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v155 = v138 - v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079060, &qword_1E6600A78);
  v161 = *(v160 - 8);
  v9 = *(v161 + 64);
  v10 = MEMORY[0x1EEE9AC00](v160);
  v156 = v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = v138 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v151 = *(v152 - 8);
  v13 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v149 = v138 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v144 = v138 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v150 = *(v148 - 8);
  v18 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v146 = v138 - v19;
  v20 = sub_1E65E0B48();
  v200 = *(v20 - 8);
  v21 = *(v200 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v153 = v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v138 - v23;
  v25 = type metadata accessor for AppComposer();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8);
  v145 = v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v173 = v138 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v178 = v138 - v32;
  v188 = v27;
  MEMORY[0x1EEE9AC00](v31);
  v34 = v138 - v33;
  v192 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(v6, v138 - v33, type metadata accessor for AppComposer);
  v177 = *(v26 + 80);
  v35 = (v177 + 16) & ~v177;
  v36 = v35 + v27;
  v203 = v177 | 7;
  v190 = swift_allocObject();
  v193 = v35;
  v205 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v34, v190 + v35, type metadata accessor for AppComposer);
  sub_1E5DF650C(v196, &v209);
  v189 = swift_allocObject();
  sub_1E5DF599C(&v209, v189 + 16);
  v37 = v6;
  v38 = v6;
  v201 = v6;
  v39 = v34;
  sub_1E5E1DC3C(v37, v34, type metadata accessor for AppComposer);
  v40 = v36;
  v197 = swift_allocObject();
  v41 = v39;
  sub_1E5E1E938(v39, v197 + v35, type metadata accessor for AppComposer);
  v204 = MEMORY[0x1E699DD40];
  v42 = v195;
  v202 = v24;
  sub_1E5E1DC3C(v195, v24, MEMORY[0x1E699DD40]);
  v43 = *(v200 + 80);
  v147 = v43 + 16;
  v44 = (v43 + 16) & ~v43;
  v179 = v21;
  v194 = v43;
  v187 = swift_allocObject();
  v45 = v24;
  v46 = MEMORY[0x1E699DD40];
  v182 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v45, v187 + v44, MEMORY[0x1E699DD40]);
  v176 = v41;
  v47 = v192;
  sub_1E5E1DC3C(v38, v41, v192);
  v200 = swift_allocObject();
  v48 = v193;
  sub_1E5E1E938(v41, v200 + v193, v205);
  v49 = v202;
  sub_1E5E1DC3C(v42, v202, v204);
  v199 = swift_allocObject();
  sub_1E5E1E938(v49, v199 + v44, v46);
  v50 = v201;
  v51 = v176;
  v52 = v47;
  sub_1E5E1DC3C(v201, v176, v47);
  v53 = v40;
  v198 = swift_allocObject();
  v54 = v198 + v48;
  v55 = v205;
  sub_1E5E1E938(v51, v54, v205);
  v139 = sub_1E65E0B18();
  v140 = v56;
  sub_1E5DF650C(v196, &v209);
  v175 = swift_allocObject();
  sub_1E5DF599C(&v209, v175 + 16);
  sub_1E5E1DC3C(v50, v51, v52);
  v183 = *v181;
  v180 = v181[3];
  v184 = v181[5];
  v186 = v181[7];
  v172 = v40;
  v185 = v181[9];
  v57 = v181;
  v143 = (v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v142 = v58;
  v59 = v193;
  sub_1E5E1E938(v51, v58 + v193, v55);
  v60 = (v58 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  v61 = v57[3];
  v60[2] = v57[2];
  v60[3] = v61;
  v60[4] = v57[4];
  v62 = v57[1];
  *v60 = *v57;
  v60[1] = v62;
  v63 = v201;
  v64 = v178;
  v65 = v52;
  sub_1E5E1DC3C(v201, v178, v52);
  v66 = v202;
  sub_1E5E1DC3C(v42, v202, v204);
  v67 = (v53 + v194) & ~v194;
  v68 = swift_allocObject();
  v174 = v68;
  v69 = v68 + v59;
  v70 = v59;
  v71 = v205;
  sub_1E5E1E938(v64, v69, v205);
  sub_1E5E1E938(v66, v68 + v67, v182);
  v72 = v173;
  sub_1E5E1DC3C(v63, v173, v65);
  v172 = swift_allocObject();
  sub_1E5E1E938(v72, v172 + v70, v71);
  v141 = *v63;
  v173 = type metadata accessor for ActionButtonDescriptor(0);
  v171 = type metadata accessor for ArtworkDescriptor();
  v170 = type metadata accessor for ContextMenu(0);
  v169 = type metadata accessor for ItemContext();
  v168 = type metadata accessor for ItemMetrics();
  v167 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v166 = type metadata accessor for SectionMetrics();
  v138[7] = type metadata accessor for ViewDescriptor();
  v165 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v164 = sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v163 = sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v138[6] = sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v138[5] = sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v138[4] = sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v138[3] = sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v138[2] = sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v138[1] = sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v74 = sub_1E65DC168();
  v207 = v73;
  v208 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v206 = v74;
  v75 = v146;
  sub_1E65DC248();
  v76 = v201;
  v77 = v145;
  v78 = v192;
  sub_1E5E1DC3C(v201, v145, v192);
  v79 = (v177 + 32) & ~v177;
  v80 = (v188 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v139;
  v83 = v140;
  *(v81 + 16) = v139;
  *(v81 + 24) = v83;
  sub_1E5E1E938(v77, v81 + v79, v205);
  v84 = (v81 + v80);
  *v84 = sub_1E5F8AA74;
  v84[1] = 0;
  v85 = swift_allocObject();
  *(v85 + 16) = v82;
  *(v85 + 24) = v83;
  type metadata accessor for AppFeature();
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v86 = v149;
  v87 = v148;
  sub_1E65E4DE8();
  v88 = swift_allocObject();
  v89 = v142;
  *(v88 + 16) = sub_1E63E90B0;
  *(v88 + 24) = v89;

  sub_1E65E4CC8();
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1E5FE9CE8;
  *(v90 + 24) = v88;

  v173 = sub_1E65E4F08();

  (*(v151 + 8))(v86, v152);
  (*(v150 + 8))(v75, v87);
  v91 = v176;
  sub_1E5E1DC3C(v76, v176, v78);
  sub_1E5E1DC3C(v195, v202, v204);
  v92 = v143;
  v93 = (v143 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
  v172 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v172 + 15) & 0xFFFFFFFFFFFFFFF8;
  v174 = (v147 + v99) & ~v194;
  v179 += 7;
  v175 = (v179 + v174) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  sub_1E5E1E938(v91, v100 + v193, v205);
  v101 = (v100 + v92);
  v102 = v190;
  *v101 = sub_1E63E9EF4;
  v101[1] = v102;
  v103 = (v100 + v93);
  v104 = v189;
  *v103 = &unk_1E6600A88;
  v103[1] = v104;
  v105 = (v100 + v94);
  v106 = v197;
  *v105 = &unk_1E6600A98;
  v105[1] = v106;
  v107 = (v100 + v95);
  v108 = v187;
  *v107 = sub_1E63E8DC8;
  v107[1] = v108;
  v109 = (v100 + v96);
  v110 = v199;
  v111 = v200;
  *v109 = &unk_1E6600AA8;
  v109[1] = v111;
  v112 = (v100 + v97);
  *v112 = sub_1E63E9F1C;
  v112[1] = v110;
  v113 = (v100 + v98);
  v114 = v198;
  *v113 = &unk_1E6600AB8;
  v113[1] = v114;
  v115 = v173;
  *(v100 + v172) = v173;
  v116 = (v100 + v99);
  *v116 = sub_1E63E9394;
  v116[1] = v115;
  v117 = v182;
  sub_1E5E1E938(v202, v100 + v174, v182);
  v118 = (v100 + v175);
  v119 = v191;
  *v118 = v154;
  v118[1] = v119;
  v120 = v178;
  sub_1E5E1DC3C(v201, v178, v192);
  v121 = v153;
  sub_1E5E1DC3C(v195, v153, v204);
  sub_1E5DF650C(v196, &v209);
  v122 = (v177 + 24) & ~v177;
  v123 = (v122 + v188 + v194) & ~v194;
  v124 = (v179 + v123) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  *(v125 + 16) = v115;
  sub_1E5E1E938(v120, v125 + v122, v205);
  sub_1E5E1E938(v121, v125 + v123, v117);
  sub_1E5DF599C(&v209, v125 + v124);
  v126 = (v125 + ((v124 + 47) & 0xFFFFFFFFFFFFFFF8));
  v127 = v181;
  v128 = *(v181 + 3);
  v126[2] = *(v181 + 2);
  v126[3] = v128;
  v126[4] = v127[4];
  v129 = v127[1];
  *v126 = *v127;
  v126[1] = v129;
  swift_retain_n();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v130 = v155;
  sub_1E65E0D88();
  sub_1E65E4978();
  v131 = sub_1E5FED46C(&qword_1ED079068, &qword_1ED079058, &qword_1E6600A70);
  v132 = v156;
  v133 = v157;
  sub_1E65E46E8();

  (*(v159 + 8))(v130, v133);
  *&v209 = v133;
  *(&v209 + 1) = v131;
  swift_getOpaqueTypeConformance2();
  v134 = v158;
  v135 = v160;
  sub_1E5FEE4C8(v132);
  v136 = *(v161 + 8);
  v136(v132, v135);
  sub_1E5FEE4C8(v134);
  return (v136)(v134, v135);
}

uint64_t sub_1E63DFADC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a4;
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D7348();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079050, &qword_1E6600A40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = sub_1E65E0E08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65E0B58())
  {
    v31 = a3;
    sub_1E5DFD1CC(v32, v16, &qword_1ED079050, &qword_1E6600A40);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1E5DFE50C(v16, &qword_1ED079050, &qword_1E6600A40);
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      sub_1E65E0DF8();
      if (v22)
      {
        sub_1E65D7338();
        v23 = v33;
        sub_1E65D72E8();
        (*(v18 + 8))(v21, v17);
        goto LABEL_10;
      }

      (*(v18 + 8))(v21, v17);
    }

    a3 = v31;
  }

  v24 = *a3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E61F6B50(v10, a1);
  v26 = v25;
  (*(v7 + 8))(v10, v6);
  if (!v26)
  {
    v27 = 1;
    v23 = v33;
    goto LABEL_12;
  }

  sub_1E65D7338();
  v23 = v33;
  sub_1E65D72E8();
LABEL_10:
  v27 = 0;
LABEL_12:
  v28 = sub_1E65D72D8();
  return (*(*(v28 - 8) + 56))(v23, v27, 1, v28);
}

uint64_t sub_1E63DFE90()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1E63E9EF0;

  return v8(1, v2, v3);
}

uint64_t sub_1E63DFFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9158();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D8048();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E00D8, 0, 0);
}

uint64_t sub_1E63E00D8()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  sub_1E601B608();
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.filterCatalog.getter();
  v0[11] = v7;
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1E63E0204;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v10);
}

uint64_t sub_1E63E0204()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);

    v5 = sub_1E63E9EF8;
  }

  else
  {
    v5 = sub_1E63E9F18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63E0320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(char *)@<X4>, char *a5@<X8>)
{
  v28 = a1;
  v29 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769D0, &qword_1E65F75E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1E65E1038();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E0B48();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65E0B58())
  {
    sub_1E5E1DC3C(a3, v20, MEMORY[0x1E699DD40]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1E63E9E88(v20, MEMORY[0x1E699DD40]);
    if (EnumCaseMultiPayload != 3)
    {
LABEL_5:
      v22 = sub_1E65E0E08();
      return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
    }

    sub_1E5DFD1CC(a2, v11, &qword_1ED0769D0, &qword_1E65F75E8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1E5DFE50C(v11, &qword_1ED0769D0, &qword_1E65F75E8);
      goto LABEL_5;
    }

    v26 = (*(v13 + 32))(v16, v11, v12);
    MEMORY[0x1EEE9AC00](v26);
    *(&v27 - 2) = v16;
    sub_1E64102F0(v29, v28, a5);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v24 = sub_1E65E0E08();
    v25 = *(*(v24 - 8) + 56);

    return v25(a5, 1, 1, v24);
  }
}

BOOL sub_1E63E066C()
{
  v0 = sub_1E65E1018();
  v1 = sub_1E65E0DE8();
  v2 = *(v0 + 16);
  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v0 + v3);
    v3 += 8;
  }

  while (v6 != v1);
  v7 = v4 != 0;

  return v7;
}

uint64_t sub_1E63E06EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63E070C, 0, 0);
}

uint64_t sub_1E63E070C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 32);
  v4 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E609B36C;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E63E0828@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v3 = sub_1E65E0D58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073040, &qword_1E65ECE98);
  v8 = *(sub_1E65E0B48() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v15 = xmmword_1E65EA670;
  *(v11 + 16) = xmmword_1E65EA670;
  *(v11 + v10) = 6;
  swift_storeEnumTagMultiPayload();
  sub_1E5F9BA30(v11);
  swift_setDeallocating();
  v12 = MEMORY[0x1E699DD40];
  sub_1E63E9E88(v11 + v10, MEMORY[0x1E699DD40]);
  swift_deallocClassInstance();
  (*(v4 + 104))(v7, *MEMORY[0x1E699DED0], v3);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  sub_1E5E1DC3C(v16, v13 + v10, MEMORY[0x1E699DD40]);
  sub_1E5F9BA30(v13);
  swift_setDeallocating();
  sub_1E63E9E88(v13 + v10, v12);
  swift_deallocClassInstance();
  return sub_1E65E0EA8();
}

uint64_t sub_1E63E0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9458();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1E65D8C28();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E0BE0, 0, 0);
}

uint64_t sub_1E63E0BE0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  sub_1E5FC52C8(v2);
  v5 = sub_1E65D9758();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_1E65E5D08();
  sub_1E65D8C18();
  v6 = v4 + *(type metadata accessor for AppComposer() + 20);
  v7 = v6 + *(type metadata accessor for AppEnvironment() + 48);
  v8 = CatalogService.queryCatalogFilterOptions.getter();
  v0[12] = v9;
  v15 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1E63E0D70;
  v12 = v0[11];
  v13 = v0[7];

  return v15(v13, v12);
}

uint64_t sub_1E63E0D70()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);

    v5 = sub_1E63E9EEC;
  }

  else
  {
    v5 = sub_1E63E9EE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63E0E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v43 = type metadata accessor for CanvasTaskIdentifier();
  v4 = *(*(v43 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v43);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - v8;
  v10 = type metadata accessor for RouteSource(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RouteDestination();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v45 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v42 - v17);
  v19 = type metadata accessor for ItemContext();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5E1DC3C(a1, v22, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v23 = *v22;
    v24 = v22[1];
    swift_storeEnumTagMultiPayload();
    *v18 = v23;
    v18[1] = v24;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E938(v13, v18 + *(v14 + 20), type metadata accessor for RouteSource);
    *(v18 + *(v14 + 24)) = MEMORY[0x1E69E7CD0];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v42[1] = v25[12];
    v26 = v25[16];
    v27 = v25[20];
    v28 = v47;
    v29 = (v47 + v25[24]);
    sub_1E5E1DC3C(v18, v9, type metadata accessor for RouteDestination);
    sub_1E5E1DC3C(v9, v7, type metadata accessor for CanvasTaskIdentifier);
    sub_1E63E9D64(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
    sub_1E65E6848();
    sub_1E63E9E88(v9, type metadata accessor for CanvasTaskIdentifier);
    v30 = *MEMORY[0x1E6999B50];
    v31 = sub_1E65E4EB8();
    (*(*(v31 - 8) + 104))(v28 + v26, v30, v31);
    v32 = *MEMORY[0x1E6999B48];
    v33 = sub_1E65E4EA8();
    (*(*(v33 - 8) + 104))(v28 + v27, v32, v33);
    sub_1E5DF650C(v46, v48);
    v34 = v45;
    sub_1E5E1DC3C(v18, v45, type metadata accessor for RouteDestination);
    v35 = (*(v44 + 80) + 56) & ~*(v44 + 80);
    v36 = swift_allocObject();
    sub_1E5DF599C(v48, v36 + 16);
    sub_1E5E1E938(v34, v36 + v35, type metadata accessor for RouteDestination);
    *v29 = &unk_1E6600C58;
    v29[1] = v36;
    sub_1E65E6068();
    sub_1E63E9E88(v18, type metadata accessor for RouteDestination);
    v37 = *MEMORY[0x1E6999AD8];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v39 = *(v38 - 8);
    (*(v39 + 104))(v28, v37, v38);
    return (*(v39 + 56))(v28, 0, 1, v38);
  }

  else
  {
    sub_1E63E9E88(v22, type metadata accessor for ItemContext);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
  }
}

uint64_t sub_1E63E1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1E65E6058();
  v3[4] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E63E14B8, v5, v4);
}

uint64_t sub_1E63E14B8()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1E600F5B0((v0 + 72));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E63E158C;
  v5 = *(v0 + 24);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 72), v3, v2);
}

uint64_t sub_1E63E158C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1E5FD0AD0;
  }

  else
  {
    v6 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E63E16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v34, v6);
  v20 = *(a4 + 24);
  v30[0] = *a4;
  v30[1] = v20;
  v21 = *(a4 + 56);
  v30[2] = *(a4 + 40);
  v30[3] = v21;
  v34 = *(a4 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v25 + v23, v10, v6);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 64);
  v26[3] = *(a4 + 48);
  v26[4] = v27;
  v28 = *(a4 + 32);
  v26[1] = *(a4 + 16);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E63E19F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_1E65E0438();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_1E65D76F8();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_1E65E0CC8();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769D8, &qword_1E65F75F0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v16 = sub_1E65E03F8();
  v3[18] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v3[20] = v18;
  v19 = *(v18 - 8);
  v3[21] = v19;
  v20 = *(v19 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v3[25] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v23 = sub_1E65E0D48();
  v3[29] = v23;
  v24 = *(v23 - 8);
  v3[30] = v24;
  v25 = *(v24 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E1D9C, 0, 0);
}

uint64_t sub_1E63E1D9C()
{
  v1 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {
    v3 = sub_1E6416E08(*(v0 + 32));
    if (v4)
    {
      v6 = *(v0 + 256);
      v5 = *(v0 + 264);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      v9 = *(v0 + 24);
      v10 = *(v8 + 16);
      v10(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

      (*(v8 + 32))(v5, v6, v7);
      v11 = *(v9 + *(type metadata accessor for AppComposer() + 20) + 8);
      if (v11 >= 2)
      {
        if (v11 == 2)
        {
          return sub_1E65E69D8();
        }

        v40 = *(v0 + 224);
        v41 = *(v0 + 200);
        v42 = *(v0 + 152);
        *v40 = 2;
        v43 = *MEMORY[0x1E699D848];
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
        (*(*(v44 - 8) + 104))(v40, v43, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v12 = *(v0 + 192);
        v13 = *(v0 + 160);
        v14 = *(v0 + 168);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v15 = *(v14 + 8);
        v15(v12, v13);
        if (*(v0 + 273) > 2u)
        {
          v29 = *(v0 + 216);
          v117 = *(v0 + 200);
          v120 = *(v0 + 224);
          v30 = *(v0 + 184);
          v123 = v15;
          v31 = *(v0 + 160);
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E0678();
          v32 = v31;
          v15 = v123;
          v123(v30, v32);
          v33 = sub_1E65E07C8();
          v34 = 2;
          if (v33)
          {
            v34 = 3;
          }

          *v29 = v34;
          v29[1] = 0x4034000000000000;
          v35 = *MEMORY[0x1E699D840];
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
          (*(*(v36 - 8) + 104))(v29, v35, v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1E5FAB460(v29, v120, &qword_1ED072650, &qword_1E65EB968);
        }

        else
        {
          v16 = *(v0 + 200);
          **(v0 + 224) = 1;
          swift_storeEnumTagMultiPayload();
        }

        v37 = *(v0 + 176);
        v38 = *(v0 + 160);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v15(v37, v38);
        v39 = *(v0 + 152);
        if (*(v0 + 272) <= 2u)
        {
          sub_1E65E0AC8();
          goto LABEL_20;
        }
      }

      sub_1E65E0A68();
LABEL_20:
      v45 = *(v0 + 264);
      v47 = *(v0 + 240);
      v46 = *(v0 + 248);
      v48 = *(v0 + 232);
      v50 = *(v0 + 144);
      v49 = *(v0 + 152);
      swift_storeEnumTagMultiPayload();
      v10(v46, v45, v48);
      v51 = (*(v47 + 88))(v46, v48);
      if (v51 == *MEMORY[0x1E699DEA8])
      {
        v52 = *(v0 + 248);
        v53 = *(v0 + 136);
        (*(*(v0 + 240) + 96))(v52, *(v0 + 232));
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079078, &qword_1E6600C48);
        v55 = *(v52 + v54[12]);

        v56 = v54[16];
        v57 = v54[20];
        v58 = v54[24];
        v59 = *(v52 + v54[28]);

        v60 = *(v52 + v54[32]);

        sub_1E5FAB460(v52, v53, &qword_1ED0769D8, &qword_1E65F75F0);
        sub_1E5DFE50C(v52 + v58, &qword_1ED0769D0, &qword_1E65F75E8);
        v61 = sub_1E65E0EE8();
        (*(*(v61 - 8) + 8))(v52 + v57, v61);
        v62 = sub_1E65E0D08();
        (*(*(v62 - 8) + 8))(v52 + v56, v62);
      }

      else
      {
        if (v51 != *MEMORY[0x1E699DEA0])
        {
          v98 = *(v0 + 264);
          v100 = *(v0 + 240);
          v99 = *(v0 + 248);
          v101 = *(v0 + 232);
          v102 = *(v0 + 152);
          sub_1E5DFE50C(*(v0 + 224), &qword_1ED072650, &qword_1E65EB968);
          v103 = *(v100 + 8);
          v103(v98, v101);
          v103(v99, v101);
          v82 = MEMORY[0x1E699D780];
          v83 = v102;
LABEL_28:
          sub_1E63E9E88(v83, v82);
          goto LABEL_7;
        }

        v63 = *(v0 + 248);
        v64 = *(v0 + 136);
        (*(*(v0 + 240) + 96))(v63, *(v0 + 232));
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
        v66 = v65[12];
        v67 = v65[16];
        v68 = v65[20];
        v69 = *(v63 + v65[24]);

        v70 = *(v63 + v65[28]);

        v71 = *(v63 + v65[32]);

        sub_1E5FAB460(v63 + v67, v64, &qword_1ED0769D8, &qword_1E65F75F0);
        sub_1E5DFE50C(v63 + v68, &qword_1ED0769D0, &qword_1E65F75E8);
        v72 = sub_1E65E0D08();
        (*(*(v72 - 8) + 8))(v63 + v66, v72);
        sub_1E5DFE50C(v63, &qword_1ED0769C0, &qword_1E65F75B0);
      }

      v73 = *(v0 + 128);
      v74 = *(v0 + 104);
      v75 = *(v0 + 112);
      sub_1E5FAB460(*(v0 + 136), v73, &qword_1ED0769D8, &qword_1E65F75F0);
      v76 = (*(v75 + 48))(v73, 1, v74);
      v77 = *(v0 + 264);
      v78 = *(v0 + 232);
      v79 = *(v0 + 240);
      v80 = *(v0 + 224);
      if (v76 != 1)
      {
        v84 = *(v0 + 208);
        v85 = *(v0 + 152);
        v86 = *(v0 + 128);
        v115 = *(v0 + 232);
        v118 = *(v0 + 120);
        v108 = *(v0 + 104);
        v110 = *(v0 + 112);
        v112 = *(v0 + 240);
        v88 = *(v0 + 88);
        v87 = *(v0 + 96);
        v90 = *(v0 + 72);
        v89 = *(v0 + 80);
        v121 = *(v0 + 64);
        v104 = *(v0 + 56);
        v91 = *(v0 + 48);
        v105 = *(v0 + 40);
        (*(v110 + 32))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
        v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788) - 8);
        v93 = *(v92 + 72);
        v106 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v122 = swift_allocObject();
        *(v122 + 16) = xmmword_1E65EA670;
        sub_1E65D76E8();
        sub_1E65D76C8();
        (*(v88 + 8))(v87, v89);
        sub_1E5DFD1CC(v80, v84, &qword_1ED072650, &qword_1E65EB968);
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v94 - 8) + 56))(v90, 1, 1, v94);
        v95 = sub_1E65E0CB8();
        v96 = swift_task_alloc();
        *(v96 + 16) = v85;
        sub_1E5F9FD18(sub_1E63E9D44, v96, v95);

        v97 = type metadata accessor for SectionMetrics();
        (*(*(v97 - 8) + 56))(v121, 1, 1, v97);
        (*(v91 + 104))(v104, *MEMORY[0x1E699D7D8], v105);
        type metadata accessor for ActionButtonDescriptor(0);
        type metadata accessor for ArtworkDescriptor();
        type metadata accessor for ContextMenu(0);
        type metadata accessor for ItemContext();
        type metadata accessor for ItemMetrics();
        type metadata accessor for SectionHeaderSubtitleDescriptor();
        type metadata accessor for ViewDescriptor();
        sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
        sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
        sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF11E0();
        sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
        sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        sub_1E65E0418();
        (*(v110 + 8))(v118, v108);
        sub_1E5DFE50C(v80, &qword_1ED072650, &qword_1E65EB968);
        (*(v112 + 8))(v77, v115);
        sub_1E63E9E88(v85, MEMORY[0x1E699D780]);
        goto LABEL_8;
      }

      v81 = *(v0 + 152);
      sub_1E5DFE50C(*(v0 + 128), &qword_1ED0769D8, &qword_1E65F75F0);
      sub_1E5DFE50C(v80, &qword_1ED072650, &qword_1E65EB968);
      (*(v79 + 8))(v77, v78);
      v82 = MEMORY[0x1E699D780];
      v83 = v81;
      goto LABEL_28;
    }
  }

LABEL_7:
  v122 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 248);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 208);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);
  v107 = *(v0 + 136);
  v109 = *(v0 + 128);
  v111 = *(v0 + 120);
  v113 = *(v0 + 96);
  v114 = *(v0 + 72);
  v116 = *(v0 + 64);
  v119 = *(v0 + 56);

  v27 = *(v0 + 8);

  return v27(v122);
}

uint64_t sub_1E63E2BF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65E03F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ItemContext();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1E65E0DA8();
  *(v10 + 1) = v11;
  v10[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DC3C(a2, v6, MEMORY[0x1E699D780]);
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E65E04D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E63E2DDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9CC8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ItemContext();
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E2F64, 0, 0);
}

unint64_t sub_1E63E2F64()
{
  v1 = v0[12];
  v80 = v0[10];
  v2 = v0[2];
  v3 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v89 = (v1 + 8);
  v77 = (v1 + 40);
  v78 = (v1 + 32);
  v90 = v2;

  v9 = 0;
  v85 = v8;
  v87 = v2 + 56;
  while (2)
  {
    v82 = v3;
    v0[16] = v3;
    v10 = v9;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v9 = v10;
LABEL_9:
      v11 = v0[10];
      v12 = v0[8];
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(v1 + 72);
      v15 = v1;
      v16 = *(v1 + 16);
      v16(v0[15], *(v90 + 48) + v14 * (v13 | (v9 << 6)), v0[11]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v17 = v0[10];
      (*v89)(v0[15], v0[11]);
      sub_1E63E9E88(v17, type metadata accessor for ItemContext);
      v10 = v9;
      v1 = v15;
      v8 = v85;
      v4 = v87;
      if (!v7)
      {
        while (1)
        {
LABEL_6:
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v9 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9);
          ++v10;
          if (v7)
          {
            goto LABEL_9;
          }
        }

        v84 = v0[9];
        v42 = v0[5];
        v43 = v0[2];

        v44 = -1;
        v45 = -1 << *(v90 + 32);
        if (-v45 < 64)
        {
          v44 = ~(-1 << -v45);
        }

        v46 = v44 & *(v90 + 56);
        v47 = (63 - v45) >> 6;
        v81 = v42;
        v86 = (v42 + 32);

        v48 = 0;
        v88 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v0[17] = v88;
          if (!v46)
          {
            break;
          }

          v49 = v48;
LABEL_30:
          v51 = v0[8];
          v50 = v0[9];
          v52 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
          (*(v1 + 16))(v0[13], *(v90 + 48) + *(v1 + 72) * (v52 | (v49 << 6)), v0[11]);
          sub_1E65E04E8();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v54 = v0[9];
          if (EnumCaseMultiPayload == 2)
          {
            v55 = v0[6];
            v79 = v0[7];
            v56 = v0[4];
            v57 = *v54;
            v58 = *(v84 + 8);
            v59 = v0[13];
            v60 = v0[11];
            sub_1E65D9C88();
            (*v89)(v59, v60);
            v61 = *v86;
            (*v86)(v79, v55, v56);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_1E64F610C(0, v88[2] + 1, 1, v88);
            }

            v63 = v88[2];
            v62 = v88[3];
            if (v63 >= v62 >> 1)
            {
              v88 = sub_1E64F610C(v62 > 1, v63 + 1, 1, v88);
            }

            v64 = v0[7];
            v65 = v0[4];
            v88[2] = v63 + 1;
            v61(v88 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v63, v64, v65);
            v48 = v49;
          }

          else
          {
            (*v89)(v0[13], v0[11]);
            sub_1E63E9E88(v54, type metadata accessor for ItemContext);
            v48 = v49;
          }
        }

        while (1)
        {
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v49 >= v47)
          {
            v66 = v0[2];
            v67 = v0[3];

            v68 = v67 + *(type metadata accessor for AppComposer() + 20);
            v69 = v68 + *(type metadata accessor for AppEnvironment() + 48);
            v70 = CatalogService.fetchRemoteCatalogLockups.getter();
            v0[18] = v71;
            v91 = (v70 + *v70);
            v72 = v70[1];
            v73 = swift_task_alloc();
            v0[19] = v73;
            *v73 = v0;
            v73[1] = sub_1E63E36C0;

            return (v91)(34, v88);
          }

          v46 = *(v4 + 8 * v49);
          ++v48;
          if (v46)
          {
            goto LABEL_30;
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v75 = v14;
    v18 = *v0[10];
    v19 = *(v80 + 8);
    v74 = *(v80 + 16);
    v16(v0[14], v0[15], v0[11]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v82;
    v76 = v18;
    v21 = v19;
    result = sub_1E6215038(v18, v19);
    v24 = v82[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v28 = v23;
    v1 = v15;
    v4 = v87;
    if (v82[3] >= v27)
    {
      v31 = v75;
      v29 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = result;
        sub_1E6424B84();
        v31 = v75;
        result = v41;
      }

LABEL_18:
      v32 = v0[14];
      v33 = v0[15];
      v34 = v0[11];
      if (v28)
      {
        v83 = v0[15];
        v35 = result;
        v36 = v0[14];
        v37 = v31;
        sub_1E5E483B8();
        v3 = v92;
        (*v77)(v92[7] + v35 * v37, v36, v34);
        (*v89)(v83, v34);
        v8 = v85;
        continue;
      }

      v3 = v82;
      v82[(result >> 6) + 8] |= 1 << result;
      v38 = (v82[6] + 16 * result);
      *v38 = v76;
      v38[1] = v29;
      (*v78)(v82[7] + result * v31, v32, v34);
      result = (*v89)(v33, v34);
      v39 = v82[2];
      v26 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v26)
      {
        v82[2] = v40;
        v8 = v85;
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  sub_1E641BE8C(v27, isUniquelyReferenced_nonNull_native);
  v29 = v21;
  result = sub_1E6215038(v76, v21);
  v31 = v75;
  if ((v28 & 1) == (v30 & 1))
  {
    goto LABEL_18;
  }

LABEL_42:

  return sub_1E65E6C68();
}

uint64_t sub_1E63E36C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1E63E3930;
  }

  else
  {
    v9 = v4[17];
    v8 = v4[18];

    v4[21] = a1;
    v7 = sub_1E63E37F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63E37F8()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[10];
  v14 = v0[9];
  v15 = v0[7];
  v16 = v0[6];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  *(v9 + 24) = v8;
  v10 = sub_1E6404CB8(sub_1E63E9D28, v9, v2);

  v11 = sub_1E600A848(v10);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1E63E3930()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];
  v12 = v0[20];

  return v11();
}

uint64_t sub_1E63E3A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v229 = a3;
  v261 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v203 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v242 = &v203 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v241 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v247 = &v203 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v246 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v259 = &v203 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v248 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v260 = &v203 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v220 = &v203 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v218 = &v203 - v33;
  v217 = sub_1E65DAC98();
  v215 = *(v217 - 8);
  v34 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1E65DB268();
  v36 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v213 = &v203 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1E65DA0B8();
  v214 = *(v216 - 8);
  v38 = *(v214 + 64);
  v39 = MEMORY[0x1EEE9AC00](v216);
  v211 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v234 = &v203 - v41;
  v210 = sub_1E65D9D58();
  v209 = *(v210 - 8);
  v42 = *(v209 + 64);
  v43 = MEMORY[0x1EEE9AC00](v210);
  v208 = &v203 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v207 = &v203 - v45;
  v230 = sub_1E65D8BB8();
  v46 = *(*(v230 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v230);
  v231 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v243 = &v203 - v49;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v50 = *(*(v233 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v233);
  v232 = &v203 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v258 = (&v203 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v244 = &v203 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v253 = &v203 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v257 = &v203 - v60;
  v266 = sub_1E65D72D8();
  v256 = *(v266 - 8);
  v61 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v265 = &v203 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v226 = (&v203 - v65);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v224 = *(v225 - 8);
  v66 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v203 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v227 = &v203 - v70;
  v245 = sub_1E65D9AC8();
  v264 = *(v245 - 8);
  v71 = v264[8];
  v72 = MEMORY[0x1EEE9AC00](v245);
  v228 = &v203 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v249 = &v203 - v74;
  v240 = sub_1E65D7848();
  v239 = *(v240 - 8);
  v75 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v262 = &v203 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for ItemContext();
  v77 = *(*(v236 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v236);
  v235 = &v203 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v255 = &v203 - v80;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v237 = *(v238 - 8);
  v81 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v254 = &v203 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079070, &qword_1E6600C00);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v222 = &v203 - v85;
  v86 = sub_1E65E03F8();
  v221 = *(v86 - 8);
  v87 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v252 = &v203 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v250 = *(v263 - 8);
  v89 = *(v250 + 64);
  v90 = MEMORY[0x1EEE9AC00](v263);
  v92 = &v203 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v90);
  v95 = &v203 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v251 = &v203 - v96;
  v267 = a1;
  v97 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v206 = v9;
  v99 = sub_1E6215038(v97, v98);
  v101 = v100;

  if ((v101 & 1) == 0)
  {
LABEL_7:
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v112 - 8) + 56))(v261, 1, 1, v112);
  }

  v102 = *(a2 + 56);
  v103 = v250;
  v204 = *(v250 + 72);
  v104 = v263;
  v205 = *(v250 + 16);
  v205(v95, v102 + v204 * v99, v263);
  (*(v103 + 32))(v251, v95, v104);
  v105 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

LABEL_9:
    v114 = v221;
    v115 = v222;
    (*(v221 + 56))(v222, 1, 1, v86);
    sub_1E65E0AC8();
    swift_storeEnumTagMultiPayload();
    if ((*(v114 + 48))(v115, 1, v86) != 1)
    {
      sub_1E5DFE50C(v115, &qword_1ED079070, &qword_1E6600C00);
    }

    goto LABEL_11;
  }

  v107 = sub_1E6215038(v105, v106);
  v109 = v108;

  if ((v109 & 1) == 0)
  {
    goto LABEL_9;
  }

  v110 = v263;
  v205(v92, *(a2 + 56) + v107 * v204, v263);
  v111 = v222;
  sub_1E65E04F8();
  (*(v250 + 8))(v92, v110);
  (*(v221 + 56))(v111, 0, 1, v86);
  sub_1E5E1E938(v111, v252, MEMORY[0x1E699D780]);
LABEL_11:
  v116 = v229;
  v117 = *v229;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v118 = v116 + *(type metadata accessor for AppComposer() + 20);
  LODWORD(v222) = v118[8];
  swift_getKeyPath();
  v119 = v262;
  sub_1E65E4EC8();

  swift_getKeyPath();
  v120 = v223;
  sub_1E65E4EC8();

  v121 = v226;
  v122 = v225;
  sub_1E65E4C98();
  v123 = v227;
  sub_1E60EEE88(v227);
  sub_1E5DFE50C(v121, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v224 + 8))(v120, v122);
  v124 = v264;
  v125 = v264[6];
  v126 = v245;
  if (v125(v123, 1, v245) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v125(v123, 1, v126) != 1)
    {
      sub_1E5DFE50C(v123, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v124[4])(v249, v123, v126);
  }

  v127 = *(type metadata accessor for AppEnvironment() + 136);
  v128 = sub_1E5F9B6D0(&unk_1F5FA8CA0);
  v129 = sub_1E65D8248();
  sub_1E63C4134(v119, &v118[v127], v129, v265);

  v229 = sub_1E65D80A8();
  v130 = sub_1E65D9AA8();
  v132 = v131;
  v133 = v228;
  MEMORY[0x1E6941490]();
  v134 = sub_1E65D9AA8();
  v136 = v135;
  v137 = v264[1];
  ++v264;
  v228 = v137;
  (v137)(v133, v126);
  if (v130 == v134 && v132 == v136)
  {
  }

  else
  {
    v138 = sub_1E65E6C18();

    if ((v138 & 1) == 0)
    {
      v139 = sub_1E65D8198();
      v140 = sub_1E65D9AA8();
      v142 = sub_1E637CA94(v140, v141, v139);

      if (v142)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v143 = *(sub_1E65DADF8() - 8);
        v144 = *(v143 + 72);
        v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_1E65EB9E0;
        v147 = (v146 + v145);
        *v147 = sub_1E65D9AA8();
        v147[1] = v148;
        swift_storeEnumTagMultiPayload();
        *(v147 + v144) = 1;
        swift_storeEnumTagMultiPayload();
        v149 = sub_1E65D80A8();
        v268 = v146;
        sub_1E5FA9E2C(v149);
        v229 = v268;
      }
    }
  }

  v150 = *(sub_1E65D8068() + 16);

  v151 = v257;
  if (v150)
  {
    v152 = sub_1E65D8068();
    sub_1E63C4134(v262, &v118[v127], v152, v151);

    v153 = 0;
  }

  else
  {
    v153 = 1;
  }

  v154 = v256 + 56;
  v226 = *(v256 + 56);
  v226(v151, v153, 1, v266);
  v227 = sub_1E63B0704(v128);

  v155 = v243;
  sub_1E65D8128();
  v156 = v155;
  v157 = v231;
  sub_1E5E1DC3C(v156, v231, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v225 = v127;
  if (EnumCaseMultiPayload == 1)
  {
    v230 = v118;
    v159 = v214;
    v160 = v234;
    v161 = v216;
    (*(v214 + 32))(v234, v157, v216);
    v162 = v211;
    (*(v159 + 16))(v211, v160, v161);
    v231 = v154;
    v163 = v212;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v215 + 8))(v163, v217);
    sub_1E65DA0A8();
    sub_1E63E9D64(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v164 = v232;
    sub_1E65DC438();
    v165 = *(v159 + 8);
    v165(v162, v161);
    v165(v234, v161);
    v118 = v230;
  }

  else
  {
    v166 = v209;
    v167 = v207;
    v168 = v157;
    v169 = v210;
    (*(v209 + 32))(v207, v168, v210);
    v170 = v208;
    (*(v166 + 16))(v208, v167, v169);
    v164 = v232;
    sub_1E6134678(v170, v232);
    (*(v166 + 8))(v167, v169);
  }

  sub_1E63E9E88(v243, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v164, v258, &qword_1ED074530, &qword_1E65F0CA8);
  v171 = sub_1E65D81E8();
  if (v173 == -1)
  {
    v177 = 4;
  }

  else
  {
    v268 = v171;
    v269 = v172;
    v270 = v173 & 1;
    v174 = v171;
    v175 = v172;
    v176 = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v174, v175, v176);
    v177 = v271;
  }

  LODWORD(v234) = v177;
  v178 = v226;
  v179 = v253;
  v180 = v266;
  (*(v256 + 16))(v253, v265, v266);
  v181 = 1;
  v178(v179, 0, 1, v180);
  sub_1E65D8158();
  v182 = v244;
  if (v229[2])
  {
    sub_1E63C4134(v262, &v118[v225], v229, v244);
    v181 = 0;
  }

  v178(v182, v181, 1, v266);
  sub_1E65D8178();
  v183 = type metadata accessor for ActionButtonDescriptor(0);
  v243 = v183;
  v184 = *(*(v183 - 8) + 56);
  v185 = v247;
  v184();
  v186 = v241;
  (v184)(v241, 1, 1, v183);
  v187 = sub_1E65D8088();
  v189 = v188;
  v233 = v188;
  v190 = sub_1E65D80C8();
  v192 = v191;
  v194 = v193;
  v195 = sub_1E65D81B8();
  v194 &= 1u;
  v202 = v187;
  v201 = v185;
  v196 = v244;
  v197 = v246;
  sub_1E63A0574(v254, v258, v227, v234, v253, v259, v244, v246, v260, v257, v222, v201, v186, v202, v189, v190, v192, v194, v195, v198, 7u);

  sub_1E5F87058(v190, v192, v194);

  sub_1E5DFE50C(v186, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v247, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v197, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v196, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v259, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v253, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1DC3C(v255, v235, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v260, v248, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v242);
  sub_1E622BB88(v265, v206);
  v267 = type metadata accessor for ArtworkDescriptor();
  v259 = type metadata accessor for ContextMenu(0);
  v253 = type metadata accessor for ItemMetrics();
  v247 = type metadata accessor for ViewDescriptor();
  v246 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v199 = v261;
  sub_1E65E0488();
  sub_1E5DFE50C(v260, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v258, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v257, &qword_1ED072D90, &qword_1E66040F0);
  (*(v256 + 8))(v265, v266);
  (v228)(v249, v245);
  (*(v239 + 8))(v262, v240);
  sub_1E63E9E88(v255, type metadata accessor for ItemContext);
  (*(v237 + 8))(v254, v238);
  sub_1E63E9E88(v252, MEMORY[0x1E699D780]);
  (*(v250 + 8))(v251, v263);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v200 - 8) + 56))(v199, 0, 1, v200);
}

uint64_t sub_1E63E57E8(uint64_t a1, uint64_t a2)
{
  v103 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = (&v83 - v4);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v94 = *(v106 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v7 = &v83 - v6;
  v8 = type metadata accessor for ItemContext();
  v107 = *(v8 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v83 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v95 = *(v21 - 8);
  v22 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - v23;
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v108;
  if (v109)
  {
    return sub_1E5FED3F8(v108, v109);
  }

  v100 = v24;
  v88 = v21;
  v87 = v20;
  v98 = v18;
  v99 = v15;
  v86 = v12;
  v26 = *(v108 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v83 = a2;
  v96 = v8;
  v93 = v26;
  if (!v26)
  {
    v33 = v103;
    v53 = v107;
    v51 = v99;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v106 = v27[2];
    if (!v106)
    {
      v105 = MEMORY[0x1E69E7CC0];
LABEL_52:

      v81 = sub_1E600A878(v105);

      v82 = v85;
      *v85 = v81;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v82, &qword_1ED072828, &qword_1E65EBE20);
    }

    v59 = 0;
    v60 = v33 + 56;
    v105 = MEMORY[0x1E69E7CC0];
    v102 = v27;
    while (1)
    {
      if (v59 >= v27[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v61 = v27;
      v62 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v63 = *(v53 + 72);
      v64 = v98;
      sub_1E5E1DC3C(v61 + v62 + v63 * v59, v98, type metadata accessor for ItemContext);
      sub_1E5E1DC3C(v64, v51, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v65 = v51;
        v67 = *v51;
        v66 = v51[1];
        v68 = *(v65 + 16);
        if (*(v33 + 16))
        {
          v69 = *(v33 + 40);
          sub_1E65E6D28();
          sub_1E65E5D78();
          v70 = sub_1E65E6D78();
          v71 = -1 << *(v33 + 32);
          v72 = v70 & ~v71;
          if ((*(v60 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
          {
            v73 = ~v71;
            while (1)
            {
              v74 = (*(v103 + 48) + 16 * v72);
              v75 = *v74 == v67 && v66 == v74[1];
              if (v75 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v72 = (v72 + 1) & v73;
              if (((*(v60 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            sub_1E5E483B8();
            sub_1E5E1E938(v98, v86, type metadata accessor for ItemContext);
            v76 = v105;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v110 = v76;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601BFA8(0, *(v76 + 16) + 1, 1);
              v76 = v110;
            }

            v33 = v103;
            v51 = v99;
            v79 = *(v76 + 16);
            v78 = *(v76 + 24);
            v80 = v76;
            if (v79 >= v78 >> 1)
            {
              sub_1E601BFA8(v78 > 1, v79 + 1, 1);
              v33 = v103;
              v80 = v110;
            }

            *(v80 + 16) = v79 + 1;
            v105 = v80;
            result = sub_1E5E1E938(v86, v80 + v62 + v79 * v63, type metadata accessor for ItemContext);
            v53 = v107;
            goto LABEL_31;
          }

LABEL_43:
          sub_1E63E9E88(v98, type metadata accessor for ItemContext);
          result = sub_1E5E483B8();
          v33 = v103;
        }

        else
        {
          sub_1E63E9E88(v98, type metadata accessor for ItemContext);
          result = sub_1E5E483B8();
        }

        v53 = v107;
        v51 = v99;
      }

      else
      {
        sub_1E63E9E88(v64, type metadata accessor for ItemContext);
        result = sub_1E63E9E88(v51, type metadata accessor for ItemContext);
      }

LABEL_31:
      ++v59;
      v27 = v102;
      if (v59 == v106)
      {
        goto LABEL_52;
      }
    }
  }

  v28 = 0;
  v29 = v95;
  v92 = v108 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v91 = v95 + 16;
  v30 = v94;
  v104 = (v94 + 8);
  v105 = v94 + 16;
  v90 = (v95 + 8);
  v31 = v106;
  v32 = v88;
  v89 = v108;
  while (1)
  {
    if (v28 >= *(result + 16))
    {
      goto LABEL_54;
    }

    v35 = *(v29 + 72);
    v101 = v28;
    v36 = v100;
    (*(v29 + 16))(v100, v92 + v35 * v28, v32);
    v37 = sub_1E65E0518();
    swift_getKeyPath();
    v38 = *(v37 + 16);
    if (v38)
    {
      v102 = v27;
      v108 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v38, 0);
      v39 = v108;
      v40 = *(v30 + 80);
      v97 = v37;
      v41 = v37 + ((v40 + 32) & ~v40);
      v42 = v30;
      v43 = *(v30 + 72);
      v44 = *(v42 + 16);
      v45 = v87;
      do
      {
        v44(v7, v41, v31);
        swift_getAtKeyPath();
        (*v104)(v7, v31);
        v108 = v39;
        v47 = *(v39 + 16);
        v46 = *(v39 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1E601BFA8(v46 > 1, v47 + 1, 1);
          v39 = v108;
        }

        *(v39 + 16) = v47 + 1;
        sub_1E5E1E938(v45, v39 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v47, type metadata accessor for ItemContext);
        v41 += v43;
        --v38;
        v31 = v106;
      }

      while (v38);
      v32 = v88;
      (*v90)(v100, v88);

      v27 = v102;
    }

    else
    {

      result = (*v90)(v36, v32);
      v39 = MEMORY[0x1E69E7CC0];
    }

    v48 = *(v39 + 16);
    v49 = v27[2];
    v50 = v49 + v48;
    v51 = v99;
    if (__OFADD__(v49, v48))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v50 > v27[3] >> 1)
    {
      if (v49 <= v50)
      {
        v52 = v49 + v48;
      }

      else
      {
        v52 = v49;
      }

      result = sub_1E64F6184(result, v52, 1, v27);
      v27 = result;
    }

    v31 = v106;
    v53 = v107;
    if (*(v39 + 16))
    {
      if ((v27[3] >> 1) - v27[2] < v48)
      {
        goto LABEL_57;
      }

      v54 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v55 = *(v107 + 72);
      swift_arrayInitWithCopy();

      v33 = v103;
      v29 = v95;
      result = v89;
      v34 = v101;
      if (v48)
      {
        v56 = v27[2];
        v57 = __OFADD__(v56, v48);
        v58 = v56 + v48;
        if (v57)
        {
          goto LABEL_58;
        }

        v27[2] = v58;
      }
    }

    else
    {

      v33 = v103;
      v29 = v95;
      result = v89;
      v34 = v101;
      if (v48)
      {
        goto LABEL_56;
      }
    }

    v28 = v34 + 1;
    v30 = v94;
    if (v28 == v93)
    {
      goto LABEL_28;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1E63E61E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v64 = a8;
  v66 = a6;
  v53[1] = a5;
  v61 = a2;
  v69 = a20;
  v70 = a21;
  v62 = a19;
  v63 = a4;
  v55 = a17;
  v53[2] = a18;
  v57 = a14;
  v58 = a12;
  v59 = a10;
  v22 = sub_1E65E0B48();
  v60 = *(v22 - 8);
  v56 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v54 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079038, &qword_1E66009F8);
  v72 = *(v24 - 8);
  v73 = v24;
  v25 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v71 = v53 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = v53 - v29;
  v31 = sub_1E65E0D78();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = sub_1E65E0CE8();
  v34 = *(v33 - 8);
  v67 = v33;
  v68 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v53[0] = v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  v37 = sub_1E65E0EE8();
  (*(*(v37 - 8) + 56))(v30, 1, 1, v37);

  sub_1E65E0D68();
  v38 = v53[0];
  sub_1E65E0CD8();
  v39 = MEMORY[0x1E699DD40];
  v40 = v62;
  v41 = v54;
  sub_1E5E1DC3C(v62, v54, MEMORY[0x1E699DD40]);
  v42 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v43 = (v42 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v41, v44 + v42, MEMORY[0x1E699DD40]);
  v46 = (v44 + v43);
  v47 = v70;
  *v46 = v69;
  v46[1] = v47;
  sub_1E5E1DC3C(v40, v41, v39);
  v48 = swift_allocObject();
  sub_1E5E1E938(v41, v48 + v42, v45);
  type metadata accessor for AppFeature();
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E63E9D64(&qword_1ED079040, MEMORY[0x1E699DE70]);

  v49 = v71;
  v50 = v67;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v51 = sub_1E65E4F08();
  (*(v72 + 8))(v49, v73);
  (*(v68 + 8))(v38, v50);
  return v51;
}

uint64_t sub_1E63E6790(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E635EFB8, v5, v4);
}

uint64_t sub_1E63E6864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a3;
  v54 = a4;
  v55 = a2;
  v51 = a6;
  v7 = sub_1E65E0B48();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - v16;
  v18 = sub_1E65D7848();
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E0D48();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v46 - v27;
  v29 = sub_1E65E0C98();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AppState();
  v34 = a1 + v33[6];
  v46 = v32;
  sub_1E621CCE0();
  v35 = *(a1 + v33[33] + 8);
  if (*(v35 + 16) && (v36 = sub_1E6416E08(v55), (v37 & 1) != 0))
  {
    (*(v22 + 16))(v26, *(v35 + 56) + *(v22 + 72) * v36, v21);
    (*(v22 + 32))(v28, v26, v21);
  }

  else
  {
    (*(v22 + 104))(v28, *MEMORY[0x1E699DE98], v21);
  }

  v38 = v33[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v40 = v47;
  v39 = v48;
  v41 = *(v47 + 48);
  if (v41(v17, 1, v48) == 1)
  {
    sub_1E65D77C8();
    v42 = v41(v17, 1, v39) == 1;
    v43 = v55;
    if (!v42)
    {
      v44 = v55;
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
      v43 = v44;
    }
  }

  else
  {
    (*(v40 + 32))(v49, v17, v39);
    v43 = v55;
  }

  sub_1E5E1DC3C(v43, v50, MEMORY[0x1E699DD40]);

  return sub_1E65E0C38();
}

uint64_t sub_1E63E6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079048, &qword_1E6600A10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1E65E0B48();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DC3C(a3, v12, MEMORY[0x1E699DD40]);
  sub_1E65E0C28();
  v13 = sub_1E65E0D48();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = a1 + *(type metadata accessor for AppState() + 132) + 8;
  return sub_1E6408CA0(v8, v12);
}

uint64_t sub_1E63E6E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v133 = a4;
  v163 = a3;
  v144 = a5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v134 = *(v135 - 8);
  v7 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v156 = v124 - v8;
  v166 = sub_1E65D76F8();
  v154 = *(v166 - 8);
  v136 = *(v154 + 64);
  v9 = MEMORY[0x1EEE9AC00](v166);
  v165 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v164 = v124 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v155 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v167 = v124 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v148 = v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v137 = v124 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v160 = (v124 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v151 = v124 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v124 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v143 = *(v142 - 8);
  v29 = *(v143 + 64);
  v30 = MEMORY[0x1EEE9AC00](v142);
  v138 = v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v139 = v124 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v140 = v124 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v141 = v124 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v124 - v39;
  v41 = sub_1E65E60A8();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  sub_1E65E6058();
  v153 = a1;

  v42 = sub_1E65E6048();
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E85E0];
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = a1;
  sub_1E64B80F8(0, 0, v40, &unk_1E6600AE8, v43);

  v147 = a2;
  v131 = v28;
  v158 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(a2, v28, type metadata accessor for AppComposer);
  v45 = *(v18 + 80);
  v149 = ((v45 + 16) & ~v45) + v19;
  v150 = (v45 + 16) & ~v45;
  v146 = v45 | 7;
  v157 = swift_allocObject();
  v145 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v28, v157 + ((v45 + 16) & ~v45), type metadata accessor for AppComposer);
  sub_1E65E5148();
  v46 = sub_1E65E5138();
  v47 = v151;
  sub_1E5E1DC3C(a2, v151, type metadata accessor for AppComposer);
  v48 = ((v45 + 32) & ~v45) + v19;
  v130 = (v45 + 32) & ~v45;
  v132 = v48;
  v49 = swift_allocObject();
  v162 = v49;
  v152 = &unk_1E6600AF8;
  v50 = v157;
  *(v49 + 16) = &unk_1E6600AF8;
  *(v49 + 24) = v50;
  v51 = v145;
  sub_1E5E1E938(v47, v49 + ((v45 + 32) & ~v45), v145);
  *(v49 + v48) = 0;
  v52 = v49 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v129 = sub_1E6172524;
  *(v52 + 8) = sub_1E6172524;
  *(v52 + 16) = 0;
  v53 = (v49 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v54 = MEMORY[0x1E69AB380];
  *v53 = v46;
  v53[1] = v54;
  v55 = v147;
  v56 = v160;
  v57 = v158;
  sub_1E5E1DC3C(v147, v160, v158);
  v58 = (v45 + 48) & ~v45;
  v59 = v58 + v19;
  v60 = swift_allocObject();
  v161 = v60;
  v60[2] = v152;
  v60[3] = v50;
  v60[4] = v46;
  v159 = v46;
  v60[5] = MEMORY[0x1E69AB380];
  sub_1E5E1E938(v56, v60 + v58, v51);
  *(v60 + v59) = 0;
  v61 = v60 + (v59 & 0xFFFFFFFFFFFFFFF8);
  v62 = v129;
  *(v61 + 1) = v129;
  *(v61 + 2) = 0;
  v63 = v55;
  v64 = v137;
  sub_1E5E1DC3C(v55, v137, v57);
  v65 = swift_allocObject();
  v66 = v152;
  v67 = v157;
  v65[2] = v152;
  v65[3] = v67;
  v65[4] = v46;
  v65[5] = MEMORY[0x1E69AB380];
  v68 = v65 + v58;
  v69 = v65;
  v160 = v65;
  v70 = v64;
  v71 = v145;
  sub_1E5E1E938(v70, v68, v145);
  v72 = v69 + ((v59 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v72 = v62;
  *(v72 + 1) = 0;
  v72[16] = 0;
  v73 = v148;
  sub_1E5E1DC3C(v55, v148, v57);
  v74 = swift_allocObject();
  v132 = v74;
  *(v74 + 16) = v66;
  *(v74 + 24) = v67;
  sub_1E5E1E938(v73, v74 + v130, v71);
  v75 = v131;
  sub_1E5E1DC3C(v55, v131, v57);
  sub_1E5DF650C(v163, &v169);
  v126 = *v133;
  v127 = *(v133 + 24);
  v128 = *(v133 + 40);
  v129 = *(v133 + 56);
  v130 = *(v133 + 72);
  v76 = v133;
  v77 = (v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v152 = v77;
  v148 = (v77 + 47) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v137 = v78;
  v79 = v150;
  sub_1E5E1E938(v75, v78 + v150, v71);
  sub_1E5DF599C(&v169, v78 + v77);
  v80 = (v78 + ((v77 + 47) & 0xFFFFFFFFFFFFFFF8));
  v81 = v76[3];
  v80[2] = v76[2];
  v80[3] = v81;
  v80[4] = v76[4];
  v82 = v76[1];
  *v80 = *v76;
  v80[1] = v82;
  v83 = sub_1E65E3E08();
  (*(*(v83 - 8) + 56))(v167, 1, 1, v83);
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  v84 = v164;
  sub_1E65D76E8();
  (*(v134 + 104))(v156, *MEMORY[0x1E699D720], v135);
  v85 = v151;
  v86 = v158;
  sub_1E5E1DC3C(v63, v151, v158);
  v157 = swift_allocObject();
  sub_1E5E1E938(v85, v157 + v79, v71);
  sub_1E5E1DC3C(v63, v85, v86);
  v135 = swift_allocObject();
  v87 = v79;
  v88 = v135 + v79;
  v89 = v71;
  sub_1E5E1E938(v85, v88, v71);
  sub_1E5E1DC3C(v63, v85, v86);
  v134 = swift_allocObject();
  v90 = v87;
  sub_1E5E1E938(v85, v134 + v87, v71);
  sub_1E5E1DC3C(v63, v85, v86);
  sub_1E5DF650C(v163, &v168);
  v91 = v154;
  v92 = *(v154 + 16);
  v131 = (v154 + 16);
  v133 = v92;
  v93 = v165;
  v92(v165, v84, v166);
  v94 = v148;
  v95 = (v148 + 87) & 0xFFFFFFFFFFFFFFF8;
  v130 = v95 + 8;
  v125 = v95;
  v96 = (v95 + 8 + *(v91 + 80)) & ~*(v91 + 80);
  v97 = swift_allocObject();
  sub_1E5E1E938(v85, v97 + v90, v71);
  sub_1E5DF599C(&v168, v152 + v97);
  v98 = (v97 + v94);
  *v98 = v159;
  v129 = &unk_1E65EB918;
  v98[1] = MEMORY[0x1E69AB380];
  v98[2] = &unk_1E65EB918;
  v128 = &unk_1E65FA770;
  v98[3] = v162;
  v98[4] = &unk_1E65FA770;
  v127 = &unk_1E65EB920;
  v98[5] = v161;
  v98[6] = &unk_1E65EB920;
  v126 = &unk_1E65FA780;
  v98[7] = v160;
  v98[8] = &unk_1E65FA780;
  v99 = v132;
  v98[9] = v132;
  v100 = v97;
  v136 = v97;
  v101 = v153;
  *(v100 + v95) = v153;
  v102 = v100 + v96;
  v103 = v166;
  (*(v91 + 32))(v102, v93, v166);
  v104 = v147;
  v105 = v158;
  sub_1E5E1DC3C(v147, v85, v158);
  sub_1E5DF650C(v163, &v168);
  v106 = swift_allocObject();
  v107 = v150;
  sub_1E5E1E938(v85, v106 + v150, v89);
  sub_1E5DF599C(&v168, v152 + v106);
  v108 = (v106 + v148);
  v163 = v106;
  *v108 = v159;
  v109 = v129;
  v108[1] = MEMORY[0x1E69AB380];
  v108[2] = v109;
  v110 = v128;
  v108[3] = v162;
  v108[4] = v110;
  v111 = v127;
  v108[5] = v161;
  v108[6] = v111;
  v112 = v126;
  v108[7] = v160;
  v108[8] = v112;
  v108[9] = v99;
  *(v106 + v125) = v101;
  sub_1E5E1DC3C(v104, v85, v105);
  v158 = swift_allocObject();
  sub_1E5E1E938(v85, v158 + v107, v89);
  sub_1E5DFD1CC(v167, v155, &qword_1ED074410, &qword_1E65F0B78);
  (v133)(v165, v164, v103);
  v152 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();

  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v161 = type metadata accessor for ArtworkDescriptor();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v150 = type metadata accessor for ContextMenu(0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v147 = type metadata accessor for ItemContext();
  v146 = type metadata accessor for ItemMetrics();
  v145 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v132 = type metadata accessor for SectionMetrics();
  v131 = type metadata accessor for ViewDescriptor();
  v130 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v129 = sub_1E60731B0();
  v128 = sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v127 = sub_1E5FEB2FC();
  v126 = sub_1E60C08DC();
  v125 = sub_1E60C15C0();
  v124[1] = sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v114 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v115 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v168 = v114;
  *(&v168 + 1) = v115;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v168 = v113;
  *(&v168 + 1) = OpaqueTypeConformance2;
  v124[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v117 = v138;
  sub_1E65DC198();
  (*(v154 + 8))(v164, v166);
  sub_1E5DFE50C(v167, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v118 = v139;
  v119 = v142;
  sub_1E5FEE4C8(v117);
  v120 = *(v143 + 8);
  v120(v117, v119);
  v121 = v140;
  sub_1E5FEE4C8(v118);
  v120(v118, v119);
  v122 = v141;
  sub_1E5FEE4C8(v121);
  v120(v121, v119);
  sub_1E5FEE4C8(v122);
  return (v120)(v122, v119);
}

uint64_t sub_1E63E83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_1E65E6058();
  v4[5] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5C58, v8, v7);
}

uint64_t sub_1E63E84CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E8610, 0, 0);
}

uint64_t sub_1E63E8610()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD88];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer() + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E63E888C(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E63E8A30(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E0C78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E0C48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E63829A8(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E63E8C50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63DFE70(v0 + 16);
}

uint64_t sub_1E63E8CE4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DFFB8(a1, a2, v2 + v7);
}

uint64_t sub_1E63E8E74(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E06EC(a1, v1 + v5);
}

uint64_t sub_1E63E8FC4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63E0A88(a1, a2, v2 + v7);
}

uint64_t sub_1E63E90C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_1E63E9188(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65E0B48() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E63E19F8(a1, v1 + v5, v1 + v8);
}

uint64_t sub_1E63E92BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E63E2DDC(a1, v1 + v5);
}

uint64_t sub_1E63E939C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65E0B48() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63E61E0((v0 + v15), *(v0 + v2), *(v0 + v2 + 8), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v10), *(v0 + v10 + 8), v0 + v12, *(v0 + v13), *(v0 + v13 + 8));
}

uint64_t sub_1E63E9560@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65E0B48() - 8);
  v7 = (*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  return sub_1E63E6E3C(v8, v1 + v4, v1 + v7, v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63E9670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63E83F8(a1, v4, v5, v6);
}

uint64_t sub_1E63E9724(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E84CC(a1, v1 + v5);
}

uint64_t sub_1E63E9800(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E63E888C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E63E98B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63E6790(v0);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = *(sub_1E65E0B48() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_11;
    }

LABEL_10:
    v6 = *(v0 + v2 + 8);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1E65E0FD8();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

LABEL_11:
  v7 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E63E9AB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1E65E0B48() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1E63E6864(a1, v3 + v8, *v9, v9[1], a2, a3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(sub_1E65E0B48() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_11;
    }

LABEL_10:
    v6 = *(v0 + v2 + 8);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1E65E0FD8();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1E63E9D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63E9DAC(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E1420(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E63E9E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1E63E9F24(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1E65E5D88() != 6)
  {
    goto LABEL_25;
  }

  v4 = sub_1E65E5DA8();
  v5 = sub_1E65E5DA8();
  v9 = sub_1E65E5E68();
  if (v5 >> 14 < v4 >> 14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = sub_1E65E5E68();
  v34 = v16;
  v35 = v13;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 >> 14 > 4 * v17)
  {
    goto LABEL_22;
  }

  v18 = v14;
  v19 = v15;
  v20 = sub_1E65E5E68();
  v32 = v22;
  v33 = v21;
  v24 = v23;

  if (!((v9 ^ v10) >> 14))
  {
LABEL_23:

LABEL_24:

LABEL_25:

    return 0;
  }

  v25 = sub_1E63EABD4(v9, v10, v11, v12, 16);
  if ((v25 & 0x10000000000) != 0)
  {
    v25 = sub_1E63EA1D8(v9, v10, v11, v12, 16);
  }

  v26 = v25;

  if ((v26 & 0x100000000) != 0 || !((v35 ^ v18) >> 14))
  {
    goto LABEL_24;
  }

  v27 = sub_1E63EABD4(v35, v18, v34, v19, 16);
  if ((v27 & 0x10000000000) != 0)
  {
    v27 = sub_1E63EA1D8(v35, v18, v34, v19, 16);
  }

  v28 = v27;

  if ((v28 & 0x100000000) != 0 || !((v20 ^ v33) >> 14))
  {
    goto LABEL_25;
  }

  v29 = sub_1E63EABD4(v20, v33, v32, v24, 16);
  if ((v29 & 0x10000000000) != 0)
  {
    v29 = sub_1E63EA1D8(v20, v33, v32, v24, 16);
  }

  v30 = v29;

  if ((v30 & 0x100000000) == 0)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v26 / 255.0 green:v28 / 255.0 blue:v30 / 255.0 alpha:1.0];
  }

  return 0;
}

unsigned __int8 *sub_1E63EA1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1E63EAC9C();

  result = sub_1E65E5E58();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1E63EA760();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E65E6908();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}