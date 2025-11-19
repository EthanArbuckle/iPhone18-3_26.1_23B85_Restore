uint64_t sub_24B19818C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_24B1985C0;
  }

  else
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_24B1982A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B1982A8()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);

  v1(v5, v4);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  sub_24B1A35D0();
  sub_24B2D5224();

  if (!*(v0 + 168))
  {
    v6 = sub_24B2D5584();
    if (sub_24B2D55C4())
    {
      sub_24B1A2638(v6, *(v0 + 304), *(v0 + 312));
    }
  }

  v17 = *(v0 + 456);
  v7 = *(v0 + 384);
  v15 = *(v0 + 376);
  v16 = *(v0 + 320);
  v18 = *(v0 + 224);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  (*(v0 + 424))();
  *(v0 + 176) = v9;

  *(v0 + 184) = sub_24B2D5824();
  *(v0 + 96) = v15;
  *(v0 + 104) = v7;
  v10 = *(v18 + 48);
  v11 = v10(v0 + 16, v8);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v16);
  v11(v0 + 16, 0);
  v12 = (v10)(v0 + 48, v8, v18);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v17, v16);
  v12(v0 + 48, 0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24B1985C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1986B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[35] = a4;
  v5[36] = v4;
  v5[33] = a1;
  v5[34] = a3;
  v7 = sub_24B2D2504();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_getAssociatedTypeWitness();
  v5[47] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for SubscriptionManagerStorage();
  v5[48] = v9;
  v5[49] = *(v9 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v5[55] = v10;
  v5[56] = v11;
  v5[57] = v12;
  v14 = sub_24B2D5604();
  v5[58] = v14;
  v5[59] = v13;

  return MEMORY[0x2822009F8](sub_24B198918, v14, v13);
}

uint64_t sub_24B198918()
{
  v175 = v0;
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[45];
  v6 = v0[40];
  v5 = v0[41];
  v164 = *(v0[35] + 32);
  (v164)(v0[34]);
  v150 = *(v5 + 16);
  v150(v4, v1, v6);
  v7 = *(v3 + 8);
  v7(v1, v2);
  swift_unknownObjectRetain();

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v159 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v137 = v0[56];
    v139 = v0[57];
    v157 = v0[45];
    v144 = v0[41];
    v146 = v0[40];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[37];
    v14 = v0[34];
    v13 = v0[35];
    v135 = v0[33];
    v15 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v174[0] = v142;
    *v15 = 136447235;
    (*(v13 + 56))(v14, v13);
    sub_24B2D12A4();

    v16 = sub_24B2D24B4();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_24AFF321C(v16, v18, v174);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v0[32] = v135;
    sub_24B2D5854();
    swift_getWitnessTable();
    v20 = sub_24B232AB0();
    v22 = sub_24AFF321C(v20, v21, v174);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v0[22] = v137;
    v0[23] = v139;

    v23 = sub_24B2D53C4();
    v25 = sub_24AFF321C(v23, v24, v174);

    *(v15 + 44) = v25;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):removeSubscriptions\n- subscriptionsToRemove: %{private,mask.hash}s\n- subscriber: %{private,mask.hash}s", v15, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v142, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    v26 = v157;
    v158 = *(v144 + 8);
    v158(v26, v146);
  }

  else
  {
    v27 = v0[45];
    v28 = v0[40];
    v29 = v0[41];

    v158 = *(v29 + 8);
    v158(v27, v28);
  }

  v31 = v0[56];
  v30 = v0[57];
  v32 = v0[48];
  v33 = v0[35];
  v34 = v0[34];

  v164(v34, v33);
  v140 = v32;
  v0[10] = v31;
  v0[11] = v30;
  sub_24B2D5854();
  sub_24B1A35D0();
  sub_24B2D5224();

  v35 = v0[57];
  v36 = v0[35];
  v147 = v0[34];
  if (!v0[24])
  {
    v68 = v0[50];
    v69 = v0[48];
    v138 = v0[42];
    v141 = v0[40];
    v159(v0[54], v69);
    v164(v147, v36);
    v150(v138, v68, v141);
    v159(v68, v69);
    swift_unknownObjectRetain();

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v70, v71))
    {
      v152 = v0[56];
      v155 = v0[57];
      v72 = v0[39];
      v166 = v0[40];
      v171 = v0[42];
      v73 = v0[37];
      v74 = v0[38];
      v75 = v0[35];
      v76 = v0[34];
      v148 = v0[33];
      v77 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v174[0] = v161;
      *v77 = 136447235;
      (*(v75 + 56))(v76, v75);
      sub_24B2D12A4();

      v78 = sub_24B2D24B4();
      v80 = v79;
      (*(v74 + 8))(v72, v73);
      v81 = sub_24AFF321C(v78, v80, v174);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2160;
      *(v77 + 14) = 1752392040;
      *(v77 + 22) = 2081;
      v0[25] = v148;
      swift_getWitnessTable();
      v82 = sub_24B232AB0();
      v84 = sub_24AFF321C(v82, v83, v174);

      *(v77 + 24) = v84;
      *(v77 + 32) = 2160;
      *(v77 + 34) = 1752392040;
      *(v77 + 42) = 2081;
      v0[12] = v152;
      v0[13] = v155;

      v85 = sub_24B2D53C4();
      v87 = sub_24AFF321C(v85, v86, v174);

      *(v77 + 44) = v87;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):removeSubscriptions\n- Trying to remove a non existing subscriber %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v77, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v161, -1, -1);
      MEMORY[0x24C23D530](v77, -1, -1);

      v88 = v166;
      v89 = v171;
    }

    else
    {
      v113 = v0[42];
      v114 = v0[40];

      v89 = v113;
      v88 = v114;
    }

    v158(v89, v88);
LABEL_18:

    v126 = v0[1];

    return v126();
  }

  v37 = v0[53];
  v38 = v0[48];
  v136 = v0[56];
  v159(v0[54], v38);
  v134 = sub_24B2D5804();
  v0[60] = v134;
  v164(v147, v36);

  v159(v37, v38);
  v164(v147, v36);
  v39 = *(v37 + *(v140 + 36));

  v159(v37, v38);
  v0[26] = v39;
  v0[27] = v134;
  v0[14] = v136;
  v0[15] = v35;
  v0[61] = sub_24B2D5214();
  swift_bridgeObjectRetain_n();

  sub_24B2D5234();
  v40 = v0[26];
  v0[62] = v40;
  v0[28] = nullsub_1(v40);
  v41 = swift_task_alloc();
  *(v41 + 16) = v147;
  *(v41 + 24) = v36;
  sub_24B2D5204();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v42 = sub_24B2D54D4();

  v0[29] = v42;
  sub_24B2D55E4();
  swift_getWitnessTable();
  v0[63] = sub_24B2D5864();
  v43 = sub_24B2D5804();
  v0[64] = v43;
  v44 = sub_24B2D5834();
  v45 = v0[48];
  v46 = v0[40];
  v47 = v0[35];
  v48 = v0[34];
  if (v44)
  {
    v143 = v0 + 2;
    v145 = v0 + 6;
    v49 = v0[52];
    v50 = v0[44];

    v164(v48, v47);
    v150(v50, v49, v46);
    v159(v49, v45);
    swift_unknownObjectRetain();

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v51, v52))
    {
      v160 = v0[57];
      v154 = v0[56];
      v165 = v0[40];
      v170 = v0[44];
      v54 = v0[38];
      v53 = v0[39];
      v151 = v0[37];
      v55 = v0[34];
      v56 = v0[35];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v174[0] = v58;
      *v57 = 136446723;
      (*(v56 + 56))(v55, v56);
      sub_24B2D12A4();

      v59 = sub_24B2D24B4();
      v61 = v60;
      (*(v54 + 8))(v53, v151);
      v62 = sub_24AFF321C(v59, v61, v174);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2160;
      *(v57 + 14) = 1752392040;
      *(v57 + 22) = 2081;
      v0[20] = v154;
      v0[21] = v160;

      v63 = sub_24B2D53C4();
      v65 = sub_24AFF321C(v63, v64, v174);

      *(v57 + 24) = v65;
      _os_log_impl(&dword_24AFD2000, v51, v52, "Provider(%{public}s):removeSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v58, -1, -1);
      MEMORY[0x24C23D530](v57, -1, -1);

      v66 = v165;
      v67 = v170;
    }

    else
    {
      v115 = v0[44];
      v116 = v0[40];

      v67 = v115;
      v66 = v116;
    }

    v158(v67, v66);

    v117 = sub_24B2D5834();

    v118 = v0[60];
    if (v117)
    {

      v118 = 0;
    }

    v168 = v0[63];
    v120 = v0[56];
    v119 = v0[57];
    v121 = v0[48];
    v122 = v0[35];
    v123 = v0[34];
    v0[30] = v118;
    v0[16] = v120;
    v0[17] = v119;
    v124 = *(v122 + 48);
    v163 = v124(v143, v123, v122);
    sub_24B2D5234();
    sub_24B1A395C(v121);
    v163(v143, 0);
    v125 = v124(v145, v123, v122);
    SubscriptionManagerStorage.uniqueSubscriptions.setter(v168, v121);
    v125(v145, 0);

    goto LABEL_18;
  }

  v90 = v0[51];
  v91 = v0[43];
  v164(v48, v47);
  v150(v91, v90, v46);
  v159(v90, v45);
  swift_unknownObjectRetain();

  v92 = sub_24B2D3164();
  v93 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v94 = v43;
  if (os_log_type_enabled(v92, v93))
  {
    v149 = v0[56];
    v153 = v0[57];
    v167 = v0[40];
    v172 = v0[43];
    v96 = v0[38];
    v95 = v0[39];
    v162 = v93;
    v97 = v0[37];
    v99 = v0[34];
    v98 = v0[35];
    v100 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v174[0] = v156;
    *v100 = 136447235;
    (*(v98 + 56))(v99, v98);
    sub_24B2D12A4();

    v101 = sub_24B2D24B4();
    v103 = v102;
    (*(v96 + 8))(v95, v97);
    v104 = sub_24AFF321C(v101, v103, v174);

    *(v100 + 4) = v104;
    *(v100 + 12) = 2160;
    *(v100 + 14) = 1752392040;
    *(v100 + 22) = 2081;
    v0[31] = v94;
    swift_getWitnessTable();
    v105 = sub_24B232AB0();
    v107 = sub_24AFF321C(v105, v106, v174);

    *(v100 + 24) = v107;
    *(v100 + 32) = 2160;
    *(v100 + 34) = 1752392040;
    *(v100 + 42) = 2081;
    v0[18] = v149;
    v0[19] = v153;

    v108 = sub_24B2D53C4();
    v110 = sub_24AFF321C(v108, v109, v174);

    *(v100 + 44) = v110;
    _os_log_impl(&dword_24AFD2000, v92, v162, "Provider(%{public}s):removeSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v100, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v156, -1, -1);
    MEMORY[0x24C23D530](v100, -1, -1);

    v111 = v167;
    v112 = v172;
  }

  else
  {
    v128 = v0[43];
    v129 = v0[40];

    v112 = v128;
    v111 = v129;
  }

  v158(v112, v111);
  v173 = v0[35];
  v130 = sub_24B2D5834();
  v169 = (*(v173 + 72) + **(v173 + 72));
  v131 = swift_task_alloc();
  v0[65] = v131;
  *v131 = v0;
  v131[1] = sub_24B199B08;
  v132 = v0[35];
  v133 = v0[34];

  return v169(v94, v130 & 1, v133, v132);
}

uint64_t sub_24B199B08()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_24B199E78;
  }

  else
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_24B199C60;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B199C60()
{

  v1 = sub_24B2D5834();

  v2 = v0[60];
  if (v1)
  {

    v2 = 0;
  }

  v13 = v0[63];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[48];
  v6 = v0[35];
  v12 = v0[34];
  v0[30] = v2;
  v0[16] = v4;
  v0[17] = v3;
  v7 = *(v6 + 48);
  v11 = v7(v0 + 2);
  sub_24B2D5234();
  sub_24B1A395C(v5);
  v11(v0 + 2, 0);
  v8 = (v7)(v0 + 6, v12, v6);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v13, v5);
  v8(v0 + 6, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B199E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B199F70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  v6 = sub_24B2D2504();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_24B2D3184();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_getAssociatedTypeWitness();
  v4[16] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for SubscriptionManagerStorage();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  v4[19] = v9;
  v4[20] = v10;
  v4[21] = v11;
  v13 = sub_24B2D5604();
  v4[22] = v13;
  v4[23] = v12;

  return MEMORY[0x2822009F8](sub_24B19A178, v13, v12);
}

uint64_t sub_24B19A178()
{
  v40 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[7] + 32))(v0[6]);
  (*(v5 + 16))(v4, v1, v6);
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRetain();

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[20];
    v35 = v0[21];
    v36 = v0[13];
    v9 = v0[11];
    v37 = v0[12];
    v38 = v0[14];
    v10 = v0[10];
    v33 = v0[9];
    v11 = v0[7];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136446723;
    (*(v11 + 56))(v12, v11);
    sub_24B2D12A4();

    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v10 + 8))(v9, v33);
    v18 = sub_24AFF321C(v15, v17, &v39);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v0[4] = v34;
    v0[5] = v35;

    v19 = sub_24B2D53C4();
    v21 = sub_24AFF321C(v19, v20, &v39);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    (*(v23 + 8))(v22, v24);
  }

  v25 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v26 = sub_24B1A2638(v25, v0[15], v0[16]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  v0[24] = v26;
  v28 = v0[20];
  v27 = v0[21];

  v0[2] = v28;
  v0[3] = v27;
  v29 = swift_task_alloc();
  v0[25] = v29;
  *v29 = v0;
  v29[1] = sub_24B19A504;
  v30 = v0[7];
  v31 = v0[6];

  return sub_24B19A6FC(v26, v0 + 2, v31, v30);
}

