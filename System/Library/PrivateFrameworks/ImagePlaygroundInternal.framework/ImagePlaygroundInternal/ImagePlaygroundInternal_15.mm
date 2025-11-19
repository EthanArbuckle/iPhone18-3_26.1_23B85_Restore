uint64_t sub_1D2428680@<X0>(uint64_t *a1@<X8>)
{

  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1D2428748(uint64_t a1)
{
  v1[44] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448);
  v1[45] = swift_task_alloc();
  v2 = sub_1D2872908();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  v1[50] = swift_task_alloc();
  v3 = sub_1D2873CB8();
  v1[51] = v3;
  v1[52] = *(v3 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v4 = sub_1D2873AA8();
  v1[59] = v4;
  v1[60] = *(v4 - 8);
  v1[61] = swift_task_alloc();
  v5 = type metadata accessor for PlaygroundImage();
  v1[62] = v5;
  v1[63] = *(v5 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v6 = sub_1D2872438();
  v1[67] = v6;
  v1[68] = *(v6 - 8);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v7 = sub_1D2871538();
  v1[74] = v7;
  v1[75] = *(v7 - 8);
  v1[76] = swift_task_alloc();
  v8 = sub_1D28716B8();
  v1[77] = v8;
  v9 = *(v8 - 8);
  v1[78] = v9;
  v1[79] = *(v9 + 64);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  sub_1D28710C8();
  v1[104] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2428D28, 0, 0);
}

uint64_t sub_1D2428D28()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 544);
  v39 = *(v0 + 584);
  v40 = *(v0 + 536);
  v42 = *(v0 + 352);
  sub_1D2871108();
  swift_allocObject();
  *(v0 + 840) = sub_1D28710F8();
  sub_1D28710B8();
  sub_1D28710D8();
  *(v0 + 328) = sub_1D25D6E38(MEMORY[0x1E69E7CC0]);
  v5 = NSTemporaryDirectory();
  sub_1D28780A8();

  sub_1D2871578();

  *(v0 + 216) = 0x6A2E657069636572;
  *(v0 + 224) = 0xEB000000006E6F73;
  *(v0 + 1168) = *MEMORY[0x1E6968F70];
  v6 = *(v2 + 104);
  *(v0 + 848) = v6;
  *(v0 + 856) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  *(v0 + 864) = sub_1D22BD06C();
  sub_1D28716A8();
  v7 = *(v2 + 8);
  *(v0 + 872) = v7;
  *(v0 + 880) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = *(v4 + 56);
  *(v0 + 888) = v8;
  *(v0 + 896) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v39, 1, 1, v40);
  v9 = *(v42 + 24);
  *(v0 + 904) = v9;
  if (v9)
  {
    type metadata accessor for GenerationRecipeFactory();
    sub_1D2870F78();
    v10 = swift_task_alloc();
    *(v0 + 912) = v10;
    *v10 = v0;
    v10[1] = sub_1D24295B0;
    v11 = *(v0 + 576);

    return sub_1D2462694(v11, v9);
  }

  else
  {
    v13 = *(v0 + 568);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    sub_1D22BD1D0(*(v0 + 584), v13, &unk_1EC6DDE30);
    if ((*(v14 + 48))(v13, 1, v15) == 1)
    {
      sub_1D22BD238(*(v0 + 568), &unk_1EC6DDE30);
      v19 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*(*(v0 + 544) + 32))(*(v0 + 560), *(v0 + 568), *(v0 + 536));
      sub_1D242F8E0(&qword_1EC6DA838, MEMORY[0x1E696E4A0]);
      v16 = sub_1D28710E8();
      v18 = v17;
      sub_1D28716F8();
      (*(*(v0 + 624) + 16))(*(v0 + 808), *(v0 + 816), *(v0 + 616));
      v31 = sub_1D27CCF14(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v19 = v31;
      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        v19 = sub_1D27CCF14(v32 > 1, v33 + 1, 1, v31);
      }

      v41 = *(v0 + 808);
      v34 = *(v0 + 624);
      v35 = *(v0 + 616);
      v36 = *(v0 + 560);
      v37 = *(v0 + 544);
      v38 = *(v0 + 536);
      sub_1D22D6D60(v16, v18);
      (*(v37 + 8))(v36, v38);
      *(v19 + 16) = v33 + 1;
      (*(v34 + 32))(v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v41, v35);
    }

    *(v0 + 928) = v19;
    *(v0 + 920) = 0;
    v20 = *(v0 + 352);
    v21 = v20[8];
    if (v21)
    {
      v22 = v20[12];
      if (v22)
      {
        v23 = v20[7];
        v24 = v20[11];
        sub_1D2870F68();
        v25 = *(v0 + 328);
        sub_1D2870F68();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E7BD8(v23, v21, 0x74706D6F7270, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
        *(v0 + 328) = v25;
        sub_1D25CE640(v24, v22, 0xD000000000000014, 0x80000001D28B5A40);
        v20 = *(v0 + 352);
      }
    }

    v27 = v20[10];
    if (v27)
    {
      v28 = v20[9];
      sub_1D2870F68();
      sub_1D25CE640(v28, v27, 0xD000000000000010, 0x80000001D28B5A20);
    }

    *(v0 + 936) = sub_1D2878568();
    *(v0 + 944) = sub_1D2878558();
    v30 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D2429D68, v30, v29);
  }
}

uint64_t sub_1D24295B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D24296D8, 0, 0);
}

uint64_t sub_1D24296D8()
{
  v1 = v0[111];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[67];

  sub_1D22BD238(v2, &unk_1EC6DDE30);
  v1(v3, 0, 1, v4);
  sub_1D22EC9BC(v3, v2, &unk_1EC6DDE30);
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];
  sub_1D22BD1D0(v0[73], v5, &unk_1EC6DDE30);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    sub_1D22BD238(v0[71], &unk_1EC6DDE30);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v0[68] + 32))(v0[70], v0[71], v0[67]);
    sub_1D242F8E0(&qword_1EC6DA838, MEMORY[0x1E696E4A0]);
    v8 = sub_1D28710E8();
    v10 = v9;
    sub_1D28716F8();
    (*(v0[78] + 16))(v0[101], v0[102], v0[77]);
    v23 = sub_1D27CCF14(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v23;
    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1D27CCF14(v24 > 1, v25 + 1, 1, v23);
    }

    v32 = v0[101];
    v26 = v0[78];
    v27 = v0[77];
    v28 = v0[70];
    v29 = v0[68];
    v30 = v0[67];
    sub_1D22D6D60(v8, v10);
    (*(v29 + 8))(v28, v30);
    *(v11 + 16) = v25 + 1;
    (*(v26 + 32))(v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v32, v27);
  }

  v0[116] = v11;
  v0[115] = 0;
  v12 = v0[44];
  v13 = v12[8];
  if (v13)
  {
    v14 = v12[12];
    if (v14)
    {
      v15 = v12[7];
      v16 = v12[11];
      sub_1D2870F68();
      v17 = v0[41];
      sub_1D2870F68();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E7BD8(v15, v13, 0x74706D6F7270, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v0[41] = v17;
      sub_1D25CE640(v16, v14, 0xD000000000000014, 0x80000001D28B5A40);
      v12 = v0[44];
    }
  }

  v19 = v12[10];
  if (v19)
  {
    v20 = v12[9];
    sub_1D2870F68();
    sub_1D25CE640(v20, v19, 0xD000000000000010, 0x80000001D28B5A20);
  }

  v0[117] = sub_1D2878568();
  v0[118] = sub_1D2878558();
  v22 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2429D68, v22, v21);
}

uint64_t sub_1D2429D68()
{
  v1 = v0[113];

  if (v1)
  {
    v2 = v0[113];
    v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    sub_1D22BD1D0(v2 + v3, (v0 + 8), &qword_1EC6D9A58);
    v4 = v0[11];
    if (v4)
    {
      v5 = v0[12];
      __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
      (*(*(v5 + 8) + 40))(v4);
      __swift_destroy_boxed_opaque_existential_0((v0 + 8));
      goto LABEL_6;
    }

    sub_1D22BD238((v0 + 8), &qword_1EC6D9A58);
  }

  (*(v0[63] + 56))(v0[66], 1, 1, v0[62]);
LABEL_6:

  return MEMORY[0x1EEE6DFA0](sub_1D2429ED0, 0, 0);
}

uint64_t sub_1D2429ED0()
{
  v164 = v0;
  v163[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  sub_1D22BD1D0(*(v0 + 528), v1, &unk_1EC6DE5A0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(*(v0 + 520), &unk_1EC6DE5A0);
    v4 = *(v0 + 928);
    v5 = *(v0 + 920);
  }

  else
  {
    v160 = *(v0 + 920);
    v152 = *(v0 + 872);
    v6 = *(v0 + 848);
    v7 = *(v0 + 1168);
    v8 = *(v0 + 800);
    v9 = *(v0 + 608);
    v10 = *(v0 + 592);
    v11 = *(v0 + 488);
    sub_1D23EEBD4(*(v0 + 520), *(v0 + 512));
    *(v0 + 312) = 0x6D496E6F73726570;
    *(v0 + 320) = 0xEF67706A2E656761;
    v6(v9, v7, v10);
    sub_1D28716A8();
    v152(v9, v10);
    sub_1D2873A38();
    v12 = v160;
    sub_1D262ECCC(v8, v11);
    if (v160)
    {
      v13 = *(v0 + 800);
      v14 = *(v0 + 784);
      v15 = *(v0 + 624);
      v16 = *(v0 + 616);
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      sub_1D28726D8();
      (*(v15 + 16))(v14, v13, v16);
      v17 = v160;
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 800);
      v22 = *(v0 + 784);
      v23 = *(v0 + 624);
      v24 = *(v0 + 616);
      v157 = *(v0 + 464);
      v161 = *(v0 + 512);
      v25 = *(v0 + 416);
      v153 = *(v0 + 408);
      if (v20)
      {
        v143 = v19;
        v26 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v163[0] = v146;
        *v26 = 136315394;
        sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
        v138 = v18;
        v27 = v24;
        v149 = v21;
        v28 = sub_1D28795C8();
        v30 = v29;
        v31 = *(v23 + 8);
        v31(v22, v27);
        v32 = sub_1D23D7C84(v28, v30, v163);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2112;
        v33 = v12;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v34;
        *v141 = v34;
        _os_log_impl(&dword_1D226E000, v138, v143, "Could not write %s: %@", v26, 0x16u);
        sub_1D22BD238(v141, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v141, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x1D38A3520](v146, -1, -1);
        MEMORY[0x1D38A3520](v26, -1, -1);

        (*(v25 + 8))(v157, v153);
        v31(v149, v27);
      }

      else
      {

        v46 = *(v23 + 8);
        v46(v22, v24);
        (*(v25 + 8))(v157, v153);
        v46(v21, v24);
      }

      sub_1D242F928(v161, type metadata accessor for PlaygroundImage);
      v5 = 0;
      v4 = *(v0 + 928);
    }

    else
    {
      v35 = *(v0 + 800);
      v36 = *(v0 + 792);
      v37 = *(v0 + 624);
      v38 = *(v0 + 616);
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      (*(v37 + 16))(v36, v35, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 928);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1D27CCF14(0, v4[2] + 1, 1, *(v0 + 928));
      }

      v41 = v4[2];
      v40 = v4[3];
      if (v41 >= v40 >> 1)
      {
        v4 = sub_1D27CCF14(v40 > 1, v41 + 1, 1, v4);
      }

      v42 = *(v0 + 792);
      v43 = *(v0 + 624);
      v44 = *(v0 + 616);
      v45 = *(v0 + 512);
      (*(v43 + 8))(*(v0 + 800), v44);
      sub_1D242F928(v45, type metadata accessor for PlaygroundImage);
      v4[2] = v41 + 1;
      (*(v43 + 32))(v4 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41, v42, v44);
      v5 = 0;
    }
  }

  *(v0 + 952) = v4;
  v47 = *(v0 + 352);
  v48 = *(v47 + 32);
  *(v0 + 960) = v48;
  v49 = *(v47 + 40);
  *(v0 + 968) = v49;
  v50 = *(v47 + 48);
  *(v0 + 1176) = v50;
  if (v50 == 255)
  {
    goto LABEL_31;
  }

  if (v50)
  {
    if (v49 >> 60 != 15)
    {
      v162 = v4;
      v154 = *(v0 + 872);
      v58 = *(v0 + 848);
      v59 = *(v0 + 1168);
      v60 = *(v0 + 608);
      v61 = *(v0 + 592);
      *(v0 + 280) = 0x706A2E6567616D69;
      *(v0 + 288) = 0xE900000000000067;
      v58(v60, v59, v61);
      sub_1D2415B1C(v48, v49, 1);
      sub_1D2415B1C(v48, v49, 1);
      sub_1D28716A8();
      v154(v60, v61);
      sub_1D28716F8();
      v62 = *(v0 + 744);
      v63 = *(v0 + 624);
      v64 = *(v0 + 616);
      if (v5)
      {
        v65 = *(v0 + 656);
        sub_1D28726D8();
        (*(v63 + 16))(v65, v62, v64);
        v66 = v5;
        v67 = sub_1D2873CA8();
        v68 = sub_1D2878A18();

        v147 = v68;
        v69 = os_log_type_enabled(v67, v68);
        v70 = *(v0 + 744);
        v71 = *(v0 + 656);
        v72 = *(v0 + 624);
        v73 = *(v0 + 616);
        v155 = *(v0 + 440);
        v158 = *(v0 + 416);
        v150 = *(v0 + 408);
        if (v69)
        {
          v144 = *(v0 + 744);
          v74 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v163[0] = v137;
          *v74 = 136315394;
          sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
          v135 = v67;
          v75 = sub_1D28795C8();
          v76 = v73;
          v139 = v73;
          v78 = v77;
          v79 = *(v72 + 8);
          v79(v71, v76);
          v80 = sub_1D23D7C84(v75, v78, v163);

          *(v74 + 4) = v80;
          *(v74 + 12) = 2112;
          v81 = v5;
          v82 = _swift_stdlib_bridgeErrorToNSError();
          *(v74 + 14) = v82;
          *v136 = v82;
          _os_log_impl(&dword_1D226E000, v135, v147, "Could not write %s: %@", v74, 0x16u);
          sub_1D22BD238(v136, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v136, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v137);
          MEMORY[0x1D38A3520](v137, -1, -1);
          MEMORY[0x1D38A3520](v74, -1, -1);
          sub_1D2415B40(v48, v49, v50);

          sub_1D2415B40(v48, v49, v50);
          (*(v158 + 8))(v155, v150);
          v79(v144, v139);
        }

        else
        {
          sub_1D2415B40(v48, v49, v50);

          sub_1D2415B40(v48, v49, v50);
          v90 = *(v72 + 8);
          v90(v71, v73);
          (*(v158 + 8))(v155, v150);
          v90(v70, v73);
        }

        v5 = 0;
        v4 = v162;
      }

      else
      {
        (*(v63 + 16))(*(v0 + 736), *(v0 + 744), *(v0 + 616));
        v83 = v162;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1D27CCF14(0, v162[2] + 1, 1, v162);
        }

        v85 = v83[2];
        v84 = v83[3];
        if (v85 >= v84 >> 1)
        {
          v83 = sub_1D27CCF14(v84 > 1, v85 + 1, 1, v83);
        }

        v86 = *(v0 + 744);
        v87 = *(v0 + 736);
        v88 = *(v0 + 624);
        v89 = *(v0 + 616);
        sub_1D2415B40(v48, v49, v50);
        sub_1D2415B40(v48, v49, v50);
        (*(v88 + 8))(v86, v89);
        v83[2] = v85 + 1;
        (*(v88 + 32))(v83 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v85, v87, v89);
        v4 = v83;
        v5 = 0;
      }

      goto LABEL_31;
    }

    v51 = v48;
  }

  else
  {
    if (v48)
    {
      sub_1D2415B1C(v48, v49, 0);
      sub_1D2415B1C(v48, v49, 0);
      *(v0 + 976) = sub_1D2878558();
      v52 = sub_1D28784F8();
      *(v0 + 984) = v52;
      *(v0 + 992) = v53;
      v54 = v52;
      v55 = v53;
      v56 = sub_1D242AEF8;
      v57 = v54;
      goto LABEL_41;
    }

    v51 = 0;
  }

  sub_1D2415B40(v51, v49, v50);
LABEL_31:
  v91 = *(v0 + 328);
  if (*(v91 + 16))
  {
    v92 = *(v0 + 872);
    v93 = *(v0 + 848);
    v94 = *(v0 + 1168);
    v95 = *(v0 + 608);
    v96 = *(v0 + 592);
    strcpy((v0 + 232), "metadata.json");
    *(v0 + 246) = -4864;
    v93(v95, v94, v96);
    sub_1D28716A8();
    v92(v95, v96);
    *(v0 + 336) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    sub_1D242F7B4();
    v97 = sub_1D28710E8();
    if (v5)
    {

      v101 = *(v0 + 728);
      v102 = *(v0 + 648);
      v103 = *(v0 + 624);
      v104 = *(v0 + 616);
      sub_1D28726D8();
      (*(v103 + 16))(v102, v101, v104);
      v105 = v5;
      v106 = sub_1D2873CA8();
      v107 = sub_1D2878A18();

      v108 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 728);
      v110 = *(v0 + 648);
      v111 = *(v0 + 624);
      v112 = *(v0 + 616);
      v113 = *(v0 + 416);
      v156 = *(v0 + 408);
      v159 = *(v0 + 432);
      if (v108)
      {
        v142 = v107;
        v114 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v163[0] = v145;
        *v114 = 136315394;
        sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
        v115 = sub_1D28795C8();
        v116 = v112;
        v148 = v112;
        v151 = v109;
        v117 = v115;
        v119 = v118;
        v120 = *(v111 + 8);
        v120(v110, v116);
        v121 = sub_1D23D7C84(v117, v119, v163);

        *(v114 + 4) = v121;
        *(v114 + 12) = 2112;
        v122 = v5;
        v123 = _swift_stdlib_bridgeErrorToNSError();
        *(v114 + 14) = v123;
        *v140 = v123;
        _os_log_impl(&dword_1D226E000, v106, v142, "Could not write %s: %@", v114, 0x16u);
        sub_1D22BD238(v140, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v140, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x1D38A3520](v145, -1, -1);
        MEMORY[0x1D38A3520](v114, -1, -1);

        (*(v113 + 8))(v159, v156);
        v120(v151, v148);
      }

      else
      {

        v124 = *(v111 + 8);
        v124(v110, v112);
        (*(v113 + 8))(v159, v156);
        v124(v109, v112);
      }

      v5 = 0;
    }

    else
    {
      v99 = v97;
      v100 = v98;

      sub_1D28716F8();
      (*(*(v0 + 624) + 16))(*(v0 + 720), *(v0 + 728), *(v0 + 616));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D27CCF14(0, v4[2] + 1, 1, v4);
      }

      v129 = v4[2];
      v128 = v4[3];
      if (v129 >= v128 >> 1)
      {
        v4 = sub_1D27CCF14(v128 > 1, v129 + 1, 1, v4);
      }

      v130 = *(v0 + 728);
      v131 = *(v0 + 720);
      v132 = *(v0 + 624);
      v133 = *(v0 + 616);
      sub_1D22D6D60(v99, v100);
      (*(v132 + 8))(v130, v133);
      v4[2] = v129 + 1;
      (*(v132 + 32))(v4 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v129, v131, v133);
      v5 = 0;
    }
  }

  else
  {
  }

  *(v0 + 1136) = v4;
  *(v0 + 1128) = v5;
  sub_1D2426200(*(v0 + 584), *(v0 + 392));
  *(v0 + 1144) = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *(v0 + 1152) = sub_1D2878558();
  v125 = sub_1D28784F8();
  v127 = v126;
  v56 = sub_1D242D35C;
  v57 = v125;
  v55 = v127;
LABEL_41:

  return MEMORY[0x1EEE6DFA0](v56, v57, v55);
}

uint64_t sub_1D242AEF8()
{
  v1 = v0;
  v2 = v0[120];
  v3 = sub_1D2878558();
  v1[125] = v3;
  v4 = swift_task_alloc();
  v1[126] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  v5 = swift_task_alloc();
  v1[127] = v5;
  *v5 = v1;
  v5[1] = sub_1D242B030;
  v6 = v1[77];
  v7 = v1[50];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v3, v8, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D23F564C, v4, v6);
}

uint64_t sub_1D242B030()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 992);
    v4 = *(v2 + 984);
    v5 = sub_1D242B6AC;
  }

  else
  {

    v3 = *(v2 + 992);
    v4 = *(v2 + 984);
    v5 = sub_1D242B1D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D242B1D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D242B268, 0, 0);
}

uint64_t sub_1D242B268()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 400);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6 = *(v3 + 32);
  *(v0 + 1024) = v6;
  *(v0 + 1032) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25 = v6;
  v6(v1, v5, v4);
  v7 = *(v3 + 16);
  *(v0 + 1040) = v7;
  *(v0 + 1048) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 952);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D27CCF14(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1D27CCF14(v10 > 1, v11 + 1, 1, v9);
  }

  *(v0 + 1056) = v9;
  v24 = *(v0 + 872);
  v12 = *(v0 + 848);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 768);
  v15 = *(v0 + 624);
  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  v18 = *(v0 + 592);
  *(v9 + 2) = v11 + 1;
  v19 = *(v15 + 80);
  *(v0 + 1172) = v19;
  v20 = *(v15 + 72);
  *(v0 + 1064) = v20;
  v25(&v9[((v19 + 32) & ~v19) + v20 * v11], v14, v16);
  *(v0 + 296) = 0x6A2E657069636572;
  *(v0 + 304) = 0xEB000000006E6F73;
  v12(v17, v13, v18);
  sub_1D28716A8();
  v24(v17, v18);
  *(v0 + 1072) = sub_1D2878558();
  v21 = sub_1D28784F8();
  *(v0 + 1080) = v21;
  *(v0 + 1088) = v22;

  return MEMORY[0x1EEE6DFA0](sub_1D242B510, v21, v22);
}

uint64_t sub_1D242B510()
{
  v1 = v0[120];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[137] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[120] + 16), *(v0[120] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[138] = v4;
    *v4 = v0;
    v4[1] = sub_1D242BD4C;
    v5 = v0[69];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[140] = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D242CAAC, 0, 0);
  }
}

uint64_t sub_1D242B6AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D242B740, 0, 0);
}

uint64_t sub_1D242B740()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 400);
  v6 = *(v0 + 1176);
  sub_1D2415B40(v2, v1, v6);
  sub_1D2415B40(v2, v1, v6);
  (*(v3 + 56))(v5, 1, 1, v4);
  sub_1D22BD238(v5, &qword_1EC6DA1B8);
  v7 = *(v0 + 952);
  v8 = *(v0 + 328);
  if (*(v8 + 16))
  {
    v27 = *(v0 + 952);
    *(v0 + 232) = 0x617461646174656DLL;
    v9 = *(v0 + 872);
    v10 = *(v0 + 848);
    v11 = *(v0 + 1168);
    v12 = *(v0 + 608);
    v13 = *(v0 + 592);
    *(v0 + 240) = 0xED00006E6F736A2ELL;
    v10(v12, v11, v13);
    sub_1D28716A8();
    v9(v12, v13);
    *(v0 + 336) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    sub_1D242F7B4();
    v14 = sub_1D28710E8();
    v16 = v15;

    sub_1D28716F8();
    (*(*(v0 + 624) + 16))(*(v0 + 720), *(v0 + 728), *(v0 + 616));
    v7 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1D27CCF14(0, v27[2] + 1, 1, v27);
    }

    v19 = v7[2];
    v18 = v7[3];
    if (v19 >= v18 >> 1)
    {
      v7 = sub_1D27CCF14(v18 > 1, v19 + 1, 1, v7);
    }

    v20 = *(v0 + 728);
    v21 = *(v0 + 720);
    v22 = *(v0 + 624);
    v23 = *(v0 + 616);
    sub_1D22D6D60(v14, v16);
    (*(v22 + 8))(v20, v23);
    v7[2] = v19 + 1;
    (*(v22 + 32))(v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v21, v23);
  }

  else
  {
  }

  *(v0 + 1136) = v7;
  *(v0 + 1128) = 0;
  sub_1D2426200(*(v0 + 584), *(v0 + 392));
  *(v0 + 1144) = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *(v0 + 1152) = sub_1D2878558();
  v25 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D242D35C, v25, v24);
}

uint64_t sub_1D242BD4C()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  v3 = *(v2 + 1088);
  v4 = *(v2 + 1080);
  if (v0)
  {
    v5 = sub_1D242CA08;
  }

  else
  {
    v5 = sub_1D242BEB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D242BEB4()
{
  v1 = *(v0 + 1096);

  return MEMORY[0x1EEE6DFA0](sub_1D242BF50, 0, 0);
}

uint64_t sub_1D242BF50()
{
  v84 = v0;
  v83[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1112);
  sub_1D242F8E0(&qword_1EC6DA838, MEMORY[0x1E696E4A0]);
  v2 = sub_1D28710E8();
  if (v1)
  {
    (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
    v6 = *(v0 + 1040);
    v7 = *(v0 + 760);
    v8 = *(v0 + 664);
    v9 = *(v0 + 616);
    sub_1D28726D8();
    v6(v8, v7, v9);
    v10 = v1;
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();

    v13 = os_log_type_enabled(v11, v12);
    v78 = *(v0 + 1176);
    v14 = *(v0 + 960);
    v75 = *(v0 + 968);
    v76 = *(v0 + 776);
    v73 = *(v0 + 760);
    v15 = *(v0 + 664);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v0 + 448);
    v19 = *(v0 + 416);
    v80 = *(v0 + 408);
    if (v13)
    {
      v71 = *(v0 + 448);
      v20 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v20 = 136315394;
      sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
      v66 = v14;
      v21 = sub_1D28795C8();
      v62 = v12;
      v23 = v22;
      v24 = *(v16 + 8);
      v24(v15, v17);
      v25 = sub_1D23D7C84(v21, v23, v83);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v64 = v27;
      _os_log_impl(&dword_1D226E000, v11, v62, "Could not write %s: %@", v20, 0x16u);
      sub_1D22BD238(v64, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1D38A3520](v68, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      sub_1D2415B40(v66, v75, v78);
      sub_1D2415B40(v66, v75, v78);

      (*(v19 + 8))(v71, v80);
      v24(v73, v17);
      v24(v76, v17);
    }

    else
    {

      sub_1D2415B40(v14, v75, v78);
      sub_1D2415B40(v14, v75, v78);

      v29 = *(v16 + 8);
      v29(v15, v17);
      (*(v19 + 8))(v18, v80);
      v29(v73, v17);
      v29(v76, v17);
    }

    v28 = *(v0 + 1056);
  }

  else
  {
    v4 = v2;
    v5 = v3;
    sub_1D28716F8();
    v30 = *(v0 + 1056);
    (*(v0 + 1040))(*(v0 + 752), *(v0 + 760), *(v0 + 616));
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    v77 = v32 + 1;
    v79 = v32;
    if (v32 >= v31 >> 1)
    {
      v81 = sub_1D27CCF14(v31 > 1, v32 + 1, 1, *(v0 + 1056));
    }

    else
    {
      v81 = *(v0 + 1056);
    }

    v72 = *(v0 + 1064);
    v74 = *(v0 + 1024);
    v33 = *(v0 + 968);
    v34 = *(v0 + 960);
    v69 = *(v0 + 776);
    v70 = *(v0 + 752);
    v35 = *(v0 + 624);
    v36 = *(v0 + 616);
    v63 = *(v0 + 552);
    v65 = *(v0 + 760);
    v37 = *(v0 + 544);
    v38 = *(v0 + 536);
    v67 = (*(v0 + 1172) + 32) & ~*(v0 + 1172);
    v39 = *(v0 + 1176);
    sub_1D22D6D60(v4, v5);
    sub_1D2415B40(v34, v33, v39);
    sub_1D2415B40(v34, v33, v39);
    (*(v37 + 8))(v63, v38);
    v40 = *(v35 + 8);
    v40(v65, v36);
    v40(v69, v36);
    v28 = v81;
    *(v81 + 16) = v77;
    v74(v81 + v67 + v72 * v79, v70, v36);
  }

  v41 = *(v0 + 328);
  if (*(v41 + 16))
  {
    v82 = v28;
    v42 = *(v0 + 872);
    v43 = *(v0 + 848);
    v44 = *(v0 + 1168);
    v45 = *(v0 + 608);
    v46 = *(v0 + 592);
    strcpy((v0 + 232), "metadata.json");
    *(v0 + 246) = -4864;
    v43(v45, v44, v46);
    sub_1D28716A8();
    v42(v45, v46);
    *(v0 + 336) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    sub_1D242F7B4();
    v47 = sub_1D28710E8();
    v49 = v48;

    sub_1D28716F8();
    (*(*(v0 + 624) + 16))(*(v0 + 720), *(v0 + 728), *(v0 + 616));
    v50 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_1D27CCF14(0, v82[2] + 1, 1, v82);
    }

    v53 = v50[2];
    v52 = v50[3];
    v54 = v50;
    if (v53 >= v52 >> 1)
    {
      v54 = sub_1D27CCF14(v52 > 1, v53 + 1, 1, v50);
    }

    v55 = *(v0 + 728);
    v56 = *(v0 + 720);
    v57 = *(v0 + 624);
    v58 = *(v0 + 616);
    sub_1D22D6D60(v47, v49);
    (*(v57 + 8))(v55, v58);
    *(v54 + 16) = v53 + 1;
    v28 = v54;
    (*(v57 + 32))(v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v53, v56, v58);
  }

  else
  {
  }

  *(v0 + 1136) = v28;
  *(v0 + 1128) = 0;
  sub_1D2426200(*(v0 + 584), *(v0 + 392));
  *(v0 + 1144) = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *(v0 + 1152) = sub_1D2878558();
  v60 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D242D35C, v60, v59);
}

