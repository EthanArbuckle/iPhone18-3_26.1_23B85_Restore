uint64_t sub_253262284()
{
  v1 = v0[109];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[109];
  }

  v3 = v0[73];
  v4 = v0[71];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  v0[110] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[111] = v8;
  v0[112] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v3, 0, 1, v6);
  v0[25] = swift_getAssociatedTypeWitness();
  v0[26] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 22);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 22), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532624AC, v4, 0);
}

uint64_t sub_2532624AC()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  v2 = *v1;
  v0[113] = *v1;

  return MEMORY[0x2822009F8](sub_25326251C, v2, 0);
}

uint64_t sub_25326251C()
{
  v1 = v0[113];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[113];
  }

  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[73];
  v7 = v0[71];
  sub_253248F34();
  v8 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4(v6, 0, 1, v5);
  v0[30] = swift_getAssociatedTypeWitness();
  v0[31] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 27);

  sub_253CD0188();

  sub_253206054(v6, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 27), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253262718, v7, 0);
}

uint64_t sub_253262718()
{
  v1 = v0[107];
  v2 = v0[108] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v2 == v1)
  {
    v3 = v0[106];
    v4 = v0[105];
    v5 = v0[104];
    v6 = v0[103];
    v7 = v0[102];
    v8 = v0[90];
    v9 = v0[87];
    v10 = v0[86];

    (*(v9 + 8))(v8, v10);

    v11 = v0[101];
    v12 = v0[100];
    v13 = v0[99];
    v14 = v0[98];
    v15 = v0[97];
    v16 = v0[96];
    v17 = v0[95];
    v18 = v0[94];
    v19 = v0[93];
    v20 = v0[90];
    v42 = v0[89];
    v43 = v0[88];
    v44 = v0[85];
    v45 = v0[84];
    v46 = v0[83];
    v47 = v0[80];
    v48 = v0[79];
    v49 = v0[78];
    v50 = v0[75];
    v51 = v0[73];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[108];
    v0[108] = v23 + 1;
    v24 = v0[102];
    sub_2532074E4(v0[106] + 40 * v23 + 72, (v0 + 17));
    v25 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    v26 = [v24 urlString];
    if (v26)
    {
      v27 = v26;
      v28 = sub_253CD0968();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v0[102];
    v32 = v0[75];
    v33 = v0[74];
    *v32 = v28;
    v32[1] = v30;
    v34 = [v31 spiClientIdentifier];
    v35 = v32 + *(v33 + 20);
    sub_253CCFF38();

    v36 = [v31 name];
    v37 = sub_253CD0968();
    v39 = v38;

    v40 = (v32 + *(v33 + 24));
    *v40 = v37;
    v40[1] = v39;
    sub_253267E60(v32, type metadata accessor for ZoneEntity);
    v41 = *v25;
    v0[109] = *v25;

    return MEMORY[0x2822009F8](sub_253262284, v41, 0);
  }
}

uint64_t sub_253262A50(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v6 = *(v5 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_253CD07E8();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253262BE4, v1, 0);
}

uint64_t sub_253262BE4()
{
  v59 = v0;
  v1 = *(v0 + 272);
  sub_253211D58(*(v0 + 200), &off_2864FBEC8);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Handling zone removed notification", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 184);

  v10 = *(v7 + 8);
  v10(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v11 = sub_253CCFD48();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CD15F0];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v14;
  sub_253CD0F58();
  if (!*(v12 + 16) || (v15 = sub_253217D40(v0 + 16), (v16 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v12 + 56) + 32 * v15, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_15:
    v25 = *(v0 + 264);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = *(v0 + 216);
    v29 = *(v0 + 224);
    sub_253211D58(*(v0 + 200), &off_2864FBEC8);
    (*(v29 + 16))(v27, v26, v28);
    v30 = sub_253CD07C8();
    v31 = sub_253CD0C98();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v57 = *(v0 + 248);
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);
    v38 = *(v0 + 216);
    if (v32)
    {
      v56 = v10;
      v39 = swift_slowAlloc();
      v55 = v34;
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      v41 = sub_253CCFD08();
      v54 = v35;
      v43 = v42;
      v44 = *(v37 + 8);
      v44(v36, v38);
      v45 = sub_253277BA8(v41, v43, &v58);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_2531F8000, v30, v31, "Did not find zone uuid. Could not handle zone removed notification %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C040E0](v40, -1, -1);
      MEMORY[0x259C040E0](v39, -1, -1);

      v56(v55, v57);
      v44(v54, v38);
    }

    else
    {

      v46 = *(v37 + 8);
      v46(v36, v38);
      v10(v34, v57);
      v46(v35, v38);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 176);

  v19 = __swift_project_boxed_opaque_existential_0((v17 + 112), *(v17 + 136))[6];
  *(v0 + 280) = v19;
  v20 = *(v19 + 16);
  *(v0 + 288) = v20;
  if (v20)
  {
    *(v0 + 296) = 0;
    v21 = *(v19 + 56);

    v23 = __swift_project_boxed_opaque_existential_0((v22 + 32), v21);
    v24 = *v23;
    *(v0 + 304) = *v23;

    return MEMORY[0x2822009F8](sub_253263098, v24, 0);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
LABEL_18:
  v48 = *(v0 + 264);
  v47 = *(v0 + 272);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v51 = *(v0 + 208);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_253263098()
{
  v1 = v0[38];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[38];
  }

  v3 = v0[26];
  v4 = v0[24];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532632AC, v4, 0);
}

uint64_t sub_2532632AC()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {
    v2 = v0[35];

    (*(v0[28] + 8))(v0[30], v0[27]);
    v4 = v0[33];
    v3 = v0[34];
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[26];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[37] = v1;
    v10 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v11 = *v10;
    v0[38] = *v10;

    return MEMORY[0x2822009F8](sub_253263098, v11, 0);
  }
}

uint64_t sub_2532633C8(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3910, &qword_253D4A300) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v5 = sub_253CD07E8();
  v2[48] = v5;
  v6 = *(v5 - 8);
  v2[49] = v6;
  v7 = *(v6 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v9 = sub_253CCFD58();
  v2[58] = v9;
  v10 = *(v9 - 8);
  v2[59] = v10;
  v11 = *(v10 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253263614, v1, 0);
}

uint64_t sub_253263614()
{
  v191 = v0;
  v1 = v0[62];
  v2 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v3 = sub_253CCFD48();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0640];
  v0[33] = sub_253CD0968();
  v0[34] = v6;
  sub_253CD0F58();
  if (!*(v4 + 16) || (v7 = sub_253217D40((v0 + 2)), (v8 & 1) == 0))
  {

    sub_253205FA4((v0 + 2));
LABEL_17:
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    goto LABEL_18;
  }

  sub_253205FF8(*(v4 + 56) + 32 * v7, (v0 + 22));
  sub_253205FA4((v0 + 2));

  if (!v0[25])
  {
LABEL_18:
    sub_253206054((v0 + 22), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_19:
    v33 = v0[62];
    v35 = v0[59];
    v34 = v0[60];
    v36 = v0[58];
    v37 = v0[50];
    sub_253211D58(v0[45], &off_2864FBEC8);
    (*(v35 + 16))(v34, v33, v36);
    v38 = sub_253CD07C8();
    v39 = sub_253CD0C98();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[62];
    v43 = v0[59];
    v42 = v0[60];
    v44 = v0[58];
    v45 = v0[49];
    v46 = v0[50];
    v47 = v0[48];
    if (v40)
    {
      v187 = v0[50];
      v48 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v190 = v174;
      *v48 = 136315138;
      v171 = v39;
      v0[41] = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v49 = sub_253CD0DB8();
      v50 = v44;
      v52 = v51;
      v53 = *(v43 + 8);
      v54 = v42;
      v55 = v50;
      v53(v54, v50);

      v56 = sub_253277BA8(v49, v52, &v190);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_2531F8000, v38, v171, "Could not handle new home added notification %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v174);
      MEMORY[0x259C040E0](v174, -1, -1);
      MEMORY[0x259C040E0](v48, -1, -1);

      (*(v45 + 8))(v187, v47);
      v53(v41, v55);
    }

    else
    {

      v57 = *(v43 + 8);
      v57(v42, v44);
      (*(v45 + 8))(v46, v47);
      v57(v41, v44);
    }

LABEL_22:
    v59 = v0[61];
    v58 = v0[62];
    v60 = v0[60];
    v62 = v0[56];
    v61 = v0[57];
    v64 = v0[54];
    v63 = v0[55];
    v66 = v0[52];
    v65 = v0[53];
    v67 = v0[51];
    v176 = v0[50];
    v181 = v0[47];
    v188 = v0[46];

    v68 = v0[1];

    return v68();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = v0[57];
  v11 = v0[35];
  v10 = v0[36];
  v180 = v0[44];
  v12 = __swift_project_boxed_opaque_existential_0((v180 + 112), *(v180 + 136));
  sub_2532074E4((v12 + 1), (v0 + 7));
  v13 = *__swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_253CCFEF8();
  v14 = sub_253CCFF58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v9, 1, v14);
  v18 = 0;
  if (v17 != 1)
  {
    v19 = v0[57];
    v18 = sub_253CCFF18();
    (*(v15 + 8))(v19, v14);
  }

  v20 = [v13 _homeWithUUID_];
  v0[63] = v20;

  if (!v20)
  {
    v70 = v0[51];
    sub_253211D58(v0[45], &off_2864FBEC8);

    v71 = sub_253CD07C8();
    v72 = sub_253CD0C78();

    v73 = os_log_type_enabled(v71, v72);
    v74 = v0[62];
    v76 = v0[58];
    v75 = v0[59];
    v189 = v0[51];
    v78 = v0[48];
    v77 = v0[49];
    v169 = v0;
    if (v73)
    {
      v182 = v0[58];
      v79 = swift_slowAlloc();
      v80 = v74;
      v81 = swift_slowAlloc();
      v190 = v81;
      *v79 = 136315138;
      v82 = sub_253277BA8(v11, v10, &v190);

      *(v79 + 4) = v82;
      _os_log_impl(&dword_2531F8000, v71, v72, "Could not find the home with UUID %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x259C040E0](v81, -1, -1);
      MEMORY[0x259C040E0](v79, -1, -1);

      (*(v77 + 8))(v189, v78);
      (*(v75 + 8))(v80, v182);
    }

    else
    {

      (*(v77 + 8))(v189, v78);
      (*(v75 + 8))(v74, v76);
    }

    v0 = v169;
    goto LABEL_22;
  }

  v186 = v20;
  v21 = v0[62];

  v22 = sub_253CCFD48();
  v23 = v0;
  if (!v22)
  {
    goto LABEL_28;
  }

  v24 = v22;
  v25 = *MEMORY[0x277CD2050];
  v0[37] = sub_253CD0968();
  v0[38] = v26;
  sub_253CD0F58();
  if (!*(v24 + 16) || (v27 = sub_253217D40((v0 + 12)), (v28 & 1) == 0))
  {

    sub_253205FA4((v0 + 12));
LABEL_28:
    *(v0 + 13) = 0u;
    *(v0 + 14) = 0u;
    goto LABEL_29;
  }

  sub_253205FF8(*(v24 + 56) + 32 * v27, (v0 + 26));
  sub_253205FA4((v0 + 12));

  if (!v0[29])
  {
LABEL_29:
    sub_253206054((v0 + 26), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_30:
    v84 = v0[61];
    v83 = v0[62];
    v86 = v0[58];
    v85 = v0[59];
    v87 = v23[52];
    sub_253211D58(v23[45], &off_2864FBEC8);
    (*(v85 + 16))(v84, v83, v86);
    v0 = v23;
    v88 = sub_253CD07C8();
    v89 = sub_253CD0C98();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v23[61];
    v92 = v23[62];
    v94 = v23[58];
    v93 = v23[59];
    v95 = v23[52];
    v96 = v23[49];
    v183 = v23[48];
    if (v90)
    {
      v177 = v23[52];
      v97 = swift_slowAlloc();
      v98 = v94;
      v172 = v94;
      v99 = swift_slowAlloc();
      v190 = v99;
      *v97 = 136315138;
      v175 = v92;
      v100 = sub_253CCFD08();
      log = v88;
      v102 = v101;
      v103 = *(v93 + 8);
      v103(v91, v98);
      v104 = sub_253277BA8(v100, v102, &v190);
      v0 = v23;

      *(v97 + 4) = v104;
      _os_log_impl(&dword_2531F8000, log, v89, "Did not find actionSet UUID in the notification dictionary %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x259C040E0](v99, -1, -1);
      MEMORY[0x259C040E0](v97, -1, -1);

      (*(v96 + 8))(v177, v183);
      v103(v175, v172);
    }

    else
    {

      v105 = *(v93 + 8);
      v105(v91, v94);
      (*(v96 + 8))(v95, v183);
      v105(v92, v94);
    }

    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v29 = v0[56];
  v31 = v0[39];
  v30 = v0[40];
  sub_253CCFEF8();
  if (v16(v29, 1, v14) == 1)
  {
    v32 = 0;
  }

  else
  {
    v106 = v0[56];
    v32 = sub_253CCFF18();
    (*(v15 + 8))(v106, v14);
  }

  v107 = [v186 actionSetWithUUID_];
  v0[64] = v107;

  v170 = v0;
  if (!v107)
  {
    v114 = v0[53];
    sub_253211D58(v0[45], &off_2864FBEC8);

    v115 = sub_253CD07C8();
    v116 = sub_253CD0C98();

    v117 = os_log_type_enabled(v115, v116);
    v118 = v0[62];
    v119 = v0[58];
    v120 = v0[59];
    v184 = v0[53];
    v122 = v0[48];
    v121 = v0[49];
    if (v117)
    {
      v178 = v0[62];
      v123 = swift_slowAlloc();
      v124 = v119;
      v125 = swift_slowAlloc();
      v190 = v125;
      *v123 = 136315138;
      v126 = sub_253277BA8(v31, v30, &v190);

      *(v123 + 4) = v126;
      _os_log_impl(&dword_2531F8000, v115, v116, "Could not find the scene with UUID %s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x259C040E0](v125, -1, -1);
      MEMORY[0x259C040E0](v123, -1, -1);

      (*(v121 + 8))(v184, v122);
      (*(v120 + 8))(v178, v124);
    }

    else
    {

      (*(v121 + 8))(v184, v122);
      (*(v120 + 8))(v118, v119);
    }

    v0 = v170;
    goto LABEL_22;
  }

  v108 = [v107 type];
  v109 = sub_253CD0968();
  v111 = v110;

  v112 = *MEMORY[0x277CCF1A0];
  if (v109 == sub_253CD0968() && v111 == v113)
  {

LABEL_43:
    v128 = v0[55];
    sub_253211D58(v0[45], &off_2864FBEC8);
    v129 = sub_253CD07C8();
    v130 = sub_253CD0C78();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v0[62];
    v134 = v0[58];
    v133 = v0[59];
    v135 = v0[55];
    v137 = v0[48];
    v136 = v0[49];
    if (v131)
    {
      v138 = v0[62];
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_2531F8000, v129, v130, "Not going to index trigger owned actionSet", v139, 2u);
      MEMORY[0x259C040E0](v139, -1, -1);

      (*(v136 + 8))(v135, v137);
      (*(v133 + 8))(v138, v134);
    }

    else
    {

      (*(v136 + 8))(v135, v137);
      (*(v133 + 8))(v132, v134);
    }

    v0 = v170;
    goto LABEL_22;
  }

  v127 = sub_253CD1118();

  if (v127)
  {
    goto LABEL_43;
  }

  v140 = v0[47];
  sub_253242890(v107, v140);
  v141 = type metadata accessor for SceneEntity();
  v142 = (*(*(v141 - 8) + 48))(v140, 1, v141);
  sub_253206054(v140, &qword_27F5A3910, &qword_253D4A300);
  if (v142 == 1)
  {
    v143 = v0[54];
    sub_253211D58(v0[45], &off_2864FBEC8);
    v144 = v107;
    v145 = sub_253CD07C8();
    v146 = sub_253CD0C98();

    v147 = os_log_type_enabled(v145, v146);
    v148 = v0[62];
    v149 = v0[58];
    v150 = v0[59];
    v151 = v0[54];
    v153 = v0[48];
    v152 = v0[49];
    if (v147)
    {
      v185 = v0[48];
      v154 = swift_slowAlloc();
      v179 = v148;
      v155 = swift_slowAlloc();
      v190 = v155;
      *v154 = 136315138;
      v0[42] = v144;
      sub_253200644(0, &qword_281530E90, off_279719FF0);
      v156 = sub_253CD00F8();
      v173 = v151;
      v158 = sub_253277BA8(v156, v157, &v190);

      *(v154 + 4) = v158;
      _os_log_impl(&dword_2531F8000, v145, v146, "Unable to create SceneEntity from scene %s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x259C040E0](v155, -1, -1);
      MEMORY[0x259C040E0](v154, -1, -1);

      (*(v152 + 8))(v173, v185);
      (*(v150 + 8))(v179, v149);
    }

    else
    {

      (*(v152 + 8))(v151, v153);
      (*(v150 + 8))(v148, v149);
    }

    goto LABEL_22;
  }

  v159 = __swift_project_boxed_opaque_existential_0((v180 + 112), *(v180 + 136))[6];
  v0[65] = v159;
  v160 = *(v159 + 16);
  v0[66] = v160;
  if (!v160)
  {

    v165 = v0[62];
    v166 = v0[58];
    v167 = v0[59];

    (*(v167 + 8))(v165, v166);
    goto LABEL_22;
  }

  v0[67] = 0;
  v161 = *(v159 + 56);

  v163 = __swift_project_boxed_opaque_existential_0((v162 + 32), v161);
  v164 = *v163;
  v0[68] = *v163;

  return MEMORY[0x2822009F8](sub_253264624, v164, 0);
}

uint64_t sub_253264624()
{
  v1 = v0[68];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[68];
  }

  v3 = v0[46];
  v4 = v0[44];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 17), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253264838, v4, 0);
}

uint64_t sub_253264838()
{
  v1 = *(v0 + 536) + 1;
  if (v1 == *(v0 + 528))
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    v4 = *(v0 + 496);
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);

    (*(v6 + 8))(v4, v5);
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = *(v0 + 480);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v15 = *(v0 + 416);
    v14 = *(v0 + 424);
    v16 = *(v0 + 408);
    v21 = *(v0 + 400);
    v22 = *(v0 + 376);
    v23 = *(v0 + 368);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 536) = v1;
    v19 = __swift_project_boxed_opaque_existential_0((*(v0 + 520) + 40 * v1 + 32), *(*(v0 + 520) + 40 * v1 + 56));
    v20 = *v19;
    *(v0 + 544) = *v19;

    return MEMORY[0x2822009F8](sub_253264624, v20, 0);
  }
}