uint64_t sub_24B19A504()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](sub_24B19A680, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B19A680()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19A6FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a1;
  v5[38] = a3;
  v7 = sub_24B2D2504();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[44] = v8;
  v5[45] = *(v8 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_getAssociatedTypeWitness();
  v5[52] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for SubscriptionManagerStorage();
  v5[53] = v9;
  v5[54] = *(v9 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v5[60] = v10;
  v5[61] = v11;
  v5[62] = v12;
  v14 = sub_24B2D5604();
  v5[63] = v14;
  v5[64] = v13;

  return MEMORY[0x2822009F8](sub_24B19A970, v14, v13);
}

uint64_t sub_24B19A970()
{
  v225 = v0;
  v1 = v0[60];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[50];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[38];
  v8 = v0[39];
  v9 = *(v8 + 32);
  v0[65] = v9;
  v0[66] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0xBE12000000000000;
  v207 = v9;
  (v9)(v7);
  v10 = *(v5 + 16);
  v0[67] = v10;
  v0[68] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v187 = v10;
  v10(v4, v1, v6);
  v11 = *(v3 + 8);
  v0[69] = v11;
  v0[70] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v204 = v11;
  v11(v1, v2);
  swift_unknownObjectRetain();

  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v175 = v0[61];
    v176 = v0[62];
    v198 = v0[50];
    v179 = v0[45];
    v182 = v0[44];
    v15 = v0[42];
    v14 = v0[43];
    v16 = v0[41];
    v18 = v0[38];
    v17 = v0[39];
    v173 = v0[37];
    v19 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v224[0] = v177;
    *v19 = 136447235;
    (*(v17 + 56))(v18, v17);
    sub_24B2D12A4();

    v20 = sub_24B2D24B4();
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_24AFF321C(v20, v22, v224);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v0[36] = v173;
    sub_24B2D5854();
    swift_getWitnessTable();
    v24 = sub_24B232AB0();
    v26 = sub_24AFF321C(v24, v25, v224);

    *(v19 + 24) = v26;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v0[24] = v175;
    v0[25] = v176;

    v27 = sub_24B2D53C4();
    v29 = sub_24AFF321C(v27, v28, v224);

    *(v19 + 44) = v29;
    _os_log_impl(&dword_24AFD2000, v12, v13, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v177, -1, -1);
    MEMORY[0x24C23D530](v19, -1, -1);

    v30 = *(v179 + 8);
    v30(v198, v182);
  }

  else
  {
    v31 = v0[50];
    v32 = v0[44];
    v33 = v0[45];

    v30 = *(v33 + 8);
    v30(v31, v32);
  }

  v199 = v30;
  v0[71] = v30;
  v34 = v0[59];
  v35 = v0[53];
  v36 = v0[39];
  v37 = v0[38];
  v207(v37, v36);
  v0[72] = *(v34 + *(v35 + 40));

  v204(v34, v35);
  v207(v37, v36);
  v38 = *(v34 + *(v35 + 36));

  v204(v34, v35);
  v0[26] = v38;
  v39 = sub_24B2D5834();
  v40 = v0[61];
  v41 = v0[62];
  if (v39)
  {
    v0[35] = 0;
    v0[22] = v40;
    v0[23] = v41;
    sub_24B2D5854();
    sub_24B1A35D0();
    sub_24B2D5214();
  }

  else
  {
    v0[27] = v0[37];
    v0[10] = v40;
    v0[11] = v41;
    sub_24B2D5854();
    sub_24B1A35D0();
    sub_24B2D5214();
  }

  sub_24B2D5234();
  v42 = v0[26];
  v0[73] = v42;
  v0[74] = sub_24B2D5854();
  v0[75] = sub_24B1A35D0();
  v180 = *(v0 + 19);
  v0[28] = nullsub_1(v42);
  *(swift_task_alloc() + 16) = v180;
  sub_24B2D5204();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v43 = sub_24B2D54D4();

  v0[29] = v43;
  sub_24B2D55E4();
  swift_getWitnessTable();
  v0[76] = sub_24B2D5864();

  v0[77] = sub_24B2D5804();

  v44 = sub_24B2D5804();
  v0[78] = v44;
  v45 = sub_24B2D5834();
  v46 = v0[53];
  v47 = v0[44];
  v48 = v0[39];
  v49 = v0[38];
  if ((v45 & 1) == 0)
  {
    v72 = v0[57];
    v73 = v0[48];
    v207(v49, v48);
    v187(v73, v72, v47);
    v204(v72, v46);
    swift_unknownObjectRetain();

    v74 = sub_24B2D3164();
    v75 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v74, v75))
    {
      v184 = v0[61];
      v189 = v0[62];
      v213 = v0[44];
      v219 = v0[48];
      v77 = v0[42];
      v76 = v0[43];
      v178 = v0[41];
      v206 = v75;
      v78 = v0[39];
      v79 = v0[38];
      v80 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v224[0] = v193;
      *v80 = 136447235;
      (*(v78 + 56))(v79, v78);
      sub_24B2D12A4();

      v81 = sub_24B2D24B4();
      v83 = v82;
      (*(v77 + 8))(v76, v178);
      v84 = sub_24AFF321C(v81, v83, v224);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2160;
      *(v80 + 14) = 1752392040;
      *(v80 + 22) = 2081;
      v0[33] = v44;
      swift_getWitnessTable();
      v85 = sub_24B232AB0();
      v87 = sub_24AFF321C(v85, v86, v224);

      *(v80 + 24) = v87;
      *(v80 + 32) = 2160;
      *(v80 + 34) = 1752392040;
      *(v80 + 42) = 2081;
      v0[18] = v184;
      v0[19] = v189;

      v88 = sub_24B2D53C4();
      v90 = sub_24AFF321C(v88, v89, v224);

      *(v80 + 44) = v90;
      _os_log_impl(&dword_24AFD2000, v74, v206, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v80, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v193, -1, -1);
      MEMORY[0x24C23D530](v80, -1, -1);

      v91 = v213;
      v92 = v219;
    }

    else
    {
      v121 = v0[48];
      v122 = v0[44];

      v92 = v121;
      v91 = v122;
    }

    v199(v92, v91);
    v221 = v0[39];
    v123 = sub_24B2D5834();
    v215 = (*(v221 + 72) + **(v221 + 72));
    v124 = swift_task_alloc();
    v0[79] = v124;
    *v124 = v0;
    v124[1] = sub_24B19C0DC;
    v125 = v0[39];
    v126 = v0[38];
    v127 = v123 & 1;
    v128 = v44;
    v129 = v215;

    return v129(v128, v127, v126, v125);
  }

  v50 = v0[58];
  v51 = v0[49];
  v207(v49, v48);
  v187(v51, v50, v47);
  v204(v50, v46);
  swift_unknownObjectRetain();

  v52 = sub_24B2D3164();
  v53 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v52, v53))
  {
    v183 = v0[61];
    v188 = v0[62];
    v212 = v0[44];
    v218 = v0[49];
    v55 = v0[42];
    v54 = v0[43];
    v205 = v53;
    v56 = v0[41];
    v58 = v0[38];
    v57 = v0[39];
    v59 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v224[0] = v192;
    *v59 = 136447235;
    (*(v57 + 56))(v58, v57);
    sub_24B2D12A4();

    v60 = sub_24B2D24B4();
    v62 = v61;
    (*(v55 + 8))(v54, v56);
    v63 = sub_24AFF321C(v60, v62, v224);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2160;
    *(v59 + 14) = 1752392040;
    *(v59 + 22) = 2081;
    v0[34] = v44;
    swift_getWitnessTable();
    v64 = sub_24B232AB0();
    v66 = sub_24AFF321C(v64, v65, v224);

    *(v59 + 24) = v66;
    *(v59 + 32) = 2160;
    *(v59 + 34) = 1752392040;
    *(v59 + 42) = 2081;
    v0[20] = v183;
    v0[21] = v188;

    v67 = sub_24B2D53C4();
    v69 = sub_24AFF321C(v67, v68, v224);

    *(v59 + 44) = v69;
    _os_log_impl(&dword_24AFD2000, v52, v205, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v192, -1, -1);
    MEMORY[0x24C23D530](v59, -1, -1);

    v70 = v212;
    v71 = v218;
  }

  else
  {
    v93 = v0[49];
    v94 = v0[44];

    v71 = v93;
    v70 = v94;
  }

  v199(v71, v70);
  if ((sub_24B2D5834() & 1) == 0)
  {
    v210 = v0[69];
    v202 = v0[67];
    v131 = v0[65];
    v132 = v0[55];
    v196 = v0[53];
    v133 = v0[46];
    v134 = v0[44];
    v135 = v0[39];
    v136 = v0[38];

    v131(v136, v135);
    v202(v133, v132, v134);
    v210(v132, v196);
    swift_unknownObjectRetain();

    v137 = sub_24B2D3164();
    v138 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v137, v138))
    {
      v181 = v0[77];
      v222 = v0[71];
      v191 = v0[61];
      v197 = v0[62];
      v139 = v0[43];
      v211 = v0[44];
      v216 = v0[46];
      v140 = v0[41];
      v141 = v0[42];
      v142 = v0[39];
      v143 = v0[38];
      v144 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v224[0] = v203;
      *v144 = 136447235;
      (*(v142 + 56))(v143, v142);
      sub_24B2D12A4();

      v145 = sub_24B2D24B4();
      v147 = v146;
      (*(v141 + 8))(v139, v140);
      v148 = sub_24AFF321C(v145, v147, v224);

      *(v144 + 4) = v148;
      *(v144 + 12) = 2160;
      *(v144 + 14) = 1752392040;
      *(v144 + 22) = 2081;
      v0[31] = v181;
      swift_getWitnessTable();
      v149 = sub_24B232AB0();
      v151 = sub_24AFF321C(v149, v150, v224);

      *(v144 + 24) = v151;
      *(v144 + 32) = 2160;
      *(v144 + 34) = 1752392040;
      *(v144 + 42) = 2081;
      v0[14] = v191;
      v0[15] = v197;

      v152 = sub_24B2D53C4();
      v154 = sub_24AFF321C(v152, v153, v224);

      *(v144 + 44) = v154;
      _os_log_impl(&dword_24AFD2000, v137, v138, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v144, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v203, -1, -1);
      MEMORY[0x24C23D530](v144, -1, -1);

      v222(v216, v211);
    }

    else
    {
      v159 = v0[71];
      v160 = v0[46];
      v161 = v0[44];

      v159(v160, v161);
    }

    v223 = v0[39];
    v162 = sub_24B2D5834();

    v217 = (*(v223 + 64) + **(v223 + 64));
    v163 = swift_task_alloc();
    v0[81] = v163;
    *v163 = v0;
    v163[1] = sub_24B19CC30;
    v125 = v0[39];
    v126 = v0[38];
    v127 = v162 & 1;
    v128 = v0[77];
    v129 = v217;

    return v129(v128, v127, v126, v125);
  }

  v208 = v0[69];
  v200 = v0[67];
  v185 = v0[65];
  v95 = v0[56];
  v194 = v0[53];
  v96 = v0[47];
  v97 = v0[44];
  v98 = v0[39];
  v99 = v0[38];

  v185(v99, v98);
  v200(v96, v95, v97);
  v208(v95, v194);
  swift_unknownObjectRetain();

  v100 = sub_24B2D3164();
  v101 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v102 = os_log_type_enabled(v100, v101);
  v103 = v0[78];
  if (v102)
  {
    v220 = v0[71];
    v186 = v0[61];
    v190 = v0[62];
    v209 = v0[44];
    v214 = v0[47];
    v104 = v0[42];
    v105 = v0[43];
    v201 = v101;
    v106 = v0[41];
    v107 = v0[38];
    v108 = v0[39];
    v109 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v224[0] = v195;
    *v109 = 136447235;
    (*(v108 + 56))(v107, v108);
    sub_24B2D12A4();

    v110 = sub_24B2D24B4();
    v112 = v111;
    (*(v104 + 8))(v105, v106);
    v113 = sub_24AFF321C(v110, v112, v224);

    *(v109 + 4) = v113;
    *(v109 + 12) = 2160;
    *(v109 + 14) = 1752392040;
    *(v109 + 22) = 2081;
    v0[32] = v103;
    swift_getWitnessTable();
    v114 = sub_24B232AB0();
    v116 = v115;

    v117 = sub_24AFF321C(v114, v116, v224);

    *(v109 + 24) = v117;
    *(v109 + 32) = 2160;
    *(v109 + 34) = 1752392040;
    *(v109 + 42) = 2081;
    v0[16] = v186;
    v0[17] = v190;

    v118 = sub_24B2D53C4();
    v120 = sub_24AFF321C(v118, v119, v224);

    *(v109 + 44) = v120;
    _os_log_impl(&dword_24AFD2000, v100, v201, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v109, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v195, -1, -1);
    MEMORY[0x24C23D530](v109, -1, -1);

    v220(v214, v209);
  }

  else
  {
    v155 = v0[71];
    v156 = v0[47];
    v157 = v0[44];

    v155(v156, v157);
  }

  if (sub_24B2D5834())
  {
    v158 = 0;
  }

  else
  {
  }

  v174 = v0[76];
  v165 = v0[61];
  v164 = v0[62];
  v166 = v0[53];
  v167 = v0[39];
  v172 = v0[38];
  v0[30] = v158;
  v0[12] = v165;
  v0[13] = v164;
  v168 = *(v167 + 48);
  v171 = v168(v0 + 2);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v166);
  v171(v0 + 2, 0);
  v169 = (v168)(v0 + 6, v172, v167);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v174, v166);
  v169(v0 + 6, 0);

  v170 = v0[1];

  return v170();
}