uint64_t sub_1D242CA08()
{
  v1 = v0[137];

  v0[140] = v0[139];

  return MEMORY[0x1EEE6DFA0](sub_1D242CAAC, 0, 0);
}

uint64_t sub_1D242CAAC()
{
  v57 = v0;
  v56[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 760);
  v4 = *(v0 + 664);
  v5 = *(v0 + 616);
  sub_1D28726D8();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_1D2873CA8();
  v8 = sub_1D2878A18();

  v9 = os_log_type_enabled(v7, v8);
  v53 = *(v0 + 1176);
  v10 = *(v0 + 960);
  v51 = *(v0 + 968);
  v52 = *(v0 + 776);
  v50 = *(v0 + 760);
  v11 = *(v0 + 664);
  v12 = *(v0 + 624);
  v13 = *(v0 + 616);
  v14 = *(v0 + 448);
  v15 = *(v0 + 416);
  v54 = *(v0 + 408);
  if (v9)
  {
    v49 = *(v0 + 448);
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v56[0] = v48;
    *v16 = 136315394;
    sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
    v47 = v10;
    v17 = sub_1D28795C8();
    v45 = v8;
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = sub_1D23D7C84(v17, v19, v56);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v46 = v23;
    _os_log_impl(&dword_1D226E000, v7, v45, "Could not write %s: %@", v16, 0x16u);
    sub_1D22BD238(v46, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1D38A3520](v48, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    sub_1D2415B40(v47, v51, v53);
    sub_1D2415B40(v47, v51, v53);

    (*(v15 + 8))(v49, v54);
    v20(v50, v13);
    v20(v52, v13);
  }

  else
  {

    sub_1D2415B40(v10, v51, v53);
    sub_1D2415B40(v10, v51, v53);

    v24 = *(v12 + 8);
    v24(v11, v13);
    (*(v15 + 8))(v14, v54);
    v24(v50, v13);
    v24(v52, v13);
  }

  v25 = *(v0 + 1056);
  v26 = *(v0 + 328);
  if (*(v26 + 16))
  {
    v55 = *(v0 + 1056);
    v27 = *(v0 + 872);
    v28 = *(v0 + 848);
    v29 = *(v0 + 1168);
    v30 = *(v0 + 608);
    v31 = *(v0 + 592);
    strcpy((v0 + 232), "metadata.json");
    *(v0 + 246) = -4864;
    v28(v30, v29, v31);
    sub_1D28716A8();
    v27(v30, v31);
    *(v0 + 336) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    sub_1D242F7B4();
    v32 = sub_1D28710E8();
    v34 = v33;

    sub_1D28716F8();
    (*(*(v0 + 624) + 16))(*(v0 + 720), *(v0 + 728), *(v0 + 616));
    v25 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CCF14(0, v55[2] + 1, 1, v55);
    }

    v37 = v25[2];
    v36 = v25[3];
    if (v37 >= v36 >> 1)
    {
      v25 = sub_1D27CCF14(v36 > 1, v37 + 1, 1, v25);
    }

    v38 = *(v0 + 728);
    v39 = *(v0 + 720);
    v40 = *(v0 + 624);
    v41 = *(v0 + 616);
    sub_1D22D6D60(v32, v34);
    (*(v40 + 8))(v38, v41);
    v25[2] = v37 + 1;
    (*(v40 + 32))(v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37, v39, v41);
  }

  else
  {
  }

  *(v0 + 1136) = v25;
  *(v0 + 1128) = 0;
  sub_1D2426200(*(v0 + 584), *(v0 + 392));
  *(v0 + 1144) = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *(v0 + 1152) = sub_1D2878558();
  v43 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D242D35C, v43, v42);
}

uint64_t sub_1D242D35C()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 352);

  swift_beginAccess();
  if (*(v2 + v1 + 24))
  {
    sub_1D22D7044(*(v0 + 352) + *(v0 + 1144), v0 + 104);
    v3 = sub_1D242D444;
  }

  else
  {
    v3 = sub_1D242E47C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D242D444()
{
  v1 = v0;
  v2 = v0[16];
  v3 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v1[145] = v4;
  *v4 = v1;
  v4[1] = sub_1D242D5A4;
  v5 = v1[49];
  v6 = v1[45];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1D242D5A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D242D6CC, 0, 0);
}

uint64_t sub_1D242D6CC()
{
  v105 = v0;
  v104[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  __swift_destroy_boxed_opaque_existential_0(v0 + 104);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 360), &qword_1EC6DA448);
    v101 = *(v0 + 1136);
  }

  else
  {
    v94 = *(v0 + 872);
    v4 = *(v0 + 848);
    v5 = *(v0 + 1168);
    v102 = *(v0 + 1128);
    v6 = *(v0 + 608);
    v7 = *(v0 + 592);
    (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
    *(v0 + 264) = 0xD000000000000014;
    *(v0 + 272) = 0x80000001D28B6740;
    v4(v6, v5, v7);
    sub_1D28716A8();
    v94(v6, v7);
    sub_1D242F8E0(&qword_1EC6DB540, MEMORY[0x1E69DFC48]);
    v8 = v102;
    v9 = sub_1D28710E8();
    if (v102)
    {
      v13 = *(v0 + 712);
      v14 = *(v0 + 640);
      v15 = *(v0 + 624);
      v16 = *(v0 + 616);
      sub_1D28726D8();
      (*(v15 + 16))(v14, v13, v16);
      v17 = v102;
      v18 = sub_1D2873CA8();
      LOBYTE(v13) = sub_1D2878A18();

      v95 = v13;
      v19 = os_log_type_enabled(v18, v13);
      v20 = *(v0 + 712);
      v21 = *(v0 + 640);
      v22 = *(v0 + 624);
      v23 = *(v0 + 616);
      v24 = *(v0 + 416);
      v96 = *(v0 + 408);
      v99 = *(v0 + 424);
      v25 = *(v0 + 376);
      v103 = *(v0 + 384);
      v26 = *(v0 + 368);
      if (v19)
      {
        v92 = *(v0 + 712);
        v27 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v104[0] = v89;
        *v27 = 136315394;
        sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
        v90 = v25;
        v28 = v23;
        v91 = v26;
        v29 = sub_1D28795C8();
        v31 = v30;
        v32 = *(v22 + 8);
        v32(v21, v28);
        v33 = sub_1D23D7C84(v29, v31, v104);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2112;
        v34 = v8;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v35;
        *v87 = v35;
        _os_log_impl(&dword_1D226E000, v18, v95, "Could not write %s: %@", v27, 0x16u);
        sub_1D22BD238(v87, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v87, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x1D38A3520](v89, -1, -1);
        MEMORY[0x1D38A3520](v27, -1, -1);

        (*(v24 + 8))(v99, v96);
        v32(v92, v28);
        (*(v90 + 8))(v103, v91);
      }

      else
      {

        v36 = *(v22 + 8);
        v36(v21, v23);
        (*(v24 + 8))(v99, v96);
        v36(v20, v23);
        (*(v25 + 8))(v103, v26);
      }

      v101 = *(v0 + 1136);
    }

    else
    {
      v11 = v9;
      v12 = v10;
      sub_1D28716F8();
      (*(*(v0 + 624) + 16))(*(v0 + 704), *(v0 + 712), *(v0 + 616));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v0 + 1136);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v101 = sub_1D27CCF14(0, v101[2] + 1, 1, v101);
      }

      v79 = v101[2];
      v78 = v101[3];
      if (v79 >= v78 >> 1)
      {
        v101 = sub_1D27CCF14(v78 > 1, v79 + 1, 1, v101);
      }

      v80 = *(v0 + 712);
      v98 = *(v0 + 704);
      v81 = *(v0 + 624);
      v82 = *(v0 + 616);
      v83 = *(v0 + 376);
      v84 = *(v0 + 384);
      v85 = *(v0 + 368);
      sub_1D22D6D60(v11, v12);
      (*(v81 + 8))(v80, v82);
      (*(v83 + 8))(v84, v85);
      v101[2] = v79 + 1;
      (*(v81 + 32))(v101 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v79, v98, v82);
    }
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v37 = sub_1D2878A58();
  v38 = sub_1D2878068();
  v39 = [v37 BOOLForKey_];

  if (!v39)
  {
    v67 = *(v0 + 824);
    v68 = *(v0 + 816);
    v69 = *(v0 + 624);
    v70 = *(v0 + 616);
    v71 = *(v0 + 584);
    v72 = *(v0 + 528);
    v73 = *(v0 + 392);

    sub_1D22BD238(v73, &qword_1EC6D9A30);
    sub_1D22BD238(v72, &unk_1EC6DE5A0);
    sub_1D22BD238(v71, &unk_1EC6DDE30);
    v74 = *(v69 + 8);
    v74(v68, v70);
    v74(v67, v70);
    goto LABEL_20;
  }

  v40 = *(v0 + 872);
  v41 = *(v0 + 848);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 608);
  v44 = *(v0 + 592);
  strcpy((v0 + 248), "extralogs.zip");
  *(v0 + 262) = -4864;
  v41(v43, v42, v44);
  sub_1D28716A8();
  v40(v43, v44);
  v45 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (qword_1EC6D8C58 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 696);
  v47 = *(v0 + 688);
  v48 = *(v0 + 624);
  v49 = *(v0 + 616);
  __swift_project_value_buffer(v49, qword_1EC6DB520);
  v50 = sub_1D28715B8();
  v51 = *(v48 + 16);
  v51(v47, v46, v49);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v100 = *(v48 + 80);
  v53 = swift_allocObject();
  v93 = *(v48 + 32);
  v93(v53 + v52, v47, v49);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1D242F830;
  *(v54 + 24) = v53;
  *(v0 + 48) = sub_1D242F8A0;
  *(v0 + 56) = v54;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1D2426B58;
  *(v0 + 40) = &block_descriptor_10;
  v55 = _Block_copy((v0 + 16));
  sub_1D2870F78();

  *(v0 + 344) = 0;
  [v45 coordinateReadingItemAtURL:v50 options:8 error:v0 + 344 byAccessor:v55];
  _Block_release(v55);

  v56 = *(v0 + 344);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
    goto LABEL_29;
  }

  v51(*(v0 + 680), *(v0 + 696), *(v0 + 616));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    v101 = sub_1D27CCF14(0, v101[2] + 1, 1, v101);
  }

  v58 = v101[2];
  v57 = v101[3];
  v97 = v56;
  if (v58 >= v57 >> 1)
  {
    v101 = sub_1D27CCF14(v57 > 1, v58 + 1, 1, v101);
  }

  v59 = *(v0 + 816);
  v60 = *(v0 + 696);
  v86 = *(v0 + 824);
  v88 = *(v0 + 680);
  v61 = *(v0 + 624);
  v62 = *(v0 + 616);
  v63 = *(v0 + 584);
  v64 = *(v0 + 528);
  v65 = *(v0 + 392);

  v66 = *(v61 + 8);
  v66(v60, v62);
  sub_1D22BD238(v65, &qword_1EC6D9A30);
  sub_1D22BD238(v64, &unk_1EC6DE5A0);
  sub_1D22BD238(v63, &unk_1EC6DDE30);
  v66(v59, v62);
  v66(v86, v62);
  v101[2] = v58 + 1;
  v93(v101 + ((v100 + 32) & ~v100) + *(v61 + 72) * v58, v88, v62);

LABEL_20:

  v75 = *(v0 + 8);

  return v75(v101);
}

uint64_t sub_1D242E47C()
{
  (*(*(v0 + 376) + 56))(*(v0 + 360), 1, 1, *(v0 + 368));
  sub_1D22BD238(*(v0 + 360), &qword_1EC6DA448);
  v46 = *(v0 + 1136);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  v3 = [v1 BOOLForKey_];

  if (!v3)
  {
    v31 = *(v0 + 824);
    v32 = *(v0 + 816);
    v33 = *(v0 + 624);
    v34 = *(v0 + 616);
    v35 = *(v0 + 584);
    v36 = *(v0 + 528);
    v37 = *(v0 + 392);

    sub_1D22BD238(v37, &qword_1EC6D9A30);
    sub_1D22BD238(v36, &unk_1EC6DE5A0);
    sub_1D22BD238(v35, &unk_1EC6DDE30);
    v38 = *(v33 + 8);
    v38(v32, v34);
    v38(v31, v34);
    goto LABEL_12;
  }

  v4 = *(v0 + 872);
  v5 = *(v0 + 848);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 608);
  v8 = *(v0 + 592);
  strcpy((v0 + 248), "extralogs.zip");
  *(v0 + 262) = -4864;
  v5(v7, v6, v8);
  sub_1D28716A8();
  v4(v7, v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (qword_1EC6D8C58 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 624);
  v13 = *(v0 + 616);
  __swift_project_value_buffer(v13, qword_1EC6DB520);
  v14 = sub_1D28715B8();
  v15 = *(v12 + 16);
  v15(v11, v10, v13);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v45 = *(v12 + 80);
  v17 = swift_allocObject();
  v43 = *(v12 + 32);
  v43(v17 + v16, v11, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D242F830;
  *(v18 + 24) = v17;
  *(v0 + 48) = sub_1D242F8A0;
  *(v0 + 56) = v18;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1D2426B58;
  *(v0 + 40) = &block_descriptor_10;
  v19 = _Block_copy((v0 + 16));
  sub_1D2870F78();

  *(v0 + 344) = 0;
  [v9 coordinateReadingItemAtURL:v14 options:8 error:v0 + 344 byAccessor:v19];
  _Block_release(v19);

  v20 = *(v0 + 344);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15(*(v0 + 680), *(v0 + 696), *(v0 + 616));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v46 = sub_1D27CCF14(0, v46[2] + 1, 1, v46);
  }

  v22 = v46[2];
  v21 = v46[3];
  v44 = v20;
  if (v22 >= v21 >> 1)
  {
    v46 = sub_1D27CCF14(v21 > 1, v22 + 1, 1, v46);
  }

  v23 = *(v0 + 816);
  v24 = *(v0 + 696);
  v41 = *(v0 + 824);
  v42 = *(v0 + 680);
  v25 = *(v0 + 624);
  v26 = *(v0 + 616);
  v27 = *(v0 + 584);
  v28 = *(v0 + 528);
  v29 = *(v0 + 392);

  v30 = *(v25 + 8);
  v30(v24, v26);
  sub_1D22BD238(v29, &qword_1EC6D9A30);
  sub_1D22BD238(v28, &unk_1EC6DE5A0);
  sub_1D22BD238(v27, &unk_1EC6DDE30);
  v30(v23, v26);
  v30(v41, v26);
  v46[2] = v22 + 1;
  v43(v46 + ((v45 + 32) & ~v45) + *(v25 + 72) * v22, v42, v26);

LABEL_12:

  v39 = *(v0 + 8);

  return v39(v46);
}

uint64_t sub_1D242ECF0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1D2873CB8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for TapToRadarDraft();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D242EDE0, 0, 0);
}

uint64_t sub_1D242EDE0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  *v2 = 0x4449656C646E7542;
  *(v2 + 8) = 0xE800000000000000;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  strcpy((v2 + 72), "Classification");
  *(v2 + 87) = -18;
  *(v2 + 88) = 10;
  *(v2 + 96) = 0x6375646F72706552;
  *(v2 + 104) = 0xEF7974696C696269;
  *(v2 + 112) = 6;
  *(v2 + 120) = 0x656C746954;
  *(v2 + 128) = 0xE500000000000000;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0x7470697263736544;
  *(v2 + 160) = 0xEB000000006E6F69;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0x7364726F7779654BLL;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 192) = 0xE800000000000000;
  *(v2 + 200) = v4;
  v5 = (v2 + v1[11]);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB258) + 36);
  v7 = sub_1D2871798();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *v5 = 0x7349664F656D6954;
  *(v5 + 1) = 0xEB00000000657573;
  v8 = v1[12];
  *(v0 + 128) = v8;
  v9 = (v2 + v8);
  *v9 = 0x656D686361747441;
  v9[1] = 0xEB0000000073746ELL;
  v9[2] = v4;
  v10 = (v2 + v1[13]);
  *v10 = 0xD000000000000011;
  v10[1] = 0x80000001D28B6650;
  v10[2] = v4;
  v11 = (v2 + v1[14]);
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000001D28B6670;
  v11[2] = v4;
  v12 = v1[15];
  *(v0 + 132) = v12;
  v13 = (v2 + v12);
  strcpy(v13, "DeleteOnAttach");
  v13[15] = -18;
  v13[16] = 0;
  v14 = (v2 + v1[16]);
  *v14 = 0x4449656369766544;
  v14[1] = 0xE900000000000073;
  v14[2] = v4;
  v15 = v2 + v1[17];
  strcpy(v15, "DeviceClasses");
  *(v15 + 14) = -4864;
  *(v15 + 16) = v4;
  v16 = v2 + v1[18];
  strcpy(v16, "DeviceModels");
  *(v16 + 13) = 0;
  *(v16 + 14) = -5120;
  *(v16 + 16) = v4;
  v17 = (v2 + v1[19]);
  *v17 = 0xD000000000000016;
  v17[1] = 0x80000001D28B6690;
  v17[2] = 0;
  v18 = v2 + v1[20];
  *v18 = 0xD00000000000001ALL;
  *(v18 + 8) = 0x80000001D28B66B0;
  *(v18 + 16) = 1;
  v19 = v2 + v1[21];
  *v19 = 0x676169446F747541;
  *(v19 + 8) = 0xEF73636974736F6ELL;
  *(v19 + 16) = 0;
  v20 = (v2 + v1[22]);
  *v20 = 0xD00000000000001BLL;
  v20[1] = 0x80000001D28B66D0;
  v20[2] = v4;
  v21 = (v2 + v1[23]);
  *v21 = 0xD000000000000018;
  v21[1] = 0x80000001D28B66F0;
  v21[2] = 0;
  v21[3] = 0;
  v22 = (v2 + v1[24]);
  *v22 = 0xD000000000000012;
  v22[1] = 0x80000001D28B6710;
  v22[2] = 0;
  v22[3] = 0;
  v23 = *(v3 + 56);
  v24 = *(v3 + 64);
  v25 = *(v3 + 72);
  *(v2 + 32) = *(v3 + 40);
  *(v2 + 48) = v23;
  *(v2 + 56) = v24;
  *(v2 + 64) = v25;
  v26 = *(v3 + 88);
  if (v26)
  {
    v27 = *(v0 + 96);
    v33 = *(*(v0 + 48) + 80);
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](32, 0xE100000000000000);
    *(v2 + 136) = v33;
    *(v27 + 144) = v26;
  }

  else
  {
    sub_1D2870F68();
    sub_1D2870F68();
  }

  v28 = *(v0 + 48);
  v29 = *(v28 + 104);
  if (v29)
  {
    *(v2 + 168) = *(v28 + 96);
    *(v2 + 176) = v29;
  }

  sub_1D2870F68();
  v30 = swift_task_alloc();
  *(v0 + 104) = v30;
  *v30 = v0;
  v30[1] = sub_1D242F2AC;
  v31 = *(v0 + 56);

  return sub_1D2428748(v31);
}

uint64_t sub_1D242F2AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = v4 + *(*v1 + 132);
  v6 = v4 + *(*v1 + 128);
  v9 = *v1;

  *(v6 + 16) = a1;
  *(v5 + 16) = 1;
  v7 = swift_task_alloc();
  *(v3 + 112) = v7;
  *v7 = v9;
  v7[1] = sub_1D242F410;

  return sub_1D241F6E4();
}

uint64_t sub_1D242F410()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D242F5B0;
  }

  else
  {
    v2 = sub_1D242F524;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D242F524()
{
  sub_1D242F928(*(v0 + 96), type metadata accessor for TapToRadarDraft);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D242F5B0()
{
  v20 = v0;
  v1 = *(v0 + 120);
  sub_1D28726D8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 72);
    v18 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Unable to open Tap-to-Radar draft with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    (*(v14 + 8))(v13, v15);
  }

  sub_1D242F928(*(v0 + 96), type metadata accessor for TapToRadarDraft);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_1D242F7B4()
{
  result = qword_1EC6DB538;
  if (!qword_1EC6DB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB538);
  }

  return result;
}

id sub_1D242F830(uint64_t a1)
{
  v3 = *(sub_1D28716B8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D242664C(a1, v4);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D242F8E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D242F928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D242F988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2426E60(a1, v4, v5, v6, v7, v8);
}

void sub_1D242FA50(uint64_t a1)
{
  v20[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1D28716B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1EC6DB558);
  v7 = *(v4 + 16);
  v7(v6, a1, v3);
  v8 = sub_1D2426C3C(v6);
  if (!v1)
  {
    v9 = v8;
    v10 = [v8 fileDescriptor];
    v20[0] = 74245;
    v11 = ffsctl(v10, 0xC0084A44uLL, v20, 0);
    if (v11)
    {
      v12 = *MEMORY[0x1E696A798];
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA758);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D287F500;
      *(inited + 32) = sub_1D28780A8();
      *(inited + 40) = v15;
      *(inited + 72) = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
      v7(boxed_opaque_existential_1, a1, v3);
      v17 = v12;
      sub_1D25D7270(inited);
      swift_setDeallocating();
      sub_1D22BD238(inited + 32, &qword_1EC6DA760);
      v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v19 = sub_1D2877E78();

      [v18 initWithDomain:v17 code:v13 userInfo:v19];

      swift_willThrow();
    }

    sub_1D2426D94(v9);
  }
}

uint64_t sub_1D242FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a3;
  v4[34] = a4;
  v4[31] = a1;
  v4[32] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v5 = type metadata accessor for PlaygroundImage();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v6 = sub_1D2877E58();
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = sub_1D28712C8();
  v4[53] = swift_task_alloc();
  v7 = sub_1D2871318();
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v8 = sub_1D2871798();
  v4[58] = v8;
  v4[59] = *(v8 - 8);
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v9 = type metadata accessor for Prompt(0);
  v4[63] = v9;
  v4[64] = *(v9 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v10 = type metadata accessor for PromptElementConceptExtractor.Concept();
  v4[68] = v10;
  v4[69] = *(v10 - 8);
  v4[70] = swift_task_alloc();
  v11 = sub_1D2872008();
  v4[71] = v11;
  v4[72] = *(v11 - 8);
  v4[73] = swift_task_alloc();
  sub_1D2878568();
  v4[74] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v4[75] = v12;
  v4[76] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D2430190, v12, v13);
}

uint64_t sub_1D2430190()
{
  v1 = v0[73];
  (*(v0[72] + 16))(v1, v0[32], v0[71]);
  type metadata accessor for CreationContext();
  swift_allocObject();
  v0[77] = CreationContext.init(defaultStyle:)(v1);
  v2 = swift_task_alloc();
  v0[78] = v2;
  *v2 = v0;
  v2[1] = sub_1D24302A0;
  v3 = v0[31];

  return sub_1D26F5B30(v3);
}