uint64_t sub_2532649E8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = sub_253CD07E8();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v7 = sub_253CCFD58();
  v2[30] = v7;
  v8 = *(v7 - 8);
  v2[31] = v8;
  v9 = *(v8 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253264B70, v1, 0);
}

uint64_t sub_253264B70()
{
  v50 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v3 = sub_253CCFD48();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CCF150];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v6;
  sub_253CD0F58();
  if (!*(v4 + 16) || (v7 = sub_253217D40(v0 + 16), (v8 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v4 + 56) + 32 * v7, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 224);
    sub_253211D58(*(v0 + 200), &off_2864FBEC8);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C98();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v48 = *(v0 + 208);
    if (v24)
    {
      v31 = swift_slowAlloc();
      v47 = v30;
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v45 = v23;
      v33 = sub_253CCFD08();
      v46 = v26;
      v35 = v34;
      v36 = *(v27 + 8);
      v36(v25, v28);
      v37 = sub_253277BA8(v33, v35, &v49);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2531F8000, v22, v45, "Did not find scene uuid. Could not handle scene removed notification %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C040E0](v32, -1, -1);
      MEMORY[0x259C040E0](v31, -1, -1);

      (*(v29 + 8))(v47, v48);
      v36(v46, v28);
    }

    else
    {

      v38 = *(v27 + 8);
      v38(v25, v28);
      (*(v29 + 8))(v30, v48);
      v38(v26, v28);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 176);

  v11 = __swift_project_boxed_opaque_existential_0((v9 + 112), *(v9 + 136))[6];
  *(v0 + 272) = v11;
  v12 = *(v11 + 16);
  *(v0 + 280) = v12;
  if (v12)
  {
    *(v0 + 288) = 0;
    v13 = *(v11 + 56);

    v15 = __swift_project_boxed_opaque_existential_0((v14 + 32), v13);
    v16 = *v15;
    *(v0 + 296) = *v15;

    return MEMORY[0x2822009F8](sub_253264F80, v16, 0);
  }

  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
LABEL_16:
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_253264F80()
{
  v1 = v0[37];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[37];
  }

  v3 = v0[29];
  v4 = v0[24];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265194, v4, 0);
}

uint64_t sub_253265194()
{
  v1 = v0[36] + 1;
  if (v1 == v0[35])
  {
    v2 = v0[34];

    (*(v0[31] + 8))(v0[33], v0[30]);
    v4 = v0[32];
    v3 = v0[33];
    v6 = v0[28];
    v5 = v0[29];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[36] = v1;
    v9 = __swift_project_boxed_opaque_existential_0((v0[34] + 40 * v1 + 32), *(v0[34] + 40 * v1 + 56));
    v10 = *v9;
    v0[37] = *v9;

    return MEMORY[0x2822009F8](sub_253264F80, v10, 0);
  }
}

uint64_t sub_2532652A4(uint64_t a1)
{
  v2[10] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_253265374;

  return sub_253265DEC(a1);
}

uint64_t sub_253265374()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253265490, v2, 0);
}

uint64_t sub_253265490()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_253265568, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_253265568()
{
  v1 = v0[16];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[16];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265778, v3, 0);
}

uint64_t sub_253265778()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {
    v2 = v0[13];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[15] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v7 = *v6;
    v0[16] = *v6;

    return MEMORY[0x2822009F8](sub_253265568, v7, 0);
  }
}

uint64_t sub_253265848(uint64_t a1)
{
  v2[10] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_253265918;

  return sub_253265DEC(a1);
}

uint64_t sub_253265918()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253265A34, v2, 0);
}

uint64_t sub_253265A34()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_253265B0C, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_253265B0C()
{
  v1 = v0[16];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[16];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265D1C, v3, 0);
}

uint64_t sub_253265D1C()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {
    v2 = v0[13];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[15] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v7 = *v6;
    v0[16] = *v6;

    return MEMORY[0x2822009F8](sub_253265B0C, v7, 0);
  }
}

uint64_t sub_253265DEC(uint64_t a1)
{
  v3 = *v1;
  v2[26] = a1;
  v2[27] = v3;
  v4 = sub_253CD07E8();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_253CCFD58();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253265F50, v1, 0);
}

uint64_t sub_253265F50()
{
  v76 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v3 = sub_253CCFD48();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  *(v0 + 160) = sub_253CD0968();
  *(v0 + 168) = v5;
  sub_253CD0F58();
  if (!*(v4 + 16) || (v6 = sub_253217D40(v0 + 16), (v7 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v4 + 56) + 32 * v6, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v17 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);
    sub_253211D58(*(v0 + 216), &off_2864FBEC8);
    (*(v19 + 16))(v18, v17, v20);
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C98();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = *(v0 + 256);
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 224);
    if (v24)
    {
      v73 = *(v0 + 224);
      v31 = swift_slowAlloc();
      v69 = v23;
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136315138;
      v33 = sub_253CCFD08();
      v71 = v28;
      v35 = v34;
      (*(v26 + 8))(v25, v27);
      v36 = sub_253277BA8(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2531F8000, v22, v69, "Could not find accessory in notification %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C040E0](v32, -1, -1);
      MEMORY[0x259C040E0](v31, -1, -1);

      (*(v29 + 8))(v71, v73);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
      (*(v29 + 8))(v28, v30);
    }

    goto LABEL_16;
  }

  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v0 + 192);
  v9 = [v8 home];
  if (v9)
  {
    goto LABEL_7;
  }

  v42 = *(v0 + 288);
  v43 = sub_253CCFD48();
  if (!v43)
  {
    goto LABEL_28;
  }

  v44 = v43;
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v45;
  sub_253CD0F58();
  if (!*(v44 + 16) || (v46 = sub_253217D40(v0 + 56), (v47 & 1) == 0))
  {

    sub_253205FA4(v0 + 56);
LABEL_28:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_29;
  }

  sub_253205FF8(*(v44 + 56) + 32 * v46, v0 + 128);
  sub_253205FA4(v0 + 56);

  if (!*(v0 + 152))
  {
LABEL_29:
    sub_253206054(v0 + 128, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_30;
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 248);
    sub_253211D58(*(v0 + 216), &off_2864FBEC8);
    (*(v51 + 16))(v49, v48, v50);
    v53 = sub_253CD07C8();
    v54 = sub_253CD0C98();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 280);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    v59 = *(v0 + 248);
    v61 = *(v0 + 224);
    v60 = *(v0 + 232);
    if (v55)
    {
      v74 = *(v0 + 224);
      v62 = swift_slowAlloc();
      v70 = v54;
      v63 = swift_slowAlloc();
      v75 = v63;
      *v62 = 136315138;
      log = v53;
      v64 = sub_253CCFD08();
      v72 = v59;
      v66 = v65;
      (*(v57 + 8))(v56, v58);
      v67 = sub_253277BA8(v64, v66, &v75);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2531F8000, log, v70, "Could not find valid instance of home in notification %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x259C040E0](v63, -1, -1);
      MEMORY[0x259C040E0](v62, -1, -1);

      (*(v60 + 8))(v72, v74);
    }

    else
    {

      (*(v57 + 8))(v56, v58);
      (*(v60 + 8))(v59, v61);
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 200);
LABEL_7:
  v10 = sub_25323F600(v8, v9);
  v11 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {

LABEL_16:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v13 = sub_253221A64(*(v10 + 16), 0);
  v14 = *(type metadata accessor for HomeDeviceEntity() - 8);
  v15 = sub_2532220B8(&v75, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v12, v11);
  result = sub_25320C5EC();
  if (v15 != v12)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v37 = *(v0 + 280);
  v38 = *(v0 + 272);
  v39 = *(v0 + 248);
  v40 = *(v0 + 240);
  (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

  v41 = *(v0 + 8);

  return v41(v13);
}

uint64_t sub_253266614(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = sub_253CD07E8();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39B0, &unk_253D4A570) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = sub_253CCFD58();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532667D4, v1, 0);
}

uint64_t sub_2532667D4()
{
  v1 = v0[26];
  v2 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[10])
  {
    sub_253206054((v0 + 7), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_8;
  }

  sub_253200644(0, &qword_281530E68, off_27971A230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v20 = v0[20];
    sub_253211D58(v0[17], &off_2864FBEC8);
    v21 = sub_253CD07C8();
    v22 = sub_253CD0C98();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[24];
    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2531F8000, v21, v22, "Could not index service group as the notification did not contain a HMDServiceGroup", v30, 2u);
      MEMORY[0x259C040E0](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    goto LABEL_11;
  }

  v3 = v0[23];
  v4 = v0[14];
  v0[27] = v4;
  sub_253240A68(v4, v3);
  v5 = type metadata accessor for HomeGroupEntity();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_253206054(v3, &qword_27F5A39B0, &unk_253D4A570);
  if (v6 == 1)
  {
    v7 = v0[21];
    sub_253211D58(v0[17], &off_2864FBEC8);
    v8 = v4;
    v9 = sub_253CD07C8();
    v10 = sub_253CD0C98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v9, v10, "Unable to create HomeGroupEntity for %@", v11, 0xCu);
      sub_253206054(v12, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v12, -1, -1);
      MEMORY[0x259C040E0](v11, -1, -1);
    }

    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[18];
    v19 = v0[19];

    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    goto LABEL_11;
  }

  v38 = __swift_project_boxed_opaque_existential_0((v0[16] + 112), *(v0[16] + 136))[6];
  v0[28] = v38;
  v39 = *(v38 + 16);
  v0[29] = v39;
  if (!v39)
  {

    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_11:
    v31 = v0[26];
    v32 = v0[22];
    v33 = v0[23];
    v35 = v0[20];
    v34 = v0[21];

    v36 = v0[1];

    return v36();
  }

  v0[30] = 0;
  v40 = *(v38 + 56);

  v42 = __swift_project_boxed_opaque_existential_0((v41 + 32), v40);
  v43 = *v42;
  v0[31] = *v42;

  return MEMORY[0x2822009F8](sub_253266C20, v43, 0);
}

uint64_t sub_253266C20()
{
  v1 = v0[31];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[31];
  }

  v3 = v0[22];
  v4 = v0[16];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253266E34, v4, 0);
}

uint64_t sub_253266E34()
{
  v1 = v0[30] + 1;
  if (v1 == v0[29])
  {
    v3 = v0[27];
    v2 = v0[28];

    (*(v0[25] + 8))(v0[26], v0[24]);
    v4 = v0[26];
    v5 = v0[22];
    v6 = v0[23];
    v8 = v0[20];
    v7 = v0[21];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[30] = v1;
    v11 = __swift_project_boxed_opaque_existential_0((v0[28] + 40 * v1 + 32), *(v0[28] + 40 * v1 + 56));
    v12 = *v11;
    v0[31] = *v11;

    return MEMORY[0x2822009F8](sub_253266C20, v12, 0);
  }
}

uint64_t sub_253266F54(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_253CD07E8();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532670E8, v1, 0);
}

uint64_t sub_2532670E8()
{
  v62 = v0;
  v1 = *(v0 + 280);
  sub_253211D58(*(v0 + 208), &off_2864FBEC8);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Handling service group removed notification", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 192);

  v10 = *(v7 + 8);
  v10(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v11 = sub_253CCFD48();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CD0D58];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v14;
  sub_253CD0F58();
  if (!*(v12 + 16) || (v15 = sub_253217D40(v0 + 16), (v16 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v12 + 56) + 32 * v15, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_15:
    v25 = *(v0 + 272);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    sub_253211D58(*(v0 + 208), &off_2864FBEC8);
    (*(v29 + 16))(v27, v26, v28);
    v30 = sub_253CD07C8();
    v31 = sub_253CD0C98();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 264);
    v34 = *(v0 + 272);
    v35 = *(v0 + 248);
    v60 = *(v0 + 256);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v38 = *(v0 + 224);
    if (v32)
    {
      v59 = v10;
      v39 = swift_slowAlloc();
      v58 = v34;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315138;
      v57 = v31;
      *(v0 + 184) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v41 = sub_253CD0DB8();
      v42 = v38;
      v44 = v43;
      v45 = *(v37 + 8);
      v46 = v36;
      v47 = v42;
      v45(v46, v42);

      v48 = sub_253277BA8(v41, v44, &v61);

      *(v39 + 4) = v48;
      _os_log_impl(&dword_2531F8000, v30, v57, "Did not find service group uuid. Could not handle service group removed notification %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C040E0](v40, -1, -1);
      MEMORY[0x259C040E0](v39, -1, -1);

      v59(v58, v60);
      v45(v35, v47);
    }

    else
    {

      v49 = *(v37 + 8);
      v49(v36, v38);
      v10(v34, v60);
      v49(v35, v38);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 176);

  v19 = __swift_project_boxed_opaque_existential_0((v17 + 112), *(v17 + 136))[6];
  *(v0 + 288) = v19;
  v20 = *(v19 + 16);
  *(v0 + 296) = v20;
  if (v20)
  {
    *(v0 + 304) = 0;
    v21 = *(v19 + 56);

    v23 = __swift_project_boxed_opaque_existential_0((v22 + 32), v21);
    v24 = *v23;
    *(v0 + 312) = *v23;

    return MEMORY[0x2822009F8](sub_2532675E0, v24, 0);
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_18:
  v51 = *(v0 + 272);
  v50 = *(v0 + 280);
  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 216);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_2532675E0()
{
  v1 = v0[39];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[39];
  }

  v3 = v0[27];
  v4 = v0[25];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532677F4, v4, 0);
}

uint64_t sub_2532677F4()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {
    v2 = v0[36];

    (*(v0[29] + 8))(v0[31], v0[28]);
    v4 = v0[34];
    v3 = v0[35];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[27];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[38] = v1;
    v10 = __swift_project_boxed_opaque_existential_0((v0[36] + 40 * v1 + 32), *(v0[36] + 40 * v1 + 56));
    v11 = *v10;
    v0[39] = *v10;

    return MEMORY[0x2822009F8](sub_2532675E0, v11, 0);
  }
}

void sub_253267910(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_253CD0DD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2532679D4()
{
  sub_253267A60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_253267A60()
{
  if (!qword_27F5A39A0)
  {
    sub_253CCFD58();
    v0 = sub_253CD00E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A39A0);
    }
  }
}

uint64_t sub_253267AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A00, &qword_253D4A688);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C8, &qword_253D4A618);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v32[3] = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
  v32[4] = &off_2864FC158;
  v15 = swift_allocObject();
  v32[0] = v15;
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  swift_defaultActor_initialize();
  v17 = MEMORY[0x277D84F90];
  *(a2 + 152) = 0;
  *(a2 + 160) = v17;
  v18 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v20 = *(*(v19 - 8) + 56);
  v20(a2 + v18, 1, 1, v19);
  v21 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
  v23 = *(*(v22 - 8) + 56);
  v23(a2 + v21, 1, 1, v22);
  sub_2532074E4(v32, a2 + 112);
  v20(v14, 1, 1, v19);
  v31 = v14;
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  (*(v29 + 104))(v28, *MEMORY[0x277D85778], v30);
  sub_253CD0B98();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v23(v10, 0, 1, v22);
  v24 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2532684C0(v10, a2 + v24, &qword_27F5A39C8, &qword_253D4A618);
  swift_endAccess();
  v25 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_253268528(v14, a2 + v25);
  swift_endAccess();
  sub_253206054(v14, &qword_27F5A39E8, &qword_253D4A658);
  return a2;
}

uint64_t sub_253267E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_253267EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_253267F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253267F90(uint64_t a1)
{
  v4 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253254D48(a1, v1 + v5, v7, v8);
}

uint64_t sub_2532680B4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253254248(a1, v6, v7, v8, v1 + v5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2532681DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25320C438;

  return sub_2532537C4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_2532682F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_2532520C8(a1, v5, v4);
}

uint64_t sub_253268470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2532684C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_253268528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2532685C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25326860C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_253268684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A08, &qword_253D4A888);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

unint64_t sub_253268700()
{
  result = qword_27F5A3A10;
  if (!qword_27F5A3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A10);
  }

  return result;
}

unint64_t sub_253268758()
{
  result = qword_27F5A3A18;
  if (!qword_27F5A3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A18);
  }

  return result;
}

unint64_t sub_253268830()
{
  result = qword_27F5A3A20;
  if (!qword_27F5A3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A20);
  }

  return result;
}

uint64_t sub_253268884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_253CD0738();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253268958, 0, 0);
}