uint64_t sub_24B19C0DC()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {

    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19CFA0;
  }

  else
  {
    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19C224;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19C224()
{
  v98 = v0;
  if (sub_24B2D5834())
  {
    v87 = v0[69];
    v83 = v0[67];
    v75 = v0[65];
    v1 = v0[56];
    v79 = v0[53];
    v2 = v0[47];
    v3 = v0[44];
    v4 = v0[39];
    v5 = v0[38];

    v75(v5, v4);
    v83(v2, v1, v3);
    v87(v1, v79);
    swift_unknownObjectRetain();

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    swift_unknownObjectRelease();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[78];
    if (v8)
    {
      v94 = v0[71];
      v76 = v0[61];
      v77 = v0[62];
      v88 = v0[44];
      v91 = v0[47];
      v10 = v0[42];
      v11 = v0[43];
      v84 = v7;
      v12 = v0[41];
      v13 = v0[38];
      v14 = v0[39];
      v15 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v97 = v80;
      *v15 = 136447235;
      (*(v14 + 56))(v13, v14);
      sub_24B2D12A4();

      v16 = sub_24B2D24B4();
      v18 = v17;
      (*(v10 + 8))(v11, v12);
      v19 = sub_24AFF321C(v16, v18, &v97);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      v0[32] = v9;
      swift_getWitnessTable();
      v20 = sub_24B232AB0();
      v22 = v21;

      v23 = sub_24AFF321C(v20, v22, &v97);

      *(v15 + 24) = v23;
      *(v15 + 32) = 2160;
      *(v15 + 34) = 1752392040;
      *(v15 + 42) = 2081;
      v0[16] = v76;
      v0[17] = v77;

      v24 = sub_24B2D53C4();
      v26 = sub_24AFF321C(v24, v25, &v97);

      *(v15 + 44) = v26;
      _os_log_impl(&dword_24AFD2000, v6, v84, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v15, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v80, -1, -1);
      MEMORY[0x24C23D530](v15, -1, -1);

      v94(v91, v88);
    }

    else
    {
      v51 = v0[71];
      v52 = v0[47];
      v53 = v0[44];

      v51(v52, v53);
    }

    if (sub_24B2D5834())
    {
      v54 = 0;
    }

    else
    {
    }

    v73 = v0[76];
    v65 = v0[61];
    v64 = v0[62];
    v66 = v0[53];
    v67 = v0[39];
    v72 = v0[38];
    v0[30] = v54;
    v0[12] = v65;
    v0[13] = v64;
    v68 = *(v67 + 48);
    v71 = v68(v0 + 2);
    sub_24B2D5214();
    sub_24B2D5234();
    sub_24B1A395C(v66);
    v71(v0 + 2, 0);
    v69 = (v68)(v0 + 6, v72, v67);
    SubscriptionManagerStorage.uniqueSubscriptions.setter(v73, v66);
    v69(v0 + 6, 0);

    v70 = v0[1];

    return v70();
  }

  else
  {
    v89 = v0[69];
    v85 = v0[67];
    v27 = v0[65];
    v28 = v0[55];
    v81 = v0[53];
    v29 = v0[46];
    v30 = v0[44];
    v31 = v0[39];
    v32 = v0[38];

    v27(v32, v31);
    v85(v29, v28, v30);
    v89(v28, v81);
    swift_unknownObjectRetain();

    v33 = sub_24B2D3164();
    v34 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v33, v34))
    {
      v74 = v0[77];
      v95 = v0[71];
      v78 = v0[61];
      v82 = v0[62];
      v35 = v0[43];
      v90 = v0[44];
      v92 = v0[46];
      v36 = v0[41];
      v37 = v0[42];
      v38 = v0[39];
      v39 = v0[38];
      v40 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v97 = v86;
      *v40 = 136447235;
      (*(v38 + 56))(v39, v38);
      sub_24B2D12A4();

      v41 = sub_24B2D24B4();
      v43 = v42;
      (*(v37 + 8))(v35, v36);
      v44 = sub_24AFF321C(v41, v43, &v97);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2160;
      *(v40 + 14) = 1752392040;
      *(v40 + 22) = 2081;
      v0[31] = v74;
      swift_getWitnessTable();
      v45 = sub_24B232AB0();
      v47 = sub_24AFF321C(v45, v46, &v97);

      *(v40 + 24) = v47;
      *(v40 + 32) = 2160;
      *(v40 + 34) = 1752392040;
      *(v40 + 42) = 2081;
      v0[14] = v78;
      v0[15] = v82;

      v48 = sub_24B2D53C4();
      v50 = sub_24AFF321C(v48, v49, &v97);

      *(v40 + 44) = v50;
      _os_log_impl(&dword_24AFD2000, v33, v34, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v40, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v86, -1, -1);
      MEMORY[0x24C23D530](v40, -1, -1);

      v95(v92, v90);
    }

    else
    {
      v55 = v0[71];
      v56 = v0[46];
      v57 = v0[44];

      v55(v56, v57);
    }

    v96 = v0[39];
    v58 = sub_24B2D5834();

    v93 = (*(v96 + 64) + **(v96 + 64));
    v59 = swift_task_alloc();
    v0[81] = v59;
    *v59 = v0;
    v59[1] = sub_24B19CC30;
    v60 = v0[77];
    v61 = v0[39];
    v62 = v0[38];

    return v93(v60, v58 & 1, v62, v61);
  }
}

uint64_t sub_24B19CC30()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19D0AC;
  }

  else
  {

    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19CD4C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19CD4C()
{

  if (sub_24B2D5834())
  {
    v1 = 0;
  }

  else
  {
  }

  v12 = v0[76];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[53];
  v5 = v0[39];
  v11 = v0[38];
  v0[30] = v1;
  v0[12] = v3;
  v0[13] = v2;
  v6 = *(v5 + 48);
  v10 = v6(v0 + 2);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v4);
  v10(v0 + 2, 0);
  v7 = (v6)(v0 + 6, v11, v5);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v12, v4);
  v7(v0 + 6, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24B19CFA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19D0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19D1CC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24B2D2504();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_getAssociatedTypeWitness();
  v3[17] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SubscriptionManagerStorage();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = sub_24B2D5604();
  v3[24] = v8;
  v3[25] = v7;

  return MEMORY[0x2822009F8](sub_24B19D3F8, v8, v7);
}

uint64_t sub_24B19D3F8()
{
  v60 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0[7] + 32);
  v4(v0[6]);
  v5 = *(v1 + *(v2 + 44));
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5 != 1)
  {
    v30 = v0[20];
    v55 = v0[18];
    v31 = v0[13];
    v32 = v0[14];
    v33 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v31 + 16))(v32, v30, v33);
    v6(v30, v55);
    swift_unknownObjectRetain();
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v34 = os_log_type_enabled(v14, v15);
    v19 = v0[13];
    v17 = v0[14];
    v18 = v0[12];
    if (v34)
    {
      v35 = v0[10];
      v36 = v0[11];
      v51 = v0[9];
      v54 = v0[12];
      v57 = v0[14];
      v37 = v0[7];
      v38 = v0[6];
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v24 = 136446466;
      (*(v37 + 56))(v38, v37);
      sub_24B2D12A4();

      v39 = sub_24B2D24B4();
      v41 = v40;
      (*(v35 + 8))(v36, v51);
      v42 = sub_24AFF321C(v39, v41, &v59);

      *(v24 + 4) = v42;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AFF321C(0xD000000000000016, 0x800000024B2DC720, &v59);
      v29 = "Provider(%{public}s):%s - Skipping since it's not paused";
      goto LABEL_7;
    }

LABEL_8:

    (*(v19 + 8))(v17, v18);
    goto LABEL_9;
  }

  v7 = v0[23];
  v8 = v0[18];
  (v4)(v0[6], v0[7]);

  v6(v7, v8);
  v9 = sub_24B2D5834();

  v10 = v0[18];
  if (v9)
  {
    v11 = v0[21];
    v12 = v0[15];
    v13 = v0[13];
    v53 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v13 + 16))(v12, v11, v53);
    v6(v11, v10);
    swift_unknownObjectRetain();
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[15];
    v18 = v0[12];
    v19 = v0[13];
    if (v16)
    {
      v20 = v0[10];
      v21 = v0[11];
      v50 = v0[9];
      v54 = v0[12];
      v57 = v0[15];
      v22 = v0[7];
      v23 = v0[6];
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v24 = 136446466;
      (*(v22 + 56))(v23, v22);
      sub_24B2D12A4();

      v25 = sub_24B2D24B4();
      v27 = v26;
      (*(v20 + 8))(v21, v50);
      v28 = sub_24AFF321C(v25, v27, &v59);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AFF321C(0xD000000000000016, 0x800000024B2DC720, &v59);
      v29 = "Provider(%{public}s):%s - Skipping since it's not running";
LABEL_7:
      _os_log_impl(&dword_24AFD2000, v14, v15, v29, v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v24, -1, -1);

      (*(v19 + 8))(v57, v54);
LABEL_9:

      v43 = v0[1];

      return v43();
    }

    goto LABEL_8;
  }

  v45 = v0[22];
  v58 = v0[7];
  v4(v0[6]);
  v46 = *(v45 + *(v8 + 40));
  v0[26] = v46;

  v6(v45, v10);
  v56 = (*(v58 + 64) + **(v58 + 64));
  v47 = swift_task_alloc();
  v0[27] = v47;
  *v47 = v0;
  v47[1] = sub_24B19DA64;
  v48 = v0[7];
  v49 = v0[6];

  return v56(v46, 1, v49, v48);
}

uint64_t sub_24B19DA64()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B1A3644;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19DB80;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19DB80()
{
  v1 = v0[18];
  v2 = (*(v0[7] + 48))(v0 + 2, v0[6]);
  SubscriptionManagerStorage.isPaused.setter(0, v1);
  v2(v0 + 2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B19DC80(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24B2D2504();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_getAssociatedTypeWitness();
  v3[17] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SubscriptionManagerStorage();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = sub_24B2D5604();
  v3[24] = v8;
  v3[25] = v7;

  return MEMORY[0x2822009F8](sub_24B19DEAC, v8, v7);
}

uint64_t sub_24B19DEAC()
{
  v60 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0[7] + 32);
  v4(v0[6]);
  v5 = *(v1 + *(v2 + 44));
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5)
  {
    v7 = v0[20];
    v53 = v0[18];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v8 + 16))(v9, v7, v10);
    v6(v7, v53);
    swift_unknownObjectRetain();
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    if (v13)
    {
      v17 = v0[10];
      v18 = v0[11];
      v50 = v0[9];
      v54 = v0[12];
      v57 = v0[14];
      v19 = v0[7];
      v20 = v0[6];
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v21 = 136446466;
      (*(v19 + 56))(v20, v19);
      sub_24B2D12A4();

      v22 = sub_24B2D24B4();
      v24 = v23;
      (*(v17 + 8))(v18, v50);
      v25 = sub_24AFF321C(v22, v24, &v59);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DC700, &v59);
      v26 = "Provider(%{public}s):%s - Skipping since it's already paused";
LABEL_7:
      _os_log_impl(&dword_24AFD2000, v11, v12, v26, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);

      (*(v15 + 8))(v57, v54);
LABEL_9:

      v43 = v0[1];

      return v43();
    }

    goto LABEL_8;
  }

  v27 = v0[23];
  v28 = v0[18];
  (v4)(v0[6], v0[7]);

  v6(v27, v28);
  v29 = sub_24B2D5834();

  v30 = v0[18];
  if (v29)
  {
    v31 = v0[21];
    v32 = v0[15];
    v33 = v0[13];
    v55 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v33 + 16))(v32, v31, v55);
    v6(v31, v30);
    swift_unknownObjectRetain();
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v34 = os_log_type_enabled(v11, v12);
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    if (v34)
    {
      v35 = v0[10];
      v36 = v0[11];
      v51 = v0[9];
      v54 = v0[12];
      v57 = v0[15];
      v37 = v0[7];
      v38 = v0[6];
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v21 = 136446466;
      (*(v37 + 56))(v38, v37);
      sub_24B2D12A4();

      v39 = sub_24B2D24B4();
      v41 = v40;
      (*(v35 + 8))(v36, v51);
      v42 = sub_24AFF321C(v39, v41, &v59);

      *(v21 + 4) = v42;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DC700, &v59);
      v26 = "Provider(%{public}s):%s - Skipping since it's not running";
      goto LABEL_7;
    }

LABEL_8:

    (*(v15 + 8))(v14, v16);
    goto LABEL_9;
  }

  v45 = v0[22];
  v58 = v0[7];
  v4(v0[6]);
  v46 = *(v45 + *(v28 + 40));
  v0[26] = v46;

  v6(v45, v30);
  v56 = (*(v58 + 72) + **(v58 + 72));
  v47 = swift_task_alloc();
  v0[27] = v47;
  *v47 = v0;
  v47[1] = sub_24B19E514;
  v48 = v0[7];
  v49 = v0[6];

  return v56(v46, 1, v49, v48);
}

uint64_t sub_24B19E514()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19E730;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19E630;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19E630()
{
  v1 = v0[18];
  v2 = (*(v0[7] + 48))(v0 + 2, v0[6]);
  SubscriptionManagerStorage.isPaused.setter(1, v1);
  v2(v0 + 2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B19E730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_24B2D2504();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_24B2D3184();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_getAssociatedTypeWitness();
  v5[14] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for SubscriptionManagerStorage();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = sub_24B2D5604();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](sub_24B19EA18, v10, v9);
}

uint64_t sub_24B19EA18()
{
  v45 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v5 + 32);
  v0[23] = v6;
  v0[24] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0xBE12000000000000;
  v6(v4);
  v7 = *(v3 + 8);
  v0[25] = v7;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v7(v1, v2);
  v8 = sub_24B2D5834();

  v9 = v0[15];
  if (v8)
  {
    v10 = v0[17];
    v40 = v0[15];
    v11 = v0[11];
    v12 = v0[12];
    v37 = v0[10];
    (v6)(v0[4], v0[5]);
    (*(v11 + 16))(v12, v10, v37);
    v7(v10, v40);
    swift_unknownObjectRetain();
    v13 = sub_24B2D3164();
    v14 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    if (v15)
    {
      v19 = v0[8];
      v20 = v0[9];
      v35 = v0[7];
      v38 = v0[10];
      v41 = v0[12];
      v21 = v0[5];
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v23 = 136446466;
      (*(v21 + 56))(v22, v21);
      sub_24B2D12A4();

      v24 = sub_24B2D24B4();
      v26 = v25;
      (*(v19 + 8))(v20, v35);
      v27 = sub_24AFF321C(v24, v26, &v44);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_24AFF321C(0xD000000000000028, 0x800000024B2DC6D0, &v44);
      _os_log_impl(&dword_24AFD2000, v13, v14, "Provider(%{public}s):%s - Skipping since it's not running", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v36, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);

      (*(v17 + 8))(v41, v38);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v43 = (v0[2] + *v0[2]);
    v34 = swift_task_alloc();
    v0[34] = v34;
    *v34 = v0;
    v34[1] = sub_24B19F558;

    return v43();
  }

  else
  {
    v28 = v0[19];
    v42 = v0[5];
    v6(v0[4]);
    v29 = *(v28 + *(v2 + 40));
    v0[27] = v29;

    v7(v28, v9);
    v39 = (*(v42 + 72) + **(v42 + 72));
    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_24B19EF08;
    v31 = v0[5];
    v32 = v0[4];

    return v39(v29, 1, v32, v31);
  }
}

uint64_t sub_24B19EF08()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[22];

    return MEMORY[0x2822009F8](sub_24B19F70C, v3, v4);
  }

  else
  {
    v5 = v2[2];

    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[30] = v6;
    *v6 = v2;
    v6[1] = sub_24B19F0DC;

    return v8();
  }
}

uint64_t sub_24B19F0DC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);

    return MEMORY[0x2822009F8](sub_24B19F25C, v6, v7);
  }
}

uint64_t sub_24B19F25C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v10 = *(v0 + 40);
  (*(v0 + 184))(*(v0 + 32));
  v4 = *(v2 + *(v3 + 40));
  *(v0 + 248) = v4;

  v1(v2, v3);
  v9 = (*(v10 + 64) + **(v10 + 64));
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_24B19F3C8;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  return v9(v4, 1, v7, v6);
}