uint64_t sub_1D24302A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  v5 = *(v3 + 608);
  v6 = *(v3 + 600);
  if (v1)
  {
    v7 = sub_1D24361D8;
  }

  else
  {
    v7 = sub_1D2430414;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D2430414()
{
  v1 = *(*(v0 + 632) + 16);
  *(v0 + 648) = v1;
  if (!v1)
  {
LABEL_27:

    v67 = *(v0 + 8);
    v68 = *(v0 + 616);

    return v67(v68);
  }

  v2 = 0;
  v3 = *(v0 + 552);
  v4 = MEMORY[0x1E69DB5F0];
  *(v0 + 656) = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  *(v0 + 664) = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  *(v0 + 832) = *(v3 + 80);
  *(v0 + 672) = *v4;
  v5 = *(v0 + 640);
  while (1)
  {
    *(v0 + 688) = v2;
    *(v0 + 680) = v5;
    v6 = *(v0 + 632);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    sub_1D2436A00(v6 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v2, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_3;
    }

    v8 = *(v0 + 560);
    v9 = *(v0 + 488);
    v10 = *(v0 + 496);
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = v8[1];
    v94 = *v8;
    (*(v11 + 56))(v10, 1, 1, v12);
    sub_1D2871778();
    sub_1D22BD1D0(v10, v9, &unk_1EC6E1D40);
    v14 = (*(v11 + 48))(v9, 1, v12);
    v15 = *(v0 + 488);
    v93 = v5;
    if (v14 == 1)
    {
      sub_1D22BD238(v15, &unk_1EC6E1D40);
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 528);
      *(v16 + 24) = sub_1D24B63AC(qword_1ED8B0010, v94, v13);
      *(v16 + 32) = v17 & 1;
      v18 = sub_1D27E1420(v94, v13);
      v20 = v19;
    }

    else
    {
      (*(*(v0 + 440) + 32))(*(v0 + 456), v15, *(v0 + 432));
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v91 = *(v0 + 672);
      v21 = *(v0 + 448);
      v22 = *(v0 + 456);
      v24 = *(v0 + 432);
      v23 = *(v0 + 440);
      v25 = qword_1ED8B0010;
      sub_1D28712B8();
      sub_1D2436AE8();
      *(v0 + 184) = sub_1D28782D8();
      *(v0 + 192) = v26;
      *(v0 + 200) = 12369903;
      *(v0 + 208) = 0xA300000000000000;
      *(v0 + 216) = 0;
      *(v0 + 224) = 0xE000000000000000;
      v87 = sub_1D22BD06C();
      v86 = MEMORY[0x1E69E6158];
      v27 = sub_1D2878FA8();
      v29 = v28;

      v30 = sub_1D24B63AC(v25, v27, v29);
      v32 = v31;

      *(v0 + 240) = v30;
      sub_1D2436B40();
      (*(v23 + 16))(v21, v22, v24);
      v33 = sub_1D2878AE8();
      v34 = [v33 length];
      v35 = swift_allocObject();
      *(v35 + 16) = v0 + 240;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1D2436B8C;
      *(v36 + 24) = v35;
      *(v0 + 120) = sub_1D2436B94;
      *(v0 + 128) = v36;
      *(v0 + 88) = MEMORY[0x1E69E9820];
      *(v0 + 96) = 1107296256;
      *(v0 + 104) = sub_1D267502C;
      *(v0 + 112) = &block_descriptor_11;
      v37 = _Block_copy((v0 + 88));
      sub_1D2870F78();

      [v33 enumerateAttribute:v91 inRange:0 options:v34 usingBlock:{0, v37}];

      _Block_release(v37);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if (v33)
      {
        goto LABEL_44;
      }

      v38 = *(v0 + 528);
      v39 = *(v0 + 456);
      v40 = *(v0 + 432);
      v41 = *(v0 + 440);
      v42 = *(v0 + 240);

      *(v38 + 24) = v42;
      *(v38 + 32) = v32 & 1;
      v43 = sub_1D27E0DA0();
      v18 = sub_1D27E1420(v43, v44);
      v20 = v45;

      (*(v41 + 8))(v39, v40);
    }

    v95 = *(v0 + 656);
    v46 = *(v0 + 528);
    v90 = *(v0 + 520);
    v92 = *(v0 + 616);
    v47 = *(v0 + 504);
    v88 = *(v0 + 496);
    v89 = *(v0 + 536);
    v48 = *(v0 + 472);
    v49 = *(v0 + 480);
    v50 = *(v0 + 464);
    v46[1] = v18;
    v46[2] = v20;
    v46[5] = MEMORY[0x1E69E7CC0];
    (*(v48 + 16))(v46 + *(v47 + 36), v49, v50);
    *(v46 + *(v47 + 40)) = 0;
    sub_1D2879838();
    sub_1D2877F38();

    *(v0 + 48) = v98;
    *(v0 + 64) = v99;
    *(v0 + 80) = v100;
    *(v0 + 16) = v96;
    *(v0 + 32) = v97;
    v51 = sub_1D2879818();
    (*(v48 + 8))(v49, v50);
    sub_1D22BD238(v88, &unk_1EC6E1D40);
    *v46 = v51;
    sub_1D2436998(v46, v89, type metadata accessor for Prompt);
    sub_1D2436A00(v89, v90, type metadata accessor for Prompt);
    swift_beginAccess();
    v52 = *(v92 + v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v92 + v95) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = *(v0 + 656);
      v66 = *(v0 + 616);
      v52 = sub_1D27CC840(0, v52[2] + 1, 1, v52);
      *(v66 + v65) = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1D27CC840(v54 > 1, v55 + 1, 1, v52);
    }

    v56 = *(v0 + 656);
    v57 = *(v0 + 616);
    v58 = *(v0 + 536);
    v59 = *(v0 + 520);
    v60 = *(v0 + 512);
    v52[2] = v55 + 1;
    sub_1D2436998(v59, v52 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v55, type metadata accessor for Prompt);
    *(v57 + v56) = v52;
    swift_endAccess();
    v61 = swift_task_alloc();
    *(v61 + 16) = v58;
    swift_beginAccess();
    v62 = sub_1D268223C(sub_1D2436A68, v61);
    if (v93)
    {

      return swift_endAccess();
    }

    v63 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
    if (v63 < v62)
    {
      goto LABEL_43;
    }

    v64 = *(v0 + 536);
    sub_1D278CD34(v62, v63);
    swift_endAccess();

    sub_1D2436A88(v64, type metadata accessor for Prompt);
    v5 = 0;
LABEL_4:
    v2 = *(v0 + 688) + 1;
    if (v2 == *(v0 + 648))
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v70 = *(v0 + 368);
      v71 = *(v0 + 328);
      v72 = **(v0 + 560);
      *(v0 + 736) = v72;
      *(v70 + 32) = 0;
      *(v70 + 40) = 0;
      v73 = (v70 + v71[9]);
      *v73 = 0u;
      v73[1] = 0u;
      *(v70 + v71[10]) = xmmword_1D28809A0;
      v74 = v71[11];
      v75 = sub_1D2873AA8();
      *(v0 + 744) = v75;
      v76 = *(v75 - 8);
      v77 = *(v76 + 56);
      *(v0 + 752) = v77;
      *(v0 + 760) = (v76 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v77(v70 + v74, 1, 1, v75);
      *v70 = v72;
      *(v70 + 8) = 3;
      *(v70 + 24) = 1;
      *(v70 + 16) = 0;
      *(v70 + v71[12]) = 0;
      v78 = v72;
      sub_1D2871808();

      return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
      v83 = swift_task_alloc();
      *(v0 + 824) = v83;
      *v83 = v0;
      v83[1] = sub_1D24353C0;
      v84 = *(v0 + 616);
      v85 = *(v0 + 352);

      return _ConditioningImageFactory.assignConditioningImage(from:to:)(v85, v84);
    }

LABEL_3:
    sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
    goto LABEL_4;
  }

  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
  sub_1D2877E48();
  v79 = sub_1D2877E38();
  *(v0 + 696) = v79;
  v80 = v79;
  v81 = swift_task_alloc();
  *(v0 + 704) = v81;
  *v81 = v0;
  v81[1] = sub_1D24310F0;
  v82 = *(v0 + 320);

  return sub_1D24363B4(v82, v80);
}

uint64_t sub_1D24310F0()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D2431244, v3, v2);
}

uint64_t sub_1D2431244()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 696);
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));

    sub_1D22BD238(v3, &unk_1EC6DE5A0);
    v6 = *(v0 + 688) + 1;
    if (v6 == *(v0 + 648))
    {
LABEL_3:

      v7 = *(v0 + 8);
      v8 = *(v0 + 616);

      return v7(v8);
    }

    v18 = (v0 + 88);
    v19 = v0 + 240;
    v20 = *(v0 + 680);
    v21 = v0 + 104;
    p_ivars = &ComposingFooterViewModel.ivars;
    while (1)
    {
      while (1)
      {
        *(v0 + 688) = v6;
        *(v0 + 680) = v20;
        v23 = *(v0 + 632);
        if (v6 >= *(v23 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

        sub_1D2436A00(v23 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v6, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v25 = *(v0 + 560);
        if (EnumCaseMultiPayload <= 3)
        {
          break;
        }

        if (EnumCaseMultiPayload == 4)
        {
          v90 = *(v0 + 368);
          v91 = *(v0 + 328);
          v92 = *v25;
          *(v0 + 736) = *v25;
          *(v90 + 32) = 0;
          *(v90 + 40) = 0;
          v93 = (v90 + v91[9]);
          *v93 = 0u;
          v93[1] = 0u;
          *(v90 + v91[10]) = xmmword_1D28809A0;
          v94 = v91[11];
          v95 = sub_1D2873AA8();
          *(v0 + 744) = v95;
          v96 = *(v95 - 8);
          v97 = *(v96 + 56);
          *(v0 + 752) = v97;
          *(v0 + 760) = (v96 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v97(v90 + v94, 1, 1, v95);
          *v90 = v92;
          *(v90 + 8) = 3;
          *(v90 + 24) = 1;
          *(v90 + 16) = 0;
          *(v90 + v91[12]) = 0;
          v98 = v92;
          sub_1D2871808();

          return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
        }

        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
          v87 = swift_task_alloc();
          *(v0 + 824) = v87;
          *v87 = v0;
          v87[1] = sub_1D24353C0;
          v88 = *(v0 + 616);
          v89 = *(v0 + 352);

          return _ConditioningImageFactory.assignConditioningImage(from:to:)(v89, v88);
        }

LABEL_9:
        sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
        v6 = *(v0 + 688) + 1;
        if (v6 == *(v0 + 648))
        {
          goto LABEL_3;
        }
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
          sub_1D2877E48();
          v99 = sub_1D2877E38();
          *(v0 + 696) = v99;
          v100 = v99;
          v101 = swift_task_alloc();
          *(v0 + 704) = v101;
          *v101 = v0;
          v101[1] = sub_1D24310F0;
          v102 = *(v0 + 320);

          return sub_1D24363B4(v102, v100);
        }

        goto LABEL_9;
      }

      v125 = v21;
      v126 = v19;
      aBlock = v18;
      v26 = *(v0 + 488);
      v27 = *(v0 + 496);
      v28 = *(v0 + 432);
      v29 = *(v0 + 440);
      v121 = *v25;
      v123 = v25[1];
      (*(v29 + 56))(v27, 1, 1, v28);
      sub_1D2871778();
      sub_1D22BD1D0(v27, v26, &unk_1EC6E1D40);
      if ((*(v29 + 48))(v26, 1, v28) == 1)
      {
        sub_1D22BD238(*(v0 + 488), &unk_1EC6E1D40);
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 528);
        *(v30 + 24) = sub_1D24B63AC(qword_1ED8B0010, v121, v123);
        *(v30 + 32) = v31 & 1;
        v32 = sub_1D27E1420(v121, v123);
        v34 = v33;
      }

      else
      {
        (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 488), *(v0 + 432));
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v119 = *(v0 + 672);
        v35 = *(v0 + 448);
        v36 = *(v0 + 456);
        v37 = *(v0 + 432);
        v38 = *(v0 + 440);
        v39 = qword_1ED8B0010;
        sub_1D28712B8();
        sub_1D2436AE8();
        *(v0 + 184) = sub_1D28782D8();
        *(v0 + 192) = v40;
        *(v0 + 200) = 12369903;
        *(v0 + 208) = 0xA300000000000000;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0xE000000000000000;
        v116 = sub_1D22BD06C();
        v115 = MEMORY[0x1E69E6158];
        v41 = sub_1D2878FA8();
        v43 = v42;

        v44 = sub_1D24B63AC(v39, v41, v43);
        v46 = v45;

        *(v0 + 240) = v44;
        sub_1D2436B40();
        (*(v38 + 16))(v35, v36, v37);
        v47 = sub_1D2878AE8();
        v48 = [v47 length];
        v49 = swift_allocObject();
        *(v49 + 16) = v126;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_1D2436B8C;
        *(v50 + 24) = v49;
        *(v0 + 120) = sub_1D2436B94;
        *(v0 + 128) = v50;
        *(v0 + 88) = MEMORY[0x1E69E9820];
        *(v0 + 96) = 1107296256;
        *(v0 + 104) = sub_1D267502C;
        *(v0 + 112) = &block_descriptor_11;
        v51 = _Block_copy(aBlock);
        sub_1D2870F78();

        [v47 enumerateAttribute:v119 inRange:0 options:v48 usingBlock:{0, v51}];

        _Block_release(v51);
        LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

        if (v48)
        {
          goto LABEL_68;
        }

        v52 = *(v0 + 528);
        v53 = *(v0 + 456);
        v54 = *(v0 + 432);
        v55 = *(v0 + 440);
        v56 = *(v0 + 240);

        *(v52 + 24) = v56;
        *(v52 + 32) = v46 & 1;
        v57 = sub_1D27E0DA0();
        v59 = sub_1D27E1420(v57, v58);
        v34 = v60;

        (*(v55 + 8))(v53, v54);
        v32 = v59;
      }

      v122 = *(v0 + 616);
      v124 = *(v0 + 656);
      v61 = *(v0 + 528);
      v118 = *(v0 + 536);
      v120 = *(v0 + 520);
      v62 = *(v0 + 504);
      v117 = *(v0 + 496);
      v63 = *(v0 + 472);
      v64 = *(v0 + 480);
      v65 = *(v0 + 464);
      v61[1] = v32;
      v61[2] = v34;
      v61[5] = MEMORY[0x1E69E7CC0];
      (*(v63 + 16))(v61 + *(v62 + 36), v64, v65);
      *(v61 + *(v62 + 40)) = 0;
      sub_1D2879838();
      sub_1D2877F38();

      *(v0 + 48) = v130;
      *(v0 + 64) = v131;
      *(v0 + 80) = v132;
      *(v0 + 16) = v128;
      *(v0 + 32) = v129;
      v66 = sub_1D2879818();
      (*(v63 + 8))(v64, v65);
      sub_1D22BD238(v117, &unk_1EC6E1D40);
      *v61 = v66;
      sub_1D2436998(v61, v118, type metadata accessor for Prompt);
      sub_1D2436A00(v118, v120, type metadata accessor for Prompt);
      swift_beginAccess();
      v67 = *(v122 + v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v122 + v124) = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = *(v0 + 656);
        v81 = *(v0 + 616);
        v67 = sub_1D27CC840(0, v67[2] + 1, 1, v67);
        *(v81 + v80) = v67;
      }

      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        v67 = sub_1D27CC840(v69 > 1, v70 + 1, 1, v67);
      }

      v71 = *(v0 + 656);
      v72 = *(v0 + 616);
      v73 = *(v0 + 536);
      v74 = *(v0 + 520);
      v75 = *(v0 + 512);
      v67[2] = v70 + 1;
      sub_1D2436998(v74, v67 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for Prompt);
      *(v72 + v71) = v67;
      swift_endAccess();
      v76 = swift_task_alloc();
      *(v76 + 16) = v73;
      swift_beginAccess();
      v77 = sub_1D268223C(sub_1D2436A68, v76);
      if (v20)
      {

        return swift_endAccess();
      }

      v78 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
      if (v78 < v77)
      {
        goto LABEL_67;
      }

      v79 = *(v0 + 536);
      sub_1D278CD34(v77, v78);
      swift_endAccess();

      sub_1D2436A88(v79, type metadata accessor for Prompt);
      v20 = 0;
      v6 = *(v0 + 688) + 1;
      v19 = v126;
      v18 = aBlock;
      v21 = v125;
      p_ivars = (&ComposingFooterViewModel + 48);
      if (v6 == *(v0 + 648))
      {
        goto LABEL_3;
      }
    }
  }

  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  sub_1D2436998(v3, v10, type metadata accessor for PlaygroundImage);
  sub_1D2436A00(v10, v11, type metadata accessor for PlaygroundImage);
  (*(v2 + 56))(v12, 1, 1, v1);
  sub_1D22BD1D0(v12, v13, &unk_1EC6DE5A0);
  v14 = v4(v13, 1, v1);
  v15 = *(v0 + 304);
  if (v14 == 1)
  {
    sub_1D22BD238(*(v0 + 304), &unk_1EC6DE5A0);
    v16 = 0;
    v17 = *(v0 + 680);
  }

  else
  {
    if (*(v15 + 24) == 1 && *(v15 + 8) == 3)
    {
      v16 = *v15;
      v17 = *(v0 + 680);
      v82 = *v15;
    }

    else
    {
      v83 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      v84 = sub_1D262B684();
      if (v84)
      {
        v85 = v84;
        v17 = *(v0 + 680);
        v86 = sub_1D2878908();
        if (v17)
        {

          v17 = 0;
          v16 = 0;
        }

        else
        {
          v16 = v86;
        }
      }

      else
      {

        v16 = 0;
        v17 = *(v0 + 680);
      }
    }

    sub_1D2436A88(*(v0 + 304), type metadata accessor for PlaygroundImage);
  }

  v103 = *(v0 + 376);
  if (*(v103 + 24) == 1 && *(v103 + 8) == 3)
  {
    v104 = *v103;
    v105 = v104;
  }

  else
  {
    v106 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v107 = sub_1D262B684();
    if (v107)
    {
      v108 = v107;
      v109 = sub_1D2878908();
      if (v17)
      {

        v17 = 0;
        v104 = 0;
      }

      else
      {
        v104 = v109;
      }
    }

    else
    {

      v104 = 0;
    }
  }

  *(v0 + 712) = v17;
  v110 = *(v0 + 376);
  v111 = *(v0 + 312);
  v112 = [objc_allocWithZone(MEMORY[0x1E696E4E8]) initWithBaseImage:v16 sketchImage:v104 sketchMask:0 baseImageRatio:1 sketchComplexityMeasure:0 generateCaptionFromImage:1 sanitizationCategory:1.0 drawOnImageAssignmentOptions:0.0];
  *(v0 + 720) = v112;

  sub_1D22BD238(v111, &unk_1EC6DE5A0);
  sub_1D2436A88(v110, type metadata accessor for PlaygroundImage);
  v113 = swift_task_alloc();
  *(v0 + 728) = v113;
  *v113 = v0;
  v113[1] = sub_1D2432284;
  v114 = *(v0 + 272);

  return sub_1D2674838(v112, v114);
}

uint64_t sub_1D2432284()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D24323D8, v3, v2);
}

uint64_t sub_1D24323D8()
{
  v1 = *(v0 + 696);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);

  sub_1D2436A88(v5, type metadata accessor for PlaygroundImage);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 688) + 1;
  if (v6 == *(v0 + 648))
  {
LABEL_2:

    v7 = *(v0 + 8);
    v8 = *(v0 + 616);

    return v7(v8);
  }

  v10 = (v0 + 88);
  v11 = v0 + 240;
  v12 = *(v0 + 712);
  v13 = v0 + 104;
  p_ivars = &ComposingFooterViewModel.ivars;
  while (1)
  {
    while (1)
    {
      *(v0 + 688) = v6;
      *(v0 + 680) = v12;
      v15 = *(v0 + 632);
      if (v6 >= *(v15 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      sub_1D2436A00(v15 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v6, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = *(v0 + 560);
      if (EnumCaseMultiPayload > 3)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
          sub_1D2877E48();
          v86 = sub_1D2877E38();
          *(v0 + 696) = v86;
          v87 = v86;
          v88 = swift_task_alloc();
          *(v0 + 704) = v88;
          *v88 = v0;
          v88[1] = sub_1D24310F0;
          v89 = *(v0 + 320);

          return sub_1D24363B4(v89, v87);
        }

        goto LABEL_6;
      }

      v100 = v13;
      v101 = v11;
      aBlock = v10;
      v18 = *(v0 + 488);
      v19 = *(v0 + 496);
      v20 = *(v0 + 432);
      v21 = *(v0 + 440);
      v96 = *v17;
      v98 = v17[1];
      (*(v21 + 56))(v19, 1, 1, v20);
      sub_1D2871778();
      sub_1D22BD1D0(v19, v18, &unk_1EC6E1D40);
      if ((*(v21 + 48))(v18, 1, v20) == 1)
      {
        sub_1D22BD238(*(v0 + 488), &unk_1EC6E1D40);
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 528);
        *(v22 + 24) = sub_1D24B63AC(qword_1ED8B0010, v96, v98);
        *(v22 + 32) = v23 & 1;
        v24 = sub_1D27E1420(v96, v98);
        v26 = v25;
      }

      else
      {
        (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 488), *(v0 + 432));
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v94 = *(v0 + 672);
        v27 = *(v0 + 448);
        v28 = *(v0 + 456);
        v29 = *(v0 + 432);
        v30 = *(v0 + 440);
        v31 = qword_1ED8B0010;
        sub_1D28712B8();
        sub_1D2436AE8();
        *(v0 + 184) = sub_1D28782D8();
        *(v0 + 192) = v32;
        *(v0 + 200) = 12369903;
        *(v0 + 208) = 0xA300000000000000;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0xE000000000000000;
        v91 = sub_1D22BD06C();
        v90 = MEMORY[0x1E69E6158];
        v33 = sub_1D2878FA8();
        v35 = v34;

        v36 = sub_1D24B63AC(v31, v33, v35);
        v38 = v37;

        *(v0 + 240) = v36;
        sub_1D2436B40();
        (*(v30 + 16))(v27, v28, v29);
        v39 = sub_1D2878AE8();
        v40 = [v39 length];
        v41 = swift_allocObject();
        *(v41 + 16) = v101;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_1D2436B8C;
        *(v42 + 24) = v41;
        *(v0 + 120) = sub_1D2436B94;
        *(v0 + 128) = v42;
        *(v0 + 88) = MEMORY[0x1E69E9820];
        *(v0 + 96) = 1107296256;
        *(v0 + 104) = sub_1D267502C;
        *(v0 + 112) = &block_descriptor_11;
        v43 = _Block_copy(aBlock);
        sub_1D2870F78();

        [v39 enumerateAttribute:v94 inRange:0 options:v40 usingBlock:{0, v43}];

        _Block_release(v43);
        LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

        if (v40)
        {
          goto LABEL_45;
        }

        v44 = *(v0 + 528);
        v45 = *(v0 + 456);
        v46 = *(v0 + 432);
        v47 = *(v0 + 440);
        v48 = *(v0 + 240);

        *(v44 + 24) = v48;
        *(v44 + 32) = v38 & 1;
        v49 = sub_1D27E0DA0();
        v51 = sub_1D27E1420(v49, v50);
        v26 = v52;

        (*(v47 + 8))(v45, v46);
        v24 = v51;
      }

      v97 = *(v0 + 616);
      v99 = *(v0 + 656);
      v53 = *(v0 + 528);
      v93 = *(v0 + 536);
      v95 = *(v0 + 520);
      v54 = *(v0 + 504);
      v92 = *(v0 + 496);
      v55 = *(v0 + 472);
      v56 = *(v0 + 480);
      v57 = *(v0 + 464);
      v53[1] = v24;
      v53[2] = v26;
      v53[5] = MEMORY[0x1E69E7CC0];
      (*(v55 + 16))(v53 + *(v54 + 36), v56, v57);
      *(v53 + *(v54 + 40)) = 0;
      sub_1D2879838();
      sub_1D2877F38();

      *(v0 + 48) = v105;
      *(v0 + 64) = v106;
      *(v0 + 80) = v107;
      *(v0 + 16) = v103;
      *(v0 + 32) = v104;
      v58 = sub_1D2879818();
      (*(v55 + 8))(v56, v57);
      sub_1D22BD238(v92, &unk_1EC6E1D40);
      *v53 = v58;
      sub_1D2436998(v53, v93, type metadata accessor for Prompt);
      sub_1D2436A00(v93, v95, type metadata accessor for Prompt);
      swift_beginAccess();
      v59 = *(v97 + v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v97 + v99) = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = *(v0 + 656);
        v73 = *(v0 + 616);
        v59 = sub_1D27CC840(0, v59[2] + 1, 1, v59);
        *(v73 + v72) = v59;
      }

      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_1D27CC840(v61 > 1, v62 + 1, 1, v59);
      }

      v63 = *(v0 + 656);
      v64 = *(v0 + 616);
      v65 = *(v0 + 536);
      v66 = *(v0 + 520);
      v67 = *(v0 + 512);
      v59[2] = v62 + 1;
      sub_1D2436998(v66, v59 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v62, type metadata accessor for Prompt);
      *(v64 + v63) = v59;
      swift_endAccess();
      v68 = swift_task_alloc();
      *(v68 + 16) = v65;
      swift_beginAccess();
      v69 = sub_1D268223C(sub_1D2436A68, v68);
      if (v12)
      {

        return swift_endAccess();
      }

      v70 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
      if (v70 < v69)
      {
        goto LABEL_44;
      }

      v71 = *(v0 + 536);
      sub_1D278CD34(v69, v70);
      swift_endAccess();

      sub_1D2436A88(v71, type metadata accessor for Prompt);
      v12 = 0;
      v6 = *(v0 + 688) + 1;
      v11 = v101;
      v10 = aBlock;
      v13 = v100;
      p_ivars = (&ComposingFooterViewModel + 48);
      if (v6 == *(v0 + 648))
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
      v74 = swift_task_alloc();
      *(v0 + 824) = v74;
      *v74 = v0;
      v74[1] = sub_1D24353C0;
      v75 = *(v0 + 616);
      v76 = *(v0 + 352);

      return _ConditioningImageFactory.assignConditioningImage(from:to:)(v76, v75);
    }

LABEL_6:
    sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
    v6 = *(v0 + 688) + 1;
    if (v6 == *(v0 + 648))
    {
      goto LABEL_2;
    }
  }

  v77 = *(v0 + 368);
  v78 = *(v0 + 328);
  v79 = *v17;
  *(v0 + 736) = *v17;
  *(v77 + 32) = 0;
  *(v77 + 40) = 0;
  v80 = (v77 + v78[9]);
  *v80 = 0u;
  v80[1] = 0u;
  *(v77 + v78[10]) = xmmword_1D28809A0;
  v81 = v78[11];
  v82 = sub_1D2873AA8();
  *(v0 + 744) = v82;
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  *(v0 + 752) = v84;
  *(v0 + 760) = (v83 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v84(v77 + v81, 1, 1, v82);
  *v77 = v79;
  *(v77 + 8) = 3;
  *(v77 + 24) = 1;
  *(v77 + 16) = 0;
  *(v77 + v78[12]) = 0;
  v85 = v79;
  sub_1D2871808();

  return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
}

uint64_t sub_1D24330CC()
{
  *(v0 + 232) = 0;
  v1 = VTCreateCGImageFromCVPixelBuffer(*(v0 + 736), 0, (v0 + 232));
  v2 = sub_1D2874198();
  v3 = *(v0 + 232);
  *(v0 + 768) = v3;
  if (v1 == v2)
  {
    if (v3)
    {
      v4 = swift_task_alloc();
      *(v0 + 776) = v4;
      *v4 = v0;
      v4[1] = sub_1D2433264;

      return MEMORY[0x1EEDC93A0](1);
    }
  }

  else
  {
  }

  sub_1D2436A00(*(v0 + 368), *(v0 + 296), type metadata accessor for PlaygroundImage);
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  v7 = *(*(v0 + 336) + 56);
  *(v0 + 792) = v7;
  v7(v6, 0, 1, v5);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D2433530, v9, v8);
}

uint64_t sub_1D2433264(uint64_t a1)
{
  v2 = *(*v1 + 768);
  *(*v1 + 784) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D24333AC, 0, 0);
}

uint64_t sub_1D24333AC()
{
  v1 = v0[98];
  if (v1)
  {
    v2 = v0[94];
    v3 = v0[93];
    v4 = v0[44];
    v5 = v0[41];
    v6 = v0[37];
    v7 = (v4 + v5[9]);
    *v7 = 0u;
    v7[1] = 0u;
    *(v4 + v5[10]) = xmmword_1D28809A0;
    v2(v4 + v5[11], 1, 1, v3);
    *v4 = v1;
    *(v4 + 8) = 0;
    *(v4 + 24) = 1;
    *(v4 + 16) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + v5[12]) = 0;
    sub_1D2871808();
    sub_1D2436998(v4, v6, type metadata accessor for PlaygroundImage);
  }

  else
  {
    sub_1D2436A00(v0[46], v0[37], type metadata accessor for PlaygroundImage);
  }

  v8 = v0[41];
  v9 = v0[37];
  v10 = *(v0[42] + 56);
  v0[99] = v10;
  v10(v9, 0, 1, v8);
  v11 = v0[76];
  v12 = v0[75];

  return MEMORY[0x1EEE6DFA0](sub_1D2433530, v12, v11);
}