uint64_t sub_253268958()
{
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_253CD0768();
  __swift_project_value_buffer(v2, qword_281532BF8);
  sub_253CD0728();
  v3 = sub_253CD0758();
  v4 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v3, v4, v7, "SetPersonalContentSettingIntent.perform.signpost", "", v6, 2u);
    MEMORY[0x259C040E0](v6, -1, -1);
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);

  (*(v11 + 16))(v8, v9, v10);
  v16 = sub_253CD07A8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_253CD0798();
  (*(v11 + 8))(v9, v10);
  sub_253CCFC98();
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  *(v0 + 144) = v20;
  sub_253CCFC98();
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  *(v0 + 152) = v22;
  sub_253CCFC98();
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  *(v0 + 160) = v24;
  sub_253CCFC98();
  v25 = *(v0 + 184);
  v26 = swift_task_alloc();
  *(v0 + 168) = v26;
  *v26 = v0;
  v26[1] = sub_253268BC8;

  return sub_253269E44(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_253268BC8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_253268DE0;
  }

  else
  {
    v9 = *(v4 + 152);
    v8 = *(v4 + 160);
    v10 = *(v4 + 144);

    *(v4 + 186) = a1 & 1;
    v7 = sub_253268D10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_253268D10()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  *(v0 + 185) = *(v0 + 186);
  sub_25326B9E8();
  sub_253CCFC88();
  sub_253268E9C("SetPersonalContentSettingIntent.perform.signpost", 48, 2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_253268DE0()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  sub_253268E9C("SetPersonalContentSettingIntent.perform.signpost", 48, 2);

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_253268E9C(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_253CD0778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v14 = sub_253CD0768();
  __swift_project_value_buffer(v14, qword_281532BF8);
  v15 = sub_253CD0758();
  sub_253CD0788();
  v20 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x259C040E0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2532691B0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_253268884(a1, v4, v5, v7, v6);
}

uint64_t sub_253269270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25326B3C4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_25326929C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A38, &qword_253D4AA58);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253269314(uint64_t a1)
{
  v2 = sub_253268830();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_253269350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_253269398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2532693E8()
{
  result = qword_27F5A3A28;
  if (!qword_27F5A3A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3A30, &qword_253D4AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A28);
  }

  return result;
}

void *sub_25326944C(void *a1, void *a2, int a3)
{
  v112 = a3;
  v111 = a1;
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v104 - v11;
  v13 = sub_253CCFF58();
  v113 = *(v13 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 assistantAccessControl];
  if (v17)
  {
    v18 = v17;
    v105 = a2;
    v107 = v12;
    v108 = v3;
    v109 = v6;
    v110 = v5;
    v19 = *MEMORY[0x277CD12F8];
    v20 = sub_253CD0968();
    v22 = v21;
    v106 = v18;
    v23 = encodeRootObject();
    v24 = sub_253CCFE78();
    v26 = v25;

    v117 = MEMORY[0x277CC9318];
    *&v116 = v24;
    *(&v116 + 1) = v26;
    sub_2531FF150(&v116, &v114);
    v27 = MEMORY[0x277D84F98];
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v27;
    v28 = v115;
    v29 = __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
    v30 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v29);
    v32 = (&v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    sub_253275584(*v32, v32[1], v20, v22, v23, &v118);
    __swift_destroy_boxed_opaque_existential_0(&v114);

    v34 = v118;
    v35 = *MEMORY[0x277CD12D8];
    v36 = sub_253CD0968();
    v38 = v37;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
    v117 = v39;
    *&v116 = MEMORY[0x277D84F90];
    sub_2531FF150(&v116, &v114);
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v34;
    v40 = v115;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
    v42 = *(*(v40 - 8) + 64);
    MEMORY[0x28223BE20](v41);
    v44 = v13;
    v45 = (&v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    sub_25327576C(*v45, v36, v38, v23, &v118);
    __swift_destroy_boxed_opaque_existential_0(&v114);

    v47 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_253D48DA0;
    v49 = [v111 uuid];
    sub_253CCFF38();

    v50 = sub_253CCFF08();
    v52 = v51;
    v54 = v113 + 8;
    v53 = *(v113 + 8);
    v111 = v44;
    v53(v16, v44);
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    v113 = v54;
    if (v112)
    {
      v55 = MEMORY[0x277CD12E0];
    }

    else
    {
      v55 = MEMORY[0x277CD12E8];
    }

    v63 = *v55;
    v64 = sub_253CD0968();
    v66 = v65;
    v117 = v39;
    *&v116 = v48;
    sub_2531FF150(&v116, &v114);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v47;
    v68 = v115;
    v69 = __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
    v70 = *(*(v68 - 8) + 64);
    MEMORY[0x28223BE20](v69);
    v72 = (&v104 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    sub_25327576C(*v72, v64, v66, isUniquelyReferenced_nonNull_native, &v118);
    __swift_destroy_boxed_opaque_existential_0(&v114);

    v74 = v118;
    v75 = v105;
    v76 = *MEMORY[0x277CD14D8];
    v77 = sub_253CD0968();
    v79 = v78;
    v80 = [v75 uuid];
    sub_253CCFF38();

    v81 = sub_253CCFF08();
    v83 = v82;
    v53(v16, v111);
    v117 = MEMORY[0x277D837D0];
    *&v116 = v81;
    *(&v116 + 1) = v83;
    sub_2531FF150(&v116, &v114);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v74;
    v85 = v115;
    v86 = __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
    v87 = *(*(v85 - 8) + 64);
    MEMORY[0x28223BE20](v86);
    v89 = (&v104 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    sub_253275194(*v89, v89[1], v77, v79, v84, &v118);
    __swift_destroy_boxed_opaque_existential_0(&v114);

    a2 = v118;
    v91 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25326929C();
    v92 = v107;
    sub_253CD07D8();
    v93 = sub_253CD07C8();
    v94 = sub_253CD0C78();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v109;
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v116 = v98;
      *v97 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
      v99 = sub_253CD08E8();
      v101 = v100;

      v102 = sub_253277BA8(v99, v101, &v116);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_2531F8000, v93, v94, "Prepared the Personal content message payload: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x259C040E0](v98, -1, -1);
      MEMORY[0x259C040E0](v97, -1, -1);
    }

    else
    {
    }

    (*(v96 + 8))(v92, v110);
  }

  else
  {
    v56 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25326929C();
    sub_253CD07D8();
    v57 = a2;
    v58 = sub_253CD07C8();
    v59 = sub_253CD0C98();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v57;
      *a2 = v57;
      v61 = v57;
      _os_log_impl(&dword_2531F8000, v58, v59, "Could not find assistant access control for user %@", v60, 0xCu);
      sub_253206054(a2, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](a2, -1, -1);
      MEMORY[0x259C040E0](v60, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    sub_25326BA3C();
    swift_allocError();
    *v62 = 44;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_253269E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 25) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_253CD07E8();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v12 = sub_253CCFF58();
  *(v7 + 152) = v12;
  v13 = *(v12 - 8);
  *(v7 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326A004, 0, 0);
}

uint64_t sub_25326A004()
{
  v155 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  *(v0 + 200) = v2;

  v3 = [v2 homes];
  if (!v3)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v12 = sub_253CD0A58();

  v151 = v12;
  v147 = v2;
  if (v12 >> 62)
  {
LABEL_52:
    v13 = sub_253CD0ED8();
    if (v13)
    {
LABEL_4:
      v14 = 0;
      v150 = *(v0 + 160) + 8;
      while (1)
      {
        if ((v151 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C00F30](v14, v151);
        }

        else
        {
          if (v14 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v15 = *(v151 + 8 * v14 + 32);
        }

        *(v0 + 208) = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = *(v0 + 192);
        v18 = *(v0 + 152);
        v19 = *(v0 + 32);
        v20 = *(v0 + 40);
        v152 = v15;
        v21 = [v15 spiClientIdentifier];
        sub_253CCFF38();

        v22 = sub_253CCFF08();
        v24 = v23;
        v25 = *v150;
        *(v0 + 216) = *v150;
        *(v0 + 224) = v150 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v149 = v25;
        v25(v17, v18);
        if (v22 == v19 && v24 == v20)
        {
          break;
        }

        v26 = *(v0 + 32);
        v27 = *(v0 + 40);
        v28 = sub_253CD1118();

        if (v28)
        {
          goto LABEL_16;
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_53;
        }
      }

LABEL_16:

      v3 = [v152 users];
      if (v3)
      {
        v29 = v3;
        sub_253200644(0, &qword_27F5A3A78, off_27971A258);
        v30 = sub_253CD0A58();

        if (v30 >> 62)
        {
          v31 = sub_253CD0ED8();
          if (v31)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
LABEL_19:
            v32 = 0;
            v148 = v31;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x259C00F30](v32, v30);
              }

              else
              {
                if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v33 = *(v30 + 8 * v32 + 32);
              }

              *(v0 + 232) = v33;
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                goto LABEL_50;
              }

              v35 = *(v0 + 184);
              v36 = *(v0 + 152);
              v38 = *(v0 + 48);
              v37 = *(v0 + 56);
              v151 = v33;
              v39 = [v33 spiClientIdentifier];
              sub_253CCFF38();

              v40 = sub_253CCFF08();
              v42 = v41;
              v149(v35, v36);
              if (v40 == v38 && v42 == v37)
              {
                break;
              }

              v43 = *(v0 + 48);
              v44 = *(v0 + 56);
              v45 = sub_253CD1118();

              if (v45)
              {
                goto LABEL_31;
              }

              ++v32;
              if (v34 == v148)
              {
                goto LABEL_57;
              }
            }

LABEL_31:
            v46 = *(v0 + 152);
            v47 = *(v0 + 160);
            v48 = *(v0 + 144);
            v50 = *(v0 + 64);
            v49 = *(v0 + 72);

            sub_253CCFEF8();
            if ((*(v47 + 48))(v48, 1, v46) == 1)
            {
              sub_253206054(*(v0 + 144), &unk_27F5A2AD0, &unk_253D486A0);
LABEL_39:
              v70 = *(v0 + 112);
              v71 = *(v0 + 72);
              v72 = *MEMORY[0x277D0F1A8];
              sub_253CD0968();
              sub_25326929C();
              sub_253CD07D8();

              v73 = sub_253CD07C8();
              v74 = sub_253CD0C98();

              v75 = os_log_type_enabled(v73, v74);
              v76 = *(v0 + 112);
              v78 = *(v0 + 80);
              v77 = *(v0 + 88);
              if (v75)
              {
                v80 = *(v0 + 64);
                v79 = *(v0 + 72);
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v154[0] = v82;
                *v81 = 136315138;
                *(v81 + 4) = sub_253277BA8(v80, v79, v154);
                _os_log_impl(&dword_2531F8000, v73, v74, "Could not find the accessory with %s", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v82);
                MEMORY[0x259C040E0](v82, -1, -1);
                MEMORY[0x259C040E0](v81, -1, -1);
              }

              (*(v77 + 8))(v76, v78);
              sub_25326BA3C();
              swift_allocError();
              *v83 = 42;
              swift_willThrow();

              goto LABEL_60;
            }

            v51 = *(v0 + 176);
            (*(*(v0 + 160) + 32))(v51, *(v0 + 144), *(v0 + 152));
            sub_25326CF04(v51);
            *(v0 + 240) = v52;
            if (!v52)
            {
              v149(*(v0 + 176), *(v0 + 152));
              goto LABEL_39;
            }

            v53 = v52;
            objc_opt_self();
            v54 = swift_dynamicCastObjCClass();
            *(v0 + 248) = *MEMORY[0x277D0F1A8];
            sub_253CD0968();
            if (v54)
            {
              v55 = *(v0 + 136);
              v56 = v53;
              sub_25326929C();
              sub_253CD07D8();
              v57 = v56;
              v58 = sub_253CD07C8();
              v59 = sub_253CD0C78();

              if (os_log_type_enabled(v58, v59))
              {
                v60 = *(v0 + 25);
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                *v61 = 138412546;
                *(v61 + 4) = v54;
                *v62 = v54;
                *(v61 + 12) = 1024;
                *(v61 + 14) = v60;
                v63 = v57;
                _os_log_impl(&dword_2531F8000, v58, v59, "Going to change personal content settings for %@ to %{BOOL}d", v61, 0x12u);
                sub_253206054(v62, &qword_27F5A2AC8, &qword_253D48890);
                MEMORY[0x259C040E0](v62, -1, -1);
                MEMORY[0x259C040E0](v61, -1, -1);
              }

              v64 = *(v0 + 136);
              v66 = *(v0 + 80);
              v65 = *(v0 + 88);
              v67 = *(v0 + 25);

              v68 = *(v65 + 8);
              *(v0 + 256) = v68;
              *(v0 + 264) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v68(v64, v66);
              v69 = sub_25326944C(v54, v151, v67);
              *(v0 + 272) = v69;
              v97 = *(v0 + 168);
              v98 = *MEMORY[0x277CD1300];
              v99 = v69;
              v100 = sub_253CD0968();
              v102 = v101;
              *(v0 + 280) = v101;
              v103 = [v152 messageTargetUUID];
              sub_253CCFF38();

              v104 = swift_task_alloc();
              *(v0 + 288) = v104;
              v104[2] = v100;
              v104[3] = v102;
              v104[4] = v97;
              v104[5] = v99;
              v104[6] = v152;
              v105 = *(MEMORY[0x277D859E0] + 4);
              v106 = swift_task_alloc();
              *(v0 + 296) = v106;
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A88, &unk_253D4AAA0);
              *v106 = v0;
              v106[1] = sub_25326AE68;
              v8 = sub_25326BA90;
              v3 = (v0 + 16);
              v7 = 0x8000000253D50E70;
              v4 = 0;
              v5 = 0;
              v6 = 0xD00000000000002ALL;
              v9 = v104;

              return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
            }

            v84 = *(v0 + 120);
            sub_25326929C();
            sub_253CD07D8();
            v85 = v53;
            v86 = sub_253CD07C8();
            v87 = sub_253CD0C98();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *v88 = 138412290;
              *(v88 + 4) = v85;
              *v89 = v53;
              v90 = v85;
              _os_log_impl(&dword_2531F8000, v86, v87, "Cannot change personal content settings for non apple media accessory: %@", v88, 0xCu);
              sub_253206054(v89, &qword_27F5A2AC8, &qword_253D48890);
              MEMORY[0x259C040E0](v89, -1, -1);
              MEMORY[0x259C040E0](v88, -1, -1);
            }

            v91 = *(v0 + 176);
            v92 = *(v0 + 152);
            v93 = *(v0 + 120);
            v95 = *(v0 + 80);
            v94 = *(v0 + 88);

            (*(v94 + 8))(v93, v95);
            sub_25326BA3C();
            swift_allocError();
            *v96 = 45;
            swift_willThrow();

            v149(v91, v92);
            goto LABEL_62;
          }
        }

LABEL_57:
        v121 = *(v0 + 104);
        v122 = *(v0 + 56);

        v123 = *MEMORY[0x277D0F1A8];
        sub_253CD0968();
        sub_25326929C();
        sub_253CD07D8();

        v124 = sub_253CD07C8();
        v125 = sub_253CD0C98();

        v126 = os_log_type_enabled(v124, v125);
        v127 = *(v0 + 104);
        v129 = *(v0 + 80);
        v128 = *(v0 + 88);
        if (v126)
        {
          v131 = *(v0 + 48);
          v130 = *(v0 + 56);
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v154[0] = v133;
          *v132 = 136315138;
          *(v132 + 4) = sub_253277BA8(v131, v130, v154);
          _os_log_impl(&dword_2531F8000, v124, v125, "Could not find the user with %s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v133);
          MEMORY[0x259C040E0](v133, -1, -1);
          MEMORY[0x259C040E0](v132, -1, -1);
        }

        (*(v128 + 8))(v127, v129);
        sub_25326BA3C();
        swift_allocError();
        *v134 = 41;
        swift_willThrow();
LABEL_60:

        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_53:
  v107 = *(v0 + 96);
  v108 = *(v0 + 40);

  v109 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_25326929C();
  sub_253CD07D8();

  v110 = sub_253CD07C8();
  v111 = sub_253CD0C98();

  v112 = os_log_type_enabled(v110, v111);
  v114 = *(v0 + 88);
  v113 = *(v0 + 96);
  v115 = *(v0 + 80);
  if (v112)
  {
    v117 = *(v0 + 32);
    v116 = *(v0 + 40);
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v154[0] = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_253277BA8(v117, v116, v154);
    _os_log_impl(&dword_2531F8000, v110, v111, "Could not find the home with %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x259C040E0](v119, -1, -1);
    MEMORY[0x259C040E0](v118, -1, -1);
  }

  (*(v114 + 8))(v113, v115);
  sub_25326BA3C();
  swift_allocError();
  *v120 = 40;
  swift_willThrow();
LABEL_61:

LABEL_62:
  v136 = *(v0 + 184);
  v135 = *(v0 + 192);
  v138 = *(v0 + 168);
  v137 = *(v0 + 176);
  v140 = *(v0 + 136);
  v139 = *(v0 + 144);
  v142 = *(v0 + 120);
  v141 = *(v0 + 128);
  v143 = *(v0 + 104);
  v144 = *(v0 + 112);
  v153 = *(v0 + 96);

  v145 = *(v0 + 8);

  return v145(0);
}

uint64_t sub_25326AE68()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_25326AFC0, 0, 0);
}

uint64_t sub_25326AFC0()
{
  v64 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  (*(v0 + 216))(*(v0 + 168), *(v0 + 152));
  if (v3 == 1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    v59 = *(v0 + 224);
    v7 = v2;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    swift_willThrow();
    v12 = v7;

    sub_25326BAA0(v7, 1);
    v6(v10, v11);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);
    v57 = *(v0 + 104);
    v60 = *(v0 + 96);

    v22 = *(v0 + 8);
    v23 = 0;
  }

  else
  {
    v24 = *(v0 + 248);
    v25 = *(v0 + 128);
    sub_253CD0968();
    sub_25326929C();
    sub_253CD07D8();

    v26 = sub_253CD07C8();
    v27 = sub_253CD0C78();
    sub_25326BAA0(v2, 0);
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v58 = *(v0 + 176);
    v61 = *(v0 + 256);
    v55 = *(v0 + 128);
    v56 = *(v0 + 152);
    v53 = *(v0 + 232);
    v54 = *(v0 + 80);
    if (v28)
    {
      v51 = *(v0 + 25);
      v52 = *(v0 + 216);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136315394;
      v37 = sub_253CD08E8();
      v39 = sub_253277BA8(v37, v38, &v63);

      *(v35 + 4) = v39;
      *(v35 + 12) = 1024;
      *(v35 + 14) = v51;
      _os_log_impl(&dword_2531F8000, v26, v27, "Personal content settings was updated successfully. %s with enabled: %{BOOL}d", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x259C040E0](v36, -1, -1);
      MEMORY[0x259C040E0](v35, -1, -1);

      sub_25326BAA0(v2, 0);
      v61(v55, v54);
      v52(v58, v56);
    }

    else
    {

      sub_25326BAA0(v2, 0);
      v61(v55, v54);
      v32(v58, v56);
    }

    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    v43 = *(v0 + 168);
    v42 = *(v0 + 176);
    v45 = *(v0 + 136);
    v44 = *(v0 + 144);
    v47 = *(v0 + 120);
    v46 = *(v0 + 128);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v62 = *(v0 + 96);

    v22 = *(v0 + 8);
    v23 = 1;
  }

  return v22(v23);
}