uint64_t sub_24B19F3C8()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[22];

    return MEMORY[0x2822009F8](sub_24B19F7BC, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B19F558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B19F70C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19F7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19F958;

  return sub_24B197158(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B19F958()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B19FA8C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B19FABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t, uint64_t))
{
  v8 = *a2;
  v9 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v11 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v12 = sub_24B2D5554();
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = sub_24B1A2638(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v18[0] = v8;
  v18[1] = v9;
  a5(v15, v18, a3, a4);
}

uint64_t sub_24B19FC78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  v8 = a2[1];
  (*(a4 + 56))(a3, a4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a1;
  v10[6] = v9;
  v10[7] = v8;
  swift_unknownObjectRetain();

  sub_24B2D12C4();
}

uint64_t sub_24B19FD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B1986B0(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B19FE20()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1A3648, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B19FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a2;
  v5[3] = a3;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_24B19FE20;

  return sub_24B199F70(v5 + 2, a4, a5);
}

uint64_t sub_24B1A0010()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B19FF54(v4, v5, v6, v2, v3);
}

uint64_t sub_24B1A00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B19A6FC(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B1A01B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A00E4(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A0290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B19D1CC(a2, a3);
}

uint64_t sub_24B1A035C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  swift_unknownObjectRetain();
  sub_24B2D12C4();
}

uint64_t sub_24B1A0404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return sub_24B19DC80(a2, a3);
}

uint64_t sub_24B1A04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AFFDE44;

  return sub_24B19E7F4(a2, a3, a4, a5);
}

uint64_t SubscriptionsManager.addSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A05F8, v8, v7);
}

uint64_t sub_24B1A05F8()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A07C8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.addSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t sub_24B1A07C8()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_24B1A0920, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.addSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A09BC, v8, v7);
}

uint64_t sub_24B1A09BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A0B08;

  return v10(&unk_24B2EFA58, v7);
}

uint64_t sub_24B1A0B08()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_24B1A0C4C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A0C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A0CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B197158(a2, v6 + 2, a5, a6);
}

uint64_t SubscriptionsManager.removeSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A0E08, v8, v7);
}

uint64_t sub_24B1A0E08()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A0FD8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.removeSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t sub_24B1A0FD8()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_24B1A364C, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.removeSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A11B4, v8, v7);
}

uint64_t sub_24B1A11B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A1300;

  return v10(&unk_24B2EFA78, v7);
}

uint64_t sub_24B1A1300()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_24B1A3668, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.removeSubscriber(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = v3;
  v4[5] = v5;
  v4[6] = v6;
  v8 = sub_24B2D5604();
  v4[7] = v8;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_24B1A14CC, v8, v7);
}

uint64_t sub_24B1A14CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v0[9] = (*(v4 + 56))(v5, v4);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v1;
  v9 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_24B1A160C;

  return v9(&unk_24B2EFA90, v6);
}

uint64_t sub_24B1A160C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_24B1A3670, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.setSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A17D4, v8, v7);
}

uint64_t sub_24B1A17D4()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A0FD8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.setSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t SubscriptionsManager.setSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A1A28, v8, v7);
}

uint64_t sub_24B1A1A28()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A1300;

  return v10(&unk_24B2EFAB0, v7);
}

uint64_t SubscriptionsManager.resumeSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_24B2D5604();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B1A1BEC, v5, v4);
}

uint64_t sub_24B1A1BEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[7] = (*(v1 + 56))(v3, v1);
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v7 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24B1A1D14;

  return v7(&unk_24B2EFAC8, v4);
}

uint64_t sub_24B1A1D14()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](sub_24B1A366C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.pauseSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_24B2D5604();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B1A1ED0, v5, v4);
}

uint64_t sub_24B1A1ED0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[7] = (*(v1 + 56))(v3, v1);
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v7 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24B1A1FF8;

  return v7(&unk_24B2EFAE0, v4);
}

uint64_t sub_24B1A1FF8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](sub_24B1A213C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A213C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A21A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B19DC80(a2, a3);
}

uint64_t sub_24B1A22D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v0[9] = (*(v2 + 56))(v3, v2);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v4;
  v9 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_24B1A2414;

  return v9(&unk_24B2EFAF8, v6);
}

uint64_t sub_24B1A2414()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_24B1A2558, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A2558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A25C4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_24B1A2638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (sub_24B2D55C4())
  {
    sub_24B2D5C14();
    v15 = sub_24B2D5C04();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_24B2D55C4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_24B2D55A4();
    sub_24B2D5564();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_24B2D5C64();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_24B2D5244();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_24B2D52A4();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24B1A29F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B1A04B0(v4, v5, v6, v2, v3);
}

uint64_t sub_24B1A2AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19F88C(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2B70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19FD54(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2C30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0290(v4, v2, v3);
}

uint64_t sub_24B1A2CD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0404(v4, v2, v3);
}

uint64_t sub_24B1A2D80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A0CB8(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2E40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19FD54(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2F00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B19FF54(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B1A3004()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A00E4(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A30C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0290(v4, v2, v3);
}

uint64_t sub_24B1A316C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A21A8(v4, v2, v3);
}

uint64_t objectdestroyTm_25(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_24B1A3264()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B1A04B0(v4, v5, v6, v2, v3);
}

uint64_t dispatch thunk of SubscriptionsManager.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AFFD370;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SubscriptionsManager.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AFFDE44;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_24B1A35D0()
{
  result = qword_27EFCDF98[0];
  if (!qword_27EFCDF98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFCDF98);
  }

  return result;
}

uint64_t SubscriptionManagerStorage.init(identifier:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionManagerStorage();
  v7 = v6[9];
  v8 = sub_24B2D5854();
  swift_getTupleTypeMetadata2();
  v9 = sub_24B2D5584();
  v10 = sub_24B1A35D0();
  v11 = sub_24B1A4278(v9, &type metadata for Subscriber, v8, v10);

  *(a3 + v7) = v11;
  v12 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v13 = sub_24B1A2638(v12, a1, a2);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *(a3 + v6[10]) = v13;
  *(a3 + v6[11]) = 0;

  return sub_24B2D3174();
}

uint64_t *(*SubscriptionManagerStorage.subscriptionsBySubscriber.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A380C;
}

uint64_t *sub_24B1A380C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A395C(*result);
  }

  return result;
}

uint64_t SubscriptionManagerStorage.uniqueSubscriptions.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);

  *(v2 + v5) = a1;

  return sub_24B1A3BEC(a2);
}

uint64_t SubscriptionManagerStorage.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D3184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SubscriptionManagerStorage.subscriptionsBySubscriber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 36);

  *(v2 + v5) = a1;

  return sub_24B1A395C(a2);
}

uint64_t sub_24B1A395C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 36));
  (*(v5 + 16))(v7, v2, v4);

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v8;
    v18 = v12;
    *v11 = 136315138;
    sub_24B2D5854();
    sub_24B1A35D0();
    sub_24B2D5214();
    swift_getWitnessTable();
    v13 = sub_24B232AB0();
    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SubscriptionManagerStorage: subscriptionsBySubscriber - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24B1A3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for SubscriptionManagerStorage();

  return a5(v7, v6);
}

uint64_t sub_24B1A3BEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 40));
  (*(v5 + 16))(v7, v2, v4);

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v8;
    v18 = v12;
    *v11 = 136315138;
    sub_24B2D5854();
    swift_getWitnessTable();
    v13 = sub_24B232AB0();
    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t *(*SubscriptionManagerStorage.uniqueSubscriptions.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A3E20;
}

uint64_t *sub_24B1A3E20(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A3BEC(*result);
  }

  return result;
}

uint64_t sub_24B1A3E58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 44));
  (*(v5 + 16))(v7, v2, v4);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v8)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v8)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SubscriptionManagerStorage: isPaused - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t *(*SubscriptionManagerStorage.isPaused.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A4068;
}

uint64_t *sub_24B1A4068(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A3E58(*result);
  }

  return result;
}

unint64_t sub_24B1A4094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D5244();

  return sub_24B1A40F0(a1, v6, a2, a3);
}

unint64_t sub_24B1A40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_24B2D52A4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_24B1A4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24B2D55C4())
  {
    sub_24B2D5DF4();
    v13 = sub_24B2D5DE4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24B2D55C4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24B2D55A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24B2D5C64();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24B1A4094(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_24B1A4564()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    v2 = sub_24B2D5854();
    v4 = v3;
    sub_24B1A35D0();
    result = sub_24B2D5214();
    if (v5 <= 0x3F)
    {
      if (v4 > 0x3F)
      {
        return v2;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

FindMyUICore::Subscriber __swiftcall Subscriber.init()()
{
  v1 = v0;
  v2 = sub_24B2D2504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v6 = sub_24B2D24B4();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  *v1 = v6;
  v1[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t Subscriber.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Subscriber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B2D6004();
  }
}

uint64_t Subscriber.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1A47FC()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1A4850()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

unint64_t sub_24B1A489C()
{
  result = qword_27EFCE020;
  if (!qword_27EFCE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE020);
  }

  return result;
}

uint64_t sub_24B1A48F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24B1A4920(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B2D6004();
  }
}

uint64_t sub_24B1A4950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B1A4998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B1A49EC(uint64_t a1)
{
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  result = MEMORY[0x24C23BFF0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_24B1AF20C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1A4C4C(uint64_t a1)
{
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  result = MEMORY[0x24C23BFF0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_24B1AF4EC(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1A4EAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCC850);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1A504C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B1A4F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCC850);
}

uint64_t sub_24B1A4FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1A504C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B1A504C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1A511C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B1A519C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B1A5254@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B1A52D0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t ItemsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ItemsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *ItemsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  swift_defaultActor_initialize();
  v8 = v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850);
  v10 = v9[9];
  v11 = MEMORY[0x277D84F90];
  *&v8[v10] = sub_24B19494C(MEMORY[0x277D84F90]);
  *&v8[v9[10]] = MEMORY[0x277D84FA0];
  v8[v9[11]] = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  *(v12 + 3) = sub_24B194548(v11);
  v12[16] = 0;
  *(v12 + 4) = sub_24B1933E8(v11);
  strcpy(v12, "ItemsProvider");
  *(v12 + 7) = -4864;
  v13 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_taskQueue;
  sub_24B2D12D4();
  v14 = sub_24B2D1294();
  v15 = *(*(v14 - 8) + 56);
  v16 = *a1;
  v21 = a1[1];
  v22 = v16;
  v20 = a1[2];
  v15(v7, 1, 1, v14);
  sub_24B2D24F4();
  *(v2 + v13) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher) = 0;
  v17 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  *(v2 + v17) = sub_24B194764(v11);
  v18 = v21;
  v2[7] = v22;
  v2[8] = v18;
  v2[9] = v20;
  return v2;
}

uint64_t sub_24B1A569C()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A5794, v0, 0);
}

uint64_t sub_24B1A5794()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F4268(v24);
  swift_endAccess();
  v27 = (*(v22 + 128) + **(v22 + 128));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B1A5AE8;

  return v27(v0 + 2);
}

uint64_t sub_24B1A5AE8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B1A5C14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1A5C14()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2EFE58, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1A5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[13] = swift_task_alloc();
  v7 = sub_24B2D1F24();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE120);
  v5[20] = swift_task_alloc();
  v8 = sub_24B2D1DA4();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D24A4();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A5FF4, a5, 0);
}

uint64_t sub_24B1A5FF4()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
  v0[30] = v6;
  v7 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A61F0;

  return MEMORY[0x282200310](v0 + 7, v7, v6);
}

uint64_t sub_24B1A61F0()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_24B1A6300, v4, 0);
  }

  return result;
}