uint64_t sub_1D2433530()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(*(v0 + 336) + 48);
  if (v3(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 736);
    sub_1D2436A88(*(v0 + 368), type metadata accessor for PlaygroundImage);

    sub_1D22BD238(v2, &unk_1EC6DE5A0);
    v5 = *(v0 + 688) + 1;
    if (v5 == *(v0 + 648))
    {
LABEL_3:

      v6 = *(v0 + 8);
      v7 = *(v0 + 616);

      return v6(v7);
    }

    v17 = (v0 + 88);
    v18 = v0 + 240;
    v19 = *(v0 + 680);
    v20 = v0 + 104;
    p_ivars = &ComposingFooterViewModel.ivars;
    while (1)
    {
      while (1)
      {
        *(v0 + 688) = v5;
        *(v0 + 680) = v19;
        v22 = *(v0 + 632);
        if (v5 >= *(v22 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

        sub_1D2436A00(v22 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v5, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v24 = *(v0 + 560);
        if (EnumCaseMultiPayload <= 3)
        {
          break;
        }

        if (EnumCaseMultiPayload == 4)
        {
          v89 = *(v0 + 368);
          v90 = *(v0 + 328);
          v91 = *v24;
          *(v0 + 736) = *v24;
          *(v89 + 32) = 0;
          *(v89 + 40) = 0;
          v92 = (v89 + v90[9]);
          *v92 = 0u;
          v92[1] = 0u;
          *(v89 + v90[10]) = xmmword_1D28809A0;
          v93 = v90[11];
          v94 = sub_1D2873AA8();
          *(v0 + 744) = v94;
          v95 = *(v94 - 8);
          v96 = *(v95 + 56);
          *(v0 + 752) = v96;
          *(v0 + 760) = (v95 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v96(v89 + v93, 1, 1, v94);
          *v89 = v91;
          *(v89 + 8) = 3;
          *(v89 + 24) = 1;
          *(v89 + 16) = 0;
          *(v89 + v90[12]) = 0;
          v97 = v91;
          sub_1D2871808();

          return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
        }

        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
          v86 = swift_task_alloc();
          *(v0 + 824) = v86;
          *v86 = v0;
          v86[1] = sub_1D24353C0;
          v87 = *(v0 + 616);
          v88 = *(v0 + 352);

          return _ConditioningImageFactory.assignConditioningImage(from:to:)(v88, v87);
        }

LABEL_9:
        sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
        v5 = *(v0 + 688) + 1;
        if (v5 == *(v0 + 648))
        {
          goto LABEL_3;
        }
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
          sub_1D2877E48();
          v98 = sub_1D2877E38();
          *(v0 + 696) = v98;
          v99 = v98;
          v100 = swift_task_alloc();
          *(v0 + 704) = v100;
          *v100 = v0;
          v100[1] = sub_1D24310F0;
          v101 = *(v0 + 320);

          return sub_1D24363B4(v101, v99);
        }

        goto LABEL_9;
      }

      v124 = v20;
      v125 = v18;
      aBlock = v17;
      v25 = *(v0 + 488);
      v26 = *(v0 + 496);
      v27 = *(v0 + 432);
      v28 = *(v0 + 440);
      v120 = *v24;
      v122 = v24[1];
      (*(v28 + 56))(v26, 1, 1, v27);
      sub_1D2871778();
      sub_1D22BD1D0(v26, v25, &unk_1EC6E1D40);
      if ((*(v28 + 48))(v25, 1, v27) == 1)
      {
        sub_1D22BD238(*(v0 + 488), &unk_1EC6E1D40);
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v29 = *(v0 + 528);
        *(v29 + 24) = sub_1D24B63AC(qword_1ED8B0010, v120, v122);
        *(v29 + 32) = v30 & 1;
        v31 = sub_1D27E1420(v120, v122);
        v33 = v32;
      }

      else
      {
        (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 488), *(v0 + 432));
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v118 = *(v0 + 672);
        v34 = *(v0 + 448);
        v35 = *(v0 + 456);
        v36 = *(v0 + 432);
        v37 = *(v0 + 440);
        v38 = qword_1ED8B0010;
        sub_1D28712B8();
        sub_1D2436AE8();
        *(v0 + 184) = sub_1D28782D8();
        *(v0 + 192) = v39;
        *(v0 + 200) = 12369903;
        *(v0 + 208) = 0xA300000000000000;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0xE000000000000000;
        v115 = sub_1D22BD06C();
        v114 = MEMORY[0x1E69E6158];
        v40 = sub_1D2878FA8();
        v42 = v41;

        v43 = sub_1D24B63AC(v38, v40, v42);
        v45 = v44;

        *(v0 + 240) = v43;
        sub_1D2436B40();
        (*(v37 + 16))(v34, v35, v36);
        v46 = sub_1D2878AE8();
        v47 = [v46 length];
        v48 = swift_allocObject();
        *(v48 + 16) = v125;
        v49 = swift_allocObject();
        *(v49 + 16) = sub_1D2436B8C;
        *(v49 + 24) = v48;
        *(v0 + 120) = sub_1D2436B94;
        *(v0 + 128) = v49;
        *(v0 + 88) = MEMORY[0x1E69E9820];
        *(v0 + 96) = 1107296256;
        *(v0 + 104) = sub_1D267502C;
        *(v0 + 112) = &block_descriptor_11;
        v50 = _Block_copy(aBlock);
        sub_1D2870F78();

        [v46 enumerateAttribute:v118 inRange:0 options:v47 usingBlock:{0, v50}];

        _Block_release(v50);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if (v47)
        {
          goto LABEL_68;
        }

        v51 = *(v0 + 528);
        v52 = *(v0 + 456);
        v53 = *(v0 + 432);
        v54 = *(v0 + 440);
        v55 = *(v0 + 240);

        *(v51 + 24) = v55;
        *(v51 + 32) = v45 & 1;
        v56 = sub_1D27E0DA0();
        v58 = sub_1D27E1420(v56, v57);
        v33 = v59;

        (*(v54 + 8))(v52, v53);
        v31 = v58;
      }

      v121 = *(v0 + 616);
      v123 = *(v0 + 656);
      v60 = *(v0 + 528);
      v117 = *(v0 + 536);
      v119 = *(v0 + 520);
      v61 = *(v0 + 504);
      v116 = *(v0 + 496);
      v62 = *(v0 + 472);
      v63 = *(v0 + 480);
      v64 = *(v0 + 464);
      v60[1] = v31;
      v60[2] = v33;
      v60[5] = MEMORY[0x1E69E7CC0];
      (*(v62 + 16))(v60 + *(v61 + 36), v63, v64);
      *(v60 + *(v61 + 40)) = 0;
      sub_1D2879838();
      sub_1D2877F38();

      *(v0 + 48) = v130;
      *(v0 + 64) = v131;
      *(v0 + 80) = v132;
      *(v0 + 16) = v128;
      *(v0 + 32) = v129;
      v65 = sub_1D2879818();
      (*(v62 + 8))(v63, v64);
      sub_1D22BD238(v116, &unk_1EC6E1D40);
      *v60 = v65;
      sub_1D2436998(v60, v117, type metadata accessor for Prompt);
      sub_1D2436A00(v117, v119, type metadata accessor for Prompt);
      swift_beginAccess();
      v66 = *(v121 + v123);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v121 + v123) = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = *(v0 + 656);
        v80 = *(v0 + 616);
        v66 = sub_1D27CC840(0, v66[2] + 1, 1, v66);
        *(v80 + v79) = v66;
      }

      v69 = v66[2];
      v68 = v66[3];
      if (v69 >= v68 >> 1)
      {
        v66 = sub_1D27CC840(v68 > 1, v69 + 1, 1, v66);
      }

      v70 = *(v0 + 656);
      v71 = *(v0 + 616);
      v72 = *(v0 + 536);
      v73 = *(v0 + 520);
      v74 = *(v0 + 512);
      v66[2] = v69 + 1;
      sub_1D2436998(v73, v66 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v69, type metadata accessor for Prompt);
      *(v71 + v70) = v66;
      swift_endAccess();
      v75 = swift_task_alloc();
      *(v75 + 16) = v72;
      swift_beginAccess();
      v76 = sub_1D268223C(sub_1D2436A68, v75);
      if (v19)
      {

        return swift_endAccess();
      }

      v77 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
      if (v77 < v76)
      {
        goto LABEL_67;
      }

      v78 = *(v0 + 536);
      sub_1D278CD34(v76, v77);
      swift_endAccess();

      sub_1D2436A88(v78, type metadata accessor for Prompt);
      v19 = 0;
      v5 = *(v0 + 688) + 1;
      v18 = v125;
      v17 = aBlock;
      v20 = v124;
      p_ivars = (&ComposingFooterViewModel + 48);
      if (v5 == *(v0 + 648))
      {
        goto LABEL_3;
      }
    }
  }

  aBlocka = *(v0 + 792);
  v9 = *(v0 + 360);
  v10 = *(v0 + 344);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  sub_1D2436998(v2, v9, type metadata accessor for PlaygroundImage);
  sub_1D2436A00(v9, v10, type metadata accessor for PlaygroundImage);
  aBlocka(v11, 1, 1, v1);
  sub_1D22BD1D0(v11, v12, &unk_1EC6DE5A0);
  v13 = v3(v12, 1, v1);
  v14 = *(v0 + 280);
  if (v13 == 1)
  {
    sub_1D22BD238(*(v0 + 280), &unk_1EC6DE5A0);
    v15 = 0;
    v16 = *(v0 + 680);
  }

  else
  {
    if (*(v14 + 24) == 1 && *(v14 + 8) == 3)
    {
      v15 = *v14;
      v16 = *(v0 + 680);
      v81 = *v14;
    }

    else
    {
      v82 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      v83 = sub_1D262B684();
      if (v83)
      {
        v84 = v83;
        v16 = *(v0 + 680);
        v85 = sub_1D2878908();
        if (v16)
        {

          v16 = 0;
          v15 = 0;
        }

        else
        {
          v15 = v85;
        }
      }

      else
      {

        v15 = 0;
        v16 = *(v0 + 680);
      }
    }

    sub_1D2436A88(*(v0 + 280), type metadata accessor for PlaygroundImage);
  }

  v102 = *(v0 + 344);
  if (*(v102 + 24) == 1 && *(v102 + 8) == 3)
  {
    v103 = *v102;
    v104 = v103;
  }

  else
  {
    v105 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v106 = sub_1D262B684();
    if (v106)
    {
      v107 = v106;
      v108 = sub_1D2878908();
      if (v16)
      {

        v16 = 0;
        v103 = 0;
      }

      else
      {
        v103 = v108;
      }
    }

    else
    {

      v103 = 0;
    }
  }

  *(v0 + 800) = v16;
  v109 = *(v0 + 344);
  v110 = *(v0 + 288);
  v111 = [objc_allocWithZone(MEMORY[0x1E696E4E8]) initWithBaseImage:v15 sketchImage:v103 sketchMask:0 baseImageRatio:1 sketchComplexityMeasure:0 generateCaptionFromImage:1 sanitizationCategory:1.0 drawOnImageAssignmentOptions:0.0];
  *(v0 + 808) = v111;

  sub_1D22BD238(v110, &unk_1EC6DE5A0);
  sub_1D2436A88(v109, type metadata accessor for PlaygroundImage);
  v112 = swift_task_alloc();
  *(v0 + 816) = v112;
  *v112 = v0;
  v112[1] = sub_1D2434584;
  v113 = *(v0 + 272);

  return sub_1D2674838(v111, v113);
}

uint64_t sub_1D2434584()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D24346D8, v3, v2);
}

uint64_t sub_1D24346D8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);

  sub_1D2436A88(v2, type metadata accessor for PlaygroundImage);
  sub_1D2436A88(v3, type metadata accessor for PlaygroundImage);
  v4 = *(v0 + 688) + 1;
  if (v4 == *(v0 + 648))
  {
LABEL_2:

    v5 = *(v0 + 8);
    v6 = *(v0 + 616);

    return v5(v6);
  }

  v8 = (v0 + 88);
  v9 = v0 + 240;
  v10 = *(v0 + 800);
  v11 = v0 + 104;
  p_ivars = &ComposingFooterViewModel.ivars;
  while (1)
  {
    while (1)
    {
      *(v0 + 688) = v4;
      *(v0 + 680) = v10;
      v13 = *(v0 + 632);
      if (v4 >= *(v13 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      sub_1D2436A00(v13 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v4, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 560);
      if (EnumCaseMultiPayload > 3)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
          sub_1D2877E48();
          v84 = sub_1D2877E38();
          *(v0 + 696) = v84;
          v85 = v84;
          v86 = swift_task_alloc();
          *(v0 + 704) = v86;
          *v86 = v0;
          v86[1] = sub_1D24310F0;
          v87 = *(v0 + 320);

          return sub_1D24363B4(v87, v85);
        }

        goto LABEL_6;
      }

      v98 = v11;
      v99 = v9;
      aBlock = v8;
      v16 = *(v0 + 488);
      v17 = *(v0 + 496);
      v18 = *(v0 + 432);
      v19 = *(v0 + 440);
      v94 = *v15;
      v96 = v15[1];
      (*(v19 + 56))(v17, 1, 1, v18);
      sub_1D2871778();
      sub_1D22BD1D0(v17, v16, &unk_1EC6E1D40);
      if ((*(v19 + 48))(v16, 1, v18) == 1)
      {
        sub_1D22BD238(*(v0 + 488), &unk_1EC6E1D40);
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v20 = *(v0 + 528);
        *(v20 + 24) = sub_1D24B63AC(qword_1ED8B0010, v94, v96);
        *(v20 + 32) = v21 & 1;
        v22 = sub_1D27E1420(v94, v96);
        v24 = v23;
      }

      else
      {
        (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 488), *(v0 + 432));
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v92 = *(v0 + 672);
        v25 = *(v0 + 448);
        v26 = *(v0 + 456);
        v27 = *(v0 + 432);
        v28 = *(v0 + 440);
        v29 = qword_1ED8B0010;
        sub_1D28712B8();
        sub_1D2436AE8();
        *(v0 + 184) = sub_1D28782D8();
        *(v0 + 192) = v30;
        *(v0 + 200) = 12369903;
        *(v0 + 208) = 0xA300000000000000;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0xE000000000000000;
        v89 = sub_1D22BD06C();
        v88 = MEMORY[0x1E69E6158];
        v31 = sub_1D2878FA8();
        v33 = v32;

        v34 = sub_1D24B63AC(v29, v31, v33);
        v36 = v35;

        *(v0 + 240) = v34;
        sub_1D2436B40();
        (*(v28 + 16))(v25, v26, v27);
        v37 = sub_1D2878AE8();
        v38 = [v37 length];
        v39 = swift_allocObject();
        *(v39 + 16) = v99;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_1D2436B8C;
        *(v40 + 24) = v39;
        *(v0 + 120) = sub_1D2436B94;
        *(v0 + 128) = v40;
        *(v0 + 88) = MEMORY[0x1E69E9820];
        *(v0 + 96) = 1107296256;
        *(v0 + 104) = sub_1D267502C;
        *(v0 + 112) = &block_descriptor_11;
        v41 = _Block_copy(aBlock);
        sub_1D2870F78();

        [v37 enumerateAttribute:v92 inRange:0 options:v38 usingBlock:{0, v41}];

        _Block_release(v41);
        LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

        if (v38)
        {
          goto LABEL_45;
        }

        v42 = *(v0 + 528);
        v43 = *(v0 + 456);
        v44 = *(v0 + 432);
        v45 = *(v0 + 440);
        v46 = *(v0 + 240);

        *(v42 + 24) = v46;
        *(v42 + 32) = v36 & 1;
        v47 = sub_1D27E0DA0();
        v49 = sub_1D27E1420(v47, v48);
        v24 = v50;

        (*(v45 + 8))(v43, v44);
        v22 = v49;
      }

      v95 = *(v0 + 616);
      v97 = *(v0 + 656);
      v51 = *(v0 + 528);
      v91 = *(v0 + 536);
      v93 = *(v0 + 520);
      v52 = *(v0 + 504);
      v90 = *(v0 + 496);
      v53 = *(v0 + 472);
      v54 = *(v0 + 480);
      v55 = *(v0 + 464);
      v51[1] = v22;
      v51[2] = v24;
      v51[5] = MEMORY[0x1E69E7CC0];
      (*(v53 + 16))(v51 + *(v52 + 36), v54, v55);
      *(v51 + *(v52 + 40)) = 0;
      sub_1D2879838();
      sub_1D2877F38();

      *(v0 + 48) = v103;
      *(v0 + 64) = v104;
      *(v0 + 80) = v105;
      *(v0 + 16) = v101;
      *(v0 + 32) = v102;
      v56 = sub_1D2879818();
      (*(v53 + 8))(v54, v55);
      sub_1D22BD238(v90, &unk_1EC6E1D40);
      *v51 = v56;
      sub_1D2436998(v51, v91, type metadata accessor for Prompt);
      sub_1D2436A00(v91, v93, type metadata accessor for Prompt);
      swift_beginAccess();
      v57 = *(v95 + v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v95 + v97) = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = *(v0 + 656);
        v71 = *(v0 + 616);
        v57 = sub_1D27CC840(0, v57[2] + 1, 1, v57);
        *(v71 + v70) = v57;
      }

      v60 = v57[2];
      v59 = v57[3];
      if (v60 >= v59 >> 1)
      {
        v57 = sub_1D27CC840(v59 > 1, v60 + 1, 1, v57);
      }

      v61 = *(v0 + 656);
      v62 = *(v0 + 616);
      v63 = *(v0 + 536);
      v64 = *(v0 + 520);
      v65 = *(v0 + 512);
      v57[2] = v60 + 1;
      sub_1D2436998(v64, v57 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v60, type metadata accessor for Prompt);
      *(v62 + v61) = v57;
      swift_endAccess();
      v66 = swift_task_alloc();
      *(v66 + 16) = v63;
      swift_beginAccess();
      v67 = sub_1D268223C(sub_1D2436A68, v66);
      if (v10)
      {

        return swift_endAccess();
      }

      v68 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
      if (v68 < v67)
      {
        goto LABEL_44;
      }

      v69 = *(v0 + 536);
      sub_1D278CD34(v67, v68);
      swift_endAccess();

      sub_1D2436A88(v69, type metadata accessor for Prompt);
      v10 = 0;
      v4 = *(v0 + 688) + 1;
      v9 = v99;
      v8 = aBlock;
      v11 = v98;
      p_ivars = (&ComposingFooterViewModel + 48);
      if (v4 == *(v0 + 648))
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
      v72 = swift_task_alloc();
      *(v0 + 824) = v72;
      *v72 = v0;
      v72[1] = sub_1D24353C0;
      v73 = *(v0 + 616);
      v74 = *(v0 + 352);

      return _ConditioningImageFactory.assignConditioningImage(from:to:)(v74, v73);
    }

LABEL_6:
    sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
    v4 = *(v0 + 688) + 1;
    if (v4 == *(v0 + 648))
    {
      goto LABEL_2;
    }
  }

  v75 = *(v0 + 368);
  v76 = *(v0 + 328);
  v77 = *v15;
  *(v0 + 736) = *v15;
  *(v75 + 32) = 0;
  *(v75 + 40) = 0;
  v78 = (v75 + v76[9]);
  *v78 = 0u;
  v78[1] = 0u;
  *(v75 + v76[10]) = xmmword_1D28809A0;
  v79 = v76[11];
  v80 = sub_1D2873AA8();
  *(v0 + 744) = v80;
  v81 = *(v80 - 8);
  v82 = *(v81 + 56);
  *(v0 + 752) = v82;
  *(v0 + 760) = (v81 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v82(v75 + v79, 1, 1, v80);
  *v75 = v77;
  *(v75 + 8) = 3;
  *(v75 + 24) = 1;
  *(v75 + 16) = 0;
  *(v75 + v76[12]) = 0;
  v83 = v77;
  sub_1D2871808();

  return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
}

uint64_t sub_1D24353C0()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D2435514, v3, v2);
}

uint64_t sub_1D2435514()
{
  sub_1D2436A88(*(v0 + 352), type metadata accessor for PlaygroundImage);
  v1 = *(v0 + 688) + 1;
  if (v1 == *(v0 + 648))
  {
LABEL_2:

    v2 = *(v0 + 8);
    v3 = *(v0 + 616);

    return v2(v3);
  }

  v5 = (v0 + 88);
  v6 = v0 + 240;
  v7 = *(v0 + 680);
  v8 = v0 + 104;
  p_ivars = &ComposingFooterViewModel.ivars;
  while (1)
  {
    while (1)
    {
      *(v0 + 688) = v1;
      *(v0 + 680) = v7;
      v10 = *(v0 + 632);
      if (v1 >= *(v10 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      sub_1D2436A00(v10 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 552) + 72) * v1, *(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 560);
      if (EnumCaseMultiPayload > 3)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 560), *(v0 + 392));
          sub_1D2877E48();
          v81 = sub_1D2877E38();
          *(v0 + 696) = v81;
          v82 = v81;
          v83 = swift_task_alloc();
          *(v0 + 704) = v83;
          *v83 = v0;
          v83[1] = sub_1D24310F0;
          v84 = *(v0 + 320);

          return sub_1D24363B4(v84, v82);
        }

        goto LABEL_6;
      }

      v95 = v8;
      v96 = v6;
      aBlock = v5;
      v13 = *(v0 + 488);
      v14 = *(v0 + 496);
      v15 = *(v0 + 432);
      v16 = *(v0 + 440);
      v91 = *v12;
      v93 = v12[1];
      (*(v16 + 56))(v14, 1, 1, v15);
      sub_1D2871778();
      sub_1D22BD1D0(v14, v13, &unk_1EC6E1D40);
      if ((*(v16 + 48))(v13, 1, v15) == 1)
      {
        sub_1D22BD238(*(v0 + 488), &unk_1EC6E1D40);
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v17 = *(v0 + 528);
        *(v17 + 24) = sub_1D24B63AC(qword_1ED8B0010, v91, v93);
        *(v17 + 32) = v18 & 1;
        v19 = sub_1D27E1420(v91, v93);
        v21 = v20;
      }

      else
      {
        (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 488), *(v0 + 432));
        if (p_ivars[425] != -1)
        {
          swift_once();
        }

        v89 = *(v0 + 672);
        v22 = *(v0 + 448);
        v23 = *(v0 + 456);
        v24 = *(v0 + 432);
        v25 = *(v0 + 440);
        v26 = qword_1ED8B0010;
        sub_1D28712B8();
        sub_1D2436AE8();
        *(v0 + 184) = sub_1D28782D8();
        *(v0 + 192) = v27;
        *(v0 + 200) = 12369903;
        *(v0 + 208) = 0xA300000000000000;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0xE000000000000000;
        v86 = sub_1D22BD06C();
        v85 = MEMORY[0x1E69E6158];
        v28 = sub_1D2878FA8();
        v30 = v29;

        v31 = sub_1D24B63AC(v26, v28, v30);
        v33 = v32;

        *(v0 + 240) = v31;
        sub_1D2436B40();
        (*(v25 + 16))(v22, v23, v24);
        v34 = sub_1D2878AE8();
        v35 = [v34 length];
        v36 = swift_allocObject();
        *(v36 + 16) = v96;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1D2436B8C;
        *(v37 + 24) = v36;
        *(v0 + 120) = sub_1D2436B94;
        *(v0 + 128) = v37;
        *(v0 + 88) = MEMORY[0x1E69E9820];
        *(v0 + 96) = 1107296256;
        *(v0 + 104) = sub_1D267502C;
        *(v0 + 112) = &block_descriptor_11;
        v38 = _Block_copy(aBlock);
        sub_1D2870F78();

        [v34 enumerateAttribute:v89 inRange:0 options:v35 usingBlock:{0, v38}];

        _Block_release(v38);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        if (v35)
        {
          goto LABEL_45;
        }

        v39 = *(v0 + 528);
        v40 = *(v0 + 456);
        v41 = *(v0 + 432);
        v42 = *(v0 + 440);
        v43 = *(v0 + 240);

        *(v39 + 24) = v43;
        *(v39 + 32) = v33 & 1;
        v44 = sub_1D27E0DA0();
        v46 = sub_1D27E1420(v44, v45);
        v21 = v47;

        (*(v42 + 8))(v40, v41);
        v19 = v46;
      }

      v92 = *(v0 + 616);
      v94 = *(v0 + 656);
      v48 = *(v0 + 528);
      v88 = *(v0 + 536);
      v90 = *(v0 + 520);
      v49 = *(v0 + 504);
      v87 = *(v0 + 496);
      v50 = *(v0 + 472);
      v51 = *(v0 + 480);
      v52 = *(v0 + 464);
      v48[1] = v19;
      v48[2] = v21;
      v48[5] = MEMORY[0x1E69E7CC0];
      (*(v50 + 16))(v48 + *(v49 + 36), v51, v52);
      *(v48 + *(v49 + 40)) = 0;
      sub_1D2879838();
      sub_1D2877F38();

      *(v0 + 48) = v100;
      *(v0 + 64) = v101;
      *(v0 + 80) = v102;
      *(v0 + 16) = v98;
      *(v0 + 32) = v99;
      v53 = sub_1D2879818();
      (*(v50 + 8))(v51, v52);
      sub_1D22BD238(v87, &unk_1EC6E1D40);
      *v48 = v53;
      sub_1D2436998(v48, v88, type metadata accessor for Prompt);
      sub_1D2436A00(v88, v90, type metadata accessor for Prompt);
      swift_beginAccess();
      v54 = *(v92 + v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v92 + v94) = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = *(v0 + 656);
        v68 = *(v0 + 616);
        v54 = sub_1D27CC840(0, v54[2] + 1, 1, v54);
        *(v68 + v67) = v54;
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_1D27CC840(v56 > 1, v57 + 1, 1, v54);
      }

      v58 = *(v0 + 656);
      v59 = *(v0 + 616);
      v60 = *(v0 + 536);
      v61 = *(v0 + 520);
      v62 = *(v0 + 512);
      v54[2] = v57 + 1;
      sub_1D2436998(v61, v54 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v57, type metadata accessor for Prompt);
      *(v59 + v58) = v54;
      swift_endAccess();
      v63 = swift_task_alloc();
      *(v63 + 16) = v60;
      swift_beginAccess();
      v64 = sub_1D268223C(sub_1D2436A68, v63);
      if (v7)
      {

        return swift_endAccess();
      }

      v65 = *(*(*(v0 + 616) + *(v0 + 664)) + 16);
      if (v65 < v64)
      {
        goto LABEL_44;
      }

      v66 = *(v0 + 536);
      sub_1D278CD34(v64, v65);
      swift_endAccess();

      sub_1D2436A88(v66, type metadata accessor for Prompt);
      v7 = 0;
      v1 = *(v0 + 688) + 1;
      v6 = v96;
      v5 = aBlock;
      v8 = v95;
      p_ivars = (&ComposingFooterViewModel + 48);
      if (v1 == *(v0 + 648))
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D2436998(*(v0 + 560), *(v0 + 352), type metadata accessor for PlaygroundImage);
      v69 = swift_task_alloc();
      *(v0 + 824) = v69;
      *v69 = v0;
      v69[1] = sub_1D24353C0;
      v70 = *(v0 + 616);
      v71 = *(v0 + 352);

      return _ConditioningImageFactory.assignConditioningImage(from:to:)(v71, v70);
    }

LABEL_6:
    sub_1D2436A88(*(v0 + 560), type metadata accessor for PromptElementConceptExtractor.Concept);
    v1 = *(v0 + 688) + 1;
    if (v1 == *(v0 + 648))
    {
      goto LABEL_2;
    }
  }

  v72 = *(v0 + 368);
  v73 = *(v0 + 328);
  v74 = *v12;
  *(v0 + 736) = *v12;
  *(v72 + 32) = 0;
  *(v72 + 40) = 0;
  v75 = (v72 + v73[9]);
  *v75 = 0u;
  v75[1] = 0u;
  *(v72 + v73[10]) = xmmword_1D28809A0;
  v76 = v73[11];
  v77 = sub_1D2873AA8();
  *(v0 + 744) = v77;
  v78 = *(v77 - 8);
  v79 = *(v78 + 56);
  *(v0 + 752) = v79;
  *(v0 + 760) = (v78 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v79(v72 + v76, 1, 1, v77);
  *v72 = v74;
  *(v72 + 8) = 3;
  *(v72 + 24) = 1;
  *(v72 + 16) = 0;
  *(v72 + v73[12]) = 0;
  v80 = v74;
  sub_1D2871808();

  return MEMORY[0x1EEE6DFA0](sub_1D24330CC, 0, 0);
}