uint64_t sub_25326B3C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A40, &qword_253D4AA60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v37 - v2;
  v53 = sub_253CCFCC8();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A48, &qword_253D4AA68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A50, &qword_253D4AA70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A58, &qword_253D4AA78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A60, &qword_253D4AA80);
  sub_253CCFE28();
  v47 = sub_253CCFE38();
  v18 = *(v47 - 8);
  v39 = *(v18 + 56);
  v54 = v18 + 56;
  v39(v17, 0, 1, v47);
  v51 = sub_253CD0928();
  v56 = 0;
  v57 = 0;
  v19 = *(v51 - 8);
  v20 = *(v19 + 56);
  v49 = v19 + 56;
  v50 = v20;
  v20(v13, 1, 1, v51);
  v21 = sub_253CCFC78();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v46 = v22 + 56;
  v52 = v21;
  v23(v9, 1, 1, v21);
  v38 = v23;
  v45 = *MEMORY[0x277CBA308];
  v24 = *(v3 + 104);
  v44 = v3 + 104;
  v48 = v24;
  v25 = v53;
  v24(v55);
  v41 = sub_253CCFCA8();
  sub_253CCFE28();
  v26 = v47;
  v27 = v39;
  v39(v17, 0, 1, v47);
  v56 = 0;
  v57 = 0;
  v50(v13, 1, 1, v51);
  v28 = v9;
  v23(v9, 1, 1, v21);
  v29 = v45;
  v48(v55, v45, v25);
  v40 = sub_253CCFCA8();
  sub_253CCFE28();
  v27(v17, 0, 1, v26);
  v56 = 0;
  v57 = 0;
  v50(v13, 1, 1, v51);
  v30 = v38;
  v38(v28, 1, 1, v52);
  v31 = v55;
  v32 = v29;
  v33 = v53;
  v34 = v48;
  v48(v55, v32, v53);
  sub_253CCFCA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A68, &qword_253D4AA88);
  sub_253CCFE28();
  v27(v17, 0, 1, v47);
  LOBYTE(v56) = 2;
  v35 = sub_253CD0A98();
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  v30(v28, 1, 1, v52);
  v34(v31, v45, v33);
  sub_253CCFCB8();
  return v41;
}

unint64_t sub_25326B9E8()
{
  result = qword_27F5A3A70;
  if (!qword_27F5A3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A70);
  }

  return result;
}

unint64_t sub_25326BA3C()
{
  result = qword_27F5A3A80;
  if (!qword_27F5A3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A80);
  }

  return result;
}

void sub_25326BAA0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25326BAAC()
{
  v0 = sub_253CD07E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_253CD0768();
  __swift_allocate_value_buffer(v2, qword_281532BF8);
  __swift_project_value_buffer(v2, qword_281532BF8);
  v3 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_25326C800();
  sub_253CD07D8();
  return sub_253CD0748();
}

uint64_t sub_25326BBA0@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = [v9 isHidden];
  if (result)
  {
    v11 = 2;
  }

  else
  {
    v12 = [v9 spiClientIdentifier];
    sub_253CCFF38();

    v13 = sub_253CCFF28();
    result = (*(v5 + 8))(v8, v4);
    v11 = v13 & 1;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_25326BCDC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 uniqueIdentifier];
  sub_253CCFF38();

  v10 = sub_253CCFF28();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10 & 1;
  return result;
}

uint64_t sub_25326BDF8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    v3 = sub_253CD08D8();
  }

  v7 = a2;
  v6(a2, v3);
}

void sub_25326BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32 = a1;
  v33 = a6;
  v29 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - v8;
  v28 = sub_253CD0938();
  v9 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v10 = sub_253CCFF18();
  v11 = [v9 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48DA0;
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v13;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_25321856C(inited);
  swift_setDeallocating();
  sub_25326C878(inited + 32);
  sub_25321856C(MEMORY[0x277D84F90]);
  v14 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v15 = sub_253CD08B8();

  v16 = sub_253CD08B8();

  v17 = sub_253CD08B8();
  v18 = v28;
  v19 = [v14 initWithName:v28 qualityOfService:25 destination:v11 userInfo:v15 headers:v16 payload:v17];

  v21 = v30;
  v20 = v31;
  (*(v6 + 16))(v30, v32, v31);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v20);
  aBlock[4] = sub_25326C8E0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25326BDF8;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  [v19 setResponseHandler_];
  _Block_release(v24);
  v25 = [v33 msgDispatcher];
  if (v25)
  {
    v26 = v25;
    [v25 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25326C258(void *a1, unint64_t a2)
{
  v4 = sub_253CD0738();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v12 = sub_253CD0768();
  __swift_project_value_buffer(v12, qword_281532BF8);
  sub_253CD0728();
  v13 = sub_253CD0758();
  v14 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    *v15 = 0;
    v17 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v13, v14, v17, "dispatchMessage.toolbox.signpost", "", v16, 2u);
    a1 = v26;
    MEMORY[0x259C040E0](v16, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_253CD07A8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_253CD0798();
  (*(v5 + 8))(v11, v4);
  if (a1)
  {
    v27 = a1;
    v28 = 1;
    v21 = a1;
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = sub_25321856C(MEMORY[0x277D84F90]);
    }

    v23 = sub_25322EDDC(v22);

    v27 = v23;
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  sub_253CD0AE8();
  sub_25326C524("dispatchMessage.toolbox.signpost", 32, 2);
}

uint64_t sub_25326C524(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_253CD0778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v14 = sub_253CD0768();
  __swift_project_value_buffer(v14, qword_281532BF8);
  v15 = sub_253CD0758();
  sub_253CD0788();
  v20 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x259C040E0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25326C800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3AA0, &qword_253D4AB08);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25326C878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25326C8E0(void *a1, unint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0) - 8) + 80);

  return sub_25326C258(a1, a2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25326C984(uint64_t a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 spiClientIdentifier];
  sub_253CCFF38();

  LOBYTE(v9) = sub_253CCFF28();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    goto LABEL_26;
  }

  v11 = [a2 services];
  sub_253200644(0, &qword_27F5A2B00, off_27971A228);
  v12 = sub_253CD0A58();

  MEMORY[0x28223BE20](v13);
  v50[-2] = a1;
  v14 = sub_25326DF94(sub_25326DEA4, &v50[-4], v12);

  v15 = *(v14 + 2);
  if (v15)
  {
    v16 = (v14 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if (v17 == 1)
      {
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  v18 = [a2 mediaProfile];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 uniqueIdentifier];
    sub_253CCFF38();

    LOBYTE(v20) = sub_253CCFF28();
    v10(v8, v4);
    if (v20)
    {
      goto LABEL_26;
    }
  }

  v21 = [a2 cameraProfiles];
  sub_253200644(0, &qword_27F5A3800, off_27971A038);
  sub_25323FAB8(&unk_27F5A3C40, &qword_27F5A3800, off_27971A038);
  v22 = sub_253CD0BF8();

  MEMORY[0x28223BE20](v23);
  v50[-2] = a1;
  sub_25326E160(sub_25326DF7C, &v50[-4], v22);
  v25 = v24;

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    while (v26)
    {
      v28 = *v27++;
      --v26;
      if (v28 == 1)
      {
        goto LABEL_25;
      }
    }
  }

  v29 = [a2 siriEndpointProfile];
  v30 = v50[0];
  if (!v29)
  {
    goto LABEL_16;
  }

  v31 = v29;
  v32 = [v29 uniqueIdentifier];
  sub_253CCFF38();

  LOBYTE(v32) = sub_253CCFF28();
  v10(v8, v30);
  if (v32)
  {
LABEL_26:
    v48 = a2;
  }

  else
  {
LABEL_16:
    v33 = [a2 lightProfiles];
    sub_253200644(0, &qword_27F5A3808, off_27971A178);
    sub_25323FAB8(&unk_27F5A3C30, &qword_27F5A3808, off_27971A178);
    v34 = sub_253CD0BF8();

    MEMORY[0x28223BE20](v35);
    v50[-2] = a1;
    sub_25326E190(sub_25326DEC0, &v50[-4], v34);
    v37 = v36;

    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + 32);
      while (v38)
      {
        v40 = *v39++;
        --v38;
        if (v40 == 1)
        {
          goto LABEL_25;
        }
      }
    }

    v41 = [a2 identifiersForBridgedAccessories];
    sub_25326DEDC();
    v42 = sub_253CD0BF8();

    MEMORY[0x28223BE20](v43);
    v50[-2] = a1;
    v44 = sub_25326E4A8(sub_25326DF34, &v50[-4], v42);

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 32);
      while (v45)
      {
        v47 = *v46++;
        --v45;
        if (v47)
        {
          goto LABEL_25;
        }
      }
    }

    return 0;
  }

  return a2;
}

void sub_25326CF04(uint64_t a1)
{
  v153 = a1;
  v1 = sub_253CCFF58();
  v135 = *(v1 - 8);
  v2 = *(v135 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v131 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v127 - v5;
  v154 = sub_253CD07E8();
  v134 = *(v154 - 8);
  v7 = *(v134 + 64);
  v8 = MEMORY[0x28223BE20](v154);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v127 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v127 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v127 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v127 - v19;
  v21 = [objc_opt_self() driver];
  v22 = [v21 homeManager];

  v23 = [v22 homes];
  if (v23)
  {
    sub_253200644(0, &unk_281530D20, off_27971A118);
    v24 = sub_253CD0A58();

    v26 = v24;
    v137 = v24;
    if (v24 >> 62)
    {
LABEL_50:
      v27 = sub_253CD0ED8();
      v26 = v137;
    }

    else
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x277D0F1A8];
    if (v27)
    {
      v128 = v18;
      v127 = v12;
      v29 = 0;
      v136 = v26 & 0xC000000000000001;
      v130 = v26 & 0xFFFFFFFFFFFFFF8;
      v129 = v26 + 32;
      v30 = *MEMORY[0x277D0F1A8];
      v152 = (v134 + 8);
      v145 = (v135 + 8);
      *&v25 = 136315394;
      v143 = v25;
      v147 = v1;
      v155 = v6;
      v133 = v27;
      v142 = v15;
      v149 = v30;
      v144 = v20;
      while (1)
      {
        if (v136)
        {
          v31 = v29;
          v32 = MEMORY[0x259C00F30](v29, v26);
          v33 = __OFADD__(v31, 1);
          v34 = v31 + 1;
          if (v33)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v29 >= *(v130 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v35 = v29;
          v32 = *(v129 + 8 * v29);
          v33 = __OFADD__(v35, 1);
          v34 = v35 + 1;
          if (v33)
          {
            goto LABEL_49;
          }
        }

        v138 = v34;
        v139 = v32;
        v36 = [v32 accessories];
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        v12 = sub_253CD0A58();

        v37 = v12;
        if (v12 >> 62)
        {
          v38 = sub_253CD0ED8();
          v37 = v12;
          if (v38)
          {
LABEL_15:
            v1 = 0;
            v150 = v37;
            v151 = v37 & 0xC000000000000001;
            v141 = v37 & 0xFFFFFFFFFFFFFF8;
            v148 = v38;
            while (1)
            {
              if (v151)
              {
                v41 = MEMORY[0x259C00F30](v1);
              }

              else
              {
                if (v1 >= *(v141 + 16))
                {
                  goto LABEL_48;
                }

                v41 = *(v37 + 8 * v1 + 32);
              }

              v18 = v41;
              v6 = (v1 + 1);
              if (__OFADD__(v1, 1))
              {
                break;
              }

              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              sub_253CD0968();
              v156 = v1 + 1;
              v157 = v18;
              if (v42)
              {
                v18 = v18;
                sub_25326C800();
                sub_253CD07D8();
                v6 = v18;
                v43 = v20;
                v44 = sub_253CD07C8();
                v12 = sub_253CD0C78();

                v45 = os_log_type_enabled(v44, v12);
                v146 = v6;
                if (v45)
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  v158 = v47;
                  *v46 = v143;
                  v48 = [v6 name];
                  v49 = sub_253CD0968();
                  v51 = v50;

                  v52 = sub_253277BA8(v49, v51, &v158);

                  *(v46 + 4) = v52;
                  *(v46 + 12) = 2080;
                  v53 = [v6 spiClientIdentifier];

                  sub_253CCFF38();
                  v54 = sub_253CCFF08();
                  v18 = v55;
                  (*v145)(v155, v147);
                  v56 = sub_253277BA8(v54, v18, &v158);

                  *(v46 + 14) = v56;
                  _os_log_impl(&dword_2531F8000, v44, v12, "Checking HAP accessory: %s with UUID: %s", v46, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C040E0](v47, -1, -1);
                  v57 = v46;
                  v15 = v142;
                  MEMORY[0x259C040E0](v57, -1, -1);

                  v39 = *v152;
                  v20 = v144;
                  (*v152)(v144, v154);
                }

                else
                {

                  v39 = *v152;
                  (*v152)(v43, v154);
                  v20 = v43;
                }

                v40 = sub_25326C984(v153, v42);
                if (v40)
                {
                  v90 = v40;

                  sub_253CD0968();
                  sub_25326C800();
                  v91 = v128;
                  sub_253CD07D8();
                  v92 = v90;
                  v93 = v139;
                  v94 = sub_253CD07C8();
                  v95 = sub_253CD0C78();

                  if (os_log_type_enabled(v94, v95))
                  {
                    v96 = swift_slowAlloc();
                    v97 = swift_slowAlloc();
                    v158 = v97;
                    *v96 = v143;
                    v98 = [v92 name];
                    v99 = sub_253CD0968();
                    v101 = v100;

                    v102 = sub_253277BA8(v99, v101, &v158);

                    *(v96 + 4) = v102;
                    *(v96 + 12) = 2080;
                    v103 = [v93 name];
                    v104 = sub_253CD0968();
                    v106 = v105;

                    v107 = sub_253277BA8(v104, v106, &v158);

                    *(v96 + 14) = v107;
                    _os_log_impl(&dword_2531F8000, v94, v95, "Found matching HAP accessory: %s in home: %s", v96, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x259C040E0](v97, -1, -1);
                    MEMORY[0x259C040E0](v96, -1, -1);

                    v108 = v128;
                  }

                  else
                  {

                    v108 = v91;
                  }

LABEL_45:
                  v39(v108, v154);
                  return;
                }
              }

              else
              {
                sub_25326C800();
                sub_253CD07D8();
                v12 = v18;
                v58 = sub_253CD07C8();
                v59 = v15;
                v60 = sub_253CD0C78();

                if (os_log_type_enabled(v58, v60))
                {
                  v61 = swift_slowAlloc();
                  v146 = v12;
                  v62 = v61;
                  v140 = swift_slowAlloc();
                  v158 = v140;
                  *v62 = v143;
                  v63 = [v146 name];
                  v64 = sub_253CD0968();
                  v66 = v65;

                  v67 = sub_253277BA8(v64, v66, &v158);

                  *(v62 + 4) = v67;
                  *(v62 + 12) = 2080;
                  v68 = [v146 spiClientIdentifier];
                  v18 = v155;
                  sub_253CCFF38();

                  v69 = sub_253CCFF08();
                  v71 = v70;
                  v6 = v145;
                  v72 = v147;
                  (*v145)(v18, v147);
                  v73 = sub_253277BA8(v69, v71, &v158);

                  *(v62 + 14) = v73;
                  _os_log_impl(&dword_2531F8000, v58, v60, "Checking non-HAP accessory: %s with UUID: %s", v62, 0x16u);
                  v74 = v140;
                  swift_arrayDestroy();
                  MEMORY[0x259C040E0](v74, -1, -1);
                  v75 = v62;
                  v12 = v146;
                  MEMORY[0x259C040E0](v75, -1, -1);

                  v39 = *v152;
                  v15 = v142;
                  (*v152)(v142, v154);
                }

                else
                {

                  v39 = *v152;
                  (*v152)(v59, v154);
                  v72 = v147;
                  v18 = v155;
                  v15 = v59;
                  v6 = v145;
                }

                v76 = [v12 spiClientIdentifier];
                sub_253CCFF38();

                LOBYTE(v76) = sub_253CCFF28();
                (*v6)(v18, v72);
                v20 = v144;
                if (v76)
                {

                  sub_253CD0968();
                  sub_25326C800();
                  v109 = v127;
                  sub_253CD07D8();
                  v110 = v12;
                  v111 = v139;
                  v112 = sub_253CD07C8();
                  v113 = sub_253CD0C78();

                  if (os_log_type_enabled(v112, v113))
                  {
                    v115 = swift_slowAlloc();
                    v157 = swift_slowAlloc();
                    v158 = v157;
                    *v115 = v143;
                    v116 = [v110 name];
                    v117 = sub_253CD0968();
                    v119 = v118;

                    v120 = sub_253277BA8(v117, v119, &v158);

                    *(v115 + 4) = v120;
                    *(v115 + 12) = 2080;
                    v121 = [v111 name];
                    v122 = sub_253CD0968();
                    v124 = v123;

                    v125 = sub_253277BA8(v122, v124, &v158);

                    *(v115 + 14) = v125;
                    _os_log_impl(&dword_2531F8000, v112, v113, "Found matching non-HAP accessory: %s in home: %s", v115, 0x16u);
                    v126 = v157;
                    swift_arrayDestroy();
                    MEMORY[0x259C040E0](v126, -1, -1);
                    MEMORY[0x259C040E0](v115, -1, -1);
                  }

                  else
                  {
                  }

                  v108 = v109;
                  goto LABEL_45;
                }
              }

              ++v1;
              v37 = v150;
              if (v156 == v148)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else
        {
          v38 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_15;
          }
        }

LABEL_6:

        v29 = v138;
        v1 = v147;
        v26 = v137;
        if (v138 == v133)
        {

          goto LABEL_35;
        }
      }
    }

    v77 = *v28;
LABEL_35:
    sub_253CD0968();
    sub_25326C800();
    v78 = v132;
    sub_253CD07D8();
    v79 = v135;
    v80 = v131;
    (*(v135 + 16))(v131, v153, v1);
    v81 = sub_253CD07C8();
    v82 = sub_253CD0C98();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = v78;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v158 = v85;
      *v84 = 136315138;
      v86 = sub_253CCFF08();
      v88 = v87;
      (*(v79 + 8))(v80, v1);
      v89 = sub_253277BA8(v86, v88, &v158);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_2531F8000, v81, v82, "Could not find any accessory with UUID: %s in any home after searching all the homes", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x259C040E0](v85, -1, -1);
      MEMORY[0x259C040E0](v84, -1, -1);

      (*(v134 + 8))(v83, v154);
    }

    else
    {

      (*(v79 + 8))(v80, v1);
      (*(v134 + 8))(v78, v154);
    }
  }

  else
  {
LABEL_52:
    __break(1u);
  }
}