uint64_t sub_24B1A6300()
{
  v117 = v0;
  if (v0[7])
  {
    v101 = v0[7];
    sub_24B2D2494();
    v1 = MEMORY[0x277D84FA0];
    v0[8] = MEMORY[0x277D84FA0];
    v0[9] = v1;
    v2 = sub_24B194974(MEMORY[0x277D84F90]);
    v5 = v101;
    v6 = v2;
    v102 = *(v101 + 16);
    if (!v102)
    {

      v86 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
LABEL_64:
        __break(1u);
        return MEMORY[0x282200310](v2, v3, v4);
      }

      v8 = v101 + 32 + 16 * v7;
      v2 = *v8;
      v9 = *(v8 + 8);
      v106 = v2;
      if (v9)
      {
        break;
      }

      v68 = *(v2 + 16);
      if (v68)
      {
        v103 = v7;
        v115 = v6;
        v69 = v0[22];
        v70 = v2 + ((*(v69 + 80) + 32) & ~*(v69 + 80));

        v113 = *(v69 + 72);
        v71 = *(v69 + 16);
        do
        {
          v73 = v0[25];
          v72 = v0[26];
          v74 = v0[21];
          v75 = v0[22];
          v71(v72, v70, v74);
          sub_24B1AF20C(v73, v72);
          (*(v75 + 8))(v73, v74);
          v70 += v113;
          --v68;
        }

        while (v68);
LABEL_4:

LABEL_5:
        v6 = v115;
        v5 = v101;
        v7 = v103;
      }

LABEL_6:
      if (++v7 == v102)
      {

        v86 = v0[8];
        if (!*(v86 + 16))
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_55:
        v87 = v0[30];
        v89 = v0[12];
        v88 = v0[13];
        v90 = sub_24B2D56D4();
        (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
        v91 = swift_allocObject();
        v91[2] = v89;
        v91[3] = v87;
        v91[4] = v89;
        v91[5] = v86;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v88, &unk_24B2EFE68, v91);

LABEL_58:
        v92 = v0[28];
        v93 = v0[29];
        v94 = v0[27];

        v96 = sub_24B1A49EC(v95);
        sub_24B25A7F8(v0[9], v96);
        v116 = v97;
        sub_24B1A87BC(&v116, v6, v93);

        (*(v92 + 8))(v93, v94);
        v98 = v0[30];
        v99 = v0[12];
        __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
        v100 = swift_task_alloc();
        v0[31] = v100;
        *v100 = v0;
        v100[1] = sub_24B1A61F0;
        v2 = (v0 + 7);
        v3 = v99;
        v4 = v98;

        return MEMORY[0x282200310](v2, v3, v4);
      }
    }

    if (v9 == 1)
    {
      v103 = v7;
      v10 = v2;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v6;
      v105 = v10 + 64;
      v12 = -1 << *(v10 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 64);
      v104 = (63 - v12) >> 6;

      for (i = 0; ; i = v111)
      {
        v115 = v6;
        v112 = isUniquelyReferenced_nonNull_native;
        if (!v14)
        {
          if (v104 <= i + 1)
          {
            v18 = i + 1;
          }

          else
          {
            v18 = v104;
          }

          while (1)
          {
            v17 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v17 >= v104)
            {
              v111 = v18 - 1;
              v66 = v0[19];
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
              (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
              v14 = 0;
              goto LABEL_25;
            }

            v14 = *(v105 + 8 * v17);
            ++i;
            if (v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v17 = i;
LABEL_24:
        v19 = v0[21];
        v20 = v0[22];
        v21 = v0[19];
        v22 = v0[17];
        v23 = v0[15];
        v107 = v0[14];
        v110 = v0[25];
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v25 = v24 | (v17 << 6);
        (*(v20 + 16))(v110);
        (*(v23 + 16))(v22, *(v106 + 56) + *(v23 + 72) * v25, v107);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
        v27 = *(v26 + 48);
        (*(v20 + 32))(v21, v110, v19);
        (*(v23 + 32))(v21 + v27, v22, v107);
        (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
        v111 = v17;
LABEL_25:
        v28 = v0[18];
        sub_24B0391CC(v0[19], v28, &qword_27EFCE0A0);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          v30 = v0[20];
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20);
          (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        }

        else
        {
          v32 = v0[21];
          v33 = v0[22];
          v34 = v0[20];
          v35 = v0[18];
          v36 = v0[15];
          v108 = v0[14];
          v37 = *(v29 + 48);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20);
          v39 = *(v38 + 48);
          (*(v33 + 16))(v34, v35, v32);
          (*(v36 + 16))(v34 + v39, v35 + v37, v108);
          sub_24AFF8258(v35, &qword_27EFCE0A8);
          (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
        }

        v40 = v0[20];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20);
        if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v42 = v0[24];
        v44 = v0[15];
        v43 = v0[16];
        v45 = v0[14];
        v46 = *(v41 + 48);
        v47 = *(v0[22] + 32);
        v47(v42, v40, v0[21]);
        v109 = *(v44 + 32);
        v109(v43, v40 + v46, v45);
        v48 = sub_24B181698(v42);
        v49 = *(v115 + 16);
        v50 = (v3 & 1) == 0;
        v2 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_62;
        }

        v51 = v3;
        if (*(v115 + 24) >= v2)
        {
          if ((v112 & 1) == 0)
          {
            sub_24B1CF05C(MEMORY[0x277D08EA8], MEMORY[0x277D08E20], &qword_27EFCDF28);
          }
        }

        else
        {
          v52 = v0[24];
          sub_24B1C7128(v2, v112 & 1, MEMORY[0x277D08EA8], &qword_27EFCDF28);
          v53 = sub_24B181698(v52);
          if ((v51 & 1) != (v54 & 1))
          {

            return sub_24B2D6054();
          }

          v48 = v53;
        }

        v55 = v0[24];
        v56 = v0[21];
        v57 = v0[22];
        v59 = v0[15];
        v58 = v0[16];
        v60 = v0[14];
        if (v51)
        {
          (*(v57 + 8))(v0[24], v0[21]);
          v16 = v0[10];
          v2 = (*(v59 + 40))(*(v16 + 56) + *(v59 + 72) * v48, v58, v60);
          v6 = v16;
        }

        else
        {
          v61 = v0[10];
          v61[(v48 >> 6) + 8] |= 1 << v48;
          v47(v61[6] + *(v57 + 72) * v48, v55, v56);
          v62 = *(v59 + 72);
          v6 = v61;
          v2 = (v109)(v61[7] + v62 * v48, v58, v60);
          v63 = v61[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_63;
          }

          v61[2] = v65;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v76 = *(v2 + 16);
    if (!v76)
    {
      goto LABEL_6;
    }

    v103 = v7;
    v115 = v6;
    v77 = v0[22];
    v78 = v2 + ((*(v77 + 80) + 32) & ~*(v77 + 80));

    v114 = *(v77 + 72);
    v79 = *(v77 + 16);
    do
    {
      v80 = v0[25];
      v82 = v0[22];
      v81 = v0[23];
      v83 = v0[21];
      v79(v81, v78, v83);
      sub_24B1AF20C(v80, v81);
      (*(v82 + 8))(v80, v83);
      v78 += v114;
      --v76;
    }

    while (v76);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v84 = v0[1];

  return v84();
}

uint64_t sub_24B1A6E48()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F4268(v3);
  return swift_endAccess();
}

uint64_t sub_24B1A6EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_24B2D3184();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_24B2D24A4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A701C, a4, 0);
}

uint64_t sub_24B1A701C()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_24B2D2494();
  v3 = *(v1 + 112);
  v0[8] = v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_24B1A7124;

  return v6(v0 + 8);
}