uint64_t sub_1D24361D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D24363B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_1D2873CB8();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB560);
  v5 = swift_task_alloc();
  v2[7] = v5;
  v6 = sub_1D2872488();
  v2[8] = v6;
  v2[9] = *(v6 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1D2878568();
  v2[12] = sub_1D2878558();
  type metadata accessor for CGImage(0);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_1D2436578;

  return MEMORY[0x1EEDC93C0](v5, a2);
}

uint64_t sub_1D2436578()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24366B4, v1, v0);
}

uint64_t sub_1D24366B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 56), &qword_1EC6DB560);
    sub_1D2872658();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Cannot resize native image into CGImage", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    (*(v8 + 8))(v7, v9);
    v11 = type metadata accessor for PlaygroundImage();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    (*(v13 + 32))(v12, *(v0 + 56), v14);
    v17 = sub_1D2872478();
    v18 = type metadata accessor for PlaygroundImage();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    v19 = (v15 + v18[9]);
    *v19 = 0u;
    v19[1] = 0u;
    *(v15 + v18[10]) = xmmword_1D28809A0;
    v20 = v18[11];
    v21 = sub_1D2873AA8();
    (*(*(v21 - 8) + 56))(v15 + v20, 1, 1, v21);
    *v15 = v17;
    *(v15 + 8) = 3;
    *(v15 + 24) = 1;
    *(v15 + 16) = 0;
    *(v15 + v18[12]) = 0;
    v22 = v17;
    sub_1D2871808();

    (*(v13 + 8))(v12, v14);
    (*(*(v18 - 1) + 56))(v15, 0, 1, v18);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D2436998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2436A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2436A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2436AE8()
{
  result = qword_1ED8A6CF0;
  if (!qword_1ED8A6CF0)
  {
    sub_1D28712C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CF0);
  }

  return result;
}

unint64_t sub_1D2436B40()
{
  result = qword_1ED89CD40;
  if (!qword_1ED89CD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CD40);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2436BBC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2436C44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

_DWORD *sub_1D2436D74(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(result + v8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D2436F68(uint64_t a1)
{
  swift_getWitnessTable();
  v2 = sub_1D2875D08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  swift_getWitnessTable();
  sub_1D245980C(a1);
  sub_1D245980C(v5);
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D24370DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D24371A8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D2437154()
{
  result = qword_1EC6DB568;
  if (!qword_1EC6DB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB568);
  }

  return result;
}

unint64_t sub_1D24371A8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1D24371C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2437258(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1D28782C8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D24372A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2879098();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D24398A0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Bubble(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1D243735C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC88);
  v3 = *(type metadata accessor for ImageGenerationPerson.SkinTone() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D2888690;
  v7 = v6 + v5;
  v8 = *MEMORY[0x1E69E0170];
  v9 = sub_1D28737A8();
  v10 = *(*(v9 - 8) + 104);
  v10(v7, v8, v9);
  v10(v7 + v4, *MEMORY[0x1E69E01A0], v9);
  v10(v7 + 2 * v4, *MEMORY[0x1E69E0188], v9);
  v10(v7 + 3 * v4, *MEMORY[0x1E69E0178], v9);
  v10(v7 + 4 * v4, *MEMORY[0x1E69E0190], v9);
  v10(v7 + 5 * v4, *MEMORY[0x1E69E0180], v9);
  v1[3] = v6;
  v1[4] = &unk_1F4DBD140;
  v1[2] = a1;
  return v1;
}

uint64_t sub_1D2437540@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 6 && ((0x7Bu >> a1) & 1) != 0)
  {
    v3 = **(&unk_1E83FE800 + a1);
    v4 = sub_1D28737A8();
    (*(*(v4 - 8) + 104))(a2, v3, v4);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1D2437618(char *a1, uint64_t a2)
{
  v5 = sub_1D2873CB8();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1D22BD1D0(a2, v12, &unk_1EC6E33C0);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    v19 = *MEMORY[0x1E69E0170];
    v20 = sub_1D28737A8();
    (*(*(v20 - 8) + 104))(v16, v19, v20);
    if (v18(v12, 1, v13) != 1)
    {
      sub_1D22BD238(v12, &unk_1EC6E33C0);
    }
  }

  else
  {
    sub_1D2439770(v12, v16, type metadata accessor for ImageGenerationPerson.SkinTone);
  }

  result = sub_1D2437B38(v16, *(v2 + 24));
  if ((v22 & 1) == 0 && result <= 5)
  {
    if (result < 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v23 = qword_1F4DBD348[result + 4];
    v24 = *(v2 + 32);
    sub_1D2870F68();
    result = sub_1D2437D20(v17, v24);
    if ((v25 & 1) == 0 && result < *(v23 + 16))
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v26 = v23 + 16 * result;
        v28 = *(v26 + 32);
        v27 = *(v26 + 40);
        sub_1D2870F68();

        v29 = v38;
        sub_1D2872708();
        sub_1D2870F68();
        v30 = sub_1D2873CA8();
        v31 = sub_1D2878A18();
        v32 = v27;

        if (os_log_type_enabled(v30, v31))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v41 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_1D23D7C84(v28, v32, &v41);
          _os_log_impl(&dword_1D226E000, v30, v31, "Emoji lookup succeeded: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1D38A3520](v34, -1, -1);
          MEMORY[0x1D38A3520](v33, -1, -1);
        }

        (*(v39 + 8))(v29, v40);
        sub_1D24399B8(v16, type metadata accessor for ImageGenerationPerson.SkinTone);
        return v28;
      }

LABEL_20:
      __break(1u);
      return result;
    }
  }

  sub_1D2872708();
  v35 = sub_1D2873CA8();
  v36 = sub_1D2878A18();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1D226E000, v35, v36, "Unexpected ImageGenerationPerson configuration", v37, 2u);
    MEMORY[0x1D38A3520](v37, -1, -1);
  }

  (*(v39 + 8))(v8, v40);
  sub_1D24399B8(v16, type metadata accessor for ImageGenerationPerson.SkinTone);
  return 0;
}

uint64_t sub_1D2437B38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone() - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = 0;
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    while (1)
    {
      sub_1D2439950(v9, v6, type metadata accessor for ImageGenerationPerson.SkinTone);
      sub_1D28737A8();
      sub_1D2439848();
      sub_1D2878368();
      sub_1D2878368();
      if (v14[2] == v14[0] && v14[3] == v14[1])
      {
        break;
      }

      v12 = sub_1D2879618();
      sub_1D24399B8(v6, type metadata accessor for ImageGenerationPerson.SkinTone);

      if (v12)
      {
        return v8;
      }

      ++v8;
      v9 += v10;
      if (v7 == v8)
      {
        return 0;
      }
    }

    sub_1D24399B8(v6, type metadata accessor for ImageGenerationPerson.SkinTone);
  }

  return v8;
}

uint64_t sub_1D2437D20(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      if (*(v5 + v4) == 3)
      {
        if (a1 == 3)
        {
          return v4;
        }
      }

      else if (a1 != 3)
      {
        v6 = sub_1D2873768();
        v8 = v7;
        if (v6 == sub_1D2873768() && v8 == v9)
        {

          return v4;
        }

        v11 = sub_1D2879618();

        if (v11)
        {
          return v4;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t sub_1D2437E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = 0;
  if (v8)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    while (1)
    {
      sub_1D2439950(v10, v7, type metadata accessor for Bubble);
      v12 = sub_1D2849278(v7, a1);
      sub_1D24399B8(v7, type metadata accessor for Bubble);
      if (v12)
      {
        break;
      }

      ++v9;
      v10 += v11;
      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  return v9;
}

void sub_1D2437F60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v3 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v3);
  v158 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2873CB8();
  v174 = *(v5 - 8);
  v175 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v166 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v159 = &v148 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v148 - v10;
  v11 = type metadata accessor for CharacterAsset();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v156 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v148 - v18;
  v162 = type metadata accessor for PlaygroundImage();
  v163 = *(v162 - 8);
  v19 = MEMORY[0x1EEE9AC00](v162);
  v153 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v148 - v21;
  v22 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v148 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v178 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v168 = &v148 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v180 = &v148 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v154 = &v148 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v164 = &v148 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v148 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v148 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v148 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v172 = &v148 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v148 - v49;
  v173 = v12;
  v51 = *(v12 + 56);
  v176 = v11;
  v152 = v12 + 56;
  v151 = v51;
  v51(&v148 - v49, 1, 1, v11);
  v185 = v23;
  v52 = *(v23 + 56);
  v52(v45, 1, 1, v22);
  v182 = *(a1 + *(v3 + 40));
  v186 = v22;
  v171 = v52;
  if (v182 == 1)
  {
    sub_1D22BD238(v45, &unk_1EC6E33C0);
    v53 = *MEMORY[0x1E69E0170];
    v54 = sub_1D28737A8();
    (*(*(v54 - 8) + 104))(v45, v53, v54);
    v52(v45, 0, 1, v22);
    v55 = 2;
  }

  else
  {
    v55 = 4;
  }

  v56 = *(a1 + *(v3 + 48) + 8);
  v184 = v45;
  if (!v56)
  {
    v73 = 0;
    v74 = v186;
LABEL_19:
    v75 = v180;
    goto LABEL_20;
  }

  v177 = a1;
  v167 = v50;
  v187[0] = 0;
  v187[1] = 0xE000000000000000;
  sub_1D2877F48();
  v57 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v58 = sub_1D2878068();

  v59 = [v57 initWithString_];

  if (!v59)
  {
    v73 = 0;
    v50 = v167;
    v45 = v184;
    a1 = v177;
    v74 = v186;
    goto LABEL_19;
  }

  v169 = v59;
  v60 = v59;
  if (![v60 _isSingleEmoji])
  {

    v50 = v167;
    v45 = v184;
    a1 = v177;
    v74 = v186;
    v73 = v169;
    goto LABEL_19;
  }

  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v61 = qword_1ED8B0010;
  v62 = sub_1D2878068();
  v63 = [objc_opt_self() emojiTokenWithString:v62 localeData:v61];

  v45 = v184;
  v64 = v171;
  if (v63)
  {
    v65 = [v63 gender];
    v66 = v65;
    v149 = v65 > 3;
    v67 = 0x2010004u >> (8 * v65);
    if (v65 > 3)
    {
      v67 = 4;
    }

    v150 = v67;
    v182 = [v63 isPerson];
    if ([v63 supportsSkinToneVariants])
    {
      v68 = [v63 skinTone];

      sub_1D22BD238(v45, &unk_1EC6E33C0);
      sub_1D2437540(v68, v40);
      v69 = v186;
      v70 = *(v185 + 48);
      if (v70(v40, 1, v186) == 1)
      {
        v71 = *MEMORY[0x1E69E0170];
        v72 = sub_1D28737A8();
        (*(*(v72 - 8) + 104))(v43, v71, v72);
        if (v70(v40, 1, v69) != 1)
        {
          sub_1D22BD238(v40, &unk_1EC6E33C0);
        }
      }

      else
      {
        sub_1D2439770(v40, v43, type metadata accessor for ImageGenerationPerson.SkinTone);
      }

      v78 = 0;
    }

    else
    {
      sub_1D22BD238(v45, &unk_1EC6E33C0);

      v78 = 1;
    }

    v79 = v186;
    v64(v43, v78, 1, v186);
    sub_1D24397D8(v43, v45);
    v80 = v164;
    sub_1D22BD1D0(v45, v164, &unk_1EC6E33C0);
    v81 = *(v185 + 48);
    LODWORD(v79) = v81(v80, 1, v79);
    sub_1D22BD238(v80, &unk_1EC6E33C0);
    if (v79 == 1)
    {
      v50 = v167;
      a1 = v177;
      v73 = v169;
      if (v182)
      {
        sub_1D22BD238(v45, &unk_1EC6E33C0);
        v82 = *MEMORY[0x1E69E0170];
        v83 = sub_1D28737A8();
        (*(*(v83 - 8) + 104))(v45, v82, v83);
        v182 = 1;
        v74 = v186;
        v64(v45, 0, 1, v186);
LABEL_31:
        v75 = v180;
        v55 = v150;
LABEL_20:
        v76 = v179;
        v77 = v183;
        if (v55 == 4)
        {
          if (!v182)
          {
            goto LABEL_49;
          }

LABEL_47:
          v97 = v172;
          sub_1D22BD1D0(v50, v172, &unk_1EC6DDDA0);
          if ((*(v173 + 48))(v97, 1, v176) == 1)
          {
            sub_1D22BD238(v97, &unk_1EC6DDDA0);
            goto LABEL_49;
          }

          v114 = v97;
          v115 = v165;
          sub_1D2439770(v114, v165, type metadata accessor for CharacterAsset);
          if (v73)
          {
            v116 = v73;
            v117 = v160;
            sub_1D2872708();
            v118 = v116;
            v119 = v73;
            v120 = sub_1D2873CA8();
            v121 = sub_1D2878A38();

            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              v123 = v50;
              v124 = swift_slowAlloc();
              *v122 = 138412290;
              *(v122 + 4) = v118;
              *v124 = v119;
              v125 = v118;
              _os_log_impl(&dword_1D226E000, v120, v121, "Personalize emoji %@ using character", v122, 0xCu);
              sub_1D22BD238(v124, qword_1EC6DA930);
              v126 = v124;
              v50 = v123;
              MEMORY[0x1D38A3520](v126, -1, -1);
              MEMORY[0x1D38A3520](v122, -1, -1);
            }

            (*(v174 + 8))(v117, v175);
          }

          else
          {
            v127 = v159;
            sub_1D2872708();
            v128 = v158;
            sub_1D2439950(a1, v158, type metadata accessor for CuratedPrompt);
            v129 = sub_1D2873CA8();
            v130 = sub_1D2878A38();
            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v187[0] = v132;
              *v131 = 136315138;
              v133 = v50;
              v134 = *(v128 + 16);
              v135 = *(v128 + 24);
              sub_1D2870F68();
              sub_1D24399B8(v128, type metadata accessor for CuratedPrompt);
              v136 = sub_1D23D7C84(v134, v135, v187);

              *(v131 + 4) = v136;
              _os_log_impl(&dword_1D226E000, v129, v130, "Personalize genmoji %s using default character", v131, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v132);
              MEMORY[0x1D38A3520](v132, -1, -1);
              MEMORY[0x1D38A3520](v131, -1, -1);

              (*(v174 + 8))(v127, v175);
              sub_1D22BD238(v184, &unk_1EC6E33C0);
              v137 = v133;
LABEL_66:
              sub_1D22BD238(v137, &unk_1EC6DDDA0);
              v112 = v181;
              sub_1D2439770(v115, v181, type metadata accessor for CharacterAsset);
              v113 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
LABEL_67:
              swift_storeEnumTagMultiPayload();
              (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
              return;
            }

            sub_1D24399B8(v128, type metadata accessor for CuratedPrompt);
            (*(v174 + 8))(v127, v175);
          }

          sub_1D22BD238(v184, &unk_1EC6E33C0);
          v137 = v50;
          goto LABEL_66;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v50 = v167;
      a1 = v177;
      v73 = v169;
      if (v182)
      {
        v182 = 1;
        v74 = v186;
        goto LABEL_31;
      }
    }

    v84 = v149 | (1u >> (v66 & 0xF));
    v74 = v186;
    if (v84)
    {
      goto LABEL_49;
    }

    v85 = v154;
    sub_1D22BD1D0(v45, v154, &unk_1EC6E33C0);
    v182 = v81(v85, 1, v186) != 1;
    v74 = v186;
    v73 = v169;
    sub_1D22BD238(v85, &unk_1EC6E33C0);
    v76 = v179;
    v75 = v180;
    v77 = v183;
    v55 = v150;
LABEL_34:
    sub_1D22BD1D0(v45, v75, &unk_1EC6E33C0);
    if ((*(v185 + 48))(v75, 1, v74) == 1)
    {
      sub_1D22BD238(v75, &unk_1EC6E33C0);
      if (v182)
      {
        goto LABEL_47;
      }

LABEL_49:
      v98 = v178;
      sub_1D22BD1D0(v45, v178, &unk_1EC6E33C0);
      if ((*(v185 + 48))(v98, 1, v74) == 1)
      {

        sub_1D22BD238(v45, &unk_1EC6E33C0);
        sub_1D22BD238(v50, &unk_1EC6DDDA0);
        sub_1D22BD238(v98, &unk_1EC6E33C0);
        v99 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
        (*(*(v99 - 8) + 56))(v181, 1, 1, v99);
        return;
      }

      v100 = v170;
      sub_1D2439770(v98, v170, type metadata accessor for ImageGenerationPerson.SkinTone);
      if (v73)
      {
        v101 = v73;
        v102 = v166;
        sub_1D2872708();
        v103 = v101;
        v104 = v73;
        v105 = sub_1D2873CA8();
        v106 = sub_1D2878A38();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = v50;
          v109 = swift_slowAlloc();
          *v107 = 138412290;
          *(v107 + 4) = v103;
          *v109 = v104;
          v110 = v103;
          _os_log_impl(&dword_1D226E000, v105, v106, "Personalize emoji %@ using skin tone", v107, 0xCu);
          sub_1D22BD238(v109, qword_1EC6DA930);
          v111 = v109;
          v50 = v108;
          MEMORY[0x1D38A3520](v111, -1, -1);
          MEMORY[0x1D38A3520](v107, -1, -1);
        }

        (*(v174 + 8))(v102, v175);
        v45 = v184;
      }

      sub_1D22BD238(v45, &unk_1EC6E33C0);
      sub_1D22BD238(v50, &unk_1EC6DDDA0);
      v112 = v181;
      sub_1D2439770(v100, v181, type metadata accessor for ImageGenerationPerson.SkinTone);
      v113 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
      goto LABEL_67;
    }

    v169 = v73;
    sub_1D2439770(v75, v77, type metadata accessor for ImageGenerationPerson.SkinTone);
    LOBYTE(v187[0]) = v55;
    v86 = v168;
    sub_1D2439950(v77, v168, type metadata accessor for ImageGenerationPerson.SkinTone);
    v171(v86, 0, 1, v74);
    v87 = sub_1D2437618(v187, v86);
    v89 = v88;
    sub_1D22BD238(v86, &unk_1EC6E33C0);
    if (!v89)
    {
      sub_1D24399B8(v77, type metadata accessor for ImageGenerationPerson.SkinTone);
      goto LABEL_46;
    }

    v177 = a1;
    v90 = sub_1D2437258(v87, v89);
    v92 = v91;

    if (v92)
    {
      sub_1D23C771C();
      v93 = v161;
      sub_1D284E51C(v90, v92, v161);

      v94 = *(v163 + 48);
      v95 = v162;
      if (v94(v93, 1, v162) != 1)
      {
        sub_1D2439770(v93, v76, type metadata accessor for PlaygroundImage);
        v138 = v157;
        v139 = v183;
        sub_1D2439950(v183, &v157[*(v155 + 20)], type metadata accessor for ImageGenerationPerson.SkinTone);
        *v138 = v55;
        type metadata accessor for AppearanceImageRenderer();
        swift_initStackObject();
        v140 = v76;
        v141 = v156;
        sub_1D268BD98(v138, v156);
        sub_1D24399B8(v139, type metadata accessor for ImageGenerationPerson.SkinTone);
        v142 = v94(v141, 1, v95);
        v143 = v95;
        a1 = v177;
        if (v142 != 1)
        {
          sub_1D22BD238(v50, &unk_1EC6DDDA0);
          v144 = v141;
          v145 = v153;
          sub_1D2439770(v144, v153, type metadata accessor for PlaygroundImage);
          sub_1D2439770(v140, v50, type metadata accessor for PlaygroundImage);
          v146 = v176;
          v147 = *(v176 + 20);
          sub_1D2439770(v145, &v50[v147], type metadata accessor for PlaygroundImage);
          (*(v163 + 56))(&v50[v147], 0, 1, v143);
          sub_1D2439770(v138, &v50[*(v146 + 24)], type metadata accessor for CharacterRecipe);
          v50[*(v146 + 28)] = 1;
          v151(v50, 0, 1, v146);
          goto LABEL_45;
        }

        sub_1D24399B8(v138, type metadata accessor for CharacterRecipe);
        sub_1D24399B8(v140, type metadata accessor for PlaygroundImage);
        v96 = v141;
LABEL_44:
        sub_1D22BD238(v96, &unk_1EC6DE5A0);
LABEL_45:
        v45 = v184;
LABEL_46:
        v74 = v186;
        v73 = v169;
        if (v182)
        {
          goto LABEL_47;
        }

        goto LABEL_49;
      }

      sub_1D24399B8(v183, type metadata accessor for ImageGenerationPerson.SkinTone);
    }

    else
    {
      sub_1D24399B8(v183, type metadata accessor for ImageGenerationPerson.SkinTone);
      v93 = v161;
      (*(v163 + 56))(v161, 1, 1, v162);
    }

    a1 = v177;
    v96 = v93;
    goto LABEL_44;
  }

  __break(1u);
}

uint64_t sub_1D243966C()
{

  return swift_deallocClassInstance();
}

void *sub_1D24396D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = sub_1D243735C(a1);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for GenericCharacterManager.AutomaticPersonalization()
{
  result = qword_1ED8A06B8;
  if (!qword_1ED8A06B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2439770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24397D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2439848()
{
  result = qword_1EC6D8BA8;
  if (!qword_1EC6D8BA8)
  {
    sub_1D28737A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8BA8);
  }

  return result;
}

uint64_t sub_1D24398A0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for Bubble(0);
    return sub_1D2439950(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for Bubble);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D2439950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24399B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D2439A18()
{
  sub_1D2439AC4(319, qword_1ED8A45E0, type metadata accessor for CharacterAsset);
  if (v0 <= 0x3F)
  {
    sub_1D2439AC4(319, &qword_1ED8A5CB0, type metadata accessor for ImageGenerationPerson.SkinTone);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D2439AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2439B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 4)
  {
    v8 = *(i - 1) == a1 && *i == a2;
    if (v8 || (sub_1D2879618() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1D2439BA0(uint64_t a1)
{
  v3 = type metadata accessor for DebugSettingsView.DiffusionSpecRow(0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v39 = v1;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1D23D872C(0, v5, 0);
  v6 = v41;
  v7 = a1 + 64;
  result = sub_1D2879098();
  v9 = result;
  v10 = 0;
  v40 = *(a1 + 36);
  v33 = a1 + 72;
  v34 = v5;
  v35 = a1 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    if (v40 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = (*(a1 + 48) + 16 * v9);
    v14 = a1;
    v15 = v6;
    v17 = *v13;
    v16 = v13[1];
    sub_1D2870F68();
    v18 = sub_1D2870F68();
    v19 = v39;
    v20 = sub_1D2439EE4(v18);
    v39 = v19;
    v21 = *(v38 + 28);
    v22 = v36;
    *v36 = v17;
    v22[1] = v16;
    v6 = v15;
    v23 = v22;
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + v21) = v20;
    sub_1D2871808();

    v41 = v6;
    v25 = *(v6 + 16);
    v24 = *(v6 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D23D872C(v24 > 1, v25 + 1, 1);
      v6 = v41;
    }

    *(v6 + 16) = v25 + 1;
    result = sub_1D24591E0(v23, v6 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25, type metadata accessor for DebugSettingsView.DiffusionSpecRow);
    v11 = 1 << *(v14 + 32);
    if (v9 >= v11)
    {
      goto LABEL_24;
    }

    a1 = v14;
    v7 = v35;
    v26 = *(v35 + 8 * v12);
    if ((v26 & (1 << v9)) == 0)
    {
      goto LABEL_25;
    }

    if (v40 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v9 & 0x3F));
    if (v27)
    {
      v11 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v33 + 8 * v12);
      while (v29 < (v11 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1D2459248(v9, v40, 0);
          v11 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1D2459248(v9, v40, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v34)
    {
      return v6;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D2439EE4(uint64_t a1)
{
  v3 = type metadata accessor for DebugSettingsView.DiffusionSpecRow(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v30[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D23D872C(0, v6, 0);
  v7 = v37;
  v8 = a1 + 64;
  result = sub_1D2879098();
  v10 = result;
  v11 = 0;
  v36 = *(a1 + 36);
  v31 = a1 + 72;
  v32 = v6;
  v33 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v14 = (*(a1 + 48) + 16 * v10);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(a1 + 56) + 16 * v10);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v35 + 28);
    *v5 = v16;
    v5[1] = v15;
    v5[2] = v18;
    v5[3] = v19;
    *(v5 + v20) = 0;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2871808();
    v37 = v7;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D23D872C(v21 > 1, v22 + 1, 1);
      v7 = v37;
    }

    *(v7 + 16) = v22 + 1;
    result = sub_1D24591E0(v5, v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, type metadata accessor for DebugSettingsView.DiffusionSpecRow);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v8 = v33;
    v23 = *(v33 + 8 * v13);
    if ((v23 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v10 & 0x3F));
    if (v24)
    {
      v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v13 << 6;
      v26 = v13 + 1;
      v27 = (v31 + 8 * v13);
      while (v26 < (v12 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D2459248(v10, v36, 0);
          v12 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1D2459248(v10, v36, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v32)
    {
      return v7;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D243A234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D22BD1D0(*a1, a2, &qword_1EC6DB8C0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA38);
  sub_1D22BD1D0(a1[1], a2 + v4[12], &qword_1EC6DB898);
  sub_1D22BD1D0(a1[2], a2 + v4[16], &qword_1EC6DB870);
  sub_1D22BD1D0(a1[3], a2 + v4[20], &qword_1EC6DB848);
  sub_1D22BD1D0(a1[4], a2 + v4[24], &qword_1EC6DB848);
  sub_1D22BD1D0(a1[5], a2 + v4[28], &qword_1EC6DB820);
  sub_1D22BD1D0(a1[6], a2 + v4[32], &qword_1EC6DB7F8);
  sub_1D22BD1D0(a1[7], a2 + v4[36], &qword_1EC6DB8C0);
  sub_1D22BD1D0(a1[8], a2 + v4[40], &qword_1EC6DB7D0);
  sub_1D22BD1D0(a1[9], a2 + v4[44], &qword_1EC6DB7A8);
  sub_1D22BD1D0(a1[10], a2 + v4[48], &qword_1EC6DB780);
  sub_1D22BD1D0(a1[11], a2 + v4[52], &qword_1EC6DB758);
  sub_1D22BD1D0(a1[12], a2 + v4[56], &qword_1EC6DB730);
  sub_1D22BD1D0(a1[13], a2 + v4[60], &qword_1EC6DB848);
  sub_1D22BD1D0(a1[14], a2 + v4[64], &qword_1EC6DB7D0);
  sub_1D22BD1D0(a1[15], a2 + v4[68], &qword_1EC6DB708);
  sub_1D22BD1D0(a1[16], a2 + v4[72], &qword_1EC6DB8C0);
  sub_1D22BD1D0(a1[17], a2 + v4[76], &qword_1EC6DB8C0);
  sub_1D22BD1D0(a1[18], a2 + v4[80], &qword_1EC6DB848);
  sub_1D22BD1D0(a1[19], a2 + v4[84], &qword_1EC6DB6D8);
  sub_1D22BD1D0(a1[20], a2 + v4[88], &qword_1EC6DB848);
  sub_1D22BD1D0(a1[21], a2 + v4[92], &qword_1EC6DB6B0);
  sub_1D22BD1D0(a1[22], a2 + v4[96], &qword_1EC6DB898);
  sub_1D22BD1D0(a1[23], a2 + v4[100], &qword_1EC6DB8C0);
  return sub_1D22BD1D0(a1[24], a2 + v4[104], &qword_1EC6DB688);
}

uint64_t sub_1D243A57C()
{
  sub_1D2459778();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D243A5B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CDCA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D243A604()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DebugSettingsView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1D2870F78();
  if ((v7 & 1) == 0)
  {
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t DebugSettingsView.body.getter@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB570);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v25 = v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v8 = swift_allocBox();
  v24[1] = v8;
  sub_1D243A604();
  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2457A94(&qword_1EC6D8380, type metadata accessor for ObservableDebugSettings);
  sub_1D2877638();
  v27 = v1;
  v28 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB580);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB588);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB590);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB598);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5A0);
  v13 = sub_1D243B334();
  v14 = sub_1D22BD06C();
  v29 = v12;
  v30 = MEMORY[0x1E69E6158];
  v31 = v13;
  v32 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v11;
  v30 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5C0);
  v18 = sub_1D22BB9D8(&qword_1EC6DB5C8, &qword_1EC6DB5C0);
  v29 = v17;
  v30 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v29 = v9;
  v30 = v10;
  v31 = v16;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F78();
  sub_1D22BB9D8(&qword_1EC6DB5D0, &qword_1EC6DB570);
  v20 = *(v3 + 16);
  v21 = v25;
  v20(v25, v5, v2);
  v22 = *(v3 + 8);
  v22(v5, v2);
  v20(v26, v21, v2);
  v22(v21, v2);
}

uint64_t sub_1D243AB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a3;
  v55 = sub_1D2875B98();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5A0);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v45 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB598);
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB588);
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v45 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB580);
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v45 - v19;
  v62 = a1;
  v63 = a2;
  v47 = a1;
  sub_1D2876318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB608);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB610);
  v21 = sub_1D2457AE4();
  v64 = v20;
  v65 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1D24CC0AC();
  sub_1D2877828();
  sub_1D22BB9D8(&qword_1EC6DB5B0, &qword_1EC6DB5B8);
  sub_1D2876E38();
  (*(v8 + 8))(v10, v7);
  v22 = (a1 + *(type metadata accessor for DebugSettingsView(0) + 28));
  v23 = *v22;
  v24 = *(v22 + 2);
  v68 = v23;
  v69 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB640);
  sub_1D2877328();
  v64 = 0x5320686372616553;
  v65 = 0xEF73676E69747465;
  sub_1D2875B88();
  v43 = sub_1D243B334();
  v44 = sub_1D22BD06C();
  v25 = MEMORY[0x1E69E6158];
  v26 = v49;
  sub_1D2876788();

  (*(v54 + 8))(v6, v55);
  sub_1D22BD238(v12, &qword_1EC6DB5A0);
  sub_1D2875798();
  v64 = v26;
  v65 = v25;
  v66 = v43;
  v67 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v48;
  v29 = v51;
  v30 = v46;
  sub_1D28769E8();

  (*(v52 + 8))(v30, v29);
  v61 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB590);
  v64 = v29;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5C0);
  v32 = sub_1D22BB9D8(&qword_1EC6DB5C8, &qword_1EC6DB5C0);
  v64 = v31;
  v65 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v53;
  v34 = v58;
  sub_1D2876F08();
  (*(v59 + 8))(v28, v34);
  v35 = v50;
  v36 = *(v50 + 16);
  v37 = v56;
  v38 = v33;
  v39 = v33;
  v40 = v57;
  v36(v56, v38, v57);
  v41 = *(v35 + 8);
  v41(v39, v40);
  v36(v60, v37, v40);
  return (v41)(v37, v40);
}