unint64_t sub_25326DEDC()
{
  result = qword_281531988;
  if (!qword_281531988)
  {
    sub_253CCFF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281531988);
  }

  return result;
}

uint64_t sub_25326DF34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_253CCFF28();
  *a1 = result & 1;
  return result;
}

char *sub_25326DF94(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v7 = 0;
    v17 = MEMORY[0x277D84F90];
    v16 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C00F30](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v17;
      }

      v11 = i;

      v12 = v18;
      if (v18 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_253283B3C(0, *(v17 + 2) + 1, 1, v17);
        }

        v14 = *(v17 + 2);
        v13 = *(v17 + 3);
        if (v14 >= v13 >> 1)
        {
          v17 = sub_253283B3C((v13 > 1), v14 + 1, 1, v17);
        }

        *(v17 + 2) = v14 + 1;
        v17[v14 + 32] = v12 & 1;
        a1 = v16;
      }

      ++v7;
      i = v11;
      if (v10 == v11)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_25326E1C0(void (*a1)(void *__return_ptr, id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_253CD0E98();
    sub_253200644(0, a4, a5);
    sub_25323FAB8(a6, a4, a5);
    sub_253CD0C28();
    v8 = v34[1];
    v12 = v34[2];
    v13 = v34[3];
    v14 = v34[4];
    v15 = v34[5];
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v32 = v8;
  v33 = MEMORY[0x277D84F90];
  while (v8 < 0)
  {
    v24 = sub_253CD0F08();
    if (!v24 || (v34[0] = v24, sub_253200644(0, a4, a5), swift_dynamicCast(), v23 = v35, v21 = v14, v22 = v15, !v35))
    {
LABEL_26:
      sub_25320C5EC();
      return;
    }

LABEL_19:
    v35 = v23;
    a1(v34, &v35);
    if (v7)
    {

      sub_25320C5EC();

      return;
    }

    v25 = v34[0];
    if (LOBYTE(v34[0]) == 2)
    {
      v8 = v32;
    }

    else
    {
      v26 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_253283B3C(0, *(v33 + 2) + 1, 1, v33);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v8 = v32;
      if (v28 >= v27 >> 1)
      {
        v8 = v32;
        v26 = sub_253283B3C((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v33 = v26;
      v26[v28 + 32] = v25 & 1;
    }

    v14 = v21;
    v15 = v22;
  }

  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v13 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v20 = *(v12 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_25326E4A8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v29 = sub_253CCFF58();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v26 = v5 + 16;
  v28 = (v5 + 8);
  v30 = a3;

  v15 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v12)
  {
    v16 = v29;
LABEL_11:
    (*(v5 + 16))(v8, *(v30 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v27(&v31, v8);
    if (v3)
    {
      (*v28)(v8, v16);

LABEL_19:

      return v25;
    }

    v12 &= v12 - 1;
    result = (*v28)(v8, v16);
    v18 = v31;
    if (v31 != 2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_253283B3C(0, *(v25 + 2) + 1, 1, v25);
        v25 = result;
      }

      v20 = *(v25 + 2);
      v19 = *(v25 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v23 = *(v25 + 2);
        v24 = v20 + 1;
        result = sub_253283B3C((v19 > 1), v20 + 1, 1, v25);
        v20 = v23;
        v21 = v24;
        v25 = result;
      }

      v22 = v25;
      *(v25 + 2) = v21;
      v22[v20 + 32] = v18 & 1;
    }
  }

  v16 = v29;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_19;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25326E740(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_253CCFEE8();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_253283C30(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_253283C30((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

unint64_t sub_25326E8D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_253CD0E48();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
  v43 = v3;
  v9 = 0;
  v39 = v3 + 72;
  v40 = v1;
  v41 = v3 + 64;
  v42 = v7;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v44 = v9;
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v48[0] = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v13;
    v48[3] = v14;
    v48[5] = MEMORY[0x277D837D0];
    v49[0] = 0x65756C6176;
    v49[1] = 0xE500000000000000;
    v49[5] = MEMORY[0x277D839F8];
    v49[2] = v15;
    v16 = sub_253CD10C8();
    swift_bridgeObjectRetain_n();

    sub_2532168A0(v48, &v45, &unk_27F5A3B60, &unk_253D4AAD0);
    v17 = v45;
    v18 = v46;
    result = sub_253217D84(v45, v46);
    if (v19)
    {
      goto LABEL_25;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v16[6] + 16 * result);
    *v20 = v17;
    v20[1] = v18;
    result = sub_2531FF150(v47, (v16[7] + 32 * result));
    v21 = v16[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v23;
    sub_2532168A0(v49, &v45, &unk_27F5A3B60, &unk_253D4AAD0);
    v24 = v45;
    v25 = v46;
    result = sub_253217D84(v45, v46);
    if (v26)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v27 = (v16[6] + 16 * result);
    *v27 = v24;
    v27[1] = v25;
    result = sub_2531FF150(v47, (v16[7] + 32 * result));
    v28 = v16[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
    swift_arrayDestroy();

    v50 = v2;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_25328BFA0((v30 > 1), v31 + 1, 1);
      v2 = v50;
    }

    *(v2 + 16) = v31 + 1;
    *(v2 + 8 * v31 + 32) = v16;
    LODWORD(v7) = v42;
    v3 = v43;
    v10 = 1 << *(v43 + 32);
    if (v6 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v41;
    v32 = *(v41 + 8 * v11);
    if ((v32 & (1 << v6)) == 0)
    {
      goto LABEL_31;
    }

    if (v42 != *(v43 + 36))
    {
      goto LABEL_32;
    }

    v33 = v32 & (-2 << (v6 & 0x3F));
    if (v33)
    {
      v10 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v11 << 6;
      v35 = v11 + 1;
      v36 = (v39 + 8 * v11);
      while (v35 < (v10 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_25323FB84(v6, v42, 0);
          v10 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_25323FB84(v6, v42, 0);
    }

LABEL_4:
    v9 = v44 + 1;
    v6 = v10;
    if (v44 + 1 == v40)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_25326ECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_253CD0E48();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
  v43 = v3;
  v9 = 0;
  v39 = v3 + 72;
  v40 = v1;
  v41 = v3 + 64;
  v42 = v7;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v44 = v9;
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v48[0] = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v13;
    v48[3] = v14;
    v48[5] = MEMORY[0x277D837D0];
    v49[0] = 0x65756C6176;
    v49[5] = MEMORY[0x277D83B88];
    v49[1] = 0xE500000000000000;
    v49[2] = v15;
    v16 = sub_253CD10C8();
    swift_bridgeObjectRetain_n();

    sub_2532168A0(v48, &v45, &unk_27F5A3B60, &unk_253D4AAD0);
    v17 = v45;
    v18 = v46;
    result = sub_253217D84(v45, v46);
    if (v19)
    {
      goto LABEL_25;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v16[6] + 16 * result);
    *v20 = v17;
    v20[1] = v18;
    result = sub_2531FF150(v47, (v16[7] + 32 * result));
    v21 = v16[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v23;
    sub_2532168A0(v49, &v45, &unk_27F5A3B60, &unk_253D4AAD0);
    v24 = v45;
    v25 = v46;
    result = sub_253217D84(v45, v46);
    if (v26)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v27 = (v16[6] + 16 * result);
    *v27 = v24;
    v27[1] = v25;
    result = sub_2531FF150(v47, (v16[7] + 32 * result));
    v28 = v16[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
    swift_arrayDestroy();

    v50 = v2;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_25328BFA0((v30 > 1), v31 + 1, 1);
      v2 = v50;
    }

    *(v2 + 16) = v31 + 1;
    *(v2 + 8 * v31 + 32) = v16;
    LODWORD(v7) = v42;
    v3 = v43;
    v10 = 1 << *(v43 + 32);
    if (v6 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v41;
    v32 = *(v41 + 8 * v11);
    if ((v32 & (1 << v6)) == 0)
    {
      goto LABEL_31;
    }

    if (v42 != *(v43 + 36))
    {
      goto LABEL_32;
    }

    v33 = v32 & (-2 << (v6 & 0x3F));
    if (v33)
    {
      v10 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v11 << 6;
      v35 = v11 + 1;
      v36 = (v39 + 8 * v11);
      while (v35 < (v10 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_25323FB84(v6, v42, 0);
          v10 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_25323FB84(v6, v42, 0);
    }

LABEL_4:
    v9 = v44 + 1;
    v6 = v10;
    if (v44 + 1 == v40)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25326F294()
{
  v1 = v0;
  v2 = [v0 legacyCountersManager];
  [v2 delegate];

  _s16CoreDataDelegateCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 24);

    swift_unknownObjectRelease();
    v5 = [v0 internalSwiftData];
    _s9SwiftDataCMa();
    v6 = swift_dynamicCastClassUnconditional();
    sub_2532074E4(v6 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    swift_retain_n();
    sub_253CD05F8();

    __swift_destroy_boxed_opaque_existential_0(v13);
    v7 = [v0 dateProvider];
    v8 = [v1 internalSwiftData];
    v9 = swift_dynamicCastClassUnconditional();
    sub_2532074E4(v9 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v4;

    v11 = v7;
    sub_253CD05F8();

    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_25326F590()
{
  v1 = *(v0 + 16);
  sub_253CD0448();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25326F610()
{
  v1 = *(v0 + 16);
  sub_253CD0468();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25326F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_253CCFEE8();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326F73C, 0, 0);
}

uint64_t sub_25326F73C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = [v5 startOfDayByAddingDayCount_];
  sub_253CCFEA8();

  v7 = [v5 startOfDayByAddingDayCount_];
  sub_253CCFEA8();

  sub_253CD0498();
  sub_253CD0488();
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

void sub_25326F8A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_253CD0938();
  v9 = [a1 stringForKey_];

  if (v9)
  {
    v10 = sub_253CD0968();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *a2 = v10;
  a2[1] = v12;
  v13 = sub_253CD0938();
  v14 = [a1 stringForKey_];

  if (v14)
  {
    v15 = sub_253CD0968();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  a2[2] = v15;
  a2[3] = v17;
  v18 = sub_253CD0938();
  v19 = [a1 stringForKey_];

  if (v19)
  {
    v20 = sub_253CD0968();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  a2[4] = v20;
  a2[5] = v22;
  v23 = sub_253CD0938();
  v24 = [a1 stringForKey_];

  if (v24)
  {
    v25 = sub_253CD0968();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  a2[6] = v25;
  a2[7] = v27;
  v28 = sub_253CD0938();
  v29 = [a1 stringForKey_];

  if (v29)
  {
    v30 = sub_253CD0968();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  a2[8] = v30;
  a2[9] = v32;
  v33 = sub_253CD0938();
  v34 = [a1 stringForKey_];

  if (v34)
  {
    v35 = sub_253CD0968();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  a2[10] = v35;
  a2[11] = v37;
  v38 = sub_253CD0938();
  v39 = [a1 dateForKey_];

  if (v39)
  {
    sub_253CCFEA8();

    v40 = sub_253CCFEE8();
    (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
  }

  else
  {
    v41 = sub_253CCFEE8();
    (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
  }

  v42 = _s11GroupFilterVMa();
  sub_25327608C(v7, a2 + *(v42 + 40));
  v43 = sub_253CD0938();
  v44 = [a1 stringForKey_];

  if (v44)
  {
    v45 = sub_253CD0968();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  v48 = (a2 + *(v42 + 44));
  *v48 = v45;
  v48[1] = v47;
}

uint64_t sub_25326FD04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_253CD0548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = v2[1];
  if (!v15)
  {
LABEL_9:
    v23 = v2[3];
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v16 = *v2;
  (*(v5 + 104))(&v43 - v13, *MEMORY[0x277D17D20], v4);
  if (!*(a1 + 16) || (v17 = sub_253217FA8(v14), (v18 & 1) == 0))
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_30;
  }

  v19 = (*(a1 + 56) + 16 * v17);
  v45 = *v19;
  v46 = v9;
  v20 = v19[1];
  v44 = *(v5 + 8);

  v44(v14, v4);
  if (v16 != v45 || v15 != v20)
  {
    v22 = sub_253CD1118();

    v9 = v46;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_30:
    v41 = 0;
    return v41 & 1;
  }

  v9 = v46;
  v23 = v2[3];
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_10:
  v24 = v2[2];
  (*(v5 + 104))(v12, *MEMORY[0x277D17D18], v4);
  if (!*(a1 + 16) || (v25 = sub_253217FA8(v12), (v26 & 1) == 0))
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_30;
  }

  v27 = (*(a1 + 56) + 16 * v25);
  v28 = v27[1];
  v45 = *v27;
  v46 = v9;
  v29 = *(v5 + 8);

  v29(v12, v4);
  if (v24 == v45 && v23 == v28)
  {

    v9 = v46;
    v32 = v2[5];
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_33:
    v41 = 1;
    return v41 & 1;
  }

  v31 = sub_253CD1118();

  v9 = v46;
  if ((v31 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v32 = v2[5];
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_22:
  v33 = v2[4];
  (*(v5 + 104))(v9, *MEMORY[0x277D17D10], v4);
  if (!*(a1 + 16) || (v34 = sub_253217FA8(v9), (v35 & 1) == 0))
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_30;
  }

  v36 = (*(a1 + 56) + 16 * v34);
  v38 = *v36;
  v37 = v36[1];
  v39 = *(v5 + 8);

  v39(v9, v4);
  if (v33 == v38 && v32 == v37)
  {

    v41 = 1;
  }

  else
  {
    v41 = sub_253CD1118();
  }

  return v41 & 1;
}

uint64_t sub_2532700A0()
{
  v4 = MEMORY[0x277D84F90];
  v1 = objc_allocWithZone(type metadata accessor for CharacteristicReadWriteLogEventObserver());
  sub_253275BA0(v0, v1);
  MEMORY[0x259C00990]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_253CD0A78();
  }

  sub_253CD0A88();
  return v4;
}

uint64_t sub_253270268(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v11 = a1;
  v12 = [v11 legacyCountersManager];
  v13 = [v12 delegate];

  _s16CoreDataDelegateCMa();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + 24);

    swift_unknownObjectRelease();
    a4(v10);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_2532705E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = _s11GroupFilterVMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v1 legacyCountersManager];
  v12 = [v11 delegate];

  _s16CoreDataDelegateCMa();
  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = a1;
    sub_25326F8A0(v14, v10);
    sub_2532168A0(v10 + *(v7 + 40), v6, &qword_27F5A3B70, &qword_253D49578);
    v15 = sub_253CCFEE8();
    v16 = (*(*(v15 - 8) + 48))(v6, 1, v15);
    sub_253206054(v6, &qword_27F5A3B70, &qword_253D49578);
    if (v16 == 1 || !*(v10 + *(v7 + 44) + 8))
    {
      sub_253270904(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
      v20 = sub_253CD08B8();

      [v14 respondWithPayload_];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = sub_253CD0938();
      v19 = [v17 hmfErrorWithCode:3 reason:v18];

      v20 = sub_253CCFE08();
      [v14 respondWithError_];
    }

    sub_253276148(v10);
  }

  else
  {
    v21 = [v1 notEnabledError];
    v24 = sub_253CCFE08();

    [a1 respondWithError_];
    v22 = v24;
  }
}

void *sub_253270904(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B78, &unk_253D4AB70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v54 - v4;
  v6 = sub_253CCFF88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - v13;
  v15 = _s11GroupFilterVMa();
  sub_2532168A0(a1 + *(v15 + 40), v14, &qword_27F5A3B70, &qword_253D49578);
  v16 = sub_253CCFEE8();
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_253206054(v14, &qword_27F5A3B70, &qword_253D49578);
  if (v17 != 1 && *(a1 + *(v15 + 44) + 8))
  {
    return sub_25321856C(MEMORY[0x277D84F90]);
  }

  v18 = [v58 legacyCountersManager];
  v19 = [v18 delegate];

  _s16CoreDataDelegateCMa();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    return sub_25321856C(MEMORY[0x277D84F90]);
  }

  v55 = v15;
  v56 = a1;
  v21 = *(v20 + 24);

  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_253CCFF68();
  v23 = sub_253CCFF78();
  (*(v7 + 8))(v10, v6);
  [v22 setLocale_];

  v24 = sub_253CD0938();
  v57 = v22;
  [v22 setDateFormat_];

  sub_253CCFF98();
  v25 = sub_253CCFFB8();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v5, 1, v25) != 1)
  {
    v27 = sub_253CCFFA8();
    (*(v26 + 8))(v5, v25);
  }

  [v57 setTimeZone_];

  v54 = v21;
  v28 = sub_253CD0518();
  v29 = v28;
  v30 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v33)
  {
LABEL_15:
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v33)));
    v40 = *(*(v29 + 48) + v39);
    v41 = *(*(v29 + 56) + v39);

    v42 = sub_2532722BC(v40, v41, v56, v58, v57);

    v43 = *(v42 + 16);
    v44 = v37[2];
    v45 = v44 + v43;
    if (__OFADD__(v44, v43))
    {
      goto LABEL_32;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v45 > v37[3] >> 1)
    {
      if (v44 <= v45)
      {
        v46 = v44 + v43;
      }

      else
      {
        v46 = v44;
      }

      result = sub_253283C30(result, v46, 1, v37);
      v37 = result;
    }

    v33 &= v33 - 1;
    if (*(v42 + 16))
    {
      if ((v37[3] >> 1) - v37[2] < v43)
      {
        goto LABEL_34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      swift_arrayInitWithCopy();

      if (v43)
      {
        v47 = v37[2];
        v48 = __OFADD__(v47, v43);
        v49 = v47 + v43;
        if (v48)
        {
          goto LABEL_35;
        }

        v37[2] = v49;
      }
    }

    else
    {

      if (v43)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v34)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48A50;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000253D510C0;
      v51 = sub_253273FEC(*(v56 + *(v55 + 44)), *(v56 + *(v55 + 44) + 8));
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      *(inited + 48) = v51;
      *(inited + 72) = v52;
      *(inited + 80) = 0x7370756F7267;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      *(inited + 96) = v37;
      v53 = sub_25321856C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
      swift_arrayDestroy();

      return v53;
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      v36 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_253270FE8(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 24);

    swift_unknownObjectRelease();
    sub_253CD04D8();
    [a1 respondWithSuccess];
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = [v1 notEnabledError];
    v8 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271178(void *a1)
{
  v2 = v1;
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v48 = v45 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v45 - v24;
  MEMORY[0x28223BE20](v23);
  v49 = v45 - v26;
  v27 = [v2 legacyCountersManager];
  v28 = [v27 delegate];

  _s16CoreDataDelegateCMa();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + 24);
    v45[0] = v9;
    v45[1] = v30;

    swift_unknownObjectRelease();
    v31 = sub_253CD0938();
    v32 = a1;
    v33 = [a1 dateForKey_];

    if (v33)
    {
      sub_253CCFEA8();

      v34 = *(v5 + 56);
      v34(v25, 0, 1, v4);
    }

    else
    {
      v34 = *(v5 + 56);
      v34(v25, 1, 1, v4);
    }

    v37 = v48;
    sub_25327608C(v25, v49);
    v38 = sub_253CD0938();
    v39 = [v32 dateForKey_];

    if (v39)
    {
      sub_253CCFEA8();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v34(v20, v40, 1, v4);
    sub_25327608C(v20, v37);
    sub_2532168A0(v49, v17, &qword_27F5A3B70, &qword_253D49578);
    v41 = *(v5 + 48);
    if (v41(v17, 1, v4) == 1)
    {
      sub_253206054(v17, &qword_27F5A3B70, &qword_253D49578);
    }

    else
    {
      v42 = v46;
      (*(v5 + 32))(v46, v17, v4);
      sub_253CD0498();
      (*(v5 + 8))(v42, v4);
    }

    v43 = v47;
    sub_2532168A0(v37, v47, &qword_27F5A3B70, &qword_253D49578);
    if (v41(v43, 1, v4) == 1)
    {
      sub_253206054(v43, &qword_27F5A3B70, &qword_253D49578);
    }

    else
    {
      v44 = v45[0];
      (*(v5 + 32))(v45[0], v43, v4);
      sub_253CD0488();
      (*(v5 + 8))(v44, v4);
    }

    [v32 respondWithSuccess];

    sub_253206054(v37, &qword_27F5A3B70, &qword_253D49578);
    sub_253206054(v49, &qword_27F5A3B70, &qword_253D49578);
  }

  else
  {
    swift_unknownObjectRelease();
    v35 = [v2 notEnabledError];
    v49 = sub_253CCFE08();

    [a1 respondWithError_];
    v36 = v49;
  }
}

void sub_25327185C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = [v2 legacyCountersManager];
  v6 = [v5 delegate];

  _s16CoreDataDelegateCMa();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + 24);

    swift_unknownObjectRelease();
    v9 = sub_253CD0938();
    v10 = [a1 stringForKey_];

    if (v10)
    {
      v11 = sub_253CD0968();
      v13 = v12;

      a2(v11, v13);

      [a1 respondWithSuccess];

      return;
    }

    v15 = [v2 ephemeralContainNameRequiredError];
    v16 = sub_253CCFE08();

    [a1 respondWithError_];
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = [v2 notEnabledError];
    v16 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271ACC(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_253CD0938();
    v7 = [a1 stringForKey_];

    v8 = [v1 userDefaults];
    v9 = v8;
    if (v7)
    {
      [v8 setObject:v7 forKey:@"HMDStartupEphemeralContainer"];

      v9 = v7;
    }

    else
    {
      [v8 removeObjectForKey_];
    }

    [a1 respondWithSuccess];
  }

  else
  {
    v10 = [v1 notEnabledError];
    v11 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271CE8(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v55 = [v1 notEnabledError];
    v63 = sub_253CCFE08();

    [a1 respondWithError_];

    return;
  }

  v58 = a1;
  v6 = *(v5 + 24);

  swift_unknownObjectRelease();
  v7 = sub_253CD04C8();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v59 = v7;

  v13 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = v28)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_253D48DA0;
          *(inited + 32) = 0xD000000000000013;
          *(inited + 40) = 0x8000000253D51030;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B58, &unk_253D4AB50);
          *(inited + 48) = i;

          sub_25321856C(inited);
          swift_setDeallocating();
          sub_253206054(inited + 32, &unk_27F5A3B60, &unk_253D4AAD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
          v54 = sub_253CD08B8();

          [v58 respondWithPayload_];

          return;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v13;
LABEL_13:
    v16 = __clz(__rbit64(v11)) | (v15 << 6);
    v17 = (*(v59 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v59 + 56) + 8 * v16);

    v60 = v20;
    v61 = sub_253CD0648();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v18;
    v23 = sub_253217D84(v18, v19);
    v24 = *(i + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_45;
    }

    v27 = v22;
    if (*(i + 24) >= v26)
    {
      break;
    }

    sub_2532851A0(v26, isUniquelyReferenced_nonNull_native);
    v28 = i;
    v29 = v62;
    v30 = sub_253217D84(v62, v19);
    if ((v27 & 1) != (v31 & 1))
    {
      goto LABEL_48;
    }

    v23 = v30;
LABEL_20:
    v11 &= v11 - 1;
    if (v27)
    {
      *(*(v28 + 56) + v23) = v61 & 1;
    }

    else
    {
      *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v32 = (*(v28 + 48) + 16 * v23);
      *v32 = v29;
      v32[1] = v19;
      *(*(v28 + 56) + v23) = v61 & 1;
      v33 = *(v28 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_46;
      }

      *(v28 + 16) = v35;
    }

    v13 = v15;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v28 = i;
LABEL_19:
    v29 = v62;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B48, &unk_253D4AB40);
  v36 = sub_253CD10A8();
  v28 = v36;
  if (!*(i + 16))
  {
LABEL_39:

    goto LABEL_19;
  }

  v37 = (v36 + 64);
  v38 = (i + 64);
  v39 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != i || v37 >= &v38[8 * v39])
  {
    memmove(v37, v38, 8 * v39);
  }

  v40 = 0;
  *(v28 + 16) = *(i + 16);
  v41 = 1 << *(i + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(i + 64);
  v44 = (v41 + 63) >> 6;
  v56 = v44;
  if (v43)
  {
    do
    {
      v45 = __clz(__rbit64(v43));
      v57 = (v43 - 1) & v43;
LABEL_37:
      v48 = v45 | (v40 << 6);
      v49 = (*(i + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      LOBYTE(v49) = *(*(i + 56) + v48);
      v52 = (*(v28 + 48) + 16 * v48);
      *v52 = v51;
      v52[1] = v50;
      *(*(v28 + 56) + v48) = v49;

      v44 = v56;
      v43 = v57;
    }

    while (v57);
  }

  v46 = v40;
  while (1)
  {
    v40 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v40 >= v44)
    {
      goto LABEL_39;
    }

    v47 = *(i + 64 + 8 * v40);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v57 = (v47 - 1) & v47;
      goto LABEL_37;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  sub_253CD1158();
  __break(1u);
}

uint64_t sub_2532722BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v122 = a5;
  v123 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v118 - v10;
  v12 = sub_253CD05B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v118 - v22;
  if ((sub_25326FD04(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v120 = v13;
  v24 = _s11GroupFilterVMa();
  v25 = (a3 + *(v24 + 44));
  v26 = v25[1];
  v121 = a1;
  v124 = a2;
  if (!v26)
  {
    v120 = *(v24 + 40);
    sub_2532168A0(a3 + v120, v23, &qword_27F5A3B70, &qword_253D49578);
    v31 = sub_253CCFEE8();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v33(v23, 1, v31);
    sub_253206054(v23, &qword_27F5A3B70, &qword_253D49578);
    if (v34 == 1)
    {
      v35 = v124;
      v36 = sub_253CD0398();
      v37 = v36;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA0, &qword_253D4AB98);
      v88 = *(v32 + 72);
      v89 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_253D48DA0;
      sub_2532168A0(a3 + v120, v21, &qword_27F5A3B70, &qword_253D49578);
      result = v33(v21, 1, v31);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v36 = (*(v32 + 32))(v37 + v89, v21, v31);
      v35 = v124;
    }

    MEMORY[0x28223BE20](v36);
    *(&v118 - 6) = a3;
    *(&v118 - 5) = v35;
    v91 = v123;
    *(&v118 - 4) = v122;
    *(&v118 - 3) = v91;
    *(&v118 - 2) = v92;
    v93 = sub_25326E740(sub_2532761A4, (&v118 - 8), v37);

    return v93;
  }

  v27 = *v25;
  v123 = a3[7];
  if (v123)
  {
    v28 = a3[6];

    v29 = sub_253CD03B8();
    if ((v30 & 1) == 0)
    {
      v39 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BD8, &qword_253D4ABD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = v28;
      v41 = inited + 32;
      *(inited + 40) = v123;
      *(inited + 48) = v39;
      v122 = sub_253218C6C(inited);
      swift_setDeallocating();
      sub_253206054(v41, &unk_27F5A3BE0, &unk_253D4ABD8);
      v38 = a3[9];
      if (!v38)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v122 = 0;
  v38 = a3[9];
  if (!v38)
  {
LABEL_14:
    v119 = 0;
    v45 = a3[11];
    if (v45)
    {
      goto LABEL_15;
    }

LABEL_18:
    v48 = 0;
    goto LABEL_20;
  }

LABEL_12:
  v42 = a3[8];

  v43 = sub_253CD0408();
  if (v44)
  {

    goto LABEL_14;
  }

  v49 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC8, &qword_253D4ABC0);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_253D48DA0;
  v118 = v27;
  *(v50 + 32) = v42;
  v51 = v50 + 32;
  *(v50 + 40) = v38;
  *(v50 + 48) = v49;
  v119 = sub_253218D68(v50);
  swift_setDeallocating();
  v52 = v51;
  v27 = v118;
  sub_253206054(v52, &qword_27F5A3BD0, &qword_253D4ABC8);
  v45 = a3[11];
  if (!v45)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = a3[10];

  sub_253CD0348();
  v47 = v120;
  if ((*(v120 + 48))(v11, 1, v12) == 1)
  {

    sub_253206054(v11, &qword_27F5A3518, &qword_253D494F0);
    v48 = 0;
  }

  else
  {
    (*(v47 + 32))(v16, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB8, &unk_253D4ABB0);
    v118 = v27;
    v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20) - 8);
    v54 = *(*v53 + 72);
    v55 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_253D48DA0;
    v57 = (v56 + v55);
    v58 = v53[14];
    *v57 = v46;
    *(v57 + 1) = v45;
    (*(v47 + 16))(&v57[v58], v16, v12);
    v48 = sub_253218E6C(v56);
    swift_setDeallocating();
    sub_253206054(v57, &qword_27F5A3BC0, &qword_253D48D20);
    v27 = v118;
    swift_deallocClassInstance();
    (*(v47 + 8))(v16, v12);
  }

LABEL_20:
  v59 = v119;
  if (v38 | v123 | v45)
  {
    v60 = v122;
    if (v122 && *(v122 + 16))
    {
      goto LABEL_29;
    }
  }

  else
  {

    v60 = sub_253CD03E8();
    v61 = v27;
    v62 = sub_253CD0428();

    v63 = sub_253CD0368();

    v48 = v63;
    v59 = v62;
    v27 = v61;
    if (*(v60 + 16))
    {
      goto LABEL_29;
    }
  }

  if ((!v59 || !*(v59 + 16)) && (!v48 || !*(v48 + 16)))
  {

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v129 = MEMORY[0x277D837D0];
  *&v128 = v27;
  *(&v128 + 1) = v26;
  sub_2531FF150(&v128, &v126);
  v64 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v64;
  v66 = v127;
  v67 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v118 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_253275194(*v70, v70[1], 0x656E6961746E6F63, 0xE900000000000072, isUniquelyReferenced_nonNull_native, &v125);
  __swift_destroy_boxed_opaque_existential_0(&v126);
  v72 = v125;
  v73 = sub_2532761C8(v121);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA8, &unk_253D4ABA0);
  *&v128 = v73;
  sub_2531FF150(&v128, &v126);
  LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v72;
  v74 = v127;
  v75 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
  v76 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = (&v118 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  sub_25327537C(*v78, 0x7470697263736564, 0xEA0000000000726FLL, v73, &v125, &qword_27F5A3BA8, &unk_253D4ABA0);
  __swift_destroy_boxed_opaque_existential_0(&v126);
  v80 = v125;
  if (v60)
  {
    if (*(v60 + 16))
    {
      v81 = sub_25326ECE0(v60);

      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      *&v128 = v81;
      sub_2531FF150(&v128, &v126);
      LOBYTE(v81) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v80;
      v82 = v127;
      v83 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
      v84 = *(*(v82 - 8) + 64);
      MEMORY[0x28223BE20](v83);
      v86 = (&v118 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v87 + 16))(v86);
      sub_25327537C(*v86, 0x737265746E756F63, 0xE800000000000000, v81, &v125, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v126);
      v80 = v125;
      if (!v59)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (*(v59 + 16))
      {
        v94 = sub_25326E8D0(v59);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
        *&v128 = v94;
        sub_2531FF150(&v128, &v126);
        LOBYTE(v94) = swift_isUniquelyReferenced_nonNull_native();
        v125 = v80;
        v95 = v127;
        v96 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
        v97 = *(*(v95 - 8) + 64);
        MEMORY[0x28223BE20](v96);
        v99 = (&v118 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v100 + 16))(v99);
        sub_25327537C(*v99, 0x6E6F697461727564, 0xE900000000000073, v94, &v125, &qword_27F5A3B88, &qword_253D4AB80);
        __swift_destroy_boxed_opaque_existential_0(&v126);
        v80 = v125;
      }

      goto LABEL_42;
    }
  }

  if (v59)
  {
    goto LABEL_40;
  }

LABEL_42:
  if (v48)
  {
    if (*(v48 + 16))
    {
      v101 = sub_253276620(v48, sub_253274A28);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      v129 = v102;
      *&v128 = v101;
      sub_2531FF150(&v128, &v126);
      LOBYTE(v101) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v80;
      v103 = v127;
      v104 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
      v105 = *(*(v103 - 8) + 64);
      MEMORY[0x28223BE20](v104);
      v107 = (&v118 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v108 + 16))(v107);
      sub_25327537C(*v107, 0x7562697274736964, 0xED0000736E6F6974, v101, &v125, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v126);
      v109 = v125;
      v110 = sub_253276620(v48, sub_253274CA0);
      v129 = v102;
      *&v128 = v110;
      sub_2531FF150(&v128, &v126);
      LOBYTE(v102) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v109;
      v111 = v127;
      v112 = __swift_mutable_project_boxed_opaque_existential_1(&v126, v127);
      v113 = *(*(v111 - 8) + 64);
      MEMORY[0x28223BE20](v112);
      v115 = (&v118 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v116 + 16))(v115);
      sub_25327537C(*v115, 0x6974736974617473, 0xEA00000000007363, v102, &v125, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v126);
      v80 = v125;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB0, &unk_253D4B1E0);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_253D48DA0;
  *(v117 + 32) = v80;

  return v117;
}

uint64_t sub_253273268@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v111 = a5;
  v110 = a4;
  v116 = a1;
  v113 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v106 - v10;
  v12 = sub_253CD05B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v109 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[7];
  v112 = v16;
  v114 = v11;
  if (v16)
  {
    v108 = v13;
    v17 = a2[6];

    v18 = sub_253CD03C8();
    if (v19)
    {

      v20 = 0;
    }

    else
    {
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BD8, &qword_253D4ABD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = v17;
      v27 = inited + 32;
      *(inited + 40) = v16;
      *(inited + 48) = v25;
      v28 = sub_253218C6C(inited);
      swift_setDeallocating();
      v29 = v27;
      v20 = v28;
      sub_253206054(v29, &unk_27F5A3BE0, &unk_253D4ABD8);
    }

    v13 = v108;
    v11 = v114;
    v21 = a2[9];
    if (v21)
    {
LABEL_9:
      v30 = a2[8];

      v108 = a3;
      v31 = sub_253CD0418();
      if (v32)
      {

        v22 = 0;
      }

      else
      {
        v33 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC8, &qword_253D4ABC0);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_253D48DA0;
        *(v34 + 32) = v30;
        v35 = v34 + 32;
        *(v34 + 40) = v21;
        *(v34 + 48) = v33;
        v36 = sub_253218D68(v34);
        swift_setDeallocating();
        v37 = v35;
        v22 = v36;
        sub_253206054(v37, &qword_27F5A3BD0, &qword_253D4ABC8);
      }

      v11 = v114;
      v23 = a2[11];
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_6:
      v24 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    v21 = a2[9];
    if (v21)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = a2[11];
  if (!v23)
  {
    goto LABEL_6;
  }

LABEL_13:
  v38 = a2[10];

  sub_253CD0358();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_253206054(v11, &qword_27F5A3518, &qword_253D494F0);
    v24 = 0;
  }

  else
  {
    (*(v13 + 32))(v109, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB8, &unk_253D4ABB0);
    v114 = v20;
    v108 = v22;
    v39 = v12;
    v40 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20) - 8);
    v41 = *(*v40 + 72);
    v42 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_253D48DA0;
    v44 = (v43 + v42);
    v45 = v40[14];
    *v44 = v38;
    *(v44 + 1) = v23;
    v46 = v109;
    v47 = v39;
    (*(v13 + 16))(&v44[v45], v109, v39);
    v107 = sub_253218E6C(v43);
    swift_setDeallocating();
    sub_253206054(v44, &qword_27F5A3BC0, &qword_253D48D20);
    v22 = v108;
    v20 = v114;
    swift_deallocClassInstance();
    v48 = v47;
    v24 = v107;
    (*(v13 + 8))(v46, v48);
  }

LABEL_16:
  if (v21 | v112 | v23)
  {
    if (v20 && *(v20 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v20 = sub_253CD03F8();
    v49 = sub_253CD0438();

    v50 = sub_253CD0378();

    v24 = v50;
    v22 = v49;
    if (*(v20 + 16))
    {
      goto LABEL_25;
    }
  }

  if (!v22 || !*(v22 + 16))
  {
    if (v24)
    {
      if (*(v24 + 16))
      {
        goto LABEL_25;
      }
    }

    v72 = 0;
    goto LABEL_40;
  }

LABEL_25:
  v51 = v22;
  v52 = sub_253CCFE98();
  v53 = [v110 stringFromDate_];

  v54 = sub_253CD0968();
  v56 = v55;

  v120 = MEMORY[0x277D837D0];
  *&v119 = v54;
  *(&v119 + 1) = v56;
  sub_2531FF150(&v119, &v117);
  v57 = MEMORY[0x277D84F98];
  LOBYTE(v53) = swift_isUniquelyReferenced_nonNull_native();
  v121 = v57;
  v58 = v118;
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
  v60 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v106 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  sub_253275194(*v62, v62[1], 0x6F69746974726170, 0xE90000000000006ELL, v53, &v121);
  __swift_destroy_boxed_opaque_existential_0(&v117);
  v64 = v121;
  v65 = sub_2532761C8(v111);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA8, &unk_253D4ABA0);
  *&v119 = v65;
  sub_2531FF150(&v119, &v117);
  LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
  v121 = v64;
  v66 = v118;
  v67 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v106 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_25327537C(*v70, 0x7470697263736564, 0xEA0000000000726FLL, v65, &v121, &qword_27F5A3BA8, &unk_253D4ABA0);
  __swift_destroy_boxed_opaque_existential_0(&v117);
  v72 = v121;
  if (v20)
  {
    if (!*(v20 + 16))
    {

      if (!v51)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v73 = v115;
    v74 = sub_25326ECE0(v20);
    v115 = v73;

    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
    *&v119 = v74;
    sub_2531FF150(&v119, &v117);
    LOBYTE(v74) = swift_isUniquelyReferenced_nonNull_native();
    v121 = v72;
    v75 = v118;
    v76 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
    v77 = *(*(v75 - 8) + 64);
    MEMORY[0x28223BE20](v76);
    v79 = (&v106 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    sub_25327537C(*v79, 0x737265746E756F63, 0xE800000000000000, v74, &v121, &qword_27F5A3B88, &qword_253D4AB80);
    __swift_destroy_boxed_opaque_existential_0(&v117);
    v72 = v121;
  }

  if (!v51)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(v51 + 16))
  {
    v81 = v115;
    v82 = sub_25326E8D0(v51);
    v115 = v81;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
    *&v119 = v82;
    sub_2531FF150(&v119, &v117);
    LOBYTE(v82) = swift_isUniquelyReferenced_nonNull_native();
    v121 = v72;
    v83 = v118;
    v84 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
    v85 = *(*(v83 - 8) + 64);
    MEMORY[0x28223BE20](v84);
    v87 = (&v106 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    sub_25327537C(*v87, 0x6E6F697461727564, 0xE900000000000073, v82, &v121, &qword_27F5A3B88, &qword_253D4AB80);
    __swift_destroy_boxed_opaque_existential_0(&v117);
    v72 = v121;
  }

LABEL_31:
  if (!v24)
  {
LABEL_37:

    goto LABEL_40;
  }

  if (!*(v24 + 16))
  {

    goto LABEL_37;
  }

  v89 = sub_253276620(v24, sub_253274A28);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
  v120 = v90;
  *&v119 = v89;
  sub_2531FF150(&v119, &v117);
  LOBYTE(v89) = swift_isUniquelyReferenced_nonNull_native();
  v121 = v72;
  v91 = v118;
  v92 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
  v93 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v95 = (&v106 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95);
  sub_25327537C(*v95, 0x7562697274736964, 0xED0000736E6F6974, v89, &v121, &qword_27F5A3B88, &qword_253D4AB80);
  __swift_destroy_boxed_opaque_existential_0(&v117);
  v97 = v121;
  v98 = sub_253276620(v24, sub_253274CA0);
  v120 = v90;
  *&v119 = v98;
  sub_2531FF150(&v119, &v117);
  LOBYTE(v90) = swift_isUniquelyReferenced_nonNull_native();
  v121 = v97;
  v99 = v118;
  v100 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v118);
  v101 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v103 = (&v106 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103);
  sub_25327537C(*v103, 0x6974736974617473, 0xEA00000000007363, v90, &v121, &qword_27F5A3B88, &qword_253D4AB80);

  result = __swift_destroy_boxed_opaque_existential_0(&v117);
  v72 = v121;
LABEL_40:
  *v113 = v72;
  return result;
}

unint64_t sub_253273FEC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() productInfo];
  v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_253D48C40;
  *(v5 + 32) = 0x646C697562;
  *(v5 + 40) = 0xE500000000000000;
  v6 = [v3 softwareVersion];
  v7 = [v6 buildVersion];

  if (v7)
  {
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B90, &unk_253D4AB88);
  *(v5 + 48) = v8;
  *(v5 + 56) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0x6C65646F6DLL;
  *(v5 + 88) = 0xE500000000000000;
  v12 = [v3 modelIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_253CD0968();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 104) = v16;
  *(v5 + 120) = v11;
  strcpy((v5 + 128), "serialNumber");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  v17 = [v4 serialNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_253CD0968();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v5 + 144) = v19;
  *(v5 + 152) = v21;
  *(v5 + 168) = v11;
  *(v5 + 176) = 0x6D726F6674616C70;
  *(v5 + 184) = 0xE800000000000000;
  [v3 productPlatform];
  v22 = HMFProductPlatformToString();
  if (v22)
  {
    v23 = v22;
    v24 = sub_253CD0968();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v5 + 192) = v24;
  *(v5 + 200) = v26;
  *(v5 + 216) = v11;
  strcpy((v5 + 224), "isHH2Enabled");
  *(v5 + 237) = 0;
  *(v5 + 238) = -5120;
  v27 = MEMORY[0x277D839B0];
  *(v5 + 264) = MEMORY[0x277D839B0];
  *(v5 + 240) = 0;
  v28 = sub_25321856C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = [v2 cachedConfiguration];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 totalHomes];
    v32 = MEMORY[0x277D83B88];
    v99 = MEMORY[0x277D83B88];
    *&v98 = v31;
    sub_2531FF150(&v98, &v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v28;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v34, 0x6D6F486C61746F74, 0xEA00000000007365, isUniquelyReferenced_nonNull_native, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v35 = v95;
    v36 = [v30 totalUsers];
    v99 = v32;
    *&v98 = v36;
    sub_2531FF150(&v98, &v96);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v35;
    v38 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v38, 0x6573556C61746F74, 0xEA00000000007372, v37, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v39 = v95;
    v40 = [v30 totalAccessories];
    v99 = v32;
    *&v98 = v40;
    sub_2531FF150(&v98, &v96);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v39;
    v42 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v42, 0xD000000000000010, 0x8000000253D510E0, v41, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v43 = v95;
    v44 = [v30 totalHAPAccessories];
    v99 = v32;
    *&v98 = v44;
    sub_2531FF150(&v98, &v96);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v43;
    v46 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v46, 0xD000000000000013, 0x8000000253D51100, v45, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v47 = v95;
    v48 = [v30 totalCHIPAccessories];
    v99 = v32;
    *&v98 = v48;
    sub_2531FF150(&v98, &v96);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v47;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v50, 0xD000000000000016, 0x8000000253D51120, v49, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v51 = v95;
    v52 = [v30 totalThreadAccessories];
    v99 = v32;
    *&v98 = v52;
    sub_2531FF150(&v98, &v96);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v51;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v54, 0xD000000000000016, 0x8000000253D51140, v53, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v55 = v95;
    v56 = [v30 totalCameraAccessories];
    v99 = v32;
    *&v98 = v56;
    sub_2531FF150(&v98, &v96);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v55;
    v58 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v58, 0xD000000000000016, 0x8000000253D51160, v57, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v59 = v95;
    v60 = [v30 totalAppleAudioAccessories];
    v99 = v32;
    *&v98 = v60;
    sub_2531FF150(&v98, &v96);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v59;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v62, 0xD00000000000001ALL, 0x8000000253D51180, v61, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v63 = v95;
    v64 = [v30 totalAppleTVAccessories];
    v99 = v32;
    *&v98 = v64;
    sub_2531FF150(&v98, &v96);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v63;
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v66, 0xD000000000000017, 0x8000000253D511A0, v65, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v67 = v95;
    v68 = [v30 totalScenes];
    v99 = v32;
    *&v98 = v68;
    sub_2531FF150(&v98, &v96);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v67;
    v70 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v70, 0x6563536C61746F74, 0xEB0000000073656ELL, v69, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v71 = v95;
    v72 = [v30 totalTriggers];
    v99 = v32;
    *&v98 = v72;
    sub_2531FF150(&v98, &v96);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v71;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v74, 0x6972546C61746F74, 0xED00007372656767, v73, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v75 = v95;
    v76 = [v30 totalWidgets];
    v99 = v32;
    *&v98 = v76;
    sub_2531FF150(&v98, &v96);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v75;
    v78 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_253274EE4(*v78, 0x6469576C61746F74, 0xEC00000073746567, v77, &v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v79 = v95;
    v80 = [v30 isFMFDevice];
    v99 = v27;
    LOBYTE(v98) = v80;
    sub_2531FF150(&v98, &v96);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v79;
    v82 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    sub_25327503C(*v82, 0x766544464D467369, 0xEB00000000656369, v81, &v95);

    __swift_destroy_boxed_opaque_existential_0(&v96);
    v28 = v95;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v83 = [v2 legacyCountersManager];
  v84 = [v83 delegate];

  _s16CoreDataDelegateCMa();
  v85 = swift_dynamicCastClass();
  if (!v85)
  {

    swift_unknownObjectRelease();
    return v28;
  }

  v86 = *(v85 + 24);

  swift_unknownObjectRelease();
  v87 = sub_253CD04B8();
  if (!v87)
  {

LABEL_21:

    return v28;
  }

  v88 = v87;
  sub_253CD0638();
  v90 = lround(v89);
  v99 = MEMORY[0x277D83B88];
  *&v98 = v90;
  sub_2531FF150(&v98, &v96);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v28;
  v92 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
  sub_253274EE4(*v92, 0x6E6F697461727564, 0xEC00000073636553, v91, &v95);

  __swift_destroy_boxed_opaque_existential_0(&v96);
  return v95;
}

unint64_t sub_253274A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_253CD0558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_253D4AB10;
    *(inited + 32) = 1701667182;
    v6 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_253CD0598();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_253CD0568();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = sub_253CD0558();
    *(inited + 264) = v8;
    *(inited + 272) = 0x65636E6169726176;
    *(inited + 280) = 0xE800000000000000;
    sub_253CD05A8();
    *(inited + 288) = v11;
    *(inited + 312) = v9;
    *(inited + 320) = 0x766564647473;
    *(inited + 328) = 0xE600000000000000;
    sub_253CD0578();
    *(inited + 360) = v9;
    *(inited + 336) = v12;
  }

  else
  {
    *(inited + 16) = xmmword_253D49510;
    *(inited + 32) = 1701667182;
    v14 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v14;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v15 = sub_253CD0598();
    v16 = MEMORY[0x277D83B88];
    *(inited + 96) = v15;
    *(inited + 120) = v16;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v16;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v17 = sub_253CD0558();
    *(inited + 216) = v16;
    *(inited + 192) = v17;
  }

  v13 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_253274CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_253CD0558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_253D48C40;
    strcpy((inited + 32), "statisticsName");
    v6 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_253CD0598();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_253CD0568();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    v11 = sub_253CD0558();
    *(inited + 264) = v8;
    *(inited + 240) = v11;
  }

  else
  {
    *(inited + 16) = xmmword_253D49510;
    strcpy((inited + 32), "statisticsName");
    v13 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v13;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v14 = sub_253CD0598();
    v15 = MEMORY[0x277D83B88];
    *(inited + 96) = v14;
    *(inited + 120) = v15;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v15;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v16 = sub_253CD0558();
    *(inited + 216) = v15;
    *(inited + 192) = v16;
  }

  v12 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v12;
}

_OWORD *sub_253274EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_253217D84(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2531FF150(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_253217D84(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_2532759F8(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_25327503C(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_253217D84(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2531FF150(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_253217D84(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839B0]);
  sub_253275974(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_253275194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_253217D84(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_253217D84(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_253275B24(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_25327537C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v35 = v14;
  *&v34 = a1;
  v15 = *a5;
  v17 = sub_253217D84(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_2531FF150(&v34, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_253217D84(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v14);
  v30 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_253275A7C(v17, a2, a3, *v32, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v34);
}

_OWORD *sub_253275584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277CC9318];
  v31 = MEMORY[0x277CC9318];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_253217D84(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_253217D84(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_253275B24(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_25327576C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
  v31 = v10;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_253217D84(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_253217D84(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_253275A7C(v13, a2, a3, *v28, v19, &unk_27F5A3C20, &qword_253D493F8);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_253275974(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2531FF150(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_2532759F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2531FF150(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_253275A7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *&v17 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_2531FF150(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_253275B24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_2531FF150(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

id sub_253275BA0(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_eventBuilders;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C10, &qword_253D4AC18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_253D48DA0;
  *(v5 + 56) = &type metadata for TemperatureHumidityReadWriteLogEvent.Builder;
  *(v5 + 64) = &off_2864FAB18;
  *&a2[v4] = v5;
  v6 = [a1 logEventSubmitter];
  *&a2[OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_logEventSubmitter] = v6;
  v10.receiver = a2;
  v10.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [a1 logEventDispatcher];
  sub_253200644(0, &qword_281530D38, off_27971A080);
  [v8 addObserver:v7 forEventClass:swift_getObjCClassFromMetadata()];

  swift_unknownObjectRelease();
  return v7;
}

id sub_253275CD0()
{
  v0 = sub_253CD0628();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_253CD0B58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0688();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD0678();
  sub_253CD0B18();
  v14 = sub_253CD0668();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  sub_253CD0618();
  v15 = sub_253CD0608();
  (*(v20 + 8))(v3, v21);
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B28, &qword_253D4AB30);
  v24[4] = sub_253276044(&qword_27F5A3B30, &qword_27F5A3B28, &qword_253D4AB30);
  v24[0] = v14;
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B38, &qword_253D4AB38);
  v23[4] = sub_253276044(&qword_27F5A3B40, &qword_27F5A3B38, &qword_253D4AB38);
  v23[0] = v15;
  v16 = _s9SwiftDataCMa();
  v17 = objc_allocWithZone(v16);
  sub_2532074E4(v24, v17 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_repeatingScheduler);
  sub_2532074E4(v23, v17 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler);
  v22.receiver = v17;
  v22.super_class = v16;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v18;
}

uint64_t sub_253276044(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25327608C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11GroupFilterVMa()
{
  result = qword_27F5A3C50;
  if (!qword_27F5A3C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253276148(uint64_t a1)
{
  v2 = _s11GroupFilterVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2532761C8(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BF8, &unk_253D4ABF0);
  v2 = *(*(v62 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v62);
  v70 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v71 = &v57 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v60 = v6 + 8;
  v61 = v6;
  v12 = (v9 + 63) >> 6;
  v63 = a1;

  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v58 = v12;
  v59 = a1 + 64;
  while (v11)
  {
    v69 = v14;
LABEL_12:
    v19 = __clz(__rbit64(v11)) | (v13 << 6);
    v20 = v63;
    v21 = *(v63 + 48);
    v22 = sub_253CD0548();
    v68 = *(v22 - 8);
    v23 = v71;
    (*(v68 + 16))(v71, v21 + *(v68 + 72) * v19, v22);
    v24 = (*(v20 + 56) + 16 * v19);
    v25 = *v24;
    v26 = v24[1];
    v27 = v61;
    v28 = v62;
    v29 = (v23 + *(v62 + 48));
    *v29 = v25;
    v29[1] = v26;
    sub_2532168A0(v23, v27, &qword_27F5A3BF8, &unk_253D4ABF0);
    v30 = *(v60 + *(v28 + 48));

    v31 = sub_253CD0538();
    v67 = v32;
    v64 = *(v68 + 8);
    v65 = v22;
    v64(v27, v22);
    v33 = v70;
    v34 = v31;
    v35 = v67;
    sub_2532168A0(v23, v70, &qword_27F5A3BF8, &unk_253D4ABF0);
    v36 = (v33 + *(v28 + 48));
    v38 = *v36;
    v37 = v36[1];
    v66 = v38;
    v68 = v37;
    v39 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v39;
    v42 = sub_253217D84(v34, v35);
    v43 = v39[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_25;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25328651C();
        if (v46)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_253285440(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_253217D84(v34, v35);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_27;
      }

      v42 = v47;
      if (v46)
      {
LABEL_4:

        v14 = v72;
        v15 = (v72[7] + 16 * v42);
        v16 = v15[1];
        v17 = v68;
        *v15 = v66;
        v15[1] = v17;

        sub_253206054(v71, &qword_27F5A3BF8, &unk_253D4ABF0);
        goto LABEL_5;
      }
    }

    v49 = v71;
    v14 = v72;
    v72[(v42 >> 6) + 8] |= 1 << v42;
    v50 = (v14[6] + 16 * v42);
    *v50 = v34;
    v50[1] = v35;
    v51 = (v14[7] + 16 * v42);
    v52 = v68;
    *v51 = v66;
    v51[1] = v52;
    sub_253206054(v49, &qword_27F5A3BF8, &unk_253D4ABF0);
    v53 = v14[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_26;
    }

    v14[2] = v55;
LABEL_5:
    v11 &= v11 - 1;
    v64(v70, v65);
    v12 = v58;
    v8 = v59;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v18);
    ++v13;
    if (v11)
    {
      v69 = v14;
      v13 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

uint64_t sub_253276620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BF0, &qword_253D4ABE8);
  v3 = *(*(v32 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v31 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v39 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v7, 0);
  v8 = v39;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = sub_253CD0E48();
  v12 = result;
  v28 = a1 + 64;
  v29 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_14;
    }

    v36 = 1 << v12;
    v37 = v12 >> 6;
    v34 = v7;
    v35 = *(a1 + 36);
    v13 = v32;
    v14 = *(v32 + 48);
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = sub_253CD05B8();
    v20 = *(v19 - 8);
    v38 = v8;
    v21 = v20;
    v22 = v30;
    (*(v20 + 16))(&v30[v14], v15 + *(v20 + 72) * v12, v19);
    v23 = v31;
    *v31 = v17;
    *(v23 + 8) = v18;
    v24 = *(v13 + 48);
    (*(v21 + 32))(v23 + v24, &v22[v14], v19);
    v8 = v38;

    v25 = v33(v17, v18, v23 + v24);
    result = sub_253206054(v23, &qword_27F5A3BF0, &qword_253D4ABE8);
    v39 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_25328BFA0((v26 > 1), v27 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v27 + 1;
    *(v8 + 8 * v27 + 32) = v25;
    a1 = v29;
    if (v12 >= -(-1 << *(v29 + 32)))
    {
      goto LABEL_15;
    }

    v9 = v28;
    if ((*(v28 + 8 * v37) & v36) == 0)
    {
      goto LABEL_16;
    }

    if (v35 != *(v29 + 36))
    {
      goto LABEL_17;
    }

    result = sub_253CD0E68();
    v12 = result;
    v7 = v34 - 1;
    if (v34 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25327692C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25320C7A8;

  return sub_25326F570(a1, v1);
}

uint64_t sub_2532769C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25320C438;

  return sub_25326F5F0(a1, v1);
}

uint64_t sub_253276A5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C7A8;

  return sub_25326F670(a1, v5, v4);
}

void sub_253276B2C()
{
  sub_25323FDBC();
  if (v0 <= 0x3F)
  {
    sub_253276BC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_253276BC0()
{
  if (!qword_27F5A3C68)
  {
    sub_253CCFEE8();
    v0 = sub_253CD0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A3C68);
    }
  }
}

void sub_253276C18(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for HMError(0);
  v4 = a3;
  sub_253276CC0(MEMORY[0x277D84F90]);
  sub_25321C694();
  sub_253CCFDF8();
  v5 = sub_253CCFE08();

  [v4 respondWithError_];
}

unint64_t sub_253276CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3528, &unk_253D49500);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_253276DD0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF150(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_253276DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C70, &qword_253D4AC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_253276E48()
{
  ObjectType = swift_getObjectType();
  sub_253277B34();
  v2 = sub_253CD0CF8();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v13 = sub_253277B80;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_253277428;
  v12 = &block_descriptor_10;
  v4 = _Block_copy(&v9);
  v5 = v0;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);

  v6 = sub_253CD0CF8();
  v7 = swift_allocObject();
  *(v7 + 16) = ObjectType;
  v13 = sub_253277BA0;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_253277428;
  v12 = &block_descriptor_6;
  v8 = _Block_copy(&v9);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v6, v8);
  _Block_release(v8);
}

void sub_253276FF8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_253CD07E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = sub_253CD0808();
  if (xpc_dictionary_get_string(a1, v17))
  {
    v39 = v7;
    v18 = sub_253CD09E8();
    v20 = v19;
    sub_253211D58(a3, &off_2864FC3D0);

    v21 = sub_253CD07C8();
    v22 = sub_253CD0C78();

    v23 = os_log_type_enabled(v21, v22);
    v38 = a2;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v37 = v6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;

      v27 = sub_253277BA8(v18, v20, &v40);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_2531F8000, v21, v22, "XPC stream handler invoked with com.apple.notifyd.matching with event name: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C040E0](v26, -1, -1);
      v28 = v25;
      v6 = v37;
      MEMORY[0x259C040E0](v28, -1, -1);
    }

    v29 = *(v39 + 8);
    v29(v14, v6);
    if (v18 == 0xD00000000000001FLL && 0x8000000253D51340 == v20)
    {
    }

    else
    {
      v33 = sub_253CD1118();

      if ((v33 & 1) == 0)
      {
        return;
      }
    }

    sub_253211D58(a3, &off_2864FC3D0);
    v34 = sub_253CD07C8();
    v35 = sub_253CD0C78();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2531F8000, v34, v35, "XPC stream handler invoked with com.apple.CascadeSets.DonateNow", v36, 2u);
      MEMORY[0x259C040E0](v36, -1, -1);
    }

    v29(v11, v6);
    if (qword_2815314B8 != -1)
    {
      swift_once();
    }

    logAndPostNotification(qword_281532BE8, v38, 0);
  }

  else
  {
    sub_253211D58(a3, &off_2864FC3D0);
    v30 = sub_253CD07C8();
    v31 = sub_253CD0C98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2531F8000, v30, v31, "com.apple.notifyd.matching XPC stream handler was called with nil event name. Not handling.", v32, 2u);
      MEMORY[0x259C040E0](v32, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
  }
}

uint64_t sub_253277428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_253277488(void *a1, uint64_t a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = sub_253CD0808();
  if (!xpc_dictionary_get_string(a1, v18))
  {
    v30 = v4;
    sub_253211D58(a2, &off_2864FC3D0);
    v31 = sub_253CD07C8();
    v32 = sub_253CD0C98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v5;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2531F8000, v31, v32, "Rapport XPC stream: Not handling xpc stream event with nil name", v34, 2u);
      MEMORY[0x259C040E0](v34, -1, -1);

      return (*(v33 + 8))(v17, v30);
    }

    else
    {

      return (*(v5 + 8))(v17, v30);
    }
  }

  v54 = a1;
  v19 = sub_253CD09E8();
  v21 = v20;
  sub_253211D58(a2, &off_2864FC3D0);

  v22 = sub_253CD07C8();
  v23 = sub_253CD0C78();

  v24 = os_log_type_enabled(v22, v23);
  v55 = v5;
  v53 = v9;
  if (v24)
  {
    v25 = v4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_253277BA8(v19, v21, &v56);
    _os_log_impl(&dword_2531F8000, v22, v23, "Rapport XPC stream event handler invoked with : %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x259C040E0](v27, -1, -1);
    v28 = v26;
    v4 = v25;
    MEMORY[0x259C040E0](v28, -1, -1);

    v29 = *(v55 + 8);
    v29(v15, v25);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v15, v4);
  }

  if (v19 == 0xD000000000000018 && 0x8000000253D51310 == v21)
  {

    goto LABEL_11;
  }

  v36 = sub_253CD1118();

  if (v36)
  {
LABEL_11:
    v37 = [objc_opt_self() productInfo];
    v38 = [v37 productPlatform];

    if (v38 != 3)
    {
      sub_253211D58(a2, &off_2864FC3D0);
      v39 = sub_253CD07C8();
      v40 = sub_253CD0C78();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2531F8000, v39, v40, "Starting Rapport Messaging Discovery Client", v41, 2u);
        MEMORY[0x259C040E0](v41, -1, -1);
      }

      v29(v12, v4);
      v42 = [objc_opt_self() sharedInstance];
      v43 = [objc_opt_self() requestIDsToRegister];
      if (!v43)
      {
        sub_253CD0A58();
        v43 = sub_253CD0A38();
      }

      [v42 configureDiscoveryClientForRequestIDs:v43 withCompletion:{0, v53}];
    }
  }

  v44 = v54;
  result = xpc_dictionary_get_BOOL(v54, "replyRequired");
  if (result)
  {
    result = xpc_dictionary_create_reply(v44);
    if (result)
    {
      v45 = v53;
      sub_253211D58(a2, &off_2864FC3D0);
      v46 = sub_253CD07C8();
      v47 = sub_253CD0C78();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v4;
        v50 = swift_slowAlloc();
        v56 = v50;
        *v48 = 136315138;
        *(v48 + 4) = sub_253277BA8(0xD00000000000001ALL, 0x8000000253D512F0, &v56);
        _os_log_impl(&dword_2531F8000, v46, v47, "Sending reply to %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x259C040E0](v50, -1, -1);
        MEMORY[0x259C040E0](v48, -1, -1);

        v51 = v45;
        v52 = v49;
      }

      else
      {

        v51 = v45;
        v52 = v4;
      }

      v29(v51, v52);
      xpc_dictionary_send_reply();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_253277B34()
{
  result = qword_281530E48;
  if (!qword_281530E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530E48);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253277BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_253277C74(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_253205FF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_253277C74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_253277D80(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_253CD0FE8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_253277D80(uint64_t a1, unint64_t a2)
{
  v4 = sub_253277DCC(a1, a2);
  sub_253277EFC(&unk_2864F9200);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_253277DCC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_253277FE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_253CD0FE8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_253CD09F8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_253277FE8(v10, 0);
        result = sub_253CD0FA8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_253277EFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25327805C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_253277FE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C78, &qword_253D4AC98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25327805C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C78, &qword_253D4AC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_25327828C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 16) = xmmword_253D48C50;
  *(inited + 40) = 0x8000000253D513F0;
  v3 = [v1 availableStreamHandlerCount];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x8000000253D51410;
  v4 = [v1 inUseStreamHandlerCount];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = 0x8000000253D51480;
  v5 = [v1 availableStreamHandlerCount];
  result = [v1 inUseStreamHandlerCount];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v7 = sub_253218704(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
    swift_arrayDestroy();
    return v7;
  }

  return result;
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init()(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init(startTime:)(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr, Swift::Double startTime)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithStartTime_];
}

void sub_25327858C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_25327A9B4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_253217CF0(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_2532859EC();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_25327A1B0(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_253278690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25327AC9C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_253217D84(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_253285CAC();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_25327A4C8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_253278788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_253CD01C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_253206054(a1, &qword_27F5A3CD0, &qword_253D49088);
    sub_253279E90(a2, a3, v10);

    return sub_253206054(v10, &qword_27F5A3CD0, &qword_253D49088);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25327AE14(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_253278A64()
{
  v1 = *(v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event + 24);
  v2 = *(v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v38 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v36 = v8;
  v37 = v4;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = (*(v38 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2532074E4(*(v38 + 56) + 40 * v14, v41);
    v40[0] = v17;
    v40[1] = v16;
    v18 = v42;
    v19 = v43;
    __swift_project_boxed_opaque_existential_0(v41, v42);
    v20 = *(v19 + 8);
    swift_bridgeObjectRetain_n();
    v21 = v20(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v23 = sub_253217D84(v17, v16);
    v25 = v10[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_253284450(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_253217D84(v17, v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v34 = v23;
    sub_253285CAC();
    v23 = v34;
    v10 = v39;
    if (v29)
    {
LABEL_4:
      v11 = v10[7];
      v12 = *(v11 + 8 * v23);
      *(v11 + 8 * v23) = v21;

      goto LABEL_5;
    }

LABEL_17:
    v10[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v10[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v16;
    *(v10[7] + 8 * v23) = v21;
    v32 = v10[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v10[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    sub_253206054(v40, &unk_27F5A3CC0, &unk_253D4AD50);
    v8 = v36;
    v4 = v37;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

id sub_253278E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Metric.LogEventAdaptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_253278E98@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_253278EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3CF0, &unk_253D4ADC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D4ACA0;
  *(inited + 32) = 0x69466957736168;
  *(inited + 40) = 0xE700000000000000;
  v2 = *v0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &off_2864FC498;
  *(inited + 48) = v2;
  *(inited + 88) = 0x7265687445736168;
  *(inited + 96) = 0xEB0000000074656ELL;
  v4 = v0[1];
  *(inited + 128) = v3;
  *(inited + 136) = &off_2864FC498;
  *(inited + 104) = v4;
  strcpy((inited + 144), "primaryService");
  *(inited + 159) = -18;
  v5 = v0[2];
  v6 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &off_2864FC4A8;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x8000000253D517A0;
  v7 = v0[3];
  *(inited + 240) = v6;
  *(inited + 248) = &off_2864FC4A8;
  *(inited + 216) = v7;
  *(inited + 256) = 0x4973614869666977;
  *(inited + 264) = 0xE900000000000050;
  LOBYTE(v7) = v0[4];
  *(inited + 296) = v3;
  *(inited + 304) = &off_2864FC498;
  *(inited + 272) = v7;
  strcpy((inited + 312), "ethernetHasIP");
  *(inited + 326) = -4864;
  LOBYTE(v7) = v0[5];
  *(inited + 352) = v3;
  *(inited + 360) = &off_2864FC498;
  *(inited + 328) = v7;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000253D517C0;
  LOBYTE(v7) = v0[6];
  *(inited + 408) = v3;
  *(inited + 416) = &off_2864FC498;
  *(inited + 384) = v7;
  *(inited + 424) = 0xD000000000000016;
  *(inited + 432) = 0x8000000253D517E0;
  LOBYTE(v7) = v0[7];
  *(inited + 464) = v3;
  *(inited + 472) = &off_2864FC498;
  *(inited + 440) = v7;
  *(inited + 480) = 0x616D697250736168;
  *(inited + 488) = 0xEA00000000007972;
  LOBYTE(v7) = v0[8];
  *(inited + 520) = v3;
  *(inited + 528) = &off_2864FC498;
  *(inited + 496) = v7;
  strcpy((inited + 536), "numResidents");
  *(inited + 549) = 0;
  *(inited + 550) = -5120;
  *(inited + 576) = v6;
  *(inited + 584) = &off_2864FC4A8;
  v8 = *(v0 + 3);
  *(inited + 552) = *(v0 + 2);
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x8000000253D51800;
  *(inited + 632) = v6;
  *(inited + 640) = &off_2864FC4A8;
  *(inited + 608) = v8;
  strcpy((inited + 648), "wifiRSSIStatus");
  *(inited + 663) = -18;
  v9 = v0[32];
  *(inited + 688) = v6;
  *(inited + 696) = &off_2864FC4A8;
  *(inited + 664) = v9;
  *(inited + 704) = 0x4969466957736168;
  *(inited + 712) = 0xEB000000006F666ELL;
  LOBYTE(v6) = v0[33];
  *(inited + 744) = v3;
  *(inited + 752) = &off_2864FC498;
  *(inited + 720) = v6;
  v10 = sub_2532190FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F8, &unk_253D48D80);
  swift_arrayDestroy();
  return v10;
}