uint64_t sub_24B1A7124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  v5 = *(v4 + 80);
  if (v1)
  {
    v6 = sub_24B1A7310;
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = sub_24B1A7250;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1A7250()
{
  v8 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v7 = v0[11];
  sub_24B1A87BC(&v7, v1, v2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B1A7310()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 104);
    v25 = *(v0 + 112);
    v23 = *(v0 + 152);
    v24 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2DC570, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "ItemsProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1A7600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v77 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0B0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v71 - v8;
  v9 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ItemsProvider.InfoState(0);
  v11 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v71 - v14;
  v15 = sub_24B2D1DA4();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B2D3184();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemsProvider.InfoState.Request(0);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_24B2D24A4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v75 = &v71 - v31;
  v88 = v3;
  v32 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v33 = *(v32 + 24);
  if (*(v33 + 16))
  {

    v34 = a2;
    v35 = sub_24B181698(a2);
    if (v36)
    {
      sub_24B1D2670(*(v33 + 56) + *(v11 + 72) * v35, v25, type metadata accessor for ItemsProvider.InfoState);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v34 = a2;
    v37 = 1;
  }

  v38 = v90;
  (*(v11 + 56))(v25, v37, 1, v90);
  if ((*(v11 + 48))(v25, 1, v38))
  {
    sub_24AFF8258(v25, &qword_27EFCC878);
    v39 = v87;
    v40 = v26;
LABEL_14:
    sub_24B1A92BC(v34);
    v55 = v84;
    v54 = v85;
    v56 = v82;
    (*(v84 + 16))(v82, v34, v85);
    (*(v27 + 16))(v89, v39, v40);
    v57 = v78;
    sub_24B008890(v77, v78, &qword_27EFCC870);
    v58 = sub_24B2D1F24();
    v59 = *(v58 - 8);
    v60 = 1;
    v61 = (*(v59 + 48))(v57, 1, v58);
    v62 = v80;
    v63 = v76;
    if (v61 != 1)
    {
      (*(v59 + 32))(v76, v57, v58);
      swift_storeEnumTagMultiPayload();
      v60 = 0;
    }

    v64 = v79;
    (*(v79 + 56))(v63, v60, 1, v62);
    v65 = *(v64 + 48);
    if (v65(v63, 1, v62) == 1)
    {
      v66 = v83;
      *v83 = 0;
      swift_storeEnumTagMultiPayload();
      if (v65(v63, 1, v62) != 1)
      {
        sub_24AFF8258(v63, &qword_27EFCE0B0);
      }
    }

    else
    {
      v66 = v83;
      sub_24B1D26D8(v63, v83, type metadata accessor for ItemsProvider.InfoState.Result);
    }

    v67 = v81;
    sub_24B1D26D8(v89, v81, type metadata accessor for ItemsProvider.InfoState.Request);
    sub_24B1D26D8(v66, v67 + *(v90 + 20), type metadata accessor for ItemsProvider.InfoState.Result);
    swift_beginAccess();
    v68 = *(v32 + 24);
    v69 = v86;
    sub_24B1D26D8(v67, v86, type metadata accessor for ItemsProvider.InfoState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v68;
    sub_24B1CA604(v69, v56, isUniquelyReferenced_nonNull_native);
    (*(v55 + 8))(v56, v54);
    *(v32 + 24) = v91;
    sub_24B1D5010(v68);
    swift_endAccess();
  }

  sub_24B1D2670(v25, v22, type metadata accessor for ItemsProvider.InfoState.Request);
  sub_24AFF8258(v25, &qword_27EFCC878);
  v41 = *(v27 + 32);
  v42 = v22;
  v40 = v26;
  v41(v29, v42, v26);
  v43 = v75;
  v41(v75, v29, v26);
  v39 = v87;
  if ((sub_24B2D23C4() & 1) == 0)
  {
    (*(v27 + 8))(v43, v26);
    goto LABEL_14;
  }

  v44 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v45 = v88;
  swift_beginAccess();
  v46 = v73;
  v47 = v72;
  v48 = v74;
  (*(v73 + 16))(v72, v45 + v44, v74);
  v49 = sub_24B2D3164();
  v50 = sub_24B2D5934();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v91 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DC830, &v91);
    _os_log_impl(&dword_24AFD2000, v49, v50, "ItemsProvider: %s - Skipping due to older timestamp", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v51, -1, -1);
  }

  (*(v46 + 8))(v47, v48);
  return (*(v27 + 8))(v43, v40);
}

uint64_t sub_24B1A8010(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24B2D1DA4();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v61);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v12;
  v13 = type metadata accessor for ItemsProvider.InfoState(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v64 = a2;
  sub_24B1A92BC(a2);
  v57 = a1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v56 = v6;
  v26 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v27 = *(v26 + 24);
  if (!*(v27 + 16))
  {
LABEL_16:
    (*(v14 + 56))(v25, 1, 1, v13);
    sub_24AFF8258(v25, &qword_27EFCC878);
    sub_24B2D2324();
    v19[*(v13 + 20)] = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v44 = *(v26 + 24);
    sub_24B1D26D8(v19, v16, type metadata accessor for ItemsProvider.InfoState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v44;
    sub_24B1CA604(v16, v64, isUniquelyReferenced_nonNull_native);
    *(v26 + 24) = v65[0];
    sub_24B1D5010(v44);
    swift_endAccess();
  }

  v28 = sub_24B181698(v64);
  if ((v29 & 1) == 0)
  {

    goto LABEL_16;
  }

  sub_24B1D2670(*(v27 + 56) + *(v14 + 72) * v28, v25, type metadata accessor for ItemsProvider.InfoState);

  (*(v14 + 56))(v25, 0, 1, v13);
  sub_24AFF8258(v25, &qword_27EFCC878);
  v6 = v56;
LABEL_5:
  v30 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v31 = *(v30 + 24);
  if (*(v31 + 16))
  {

    v32 = sub_24B181698(v64);
    v33 = v62;
    if (v34)
    {
      sub_24B1D2670(*(v31 + 56) + *(v14 + 72) * v32, v22, type metadata accessor for ItemsProvider.InfoState);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = v63;
    v36 = v6;
  }

  else
  {
    v36 = v6;
    v35 = 1;
    v33 = v62;
    v37 = v63;
  }

  (*(v14 + 56))(v22, v35, 1, v13);
  v38 = *(v14 + 48);
  if (v38(v22, 1, v13))
  {
    return sub_24AFF8258(v22, &qword_27EFCC878);
  }

  v40 = v58;
  sub_24B1D2670(&v22[*(v13 + 20)], v58, type metadata accessor for ItemsProvider.InfoState.Result);
  sub_24AFF8258(v22, &qword_27EFCC878);
  v41 = v40;
  v42 = v60;
  sub_24B1D26D8(v41, v60, type metadata accessor for ItemsProvider.InfoState.Result);
  v43 = v59;
  sub_24B1D2670(v42, v59, type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B1D2740(v43, type metadata accessor for ItemsProvider.InfoState.Result);
    return sub_24B1D2740(v42, type metadata accessor for ItemsProvider.InfoState.Result);
  }

  else
  {
    (*(v37 + 16))(v33, v64, v36);
    v46 = sub_24B1A5364();
    v47 = v37;
    v49 = v48;
    v66 = *(v48 + 24);

    v50 = sub_24B1D6B3C(v65);
    v52 = v51;
    if (!v38(v51, 1, v13))
    {
      v54 = *(v13 + 20);
      sub_24B1D2740(&v52[v54], type metadata accessor for ItemsProvider.InfoState.Result);
      v52[v54] = v57 & 1;
      swift_storeEnumTagMultiPayload();
    }

    (v50)(v65, 0);
    (*(v47 + 8))(v33, v36);
    v53 = *(v49 + 24);
    *(v49 + 24) = v66;
    sub_24B1D5010(v53);

    (v46)(v67, 0);
    return sub_24B1D2740(v60, type metadata accessor for ItemsProvider.InfoState.Result);
  }
}

uint64_t sub_24B1A87BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v6 = sub_24B2D1F24();
  v109 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A0);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v98 - v16;
  v17 = sub_24B2D1DA4();
  v112 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v117 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = (&v98 - v20);
  MEMORY[0x28223BE20](v21);
  v107 = (&v98 - v22);
  v23 = sub_24B2D3184();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  v29 = *(v24 + 16);
  v114 = v3;
  v104 = v23;
  v29(v26, v3 + v28, v23);

  v115 = v26;
  v30 = sub_24B2D3164();
  v31 = sub_24B2D5934();

  v32 = os_log_type_enabled(v30, v31);
  v111 = a2;
  v118 = v6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v103 = v27;
    v34 = v33;
    v35 = swift_slowAlloc();
    v119[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_24AFF321C(0xD000000000000028, 0x800000024B2DC800, v119);
    *(v34 + 12) = 2080;
    sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
    v36 = sub_24B2D51F4();
    v38 = v30;
    v39 = sub_24AFF321C(v36, v37, v119);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_24AFD2000, v38, v31, "ItemsProvider: %s - updated: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v35, -1, -1);
    v40 = v34;
    v27 = v103;
    MEMORY[0x24C23D530](v40, -1, -1);
  }

  else
  {
  }

  result = (*(v24 + 8))(v115, v104);
  v115 = v17;
  v42 = v106;
  if (v27)
  {
    if (*(v27 + 16))
    {
      v43 = v27 + 56;
      v44 = 1 << *(v27 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v27 + 56);
      v47 = (v44 + 63) >> 6;
      v117 = (v112 + 16);
      v110 = (v112 + 32);
      v105 = (v109 + 16);
      v106 = (v109 + 56);
      v48 = (v112 + 8);

      v49 = 0;
      v50 = v118;
      while (v46)
      {
LABEL_16:
        v55 = v27;
        v56 = *(v27 + 48);
        v57 = v112;
        v58 = v107;
        v59 = v115;
        (*(v112 + 16))(v107, v56 + *(v112 + 72) * (__clz(__rbit64(v46)) | (v49 << 6)), v115);
        v60 = *(v57 + 32);
        v61 = v116;
        v60(v116, v58, v59);
        v62 = v111;
        if (*(v111 + 16))
        {
          v63 = sub_24B181698(v61);
          if (v64)
          {
            v50 = v118;
            (*(v109 + 16))(v108, *(v62 + 56) + *(v109 + 72) * v63, v118);
            v51 = 0;
          }

          else
          {
            v51 = 1;
            v50 = v118;
          }
        }

        else
        {
          v51 = 1;
        }

        v46 &= v46 - 1;
        v52 = v108;
        (*v106)(v108, v51, 1, v50);
        v53 = v116;
        sub_24B1A7600(v52, v116, v113);
        sub_24AFF8258(v52, &qword_27EFCC870);
        result = (*v48)(v53, v115);
        v27 = v55;
      }

      while (1)
      {
        v54 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v54 >= v47)
        {

          v65 = v114 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
          goto LABEL_38;
        }

        v46 = *(v43 + 8 * v54);
        ++v49;
        if (v46)
        {
          v49 = v54;
          goto LABEL_16;
        }
      }

LABEL_41:
      __break(1u);
    }
  }

  else
  {
    v66 = v114 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
    swift_beginAccess();
    v67 = *(v66 + 24);
    *(v66 + 24) = MEMORY[0x277D84F98];
    v98 = v66;
    sub_24B1D5010(v67);
    swift_endAccess();

    v68 = *(v111 + 64);
    v100 = v111 + 64;
    v69 = 1 << *(v111 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & v68;
    v99 = (v69 + 63) >> 6;
    v103 = v112 + 16;
    v102 = v109 + 16;
    v116 = (v112 + 32);
    v72 = (v109 + 32);
    v107 = (v112 + 8);
    v108 = (v109 + 56);

    v73 = 0;
    v104 = v12;
    v101 = v72;
    if (!v71)
    {
LABEL_25:
      if (v99 <= v73 + 1)
      {
        v75 = v73 + 1;
      }

      else
      {
        v75 = v99;
      }

      v76 = v75 - 1;
      while (1)
      {
        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v74 >= v99)
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
          (*(*(v96 - 8) + 56))(v42, 1, 1, v96);
          v71 = 0;
          goto LABEL_33;
        }

        v71 = *(v100 + 8 * v74);
        ++v73;
        if (v71)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    while (1)
    {
      v74 = v73;
LABEL_32:
      v77 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v78 = v77 | (v74 << 6);
      v80 = v111;
      v79 = v112;
      v81 = v117;
      (*(v112 + 16))(v117, *(v111 + 48) + *(v112 + 72) * v78, v17);
      v82 = v17;
      v83 = v109;
      v84 = v105;
      v85 = v118;
      (*(v109 + 16))(v105, *(v80 + 56) + *(v109 + 72) * v78, v118);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
      v87 = *(v86 + 48);
      v88 = *(v79 + 32);
      v42 = v106;
      v88(v106, v81, v82);
      v89 = v84;
      v72 = v101;
      (*(v83 + 32))(v42 + v87, v89, v85);
      (*(*(v86 - 8) + 56))(v42, 0, 1, v86);
      v76 = v74;
      v12 = v104;
LABEL_33:
      sub_24B0391CC(v42, v12, &qword_27EFCE0A0);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8);
      if ((*(*(v90 - 8) + 48))(v12, 1, v90) == 1)
      {
        break;
      }

      v91 = *(v90 + 48);
      v92 = v117;
      v17 = v115;
      (*v116)(v117, v12, v115);
      v93 = &v12[v91];
      v94 = v110;
      v95 = v118;
      (*v72)(v110, v93, v118);
      (*v108)(v94, 0, 1, v95);
      sub_24B1A7600(v94, v92, v113);
      sub_24AFF8258(v94, &qword_27EFCC870);
      result = (*v107)(v92, v17);
      v73 = v76;
      if (!v71)
      {
        goto LABEL_25;
      }
    }

    v65 = v98;
LABEL_38:
    swift_beginAccess();
    v97 = *(v65 + 16);
    *(v65 + 16) = 1;
    sub_24B1F4268(v97);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24B1A92BC(uint64_t a1)
{
  v3 = sub_24B2D1DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B181698(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_24B18C820(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1A944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A9570, a6, 0);
}

uint64_t sub_24B1A9570()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1A9630;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1A9630()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1A9830;
  }

  else
  {
    v7 = sub_24B1A97B8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1A97B8()
{
  sub_24B1A8010(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A9830()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1A9AD0(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v4 = sub_24B2D1DA4();
  *(v3 + 136) = v4;
  v5 = *(v4 - 8);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 + 64);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *(type metadata accessor for ItemsProvider.Subscription(0) - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A9D00, v2, 0);
}

unint64_t sub_24B1A9D00()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);
  v112 = *(v0 + 80);
  v94 = v2 + 56;
  v3 = *(v0 + 144);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  v93 = (63 - v5) >> 6;
  v8 = (v3 + 48);
  v101 = *(v0 + 144);
  v95 = (v3 + 8);

  v10 = 0;
  v97 = v2;
  v98 = v1;
  v99 = v7;
  v96 = v8;
  while (v6)
  {
LABEL_11:
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 136);
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_24B1D2670(*(v2 + 48) + *(v1 + 72) * (v18 | (v10 << 6)), v16, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v16, v15, type metadata accessor for ItemsProvider.Subscription);
    result = (*v8)(v15, 1, v17);
    if (result != 1)
    {
      v20 = *(v0 + 176);
      v19 = *(v0 + 184);
      v103 = *(v0 + 168);
      v21 = *(v0 + 128);
      v22 = *(v0 + 136);
      v109 = *(v0 + 120);
      v104 = *(v0 + 80);
      v107 = *(v101 + 32);
      v23 = v107(v19, *(v0 + 240), v22);
      v24 = (*(v112 + 144))(v23);
      v105 = v25;
      v106 = v24;
      sub_24B1A8010(1, v19);
      v26 = *(v101 + 16);
      v26(v20, v19, v22);
      v27 = sub_24B2D56D4();
      v102 = *(v27 - 8);
      (*(v102 + 56))(v21, 1, 1, v27);
      v100 = v26;
      v26(v103, v19, v22);
      v28 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
      v29 = (*(v101 + 80) + 56) & ~*(v101 + 80);
      v30 = swift_allocObject();
      v30[2] = v104;
      v30[3] = v28;
      v30[4] = v106;
      v30[5] = v105;
      v30[6] = v104;
      v107(v30 + v29, v103, v22);
      sub_24B008890(v21, v109, &qword_27EFC8580);
      LODWORD(v29) = (*(v102 + 48))(v109, 1, v27);
      swift_retain_n();

      v31 = *(v0 + 120);
      if (v29 == 1)
      {
        sub_24AFF8258(*(v0 + 120), &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v102 + 8))(v31, v27);
      }

      v32 = v30[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = sub_24B2D5604();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_24AFF8258(*(v0 + 128), &qword_27EFC8580);
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_24B2EFC88;
      *(v36 + 24) = v30;
      if (v35 | v33)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v33;
        *(v0 + 40) = v35;
      }

      v37 = *(v0 + 176);
      v38 = swift_task_create();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v112 + v99);
      *(v112 + v99) = 0x8000000000000000;
      result = sub_24B181698(v37);
      v42 = v40[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return result;
      }

      v46 = v41;
      if (v40[3] < v45)
      {
        v47 = *(v0 + 176);
        sub_24B1C56C8(v45, isUniquelyReferenced_nonNull_native);
        result = sub_24B181698(v47);
        if ((v46 & 1) != (v48 & 1))
        {

          return sub_24B2D6054();
        }

LABEL_25:
        if (v46)
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v54 = result;
      sub_24B1CE3A8(MEMORY[0x277D08E20], &qword_27EFCDF38);
      result = v54;
      if (v46)
      {
LABEL_4:
        *(v40[7] + 8 * result) = v38;

        goto LABEL_5;
      }

LABEL_26:
      v49 = *(v0 + 176);
      v50 = *(v0 + 136);
      v40[(result >> 6) + 8] |= 1 << result;
      v51 = result;
      result = v100(v40[6] + *(v101 + 72) * result, v49, v50);
      *(v40[7] + 8 * v51) = v38;
      v52 = v40[2];
      v44 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v44)
      {
        goto LABEL_65;
      }

      v40[2] = v53;
LABEL_5:
      v11 = *(v0 + 184);
      v12 = *(v0 + 136);
      v13 = *v95;
      (*v95)(*(v0 + 176), v12);
      *(v112 + v99) = v40;
      swift_endAccess();
      result = v13(v11, v12);
      v2 = v97;
      v1 = v98;
      v8 = v96;
    }
  }

  while (2)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v14 < v93)
    {
      v6 = *(v94 + 8 * v14);
      ++v10;
      if (v6)
      {
        v10 = v14;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v55 = *(v0 + 272);

  if ((v55 & 1) == 0)
  {
    v57 = *(v0 + 72);
    v58 = -1;
    v59 = -1 << *(v57 + 32);
    if (-v59 < 64)
    {
      v58 = ~(-1 << -v59);
    }

    v60 = v58 & *(v57 + 56);
    v61 = (63 - v59) >> 6;
    v111 = (*(v0 + 144) + 56);

    v62 = 0;
    v108 = MEMORY[0x277D84F90];
    v110 = v61;
    while (v60)
    {
      v63 = *(v0 + 72);
LABEL_43:
      v65 = *(v0 + 232);
      v66 = *(v0 + 216);
      v68 = *(v0 + 136);
      v67 = *(v0 + 144);
      sub_24B1D2670(*(v63 + 48) + *(*(v0 + 192) + 72) * (__clz(__rbit64(v60)) | (v62 << 6)), v65, type metadata accessor for ItemsProvider.Subscription);
      sub_24B1D2670(v65, v66, type metadata accessor for ItemsProvider.Subscription);
      v113 = *(v67 + 48);
      v69 = v113(v66, 1, v68);
      v70 = *(v0 + 216);
      if (v69 == 1)
      {
        (*v111)(*(v0 + 88), 1, 1, *(v0 + 136));
        sub_24B1D2740(v70, type metadata accessor for ItemsProvider.Subscription);
      }

      else
      {
        v71 = *(v0 + 136);
        v72 = *(v0 + 88);
        (*(*(v0 + 144) + 32))(v72, *(v0 + 216), v71);
        (*v111)(v72, 0, 1, v71);
      }

      v60 &= v60 - 1;
      v73 = *(v0 + 232);
      v74 = *(v0 + 136);
      v76 = *(v0 + 96);
      v75 = *(v0 + 104);
      sub_24B0391CC(*(v0 + 88), v76, &qword_27EFC85D8);
      sub_24B0391CC(v76, v75, &qword_27EFC85D8);
      sub_24B1D2740(v73, type metadata accessor for ItemsProvider.Subscription);
      if (v113(v75, 1, v74) == 1)
      {
        result = sub_24AFF8258(*(v0 + 104), &qword_27EFC85D8);
        v61 = v110;
      }

      else
      {
        v77 = *(*(v0 + 144) + 32);
        v77(*(v0 + 160), *(v0 + 104), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24B006C7C(0, *(v108 + 2) + 1, 1, v108);
        }

        v79 = *(v108 + 2);
        v78 = *(v108 + 3);
        if (v79 >= v78 >> 1)
        {
          v108 = sub_24B006C7C(v78 > 1, v79 + 1, 1, v108);
        }

        v80 = *(v0 + 160);
        v81 = *(v0 + 136);
        v82 = *(v0 + 144);
        *(v108 + 2) = v79 + 1;
        result = v77(&v108[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v79], v80, v81);
        v61 = v110;
      }
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_63;
      }

      if (v64 >= v61)
      {
        v83 = *(v0 + 224);
        v84 = *(v0 + 136);
        v85 = *(v0 + 72);

        (*v111)(v83, 1, 1, v84);
        LOBYTE(v84) = sub_24B12625C(v83, v85);
        sub_24B1D2740(v83, type metadata accessor for ItemsProvider.Subscription);
        if (v84)
        {

          v86 = 0;
        }

        else
        {
          v86 = sub_24B1D0E28(v108);
        }

        v87 = *(v0 + 112);
        v88 = *(v0 + 80);
        v89 = sub_24B2D56D4();
        (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
        v90 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
        v91 = swift_allocObject();
        v91[2] = v88;
        v91[3] = v90;
        v91[4] = v88;
        v91[5] = v86;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v87, &unk_24B2EFCA0, v91);

        v92 = *(v0 + 8);

        return v92();
      }

      v63 = *(v0 + 72);
      v60 = *(v63 + 8 * v64 + 56);
      ++v62;
      if (v60)
      {
        v62 = v64;
        goto LABEL_43;
      }
    }
  }

  v56 = swift_task_alloc();
  *(v0 + 256) = v56;
  *v56 = v0;
  v56[1] = sub_24B1AA980;

  return sub_24B1A569C();
}