unint64_t sub_1D243B334()
{
  result = qword_1EC6DB5A8;
  if (!qword_1EC6DB5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5A0);
    sub_1D22BB9D8(&qword_1EC6DB5B0, &qword_1EC6DB5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB5A8);
  }

  return result;
}

uint64_t sub_1D243B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB610);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB630);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB608);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v32 = &v32 - v20;
  v40 = a1;
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB648);
  sub_1D22BB9D8(&qword_1EC6DB650, &qword_1EC6DB648);
  sub_1D2876508();
  v21 = (a1 + *(type metadata accessor for DebugSettingsView(0) + 28));
  v22 = *v21;
  v23 = *(v21 + 2);
  v44 = v22;
  v45 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB640);
  sub_1D2877308();
  v25 = v42;
  v24 = v43;

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v26 != 0;
  v39 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB628);
  sub_1D2457B68();
  v27 = v33;
  sub_1D2877168();
  sub_1D2457AE4();
  sub_1D2876C08();
  sub_1D22BD238(v27, &qword_1EC6DB610);
  v28 = *(v10 + 16);
  v28(v15, v12, v9);
  v29 = *(v10 + 8);
  v29(v12, v9);
  v28(v18, v15, v9);
  v29(v15, v9);
  (*(v35 + 8))(v8, v36);
  v30 = v32;
  v28(v32, v18, v9);
  v29(v18, v9);
  v28(v37, v30, v9);
  return (v29)(v30, v9);
}

uint64_t sub_1D243B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v587 = a3;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB668);
  MEMORY[0x1EEE9AC00](v586);
  v521 = v480 - v5;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB670);
  MEMORY[0x1EEE9AC00](v582);
  v584 = v480 - v6;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB678);
  v502 = *(v585 - 8);
  MEMORY[0x1EEE9AC00](v585);
  v501 = v480 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB680);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v583 = v480 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB688);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v637 = v480 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v635 = v480 - v13;
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB690);
  MEMORY[0x1EEE9AC00](v581);
  v520 = v480 - v14;
  v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB698);
  MEMORY[0x1EEE9AC00](v577);
  v579 = v480 - v15;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6A0);
  v500 = *(v580 - 8);
  MEMORY[0x1EEE9AC00](v580);
  v499 = v480 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v578 = v480 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v636 = v480 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v633 = v480 - v22;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6B8);
  MEMORY[0x1EEE9AC00](v572);
  v519 = v480 - v23;
  v573 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6C0);
  MEMORY[0x1EEE9AC00](v573);
  v575 = v480 - v24;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6C8);
  v498 = *(v576 - 8);
  MEMORY[0x1EEE9AC00](v576);
  v497 = v480 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6D0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v574 = v480 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6D8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v634 = v480 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v658 = v480 - v31;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6E0);
  v504 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517);
  v503 = v480 - v32;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6E8);
  MEMORY[0x1EEE9AC00](v512);
  v515 = v480 - v33;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6F0);
  v482 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v481 = v480 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB6F8);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v514 = v480 - v36;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB700);
  v567 = *(v568 - 8);
  MEMORY[0x1EEE9AC00](v568);
  v513 = v480 - v37;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v638 = *(v594 - 8);
  MEMORY[0x1EEE9AC00](v594);
  v518 = v480 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v593 = v480 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB708);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v632 = v480 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v657 = v480 - v44;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB710);
  MEMORY[0x1EEE9AC00](v566);
  v511 = v480 - v45;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB718);
  MEMORY[0x1EEE9AC00](v562);
  v564 = v480 - v46;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB720);
  v496 = *(v565 - 8);
  MEMORY[0x1EEE9AC00](v565);
  v495 = v480 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB728);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v563 = v480 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB730);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v631 = v480 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v656 = v480 - v53;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB738);
  MEMORY[0x1EEE9AC00](v560);
  v510 = v480 - v54;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB740);
  MEMORY[0x1EEE9AC00](v555);
  v557 = v480 - v55;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB748);
  v494 = *(v559 - 8);
  MEMORY[0x1EEE9AC00](v559);
  v493 = v480 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB750);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v556 = v480 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB758);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v630 = v480 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v655 = v480 - v62;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB760);
  MEMORY[0x1EEE9AC00](v554);
  v509 = v480 - v63;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB768);
  MEMORY[0x1EEE9AC00](v549);
  v551 = v480 - v64;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB770);
  v492 = *(v552 - 8);
  MEMORY[0x1EEE9AC00](v552);
  v491 = v480 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB778);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v550 = v480 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB780);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v629 = v480 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v654 = v480 - v71;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB788);
  MEMORY[0x1EEE9AC00](v548);
  v508 = v480 - v72;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB790);
  MEMORY[0x1EEE9AC00](v544);
  v546 = v480 - v73;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB798);
  v490 = *(v547 - 8);
  MEMORY[0x1EEE9AC00](v547);
  v489 = v480 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7A0);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v545 = v480 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7A8);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v628 = v480 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v653 = v480 - v80;
  v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7B0);
  MEMORY[0x1EEE9AC00](v603);
  v588 = v480 - v81;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7B8);
  MEMORY[0x1EEE9AC00](v600);
  v601 = v480 - v82;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7C0);
  v523 = *(v602 - 8);
  MEMORY[0x1EEE9AC00](v602);
  v522 = v480 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7C8);
  MEMORY[0x1EEE9AC00](v84 - 8);
  v561 = v480 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v596 = v480 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7D0);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v626 = v480 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v627 = v480 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v651 = v480 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v652 = v480 - v95;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7D8);
  MEMORY[0x1EEE9AC00](v543);
  v507 = v480 - v96;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7E0);
  MEMORY[0x1EEE9AC00](v539);
  v541 = v480 - v97;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7E8);
  v488 = *(v542 - 8);
  MEMORY[0x1EEE9AC00](v542);
  v487 = v480 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7F0);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v540 = v480 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB7F8);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v625 = v480 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v650 = v480 - v104;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB800);
  MEMORY[0x1EEE9AC00](v538);
  v506 = v480 - v105;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB808);
  MEMORY[0x1EEE9AC00](v534);
  v536 = v480 - v106;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB810);
  v486 = *(v537 - 8);
  MEMORY[0x1EEE9AC00](v537);
  v485 = v480 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB818);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v535 = v480 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB820);
  MEMORY[0x1EEE9AC00](v110 - 8);
  v624 = v480 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v649 = v480 - v113;
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v666);
  v659 = v480 - v114;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB830);
  MEMORY[0x1EEE9AC00](v663);
  v664 = v480 - v115;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB838);
  v598 = *(v665 - 8);
  MEMORY[0x1EEE9AC00](v665);
  v597 = v480 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v569 = v480 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119);
  v591 = v480 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v553 = v480 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v595 = v480 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v532 = v480 - v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB848);
  MEMORY[0x1EEE9AC00](v127 - 8);
  v619 = v480 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129);
  v620 = v480 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v621 = v480 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v623 = v480 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v622 = v480 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v617 = v480 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v645 = v480 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v646 = v480 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v648 = v480 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v647 = v480 - v146;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB850);
  MEMORY[0x1EEE9AC00](v531);
  v505 = v480 - v147;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB858);
  MEMORY[0x1EEE9AC00](v527);
  v529 = v480 - v148;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB860);
  v484 = *(v530 - 8);
  MEMORY[0x1EEE9AC00](v530);
  v483 = v480 - v149;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB868);
  MEMORY[0x1EEE9AC00](v150 - 8);
  v528 = v480 - v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB870);
  MEMORY[0x1EEE9AC00](v152 - 8);
  v618 = v480 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v154);
  v644 = v480 - v155;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB878);
  MEMORY[0x1EEE9AC00](v607);
  v589 = v480 - v156;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB880);
  MEMORY[0x1EEE9AC00](v604);
  v605 = v480 - v157;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB888);
  v525 = *(v606 - 8);
  MEMORY[0x1EEE9AC00](v606);
  v524 = v480 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB890);
  MEMORY[0x1EEE9AC00](v159 - 8);
  v570 = v480 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161);
  v526 = v480 - v162;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB898);
  MEMORY[0x1EEE9AC00](v163 - 8);
  v615 = v480 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165);
  v616 = v480 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v610 = v480 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v643 = v480 - v170;
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8A0);
  MEMORY[0x1EEE9AC00](v668);
  v172 = v480 - v171;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8A8);
  MEMORY[0x1EEE9AC00](v667);
  v174 = v480 - v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8B0);
  v599 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v177 = v480 - v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v571 = v480 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v180);
  v590 = v480 - v181;
  MEMORY[0x1EEE9AC00](v182);
  v558 = v480 - v183;
  MEMORY[0x1EEE9AC00](v184);
  v533 = v480 - v185;
  MEMORY[0x1EEE9AC00](v186);
  v188 = v480 - v187;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8C0);
  MEMORY[0x1EEE9AC00](v189 - 8);
  v609 = v480 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v191);
  v612 = v480 - v192;
  MEMORY[0x1EEE9AC00](v193);
  v611 = v480 - v194;
  MEMORY[0x1EEE9AC00](v195);
  v613 = v480 - v196;
  MEMORY[0x1EEE9AC00](v197);
  v614 = v480 - v198;
  MEMORY[0x1EEE9AC00](v199);
  v608 = v480 - v200;
  MEMORY[0x1EEE9AC00](v201);
  v640 = v480 - v202;
  MEMORY[0x1EEE9AC00](v203);
  v639 = v480 - v204;
  MEMORY[0x1EEE9AC00](v205);
  v641 = v480 - v206;
  MEMORY[0x1EEE9AC00](v207);
  v642 = v480 - v208;
  v675 = a1;
  v676 = a2;
  v209 = *(type metadata accessor for DebugSettingsView(0) + 28);
  v669 = a1;
  v210 = (a1 + v209);
  v211 = *v210;
  v212 = v210[1];
  v213 = v210[2];
  v674 = v211;
  *&v679 = v211;
  v673 = v212;
  *(&v679 + 1) = v212;
  v672 = v213;
  v680 = v213;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB640);
  sub_1D2877308();
  v214 = v677;

  v215 = HIBYTE(*(&v214 + 1)) & 0xFLL;
  if ((*(&v214 + 1) & 0x2000000000000000) == 0)
  {
    v215 = v214 & 0xFFFFFFFFFFFFLL;
  }

  v670 = a2;
  v662 = v175;
  v661 = v174;
  v592 = v177;
  if (v215)
  {
    v216 = a2;
    sub_1D2442BA8(v669, v172);
    sub_1D22BD1D0(v172, v174, &qword_1EC6DB8A0);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    sub_1D2875AF8();
    sub_1D22BD238(v172, &qword_1EC6DB8A0);
  }

  else
  {
    *&v679 = 0xD000000000000010;
    *(&v679 + 1) = 0x80000001D28B6DE0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    v480[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v216 = v670;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    sub_1D28775D8();
    v217 = v599;
    (*(v599 + 16))(v174, v177, v175);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D2875AF8();
    (*(v217 + 8))(v177, v175);
  }

  v218 = sub_1D22EC9BC(v188, v642, &qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v218);
  v219 = v669;
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v220 = v677;

  v221 = HIBYTE(*(&v220 + 1)) & 0xFLL;
  if ((*(&v220 + 1) & 0x2000000000000000) == 0)
  {
    v221 = v220 & 0xFFFFFFFFFFFFLL;
  }

  v660 = v172;
  if (v221)
  {
    v222 = v589;
    sub_1D2443700(v216, v589);
    sub_1D22BD1D0(v222, v605, &qword_1EC6DB878);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB8D8, &qword_1EC6DB888, &unk_1D2888C78, sub_1D2457E20);
    sub_1D2457E20();
    v223 = v526;
    sub_1D2875AF8();
    sub_1D22BD238(v222, &qword_1EC6DB878);
  }

  else
  {
    v679 = xmmword_1D2888710;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D2457E20();
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v224 = v524;
    v216 = v670;
    sub_1D28775D8();
    v225 = v525;
    v226 = v606;
    (*(v525 + 16))(v605, v224, v606);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB8D8, &qword_1EC6DB888, &unk_1D2888C78, sub_1D2457E20);
    v223 = v526;
    sub_1D2875AF8();
    (*(v225 + 8))(v224, v226);
  }

  v227 = sub_1D22EC9BC(v223, v643, &qword_1EC6DB890);
  MEMORY[0x1EEE9AC00](v227);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v228 = v677;

  v229 = HIBYTE(*(&v228 + 1)) & 0xFLL;
  if ((*(&v228 + 1) & 0x2000000000000000) == 0)
  {
    v229 = v228 & 0xFFFFFFFFFFFFLL;
  }

  if (v229)
  {
    v230 = v505;
    sub_1D2443CA0(v219, v216, v505);
    sub_1D22BD1D0(v230, v529, &qword_1EC6DB850);
    swift_storeEnumTagMultiPayload();
    sub_1D2458098();
    sub_1D22BB9D8(&qword_1EC6DB928, &qword_1EC6DB850);
    v231 = v528;
    sub_1D2875AF8();
    sub_1D22BD238(v230, &qword_1EC6DB850);
  }

  else
  {
    v679 = xmmword_1D2888720;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB928, &qword_1EC6DB850);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v526 = v480;
    v232 = v483;
    v216 = v670;
    sub_1D28775D8();
    v233 = v484;
    v234 = v530;
    (*(v484 + 16))(v529, v232, v530);
    swift_storeEnumTagMultiPayload();
    sub_1D2458098();
    v231 = v528;
    sub_1D2875AF8();
    (*(v233 + 8))(v232, v234);
  }

  v235 = v219;
  v236 = sub_1D22EC9BC(v231, v644, &qword_1EC6DB868);
  MEMORY[0x1EEE9AC00](v236);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v237 = v677;

  v238 = HIBYTE(*(&v237 + 1)) & 0xFLL;
  if ((*(&v237 + 1) & 0x2000000000000000) == 0)
  {
    v238 = v237 & 0xFFFFFFFFFFFFLL;
  }

  if (v238)
  {
    v239 = v659;
    sub_1D2445F80(v659);
    sub_1D22BD1D0(v239, v664, &qword_1EC6DB828);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D245824C();
    v240 = v532;
    sub_1D2875AF8();
    sub_1D22BD238(v239, &qword_1EC6DB828);
  }

  else
  {
    v679 = xmmword_1D2888730;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D245824C();
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v531 = v480;
    v241 = v597;
    v242 = v670;
    sub_1D28775D8();
    v243 = v598;
    v244 = v665;
    (*(v598 + 16))(v664, v241, v665);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    v240 = v532;
    sub_1D2875AF8();
    v245 = v243;
    v216 = v242;
    (*(v245 + 8))(v241, v244);
  }

  v246 = sub_1D22EC9BC(v240, v647, &qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v246);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v247 = v677;

  v248 = HIBYTE(*(&v247 + 1)) & 0xFLL;
  if ((*(&v247 + 1) & 0x2000000000000000) == 0)
  {
    v248 = v247 & 0xFFFFFFFFFFFFLL;
  }

  v249 = v595;
  if (v248)
  {
    v250 = v659;
    sub_1D2446274(v659);
    sub_1D22BD1D0(v250, v664, &qword_1EC6DB828);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D245824C();
    sub_1D2875AF8();
    sub_1D22BD238(v250, &qword_1EC6DB828);
  }

  else
  {
    *&v679 = 0xD000000000000010;
    *(&v679 + 1) = 0x80000001D28B6E00;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D245824C();
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v251 = v597;
    v216 = v670;
    sub_1D28775D8();
    v252 = v598;
    v253 = v665;
    (*(v598 + 16))(v664, v251, v665);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D2875AF8();
    v254 = v252;
    v249 = v595;
    (*(v254 + 8))(v251, v253);
  }

  v255 = sub_1D22EC9BC(v249, v648, &qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v255);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v256 = v677;

  v257 = HIBYTE(*(&v256 + 1)) & 0xFLL;
  if ((*(&v256 + 1) & 0x2000000000000000) == 0)
  {
    v257 = v256 & 0xFFFFFFFFFFFFLL;
  }

  if (v257)
  {
    v258 = v506;
    sub_1D24464E8(v235, v216, v506);
    sub_1D22BD1D0(v258, v536, &qword_1EC6DB800);
    swift_storeEnumTagMultiPayload();
    sub_1D24583C4();
    sub_1D22BB9D8(&qword_1EC6DB968, &qword_1EC6DB800);
    v259 = v535;
    sub_1D2875AF8();
    sub_1D22BD238(v258, &qword_1EC6DB800);
  }

  else
  {
    v679 = xmmword_1D2888740;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB968, &qword_1EC6DB800);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v260 = v485;
    v216 = v670;
    sub_1D28775D8();
    v261 = v486;
    v262 = v537;
    (*(v486 + 16))(v536, v260, v537);
    swift_storeEnumTagMultiPayload();
    sub_1D24583C4();
    v259 = v535;
    sub_1D2875AF8();
    (*(v261 + 8))(v260, v262);
  }

  v263 = sub_1D22EC9BC(v259, v649, &qword_1EC6DB818);
  MEMORY[0x1EEE9AC00](v263);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v264 = v677;

  v265 = HIBYTE(*(&v264 + 1)) & 0xFLL;
  if ((*(&v264 + 1) & 0x2000000000000000) == 0)
  {
    v265 = v264 & 0xFFFFFFFFFFFFLL;
  }

  if (v265)
  {
    v266 = v507;
    sub_1D2448798(v507);
    sub_1D22BD1D0(v266, v541, &qword_1EC6DB7D8);
    swift_storeEnumTagMultiPayload();
    sub_1D24584BC();
    sub_1D22BB9D8(&qword_1EC6DB978, &qword_1EC6DB7D8);
    v267 = v540;
    sub_1D2875AF8();
    sub_1D22BD238(v266, &qword_1EC6DB7D8);
  }

  else
  {
    v679 = xmmword_1D2888750;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    v595 = v480;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB978, &qword_1EC6DB7D8);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v268 = v487;
    v216 = v670;
    sub_1D28775D8();
    v269 = v488;
    v270 = v542;
    (*(v488 + 16))(v541, v268, v542);
    swift_storeEnumTagMultiPayload();
    sub_1D24584BC();
    v267 = v540;
    sub_1D2875AF8();
    (*(v269 + 8))(v268, v270);
  }

  v271 = sub_1D22EC9BC(v267, v650, &qword_1EC6DB7F0);
  MEMORY[0x1EEE9AC00](v271);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v272 = v677;

  v273 = HIBYTE(*(&v272 + 1)) & 0xFLL;
  if ((*(&v272 + 1) & 0x2000000000000000) == 0)
  {
    v273 = v272 & 0xFFFFFFFFFFFFLL;
  }

  if (v273)
  {
    v274 = v660;
    sub_1D24494E8(v235, v660);
    sub_1D22BD1D0(v274, v661, &qword_1EC6DB8A0);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v275 = v533;
    sub_1D2875AF8();
    sub_1D22BD238(v660, &qword_1EC6DB8A0);
    v276 = v596;
  }

  else
  {
    v679 = xmmword_1D2888760;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v277 = v592;
    v216 = v670;
    sub_1D28775D8();
    v278 = v599;
    v279 = v662;
    (*(v599 + 16))(v661, v277, v662);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    v275 = v533;
    v276 = v596;
    sub_1D2875AF8();
    v235 = v669;
    (*(v278 + 8))(v277, v279);
  }

  v280 = sub_1D22EC9BC(v275, v641, &qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v280);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v281 = v677;

  v282 = HIBYTE(*(&v281 + 1)) & 0xFLL;
  if ((*(&v281 + 1) & 0x2000000000000000) == 0)
  {
    v282 = v281 & 0xFFFFFFFFFFFFLL;
  }

  if (v282)
  {
    v283 = v588;
    sub_1D2449A44(v235, v588);
    sub_1D22BD1D0(v283, v601, &qword_1EC6DB7B0);
    swift_storeEnumTagMultiPayload();
    sub_1D24585BC();
    sub_1D22BB9D8(&qword_1EC6DB988, &qword_1EC6DB7B0);
    sub_1D2875AF8();
    sub_1D22BD238(v283, &qword_1EC6DB7B0);
  }

  else
  {
    v679 = xmmword_1D2888770;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    *&v677 = 0x1000000000000090;
    *(&v677 + 1) = 0x80000001D28B6EA0;
    *&v678 = 0;
    *(&v678 + 1) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB988, &qword_1EC6DB7B0);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v284 = v522;
    v216 = v670;
    sub_1D28775D8();
    v285 = v523;
    v286 = v602;
    (*(v523 + 16))(v601, v284, v602);
    swift_storeEnumTagMultiPayload();
    sub_1D24585BC();
    sub_1D2875AF8();
    v287 = v284;
    v276 = v596;
    (*(v285 + 8))(v287, v286);
  }

  v288 = sub_1D22EC9BC(v276, v652, &qword_1EC6DB7C8);
  MEMORY[0x1EEE9AC00](v288);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v289 = v677;

  v290 = HIBYTE(*(&v289 + 1)) & 0xFLL;
  if ((*(&v289 + 1) & 0x2000000000000000) == 0)
  {
    v290 = v289 & 0xFFFFFFFFFFFFLL;
  }

  if (v290)
  {
    v291 = v508;
    sub_1D244A364(v235, v216, v508);
    sub_1D22BD1D0(v291, v546, &qword_1EC6DB788);
    swift_storeEnumTagMultiPayload();
    sub_1D24586B4();
    sub_1D22BB9D8(&qword_1EC6DB998, &qword_1EC6DB788);
    v292 = v545;
    sub_1D2875AF8();
    sub_1D22BD238(v291, &qword_1EC6DB788);
  }

  else
  {
    v679 = xmmword_1D2888780;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB998, &qword_1EC6DB788);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v293 = v489;
    v216 = v670;
    sub_1D28775D8();
    v294 = v490;
    v295 = v547;
    (*(v490 + 16))(v546, v293, v547);
    swift_storeEnumTagMultiPayload();
    sub_1D24586B4();
    v292 = v545;
    sub_1D2875AF8();
    (*(v294 + 8))(v293, v295);
  }

  v296 = sub_1D22EC9BC(v292, v653, &qword_1EC6DB7A0);
  MEMORY[0x1EEE9AC00](v296);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v297 = v677;

  v298 = HIBYTE(*(&v297 + 1)) & 0xFLL;
  if ((*(&v297 + 1) & 0x2000000000000000) == 0)
  {
    v298 = v297 & 0xFFFFFFFFFFFFLL;
  }

  if (v298)
  {
    v299 = v509;
    sub_1D244B3D4(v235, v509);
    sub_1D22BD1D0(v299, v551, &qword_1EC6DB760);
    swift_storeEnumTagMultiPayload();
    sub_1D24587AC();
    sub_1D22BB9D8(&qword_1EC6DB9A8, &qword_1EC6DB760);
    v300 = v550;
    sub_1D2875AF8();
    sub_1D22BD238(v299, &qword_1EC6DB760);
  }

  else
  {
    v679 = xmmword_1D2888790;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB9A8, &qword_1EC6DB760);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v301 = v491;
    v216 = v670;
    sub_1D28775D8();
    v302 = v492;
    v303 = v552;
    (*(v492 + 16))(v551, v301, v552);
    swift_storeEnumTagMultiPayload();
    sub_1D24587AC();
    v300 = v550;
    sub_1D2875AF8();
    (*(v302 + 8))(v301, v303);
  }

  v304 = sub_1D22EC9BC(v300, v654, &qword_1EC6DB778);
  MEMORY[0x1EEE9AC00](v304);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v305 = v677;

  v306 = HIBYTE(*(&v305 + 1)) & 0xFLL;
  if ((*(&v305 + 1) & 0x2000000000000000) == 0)
  {
    v306 = v305 & 0xFFFFFFFFFFFFLL;
  }

  if (v306)
  {
    v307 = v510;
    sub_1D244C060(v235, v510);
    sub_1D22BD1D0(v307, v557, &qword_1EC6DB738);
    swift_storeEnumTagMultiPayload();
    sub_1D24588A4();
    sub_1D22BB9D8(&qword_1EC6DB9B8, &qword_1EC6DB738);
    v308 = v556;
    sub_1D2875AF8();
    sub_1D22BD238(v307, &qword_1EC6DB738);
  }

  else
  {
    v679 = xmmword_1D28887A0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB9B8, &qword_1EC6DB738);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v309 = v493;
    v216 = v670;
    sub_1D28775D8();
    v310 = v494;
    v311 = v559;
    (*(v494 + 16))(v557, v309, v559);
    swift_storeEnumTagMultiPayload();
    sub_1D24588A4();
    v308 = v556;
    sub_1D2875AF8();
    (*(v310 + 8))(v309, v311);
  }

  v312 = sub_1D22EC9BC(v308, v655, &qword_1EC6DB750);
  MEMORY[0x1EEE9AC00](v312);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v313 = v677;

  v314 = HIBYTE(*(&v313 + 1)) & 0xFLL;
  if ((*(&v313 + 1) & 0x2000000000000000) == 0)
  {
    v314 = v313 & 0xFFFFFFFFFFFFLL;
  }

  if (v314)
  {
    v315 = v511;
    sub_1D244E104(v235, v216, v511);
    sub_1D22BD1D0(v315, v564, &qword_1EC6DB710);
    swift_storeEnumTagMultiPayload();
    sub_1D245899C();
    sub_1D22BB9D8(&qword_1EC6DB9C8, &qword_1EC6DB710);
    v316 = v563;
    sub_1D2875AF8();
    sub_1D22BD238(v315, &qword_1EC6DB710);
  }

  else
  {
    v679 = xmmword_1D28887B0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    v596 = sub_1D22BB9D8(&qword_1EC6DB9C8, &qword_1EC6DB710);
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v317 = v495;
    v216 = v670;
    sub_1D28775D8();
    v318 = v496;
    v319 = v565;
    (*(v496 + 16))(v564, v317, v565);
    swift_storeEnumTagMultiPayload();
    sub_1D245899C();
    v316 = v563;
    sub_1D2875AF8();
    (*(v318 + 8))(v317, v319);
  }

  v320 = sub_1D22EC9BC(v316, v656, &qword_1EC6DB728);
  MEMORY[0x1EEE9AC00](v320);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v321 = v677;

  v322 = HIBYTE(*(&v321 + 1)) & 0xFLL;
  if ((*(&v321 + 1) & 0x2000000000000000) == 0)
  {
    v322 = v321 & 0xFFFFFFFFFFFFLL;
  }

  if (v322)
  {
    v323 = v659;
    sub_1D244EF78(v659);
    sub_1D22BD1D0(v323, v664, &qword_1EC6DB828);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D245824C();
    v324 = v553;
    sub_1D2875AF8();
    sub_1D22BD238(v323, &qword_1EC6DB828);
  }

  else
  {
    *&v679 = 0xD000000000000012;
    *(&v679 + 1) = 0x80000001D28B6E20;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D245824C();
    v235 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v596 = v480;
    v325 = v597;
    v216 = v670;
    sub_1D28775D8();
    v326 = v598;
    v327 = v665;
    (*(v598 + 16))(v664, v325, v665);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    v324 = v553;
    sub_1D2875AF8();
    (*(v326 + 8))(v325, v327);
  }

  v328 = sub_1D22EC9BC(v324, v646, &qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v328);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v329 = v677;

  v330 = HIBYTE(*(&v329 + 1)) & 0xFLL;
  if ((*(&v329 + 1) & 0x2000000000000000) == 0)
  {
    v330 = v329 & 0xFFFFFFFFFFFFLL;
  }

  if (v330)
  {
    v331 = v588;
    sub_1D244F150(v235, v588);
    sub_1D22BD1D0(v331, v601, &qword_1EC6DB7B0);
    swift_storeEnumTagMultiPayload();
    sub_1D24585BC();
    sub_1D22BB9D8(&qword_1EC6DB988, &qword_1EC6DB7B0);
    v332 = v561;
    sub_1D2875AF8();
    sub_1D22BD238(v331, &qword_1EC6DB7B0);
  }

  else
  {
    v679 = xmmword_1D28887C0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB988, &qword_1EC6DB7B0);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v333 = v522;
    v216 = v670;
    sub_1D28775D8();
    v334 = v523;
    v335 = v602;
    (*(v523 + 16))(v601, v333, v602);
    swift_storeEnumTagMultiPayload();
    sub_1D24585BC();
    v332 = v561;
    sub_1D2875AF8();
    (*(v334 + 8))(v333, v335);
  }

  v336 = v661;
  sub_1D22EC9BC(v332, v651, &qword_1EC6DB7C8);
  v337 = swift_projectBox();
  v338 = v638;
  v339 = *(v638 + 16);
  v340 = v593;
  v601 = v337;
  v341 = v594;
  v602 = v638 + 16;
  v600 = v339;
  (v339)(v593);
  sub_1D2877618();
  v342 = *(v338 + 8);
  v638 = v338 + 8;
  v603 = v342;
  v342(v340, v341);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v679 = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v343 = sub_1D23CCEF8();

  v344 = *(v343 + 16);

  if (v344)
  {
    v596 = v480;
    MEMORY[0x1EEE9AC00](v345);
    v346 = v669;
    *&v679 = v674;
    *(&v679 + 1) = v673;
    v680 = v672;
    sub_1D2877308();
    v347 = v677;

    v348 = HIBYTE(*(&v347 + 1)) & 0xFLL;
    if ((*(&v347 + 1) & 0x2000000000000000) == 0)
    {
      v348 = v347 & 0xFFFFFFFFFFFFLL;
    }

    if (v348)
    {
      v349 = v503;
      sub_1D244F9B4();
      v350 = v504;
      v351 = v517;
      (*(v504 + 16))(v515, v349, v517);
      swift_storeEnumTagMultiPayload();
      sub_1D2458190(&qword_1EC6DBA00, &qword_1EC6DB6F0, &unk_1D2888AE0, sub_1D24590A8);
      sub_1D24590A8();
      v352 = v514;
      sub_1D2875AF8();
      (*(v350 + 8))(v349, v351);
    }

    else
    {
      *&v679 = 0xD000000000000013;
      *(&v679 + 1) = 0x80000001D28B6E80;
      LOBYTE(v680) = 0;
      v681 = MEMORY[0x1E69E7CC0];
      v678 = 0u;
      v677 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
      v595 = sub_1D24590A8();
      v216 = v670;
      sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
      v355 = v481;
      sub_1D28775D8();
      v356 = v482;
      v357 = v516;
      (*(v482 + 16))(v515, v355, v516);
      swift_storeEnumTagMultiPayload();
      sub_1D2458190(&qword_1EC6DBA00, &qword_1EC6DB6F0, &unk_1D2888AE0, sub_1D24590A8);
      v352 = v514;
      sub_1D2875AF8();
      (*(v356 + 8))(v355, v357);
    }

    v358 = v513;
    sub_1D22EC9BC(v352, v513, &qword_1EC6DB6F8);
    v359 = v358;
    v354 = v657;
    sub_1D22EC9BC(v359, v657, &qword_1EC6DB700);
    v353 = 0;
  }

  else
  {
    v353 = 1;
    v354 = v657;
    v346 = v669;
  }

  v360 = (*(v567 + 56))(v354, v353, 1, v568);
  MEMORY[0x1EEE9AC00](v360);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v361 = v677;

  v362 = HIBYTE(*(&v361 + 1)) & 0xFLL;
  if ((*(&v361 + 1) & 0x2000000000000000) == 0)
  {
    v362 = v361 & 0xFFFFFFFFFFFFLL;
  }

  if (v362)
  {
    v363 = v216;
    v364 = v660;
    sub_1D244FBAC(v346, v660);
    sub_1D22BD1D0(v364, v336, &qword_1EC6DB8A0);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v365 = v558;
    sub_1D2875AF8();
    sub_1D22BD238(v364, &qword_1EC6DB8A0);
  }

  else
  {
    v679 = xmmword_1D28887D0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    v596 = v480;
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v363 = v670;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v366 = v592;
    v367 = v336;
    v368 = v662;
    sub_1D28775D8();
    v369 = v599;
    (*(v599 + 16))(v367, v366, v368);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    v365 = v558;
    sub_1D2875AF8();
    v370 = v368;
    v336 = v367;
    (*(v369 + 8))(v366, v370);
  }

  v371 = sub_1D22EC9BC(v365, v639, &qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v371);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v372 = v677;

  v373 = HIBYTE(*(&v372 + 1)) & 0xFLL;
  if ((*(&v372 + 1) & 0x2000000000000000) == 0)
  {
    v373 = v372 & 0xFFFFFFFFFFFFLL;
  }

  if (v373)
  {
    v374 = v660;
    sub_1D245010C(v346, v660);
    sub_1D22BD1D0(v374, v336, &qword_1EC6DB8A0);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v375 = v590;
    sub_1D2875AF8();
    sub_1D22BD238(v374, &qword_1EC6DB8A0);
  }

  else
  {
    v679 = xmmword_1D28887E0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    v376 = v662;
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v363 = v670;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v377 = v592;
    v378 = v661;
    sub_1D28775D8();
    v379 = v599;
    (*(v599 + 16))(v378, v377, v376);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D2875AF8();
    v380 = v376;
    v375 = v590;
    (*(v379 + 8))(v377, v380);
  }

  v381 = sub_1D22EC9BC(v375, v640, &qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v381);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v382 = v677;

  v383 = HIBYTE(*(&v382 + 1)) & 0xFLL;
  if ((*(&v382 + 1) & 0x2000000000000000) == 0)
  {
    v383 = v382 & 0xFFFFFFFFFFFFLL;
  }

  if (v383)
  {
    v384 = v518;
    v385 = v594;
    v600(v518, v601, v594);
    v386 = v593;
    sub_1D2877628();
    v387 = v603;
    v603(v384, v385);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D2877648();

    v387(v386, v385);
    v389 = v363;
    v390 = v591;
    v391 = v659;
    sub_1D24432B8(0x54454220776F6853, 0xEE00747865742041, v679, *(&v679 + 1), v680, v659);

    sub_1D22BD1D0(v391, v664, &qword_1EC6DB828);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D245824C();
    sub_1D2875AF8();
    sub_1D22BD238(v391, &qword_1EC6DB828);
  }

  else
  {
    v679 = xmmword_1D28887F0;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D245824C();
    v346 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v392 = v597;
    v389 = v670;
    sub_1D28775D8();
    v393 = v598;
    v394 = v665;
    (*(v598 + 16))(v664, v392, v665);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D2875AF8();
    v395 = v392;
    v390 = v591;
    (*(v393 + 8))(v395, v394);
  }

  v396 = sub_1D22EC9BC(v390, v645, &qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v396);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v397 = v677;

  v398 = HIBYTE(*(&v397 + 1)) & 0xFLL;
  if ((*(&v397 + 1) & 0x2000000000000000) == 0)
  {
    v398 = v397 & 0xFFFFFFFFFFFFLL;
  }

  if (v398)
  {
    v399 = v519;
    sub_1D2450724(v346, v519);
    sub_1D22BD1D0(v399, v575, &qword_1EC6DB6B8);
    swift_storeEnumTagMultiPayload();
    sub_1D2458D8C();
    sub_1D22BB9D8(&qword_1EC6DB9D8, &qword_1EC6DB6B8);
    v400 = v574;
    sub_1D2875AF8();
    sub_1D22BD238(v399, &qword_1EC6DB6B8);
  }

  else
  {
    v679 = xmmword_1D2888800;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB9D8, &qword_1EC6DB6B8);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v401 = v497;
    v389 = v670;
    sub_1D28775D8();
    v402 = v498;
    v403 = v576;
    (*(v498 + 16))(v575, v401, v576);
    swift_storeEnumTagMultiPayload();
    sub_1D2458D8C();
    v400 = v574;
    sub_1D2875AF8();
    v404 = v401;
    v346 = v669;
    (*(v402 + 8))(v404, v403);
  }

  v405 = sub_1D22EC9BC(v400, v658, &qword_1EC6DB6D0);
  MEMORY[0x1EEE9AC00](v405);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v406 = v677;

  v407 = HIBYTE(*(&v406 + 1)) & 0xFLL;
  if ((*(&v406 + 1) & 0x2000000000000000) == 0)
  {
    v407 = v406 & 0xFFFFFFFFFFFFLL;
  }

  if (v407)
  {
    v408 = v659;
    sub_1D24522D8(v659);
    sub_1D22BD1D0(v408, v664, &qword_1EC6DB828);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    sub_1D245824C();
    v409 = v569;
    sub_1D2875AF8();
    sub_1D22BD238(v408, &qword_1EC6DB828);
  }

  else
  {
    *&v679 = 0xD000000000000014;
    *(&v679 + 1) = 0x80000001D28B6E40;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D245824C();
    v346 = v669;
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v410 = v597;
    v389 = v670;
    sub_1D28775D8();
    v411 = v598;
    v412 = v665;
    (*(v598 + 16))(v664, v410, v665);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB930, &qword_1EC6DB838, &unk_1D2888C28, sub_1D245824C);
    v409 = v569;
    sub_1D2875AF8();
    (*(v411 + 8))(v410, v412);
  }

  v413 = sub_1D22EC9BC(v409, v617, &qword_1EC6DB840);
  MEMORY[0x1EEE9AC00](v413);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v414 = v677;

  v415 = HIBYTE(*(&v414 + 1)) & 0xFLL;
  if ((*(&v414 + 1) & 0x2000000000000000) == 0)
  {
    v415 = v414 & 0xFFFFFFFFFFFFLL;
  }

  if (v415)
  {
    v416 = v520;
    sub_1D24525CC(v346, v520);
    sub_1D22BD1D0(v416, v579, &qword_1EC6DB690);
    swift_storeEnumTagMultiPayload();
    sub_1D2458E8C();
    sub_1D22BB9D8(&qword_1EC6DB9E8, &qword_1EC6DB690);
    v417 = v346;
    v418 = v389;
    v419 = v578;
    sub_1D2875AF8();
    sub_1D22BD238(v416, &qword_1EC6DB690);
  }

  else
  {
    v679 = xmmword_1D2888810;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    v418 = v389;
    sub_1D22BB9D8(&qword_1EC6DB9E8, &qword_1EC6DB690);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v420 = v499;
    sub_1D28775D8();
    v421 = v500;
    v422 = v580;
    (*(v500 + 16))(v579, v420, v580);
    swift_storeEnumTagMultiPayload();
    sub_1D2458E8C();
    v419 = v578;
    sub_1D2875AF8();
    (*(v421 + 8))(v420, v422);
    v417 = v669;
  }

  v423 = sub_1D22EC9BC(v419, v633, &qword_1EC6DB6A8);
  MEMORY[0x1EEE9AC00](v423);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v424 = v677;

  v425 = HIBYTE(*(&v424 + 1)) & 0xFLL;
  if ((*(&v424 + 1) & 0x2000000000000000) == 0)
  {
    v425 = v424 & 0xFFFFFFFFFFFFLL;
  }

  if (v425)
  {
    v426 = v418;
    v427 = v589;
    sub_1D2453954(v418, v589);
    sub_1D22BD1D0(v427, v605, &qword_1EC6DB878);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB8D8, &qword_1EC6DB888, &unk_1D2888C78, sub_1D2457E20);
    sub_1D2457E20();
    v428 = v570;
    sub_1D2875AF8();
    sub_1D22BD238(v427, &qword_1EC6DB878);
  }

  else
  {
    v679 = xmmword_1D2888820;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D2457E20();
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v666 = v480;
    v429 = v524;
    v426 = v670;
    sub_1D28775D8();
    v430 = v525;
    v431 = v606;
    (*(v525 + 16))(v605, v429, v606);
    swift_storeEnumTagMultiPayload();
    sub_1D2458190(&qword_1EC6DB8D8, &qword_1EC6DB888, &unk_1D2888C78, sub_1D2457E20);
    v428 = v570;
    sub_1D2875AF8();
    (*(v430 + 8))(v429, v431);
  }

  v432 = v417;
  v433 = sub_1D22EC9BC(v428, v610, &qword_1EC6DB890);
  MEMORY[0x1EEE9AC00](v433);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v434 = v677;

  v435 = HIBYTE(*(&v434 + 1)) & 0xFLL;
  if ((*(&v434 + 1) & 0x2000000000000000) == 0)
  {
    v435 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (v435)
  {
    v436 = v660;
    sub_1D2453DB8(v417, v660);
    sub_1D22BD1D0(v436, v661, &qword_1EC6DB8A0);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    v437 = v571;
    sub_1D2875AF8();
    sub_1D22BD238(v436, &qword_1EC6DB8A0);
  }

  else
  {
    v679 = xmmword_1D2888830;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v666 = v480;
    v438 = v592;
    v426 = v670;
    sub_1D28775D8();
    v439 = v599;
    v440 = v662;
    (*(v599 + 16))(v661, v438, v662);
    swift_storeEnumTagMultiPayload();
    sub_1D2457D28();
    v437 = v571;
    sub_1D2875AF8();
    (*(v439 + 8))(v438, v440);
  }

  v441 = sub_1D22EC9BC(v437, v608, &qword_1EC6DB8B8);
  MEMORY[0x1EEE9AC00](v441);
  *&v679 = v674;
  *(&v679 + 1) = v673;
  v680 = v672;
  sub_1D2877308();
  v442 = v677;

  v443 = HIBYTE(*(&v442 + 1)) & 0xFLL;
  if ((*(&v442 + 1) & 0x2000000000000000) == 0)
  {
    v443 = v442 & 0xFFFFFFFFFFFFLL;
  }

  if (v443)
  {
    v444 = v521;
    sub_1D245432C(v432, v426, v521);
    sub_1D22BD1D0(v444, v584, &qword_1EC6DB668);
    swift_storeEnumTagMultiPayload();
    sub_1D2458F94();
    sub_1D22BB9D8(&qword_1EC6DB9F8, &qword_1EC6DB668);
    v445 = v583;
    sub_1D2875AF8();
    sub_1D22BD238(v444, &qword_1EC6DB668);
  }

  else
  {
    *&v679 = 0xD000000000000013;
    *(&v679 + 1) = 0x80000001D28B6E60;
    LOBYTE(v680) = 0;
    v681 = MEMORY[0x1E69E7CC0];
    v678 = 0u;
    v677 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
    sub_1D22BB9D8(&qword_1EC6DB9F8, &qword_1EC6DB668);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    v446 = v501;
    sub_1D28775D8();
    v447 = v502;
    v448 = v585;
    (*(v502 + 16))(v584, v446, v585);
    swift_storeEnumTagMultiPayload();
    sub_1D2458F94();
    v445 = v583;
    sub_1D2875AF8();
    (*(v447 + 8))(v446, v448);
  }

  sub_1D22EC9BC(v445, v635, &qword_1EC6DB680);
  v449 = v614;
  sub_1D22BD1D0(v642, v614, &qword_1EC6DB8C0);
  *&v679 = v449;
  v450 = v616;
  sub_1D22BD1D0(v643, v616, &qword_1EC6DB898);
  *(&v679 + 1) = v450;
  v451 = v618;
  sub_1D22BD1D0(v644, v618, &qword_1EC6DB870);
  v680 = v451;
  v452 = v622;
  sub_1D22BD1D0(v647, v622, &qword_1EC6DB848);
  v681 = v452;
  v453 = v623;
  sub_1D22BD1D0(v648, v623, &qword_1EC6DB848);
  v682 = v453;
  v454 = v624;
  sub_1D22BD1D0(v649, v624, &qword_1EC6DB820);
  v683 = v454;
  v455 = v625;
  sub_1D22BD1D0(v650, v625, &qword_1EC6DB7F8);
  v684 = v455;
  v456 = v613;
  sub_1D22BD1D0(v641, v613, &qword_1EC6DB8C0);
  v685 = v456;
  v457 = v627;
  sub_1D22BD1D0(v652, v627, &qword_1EC6DB7D0);
  v686 = v457;
  v458 = v628;
  sub_1D22BD1D0(v653, v628, &qword_1EC6DB7A8);
  v687 = v458;
  v459 = v629;
  sub_1D22BD1D0(v654, v629, &qword_1EC6DB780);
  v688 = v459;
  v460 = v630;
  sub_1D22BD1D0(v655, v630, &qword_1EC6DB758);
  v689 = v460;
  v461 = v631;
  sub_1D22BD1D0(v656, v631, &qword_1EC6DB730);
  v690 = v461;
  v462 = v621;
  sub_1D22BD1D0(v646, v621, &qword_1EC6DB848);
  v691 = v462;
  v463 = v626;
  sub_1D22BD1D0(v651, v626, &qword_1EC6DB7D0);
  v692 = v463;
  v464 = v632;
  sub_1D22BD1D0(v657, v632, &qword_1EC6DB708);
  v693 = v464;
  v465 = v611;
  sub_1D22BD1D0(v639, v611, &qword_1EC6DB8C0);
  v694 = v465;
  v466 = v612;
  sub_1D22BD1D0(v640, v612, &qword_1EC6DB8C0);
  v695 = v466;
  v467 = v620;
  sub_1D22BD1D0(v645, v620, &qword_1EC6DB848);
  v696 = v467;
  v468 = v634;
  sub_1D22BD1D0(v658, v634, &qword_1EC6DB6D8);
  v697 = v468;
  v469 = v617;
  v470 = v619;
  sub_1D22BD1D0(v617, v619, &qword_1EC6DB848);
  v698 = v470;
  v471 = v633;
  v472 = v636;
  sub_1D22BD1D0(v633, v636, &qword_1EC6DB6B0);
  v699 = v472;
  v473 = v610;
  v474 = v615;
  sub_1D22BD1D0(v610, v615, &qword_1EC6DB898);
  v700 = v474;
  v475 = v608;
  v476 = v609;
  sub_1D22BD1D0(v608, v609, &qword_1EC6DB8C0);
  v701 = v476;
  v477 = v635;
  v478 = v637;
  sub_1D22BD1D0(v635, v637, &qword_1EC6DB688);
  v702 = v478;
  sub_1D243A234(&v679, v587);
  sub_1D22BD238(v477, &qword_1EC6DB688);
  sub_1D22BD238(v475, &qword_1EC6DB8C0);
  sub_1D22BD238(v473, &qword_1EC6DB898);
  sub_1D22BD238(v471, &qword_1EC6DB6B0);
  sub_1D22BD238(v469, &qword_1EC6DB848);
  sub_1D22BD238(v658, &qword_1EC6DB6D8);
  sub_1D22BD238(v645, &qword_1EC6DB848);
  sub_1D22BD238(v640, &qword_1EC6DB8C0);
  sub_1D22BD238(v639, &qword_1EC6DB8C0);
  sub_1D22BD238(v657, &qword_1EC6DB708);
  sub_1D22BD238(v651, &qword_1EC6DB7D0);
  sub_1D22BD238(v646, &qword_1EC6DB848);
  sub_1D22BD238(v656, &qword_1EC6DB730);
  sub_1D22BD238(v655, &qword_1EC6DB758);
  sub_1D22BD238(v654, &qword_1EC6DB780);
  sub_1D22BD238(v653, &qword_1EC6DB7A8);
  sub_1D22BD238(v652, &qword_1EC6DB7D0);
  sub_1D22BD238(v641, &qword_1EC6DB8C0);
  sub_1D22BD238(v650, &qword_1EC6DB7F8);
  sub_1D22BD238(v649, &qword_1EC6DB820);
  sub_1D22BD238(v648, &qword_1EC6DB848);
  sub_1D22BD238(v647, &qword_1EC6DB848);
  sub_1D22BD238(v644, &qword_1EC6DB870);
  sub_1D22BD238(v643, &qword_1EC6DB898);
  sub_1D22BD238(v642, &qword_1EC6DB8C0);
  sub_1D22BD238(v637, &qword_1EC6DB688);
  sub_1D22BD238(v609, &qword_1EC6DB8C0);
  sub_1D22BD238(v615, &qword_1EC6DB898);
  sub_1D22BD238(v636, &qword_1EC6DB6B0);
  sub_1D22BD238(v619, &qword_1EC6DB848);
  sub_1D22BD238(v634, &qword_1EC6DB6D8);
  sub_1D22BD238(v620, &qword_1EC6DB848);
  sub_1D22BD238(v612, &qword_1EC6DB8C0);
  sub_1D22BD238(v611, &qword_1EC6DB8C0);
  sub_1D22BD238(v632, &qword_1EC6DB708);
  sub_1D22BD238(v626, &qword_1EC6DB7D0);
  sub_1D22BD238(v621, &qword_1EC6DB848);
  sub_1D22BD238(v631, &qword_1EC6DB730);
  sub_1D22BD238(v630, &qword_1EC6DB758);
  sub_1D22BD238(v629, &qword_1EC6DB780);
  sub_1D22BD238(v628, &qword_1EC6DB7A8);
  sub_1D22BD238(v627, &qword_1EC6DB7D0);
  sub_1D22BD238(v613, &qword_1EC6DB8C0);
  sub_1D22BD238(v625, &qword_1EC6DB7F8);
  sub_1D22BD238(v624, &qword_1EC6DB820);
  sub_1D22BD238(v623, &qword_1EC6DB848);
  sub_1D22BD238(v622, &qword_1EC6DB848);
  sub_1D22BD238(v618, &qword_1EC6DB870);
  sub_1D22BD238(v616, &qword_1EC6DB898);
  return sub_1D22BD238(v614, &qword_1EC6DB8C0);
}

uint64_t sub_1D2442BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = &v27 - v16;
  v28 = "Delete ALL assets";
  v18 = swift_projectBox();
  v29 = *(v3 + 16);
  v30 = v18;
  v29(v5, v18, v2);
  sub_1D2877628();
  v19 = *(v3 + 8);
  v19(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  sub_1D24432B8(0xD000000000000022, v28 | 0x8000000000000000, v39, v40, v41, v17);

  v29(v5, v30, v2);
  sub_1D2877628();
  v19(v5, v2);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  v20 = v32;
  sub_1D24432B8(0xD000000000000021, 0x80000001D28B7AC0, v39, v40, v41, v32);

  v21 = v31;
  v22 = v33;
  sub_1D22BD1D0(v31, v33, &qword_1EC6DB828);
  v23 = v34;
  sub_1D22BD1D0(v20, v34, &qword_1EC6DB828);
  v24 = v35;
  sub_1D22BD1D0(v22, v35, &qword_1EC6DB828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA60);
  sub_1D22BD1D0(v23, v24 + *(v25 + 48), &qword_1EC6DB828);
  sub_1D22BD238(v20, &qword_1EC6DB828);
  sub_1D22BD238(v21, &qword_1EC6DB828);
  sub_1D22BD238(v23, &qword_1EC6DB828);
  return sub_1D22BD238(v22, &qword_1EC6DB828);
}

uint64_t sub_1D2442FE8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v2 = off_1ED8A4930;
  v7[0] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  v7[4] = v2;
  sub_1D2870F78();
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v7, 0);

  *a1 = v5;
  return result;
}

uint64_t sub_1D24430F8(uint64_t a1)
{
  if (qword_1ED8A4928 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  return sub_1D28719D8();
}

void sub_1D244321C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D24432B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a3;
  v28 = a4;
  v9 = sub_1D2875678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB948);
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = sub_1D2456324();
  if (v19)
  {
    v25 = a6;
    MEMORY[0x1EEE9AC00](v19);
    *(&v24 - 2) = a1;
    *(&v24 - 1) = a2;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D28774A8();
    sub_1D2875668();
    (*(v10 + 16))(v12, v15, v9);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v20 = sub_1D2874988();
    (*(v10 + 8))(v15, v9);
    *&v18[*(v16 + 36)] = v20;
    v21 = v25;
    sub_1D22EC9BC(v18, v25, &qword_1EC6DB948);
    return (*(v29 + 56))(v21, 0, 1, v16);
  }

  else
  {
    v23 = *(v29 + 56);

    return v23(a6, 1, 1, v16);
  }
}