uint64_t sub_24B1AA980()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24B1AB04C;
  }

  else
  {
    v4 = sub_24B1AAAAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1AAAAC()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v41 = (v0[18] + 56);

  v7 = 0;
  v39 = MEMORY[0x277D84F90];
  v40 = v5;
  while (v4)
  {
    v8 = v0[9];
LABEL_10:
    v10 = v0[29];
    v11 = v0[27];
    v13 = v0[17];
    v12 = v0[18];
    sub_24B1D2670(*(v8 + 48) + *(v0[24] + 72) * (__clz(__rbit64(v4)) | (v7 << 6)), v10, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D2670(v10, v11, type metadata accessor for ItemsProvider.Subscription);
    v14 = *(v12 + 48);
    v15 = v14(v11, 1, v13);
    v16 = v0[27];
    v42 = v14;
    if (v15 == 1)
    {
      (*v41)(v0[11], 1, 1, v0[17]);
      sub_24B1D2740(v16, type metadata accessor for ItemsProvider.Subscription);
    }

    else
    {
      v17 = v0[17];
      v18 = v0[11];
      (*(v0[18] + 32))(v18, v16, v17);
      (*v41)(v18, 0, 1, v17);
    }

    v4 &= v4 - 1;
    v19 = v0[29];
    v20 = v0[17];
    v22 = v0[12];
    v21 = v0[13];
    sub_24B0391CC(v0[11], v22, &qword_27EFC85D8);
    sub_24B0391CC(v22, v21, &qword_27EFC85D8);
    sub_24B1D2740(v19, type metadata accessor for ItemsProvider.Subscription);
    if (v42(v21, 1, v20) == 1)
    {
      result = sub_24AFF8258(v0[13], &qword_27EFC85D8);
      v5 = v40;
    }

    else
    {
      v23 = *(v0[18] + 32);
      v23(v0[20], v0[13], v0[17]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_24B006C7C(0, *(v39 + 2) + 1, 1, v39);
      }

      v25 = *(v39 + 2);
      v24 = *(v39 + 3);
      if (v25 >= v24 >> 1)
      {
        v39 = sub_24B006C7C(v24 > 1, v25 + 1, 1, v39);
      }

      v26 = v0[20];
      v27 = v0[17];
      v28 = v0[18];
      *(v39 + 2) = v25 + 1;
      result = v23(&v39[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25], v26, v27);
      v5 = v40;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v8 = v0[9];
    v4 = *(v8 + 8 * v9 + 56);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v29 = v0[28];
  v30 = v0[17];
  v31 = v0[9];

  (*v41)(v29, 1, 1, v30);
  LOBYTE(v30) = sub_24B12625C(v29, v31);
  sub_24B1D2740(v29, type metadata accessor for ItemsProvider.Subscription);
  if (v30)
  {

    v32 = 0;
  }

  else
  {
    v32 = sub_24B1D0E28(v39);
  }

  v33 = v0[14];
  v34 = v0[10];
  v35 = sub_24B2D56D4();
  (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  v36 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = v36;
  v37[4] = v34;
  v37[5] = v32;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v33, &unk_24B2EFCA0, v37);

  v38 = v0[1];

  return v38();
}

uint64_t sub_24B1AB04C()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v0[9];
LABEL_10:
    v10 = v0[25];
    v11 = v0[26];
    v12 = v0[17];
    v13 = v0[18];
    v14 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_24B1D2670(*(v8 + 48) + *(v0[24] + 72) * (v14 | (v7 << 6)), v11, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v11, v10, type metadata accessor for ItemsProvider.Subscription);
    result = (*(v13 + 48))(v10, 1, v12);
    if (result != 1)
    {
      v15 = v0[21];
      v16 = v0[17];
      v17 = v0[18];
      (*(v17 + 32))(v15, v0[25], v16);
      sub_24B1A8010(0, v15);
      result = (*(v17 + 8))(v15, v16);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v8 = v0[9];
    v4 = *(v8 + 8 * v9 + 56);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_24B1AB2EC(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D1DA4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for ItemsProvider.Subscription(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1AB414, v2, 0);
}

uint64_t sub_24B1AB414()
{
  if (*(v0 + 80) == 1)
  {
    sub_24B1A6E48();
  }

  v20 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = (v1 + 48);
  v18 = (v1 + 8);
  v19 = (v1 + 32);

  v9 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 32);
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_24B1D2670(*(v2 + 48) + *(v20 + 72) * (v14 | (v9 << 6)), v11, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v11, v12, type metadata accessor for ItemsProvider.Subscription);
    result = (*v7)(v12, 1, v13);
    if (result != 1)
    {
      v15 = *(v0 + 48);
      v16 = *(v0 + 32);
      (*v19)(v15, *(v0 + 64), v16);
      sub_24B1A8010(0, v15);
      result = (*v18)(v15, v16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t ItemsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage, &qword_27EFCC850);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ItemsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage, &qword_27EFCC850);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1AB7F0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1A9AD0(a1, a2);
}

uint64_t sub_24B1AB894(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1AB2EC(a1, a2);
}

uint64_t sub_24B1AB998(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B1D27EC;

  return v6(a1);
}

uint64_t sub_24B1ABA90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B1ABB88;

  return v6(a1);
}

uint64_t sub_24B1ABB88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B1ABC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  sub_24B03ABC8();
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B1D2670(*(v9 + 48) + v14 * v12, v8, _s14descr285E46659O16SubscriptionDataOMa);
      v15 = sub_24B0401A4(v8, a2);
      sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataOMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B1D2670(*(v9 + 48) + v14 * v12, v19, _s14descr285E46659O16SubscriptionDataOMa);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24B1D2670(a2, v8, _s14descr285E46659O16SubscriptionDataOMa);
    v20 = *v3;
    sub_24B1B5D94(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_24B1D26D8(a2, v17, _s14descr285E46659O16SubscriptionDataOMa);
    return 1;
  }
}

uint64_t sub_24B1ABEC0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = &v21 - v9;
  v22 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v25 = v4;
  v24 = *(a2 + *(v4 + 20));
  sub_24B2D6104();
  v11 = sub_24B2D6124();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_24B1D2670(*(v10 + 48) + v15 * v13, v8, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      if (sub_24B2D52A4())
      {
        v16 = v8[*(v25 + 20)];
        sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if (v24 == v16)
        {
          sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          sub_24B1D2670(*(v10 + 48) + v15 * v13, v23, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          return 0;
        }
      }

      else
      {
        sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v21;
  sub_24B1D2670(a2, v21, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  v26 = *v18;
  sub_24B1B5FD8(v20, v13, isUniquelyReferenced_nonNull_native);
  *v18 = v26;
  sub_24B1D26D8(a2, v23, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  return 1;
}

uint64_t sub_24B1AC204(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v11 = a2;
  sub_24B2D5254();
  v12 = sub_24B2D6124();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v10 + 48) + v16 * v14, v8, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v17 = sub_24B2D52A4();
      sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    sub_24B1D2670(*(v10 + 48) + v16 * v14, v25, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v23;
    sub_24B1D2670(v11, v23, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    v26 = *v18;
    sub_24B1B62E8(v20, v14, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    *v18 = v26;
    sub_24B1D26D8(v11, v21, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    return 1;
  }
}

uint64_t sub_24B1AC4F8(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v11 = a2;
  sub_24B2D5254();
  v12 = sub_24B2D6124();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v10 + 48) + v16 * v14, v8, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v17 = sub_24B2D52A4();
      sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    sub_24B1D2670(*(v10 + 48) + v16 * v14, v25, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v23;
    sub_24B1D2670(v11, v23, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    v26 = *v18;
    sub_24B1B65EC(v20, v14, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    *v18 = v26;
    sub_24B1D26D8(v11, v21, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    return 1;
  }
}

uint64_t sub_24B1AC7EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B68F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1ACACC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](a2);
  v6 = sub_24B2D6124();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24B1B6BB8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24B1ACBC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D15F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC748, MEMORY[0x277D08B70]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B6D04(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1ACEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B1D2670(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ContactsProvider.Subscription);
      MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(v8, a2);
      sub_24B1D2740(v8, type metadata accessor for ContactsProvider.Subscription);
      if (MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, type metadata accessor for ContactsProvider.Subscription);
    sub_24B1D2670(*(v9 + 48) + v14 * v12, v19, type metadata accessor for ContactsProvider.Subscription);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24B1D2670(a2, v8, type metadata accessor for ContactsProvider.Subscription);
    v20 = *v3;
    sub_24B1B6FE8(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_24B1D26D8(a2, v17, type metadata accessor for ContactsProvider.Subscription);
    return 1;
  }
}

uint64_t sub_24B1AD0E4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v28 - v9;
  v29 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  v31 = *(v4 + 20);
  v32 = v4;
  sub_24B2D5404();

  v11 = sub_24B2D6124();
  v12 = v10 + 56;
  v34 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_30:
    v24 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v28;
    sub_24B1D2670(a2, v28, type metadata accessor for PeopleLocationsProvider.Subscription);
    v37 = *v24;
    sub_24B1B722C(v26, v14, isUniquelyReferenced_nonNull_native);
    *v24 = v37;
    sub_24B1D26D8(a2, v30, type metadata accessor for PeopleLocationsProvider.Subscription);
    return 1;
  }

  v33 = ~v13;
  v15 = *(v5 + 72);
  while (1)
  {
    sub_24B1D2670(*(v34 + 48) + v15 * v14, v7, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v37 == v35 && v38 == v36)
    {
    }

    else
    {
      v17 = sub_24B2D6004();

      if ((v17 & 1) == 0)
      {
        sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_4;
      }
    }

    v18 = v7[*(v32 + 20)] ? 0x776F6C6C616873 : 1702259052;
    v19 = v7[*(v32 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
    v20 = *(a2 + v31) ? 0x776F6C6C616873 : 1702259052;
    v21 = *(a2 + v31) ? 0xE700000000000000 : 0xE400000000000000;
    if (v18 == v20 && v19 == v21)
    {
      break;
    }

    v23 = sub_24B2D6004();

    sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
    if (v23)
    {
      goto LABEL_32;
    }

LABEL_4:
    v14 = (v14 + 1) & v33;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_32:
  sub_24B1D2740(a2, type metadata accessor for PeopleLocationsProvider.Subscription);
  sub_24B1D2670(*(v34 + 48) + v15 * v14, v30, type metadata accessor for PeopleLocationsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1AD568(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - v4;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PeopleProvider.Subscription(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v42 = v2;
  v56 = *v2;
  sub_24B2D60E4();
  sub_24B1D2670(a2, v22, type metadata accessor for PeopleProvider.Subscription);
  v23 = v7 + 48;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v56 + 32);
  v26 = v24 & ~v25;
  v54 = v56 + 56;
  if (((*(v56 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_16:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    sub_24B1D2670(a2, v41, type metadata accessor for PeopleProvider.Subscription);
    v59 = *v36;
    sub_24B1B7670(v38, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v59;
    sub_24B1D26D8(a2, v43, type metadata accessor for PeopleProvider.Subscription);
    return 1;
  }

  v51 = v14;
  v52 = ~v25;
  v53 = *(v53 + 72);
  v44 = (v7 + 32);
  v48 = (v7 + 8);
  v27 = v46;
  v45 = a2;
  v47 = v23;
  v49 = v17;
  while (1)
  {
    v28 = v53 * v26;
    sub_24B1D2670(*(v56 + 48) + v53 * v26, v17, type metadata accessor for PeopleProvider.Subscription);
    v29 = *(v27 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1D2670(a2, &v5[v29], type metadata accessor for PeopleProvider.Subscription);
    v30 = v55;
    if (v55(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for PeopleProvider.Subscription);
      if (v30(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v31 = v51;
    sub_24B1D2670(v5, v51, type metadata accessor for PeopleProvider.Subscription);
    if (v30(&v5[v29], 1, v6) == 1)
    {
      v32 = v49;
      sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);
      v33 = v31;
      v17 = v32;
      (*v48)(v33, v6);
LABEL_7:
      sub_24AFF8258(v5, &qword_27EFCC6D0);
      goto LABEL_8;
    }

    (*v44)(v50, &v5[v29], v6);
    sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v59 == v57 && v60 == v58)
    {
      break;
    }

    v34 = sub_24B2D6004();
    v35 = *v48;
    (*v48)(v50, v6);
    v17 = v49;
    sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);

    v35(v51, v6);
    a2 = v45;
    v27 = v46;
    if (v34)
    {
      goto LABEL_18;
    }

    sub_24B1D2740(v5, type metadata accessor for PeopleProvider.Subscription);
LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v54 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v40 = *v48;
  (*v48)(v50, v6);
  sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);

  v40(v51, v6);
  a2 = v45;
LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for PeopleProvider.Subscription);
  sub_24B1D2740(a2, type metadata accessor for PeopleProvider.Subscription);
  sub_24B1D2670(*(v56 + 48) + v28, v43, type metadata accessor for PeopleProvider.Subscription);
  return 0;
}

uint64_t sub_24B1ADD20(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCE48);
  MEMORY[0x28223BE20](v51);
  v5 = &v40 - v4;
  v6 = sub_24B2D1684();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for ListPersonInfo.Sort();
  v49 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v40 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  v41 = v2;
  v53 = *v2;
  sub_24B2D60E4();
  v52 = a2;
  sub_24B1D2670(a2, v22, type metadata accessor for ListPersonInfo.Sort);
  v23 = *(v7 + 48);
  v24 = v23(v22, 2, v6);
  if (v24)
  {
    MEMORY[0x24C23C8D0](v24 != 1);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](2);
    sub_24B1D27A0(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v25 = sub_24B2D6124();
  v26 = -1 << *(v53 + 32);
  v27 = v25 & ~v26;
  v50 = v53 + 56;
  if (((*(v53 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_17:
    v35 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v52;
    v38 = v40;
    sub_24B1D2670(v52, v40, type metadata accessor for ListPersonInfo.Sort);
    v54 = *v35;
    sub_24B1B7DC0(v38, v27, isUniquelyReferenced_nonNull_native);
    *v35 = v54;
    sub_24B1D26D8(v37, v42, type metadata accessor for ListPersonInfo.Sort);
    return 1;
  }

  v48 = ~v26;
  v49 = *(v49 + 72);
  v47 = (v7 + 8);
  v43 = (v7 + 32);
  v44 = v23;
  while (1)
  {
    v28 = v49 * v27;
    sub_24B1D2670(*(v53 + 48) + v49 * v27, v18, type metadata accessor for ListPersonInfo.Sort);
    v29 = *(v51 + 48);
    sub_24B1D2670(v18, v5, type metadata accessor for ListPersonInfo.Sort);
    sub_24B1D2670(v52, &v5[v29], type metadata accessor for ListPersonInfo.Sort);
    v30 = v23(v5, 2, v6);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_24B1D2740(v18, type metadata accessor for ListPersonInfo.Sort);
        if (v23(&v5[v29], 2, v6) == 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_24B1D2740(v18, type metadata accessor for ListPersonInfo.Sort);
        if (v23(&v5[v29], 2, v6) == 2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_7;
    }

    sub_24B1D2670(v5, v15, type metadata accessor for ListPersonInfo.Sort);
    if (!v23(&v5[v29], 2, v6))
    {
      break;
    }

    sub_24B1D2740(v18, type metadata accessor for ListPersonInfo.Sort);
    (*v47)(v15, v6);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCCE48);
LABEL_8:
    v27 = (v27 + 1) & v48;
    if (((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v31 = v15;
  v32 = v45;
  (*v43)(v45, &v5[v29], v6);
  v46 = sub_24B2D1674();
  v33 = *v47;
  v34 = v32;
  v15 = v31;
  (*v47)(v34, v6);
  sub_24B1D2740(v18, type metadata accessor for ListPersonInfo.Sort);
  v33(v31, v6);
  v23 = v44;
  if ((v46 & 1) == 0)
  {
    sub_24B1D2740(v5, type metadata accessor for ListPersonInfo.Sort);
    goto LABEL_8;
  }

LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for ListPersonInfo.Sort);
  sub_24B1D2740(v52, type metadata accessor for ListPersonInfo.Sort);
  sub_24B1D2670(*(v53 + 48) + v28, v42, type metadata accessor for ListPersonInfo.Sort);
  return 0;
}

uint64_t sub_24B1AE3F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCE090, MEMORY[0x277D08C20]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B845C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AE6D0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  v27 = a2;
  sub_24B2D5254();
  sub_24B2D5404();
  v11 = sub_24B2D6124();
  v26 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v26 + 48) + v15 * v13, v7, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v30 == v28 && v31 == v29)
      {
        break;
      }

      v17 = sub_24B2D6004();

      if (v17)
      {
        goto LABEL_11;
      }

      sub_24B1D2740(v7, type metadata accessor for ItemsLocationsProvider.Subscription);
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_24B1D2740(v7, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B1D2740(v27, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B1D2670(*(v26 + 48) + v15 * v13, v25, type metadata accessor for ItemsLocationsProvider.Subscription);
    return 0;
  }

  else
  {
LABEL_9:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v27;
    v21 = v23;
    sub_24B1D2670(v27, v23, type metadata accessor for ItemsLocationsProvider.Subscription);
    v30 = *v18;
    sub_24B1B8724(v21, v13, isUniquelyReferenced_nonNull_native);
    *v18 = v30;
    sub_24B1D26D8(v20, v25, type metadata accessor for ItemsLocationsProvider.Subscription);
    return 1;
  }
}

uint64_t sub_24B1AEA54(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - v4;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for ItemsProvider.Subscription(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v42 = v2;
  v56 = *v2;
  sub_24B2D60E4();
  sub_24B1D2670(a2, v22, type metadata accessor for ItemsProvider.Subscription);
  v23 = v7 + 48;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v56 + 32);
  v26 = v24 & ~v25;
  v54 = v56 + 56;
  if (((*(v56 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_16:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    sub_24B1D2670(a2, v41, type metadata accessor for ItemsProvider.Subscription);
    v59 = *v36;
    sub_24B1B8A74(v38, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v59;
    sub_24B1D26D8(a2, v43, type metadata accessor for ItemsProvider.Subscription);
    return 1;
  }

  v51 = v14;
  v52 = ~v25;
  v53 = *(v53 + 72);
  v44 = (v7 + 32);
  v48 = (v7 + 8);
  v27 = v46;
  v45 = a2;
  v47 = v23;
  v49 = v17;
  while (1)
  {
    v28 = v53 * v26;
    sub_24B1D2670(*(v56 + 48) + v53 * v26, v17, type metadata accessor for ItemsProvider.Subscription);
    v29 = *(v27 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D2670(a2, &v5[v29], type metadata accessor for ItemsProvider.Subscription);
    v30 = v55;
    if (v55(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for ItemsProvider.Subscription);
      if (v30(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v31 = v51;
    sub_24B1D2670(v5, v51, type metadata accessor for ItemsProvider.Subscription);
    if (v30(&v5[v29], 1, v6) == 1)
    {
      v32 = v49;
      sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);
      v33 = v31;
      v17 = v32;
      (*v48)(v33, v6);
LABEL_7:
      sub_24AFF8258(v5, &qword_27EFCC6E0);
      goto LABEL_8;
    }

    (*v44)(v50, &v5[v29], v6);
    sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v59 == v57 && v60 == v58)
    {
      break;
    }

    v34 = sub_24B2D6004();
    v35 = *v48;
    (*v48)(v50, v6);
    v17 = v49;
    sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);

    v35(v51, v6);
    a2 = v45;
    v27 = v46;
    if (v34)
    {
      goto LABEL_18;
    }

    sub_24B1D2740(v5, type metadata accessor for ItemsProvider.Subscription);
LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v54 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v40 = *v48;
  (*v48)(v50, v6);
  sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);

  v40(v51, v6);
  a2 = v45;
LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for ItemsProvider.Subscription);
  sub_24B1D2740(a2, type metadata accessor for ItemsProvider.Subscription);
  sub_24B1D2670(*(v56 + 48) + v28, v43, type metadata accessor for ItemsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1AF20C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCDBD0, MEMORY[0x277D08E20]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B91C4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AF4EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC6C8, MEMORY[0x277D08B50]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B948C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AF7CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1A24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCE100, MEMORY[0x277D08D28]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B9754(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AFAAC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v68);
  v5 = &v54 - v4;
  v6 = sub_24B2D1704();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for SettingsContactsProvider.Subscription();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v63 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v55 = v2;
  v24 = *v2;
  sub_24B2D60E4();
  v69 = a2;
  sub_24B1D2670(a2, v23, type metadata accessor for SettingsContactsProvider.Subscription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();

    v26 = v67;
  }

  else
  {
    v26 = v67;
    (*(v67 + 32))(v10, v23, v6);
    MEMORY[0x24C23C8D0](0);
    sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    (*(v26 + 8))(v10, v6);
  }

  v27 = sub_24B2D6124();
  v28 = -1 << *(v24 + 32);
  v29 = v27 & ~v28;
  v59 = v24 + 56;
  if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_21:
    v49 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v69;
    v52 = v54;
    sub_24B1D2670(v69, v54, type metadata accessor for SettingsContactsProvider.Subscription);
    v70 = *v49;
    sub_24B1B9A1C(v52, v29, isUniquelyReferenced_nonNull_native);
    *v49 = v70;
    sub_24B1D26D8(v51, v56, type metadata accessor for SettingsContactsProvider.Subscription);
    return 1;
  }

  v62 = v6;
  v66 = ~v28;
  v67 = *(v65 + 72);
  v57 = (v26 + 32);
  v61 = (v26 + 8);
  v30 = v59;
  while (1)
  {
    v31 = v67 * v29;
    sub_24B1D2670(*(v24 + 48) + v67 * v29, v17, type metadata accessor for SettingsContactsProvider.Subscription);
    v32 = &v5[*(v68 + 48)];
    sub_24B1D2670(v17, v5, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B1D2670(v69, v32, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v40 = v63;
    sub_24B1D2670(v5, v63, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v65 = v31;
      v41 = v24;
      v42 = v58;
      v43 = v62;
      (*v57)(v58, v32, v62);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v44 = v11;
      v45 = v40;
      v46 = *v61;
      v47 = v42;
      v24 = v41;
      (*v61)(v47, v43);
      sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
      v48 = v45;
      v11 = v44;
      v30 = v59;
      v46(v48, v43);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v61)(v40, v62);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCDBC8);
LABEL_8:
    v29 = (v29 + 1) & v66;
    if (((*(v30 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v65 = v31;
  v33 = v64;
  sub_24B1D2670(v5, v64, type metadata accessor for SettingsContactsProvider.Subscription);
  v35 = *v33;
  v34 = v33[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_7;
  }

  v36 = *v32;
  v37 = *(v32 + 1);
  if (v35 != v36 || v34 != v37)
  {
    v39 = sub_24B2D6004();

    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_19:
    sub_24B1D2740(v5, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_8;
  }

  sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_23:
  sub_24B1D2740(v5, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B1D2740(v69, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B1D2670(*(v24 + 48) + v65, v56, type metadata accessor for SettingsContactsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1B0234(_BYTE *a1, char a2)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  v6 = a2 & 1;
  sub_24B2D6104();
  v7 = sub_24B2D6124();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + v9) == (a2 & 1))
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v6 = *(v11 + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24B1BA124(a2 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_24B1B034C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v47);
  v5 = &v38 - v4;
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v39 = &v38 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v40 = v2;
  v49 = *v2;
  sub_24B2D60E4();
  v48 = a2;
  sub_24B1D2670(a2, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v23 = *(v7 + 48);
  if (v23(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B1D26D8(v22, v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B1D2740(v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v49 + 32);
  v26 = v24 & ~v25;
  v46 = v49 + 56;
  v27 = v43;
  if (((*(v49 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v48;
    v36 = v39;
    sub_24B1D2670(v48, v39, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v50 = *v33;
    sub_24B1BA284(v36, v26, isUniquelyReferenced_nonNull_native);
    *v33 = v50;
    sub_24B1D26D8(v35, v41, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    return 1;
  }

  v44 = ~v25;
  v45 = *(v13 + 72);
  while (1)
  {
    v28 = v45 * v26;
    sub_24B1D2670(*(v49 + 48) + v45 * v26, v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v29 = *(v47 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B1D2670(v48, &v5[v29], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v23(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    sub_24B1D2670(v5, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(&v5[v29], 1, v6) != 1)
    {
      break;
    }

    sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B1D2740(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCC7A8);
LABEL_8:
    v26 = (v26 + 1) & v44;
    if (((*(v46 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v30 = v42;
  sub_24B1D26D8(&v5[v29], v42, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  v32 = v30;
  v27 = v43;
  sub_24B1D2740(v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2740(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B1D2740(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_8;
  }

LABEL_15:
  sub_24B1D2740(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2740(v48, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2670(*(v49 + 48) + v28, v41, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1B09AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1BAA2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1B0C8C()
{
  v1 = v0;
  v47 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v41 - v11;
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0);
  result = sub_24B2D5BF4();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v0;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = result + 56;
    v48 = v7;
    v49 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v51 = *(v8 + 72);
      v27 = v52;
      sub_24B1D26D8(v26 + v51 * (v23 | (v15 << 6)), v52, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B1D2670(v27, v50, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v29 = v45;
          sub_24B1D26D8(v50, v45, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v30 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v29 = v44;
          sub_24B1D26D8(v50, v44, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v30 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }

        sub_24B1D2740(v29, v30);
        v12 = v49;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v31 = v46;
        sub_24B1D26D8(v50, v46, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        v42 = v8;
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v8 = v42;
        sub_24B2D5254();
        sub_24B2D6104();
        v32 = v31;
        v12 = v49;
        sub_24B1D2740(v32, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        MEMORY[0x24C23C8D0](1);
      }

      result = sub_24B2D6124();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_24B1D26D8(v52, *(v14 + 48) + v22 * v51, _s14descr285E46659O16SubscriptionDataOMa);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v12 + 32);
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    v1 = v43;
    *(v12 + 16) = 0;
  }

  *v1 = v14;
  return result;
}

uint64_t sub_24B1B1310()
{
  v1 = v0;
  v35 = sub_24B2D1704();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0D0);
  result = sub_24B2D5BF4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_24B1B166C()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_24B1D26D8(v19 + v20 * (v16 | (v8 << 6)), v4, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D6104();
      result = sub_24B2D6124();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_24B1B19D4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = v5;
  v9 = a2(0);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v35 - v10;
  v11 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_24B2D5BF4();
  v13 = result;
  if (*(v11 + 16))
  {
    v36 = v5;
    v37 = v11;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v26 = *(v38 + 72);
      sub_24B1D26D8(v25 + v26 * (v22 | (v14 << 6)), v39, a5);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      result = sub_24B2D6124();
      v27 = -1 << *(v13 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v20 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v20 + 8 * v29);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v28) & ~*(v20 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24B1D26D8(v39, *(v13 + 48) + v21 * v26, a5);
      ++*(v13 + 16);
      v11 = v37;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v11 + 32);
    if (v34 >= 64)
    {
      bzero(v15, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v34;
    }

    v8 = v36;
    *(v11 + 16) = 0;
  }

  *v8 = v13;
  return result;
}

uint64_t sub_24B1B1D18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC750);
  result = sub_24B2D5BF4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](v16);
      result = sub_24B2D6124();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24B1B1F68()
{
  v1 = v0;
  v35 = sub_24B2D15F4();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC738);
  result = sub_24B2D5BF4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
      result = sub_24B2D5244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_24B1B22C4()
{
  v1 = v0;
  v58 = sub_24B2D14C4();
  v2 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24B2D15F4();
  v4 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v47 - v9;
  v10 = type metadata accessor for ContactsProvider.Subscription(0);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v47 - v14;
  v15 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818);
  result = sub_24B2D5BF4();
  v17 = v15;
  v18 = result;
  if (*(v17 + 16))
  {
    v47 = v1;
    v19 = 0;
    v20 = (v17 + 56);
    v21 = 1 << *(v17 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 56);
    v24 = (v21 + 63) >> 6;
    v55 = (v4 + 32);
    v54 = (v2 + 48);
    v49 = (v2 + 32);
    v48 = (v2 + 8);
    v53 = (v4 + 8);
    v25 = result + 56;
    v26 = v58;
    v59 = v17;
    v52 = v12;
    v51 = result;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v31 = *(v17 + 48);
      v65 = *(v60 + 72);
      v32 = v66;
      sub_24B1D26D8(v31 + v65 * (v28 | (v19 << 6)), v66, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v32, v12, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        v26 = v58;
        sub_24B2D5404();
      }

      else
      {
        v57 = v23;
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        v34 = v62;
        sub_24B0391CC(v12, v62, &qword_27EFCC810);
        (*v55)(v63, &v12[v33], v64);
        MEMORY[0x24C23C8D0](0);
        v35 = v56;
        sub_24B008890(v34, v56, &qword_27EFCC810);
        if ((*v54)(v35, 1, v26) == 1)
        {
          sub_24B2D6104();
        }

        else
        {
          v36 = v50;
          (*v49)(v50, v35, v26);
          sub_24B2D6104();
          sub_24B1D27A0(&qword_27EFCC830, MEMORY[0x277D08B38]);
          sub_24B2D5254();
          (*v48)(v36, v26);
        }

        sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
        v37 = v63;
        v38 = v64;
        sub_24B2D5254();
        (*v53)(v37, v38);
        sub_24AFF8258(v62, &qword_27EFCC810);
        v12 = v52;
        v23 = v57;
        v18 = v51;
      }

      result = sub_24B2D6124();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v17 = v59;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v27 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v17 = v59;
LABEL_7:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_24B1D26D8(v66, *(v18 + 48) + v27 * v65, type metadata accessor for ContactsProvider.Subscription);
      ++*(v18 + 16);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    v46 = 1 << *(v17 + 32);
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    v1 = v47;
    *(v17 + 16) = 0;
  }

  *v1 = v18;
  return result;
}

uint64_t sub_24B1B2A2C()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_24B1D26D8(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D1574();
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      sub_24B2D5254();
      sub_24B2D5404();

      result = sub_24B2D6124();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, type metadata accessor for PeopleLocationsProvider.Subscription);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_24B1B2DD0()
{
  v1 = v0;
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeopleProvider.Subscription(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8);
  result = sub_24B2D5BF4();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v2;
    v38 = v0;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v43 = (v3 + 48);
    v39 = (v3 + 8);
    v40 = (v3 + 32);
    v19 = result + 56;
    v20 = v46;
    v41 = v10;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = *(v10 + 48);
      v47 = *(v45 + 72);
      sub_24B1D26D8(v25 + v47 * (v22 | (v13 << 6)), v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2D60E4();
      v26 = v9;
      sub_24B1D2670(v9, v20, type metadata accessor for PeopleProvider.Subscription);
      v27 = v44;
      if ((*v43)(v20, 1, v44) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v28 = v42;
        (*v40)(v42, v20, v27);
        MEMORY[0x24C23C8D0](1);
        sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
        sub_24B2D5254();
        v29 = v28;
        v10 = v41;
        (*v39)(v29, v27);
      }

      result = sub_24B2D6124();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v9 = v26;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v20 = v46;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v20 = v46;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24B1D26D8(v26, *(v12 + 48) + v21 * v47, type metadata accessor for PeopleProvider.Subscription);
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v10 + 32);
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    v1 = v38;
    *(v10 + 16) = 0;
  }

  *v1 = v12;
  return result;
}

uint64_t sub_24B1B3294()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE138);
  result = sub_24B2D5BF4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_24B2D5A24();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}