void sub_1D24435E4(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2443664()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2443700@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2875678();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  sub_1D2874258();
  v16 = sub_1D2874288();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1D2870F78();
  if (sub_1D2456324())
  {
    sub_1D245642C(v15, sub_1D2459770, a1, 0xD000000000000011, 0x80000001D28B7A70, v12);
    sub_1D2875668();
    v17 = v23;
    (*(v23 + 16))(v5, v8, v3);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v18 = sub_1D2874988();

    (*(v17 + 8))(v8, v3);
    sub_1D22BD238(v15, &qword_1EC6DB0C8);
    *&v12[*(v9 + 36)] = v18;
    v19 = v24;
    sub_1D22EC9BC(v12, v24, &qword_1EC6DB8F0);
    v20 = 0;
    v21 = v19;
  }

  else
  {

    sub_1D22BD238(v15, &qword_1EC6DB0C8);
    v20 = 1;
    v21 = v24;
  }

  return (*(v10 + 56))(v21, v20, 1, v9);
}

uint64_t sub_1D2443A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  sub_1D2877618();
  (*(v4 + 8))(v6, v3);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1D2878568();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_1D22AE01C(0, 0, v2, &unk_1D2884910, v10);
}

uint64_t sub_1D2443CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a1;
  v134 = a3;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v120 = &v118 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v128 = &v118 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB878);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v146 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v118 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v154 = &v118 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v133 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v143 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v144 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v140 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v118 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v151 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v118 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v153 = &v118 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v152 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v150 = &v118 - v40;
  v127 = sub_1D2875678();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v125 = &v118 - v43;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAB0);
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v118 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v136 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v118 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v118 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAB8);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v138 = &v118 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v121 = &v118 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v148 = &v118 - v59;
  v130 = a2;
  v60 = swift_projectBox();
  v61 = *(v46 + 16);
  v157 = v46 + 16;
  v158 = v60;
  v156 = v61;
  (v61)(v50);
  sub_1D2877628();
  v62 = *(v46 + 8);
  v135 = v50;
  v62(v50, v45);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v137 = v62;
  v147 = v46 + 8;
  v62(v53, v45);
  v64 = v167;
  v63 = v168;
  v66 = v169;
  v65 = v170;
  sub_1D23CF0EC();
  v67 = sub_1D2456324();
  if (v67)
  {
    v165 = 0x6F746172656E6547;
    v166 = 0xE900000000000072;
    v161 = v64;
    v162 = v63;
    v163 = v66;
    v164 = v65;
    MEMORY[0x1EEE9AC00](v67);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAD8);
    sub_1D24595DC(&qword_1EC6DBAE0, &qword_1EC6DBAD8);
    sub_1D22BD06C();
    v68 = v119;
    sub_1D2877438();

    v69 = v125;
    sub_1D2875668();
    v70 = v126;
    v71 = v127;
    (*(v126 + 16))(v124, v69, v127);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v72 = sub_1D2874988();

    (*(v70 + 8))(v69, v71);
    v73 = v122;
    *(v68 + *(v122 + 36)) = v72;
    v74 = v121;
    sub_1D22EC9BC(v68, v121, &qword_1EC6DBAB0);
    v75 = 0;
    v76 = v73;
  }

  else
  {

    v75 = 1;
    v76 = v122;
    v74 = v121;
  }

  (*(v123 + 7))(v74, v75, 1, v76);
  sub_1D22EC9BC(v74, v148, &qword_1EC6DBAB8);
  v123 = "rted from camera";
  v77 = v136;
  v78 = v158;
  v156(v136, v158, v45);
  v79 = v135;
  sub_1D2877628();
  v80 = v137;
  v137(v77, v45);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81);
  swift_getKeyPath();
  sub_1D2877648();

  v80(v79, v45);
  sub_1D24432B8(0xD00000000000001ELL, v123 | 0x8000000000000000, v167, v168, v169, v150);

  v123 = "Enable predictable output mode";
  v156(v77, v78, v45);
  sub_1D2877628();
  v80(v77, v45);
  v82 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v82);
  swift_getKeyPath();
  sub_1D2877648();

  v80(v79, v45);
  sub_1D24432B8(0xD000000000000023, v123 | 0x8000000000000000, v167, v168, v169, v152);

  v156(v77, v158, v45);
  sub_1D2877628();
  v80(v77, v45);
  v83 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v83);
  swift_getKeyPath();
  sub_1D2877648();

  v80(v79, v45);
  sub_1D24432B8(0xD000000000000023, 0x80000001D28B79A0, v167, v168, v169, v153);

  v84 = v128;
  sub_1D2874258();
  v85 = sub_1D2874288();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v130;
  sub_1D2870F78();
  if (sub_1D2456324())
  {
    v87 = v120;
    sub_1D245642C(v84, sub_1D2459768, v86, 0xD00000000000001CLL, 0x80000001D28B79D0, v120);
    v88 = v125;
    sub_1D2875668();
    v89 = v126;
    v90 = v127;
    (*(v126 + 16))(v124, v88, v127);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v91 = sub_1D2874988();

    (*(v89 + 8))(v88, v90);
    sub_1D22BD238(v84, &qword_1EC6DB0C8);
    v92 = v132;
    *(v87 + *(v132 + 36)) = v91;
    v93 = v129;
    sub_1D22EC9BC(v87, v129, &qword_1EC6DB8F0);
    v94 = 0;
  }

  else
  {

    sub_1D22BD238(v84, &qword_1EC6DB0C8);
    v94 = 1;
    v92 = v132;
    v93 = v129;
  }

  (*(v131 + 56))(v93, v94, 1, v92);
  sub_1D22EC9BC(v93, v154, &qword_1EC6DB878);
  v95 = v136;
  v96 = v158;
  v156(v136, v158, v45);
  v97 = v135;
  sub_1D2877628();
  v98 = v137;
  v137(v95, v45);
  v99 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v99);
  swift_getKeyPath();
  sub_1D2877648();

  v98(v97, v45);
  sub_1D24432B8(0xD000000000000015, 0x80000001D28B79F0, v167, v168, v169, v149);

  v132 = "Disable prompt safety";
  v100 = v96;
  v101 = v156;
  v156(v95, v100, v45);
  sub_1D2877628();
  v98(v95, v45);
  v102 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v102);
  swift_getKeyPath();
  sub_1D2877648();

  v98(v97, v45);
  sub_1D24432B8(0xD000000000000014, v132 | 0x8000000000000000, v167, v168, v169, v151);

  v132 = "Disable image safety";
  v101(v95, v158, v45);
  sub_1D2877628();
  v98(v95, v45);
  v103 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v103);
  swift_getKeyPath();
  sub_1D2877648();

  v98(v97, v45);
  sub_1D24432B8(0xD000000000000012, v132 | 0x8000000000000000, v167, v168, v169, v139);

  v101(v95, v158, v45);
  sub_1D2877628();
  v98(v95, v45);
  v104 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v104);
  swift_getKeyPath();
  sub_1D2877648();

  v98(v97, v45);
  v105 = v140;
  sub_1D24432B8(0xD000000000000019, 0x80000001D28B7A50, v167, v168, v169, v140);

  v106 = v138;
  sub_1D22BD1D0(v148, v138, &qword_1EC6DBAB8);
  v107 = v144;
  sub_1D22BD1D0(v150, v144, &qword_1EC6DB828);
  sub_1D22BD1D0(v152, v155, &qword_1EC6DB828);
  v108 = v145;
  sub_1D22BD1D0(v153, v145, &qword_1EC6DB828);
  v109 = v146;
  sub_1D22BD1D0(v154, v146, &qword_1EC6DB878);
  v110 = v141;
  sub_1D22BD1D0(v149, v141, &qword_1EC6DB828);
  sub_1D22BD1D0(v151, v142, &qword_1EC6DB828);
  v111 = v139;
  sub_1D22BD1D0(v139, v143, &qword_1EC6DB828);
  v112 = v133;
  sub_1D22BD1D0(v105, v133, &qword_1EC6DB828);
  v113 = v134;
  sub_1D22BD1D0(v106, v134, &qword_1EC6DBAB8);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE8);
  sub_1D22BD1D0(v107, v113 + v114[12], &qword_1EC6DB828);
  sub_1D22BD1D0(v155, v113 + v114[16], &qword_1EC6DB828);
  sub_1D22BD1D0(v108, v113 + v114[20], &qword_1EC6DB828);
  sub_1D22BD1D0(v109, v113 + v114[24], &qword_1EC6DB878);
  sub_1D22BD1D0(v110, v113 + v114[28], &qword_1EC6DB828);
  v115 = v142;
  sub_1D22BD1D0(v142, v113 + v114[32], &qword_1EC6DB828);
  v116 = v143;
  sub_1D22BD1D0(v143, v113 + v114[36], &qword_1EC6DB828);
  sub_1D22BD1D0(v112, v113 + v114[40], &qword_1EC6DB828);
  sub_1D22BD238(v140, &qword_1EC6DB828);
  sub_1D22BD238(v111, &qword_1EC6DB828);
  sub_1D22BD238(v151, &qword_1EC6DB828);
  sub_1D22BD238(v149, &qword_1EC6DB828);
  sub_1D22BD238(v154, &qword_1EC6DB878);
  sub_1D22BD238(v153, &qword_1EC6DB828);
  sub_1D22BD238(v152, &qword_1EC6DB828);
  sub_1D22BD238(v150, &qword_1EC6DB828);
  sub_1D22BD238(v148, &qword_1EC6DBAB8);
  sub_1D22BD238(v112, &qword_1EC6DB828);
  sub_1D22BD238(v116, &qword_1EC6DB828);
  sub_1D22BD238(v115, &qword_1EC6DB828);
  sub_1D22BD238(v141, &qword_1EC6DB828);
  sub_1D22BD238(v146, &qword_1EC6DB878);
  sub_1D22BD238(v145, &qword_1EC6DB828);
  sub_1D22BD238(v155, &qword_1EC6DB828);
  sub_1D22BD238(v144, &qword_1EC6DB828);
  return sub_1D22BD238(v138, &qword_1EC6DBAB8);
}

uint64_t sub_1D2445444@<X0>(void *a1@<X8>)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v2 = off_1ED8A4930;
  v8[0] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  v8[4] = v2;
  sub_1D2870F78();
  v3 = swift_readAtKeyPath();
  v6 = *v4;
  v5 = v4[1];
  sub_1D2870F68();
  v3(v8, 0);

  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D244555C()
{
  v0 = qword_1ED8A4928;
  sub_1D2870F78();
  v1 = sub_1D2870F68();
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719D8();
}

void sub_1D24456A0(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2445720()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D24457BC(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244583C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D24458D8(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2445958()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D24459F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1D2877618();
  (*(v1 + 8))(v3, v0);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v5 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v9 - 2) = sub_1D23D0AB4;
  *(&v9 - 1) = v7;
  sub_1D2870F78();
  os_unfair_lock_lock(v5 + 7);
  sub_1D2459818(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 7);

  if (v10)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    sub_1D2870F78();

    sub_1D23BCDCC();
  }

  return result;
}

void sub_1D2445C14(unsigned __int8 *a1@<X8>)
{
  if (os_variant_has_internal_ui())
  {
    sub_1D23B7BB8();
    v2 = sub_1D2878A58();
    v3 = sub_1D2878068();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1D2445CAC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2445D48(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2445DC8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2445E64(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2445EE4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2445F80@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = swift_projectBox();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D2877628();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v10(v8, v2);
  sub_1D24432B8(0xD000000000000020, 0x80000001D28B7920, v12[1], v12[2], v13, a1);
}

void sub_1D2446158(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D24461D8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2446274@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = swift_projectBox();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D2877628();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v10(v8, v2);
  sub_1D24432B8(0xD000000000000021, 0x80000001D28B78F0, v12[1], v12[2], v13, a1);
}

void sub_1D244644C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D24464E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a1;
  v161 = a2;
  v135 = a3;
  v126 = sub_1D2875678();
  v147 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v138 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v120 - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v132 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v145 = &v120 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v131 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v120 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB878);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v134 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v120 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v142 = &v120 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v128 = &v120 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v159 = &v120 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v120 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v158 = &v120 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v120 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v155 = &v120 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v120 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v157 = &v120 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v141 = &v120 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v156 = &v120 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v140 = &v120 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v139 = &v120 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v154 = &v120 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v153 = &v120 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v152 = &v120 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v151 = &v120 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v120 - v65;
  v137 = "Aspect Ratio Content Mode";
  v148 = swift_projectBox();
  v67 = *(v40 + 16);
  v149 = v40 + 16;
  v150 = v67;
  v67(v42, v148, v39);
  sub_1D2877628();
  v68 = *(v40 + 8);
  v68(v42, v39);
  v136 = v68;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v68(v45, v39);
  v69 = v137 | 0x8000000000000000;
  v137 = v66;
  sub_1D24432B8(0xD000000000000033, v69, v167, v168, v169, v66);

  v121 = "rs + Photos people)";
  v70 = v148;
  v150(v42, v148, v39);
  sub_1D2877628();
  v71 = v136;
  v136(v42, v39);
  v165 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v71(v45, v39);
  sub_1D24432B8(0xD000000000000026, v121 | 0x8000000000000000, v167, v168, v169, v151);

  v121 = "tributes Customization";
  v72 = v150;
  v150(v42, v70, v39);
  sub_1D2877628();
  v73 = v136;
  v136(v42, v39);
  v164 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v73(v45, v39);
  sub_1D24432B8(0xD000000000000014, v121 | 0x8000000000000000, v167, v168, v169, v152);

  v121 = "Enable Characters UI";
  v72(v42, v148, v39);
  sub_1D2877628();
  v73(v42, v39);
  v163 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v73(v45, v39);
  sub_1D24432B8(0xD000000000000014, v121 | 0x8000000000000000, v167, v168, v169, v153);

  v150(v42, v148, v39);
  sub_1D2877628();
  v73(v42, v39);
  v162 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v73(v45, v39);
  v74 = v122;
  v75 = v145;
  v76 = v146;
  sub_1D24432B8(0xD000000000000027, 0x80000001D28B7790, v167, v168, v169, v154);

  sub_1D2874258();
  v77 = sub_1D2874288();
  v78 = *(v77 - 8);
  v150 = *(v78 + 56);
  v149 = v78 + 56;
  (v150)(v74, 0, 1, v77);
  sub_1D2870F78();
  v79 = sub_1D2456324();
  v80 = v147;
  if (v79)
  {
    sub_1D245642C(v74, sub_1D2459750, v161, 0xD000000000000015, 0x80000001D28B77C0, v75);
    sub_1D2875668();
    v81 = v138;
    v82 = v126;
    (*(v80 + 16))(v138, v76, v126);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v83 = sub_1D2874988();

    (*(v80 + 8))(v76, v82);
    sub_1D22BD238(v74, &qword_1EC6DB0C8);
    v84 = v124;
    *(v75 + *(v124 + 36)) = v83;
    v85 = v123;
    sub_1D22EC9BC(v75, v123, &qword_1EC6DB8F0);
    v86 = 0;
  }

  else
  {

    sub_1D22BD238(v74, &qword_1EC6DB0C8);
    v86 = 1;
    v84 = v124;
    v82 = v126;
    v81 = v138;
    v85 = v123;
  }

  v148 = *(v132 + 56);
  v148(v85, v86, 1, v84);
  sub_1D22EC9BC(v85, v155, &qword_1EC6DB878);
  v87 = v127;
  sub_1D2874258();
  (v150)(v87, 0, 1, v77);
  if (sub_1D2456324())
  {
    v88 = v145;
    sub_1D245642C(v87, sub_1D2448040, 0, 0xD00000000000002DLL, 0x80000001D28B77E0, v145);
    v89 = v81;
    v90 = v146;
    sub_1D2875668();
    v91 = v147;
    (*(v147 + 16))(v89, v90, v82);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v92 = sub_1D2874988();
    (*(v91 + 8))(v90, v82);
    sub_1D22BD238(v87, &qword_1EC6DB0C8);
    *(v88 + *(v84 + 36)) = v92;
    v93 = v125;
    sub_1D22EC9BC(v88, v125, &qword_1EC6DB8F0);
    v94 = 0;
    v95 = v129;
  }

  else
  {
    sub_1D22BD238(v87, &qword_1EC6DB0C8);
    v94 = 1;
    v88 = v145;
    v95 = v129;
    v93 = v125;
  }

  v148(v93, v94, 1, v84);
  sub_1D22EC9BC(v93, v158, &qword_1EC6DB878);
  sub_1D2874258();
  (v150)(v95, 0, 1, v77);
  sub_1D2870F78();
  if (sub_1D2456324())
  {
    sub_1D245642C(v95, sub_1D2459758, v161, 0xD000000000000069, 0x80000001D28B7810, v88);
    v96 = v146;
    sub_1D2875668();
    v97 = v147;
    (*(v147 + 16))(v138, v96, v82);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v98 = sub_1D2874988();

    v88 = v145;
    (*(v97 + 8))(v96, v82);
    sub_1D22BD238(v95, &qword_1EC6DB0C8);
    *(v88 + *(v84 + 36)) = v98;
    v99 = v128;
    sub_1D22EC9BC(v88, v128, &qword_1EC6DB8F0);
    v100 = 0;
    v101 = v131;
  }

  else
  {

    sub_1D22BD238(v95, &qword_1EC6DB0C8);
    v100 = 1;
    v101 = v131;
    v99 = v128;
  }

  v148(v99, v100, 1, v84);
  sub_1D22EC9BC(v99, v159, &qword_1EC6DB878);
  sub_1D2874258();
  (v150)(v101, 0, 1, v77);
  sub_1D2870F78();
  v102 = v101;
  if (sub_1D2456324())
  {
    sub_1D245642C(v101, sub_1D2459760, v161, 0xD000000000000042, 0x80000001D28B7880, v88);
    v103 = v146;
    sub_1D2875668();
    v104 = v147;
    (*(v147 + 16))(v138, v103, v82);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v105 = sub_1D2874988();

    (*(v104 + 8))(v103, v82);
    sub_1D22BD238(v102, &qword_1EC6DB0C8);
    *(v88 + *(v84 + 36)) = v105;
    v106 = v130;
    sub_1D22EC9BC(v88, v130, &qword_1EC6DB8F0);
    v107 = 0;
  }

  else
  {

    sub_1D22BD238(v101, &qword_1EC6DB0C8);
    v107 = 1;
    v106 = v130;
  }

  v148(v106, v107, 1, v84);
  v108 = v142;
  sub_1D22EC9BC(v106, v142, &qword_1EC6DB878);
  v109 = v139;
  sub_1D22BD1D0(v137, v139, &qword_1EC6DB828);
  v110 = v140;
  sub_1D22BD1D0(v151, v140, &qword_1EC6DB828);
  sub_1D22BD1D0(v152, v156, &qword_1EC6DB828);
  v111 = v141;
  sub_1D22BD1D0(v153, v141, &qword_1EC6DB828);
  sub_1D22BD1D0(v154, v157, &qword_1EC6DB828);
  sub_1D22BD1D0(v155, v143, &qword_1EC6DB878);
  v112 = v133;
  sub_1D22BD1D0(v158, v133, &qword_1EC6DB878);
  sub_1D22BD1D0(v159, v144, &qword_1EC6DB878);
  v113 = v134;
  sub_1D22BD1D0(v108, v134, &qword_1EC6DB878);
  v114 = v109;
  v115 = v135;
  sub_1D22BD1D0(v114, v135, &qword_1EC6DB828);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBD8);
  sub_1D22BD1D0(v110, v115 + v116[12], &qword_1EC6DB828);
  sub_1D22BD1D0(v156, v115 + v116[16], &qword_1EC6DB828);
  sub_1D22BD1D0(v111, v115 + v116[20], &qword_1EC6DB828);
  sub_1D22BD1D0(v157, v115 + v116[24], &qword_1EC6DB828);
  v117 = v143;
  sub_1D22BD1D0(v143, v115 + v116[28], &qword_1EC6DB878);
  sub_1D22BD1D0(v112, v115 + v116[32], &qword_1EC6DB878);
  v118 = v144;
  sub_1D22BD1D0(v144, v115 + v116[36], &qword_1EC6DB878);
  sub_1D22BD1D0(v113, v115 + v116[40], &qword_1EC6DB878);
  sub_1D22BD238(v142, &qword_1EC6DB878);
  sub_1D22BD238(v159, &qword_1EC6DB878);
  sub_1D22BD238(v158, &qword_1EC6DB878);
  sub_1D22BD238(v155, &qword_1EC6DB878);
  sub_1D22BD238(v154, &qword_1EC6DB828);
  sub_1D22BD238(v153, &qword_1EC6DB828);
  sub_1D22BD238(v152, &qword_1EC6DB828);
  sub_1D22BD238(v151, &qword_1EC6DB828);
  sub_1D22BD238(v137, &qword_1EC6DB828);
  sub_1D22BD238(v113, &qword_1EC6DB878);
  sub_1D22BD238(v118, &qword_1EC6DB878);
  sub_1D22BD238(v112, &qword_1EC6DB878);
  sub_1D22BD238(v117, &qword_1EC6DB878);
  sub_1D22BD238(v157, &qword_1EC6DB828);
  sub_1D22BD238(v141, &qword_1EC6DB828);
  sub_1D22BD238(v156, &qword_1EC6DB828);
  sub_1D22BD238(v140, &qword_1EC6DB828);
  return sub_1D22BD238(v139, &qword_1EC6DB828);
}

void sub_1D2447C38()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2447CD4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2447D70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  sub_1D2877618();
  (*(v4 + 8))(v6, v3);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v8 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v17 - 2) = sub_1D23D0AB4;
  *(&v17 - 1) = v10;
  sub_1D2870F78();
  os_unfair_lock_lock(v8 + 7);
  sub_1D2459818(&v8[4], &v18);
  os_unfair_lock_unlock(v8 + 7);

  v12 = v18;
  if (v18)
  {
    v13 = sub_1D28785F8();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_1D2878568();
    sub_1D2870F78();
    v14 = sub_1D2878558();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    sub_1D22AE01C(0, 0, v2, &unk_1D2884920, v15);
  }

  return result;
}

void sub_1D2448040()
{
  v0 = sub_1D25D76C8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0);
  v1 = sub_1D28793C8();
  v2 = v1;
  v3 = 0;
  v4 = v0 + 64;
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v0 + 64);
  v8 = (v5 + 63) >> 6;
  v26 = v1 + 64;
  v27 = v0;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v3 << 6);
      v13 = (v27[6] + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v27[7] + 8 * v12);
      if (v16[2] <= 5uLL)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 17;
        }

        v17[2] = 5;
        v17[3] = 2 * (v19 >> 4);
        swift_arrayInitWithCopy();
        sub_1D2870F68();
        v16 = v17;
      }

      *(v26 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v20 = (v2[6] + 16 * v12);
      *v20 = v14;
      v20[1] = v15;
      *(v2[7] + 8 * v12) = v16;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v2[2] = v23;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v3 >= v8)
      {
        break;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    sub_1D23B7BB8();
    v24 = sub_1D2878A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
    v25 = sub_1D2877E78();

    v28 = sub_1D2878068();
    [v24 setValue:v25 forKey:v28];
  }
}

uint64_t sub_1D24482DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  sub_1D2877618();
  (*(v4 + 8))(v6, v3);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v8 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v17 - 2) = sub_1D23D0AB4;
  *(&v17 - 1) = v10;
  sub_1D2870F78();
  os_unfair_lock_lock(v8 + 7);
  sub_1D2459818(&v8[4], &v18);
  os_unfair_lock_unlock(v8 + 7);

  v12 = v18;
  if (v18)
  {
    v13 = sub_1D28785F8();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_1D2878568();
    sub_1D2870F78();
    v14 = sub_1D2878558();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    sub_1D23C8994(0, 0, v2, &unk_1D28897C0, v15);
  }

  return result;
}

uint64_t sub_1D24485AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1D2877618();
  (*(v1 + 8))(v3, v0);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v5 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v9 - 2) = sub_1D23D0AB4;
  *(&v9 - 1) = v7;
  sub_1D2870F78();
  os_unfair_lock_lock(v5 + 7);
  sub_1D2459818(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 7);

  if (v10)
  {
    sub_1D23C7F70();
    sub_1D260F5FC();
  }

  return result;
}

uint64_t sub_1D2448798@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v63 = sub_1D2875678();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v56 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB90);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB98);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v56 - v7;
  v8 = sub_1D28756F8();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v70 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v56 - v28;
  v68 = "Hide person bubble";
  v65 = swift_projectBox();
  v64 = *(v17 + 16);
  v64(v21, v65, v16);
  sub_1D2877628();
  v30 = *(v17 + 8);
  v30(v21, v16);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v30(v24, v16);
  v31 = v68 | 0x8000000000000000;
  v68 = v29;
  sub_1D24432B8(0xD000000000000024, v31, v85, v86, v87, v29);

  v64(v24, v65, v16);
  v32 = v67;
  v33 = v66;
  sub_1D2877628();
  v30(v24, v16);
  v78 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v30(v33, v16);
  v34 = v85;
  v35 = v86;
  v36 = v87;
  sub_1D28756E8();
  if (sub_1D2456324())
  {
    v83 = 0xD000000000000019;
    v84 = 0x80000001D28B76C0;
    v80 = v34;
    v81 = v35;
    v82 = v36;
    sub_1D2870F78();
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBB0);
    sub_1D22BB9D8(&qword_1EC6DBBB8, &qword_1EC6DBBB0);
    sub_1D22BD06C();
    v37 = v56;
    sub_1D2877438();
    sub_1D22BB9D8(&qword_1EC6DBBC0, &qword_1EC6DBB90);
    v38 = v59;
    v39 = v58;
    v40 = v72;
    sub_1D2876838();
    (*(v57 + 8))(v37, v39);
    v41 = v61;
    sub_1D2875668();
    v42 = v62;
    v43 = v63;
    (*(v62 + 16))(v60, v41, v63);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v44 = sub_1D2874988();

    (*(v42 + 8))(v41, v43);
    (*(v71 + 8))(v32, v40);
    v45 = v74;
    *(v38 + *(v74 + 36)) = v44;
    v46 = v69;
    sub_1D22EC9BC(v38, v69, &qword_1EC6DBB98);
    v47 = 0;
    v48 = v45;
  }

  else
  {

    (*(v71 + 8))(v32, v72);
    v47 = 1;
    v48 = v74;
    v46 = v69;
  }

  (*(v75 + 56))(v46, v47, 1, v48);
  v49 = v73;
  sub_1D22EC9BC(v46, v73, &qword_1EC6DBBA0);
  v50 = v68;
  v51 = v70;
  sub_1D22BD1D0(v68, v70, &qword_1EC6DB828);
  v52 = v76;
  sub_1D22BD1D0(v49, v76, &qword_1EC6DBBA0);
  v53 = v77;
  sub_1D22BD1D0(v51, v77, &qword_1EC6DB828);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBA8);
  sub_1D22BD1D0(v52, v53 + *(v54 + 48), &qword_1EC6DBBA0);
  sub_1D22BD238(v49, &qword_1EC6DBBA0);
  sub_1D22BD238(v50, &qword_1EC6DB828);
  sub_1D22BD238(v52, &qword_1EC6DBBA0);
  return sub_1D22BD238(v51, &qword_1EC6DB828);
}