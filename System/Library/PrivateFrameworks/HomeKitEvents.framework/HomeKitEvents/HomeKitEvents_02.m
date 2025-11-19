uint64_t sub_254150F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_25424DAA8();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = sub_25424D218();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415117C, 0, 0);
}

uint64_t sub_25415117C()
{
  sub_25424E1E8();
  v1 = *(v0 + 32);
  v2 = type metadata accessor for EventQuery.Configuration(0);
  *(v0 + 152) = v2;
  v3 = *(v2 + 28);
  *(v0 + 292) = *(v1 + *(v2 + 88));
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_254151314;
  v5 = *(v0 + 16);

  return sub_2541A23BC(v5, v1 + v3, (v0 + 292), 1);
}

uint64_t sub_254151314(uint64_t a1)
{
  v3 = *(*v2 + 160);
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25415159C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[23] = v5;
    *v5 = v4;
    v5[1] = sub_254151488;
    v6 = v4[4];
    v7 = v4[2];

    return sub_254153994(v7);
  }
}

uint64_t sub_254151488(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_254152638;
  }

  else
  {
    v5 = sub_254151664;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25415159C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

void sub_254151664()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F0, &qword_254254508);
    v8 = *(v5 + 72);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_254254360;
    v10 = v1 + v9;
    v11 = *(v6 + 48);
    (*(v4 + 16))(v10, v7 + *(v2 + 32), v3);
    *(v10 + v11) = MEMORY[0x277D84F90];
  }

  *(v0 + 208) = v1;
  v12 = *(v1 + 16);
  *(v0 + 216) = v12;
  if (v12)
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 32) + *(*(v0 + 152) + 48);
    *(v0 + 224) = *v16;
    *(v0 + 293) = *(v16 + 8);
    v17 = *(v14 + 80);
    *(v0 + 288) = v17;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    if (*(v1 + 16))
    {
      v18 = *(v0 + 144);
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      sub_254132DF4(v1 + ((v17 + 32) & ~v17), v20, &qword_27F5B90E8, &qword_2542544F8);
      v21 = *(v20 + *(v15 + 48));
      *(v0 + 248) = v21;
      (*(v13 + 32))(v18, v20, v19);
      v66 = *(v0 + 224);
      v22 = *(v0 + 208);
      v23 = *(v0 + 56);
      v24 = *(v0 + 32);
      sub_25421ACE8(*(v0 + 96));
      sub_25417C110(v24, v23, type metadata accessor for EventQuery);
      swift_bridgeObjectRetain_n();
      v25 = sub_25424DA88();
      v26 = sub_25424E408();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 208);
      if (v27)
      {
        v29 = *(v0 + 152);
        v30 = *(v0 + 72);
        v63 = *(v0 + 64);
        v64 = *(v0 + 96);
        v31 = *(v0 + 56);
        v65 = v21;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v69 = v33;
        *v32 = 136446722;
        v34 = *(v29 + 24);
        sub_25424D948();
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v35 = sub_25424EA58();
        v37 = v36;
        sub_25417C0B0(v31, type metadata accessor for EventQuery);
        v38 = sub_2542203C4(v35, v37, &v69);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2048;
        *(v32 + 14) = 1;
        *(v32 + 22) = 2048;
        v39 = *(v28 + 16);

        *(v32 + 24) = v39;

        _os_log_impl(&dword_254124000, v25, v26, "[%{public}s] Beginning tag-based subquery %ld (of %ld)", v32, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x259C07330](v33, -1, -1);
        v40 = v32;
        v21 = v65;
        MEMORY[0x259C07330](v40, -1, -1);

        v41 = *(v30 + 8);
        v41(v64, v63);
      }

      else
      {
        v51 = *(v0 + 96);
        v53 = *(v0 + 64);
        v52 = *(v0 + 72);
        v54 = *(v0 + 56);
        v55 = *(v0 + 208);
        swift_bridgeObjectRelease_n();

        sub_25417C0B0(v54, type metadata accessor for EventQuery);
        v41 = *(v52 + 8);
        v41(v51, v53);
      }

      *(v0 + 256) = v41;
      v56 = *(v0 + 293);
      v57 = *(v0 + 216) == 1;
      v58 = swift_task_alloc();
      *(v0 + 264) = v58;
      *v58 = v0;
      v58[1] = sub_254151B60;
      v59 = *(v0 + 168);
      v60 = *(v0 + 144);
      v61 = *(v0 + 32);
      v62 = *(v0 + 16);
      v68 = *(v0 + 24);

      sub_254154FE4(v62, v59, v60, v21, v66, v56, 1, v57);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v45 = *(v0 + 88);
    v44 = *(v0 + 96);
    v46 = *(v0 + 80);
    v48 = *(v0 + 48);
    v47 = *(v0 + 56);
    v49 = *(v0 + 40);

    v50 = *(v0 + 8);

    v50();
  }
}

uint64_t sub_254151B60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  v7 = v3[31];
  if (v1)
  {
    v8 = v4[26];

    v9 = sub_254152708;
  }

  else
  {

    v9 = sub_254151CB0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_254151CB0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_25421ACE8(*(v0 + 88));
  sub_25417C110(v3, v2, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 152);
    v120 = *(v0 + 88);
    v123 = *(v0 + 256);
    v117 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v0 + 240) + 1;
    v111 = *(v0 + 272);
    v114 = *(v0 + 72) + 8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v128 = v11;
    *v10 = 136446978;
    v12 = *(v7 + 24);
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v13 = sub_25424EA58();
    v15 = v14;
    sub_25417C0B0(v8, type metadata accessor for EventQuery);
    v16 = sub_2542203C4(v13, v15, &v128);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v9;
    *(v10 + 22) = 2048;
    v17 = *(v6 + 16);

    *(v10 + 24) = v17;

    *(v10 + 32) = 2048;
    *(v10 + 34) = v111;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Finished tag-based subquery %ld (of %ld), emitted %ld matching event(s)", v10, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x259C07330](v11, -1, -1);
    MEMORY[0x259C07330](v10, -1, -1);

    result = v123(v120, v117);
  }

  else
  {
    v19 = *(v0 + 256);
    v20 = *(v0 + 208);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = *(v0 + 48);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v24, type metadata accessor for EventQuery);
    result = v19(v21, v22);
  }

  v25 = *(v0 + 272);
  v26 = *(v0 + 232);
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if ((*(v0 + 293) & 1) == 0 && v27 == *(v0 + 224))
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 80);
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);

    sub_25421ACE8(v29);
    sub_25417C110(v31, v30, type metadata accessor for EventQuery);
    v32 = sub_25424DA88();
    v33 = sub_25424E448();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 256);
    if (v34)
    {
      v36 = *(v0 + 224);
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      v121 = *(v0 + 128);
      v124 = *(v0 + 144);
      v118 = *(v0 + 80);
      v112 = *(v0 + 168);
      v115 = *(v0 + 64);
      v39 = *(v0 + 40);
      v110 = *(v0 + 72) + 8;
      v40 = swift_slowAlloc();
      v109 = v35;
      v41 = swift_slowAlloc();
      v128 = v41;
      *v40 = 136446466;
      v42 = *(v37 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v43 = sub_25424EA58();
      v45 = v44;
      sub_25417C0B0(v39, type metadata accessor for EventQuery);
      v46 = sub_2542203C4(v43, v45, &v128);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2048;
      *(v40 + 14) = v36;
      _os_log_impl(&dword_254124000, v32, v33, "[%{public}s] Reached query limit: %ld", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x259C07330](v41, -1, -1);
      MEMORY[0x259C07330](v40, -1, -1);

      v109(v118, v115);
      (*(v38 + 8))(v124, v121);
    }

    else
    {
      v82 = *(v0 + 136);
      v81 = *(v0 + 144);
      v83 = *(v0 + 128);
      v85 = *(v0 + 72);
      v84 = *(v0 + 80);
      v86 = *(v0 + 64);
      v87 = *(v0 + 40);

      sub_25417C0B0(v87, type metadata accessor for EventQuery);
      v35(v84, v86);
      (*(v82 + 8))(v81, v83);
    }

LABEL_17:
    v88 = *(v0 + 144);
    v89 = *(v0 + 120);
    v91 = *(v0 + 88);
    v90 = *(v0 + 96);
    v92 = *(v0 + 80);
    v94 = *(v0 + 48);
    v93 = *(v0 + 56);
    v95 = *(v0 + 40);

    v96 = *(v0 + 8);

    return v96();
  }

  v47 = *(v0 + 216);
  v48 = *(v0 + 240) + 1;
  result = (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  if (v48 == v47)
  {
    v49 = *(v0 + 208);

    goto LABEL_17;
  }

  v50 = *(v0 + 240);
  *(v0 + 232) = v27;
  *(v0 + 240) = v50 + 1;
  v51 = *(v0 + 208);
  if ((v50 + 1) >= *(v51 + 16))
  {
    goto LABEL_25;
  }

  v52 = *(v0 + 293);
  v54 = *(v0 + 136);
  v53 = *(v0 + 144);
  v56 = *(v0 + 120);
  v55 = *(v0 + 128);
  v57 = *(v0 + 104);
  sub_254132DF4(v51 + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(*(v0 + 112) + 72) * (v50 + 1), v56, &qword_27F5B90E8, &qword_2542544F8);
  v58 = *(v56 + *(v57 + 48));
  *(v0 + 248) = v58;
  result = (*(v54 + 32))(v53, v56, v55);
  v59 = *(v0 + 224);
  if ((v52 & 1) == 0)
  {
    v60 = __OFSUB__(v59, v27);
    v59 -= v27;
    if (v60)
    {
      goto LABEL_26;
    }
  }

  v125 = v59;
  v61 = v50;
  v62 = *(v0 + 208);
  v63 = *(v0 + 56);
  v64 = *(v0 + 32);
  sub_25421ACE8(*(v0 + 96));
  sub_25417C110(v64, v63, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v65 = sub_25424DA88();
  v66 = sub_25424E408();
  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 208);
  if (v67)
  {
    v69 = *(v0 + 152);
    v113 = *(v0 + 72);
    v116 = *(v0 + 64);
    v119 = *(v0 + 96);
    v70 = *(v0 + 56);
    v122 = v58;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v128 = v72;
    *v71 = 136446722;
    v73 = *(v69 + 24);
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v74 = sub_25424EA58();
    v76 = v75;
    sub_25417C0B0(v70, type metadata accessor for EventQuery);
    v77 = sub_2542203C4(v74, v76, &v128);

    *(v71 + 4) = v77;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v61 + 2;
    *(v71 + 22) = 2048;
    v78 = *(v68 + 16);

    *(v71 + 24) = v78;

    _os_log_impl(&dword_254124000, v65, v66, "[%{public}s] Beginning tag-based subquery %ld (of %ld)", v71, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x259C07330](v72, -1, -1);
    v79 = v71;
    v58 = v122;
    MEMORY[0x259C07330](v79, -1, -1);

    v80 = *(v113 + 8);
    v80(v119, v116);
  }

  else
  {
    v97 = *(v0 + 96);
    v98 = *(v0 + 64);
    v99 = *(v0 + 72);
    v100 = *(v0 + 56);
    v101 = *(v0 + 208);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v100, type metadata accessor for EventQuery);
    v80 = *(v99 + 8);
    v80(v97, v98);
  }

  *(v0 + 256) = v80;
  v102 = *(v0 + 293);
  v103 = v61 == *(v0 + 216) - 2;
  v104 = swift_task_alloc();
  *(v0 + 264) = v104;
  *v104 = v0;
  v104[1] = sub_254151B60;
  v105 = *(v0 + 168);
  v106 = *(v0 + 144);
  v107 = *(v0 + 32);
  v108 = *(v0 + 16);
  v127 = *(v0 + 24);

  return sub_254154FE4(v108, v105, v106, v58, v125, v102, 0, v103);
}

uint64_t sub_254152638()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_254152708()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t static EventQuery.fetchOldestDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254152834, 0, 0);
}

uint64_t sub_254152834()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_286632F60;
  *(v12 + 56) = v2;
  *(v12 + 64) = 1702125924;
  *(v12 + 72) = 0xE400000000000000;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254152A84;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_2542543C0, v12, v16, v14, v15);
}

uint64_t sub_254152A84()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_254152C18;
  }

  else
  {
    v4 = sub_254152BB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254152BB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254152C18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_254152C7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v30;
  *(v8 + 96) = v31;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 112) = v13;
  v14 = *(v13 - 8);
  *(v8 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v16 = sub_25424D8B8();
  *(v8 + 136) = v16;
  v17 = *(v16 - 8);
  *(v8 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 160) = v19;
  v20 = *(v19 - 8);
  *(v8 + 168) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 184) = v22;
  v23 = *(v22 - 8);
  *(v8 + 192) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v25 = type metadata accessor for CKQueryAsyncSequence();
  *(v8 + 208) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 256) = a4 & 1;
  v27 = swift_task_alloc();
  *(v8 + 224) = v27;
  *v27 = v8;
  v27[1] = sub_254152F5C;

  return sub_2541A23BC(a2, a3, (v8 + 256), 1);
}

uint64_t sub_254152F5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_254153308;
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = sub_254153084;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_254153084()
{
  v2 = v0[26];
  v1 = v0[27];
  v30 = v0[25];
  v31 = v0[21];
  v3 = v0[19];
  v26 = v0[22];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[20];
  v23 = v0[30];
  v24 = v0[16];
  v4 = v0[15];
  v25 = v0[14];
  v5 = v0[9];
  v22 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v2[8];
  v12 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v23;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v13 = &v1[v2[10]];
  *v13 = 10;
  v13[8] = 0;
  v14 = &v1[v2[11]];
  *v14 = v22;
  v14[8] = 0;
  *&v1[v2[12]] = 0;
  v15 = v6;

  sub_25424D898();
  v16 = swift_task_alloc();
  *(v16 + 16) = v1;
  *(v16 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v24, *MEMORY[0x277D858A0], v25);
  sub_25424E278();

  (*(v27 + 8))(v3, v28);
  sub_25424E178();
  (*(v31 + 8))(v26, v29);
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_2541533B8;
  v19 = v0[25];
  v20 = v0[23];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v20, v0 + 3);
}

uint64_t sub_254153308()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2541533B8()
{
  v2 = *(*v1 + 248);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2541537CC;
  }

  else
  {
    v3 = sub_2541534C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541534C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([*(v0 + 16) isExpired])
    {

LABEL_13:
      v25 = *(MEMORY[0x277D858B8] + 4);
      v26 = swift_task_alloc();
      *(v0 + 248) = v26;
      *v26 = v0;
      v26[1] = sub_2541533B8;
      v27 = *(v0 + 200);
      v28 = *(v0 + 184);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v28, v0 + 24);
    }

    v6 = MEMORY[0x259C06420](*(v0 + 88), *(v0 + 96));

    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    if (v6)
    {
      *(v0 + 32) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
      v10 = swift_dynamicCast();
      v4 = *(v8 + 56);
      v4(v9, v10 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v9, 1, v7) != 1)
      {
        v11 = *(v0 + 216);
        v12 = *(v0 + 136);
        v13 = *(v0 + 144);
        v14 = *(v0 + 104);
        v15 = *(v0 + 40);
        (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
        sub_25417C0B0(v11, type metadata accessor for CKQueryAsyncSequence);
        (*(v13 + 32))(v15, v14, v12);
        v5 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      (*(v8 + 56))(*(v0 + 104), 1, 1, *(v0 + 136));
    }

    sub_254132E5C(*(v0 + 104), &unk_27F5BA1B0, qword_2542544A0);
    goto LABEL_13;
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  sub_25417C0B0(v2, type metadata accessor for CKQueryAsyncSequence);
  v4 = *(v3 + 56);
  v5 = 1;
LABEL_8:
  v16 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v21 = *(v0 + 104);
  v22 = *(v0 + 144) + 56;
  v4(*(v0 + 40), v5, 1, *(v0 + 136));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2541537CC()
{
  v1 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_25417C0B0(v1, type metadata accessor for CKQueryAsyncSequence);
  v2 = v0[3];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

BOOL sub_2541538B4(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_25424EBD8();
  v5 = qword_2542546A0[a1];
  MEMORY[0x259C06AA0](v5);
  v6 = sub_25424EC28();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = qword_2542546A0[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_254153994(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_25424DA48();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_25424D9E8();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(type metadata accessor for LubyRackoffEncryptionKey() - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = sub_25424D218();
  v2[15] = v14;
  v15 = *(v14 - 8);
  v2[16] = v15;
  v16 = *(v15 + 64) + 15;
  v2[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9268, &qword_2542545B8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v18 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v19 = sub_25424DAA8();
  v2[23] = v19;
  v20 = *(v19 - 8);
  v2[24] = v20;
  v21 = *(v20 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254153CC8, 0, 0);
}

uint64_t sub_254153CC8()
{
  v40 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for EventQuery.Configuration(0);
  v0[28] = v2;
  v3 = *(v1 + *(v2 + 36));
  v0[29] = v3;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_254154034;
    v5 = v0[2];
    v6 = v0[3];

    return sub_254159034(v5);
  }

  else
  {
    v8 = v2;
    v9 = v0[20];
    sub_25421ACE8(v0[25]);
    sub_25417C110(v1, v9, type metadata accessor for EventQuery);
    v10 = sub_25424DA88();
    v11 = sub_25424E408();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[23];
    v16 = v0[20];
    if (v12)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136446210;
      v37 = v14;
      v39 = v18;
      v19 = *(v8 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v20 = sub_25424EA58();
      v22 = v21;
      sub_25417C0B0(v16, type metadata accessor for EventQuery);
      v23 = sub_2542203C4(v20, v22, &v39);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_254124000, v10, v11, "[%{public}s] No categories specified, skipping query with tags", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x259C07330](v18, -1, -1);
      MEMORY[0x259C07330](v17, -1, -1);

      (*(v13 + 8))(v37, v15);
    }

    else
    {

      sub_25417C0B0(v16, type metadata accessor for EventQuery);
      (*(v13 + 8))(v14, v15);
    }

    v25 = v0[26];
    v24 = v0[27];
    v26 = v0[25];
    v28 = v0[21];
    v27 = v0[22];
    v30 = v0[19];
    v29 = v0[20];
    v32 = v0[17];
    v31 = v0[18];
    v33 = v0[14];
    v35 = v0[12];
    v36 = v0[9];
    v38 = v0[6];

    v34 = v0[1];

    return v34(0);
  }
}

uint64_t sub_254154034(uint64_t a1)
{
  v3 = *(*v2 + 240);
  v4 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v6 = v4[26];
    v5 = v4[27];
    v7 = v4[25];
    v9 = v4[21];
    v8 = v4[22];
    v11 = v4[19];
    v10 = v4[20];
    v12 = v4[18];
    v16 = v4[17];
    v17 = v4[14];
    v18 = v4[12];
    v19 = v4[9];
    v13 = v4[6];

    v14 = v4[1];

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_254154228, 0, 0);
  }
}

uint64_t sub_254154228()
{
  v175 = v0;
  v1 = v0[31];
  if (!v1)
  {
    v81 = v0[21];
    v82 = v0[3];
    sub_25421ACE8(v0[26]);
    sub_25417C110(v82, v81, type metadata accessor for EventQuery);
    v83 = sub_25424DA88();
    v84 = sub_25424E408();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v0[28];
      v171 = v0[26];
      v87 = v0[23];
      v86 = v0[24];
      v88 = v0[21];
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v174[0] = v90;
      *v89 = 136446210;
      v91 = *(v85 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v92 = sub_25424EA58();
      v94 = v93;
      sub_25417C0B0(v88, type metadata accessor for EventQuery);
      v95 = sub_2542203C4(v92, v94, v174);

      *(v89 + 4) = v95;
      v96 = "[%{public}s] Feature flag disabled, skipping query with tags";
LABEL_81:
      _os_log_impl(&dword_254124000, v83, v84, v96, v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x259C07330](v90, -1, -1);
      MEMORY[0x259C07330](v89, -1, -1);

      (*(v86 + 8))(v171, v87);
LABEL_88:
      v11 = 0;
LABEL_89:
      v125 = v0[26];
      v124 = v0[27];
      v126 = v0[25];
      v128 = v0[21];
      v127 = v0[22];
      v130 = v0[19];
      v129 = v0[20];
      v132 = v0[17];
      v131 = v0[18];
      v163 = v0[14];
      v166 = v0[12];
      v169 = v0[9];
      v173 = v0[6];

      v133 = v0[1];

      return v133(v11);
    }

    v108 = v0[26];
    v109 = v0[23];
    v110 = v0[24];
    v111 = v0[21];
LABEL_87:

    sub_25417C0B0(v111, type metadata accessor for EventQuery);
    (*(v110 + 8))(v108, v109);
    goto LABEL_88;
  }

  if (!*(v1 + 16))
  {
    v97 = v0[27];
    v98 = v0[22];
    v99 = v0[3];
    v100 = v0[31];

    sub_25421ACE8(v97);
    sub_25417C110(v99, v98, type metadata accessor for EventQuery);
    v83 = sub_25424DA88();
    v84 = sub_25424E408();
    if (os_log_type_enabled(v83, v84))
    {
      v101 = v0[28];
      v171 = v0[27];
      v87 = v0[23];
      v86 = v0[24];
      v102 = v0[22];
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v174[0] = v90;
      *v89 = 136446210;
      v103 = *(v101 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v104 = sub_25424EA58();
      v106 = v105;
      sub_25417C0B0(v102, type metadata accessor for EventQuery);
      v107 = sub_2542203C4(v104, v106, v174);

      *(v89 + 4) = v107;
      v96 = "[%{public}s] No encryption keys available, skipping query with tags";
      goto LABEL_81;
    }

    v108 = v0[27];
    v109 = v0[23];
    v110 = v0[24];
    v111 = v0[22];
    goto LABEL_87;
  }

  v2 = v0[16];
  v149 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  v157 = v0[4];
  v144 = v0[28];
  result = _s13HomeKitEvents9EventTagsO8CategoryO15tagsSplitByDate3for12dateIntervalSay10Foundation0jM0VAH_SayAI4DataVG0G0tGShyAA0dF0OG_AKtFZ_0(v0[29], v0[3] + *(v144 + 32));
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v155 = v5;
  v142 = (v5 + 48);
  v143 = (v5 + 56);
  v141 = (v2 + 32);
  v160 = (v3 + 8);
  v161 = (v4 + 16);
  v154 = (v2 + 16);
  v140 = (v2 + 8);
  v10 = v0[32];
  v11 = MEMORY[0x277D84F90];
  v148 = v1;
  v139 = result;
  v134 = v9;
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_4:
  v12 = 1;
  for (i = v9; ; i = v8 + 1)
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[4];
    (*v143)(v14, v12, 1, v15);
    sub_25417E6C8(v14, v13, &qword_27F5B9268, &qword_2542545B8);
    if ((*v142)(v13, 1, v15) == 1)
    {

      goto LABEL_89;
    }

    v16 = v0[15];
    v17 = *(v0[19] + *(v157 + 48));
    result = (*v141)(v0[17]);
    v18 = *(v1 + 16);
    v19 = *(v17 + 16);
    if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
    {
      goto LABEL_100;
    }

    v135 = *(v1 + 16);
    result = sub_2541B09E0(0, (v18 * v19) & ~((v18 * v19) >> 63), 0, MEMORY[0x277D84F90]);
    v20 = result;
    v21 = *(v17 + 16);
    v170 = v11;
    if (v21)
    {
      v22 = *(v0[3] + *(v144 + 68));
      if (v22 < 0)
      {
        goto LABEL_101;
      }

      v23 = 0;
      v145 = v17;
      v146 = v17 + 32;
      v150 = v1 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v137 = *(v0[3] + *(v144 + 68));
      v138 = *(v17 + 16);
      while (1)
      {
        if (v23 >= *(v17 + 16))
        {
          goto LABEL_97;
        }

        if (*(v1 + 16) >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = *(v1 + 16);
        }

        if (!v22 || !v24)
        {
          goto LABEL_13;
        }

        v147 = v23;
        v25 = (v146 + 16 * v23);
        v27 = *v25;
        v26 = v25[1];
        sub_254140660(*v25, v26);
        v28 = v26 >> 62;
        v164 = v26;
        v167 = v27;
        v29 = BYTE6(v26);
        v30 = __OFSUB__(HIDWORD(v27), v27);
        v152 = v30;
        v151 = HIDWORD(v27) - v27;
        v31 = v0[14];
        v32 = v0[9];
        v33 = v0[7];
        v159 = *(v149 + 72);

        sub_25417C110(v150, v31, type metadata accessor for LubyRackoffEncryptionKey);
        v158 = *v161;
        result = (*v161)(v32, v31, v33);
        v153 = v29;
        if (v28 <= 1)
        {
          break;
        }

        if (v28 != 3)
        {
          v36 = *(v167 + 16);
          v35 = *(v167 + 24);
          v37 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v37)
          {
            goto LABEL_98;
          }

          goto LABEL_29;
        }

LABEL_30:
        v38 = v0[12];
        v39 = v0[9];
        sub_25424D9C8();
        if (v10)
        {

          sub_254134D04(v167, v164);
          swift_bridgeObjectRelease_n();
          v112 = v0[17];
          v113 = v0[15];
          sub_25417C0B0(v0[14], type metadata accessor for LubyRackoffEncryptionKey);
          (*v140)(v112, v113);

          v115 = v0[26];
          v114 = v0[27];
          v116 = v0[25];
          v118 = v0[21];
          v117 = v0[22];
          v120 = v0[19];
          v119 = v0[20];
          v122 = v0[17];
          v121 = v0[18];
          v162 = v0[14];
          v165 = v0[12];
          v168 = v0[9];
          v172 = v0[6];

          v123 = v0[1];

          return v123();
        }

        v40 = v0[12];
        v41 = sub_25424D9D8();
        v43 = v42;
        v156 = *v160;
        (*v160)(v0[12], v0[10]);
        v45 = *(v20 + 2);
        v44 = *(v20 + 3);
        if (v45 >= v44 >> 1)
        {
          v20 = sub_2541B09E0((v44 > 1), v45 + 1, 1, v20);
        }

        sub_25417C0B0(v0[14], type metadata accessor for LubyRackoffEncryptionKey);
        *(v20 + 2) = v45 + 1;
        v46 = &v20[16 * v45];
        *(v46 + 4) = v41;
        *(v46 + 5) = v43;
        v47 = v24 - 1;
        if (v24 != 1)
        {
          v48 = v150 + v159;
          while (1)
          {
            v49 = v0[14];
            v50 = v0[9];
            v51 = v0[7];
            sub_25417C110(v48, v49, type metadata accessor for LubyRackoffEncryptionKey);
            result = v158(v50, v49, v51);
            if (v28 <= 1)
            {
              break;
            }

            if (v28 == 2)
            {
              v54 = *(v167 + 16);
              v53 = *(v167 + 24);
              v37 = __OFSUB__(v53, v54);
              v52 = v53 - v54;
              if (v37)
              {
                goto LABEL_98;
              }

LABEL_41:
              if ((v52 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_93;
              }
            }

            v55 = v0[12];
            v56 = v0[9];
            sub_25424D9C8();
            v57 = v0[12];
            v58 = sub_25424D9D8();
            v60 = v59;
            v156(v0[12], v0[10]);
            v62 = *(v20 + 2);
            v61 = *(v20 + 3);
            if (v62 >= v61 >> 1)
            {
              v20 = sub_2541B09E0((v61 > 1), v62 + 1, 1, v20);
            }

            sub_25417C0B0(v0[14], type metadata accessor for LubyRackoffEncryptionKey);
            *(v20 + 2) = v62 + 1;
            v63 = &v20[16 * v62];
            *(v63 + 4) = v58;
            *(v63 + 5) = v60;
            v48 += v159;
            if (!--v47)
            {
              goto LABEL_12;
            }
          }

          v52 = v153;
          if (v28)
          {
            v52 = v151;
            if (v152)
            {
              goto LABEL_99;
            }
          }

          goto LABEL_41;
        }

LABEL_12:
        sub_254134D04(v167, v164);
        v1 = v148;

        v10 = 0;
        v17 = v145;
        v22 = v137;
        v21 = v138;
        v23 = v147;
LABEL_13:
        if (++v23 == v21)
        {
          goto LABEL_46;
        }
      }

      v34 = v29;
      if (v28)
      {
        v34 = v151;
        if (v152)
        {
          goto LABEL_99;
        }
      }

LABEL_29:
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      goto LABEL_30;
    }

LABEL_46:

    if (!v135)
    {
      goto LABEL_103;
    }

    v64 = *(v0[3] + *(v144 + 68)) / v135;
    if (!v64)
    {
      goto LABEL_104;
    }

    v65 = *(v20 + 2);
    if (v64 >= 1 && v65 != 0)
    {
      break;
    }

LABEL_53:
    (*v140)(v0[17], v0[15]);

    v11 = v170;
    v1 = v148;
    v7 = v139;
    v9 = v134;
    v8 = i;
    if (i == v134)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v8 >= *(v7 + 16))
    {
      goto LABEL_102;
    }

    sub_254132DF4(v7 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v8, v0[18], &qword_27F5B90E8, &qword_2542544F8);
    v12 = 0;
  }

  v67 = 0;
  while (1)
  {
    v68 = v67 + v64;
    v69 = __OFADD__(v67, v64) ? ((v67 + v64) >> 63) ^ 0x8000000000000000 : v67 + v64;
    if (__OFADD__(v67, v64))
    {
      break;
    }

    v70 = *(v20 + 2);
    if (v70 < v68)
    {
      v68 = *(v20 + 2);
    }

    v71 = v68 - v67;
    if (v68 < v67)
    {
      goto LABEL_95;
    }

    if (v67 < 0)
    {
      goto LABEL_96;
    }

    if (v70 == v71)
    {

      v72 = v20;
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
      if (v68 != v67)
      {
        if (v71 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
          v72 = swift_allocObject();
          v79 = _swift_stdlib_malloc_size(v72);
          v80 = v79 - 32;
          if (v79 < 32)
          {
            v80 = v79 - 17;
          }

          v72[2] = v71;
          v72[3] = 2 * (v80 >> 4);
        }

        swift_arrayInitWithCopy();
      }
    }

    v73 = v0[6];
    v74 = *(v157 + 48);
    (*v154)(v73, v0[17], v0[15]);
    *(v73 + v74) = v72;
    v75 = v170;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_2541B0F18(0, v170[2] + 1, 1, v170);
    }

    v77 = v75[2];
    v76 = v75[3];
    if (v77 >= v76 >> 1)
    {
      v75 = sub_2541B0F18(v76 > 1, v77 + 1, 1, v75);
    }

    v78 = v0[6];
    v75[2] = v77 + 1;
    v170 = v75;
    result = sub_25417E6C8(v78, v75 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v77, &qword_27F5B90E8, &qword_2542544F8);
    v67 = v69;
    if (v69 >= v65)
    {
      goto LABEL_53;
    }
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_254154FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v9 + 304) = v44;
  *(v9 + 312) = v8;
  *(v9 + 934) = a8;
  *(v9 + 933) = a7;
  *(v9 + 932) = a6;
  *(v9 + 288) = a4;
  *(v9 + 296) = a5;
  *(v9 + 272) = a2;
  *(v9 + 280) = a3;
  *(v9 + 264) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  *(v9 + 320) = v10;
  v11 = *(v10 - 8);
  *(v9 + 328) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v13 = type metadata accessor for SomeEvent();
  *(v9 + 360) = v13;
  v14 = *(v13 - 8);
  *(v9 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9100, &qword_254254520) - 8) + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9108, &qword_254254528);
  *(v9 + 392) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530) - 8) + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v9 + 424) = v20;
  v21 = *(v20 - 8);
  *(v9 + 432) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v23 = sub_25424D8B8();
  *(v9 + 448) = v23;
  v24 = *(v23 - 8);
  *(v9 + 456) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v9 + 480) = v26;
  v27 = *(v26 - 8);
  *(v9 + 488) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v9 + 504) = v29;
  v30 = *(v29 - 8);
  *(v9 + 512) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0) - 8) + 64) + 15;
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  v33 = type metadata accessor for CKQueryAsyncSequence();
  *(v9 + 552) = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  *(v9 + 560) = swift_task_alloc();
  v35 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v36 = sub_25424DAA8();
  *(v9 + 608) = v36;
  v37 = *(v36 - 8);
  *(v9 + 616) = v37;
  v38 = *(v37 + 64) + 15;
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  v39 = sub_25424D948();
  *(v9 + 672) = v39;
  v40 = *(v39 - 8);
  *(v9 + 680) = v40;
  v41 = *(v40 + 64) + 15;
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541555E4, 0, 0);
}

uint64_t sub_2541555E4()
{
  v153 = v0;
  v1 = *(v0 + 312);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (((*(v3 + 24))(v2, v3) & 1) == 0)
  {
    sub_25424E1E8();
    v15 = *(v0 + 768);
    v16 = *(v0 + 760);
    v17 = *(v0 + 680);
    v18 = *(v0 + 672);
    v19 = *(v0 + 664);
    v20 = *(v0 + 600);
    v21 = *(v0 + 312);
    sub_25424D938();
    sub_25421ACE8(v19);
    sub_25417C110(v21, v20, type metadata accessor for EventQuery);
    v22 = *(v17 + 16);
    *(v0 + 784) = v22;
    *(v0 + 792) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v151 = v22;
    v22(v16, v15, v18);
    v23 = sub_25424DA88();
    v24 = sub_25424E408();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 760);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    v29 = *(v0 + 664);
    v30 = *(v0 + 616);
    v31 = *(v0 + 608);
    v32 = *(v0 + 600);
    if (v25)
    {
      v149 = *(v0 + 608);
      v33 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v152[0] = v145;
      *v33 = 136446466;
      v147 = v29;
      v34 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v142 = v23;
      v35 = sub_25424EA58();
      v139 = v24;
      v37 = v36;
      sub_25417C0B0(v32, type metadata accessor for EventQuery);
      v38 = sub_2542203C4(v35, v37, v152);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_25424EA58();
      v41 = v40;
      v42 = *(v27 + 8);
      v42(v26, v28);
      v43 = sub_2542203C4(v39, v41, v152);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_254124000, v142, v139, "[%{public}s] Beginning subquery %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v145, -1, -1);
      MEMORY[0x259C07330](v33, -1, -1);

      v44 = *(v30 + 8);
      v44(v147, v149);
    }

    else
    {

      v42 = *(v27 + 8);
      v42(v26, v28);
      sub_25417C0B0(v32, type metadata accessor for EventQuery);
      v44 = *(v30 + 8);
      v44(v29, v31);
    }

    v150 = v42;
    *(v0 + 800) = v42;
    v45 = *(v0 + 752);
    v46 = *(v0 + 672);
    v47 = *(v0 + 312);
    v48 = *(v0 + 934);
    v49 = *(v0 + 933);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = type metadata accessor for EventQuery.Configuration(0);
    *(v0 + 808) = v52;
    v53 = *(v52 + 24);
    *(v0 + 928) = v53;
    v54 = v47 + v53;
    v151(v45, v54, v46);
    v55 = sub_25417C454(v45, v51, 0, v48, v49 ^ 1u, v49);
    v56 = sub_25417DE78(v45, v50);
    v146 = v54;
    v148 = v52;
    if (v56)
    {
      v57 = v56;
      if (v55 >> 62)
      {
        v113 = sub_25424E868();
        if (v113 < 0)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v113, v115, v116, v112, v114);
        }
      }

      sub_2541D2080(0, 0, v57);
    }

    v58 = *(v0 + 752);
    v59 = *(v0 + 744);
    v60 = *(v0 + 672);
    v61 = *(v0 + 656);
    sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
    v62 = sub_25424DF88();

    v63 = [objc_opt_self() andPredicateWithSubpredicates_];

    sub_25421ACE8(v61);
    v151(v59, v58, v60);
    v64 = v63;
    v65 = sub_25424DA88();
    v66 = sub_25424E418();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 744);
    v69 = *(v0 + 680);
    v70 = *(v0 + 672);
    v71 = *(v0 + 656);
    v143 = *(v0 + 616);
    v72 = *(v0 + 608);
    if (v67)
    {
      v140 = *(v0 + 608);
      v73 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v152[0] = v134;
      *v73 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v137 = v44;
      v74 = sub_25424EA58();
      v132 = v71;
      v75 = v64;
      v77 = v76;
      v136 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v150(v68, v70);
      v78 = sub_2542203C4(v74, v77, v152);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = [v75 debugDescription];
      v80 = sub_25424DCB8();
      v82 = v81;

      v83 = v80;
      v64 = v75;
      v84 = sub_2542203C4(v83, v82, v152);

      *(v73 + 14) = v84;
      _os_log_impl(&dword_254124000, v65, v66, "[%s] Final predicate: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v134, -1, -1);
      MEMORY[0x259C07330](v73, -1, -1);

      v85 = v143 + 8;
      v137(v132, v140);
    }

    else
    {

      v136 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v150(v68, v70);
      v85 = v143 + 8;
      v44(v71, v72);
    }

    *(v0 + 816) = v85;
    v125 = *(v0 + 768);
    v121 = *(v0 + 672);
    v122 = *(v0 + 752);
    v86 = *(v0 + 560);
    v87 = *(v0 + 552);
    v128 = *(v0 + 544);
    v141 = *(v0 + 520);
    v135 = *(v0 + 496);
    v144 = *(v0 + 488);
    v138 = *(v0 + 480);
    v126 = *(v0 + 456);
    v127 = *(v0 + 448);
    v129 = *(v0 + 472);
    v130 = *(v0 + 432);
    v131 = *(v0 + 440);
    v133 = *(v0 + 424);
    v88 = *(v0 + 312);
    v118 = *(v0 + 932);
    v117 = *(v0 + 296);
    v119 = *(v0 + 280);
    v120 = *(v0 + 288);
    v123 = *(v0 + 264);
    v124 = *(v0 + 272);
    sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
    v89 = v64;
    v90 = sub_25424E538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_254254370;
    v92 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v93 = sub_25424DCA8();
    v94 = [v92 initWithKey:v93 ascending:0];

    *(v91 + 32) = v94;
    sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
    v95 = sub_25424DF88();

    [v90 setSortDescriptors_];

    *(v0 + 824) = v136;
    v150(v122, v121);
    v96 = sub_254160BA8(v117, v118 & 1, v88, v120);
    LOBYTE(v94) = v97;
    v151(v86 + v87[7], v146, v121);
    v151(v86 + v87[8], v125, v121);
    v98 = v88 + *(v148 + 60);
    v99 = *v98;
    LOBYTE(v98) = *(v98 + 8);
    v100 = *(v88 + *(v148 + 64));
    *(v0 + 832) = v100;
    *v86 = v123;
    *(v86 + 8) = 0u;
    *(v86 + 24) = v124;
    *(v86 + 32) = v90;
    *(v86 + v87[9]) = &unk_286632F10;
    v101 = v86 + v87[10];
    *v101 = v96;
    *(v101 + 8) = v94 & 1;
    v102 = v86 + v87[11];
    *v102 = v99;
    *(v102 + 8) = v98;
    *(v86 + v87[12]) = v100;
    v103 = *(v126 + 56);
    *(v0 + 840) = v103;
    *(v0 + 848) = (v126 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v103(v128, 1, 1, v127);
    v104 = MEMORY[0x277D84F90];
    *(v0 + 240) = MEMORY[0x277D84F90];
    v105 = v123;
    swift_unknownObjectRetain();
    v106 = v124;
    sub_25424D898();
    v107 = swift_task_alloc();
    *(v107 + 16) = v86;
    *(v107 + 24) = v129;
    sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
    (*(v130 + 104))(v131, *MEMORY[0x277D858A0], v133);
    sub_25424E278();

    v108 = *(v126 + 8);
    *(v0 + 856) = v108;
    *(v0 + 864) = (v126 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v129, v127);
    sub_25424E178();
    (*(v144 + 8))(v135, v138);
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 872) = v104;
    v109 = *(MEMORY[0x277D858B8] + 4);
    v110 = swift_task_alloc();
    *(v0 + 912) = v110;
    *v110 = v0;
    v110[1] = sub_2541569B4;
    v111 = *(v0 + 520);
    v112 = *(v0 + 504);
    v113 = v0 + 248;
    v114 = v0 + 256;
    v115 = 0;
    v116 = 0;

    return MEMORY[0x2822005A8](v113, v115, v116, v112, v114);
  }

  v4 = *(v0 + 932);
  v5 = swift_task_alloc();
  *(v0 + 776) = v5;
  *v5 = v0;
  v5[1] = sub_2541563D4;
  v6 = *(v0 + 312);
  v7 = *(v0 + 934);
  v8 = *(v0 + 933);
  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  v13 = *(v0 + 264);
  v155 = *(v0 + 304);

  return sub_25415B098(v13, v11, v12, v9, v10, v4 & 1, v8, v7);
}

uint64_t sub_2541563D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v48 = *v1;

  v4 = v2[96];
  v5 = v2[95];
  v6 = v2[94];
  v7 = v2[93];
  v8 = v2[92];
  v9 = v2[91];
  v10 = v2[90];
  v11 = v2[89];
  v12 = v2[88];
  v18 = v2[87];
  v19 = v2[86];
  v20 = v2[83];
  v21 = v2[82];
  v22 = v2[81];
  v23 = v2[80];
  v24 = v2[79];
  v25 = v2[78];
  v26 = v2[75];
  v27 = v2[74];
  v28 = v2[73];
  v29 = v2[72];
  v30 = v2[71];
  v31 = v2[70];
  v32 = v2[68];
  v33 = v2[67];
  v34 = v2[66];
  v35 = v2[65];
  v36 = v2[62];
  v37 = v2[59];
  v38 = v2[58];
  v39 = v2[55];
  v40 = v2[52];
  v41 = v2[51];
  v43 = v2[50];
  v44 = v2[48];
  v45 = v2[47];
  v46 = v2[44];
  v47 = v2[43];
  v13 = v2[42];

  v15 = *(v48 + 8);
  if (!v42)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_2541569B4()
{
  v2 = *(*v1 + 912);
  v5 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v3 = sub_254158D38;
  }

  else
  {
    v3 = sub_254156AC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254156AC8()
{
  v489 = v0;
  v3 = v0 + 248;
  v2 = *(v0 + 248);
  if (v2)
  {
    v4 = *(v0 + 920);
    sub_25424E1E8();
    if (v4)
    {
      v5 = *(v0 + 872);
      v481 = *(v0 + 824);
      v6 = *(v0 + 800);
      v7 = *(v0 + 768);
      v8 = *(v0 + 672);
      v9 = *(v0 + 560);
      v10 = v2;
      v11 = *(v0 + 544);
      v12 = *(v0 + 520);
      v14 = *(v0 + 504);
      v13 = *(v0 + 512);

      (*(v13 + 8))(v12, v14);
      sub_254132E5C(v11, &unk_27F5BA1B0, qword_2542544A0);
      v6(v7, v8);
LABEL_6:
      sub_25417C0B0(v9, type metadata accessor for CKQueryAsyncSequence);

      v24 = *(v0 + 768);
      v25 = *(v0 + 760);
      v26 = *(v0 + 752);
      v27 = *(v0 + 744);
      v28 = *(v0 + 736);
      v29 = *(v0 + 728);
      v30 = *(v0 + 720);
      v31 = *(v0 + 712);
      v32 = *(v0 + 704);
      v33 = *(v0 + 696);
      v322 = *(v0 + 688);
      v324 = *(v0 + 664);
      v326 = *(v0 + 656);
      v328 = *(v0 + 648);
      v330 = *(v0 + 640);
      v332 = *(v0 + 632);
      v334 = *(v0 + 624);
      v336 = *(v0 + 600);
      v338 = *(v0 + 592);
      v340 = *(v0 + 584);
      v343 = *(v0 + 576);
      v346 = *(v0 + 568);
      v349 = *(v0 + 560);
      v352 = *(v0 + 544);
      v355 = *(v0 + 536);
      v358 = *(v0 + 528);
      v362 = *(v0 + 520);
      v366 = *(v0 + 496);
      v368 = *(v0 + 472);
      v375 = *(v0 + 464);
      v382 = *(v0 + 440);
      v392 = *(v0 + 416);
      v407 = *(v0 + 408);
      v421 = *(v0 + 400);
      v434 = *(v0 + 384);
      v448 = *(v0 + 376);
      v463 = *(v0 + 352);
      v476 = *(v0 + 344);
      v482 = *(v0 + 336);

      v34 = *(v0 + 8);

      return v34();
    }

    v36 = *(v0 + 904);
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    v38 = *(v0 + 384);
    v39 = *(v0 + 312);
    sub_2541612EC(v2, v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    if ((*(*(v40 - 8) + 48))(v38, 1, v40) == 1)
    {
      v41 = *(v0 + 384);

      sub_254132E5C(v41, &qword_27F5B9100, &qword_254254520);
      goto LABEL_37;
    }

    v365 = v2;
    v485 = v37;
    v475 = v0 + 248;
    v422 = *(v0 + 736);
    v42 = *(v0 + 680);
    v43 = *(v0 + 672);
    v44 = *(v0 + 456);
    v45 = *(v0 + 448);
    v408 = *(v0 + 416);
    v449 = *(v0 + 464);
    v464 = *(v0 + 408);
    v47 = *(v0 + 392);
    v46 = *(v0 + 400);
    v48 = *(v0 + 384);
    v435 = *(v0 + 368);
    v483 = *(v0 + 360);
    v393 = *(v40 + 64);
    v49 = *(v47 + 48);
    v369 = *(v40 + 48);
    v376 = *(v47 + 64);
    sub_25417E6C8(v48, v46, &qword_27F5B9110, &qword_254254530);
    v50 = *(v42 + 32);
    v50(v46 + v49, v48 + v369, v43);
    v51 = *(v44 + 32);
    v51(v46 + v376, v48 + v393, v45);
    v52 = *(v47 + 48);
    v53 = *(v47 + 64);
    sub_25417E6C8(v46, v408, &qword_27F5B9110, &qword_254254530);
    v50(v422, v46 + v52, v43);
    v51(v449, v46 + v53, v45);
    sub_254132DF4(v408, v464, &qword_27F5B9110, &qword_254254530);
    if ((*(v435 + 48))(v464, 1, v483) == 1)
    {
      v54 = *(v0 + 864);
      v55 = *(v0 + 856);
      v56 = *(v0 + 824);
      v57 = *(v0 + 800);
      v58 = *(v0 + 736);
      v59 = *(v0 + 672);
      v60 = *(v0 + 464);
      v61 = *(v0 + 448);
      v62 = *(v0 + 416);
      v484 = *(v0 + 408);

      v55(v60, v61);
      v57(v58, v59);
      sub_254132E5C(v62, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v484, &qword_27F5B9110, &qword_254254530);
LABEL_36:
      v3 = v475;
      v37 = v485;
LABEL_37:
      *(v0 + 904) = v37;
      v197 = *(MEMORY[0x277D858B8] + 4);
      v198 = swift_task_alloc();
      *(v0 + 912) = v198;
      *v198 = v0;
      v198[1] = sub_2541569B4;
      v199 = *(v0 + 520);
      v178 = *(v0 + 504);
      v179 = v0 + 256;
      v175 = v3;
      v176 = 0;
      v177 = 0;

      return MEMORY[0x2822005A8](v175, v176, v177, v178, v179);
    }

    v63 = *(v0 + 312);
    sub_25417C178(*(v0 + 408), *(v0 + 376), type metadata accessor for SomeEvent);
    sub_2541DA834((v0 + 56));
    v64 = *(v0 + 80);
    v65 = *(v0 + 88);
    v66 = __swift_project_boxed_opaque_existential_1((v0 + 56), v64);
    *(v0 + 40) = v64;
    v67 = *(v65 + 8);
    *(v0 + 48) = v67;
    v480 = (v0 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v64 - 8) + 16))(boxed_opaque_existential_1, v66, v64);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v69 = sub_25417A418(boxed_opaque_existential_1, v63, v64, v67);
    v70 = *(v0 + 792);
    v71 = *(v0 + 784);
    v72 = *(v0 + 736);
    v73 = *(v0 + 672);
    v74 = *(v0 + 312);
    if ((v69 & 1) == 0)
    {
      v101 = *(v0 + 728);
      v102 = *(v0 + 592);
      sub_25421ACE8(*(v0 + 648));
      sub_25417C110(v74, v102, type metadata accessor for EventQuery);
      v71(v101, v72, v73);
      v466 = (v0 + 96);
      sub_254140708(v480, v0 + 96);
      v103 = sub_25424DA88();
      v104 = sub_25424E408();
      v105 = os_log_type_enabled(v103, v104);
      v437 = *(v0 + 816);
      v451 = *(v0 + 824);
      if (v105)
      {
        v106 = *(v0 + 808);
        v371 = *(v0 + 800);
        v107 = *(v0 + 728);
        v108 = *(v0 + 672);
        v424 = *(v0 + 648);
        v395 = *(v0 + 616);
        v410 = *(v0 + 608);
        v109 = *(v0 + 592);
        v110 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v488[0] = v384;
        *v110 = 136446722;
        v111 = *(v106 + 24);
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v112 = sub_25424EA58();
        v114 = v113;
        sub_25417C0B0(v109, type metadata accessor for EventQuery);
        v115 = sub_2542203C4(v112, v114, v488);

        *(v110 + 4) = v115;
        *(v110 + 12) = 2082;
        v116 = sub_25424EA58();
        v118 = v117;
        v371(v107, v108);
        v119 = sub_2542203C4(v116, v118, v488);

        *(v110 + 14) = v119;
        *(v110 + 22) = 2080;
        __swift_project_boxed_opaque_existential_1(v466, *(v0 + 120));
        DynamicType = swift_getDynamicType();
        v121 = *(v0 + 128);
        *(v0 + 208) = DynamicType;
        *(v0 + 216) = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
        v122 = sub_25424DD08();
        v124 = v123;
        __swift_destroy_boxed_opaque_existential_1(v466);
        v125 = sub_2542203C4(v122, v124, v488);

        *(v110 + 24) = v125;
        _os_log_impl(&dword_254124000, v103, v104, "[%{public}s] Ignoring record that does not match query: %{public}s, %s", v110, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v384, -1, -1);
        MEMORY[0x259C07330](v110, -1, -1);

        (*(v395 + 8))(v424, v410);
      }

      else
      {
        v156 = *(v0 + 800);
        v157 = *(v0 + 728);
        v158 = *(v0 + 672);
        v159 = *(v0 + 648);
        v160 = *(v0 + 616);
        v161 = *(v0 + 608);
        v162 = *(v0 + 592);

        __swift_destroy_boxed_opaque_existential_1(v466);
        v156(v157, v158);
        sub_25417C0B0(v162, type metadata accessor for EventQuery);
        (*(v160 + 8))(v159, v161);
      }

      v163 = *(v0 + 864);
      v164 = *(v0 + 856);
      v453 = *(v0 + 800);
      v469 = *(v0 + 824);
      v165 = *(v0 + 736);
      v166 = *(v0 + 672);
      v167 = *(v0 + 464);
      v168 = *(v0 + 448);
      v169 = *(v0 + 416);
      v170 = *(v0 + 376);
      v171 = *(v0 + 312);
      sub_254163628(17);

      sub_25417C0B0(v170, type metadata accessor for SomeEvent);
      v164(v167, v168);
      v453(v165, v166);
      sub_254132E5C(v169, &qword_27F5B9110, &qword_254254530);
      __swift_destroy_boxed_opaque_existential_1(v480);
      goto LABEL_36;
    }

    v75 = *(v0 + 720);
    v76 = *(v0 + 584);
    sub_25421ACE8(*(v0 + 640));
    sub_25417C110(v74, v76, type metadata accessor for EventQuery);
    v71(v75, v72, v73);
    v465 = (v0 + 136);
    sub_254140708(v480, v0 + 136);
    v77 = sub_25424DA88();
    v78 = sub_25424E408();
    v79 = os_log_type_enabled(v77, v78);
    v436 = *(v0 + 816);
    v450 = *(v0 + 824);
    if (v79)
    {
      v80 = *(v0 + 808);
      v370 = *(v0 + 800);
      v81 = *(v0 + 720);
      v82 = *(v0 + 672);
      v423 = *(v0 + 640);
      v394 = *(v0 + 616);
      v409 = *(v0 + 608);
      v83 = *(v0 + 584);
      v84 = swift_slowAlloc();
      v383 = swift_slowAlloc();
      v488[0] = v383;
      *v84 = 136446722;
      v85 = *(v80 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v86 = sub_25424EA58();
      v88 = v87;
      sub_25417C0B0(v83, type metadata accessor for EventQuery);
      v89 = sub_2542203C4(v86, v88, v488);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2082;
      v90 = sub_25424EA58();
      v92 = v91;
      v370(v81, v82);
      v93 = sub_2542203C4(v90, v92, v488);

      *(v84 + 14) = v93;
      *(v84 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v465, *(v0 + 160));
      v94 = swift_getDynamicType();
      v95 = *(v0 + 168);
      *(v0 + 224) = v94;
      *(v0 + 232) = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
      v96 = sub_25424DD08();
      v98 = v97;
      __swift_destroy_boxed_opaque_existential_1(v465);
      v99 = sub_2542203C4(v96, v98, v488);

      *(v84 + 24) = v99;
      _os_log_impl(&dword_254124000, v77, v78, "[%{public}s] Record contains an event that matches query: %{public}s: %s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v383, -1, -1);
      MEMORY[0x259C07330](v84, -1, -1);

      v100 = *(v394 + 8);
      v100(v423, v409);
    }

    else
    {
      v126 = *(v0 + 800);
      v127 = *(v0 + 720);
      v128 = *(v0 + 672);
      v129 = *(v0 + 640);
      v130 = *(v0 + 616);
      v131 = *(v0 + 608);
      v132 = *(v0 + 584);

      __swift_destroy_boxed_opaque_existential_1(v465);
      v126(v127, v128);
      sub_25417C0B0(v132, type metadata accessor for EventQuery);
      v100 = *(v130 + 8);
      v100(v129, v131);
    }

    v133 = *(v0 + 536);
    v134 = *(v0 + 448);
    v135 = *(v0 + 456);
    sub_254132DF4(*(v0 + 544), v133, &unk_27F5BA1B0, qword_2542544A0);
    v137 = *(v135 + 48);
    v1 = (v135 + 48);
    v136 = v137;
    if (v137(v133, 1, v134) == 1)
    {
      v467 = *(v0 + 872);
      v377 = *(v0 + 840);
      v385 = *(v0 + 848);
      v452 = *(v0 + 792);
      v411 = *(v0 + 736);
      v425 = *(v0 + 784);
      v396 = *(v0 + 672);
      v138 = *(v0 + 544);
      v139 = *(v0 + 536);
      v140 = *(v0 + 456);
      v141 = *(v0 + 464);
      v142 = *(v0 + 448);
      v438 = *(v0 + 376);
      v143 = *(v0 + 352);
      v144 = *(v0 + 320);
      sub_254132E5C(v138, &unk_27F5BA1B0, qword_2542544A0);
      sub_254132E5C(v139, &unk_27F5BA1B0, qword_2542544A0);
      (*(v140 + 16))(v138, v141, v142);
      v377(v138, 0, 1, v142);
      v145 = *(v144 + 48);
      v425(v143, v411, v396);
      sub_25417C110(v438, v143 + v145, type metadata accessor for SomeEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 872);
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_22:
        v148 = v1[2];
        v147 = v1[3];
        v468 = v148 + 1;
        if (v148 >= v147 >> 1)
        {
          v1 = sub_2541B0F3C(v147 > 1, v148 + 1, 1, v1);
        }

        v397 = *(v0 + 864);
        v149 = *(v0 + 856);
        v426 = *(v0 + 800);
        v439 = *(v0 + 824);
        v150 = *(v0 + 736);
        v151 = *(v0 + 672);
        v152 = *(v0 + 464);
        v153 = *(v0 + 448);
        v412 = *(v0 + 416);
        v154 = *(v0 + 376);
        v155 = *(v0 + 352);
LABEL_34:
        v454 = v155;
        v193 = *(v0 + 328);

        sub_25417C0B0(v154, type metadata accessor for SomeEvent);
        v149(v152, v153);
        v426(v150, v151);
        sub_254132E5C(v412, &qword_27F5B9110, &qword_254254530);
        v194 = v1;
        v1[2] = v468;
        sub_25417E6C8(v454, v1 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v148, &qword_27F5B90F8, &unk_25425CBB0);
        *(v0 + 240) = v1;
        v195 = *(v0 + 896);
        v196 = *(v0 + 888);
        v1 = *(v0 + 880);
LABEL_35:
        __swift_destroy_boxed_opaque_existential_1(v480);
        *(v0 + 896) = v195;
        *(v0 + 888) = v196;
        *(v0 + 880) = v1;
        *(v0 + 872) = v194;
        goto LABEL_36;
      }

LABEL_79:
      v1 = sub_2541B0F3C(0, v1[2] + 1, 1, v1);
      goto LABEL_22;
    }

    v172 = *(v0 + 544);
    v173 = *(v0 + 528);
    v174 = *(v0 + 448);
    sub_254132E5C(*(v0 + 536), &unk_27F5BA1B0, qword_2542544A0);
    sub_254132DF4(v172, v173, &unk_27F5BA1B0, qword_2542544A0);
    v175 = v136(v173, 1, v174);
    if (v175 == 1)
    {
      __break(1u);
      return MEMORY[0x2822005A8](v175, v176, v177, v178, v179);
    }

    v180 = *(v0 + 864);
    v181 = *(v0 + 856);
    v182 = *(v0 + 528);
    v183 = *(v0 + 464);
    v184 = *(v0 + 448);
    v185 = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
    v181(v182, v184);
    v186 = *(v0 + 872);
    if (v185)
    {
      v187 = *(v0 + 792);
      v188 = *(v0 + 376);
      v189 = *(v0 + 344);
      v190 = *(*(v0 + 320) + 48);
      (*(v0 + 784))(v189, *(v0 + 736), *(v0 + 672));
      sub_25417C110(v188, v189 + v190, type metadata accessor for SomeEvent);
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 872);
      if ((v191 & 1) == 0)
      {
        v1 = sub_2541B0F3C(0, v1[2] + 1, 1, *(v0 + 872));
      }

      v148 = v1[2];
      v192 = v1[3];
      v468 = v148 + 1;
      if (v148 >= v192 >> 1)
      {
        v1 = sub_2541B0F3C(v192 > 1, v148 + 1, 1, v1);
      }

      v398 = *(v0 + 864);
      v149 = *(v0 + 856);
      v426 = *(v0 + 800);
      v440 = *(v0 + 824);
      v150 = *(v0 + 736);
      v151 = *(v0 + 672);
      v152 = *(v0 + 464);
      v153 = *(v0 + 448);
      v412 = *(v0 + 416);
      v154 = *(v0 + 376);
      v155 = *(v0 + 344);
      goto LABEL_34;
    }

    v200 = *(v0 + 792);
    v201 = *(v0 + 932);
    (*(v0 + 784))(*(v0 + 712), *(v0 + 312) + *(v0 + 928), *(v0 + 672));
    v202 = sub_2541FA6F8(v186);
    if (v201)
    {
      v203 = *(v0 + 296);
      v204 = *(v0 + 896);
    }

    else
    {
      v204 = *(v0 + 896);
      v205 = *(v0 + 296);
      v203 = v205 - v204;
      if (__OFSUB__(v205, v204))
      {
        goto LABEL_81;
      }
    }

    v206 = *(v0 + 824);
    v207 = *(v0 + 800);
    v201 = *(v0 + 712);
    v208 = *(v0 + 672);
    v209 = *(v0 + 544);
    v210 = *(v0 + 312);
    v211 = sub_2541637DC(v201, v202, v203, *(v0 + 932) & 1, *(v0 + 304));
    v455 = v212;

    v207(v201, v208);
    sub_254132E5C(v209, &unk_27F5BA1B0, qword_2542544A0);
    v1 = (v204 + v211);
    if (!__OFADD__(v204, v211))
    {
      v213 = *(v0 + 848);
      (*(v0 + 840))(*(v0 + 544), 1, 1, *(v0 + 448));
      v214 = *(v0 + 240);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v215 = v214[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_2541B0F3C(0, v215, 1, v214);
          *(v0 + 240) = v214;
        }

        sub_2541D21B8(0, v215, 0);
      }

      else
      {
        v216 = sub_2541ED0AC(0, v214[3] >> 1);

        v214 = v216;
      }

      v470 = v214;
      if ((*(v0 + 932) & 1) == 0 && v1 == *(v0 + 296))
      {
        v217 = *(v0 + 576);
        v218 = *(v0 + 312);
        sub_25421ACE8(*(v0 + 632));
        sub_25417C110(v218, v217, type metadata accessor for EventQuery);
        v219 = sub_25424DA88();
        v220 = sub_25424E408();
        v221 = os_log_type_enabled(v219, v220);
        v441 = *(v0 + 856);
        v456 = *(v0 + 864);
        v222 = *(v0 + 824);
        v427 = *(v0 + 816);
        if (v221)
        {
          v223 = *(v0 + 808);
          v372 = *(v0 + 736);
          v378 = *(v0 + 800);
          v224 = *(v0 + 672);
          v347 = *(v0 + 608);
          v350 = *(v0 + 632);
          v225 = *(v0 + 576);
          v413 = *(v0 + 520);
          v386 = *(v0 + 512);
          v399 = *(v0 + 504);
          v353 = *(v0 + 448);
          v356 = *(v0 + 464);
          v359 = *(v0 + 416);
          v341 = *(v0 + 296);
          v344 = *(v0 + 376);
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          v488[0] = v227;
          *v226 = 136446466;
          v228 = *(v223 + 24);
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v229 = sub_25424EA58();
          v231 = v230;
          sub_25417C0B0(v225, type metadata accessor for EventQuery);
          v232 = sub_2542203C4(v229, v231, v488);

          *(v226 + 4) = v232;
          *(v226 + 12) = 2048;
          *(v226 + 14) = v341;
          _os_log_impl(&dword_254124000, v219, v220, "[%{public}s] Reached subquery limit: %ld", v226, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v227);
          MEMORY[0x259C07330](v227, -1, -1);
          MEMORY[0x259C07330](v226, -1, -1);

          v100(v350, v347);
          sub_25417C0B0(v344, type metadata accessor for SomeEvent);
          v441(v356, v353);
          v378(v372, v224);
          sub_254132E5C(v359, &qword_27F5B9110, &qword_254254530);
          (*(v386 + 8))(v413, v399);
        }

        else
        {
          v379 = *(v0 + 736);
          v388 = *(v0 + 800);
          v373 = *(v0 + 672);
          v257 = *(v0 + 632);
          v258 = *(v0 + 608);
          v259 = *(v0 + 576);
          v417 = *(v0 + 520);
          v260 = *(v0 + 512);
          v403 = *(v0 + 504);
          v261 = *(v0 + 464);
          v360 = *(v0 + 448);
          v363 = *(v0 + 416);
          v262 = *(v0 + 376);

          sub_25417C0B0(v259, type metadata accessor for EventQuery);
          v100(v257, v258);
          sub_25417C0B0(v262, type metadata accessor for SomeEvent);
          v441(v261, v360);
          v388(v379, v373);
          sub_254132E5C(v363, &qword_27F5B9110, &qword_254254530);
          (*(v260 + 8))(v417, v403);
        }

        __swift_destroy_boxed_opaque_existential_1(v480);
        v1 = *(v0 + 296);
        v15 = 1;
        goto LABEL_61;
      }

      v233 = *(v0 + 736);
      v234 = *(v0 + 672);
      if ((v455 & 1) == 0)
      {
        v251 = *(v0 + 864);
        v252 = *(v0 + 856);
        v416 = *(v0 + 800);
        v430 = *(v0 + 824);
        v253 = *(v0 + 512);
        v444 = *(v0 + 504);
        v458 = *(v0 + 520);
        v254 = *(v0 + 464);
        v255 = *(v0 + 448);
        v402 = *(v0 + 416);
        v256 = *(v0 + 376);

        sub_25417C0B0(v256, type metadata accessor for SomeEvent);
        v252(v254, v255);
        v416(v233, v234);
        sub_254132E5C(v402, &qword_27F5B9110, &qword_254254530);
        (*(v253 + 8))(v458, v444);
        __swift_destroy_boxed_opaque_existential_1(v480);
        v15 = 0;
LABEL_61:
        v18 = v1;
        v19 = v470;
        v3 = v0 + 248;
        v17 = v485;
        sub_25424E1E8();
        goto LABEL_62;
      }

      v414 = *(v0 + 848);
      v400 = *(v0 + 840);
      v428 = *(v0 + 784);
      v442 = *(v0 + 792);
      v235 = *(v0 + 544);
      v237 = *(v0 + 456);
      v236 = *(v0 + 464);
      v238 = *(v0 + 448);
      v457 = *(v0 + 376);
      v239 = *(v0 + 336);
      v240 = *(v0 + 320);
      sub_254132E5C(v235, &unk_27F5BA1B0, qword_2542544A0);
      (*(v237 + 16))(v235, v236, v238);
      v400(v235, 0, 1, v238);
      v241 = *(v240 + 48);
      v428(v239, v233, v234);
      sub_25417C110(v457, v239 + v241, type metadata accessor for SomeEvent);
      v201 = v470;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_55:
        v243 = *(v201 + 16);
        v242 = *(v201 + 24);
        if (v243 >= v242 >> 1)
        {
          v471 = sub_2541B0F3C(v242 > 1, v243 + 1, 1, v201);
        }

        else
        {
          v471 = v201;
        }

        v387 = *(v0 + 864);
        v244 = *(v0 + 856);
        v415 = *(v0 + 800);
        v429 = *(v0 + 824);
        v245 = *(v0 + 736);
        v246 = *(v0 + 672);
        v247 = *(v0 + 464);
        v248 = *(v0 + 448);
        v401 = *(v0 + 416);
        v249 = *(v0 + 376);
        v250 = *(v0 + 328);
        v443 = *(v0 + 336);

        sub_25417C0B0(v249, type metadata accessor for SomeEvent);
        v244(v247, v248);
        v415(v245, v246);
        sub_254132E5C(v401, &qword_27F5B9110, &qword_254254530);
        v194 = v471;
        *(v471 + 16) = v243 + 1;
        sub_25417E6C8(v443, v471 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v243, &qword_27F5B90F8, &unk_25425CBB0);
        *(v0 + 240) = v471;
        v196 = v1;
        v195 = v1;
        goto LABEL_35;
      }

LABEL_82:
      v201 = sub_2541B0F3C(0, *(v201 + 16) + 1, 1, v201);
      goto LABEL_55;
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
  v15 = 0;
  v16 = *(v0 + 920);
  v17 = *(v0 + 904);
  v18 = *(v0 + 888);
  v1 = *(v0 + 880);
  v19 = *(v0 + 872);
  sub_25424E1E8();
  if (v16)
  {
    v20 = *(v0 + 824);
    v21 = *(v0 + 800);
    v22 = *(v0 + 768);
    v23 = *(v0 + 672);
    v9 = *(v0 + 560);
    sub_254132E5C(*(v0 + 544), &unk_27F5BA1B0, qword_2542544A0);
    v21(v22, v23);
    goto LABEL_6;
  }

LABEL_62:
  if (*(v19 + 16))
  {
    v263 = v15;
  }

  else
  {
    v263 = 1;
  }

  v485 = v17;
  if ((v263 & 1) == 0)
  {
    v264 = *(v0 + 792);
    v265 = *(v0 + 932);
    (*(v0 + 784))(*(v0 + 704), *(v0 + 312) + *(v0 + 928), *(v0 + 672));
    v266 = sub_2541FA6F8(v19);

    v267 = *(v0 + 296);
    if ((v265 & 1) == 0)
    {
      v268 = __OFSUB__(v267, v18);
      v267 -= v18;
      if (v268)
      {
        goto LABEL_78;
      }
    }

    v1 = *(v0 + 824);
    v269 = *(v0 + 800);
    v270 = *(v0 + 704);
    v271 = *(v0 + 672);
    v272 = *(v0 + 312);
    v273 = sub_2541637DC(v270, v266, v267, *(v0 + 932) & 1, *(v0 + 304));

    v269(v270, v271);
    v480 = (v18 + v273);
    if (!__OFADD__(v18, v273))
    {
      goto LABEL_70;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v480 = v1;

LABEL_70:
  v274 = (v3 - 72);
  v418 = *(v0 + 832);
  v431 = (v3 - 56);
  v275 = *(v0 + 824);
  v404 = *(v0 + 928);
  v276 = *(v0 + 800);
  v277 = *(v0 + 792);
  v278 = *(v0 + 784);
  v279 = *(v0 + 696);
  v472 = *(v0 + 688);
  v477 = *(v0 + 768);
  v280 = *(v0 + 672);
  v445 = *(v0 + 624);
  v459 = *(v0 + 568);
  v389 = *(v0 + 312);
  v278(v279, v389 + v404, v280);
  v281 = type metadata accessor for EventsAsyncSequenceLogEvent();
  v282 = objc_allocWithZone(v281);
  v278(&v282[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v279, v280);
  v282[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 10;
  *&v282[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v282[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = v485;
  *&v282[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 176) = v282;
  *(v0 + 184) = v281;
  v283 = [(objc_super *)v274 init];
  v276(v279, v280);
  [v418 submitLogEvent_];

  v278(v279, v389 + v404, v280);
  v284 = objc_allocWithZone(v281);
  v278(&v284[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v279, v280);
  v284[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 12;
  *&v284[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = v480;
  *&v284[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v284[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 192) = v284;
  *(v0 + 200) = v281;
  v285 = [(objc_super *)v431 init];
  v276(v279, v280);
  [v418 submitLogEvent_];

  sub_25421ACE8(v445);
  sub_25417C110(v389, v459, type metadata accessor for EventQuery);
  v278(v472, v477, v280);
  v286 = sub_25424DA88();
  v287 = sub_25424E408();
  v288 = os_log_type_enabled(v286, v287);
  v486 = *(v0 + 824);
  v478 = *(v0 + 816);
  if (v288)
  {
    v289 = *(v0 + 808);
    v390 = *(v0 + 800);
    v460 = *(v0 + 768);
    v380 = *(v0 + 688);
    v290 = *(v0 + 672);
    v432 = *(v0 + 624);
    v405 = *(v0 + 616);
    v419 = *(v0 + 608);
    v291 = *(v0 + 568);
    v473 = *(v0 + 560);
    v446 = *(v0 + 544);
    v292 = swift_slowAlloc();
    v293 = swift_slowAlloc();
    v488[0] = v293;
    *v292 = 136446722;
    v294 = *(v289 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v295 = sub_25424EA58();
    v297 = v296;
    sub_25417C0B0(v291, type metadata accessor for EventQuery);
    v298 = sub_2542203C4(v295, v297, v488);

    *(v292 + 4) = v298;
    *(v292 + 12) = 2082;
    v299 = sub_25424EA58();
    v301 = v300;
    v390(v380, v290);
    v302 = sub_2542203C4(v299, v301, v488);

    *(v292 + 14) = v302;
    *(v292 + 22) = 2048;
    *(v292 + 24) = v480;
    _os_log_impl(&dword_254124000, v286, v287, "[%{public}s] Finished subquery %{public}s, emitted %ld matching event(s)", v292, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v293, -1, -1);
    MEMORY[0x259C07330](v292, -1, -1);

    (*(v405 + 8))(v432, v419);
    sub_254132E5C(v446, &unk_27F5BA1B0, qword_2542544A0);
    v390(v460, v290);
  }

  else
  {
    v303 = *(v0 + 800);
    v304 = *(v0 + 688);
    v305 = *(v0 + 672);
    v306 = *(v0 + 624);
    v307 = *(v0 + 616);
    v308 = *(v0 + 608);
    v309 = *(v0 + 568);
    v461 = *(v0 + 768);
    v473 = *(v0 + 560);
    v310 = *(v0 + 544);

    v303(v304, v305);
    sub_25417C0B0(v309, type metadata accessor for EventQuery);
    (*(v307 + 8))(v306, v308);
    sub_254132E5C(v310, &unk_27F5BA1B0, qword_2542544A0);
    v303(v461, v305);
  }

  sub_25417C0B0(v473, type metadata accessor for CKQueryAsyncSequence);
  v311 = *(v0 + 768);
  v312 = *(v0 + 760);
  v313 = *(v0 + 752);
  v314 = *(v0 + 744);
  v315 = *(v0 + 736);
  v316 = *(v0 + 728);
  v317 = *(v0 + 720);
  v318 = *(v0 + 712);
  v319 = *(v0 + 704);
  v320 = *(v0 + 696);
  v323 = *(v0 + 688);
  v325 = *(v0 + 664);
  v327 = *(v0 + 656);
  v329 = *(v0 + 648);
  v331 = *(v0 + 640);
  v333 = *(v0 + 632);
  v335 = *(v0 + 624);
  v337 = *(v0 + 600);
  v339 = *(v0 + 592);
  v342 = *(v0 + 584);
  v345 = *(v0 + 576);
  v348 = *(v0 + 568);
  v351 = *(v0 + 560);
  v354 = *(v0 + 544);
  v357 = *(v0 + 536);
  v361 = *(v0 + 528);
  v364 = *(v0 + 520);
  v367 = *(v0 + 496);
  v374 = *(v0 + 472);
  v381 = *(v0 + 464);
  v391 = *(v0 + 440);
  v406 = *(v0 + 416);
  v420 = *(v0 + 408);
  v433 = *(v0 + 400);
  v447 = *(v0 + 384);
  v462 = *(v0 + 376);
  v474 = *(v0 + 352);
  v479 = *(v0 + 344);
  v487 = *(v0 + 336);

  v321 = *(v0 + 8);

  return v321(v480);
}

uint64_t sub_254158D38()
{
  v1 = v0[109];
  v2 = v0[103];
  v3 = v0[100];
  v4 = v0[96];
  v5 = v0[84];
  v6 = v0[70];
  v7 = v0[68];
  (*(v0[64] + 8))(v0[65], v0[63]);
  sub_254132E5C(v7, &unk_27F5BA1B0, qword_2542544A0);
  v3(v4, v5);
  sub_25417C0B0(v6, type metadata accessor for CKQueryAsyncSequence);

  v49 = v0[32];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v20 = v0[86];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[78];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[71];
  v32 = v0[70];
  v33 = v0[68];
  v34 = v0[67];
  v35 = v0[66];
  v36 = v0[65];
  v37 = v0[62];
  v38 = v0[59];
  v39 = v0[58];
  v40 = v0[55];
  v41 = v0[52];
  v42 = v0[51];
  v43 = v0[50];
  v44 = v0[48];
  v45 = v0[47];
  v46 = v0[44];
  v47 = v0[43];
  v48 = v0[42];

  v18 = v0[1];

  return v18();
}

uint64_t sub_254159034(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for EncryptionKeyQuery();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = sub_25424D948();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = sub_25424DAA8();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415923C, 0, 0);
}

uint64_t sub_25415923C()
{
  v1 = *(v0 + 40);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = type metadata accessor for EventQuery.Configuration(0);
    *(v0 + 216) = v5;
    v6 = *(v5 + 72);
    *(v0 + 296) = v6;
    v7 = *(v4 + v6 + 24);
    v8 = *(v4 + v6 + 32);
    __swift_project_boxed_opaque_existential_1((v4 + v6), v7);
    v9 = *(v5 + 28);
    *(v0 + 300) = v9;
    v10 = *(v8 + 32);
    v30 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    *v12 = v0;
    v12[1] = sub_2541594D4;

    return v30(v0 + 16, v4 + v9, v7, v8);
  }

  else
  {
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 104);
    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    v29 = *(v0 + 80);
    v31 = *(v0 + 56);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_2541594D4()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541595D0, 0, 0);
}

uint64_t sub_2541595D0()
{
  v114 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 40);
    sub_25421ACE8(*(v0 + 208));
    sub_25417C110(v3, v2, type metadata accessor for EventQuery);
    swift_bridgeObjectRetain_n();
    v4 = sub_25424DA88();
    v5 = sub_25424E408();
    v112 = v1;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 216);
      v7 = *(v0 + 176);
      v105 = *(v0 + 168);
      v109 = *(v0 + 208);
      v8 = *(v0 + 160);
      v9 = *(v0 + 64);
      v10 = v1;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v113 = v12;
      *v11 = 136446466;
      v13 = *(v6 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v14 = sub_25424EA58();
      v16 = v15;
      sub_25417C0B0(v8, type metadata accessor for EventQuery);
      v17 = sub_2542203C4(v14, v16, &v113);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2048;
      v18 = *(v10 + 16);

      *(v11 + 14) = v18;

      _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Reusing %ld cached encryption key(s)", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x259C07330](v12, -1, -1);
      MEMORY[0x259C07330](v11, -1, -1);

      (*(v7 + 8))(v109, v105);
    }

    else
    {
      v46 = *(v0 + 208);
      v48 = *(v0 + 168);
      v47 = *(v0 + 176);
      v49 = *(v0 + 160);
      swift_bridgeObjectRelease_n();

      sub_25417C0B0(v49, type metadata accessor for EventQuery);
      (*(v47 + 8))(v46, v48);
    }

    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v53 = *(v0 + 184);
    v52 = *(v0 + 192);
    v55 = *(v0 + 152);
    v54 = *(v0 + 160);
    v56 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v0 + 120);
    v58 = *(v0 + 128);
    v93 = *(v0 + 112);
    v96 = *(v0 + 104);
    v99 = *(v0 + 96);
    v103 = *(v0 + 88);
    v107 = *(v0 + 80);
    v111 = *(v0 + 56);

    v60 = *(v0 + 8);

    return v60(v112);
  }

  else
  {
    v19 = *(v0 + 200);
    v20 = *(v0 + 152);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 64);
    v24 = *(v0 + 72);
    v25 = *(v0 + 40);
    sub_25424D938();
    sub_25421ACE8(v19);
    sub_25417C110(v25, v20, type metadata accessor for EventQuery);
    v110 = *(v24 + 16);
    v110(v22, v21, v23);
    v26 = sub_25424DA88();
    v27 = sub_25424E408();
    if (os_log_type_enabled(v26, v27))
    {
      v95 = v27;
      v28 = *(v0 + 216);
      v98 = *(v0 + 176);
      v102 = *(v0 + 168);
      v106 = *(v0 + 200);
      v29 = *(v0 + 152);
      v30 = *(v0 + 112);
      v32 = *(v0 + 64);
      v31 = *(v0 + 72);
      v33 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v113 = v92;
      *v33 = 136446466;
      v34 = *(v28 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v35 = sub_25424EA58();
      v37 = v36;
      sub_25417C0B0(v29, type metadata accessor for EventQuery);
      v38 = sub_2542203C4(v35, v37, &v113);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = v30;
      v40 = sub_25424EA58();
      v42 = v41;
      v43 = *(v31 + 8);
      v43(v39, v32);
      v44 = sub_2542203C4(v40, v42, &v113);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_254124000, v26, v95, "[%{public}s] Fetching encryption keys with query identifier %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v92, -1, -1);
      MEMORY[0x259C07330](v33, -1, -1);

      v45 = *(v98 + 8);
      v45(v106, v102);
    }

    else
    {
      v62 = *(v0 + 200);
      v63 = *(v0 + 168);
      v64 = *(v0 + 176);
      v65 = *(v0 + 152);
      v66 = *(v0 + 112);
      v67 = *(v0 + 64);
      v68 = *(v0 + 72);

      v43 = *(v68 + 8);
      v43(v66, v67);
      sub_25417C0B0(v65, type metadata accessor for EventQuery);
      v45 = *(v64 + 8);
      v45(v62, v63);
    }

    v108 = v43;
    *(v0 + 232) = v45;
    *(v0 + 240) = v43;
    v94 = *(v0 + 120);
    v70 = *(v0 + 96);
    v69 = *(v0 + 104);
    v71 = *(v0 + 88);
    v97 = *(v0 + 80);
    v100 = *(v0 + 216);
    v72 = *(v0 + 56);
    v73 = *(v0 + 64);
    v75 = *(v0 + 40);
    v74 = *(v0 + 48);
    v104 = *(v0 + 32);
    v110(v69, v75 + *(v0 + 300), v73);
    v110(v70, v94, v73);
    v76 = (v75 + *(v100 + 60));
    v101 = *v76;
    LOBYTE(v75) = *(v76 + 8);
    v110(v71, v69, v73);
    v110(v97, v70, v73);
    v110(v72, v71, v73);
    *(v72 + v74[5]) = 0;
    v110(v72 + v74[6], v97, v73);
    v77 = v72 + v74[7];
    *v77 = 0;
    *(v77 + 8) = 1;
    v78 = v72 + v74[8];
    *v78 = v101;
    *(v78 + 8) = v75;
    v79 = (v72 + v74[9]);
    v79[1] = 0;
    v79[2] = 0;
    *v79 = v104;
    v80 = qword_27F5B8468;
    v81 = v104;
    if (v80 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 96);
    v83 = *(v0 + 104);
    v84 = *(v0 + 80);
    v85 = *(v0 + 88);
    v86 = *(v0 + 64);
    v88 = *(v0 + 48);
    v87 = *(v0 + 56);
    v89 = off_27F5BAFB0;
    *(v0 + 248) = (*(v0 + 72) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v84, v86);
    v108(v85, v86);
    v108(v82, v86);
    v108(v83, v86);
    *(v87 + *(v88 + 40)) = v89[2];
    swift_unknownObjectRetain();
    v90 = swift_task_alloc();
    *(v0 + 256) = v90;
    *v90 = v0;
    v90[1] = sub_254159E1C;
    v91 = *(v0 + 56);

    return EncryptionKeyQuery.fetchKeys()();
  }
}

uint64_t sub_254159E1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v7 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v5 = sub_25415AA04;
  }

  else
  {
    v5 = sub_254159F30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_254159F30()
{
  v107 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  v3 = *(v0 + 40);
  sub_25421ACE8(*(v0 + 192));
  sub_25417C110(v3, v2, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  if (v6)
  {
    v9 = *(v0 + 216);
    v96 = *(v0 + 176);
    v99 = *(v0 + 168);
    v102 = *(v0 + 192);
    v10 = *(v0 + 144);
    v11 = *(v0 + 64);
    v12 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v106[0] = v14;
    *v13 = 136446466;
    v15 = *(v9 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v16 = sub_25424EA58();
    v18 = v17;
    sub_25417C0B0(v10, type metadata accessor for EventQuery);
    v19 = sub_2542203C4(v16, v18, v106);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2048;
    v20 = *(v7 + 16);

    *(v13 + 14) = v20;

    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Fetched %ld encryption key(s)", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259C07330](v14, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v12(v102, v99);
  }

  else
  {
    v21 = *(v0 + 192);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 144);
    v25 = *(v0 + 264);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v24, type metadata accessor for EventQuery);
    v8(v21, v22);
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 272);
  v28 = *(v0 + 216);
  v29 = *(v0 + 40);
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  v31 = sub_2541DD888(sub_25417E730, v30, v26);

  v32 = *(v29 + *(v28 + 68));
  if (v32 < v31[2])
  {
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 40);
    sub_25421ACE8(*(v0 + 184));
    sub_25417C110(v35, v33, type metadata accessor for EventQuery);
    sub_25417C110(v35, v34, type metadata accessor for EventQuery);
    v36 = sub_25424DA88();
    v37 = sub_25424E448();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 232);
    if (v38)
    {
      v40 = *(v0 + 216);
      v97 = *(v0 + 176);
      v100 = *(v0 + 168);
      v103 = *(v0 + 184);
      v41 = *(v0 + 136);
      v92 = *(v0 + 128);
      v42 = *(v0 + 64);
      v89 = v28;
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v106[0] = v94;
      *v43 = 136446722;
      v44 = *(v40 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v45 = sub_25424EA58();
      v47 = v46;
      sub_25417C0B0(v41, type metadata accessor for EventQuery);
      v48 = sub_2542203C4(v45, v47, v106);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v31[2];
      *(v43 + 22) = 2048;
      v49 = *(v92 + *(v89 + 68));
      sub_25417C0B0(v92, type metadata accessor for EventQuery);
      *(v43 + 24) = v49;
      _os_log_impl(&dword_254124000, v36, v37, "[%{public}s] Found %ld encryption keys, truncating to the most recent %ld", v43, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x259C07330](v94, -1, -1);
      MEMORY[0x259C07330](v43, -1, -1);

      v39(v103, v100);
    }

    else
    {
      v51 = *(v0 + 176);
      v50 = *(v0 + 184);
      v52 = *(v0 + 168);
      v53 = *(v0 + 136);
      sub_25417C0B0(*(v0 + 128), type metadata accessor for EventQuery);

      sub_25417C0B0(v53, type metadata accessor for EventQuery);
      v39(v50, v52);
    }

    v54 = sub_2541A5390(v32, v31);
    v56 = v55;
    v58 = v57;
    v60 = v59;
    if (v59)
    {
      sub_25424EAD8();
      swift_unknownObjectRetain_n();

      v63 = swift_dynamicCastClass();
      if (!v63)
      {
        swift_unknownObjectRelease();
        v63 = MEMORY[0x277D84F90];
      }

      v64 = *(v63 + 16);

      if (__OFSUB__(v60 >> 1, v58))
      {
        __break(1u);
      }

      else if (v64 == (v60 >> 1) - v58)
      {
        v65 = swift_dynamicCastClass();
        swift_unknownObjectRelease();

        v31 = v65;
        if (v65)
        {
          goto LABEL_18;
        }

        v62 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_254168B78(v54, v56, v58, v60, &qword_27F5B9278, &qword_2542545D0, type metadata accessor for LubyRackoffEncryptionKey);
    v62 = v61;

LABEL_17:
    swift_unknownObjectRelease();
    v31 = v62;
  }

LABEL_18:
  *(v0 + 280) = v31;
  if (v31[2])
  {
    v66 = *(v0 + 300);
    v67 = *(v0 + 40);
    v68 = (v67 + *(v0 + 296));
    v69 = v68[3];
    v70 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v69);
    *(v0 + 24) = v31;
    v71 = *(v70 + 48);
    v104 = (v71 + *v71);
    v72 = v71[1];
    v73 = swift_task_alloc();
    *(v0 + 288) = v73;
    *v73 = v0;
    v73[1] = sub_25415A7A4;

    return v104(v0 + 24, v67 + v66, v69, v70);
  }

  else
  {
    v76 = *(v0 + 240);
    v75 = *(v0 + 248);
    v77 = *(v0 + 120);
    v78 = *(v0 + 64);
    sub_25417C0B0(*(v0 + 56), type metadata accessor for EncryptionKeyQuery);
    v76(v77, v78);
    v80 = *(v0 + 200);
    v79 = *(v0 + 208);
    v82 = *(v0 + 184);
    v81 = *(v0 + 192);
    v84 = *(v0 + 152);
    v83 = *(v0 + 160);
    v85 = *(v0 + 136);
    v86 = *(v0 + 144);
    v87 = *(v0 + 128);
    v90 = *(v0 + 120);
    v91 = *(v0 + 112);
    v93 = *(v0 + 104);
    v95 = *(v0 + 96);
    v98 = *(v0 + 88);
    v101 = *(v0 + 80);
    v105 = *(v0 + 56);

    v88 = *(v0 + 8);

    return v88(v31);
  }
}

uint64_t sub_25415A7A4()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25415A8A0, 0, 0);
}

uint64_t sub_25415A8A0()
{
  v23 = v0[35];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[15];
  v4 = v0[8];
  sub_25417C0B0(v0[7], type metadata accessor for EncryptionKeyQuery);
  v2(v3, v4);
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[10];
  v22 = v0[7];

  v15 = v0[1];

  return v15(v23);
}

uint64_t sub_25415AA04()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v12 = v0[20];
  v13 = v0[19];
  v14 = v0[18];
  v15 = v0[17];
  v7 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[10];
  v8 = v0[8];
  sub_25417C0B0(v0[7], type metadata accessor for EncryptionKeyQuery);
  v1(v7, v8);

  v9 = v0[1];
  v10 = v0[34];

  return v9();
}

uint64_t sub_25415AB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EventQuery(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25424DAA8();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9280, &qword_2542545D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - v16;
  sub_254140708(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DE0, &qword_2542545E0);
  v18 = type metadata accessor for LubyRackoffEncryptionKey();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  if (v19)
  {
    v20(v17, 0, 1, v18);
    sub_25417C178(v17, a3, type metadata accessor for LubyRackoffEncryptionKey);
    v21 = a3;
    v22 = 0;
  }

  else
  {
    v47 = a3;
    v20(v17, 1, 1, v18);
    sub_254132E5C(v17, &unk_27F5B9280, &qword_2542545D8);
    sub_25421ACE8(v13);
    sub_25417C110(a2, v9, type metadata accessor for EventQuery);
    sub_254140708(a1, v50);
    v23 = sub_25424DA88();
    v24 = sub_25424E408();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v46 = v20;
      v26 = v25;
      v45 = swift_slowAlloc();
      v52 = v45;
      *v26 = 136446466;
      v27 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v28 = sub_25424EA58();
      v30 = v29;
      sub_25417C0B0(v9, type metadata accessor for EventQuery);
      v31 = sub_2542203C4(v28, v30, &v52);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = v51;
      v33 = __swift_project_boxed_opaque_existential_1(v50, v51);
      v34 = *(*(v32 - 8) + 64);
      MEMORY[0x28223BE20](v33);
      (*(v36 + 16))(&v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      v37 = sub_25424DD08();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1(v50);
      v40 = sub_2542203C4(v37, v39, &v52);

      *(v26 + 14) = v40;
      _os_log_impl(&dword_254124000, v23, v24, "[%{public}s] Ignoring unknown encryption key type: %s", v26, 0x16u);
      v41 = v45;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v41, -1, -1);
      v42 = v26;
      v20 = v46;
      MEMORY[0x259C07330](v42, -1, -1);

      (*(v48 + 8))(v13, v49);
    }

    else
    {

      sub_25417C0B0(v9, type metadata accessor for EventQuery);
      (*(v48 + 8))(v13, v49);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    v21 = v47;
    v22 = 1;
  }

  return (v20)(v21, v22, 1, v18);
}

uint64_t sub_25415B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v9 + 480) = v49;
  *(v9 + 488) = v8;
  *(v9 + 1306) = a8;
  *(v9 + 1305) = a7;
  *(v9 + 1304) = a6;
  *(v9 + 464) = a4;
  *(v9 + 472) = a5;
  *(v9 + 448) = a2;
  *(v9 + 456) = a3;
  *(v9 + 440) = a1;
  v10 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  *(v9 + 496) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  v12 = type metadata accessor for SomeEvent();
  *(v9 + 528) = v12;
  v13 = *(v12 - 8);
  *(v9 + 536) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 544) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9100, &qword_254254520) - 8) + 64) + 15;
  *(v9 + 552) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9108, &qword_254254528);
  *(v9 + 560) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530) - 8) + 64) + 15;
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v9 + 592) = v19;
  v20 = *(v19 - 8);
  *(v9 + 600) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 608) = swift_task_alloc();
  v22 = sub_25424D8B8();
  *(v9 + 616) = v22;
  v23 = *(v22 - 8);
  *(v9 + 624) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v9 + 680) = v25;
  v26 = *(v25 - 8);
  *(v9 + 688) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 696) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v9 + 704) = v28;
  v29 = *(v28 - 8);
  *(v9 + 712) = v29;
  v30 = *(v29 + 64) + 15;
  *(v9 + 720) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  *(v9 + 728) = v31;
  v32 = *(v31 - 8);
  *(v9 + 736) = v32;
  v33 = *(v32 + 64) + 15;
  *(v9 + 744) = swift_task_alloc();
  v34 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();
  v35 = type metadata accessor for CKQueryAsyncSequence();
  *(v9 + 816) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v9 + 824) = swift_task_alloc();
  v37 = sub_25424DAA8();
  *(v9 + 832) = v37;
  v38 = *(v37 - 8);
  *(v9 + 840) = v38;
  v39 = *(v38 + 64) + 15;
  *(v9 + 848) = swift_task_alloc();
  *(v9 + 856) = swift_task_alloc();
  *(v9 + 864) = swift_task_alloc();
  *(v9 + 872) = swift_task_alloc();
  *(v9 + 880) = swift_task_alloc();
  *(v9 + 888) = swift_task_alloc();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  v40 = sub_25424D948();
  *(v9 + 936) = v40;
  v41 = *(v40 - 8);
  *(v9 + 944) = v41;
  v42 = *(v41 + 64) + 15;
  *(v9 + 952) = swift_task_alloc();
  *(v9 + 960) = swift_task_alloc();
  *(v9 + 968) = swift_task_alloc();
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0) - 8) + 64) + 15;
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = swift_task_alloc();
  *(v9 + 1056) = swift_task_alloc();
  v44 = sub_25424D218();
  *(v9 + 1064) = v44;
  v45 = *(v44 - 8);
  *(v9 + 1072) = v45;
  v46 = *(v45 + 64) + 15;
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415B7C0, 0, 0);
}

uint64_t sub_25415B7C0()
{
  v145 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 488);
  v5 = *(v0 + 1304);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 456);
  (*(*(v0 + 1072) + 16))(*(v0 + 1088), v8, *(v0 + 1064));
  v9 = *(v7 + 16);
  *(v0 + 1096) = v9;
  v10 = sub_2541677C8(v8, v9 != 0, v6, v5 & 1);
  v11 = *(v2 + 56);
  *(v0 + 1104) = v11;
  *(v0 + 1112) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v3);
  *(v0 + 408) = MEMORY[0x277D84FA0];
  sub_25424E1E8();
  v136 = v10;
  v12 = *(v0 + 944);
  LODWORD(v10) = *(v0 + 1305);
  *(v0 + 1296) = *MEMORY[0x277D858A0];
  *(v0 + 1120) = 0x3FF0000000000000;
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 936);
  v16 = *(v0 + 488);
  LODWORD(v8) = *(v0 + 1306);
  v141 = *(v0 + 464);
  v17 = type metadata accessor for EventQuery.Configuration(0);
  v18 = *(v12 + 16);
  *(v0 + 1128) = v17;
  v19 = *(v17 + 24);
  *(v0 + 1300) = v19;
  *(v0 + 1136) = v18;
  *(v0 + 1144) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v130 = v19;
  v133 = v16;
  v18(v14, v16 + v19, v15);
  v20 = sub_25417C454(v14, v13, 0, v8, v10 ^ 1, v10);
  *(v0 + 416) = v20;
  v21 = sub_25417DE78(v14, v141);
  if (v21)
  {
    v22 = v21;
    if (v20 >> 62)
    {
      v113 = sub_25424E868();
      if (v113 < 0)
      {
        __break(1u);
        return MEMORY[0x2822005A8](v113, v115, v116, v112, v114);
      }
    }

    sub_2541D2080(0, 0, v22);

    v23 = *(v0 + 416);
  }

  v139 = v17;
  v24 = *(v0 + 1024);
  v25 = *(v0 + 1016);
  v26 = *(v0 + 936);
  v27 = *(v0 + 928);
  sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
  v28 = sub_25424DF88();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_25421ACE8(v27);
  v127 = v18;
  v18(v25, v24, v26);
  v30 = v29;
  v31 = sub_25424DA88();
  v32 = sub_25424E418();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 944);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 840);
  v125 = *(v0 + 832);
  if (v33)
  {
    v123 = *(v0 + 928);
    v39 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v144[0] = v120;
    *v39 = 136315394;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v40 = sub_25424EA58();
    v118 = v32;
    v41 = v30;
    v43 = v42;
    v142 = *(v35 + 8);
    v142(v34, v36);
    v44 = sub_2542203C4(v40, v43, v144);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = [v41 debugDescription];
    v46 = sub_25424DCB8();
    v48 = v47;

    v49 = sub_2542203C4(v46, v48, v144);

    *(v39 + 14) = v49;
    _os_log_impl(&dword_254124000, v31, v118, "[%s] Final predicate: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v120, -1, -1);
    MEMORY[0x259C07330](v39, -1, -1);

    v50 = *(v38 + 8);
    v50(v123, v125);
  }

  else
  {

    v142 = *(v35 + 8);
    v142(v34, v36);
    v50 = *(v38 + 8);
    v50(v37, v125);
    v41 = v30;
  }

  *(v0 + 1160) = v142;
  *(v0 + 1152) = v50;
  v124 = *(v0 + 1024);
  v126 = v50;
  v121 = *(v0 + 1008);
  v51 = *(v0 + 936);
  v52 = *(v0 + 944) + 8;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v53 = v41;
  v119 = sub_25424E538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_254254370;
  v55 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v56 = sub_25424DCA8();
  v57 = [v55 initWithKey:v56 ascending:0];

  *(v54 + 32) = v57;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v58 = sub_25424DF88();

  [v119 setSortDescriptors_];

  *(v0 + 1168) = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v142(v124, v51);
  sub_25424D938();
  *(v0 + 1176) = v136;
  v59 = *(v0 + 1008);
  v60 = *(v0 + 936);
  v61 = *(v0 + 824);
  v62 = *(v0 + 816);
  v63 = *(v0 + 488);
  v64 = *(v0 + 440);
  v122 = *(v0 + 448);
  v127(&v61[v62[7]], v133 + v130, v60);
  v127(&v61[v62[8]], v59, v60);
  v65 = (v63 + v139[15]);
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = *(v63 + v139[16]);
  *(v0 + 1184) = v67;
  *v61 = v64;
  *(v61 + 1) = 0;
  *(v61 + 2) = 0;
  *(v61 + 3) = v122;
  *(v61 + 4) = v119;
  *&v61[v62[9]] = &unk_286632EC0;
  v68 = &v61[v62[10]];
  *v68 = v136;
  v68[8] = 0;
  v69 = &v61[v62[11]];
  *v69 = v66;
  v69[8] = v65;
  *&v61[v62[12]] = v67;
  *(v0 + 1192) = 1;
  v137 = *(v0 + 1008);
  v70 = *(v0 + 1000);
  v71 = *(v0 + 936);
  v72 = *(v0 + 920);
  v73 = *(v0 + 808);
  v74 = *(v0 + 488);
  v75 = *(v0 + 448);
  v76 = *(v0 + 440);
  swift_unknownObjectRetain();
  v77 = v75;
  sub_25421ACE8(v72);
  sub_25417C110(v74, v73, type metadata accessor for EventQuery);
  v127(v70, v137, v71);
  v78 = sub_25424DA88();
  v79 = sub_25424E408();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 1000);
  v82 = *(v0 + 936);
  v83 = *(v0 + 920);
  v84 = *(v0 + 840);
  v85 = *(v0 + 832);
  v86 = *(v0 + 808);
  if (v80)
  {
    v134 = v79;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v144[0] = v88;
    *v87 = 136446722;
    v89 = v139[6];
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v90 = sub_25424EA58();
    v131 = v83;
    v92 = v91;
    sub_25417C0B0(v86, type metadata accessor for EventQuery);
    v93 = sub_2542203C4(v90, v92, v144);

    *(v87 + 4) = v93;
    *(v87 + 12) = 2082;
    v94 = sub_25424EA58();
    v96 = v95;
    v142(v81, v82);
    v97 = sub_2542203C4(v94, v96, v144);

    *(v87 + 14) = v97;
    *(v87 + 22) = 2048;
    *(v87 + 24) = 1;
    _os_log_impl(&dword_254124000, v78, v134, "[%{public}s] Beginning subquery %{public}s (%ld)", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v88, -1, -1);
    MEMORY[0x259C07330](v87, -1, -1);

    v126(v131, v85);
  }

  else
  {

    v142(v81, v82);
    sub_25417C0B0(v86, type metadata accessor for EventQuery);
    v126(v83, v85);
  }

  v132 = *(v0 + 1296);
  v98 = *(v0 + 744);
  v99 = *(v0 + 736);
  v100 = *(v0 + 728);
  v101 = *(v0 + 696);
  v140 = *(v0 + 720);
  v143 = *(v0 + 688);
  v102 = *(v0 + 672);
  v103 = *(v0 + 624);
  v135 = *(v0 + 616);
  v138 = *(v0 + 680);
  v104 = *(v0 + 608);
  v105 = *(v0 + 600);
  v128 = *(v0 + 824);
  v129 = *(v0 + 592);
  v106 = *(v0 + 480);
  sub_25417C110(*(v0 + 488), *(v0 + 800), type metadata accessor for EventQuery);
  (*(v99 + 16))(v98, v106, v100);
  sub_25424D898();
  v107 = swift_task_alloc();
  *(v107 + 16) = v128;
  *(v107 + 24) = v102;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v105 + 104))(v104, v132, v129);
  sub_25424E278();

  v108 = *(v103 + 8);
  *(v0 + 1200) = v108;
  *(v0 + 1208) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v108(v102, v135);
  sub_25424E178();
  (*(v143 + 8))(v101, v138);
  swift_beginAccess();
  *(v0 + 1307) = 0;
  *(v0 + 1216) = 0u;
  *(v0 + 1232) = 0u;
  *(v0 + 1248) = 0u;
  *(v0 + 1264) = 0u;
  v109 = *(MEMORY[0x277D858B8] + 4);
  v110 = swift_task_alloc();
  *(v0 + 1280) = v110;
  *v110 = v0;
  v110[1] = sub_25415C6C4;
  v111 = *(v0 + 720);
  v112 = *(v0 + 704);
  v113 = v0 + 424;
  v114 = v0 + 432;
  v115 = 0;
  v116 = 0;

  return MEMORY[0x2822005A8](v113, v115, v116, v112, v114);
}

uint64_t sub_25415C6C4()
{
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v7 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v4 = v2[100];
    (*(v2[92] + 8))(v2[93], v2[91]);
    sub_25417C0B0(v4, type metadata accessor for EventQuery);
    v5 = sub_2541607AC;
  }

  else
  {
    v5 = sub_25415C814;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25415C814()
{
  v832 = v1;
  v4 = *(v1 + 424);
  if (!v4)
  {
    (*(*(v1 + 712) + 8))(*(v1 + 720), *(v1 + 704));
    v784 = *(v1 + 1288);
    v28 = *(v1 + 1272);
    v29 = *(v1 + 1264);
    v30 = *(v1 + 1256);
    v31 = *(v1 + 1248);
    v32 = *(v1 + 1240);
    v33 = *(v1 + 1307);
    v34 = *(v1 + 1232);
    v35 = *(v1 + 1224);
    v36 = *(v1 + 1216);
    goto LABEL_8;
  }

  v0 = *(v1 + 1288);
  sub_25424E1E8();
  if (v0)
  {
    v5 = *(v1 + 1072);
    v757 = *(v1 + 1168);
    v769 = *(v1 + 1064);
    v735 = *(v1 + 1160);
    v746 = *(v1 + 1056);
    v6 = *(v1 + 1008);
    v7 = *(v1 + 936);
    v818 = *(v1 + 824);
    v782 = *(v1 + 1088);
    v800 = *(v1 + 800);
    v8 = *(v1 + 744);
    v9 = *(v1 + 736);
    v10 = *(v1 + 728);
    v11 = v4;
    v12 = *(v1 + 720);
    v13 = *(v1 + 712);
    v14 = *(v1 + 704);

    (*(v13 + 8))(v12, v14);
    (*(v9 + 8))(v8, v10);
    v735(v6, v7);
    sub_254132E5C(v746, &unk_27F5BA1B0, qword_2542544A0);
    (*(v5 + 8))(v782, v769);
    sub_25417C0B0(v800, type metadata accessor for EventQuery);
    sub_25417C0B0(v818, type metadata accessor for CKQueryAsyncSequence);
LABEL_4:
    v15 = *(v1 + 408);

    v16 = *(v1 + 1088);
    v17 = *(v1 + 1080);
    v18 = *(v1 + 1056);
    v19 = *(v1 + 1048);
    v20 = *(v1 + 1040);
    v21 = *(v1 + 1032);
    v22 = *(v1 + 1024);
    v23 = *(v1 + 1016);
    v24 = *(v1 + 1008);
    v25 = *(v1 + 1000);
    v589 = *(v1 + 992);
    v591 = *(v1 + 984);
    v593 = *(v1 + 976);
    v595 = *(v1 + 968);
    v597 = *(v1 + 960);
    v599 = *(v1 + 952);
    v601 = *(v1 + 928);
    v603 = *(v1 + 920);
    v605 = *(v1 + 912);
    v607 = *(v1 + 904);
    v609 = *(v1 + 896);
    v611 = *(v1 + 888);
    v613 = *(v1 + 880);
    v615 = *(v1 + 872);
    v617 = *(v1 + 864);
    v619 = *(v1 + 856);
    v621 = *(v1 + 848);
    v623 = *(v1 + 824);
    v625 = *(v1 + 808);
    v627 = *(v1 + 800);
    v629 = *(v1 + 792);
    v632 = *(v1 + 784);
    v635 = *(v1 + 776);
    v638 = *(v1 + 768);
    v641 = *(v1 + 760);
    v644 = *(v1 + 752);
    v647 = *(v1 + 744);
    v651 = *(v1 + 720);
    v655 = *(v1 + 696);
    v660 = *(v1 + 672);
    v668 = *(v1 + 664);
    v676 = *(v1 + 656);
    v684 = *(v1 + 648);
    v688 = *(v1 + 640);
    v692 = *(v1 + 632);
    v706 = *(v1 + 608);
    v721 = *(v1 + 584);
    v736 = *(v1 + 576);
    v747 = *(v1 + 568);
    v758 = *(v1 + 552);
    v770 = *(v1 + 544);
    v783 = *(v1 + 520);
    v801 = *(v1 + 512);
    v819 = *(v1 + 504);

    v26 = *(v1 + 8);

    return v26();
  }

  v69 = *(v1 + 1264);
  v70 = v69 + 1;
  if (__OFADD__(v69, 1))
  {
    __break(1u);
    goto LABEL_137;
  }

  v71 = *(v1 + 1272);
  v2 = v71 + 1;
  if (__OFADD__(v71, 1))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v72 = *(v1 + 552);
  v73 = *(v1 + 488);
  sub_2541612EC(v4, v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
  if ((*(*(v74 - 8) + 48))(v72, 1, v74) == 1)
  {
    v75 = *(v1 + 552);

    sub_254132E5C(v75, &qword_27F5B9100, &qword_254254520);
    v76 = v2;
    goto LABEL_91;
  }

  v683 = v70;
  v687 = v4;
  v830 = v2;
  v77 = *(v1 + 944);
  v78 = *(v1 + 936);
  v79 = *(v1 + 624);
  v737 = *(v1 + 616);
  v748 = *(v1 + 584);
  v759 = *(v1 + 992);
  v785 = *(v1 + 664);
  v802 = *(v1 + 576);
  v80 = *(v1 + 568);
  v81 = *(v1 + 560);
  v82 = *(v1 + 552);
  v768 = *(v1 + 536);
  v820 = *(v1 + 528);
  v83 = *(v74 + 48);
  v708 = v78;
  v723 = *(v74 + 64);
  v84 = *(v81 + 48);
  v694 = *(v81 + 64);
  sub_25417E6C8(v82, v80, &qword_27F5B9110, &qword_254254530);
  v85 = *(v77 + 32);
  v85(v80 + v84, v82 + v83, v78);
  v86 = *(v79 + 32);
  v86(v80 + v694, v82 + v723, v737);
  v87 = *(v81 + 48);
  v88 = *(v81 + 64);
  sub_25417E6C8(v80, v748, &qword_27F5B9110, &qword_254254530);
  v85(v759, v80 + v87, v708);
  v89 = v86;
  v86(v785, v80 + v88, v737);
  sub_254132DF4(v748, v802, &qword_27F5B9110, &qword_254254530);
  if ((*(v768 + 48))(v802, 1, v820) == 1)
  {
    v90 = *(v1 + 1056);
    v91 = *(v1 + 1040);
    v92 = *(v1 + 624);
    v93 = *(v1 + 616);
    sub_254132E5C(*(v1 + 576), &qword_27F5B9110, &qword_254254530);
    sub_254132DF4(v90, v91, &unk_27F5BA1B0, qword_2542544A0);
    if ((*(v92 + 48))(v91, 1, v93) == 1)
    {
      v94 = *(v1 + 1168);
      v95 = *(v1 + 1160);
      v803 = *(v1 + 1104);
      v821 = *(v1 + 1112);
      v96 = *(v1 + 1056);
      v97 = *(v1 + 1040);
      v98 = *(v1 + 992);
      v99 = *(v1 + 936);
      v100 = *(v1 + 664);
      v677 = v89;
      v101 = *(v1 + 616);
      v102 = *(v1 + 584);

      v95(v98, v99);
      sub_254132E5C(v102, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v96, &unk_27F5BA1B0, qword_2542544A0);
      sub_254132E5C(v97, &unk_27F5BA1B0, qword_2542544A0);
      v677(v96, v100, v101);
      v803(v96, 0, 1, v101);
LABEL_49:
      v268 = *(v1 + 1248);
      v269 = *(v1 + 1240);
      v270 = *(v1 + 1307);
      v271 = *(v1 + 1232);
      v272 = *(v1 + 1224);
      v2 = v830;
      v76 = v830;
      v273 = *(v1 + 1216);
      v70 = v683;
LABEL_90:
      *(v1 + 1248) = v268;
      *(v1 + 1240) = v269;
      *(v1 + 1307) = v270 & 1;
      *(v1 + 1232) = v271;
      *(v1 + 1224) = v272;
      *(v1 + 1216) = v273;
LABEL_91:
      *(v1 + 1272) = v76;
      *(v1 + 1264) = v70;
      *(v1 + 1256) = v2;
      v437 = *(MEMORY[0x277D858B8] + 4);
      v438 = swift_task_alloc();
      *(v1 + 1280) = v438;
      *v438 = v1;
      v438[1] = sub_25415C6C4;
      v439 = *(v1 + 720);
      v171 = *(v1 + 704);
      v168 = v1 + 424;
      v172 = v1 + 432;
      v169 = 0;
      v170 = 0;

      return MEMORY[0x2822005A8](v168, v169, v170, v171, v172);
    }

    v167 = *(v1 + 664);
    v86(*(v1 + 648), *(v1 + 1040), *(v1 + 616));
    sub_25417BFB4(&qword_27F5B9138, MEMORY[0x277CC9578]);
    v168 = sub_25424DC98();
    if (v168)
    {
      sub_25421ACE8(*(v1 + 888));
      v173 = sub_25424DA88();
      v174 = sub_25424E418();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v1 + 1208);
      v177 = *(v1 + 1200);
      v805 = *(v1 + 1160);
      v823 = *(v1 + 1168);
      v772 = *(v1 + 936);
      v786 = *(v1 + 992);
      v178 = *(v1 + 888);
      v179 = *(v1 + 840);
      v180 = *(v1 + 832);
      v739 = *(v1 + 1152);
      v750 = *(v1 + 664);
      v181 = *(v1 + 648);
      v182 = *(v1 + 616);
      v761 = *(v1 + 584);
      if (v175)
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_254124000, v173, v174, "Using same date", v183, 2u);
        MEMORY[0x259C07330](v183, -1, -1);
      }

      v739(v178, v180);
      v177(v181, v182);
      v177(v750, v182);
      v805(v786, v772);
      sub_254132E5C(v761, &qword_27F5B9110, &qword_254254530);
      goto LABEL_49;
    }

    v241 = *(v1 + 408);
    v680 = v86;
    if (!v241[2])
    {
      v401 = *(v1 + 1208);
      v402 = *(v1 + 1200);
      v403 = *(v1 + 1168);
      v404 = *(v1 + 1160);
      v828 = *(v1 + 1056);
      v405 = *(v1 + 992);
      v406 = *(v1 + 936);
      v407 = *(v1 + 648);
      v408 = *(v1 + 616);
      v409 = *(v1 + 584);

      v402(v407, v408);
      v404(v405, v406);
      sub_254132E5C(v409, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v828, &unk_27F5BA1B0, qword_2542544A0);
      v756 = *(v1 + 1248);
      v799 = *(v1 + 1240);
      v270 = *(v1 + 1307);
      v410 = *(v1 + 1232);
      v411 = *(v1 + 1224);
      v273 = *(v1 + 1216);
      v2 = v830;
LABEL_88:
      v433 = *(v1 + 1112);
      v434 = *(v1 + 1104);
      v435 = *(v1 + 1056);
      v436 = *(v1 + 616);
      v680(v435, *(v1 + 664), v436);
      v434(v435, 0, 1, v436);
      v76 = v2;
      v70 = v683;
      v272 = v411;
      v271 = v410;
LABEL_89:
      v269 = v799;
      v268 = v756;
      goto LABEL_90;
    }

    v242 = *(v1 + 1304);
    if (v242)
    {
      v243 = *(v1 + 472);
    }

    else
    {
      v412 = *(v1 + 1232);
      v413 = *(v1 + 472);
      v243 = v413 - v412;
      if (__OFSUB__(v413, v412))
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }
    }

    v414 = *(v1 + 1128);
    v415 = *(v1 + 800);
    v416 = *(v1 + 744);
    v417 = *(v415 + *(v414 + 64));
    swift_getObjectType();
    v829 = sub_2541656E4(v241, v243, v242 & 1, v415 + *(v414 + 24), v417, v416);
    v765 = v418;
    v419 = v241[2];
    swift_beginAccess();
    if (v419 <= 0xA)
    {
      if (!v241[2])
      {
LABEL_85:
        v812 = *(v1 + 1248);
        v422 = *(v1 + 1208);
        v423 = *(v1 + 1200);
        v424 = *(v1 + 1168);
        v425 = *(v1 + 1160);
        v777 = *(v1 + 1056);
        v426 = *(v1 + 992);
        v427 = *(v1 + 936);
        v428 = *(v1 + 648);
        v429 = *(v1 + 616);
        v430 = *(v1 + 584);
        swift_endAccess();

        v423(v428, v429);
        v425(v426, v427);
        sub_254132E5C(v430, &qword_27F5B9110, &qword_254254530);
        v168 = sub_254132E5C(v777, &unk_27F5BA1B0, qword_2542544A0);
        v431 = v812 + v829;
        if (__OFADD__(v812, v829))
        {
LABEL_145:
          __break(1u);
        }

        else
        {
          v432 = *(v1 + 1232);
          v273 = v432 + v829;
          v2 = v830;
          if (!__OFADD__(v432, v829))
          {
            v270 = v765 ^ 1 | *(v1 + 1307);
            v411 = v432 + v829;
            v410 = v432 + v829;
            v799 = v812 + v829;
            v756 = v431;
            goto LABEL_88;
          }
        }

        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v421 = *(v1 + 408);
      swift_isUniquelyReferenced_nonNull_native();
      v831[0] = *(v1 + 408);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
      sub_25424E618();
      v420 = v831[0];
    }

    else
    {

      v420 = MEMORY[0x277D84FA0];
    }

    *(v1 + 408) = v420;
    goto LABEL_85;
  }

  v115 = *(v1 + 488);
  sub_25417C178(*(v1 + 576), *(v1 + 544), type metadata accessor for SomeEvent);
  sub_2541DA834((v1 + 56));
  v116 = *(v1 + 80);
  v117 = *(v1 + 88);
  v118 = __swift_project_boxed_opaque_existential_1((v1 + 56), v116);
  *(v1 + 40) = v116;
  v119 = *(v117 + 8);
  *(v1 + 48) = v119;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  (*(*(v116 - 8) + 16))(boxed_opaque_existential_1, v118, v116);
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  v121 = sub_25417A418(boxed_opaque_existential_1, v115, v116, v119);
  v122 = *(v1 + 1144);
  v123 = *(v1 + 1136);
  v124 = *(v1 + 992);
  v125 = *(v1 + 936);
  v126 = *(v1 + 488);
  if ((v121 & 1) == 0)
  {
    v184 = *(v1 + 976);
    v185 = *(v1 + 776);
    sub_25421ACE8(*(v1 + 896));
    sub_25417C110(v126, v185, type metadata accessor for EventQuery);
    v123(v184, v124, v125);
    sub_254140708(v1 + 16, v1 + 96);
    v186 = sub_25424DA88();
    v187 = sub_25424E408();
    v188 = os_log_type_enabled(v186, v187);
    v824 = *(v1 + 1168);
    v189 = *(v1 + 1160);
    v190 = *(v1 + 1152);
    if (v188)
    {
      v762 = v187;
      v191 = *(v1 + 1128);
      v192 = *(v1 + 976);
      v193 = *(v1 + 936);
      v787 = *(v1 + 832);
      v806 = *(v1 + 896);
      v194 = *(v1 + 776);
      v773 = *(v1 + 840) + 8;
      v195 = swift_slowAlloc();
      v751 = swift_slowAlloc();
      v831[0] = v751;
      *v195 = 136446722;
      v196 = *(v191 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v197 = sub_25424EA58();
      v740 = v190;
      v199 = v198;
      sub_25417C0B0(v194, type metadata accessor for EventQuery);
      v200 = sub_2542203C4(v197, v199, v831);

      *(v195 + 4) = v200;
      *(v195 + 12) = 2082;
      v201 = sub_25424EA58();
      v203 = v202;
      v189(v192, v193);
      v204 = sub_2542203C4(v201, v203, v831);

      *(v195 + 14) = v204;
      *(v195 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
      DynamicType = swift_getDynamicType();
      v206 = *(v1 + 128);
      *(v1 + 376) = DynamicType;
      *(v1 + 384) = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
      v207 = sub_25424DD08();
      v209 = v208;
      __swift_destroy_boxed_opaque_existential_1((v1 + 96));
      v210 = sub_2542203C4(v207, v209, v831);

      *(v195 + 24) = v210;
      _os_log_impl(&dword_254124000, v186, v762, "[%{public}s] Ignoring record that does not match query: %{public}s, %s", v195, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v751, -1, -1);
      MEMORY[0x259C07330](v195, -1, -1);

      v740(v806, v787);
    }

    else
    {
      v244 = *(v1 + 976);
      v245 = *(v1 + 936);
      v246 = *(v1 + 896);
      v247 = *(v1 + 840);
      v248 = *(v1 + 832);
      v249 = *(v1 + 776);

      __swift_destroy_boxed_opaque_existential_1((v1 + 96));
      v189(v244, v245);
      sub_25417C0B0(v249, type metadata accessor for EventQuery);
      v190(v246, v248);
    }

    v250 = *(v1 + 1208);
    v251 = *(v1 + 1200);
    v808 = *(v1 + 1160);
    v826 = *(v1 + 1168);
    v252 = *(v1 + 992);
    v253 = *(v1 + 936);
    v254 = *(v1 + 664);
    v255 = *(v1 + 616);
    v256 = *(v1 + 584);
    v257 = *(v1 + 544);
    v258 = *(v1 + 488);
    sub_254163628(17);

    sub_25417C0B0(v257, type metadata accessor for SomeEvent);
    v251(v254, v255);
    v808(v252, v253);
    v240 = v256;
    goto LABEL_45;
  }

  v678 = v89;
  v127 = *(v1 + 984);
  v128 = *(v1 + 792);
  sub_25421ACE8(*(v1 + 912));
  sub_25417C110(v126, v128, type metadata accessor for EventQuery);
  v123(v127, v124, v125);
  sub_254140708(v1 + 16, v1 + 136);
  v129 = sub_25424DA88();
  v130 = sub_25424E408();
  v131 = os_log_type_enabled(v129, v130);
  v822 = *(v1 + 1168);
  v132 = *(v1 + 1160);
  v133 = *(v1 + 1152);
  if (v131)
  {
    v749 = v130;
    v134 = *(v1 + 1128);
    v135 = *(v1 + 984);
    v136 = *(v1 + 936);
    v804 = *(v1 + 912);
    v137 = *(v1 + 792);
    v760 = *(v1 + 840) + 8;
    v768 = *(v1 + 832);
    v138 = swift_slowAlloc();
    v738 = swift_slowAlloc();
    v831[0] = v738;
    *v138 = 136446722;
    v139 = *(v134 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v140 = sub_25424EA58();
    v724 = v133;
    v142 = v141;
    sub_25417C0B0(v137, type metadata accessor for EventQuery);
    v143 = sub_2542203C4(v140, v142, v831);

    *(v138 + 4) = v143;
    *(v138 + 12) = 2082;
    v144 = sub_25424EA58();
    v146 = v145;
    v132(v135, v136);
    v147 = sub_2542203C4(v144, v146, v831);

    *(v138 + 14) = v147;
    *(v138 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    v148 = swift_getDynamicType();
    v149 = *(v1 + 168);
    *(v1 + 392) = v148;
    *(v1 + 400) = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
    v150 = sub_25424DD08();
    v152 = v151;
    __swift_destroy_boxed_opaque_existential_1((v1 + 136));
    v153 = sub_2542203C4(v150, v152, v831);

    *(v138 + 24) = v153;
    _os_log_impl(&dword_254124000, v129, v749, "[%{public}s] Record contains an event that matches query: %{public}s: %s", v138, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v738, -1, -1);
    MEMORY[0x259C07330](v138, -1, -1);

    v724(v804, v768);
  }

  else
  {
    v219 = *(v1 + 984);
    v220 = *(v1 + 936);
    v221 = *(v1 + 912);
    v222 = *(v1 + 840);
    v223 = *(v1 + 832);
    v224 = *(v1 + 792);

    __swift_destroy_boxed_opaque_existential_1((v1 + 136));
    v132(v219, v220);
    sub_25417C0B0(v224, type metadata accessor for EventQuery);
    v133(v221, v223);
  }

  v225 = *(v1 + 1144);
  v226 = *(v1 + 1056);
  v227 = *(v1 + 1048);
  v228 = *(v1 + 624);
  v229 = *(v1 + 616);
  v230 = *(v1 + 544);
  v231 = *(v1 + 520);
  v232 = *(v1 + 496);
  (*(v1 + 1136))(v231, *(v1 + 992), *(v1 + 936));
  sub_25417C110(v230, v231 + *(v232 + 20), type metadata accessor for SomeEvent);
  sub_254132DF4(v226, v227, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v228 + 48))(v227, 1, v229) == 1)
  {
    v774 = *(v1 + 1200);
    v788 = *(v1 + 1208);
    v807 = *(v1 + 1160);
    v825 = *(v1 + 1168);
    v679 = *(v1 + 1104);
    v233 = *(v1 + 1056);
    v234 = *(v1 + 1048);
    v741 = *(v1 + 936);
    v752 = *(v1 + 992);
    v235 = *(v1 + 664);
    v236 = *(v1 + 624);
    v237 = *(v1 + 616);
    v763 = *(v1 + 584);
    v725 = *(v1 + 544);
    v238 = *(v1 + 520);
    v239 = *(v1 + 504);
    v695 = *(v1 + 1112);
    v709 = *(v1 + 512);
    sub_254132E5C(v233, &unk_27F5BA1B0, qword_2542544A0);
    sub_254132E5C(v234, &unk_27F5BA1B0, qword_2542544A0);
    (*(v236 + 16))(v233, v235, v237);
    v679(v233, 0, 1, v237);
    sub_25417C110(v238, v239, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v709, v239);
    swift_endAccess();

    sub_25417C0B0(v709, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v238, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v725, type metadata accessor for SomeEvent);
    v774(v235, v237);
    v807(v752, v741);
    v240 = v763;
LABEL_45:
    sub_254132E5C(v240, &qword_27F5B9110, &qword_254254530);
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    v2 = v830;
    v76 = v830;
    v70 = v683;
    goto LABEL_91;
  }

  v259 = *(v1 + 664);
  v678(*(v1 + 656), *(v1 + 1048), *(v1 + 616));
  sub_25417BFB4(&qword_27F5B9138, MEMORY[0x277CC9578]);
  v168 = sub_25424DC98();
  if (v168)
  {
    v260 = *(v1 + 1208);
    v261 = *(v1 + 1200);
    v809 = *(v1 + 1160);
    v827 = *(v1 + 1168);
    v764 = *(v1 + 936);
    v775 = *(v1 + 992);
    v753 = *(v1 + 664);
    v262 = *(v1 + 656);
    v263 = *(v1 + 616);
    v789 = *(v1 + 584);
    v264 = *(v1 + 544);
    v265 = *(v1 + 520);
    v267 = *(v1 + 504);
    v266 = *(v1 + 512);
    sub_25417C110(v265, v267, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v266, v267);
    swift_endAccess();

    sub_25417C0B0(v266, type metadata accessor for EventQuery.FetchedRecordInfo);
    v261(v262, v263);
    sub_25417C0B0(v265, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v264, type metadata accessor for SomeEvent);
    v261(v753, v263);
    v809(v775, v764);
    v240 = v789;
    goto LABEL_45;
  }

  v274 = *(v1 + 408);
  if (!v274[2])
  {
    v440 = *(v1 + 1248);
    v441 = *(v1 + 1240);
    v442 = *(v1 + 1307);
    v443 = *(v1 + 1232);
    v444 = *(v1 + 1216);
    goto LABEL_104;
  }

  v275 = *(v1 + 1304);
  if (v275)
  {
    v276 = *(v1 + 472);
  }

  else
  {
    v445 = *(v1 + 1232);
    v446 = *(v1 + 472);
    v276 = v446 - v445;
    if (__OFSUB__(v446, v445))
    {
LABEL_154:
      __break(1u);
      return MEMORY[0x2822005A8](v168, v169, v170, v171, v172);
    }
  }

  v447 = *(v1 + 1128);
  v448 = *(v1 + 800);
  v449 = *(v1 + 744);
  v450 = *(v448 + *(v447 + 64));
  swift_getObjectType();
  v451 = sub_2541656E4(v274, v276, v275 & 1, v448 + *(v447 + 24), v450, v449);
  v453 = v452;
  v454 = v274[2];
  swift_beginAccess();
  if (v454 > 0xA)
  {

    v455 = MEMORY[0x277D84FA0];
LABEL_100:
    *(v1 + 408) = v455;
    goto LABEL_101;
  }

  if (v274[2])
  {
    v456 = *(v1 + 408);
    swift_isUniquelyReferenced_nonNull_native();
    v831[0] = *(v1 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
    sub_25424E618();
    v455 = v831[0];
    goto LABEL_100;
  }

LABEL_101:
  v457 = *(v1 + 1248);
  v168 = swift_endAccess();
  v441 = v457 + v451;
  if (__OFADD__(v457, v451))
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v458 = *(v1 + 1232);
  v444 = v458 + v451;
  if (__OFADD__(v458, v451))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v442 = v453 ^ 1 | *(v1 + 1307);
  v443 = v458 + v451;
  v440 = v457 + v451;
LABEL_104:
  v799 = v441;
  v817 = v444;
  v756 = v440;
  if ((*(v1 + 1304) & 1) == 0 && v443 == *(v1 + 472))
  {
    LODWORD(v768) = v442;
    v459 = *(v1 + 784);
    v460 = *(v1 + 488);
    sub_25421ACE8(*(v1 + 904));
    sub_25417C110(v460, v459, type metadata accessor for EventQuery);
    v461 = sub_25424DA88();
    v462 = sub_25424E408();
    v463 = os_log_type_enabled(v461, v462);
    v464 = *(v1 + 1208);
    v792 = *(v1 + 1200);
    if (v463)
    {
      v630 = *(v1 + 1176);
      v715 = *(v1 + 1160);
      v728 = *(v1 + 1168);
      v657 = *(v1 + 1152);
      v465 = *(v1 + 1128);
      v700 = *(v1 + 992);
      v633 = *(v1 + 936);
      v648 = *(v1 + 832);
      v652 = *(v1 + 904);
      v466 = *(v1 + 784);
      v467 = *(v1 + 712);
      v734 = *(v1 + 704);
      v745 = *(v1 + 720);
      v671 = *(v1 + 664);
      v639 = *(v1 + 616);
      v642 = *(v1 + 656);
      v675 = *(v1 + 584);
      v664 = *(v1 + 544);
      v636 = *(v1 + 840) + 8;
      v645 = *(v1 + 520);
      v2 = swift_slowAlloc();
      v468 = swift_slowAlloc();
      v831[0] = v468;
      *v2 = 136446466;
      v469 = *(v465 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v470 = sub_25424EA58();
      v472 = v471;
      sub_25417C0B0(v466, type metadata accessor for EventQuery);
      v473 = sub_2542203C4(v470, v472, v831);

      *(v2 + 4) = v473;
      *(v2 + 12) = 2048;
      *(v2 + 14) = v630;
      _os_log_impl(&dword_254124000, v461, v462, "[%{public}s] Reached subquery limit: %ld", v2, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v468);
      MEMORY[0x259C07330](v468, -1, -1);
      MEMORY[0x259C07330](v2, -1, -1);

      v657(v652, v648);
      v792(v642, v639);
      sub_25417C0B0(v645, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v664, type metadata accessor for SomeEvent);
      v792(v671, v639);
      v715(v700, v633);
      sub_254132E5C(v675, &qword_27F5B9110, &qword_254254530);
      v474 = *(v467 + 8);
      v0 = (v467 + 8);
      v474(v745, v734);
    }

    else
    {
      v718 = *(v1 + 1160);
      v731 = *(v1 + 1168);
      v653 = *(v1 + 1152);
      v703 = *(v1 + 992);
      v489 = *(v1 + 904);
      v490 = *(v1 + 840);
      v2 = *(v1 + 832);
      v491 = *(v1 + 784);
      v492 = *(v1 + 712);
      v734 = *(v1 + 704);
      v745 = *(v1 + 720);
      v0 = *(v1 + 656);
      v493 = *(v1 + 616);
      v673 = *(v1 + 584);
      v675 = *(v1 + 936);
      v658 = *(v1 + 544);
      v666 = *(v1 + 664);
      v649 = *(v1 + 520);

      sub_25417C0B0(v491, type metadata accessor for EventQuery);
      v653(v489, v2);
      v792(v0, v493);
      sub_25417C0B0(v649, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v658, type metadata accessor for SomeEvent);
      v792(v666, v493);
      v718(v703, v675);
      sub_254132E5C(v673, &qword_27F5B9110, &qword_254254530);
      (*(v492 + 8))(v745, v734);
    }

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    v784 = 0;
    v35 = *(v1 + 472);
    v36 = v817;
    v30 = v830;
    v28 = v830;
    v34 = v35;
    v29 = v683;
    v32 = v799;
    v31 = v756;
    v33 = v768;
LABEL_8:
    if (v29 == *(v1 + 1176))
    {
      goto LABEL_9;
    }

    goto LABEL_115;
  }

  v745 = v443;
  v475 = *(v1 + 1208);
  v2 = *(v1 + 1200);
  if ((v442 & 1) == 0)
  {
    v665 = *(v1 + 1104);
    v672 = *(v1 + 1112);
    v482 = *(v1 + 1056);
    v742 = *(v1 + 992);
    v717 = *(v1 + 1168);
    v730 = *(v1 + 936);
    v483 = *(v1 + 664);
    v681 = *(v1 + 656);
    v484 = *(v1 + 624);
    v485 = *(v1 + 616);
    v778 = *(v1 + 584);
    v794 = *(v1 + 1160);
    v702 = *(v1 + 544);
    v486 = *(v1 + 520);
    v488 = *(v1 + 504);
    v487 = *(v1 + 512);
    sub_254132E5C(v482, &unk_27F5BA1B0, qword_2542544A0);
    (*(v484 + 16))(v482, v483, v485);
    v665(v482, 0, 1, v485);
    sub_25417C110(v486, v488, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v487, v488);
    swift_endAccess();

    sub_25417C0B0(v487, type metadata accessor for EventQuery.FetchedRecordInfo);
    (v2)(v681, v485);
    sub_25417C0B0(v486, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v702, type metadata accessor for SomeEvent);
    (v2)(v483, v485);
    v794(v742, v730);
    sub_254132E5C(v778, &qword_27F5B9110, &qword_254254530);
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    v270 = 0;
    v273 = v817;
    v2 = v830;
    v76 = v830;
    v272 = v745;
    v271 = v745;
    v70 = v683;
    goto LABEL_89;
  }

  v476 = *(v1 + 1176);
  v729 = *(v1 + 1160);
  v734 = *(v1 + 1168);
  v701 = *(v1 + 936);
  v716 = *(v1 + 992);
  v477 = *(v1 + 712);
  v768 = *(v1 + 704);
  v793 = *(v1 + 720);
  v478 = *(v1 + 664);
  v479 = *(v1 + 656);
  v480 = *(v1 + 616);
  v675 = *(v1 + 584);
  v481 = *(v1 + 544);
  v0 = *(v1 + 520);

  (v2)(v479, v480);
  sub_25417C0B0(v0, type metadata accessor for EventQuery.FetchedRecordInfo);
  sub_25417C0B0(v481, type metadata accessor for SomeEvent);
  (v2)(v478, v480);
  v729(v716, v701);
  sub_254132E5C(v675, &qword_27F5B9110, &qword_254254530);
  (*(v477 + 8))(v793, v768);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (v683 == v476)
  {
    v784 = 0;
    v33 = 1;
    v36 = v817;
    v30 = v830;
    v28 = v830;
    v35 = v745;
    v34 = v745;
    v32 = v799;
LABEL_9:
    v771 = v33;
    v799 = v32;
    v817 = v36;
    v734 = v28;
    v745 = v35;
    v756 = v34;
    v830 = v30;
    v37 = *(v1 + 1144);
    v38 = *(v1 + 1136);
    v39 = *(v1 + 1008);
    v40 = *(v1 + 968);
    v41 = *(v1 + 936);
    v42 = *(v1 + 880);
    v43 = *(v1 + 800);
    v44 = *(v1 + 768);
    v45 = *(v1 + 488);
    (*(*(v1 + 736) + 8))(*(v1 + 744), *(v1 + 728));
    sub_25417C0B0(v43, type metadata accessor for EventQuery);
    sub_25421ACE8(v42);
    sub_25417C110(v45, v44, type metadata accessor for EventQuery);
    v38(v40, v39, v41);
    v46 = sub_25424DA88();
    v47 = sub_25424E408();
    if (os_log_type_enabled(v46, v47))
    {
      v675 = *(v1 + 1168);
      v683 = *(v1 + 1192);
      v48 = *(v1 + 1128);
      v661 = *(v1 + 968);
      v669 = *(v1 + 1160);
      v49 = *(v1 + 936);
      v707 = *(v1 + 880);
      v722 = *(v1 + 1152);
      v687 = (*(v1 + 840) + 8);
      v693 = *(v1 + 832);
      v50 = *(v1 + 768);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v831[0] = v52;
      *v51 = 136446978;
      v53 = *(v48 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v54 = sub_25424EA58();
      v56 = v55;
      sub_25417C0B0(v50, type metadata accessor for EventQuery);
      v57 = sub_2542203C4(v54, v56, v831);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2082;
      v58 = sub_25424EA58();
      v60 = v59;
      v669(v661, v49);
      v61 = sub_2542203C4(v58, v60, v831);

      *(v51 + 14) = v61;
      *(v51 + 22) = 2048;
      *(v51 + 24) = v683;
      *(v51 + 32) = 2048;
      *(v51 + 34) = v799;
      _os_log_impl(&dword_254124000, v46, v47, "[%{public}s] Finished subquery %{public}s (%ld), emitted %ld matching event(s)", v51, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v52, -1, -1);
      MEMORY[0x259C07330](v51, -1, -1);

      v722(v707, v693);
      if ((v771 & 1) == 0)
      {
LABEL_11:
        v62 = *(v1 + 1032);
        v63 = *(v1 + 624);
        v64 = *(v1 + 616);
        sub_254132DF4(*(v1 + 1056), v62, &unk_27F5BA1B0, qword_2542544A0);
        if ((*(v63 + 48))(v62, 1, v64) == 1)
        {
          v65 = *(v1 + 1168);
          v66 = *(v1 + 1032);
          v67 = *(v1 + 824);
          (*(v1 + 1160))(*(v1 + 1008), *(v1 + 936));
          sub_254132E5C(v66, &unk_27F5BA1B0, qword_2542544A0);
          v68 = v67;
          goto LABEL_130;
        }

        v154 = *(v1 + 1208);
        v155 = *(v1 + 1200);
        v156 = *(v1 + 1088);
        v157 = *(v1 + 672);
        v158 = *(v1 + 616);
        (*(*(v1 + 624) + 32))(*(v1 + 640), *(v1 + 1032), v158);
        sub_25424D1D8();
        LOBYTE(v156) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
        v155(v157, v158);
        if (v156)
        {
          sub_25421ACE8(*(v1 + 872));
          v159 = sub_25424DA88();
          v160 = sub_25424E428();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&dword_254124000, v159, v160, "Batch limit too small to make any progress with this coalescing window, increasing", v161, 2u);
            MEMORY[0x259C07330](v161, -1, -1);
          }

          v162 = *(v1 + 1152);
          v163 = *(v1 + 1120);
          v164 = *(v1 + 872);
          v165 = *(v1 + 840);
          v166 = *(v1 + 832);

          v162(v164, v166);
          v3 = v163 * 1.1;
        }

        else
        {
          v3 = *(v1 + 1120);
          if (v3 > 1.0)
          {
            sub_25421ACE8(*(v1 + 864));
            v211 = sub_25424DA88();
            v212 = sub_25424E408();
            v213 = os_log_type_enabled(v211, v212);
            v214 = *(v1 + 1152);
            v215 = *(v1 + 864);
            v216 = *(v1 + 840);
            v217 = *(v1 + 832);
            if (v213)
            {
              v218 = swift_slowAlloc();
              *v218 = 0;
              _os_log_impl(&dword_254124000, v211, v212, "Resuming using original batch limit", v218, 2u);
              MEMORY[0x259C07330](v218, -1, -1);
            }

            v214(v215, v217);
            v3 = 1.0;
          }
        }

        v768 = *(v1 + 1088);
        v0 = *(v1 + 1080);
        v277 = *(v1 + 1072);
        v278 = *(v1 + 1064);
        v279 = *(v1 + 672);
        v280 = *(v1 + 640);
        v281 = *(v1 + 632);
        v282 = *(v1 + 624);
        v2 = *(v1 + 616);
        LODWORD(v799) = *(v1 + 1304);
        v283 = *(v1 + 456);
        sub_25424D1F8();
        (*(v282 + 16))(v281, v280, v2);
        sub_25424D1E8();
        (*(v277 + 8))(v768, v278);
        (*(v277 + 32))(v768, v0, v278);
        v284 = *(v1 + 472);
        if (v799)
        {
LABEL_57:
          v286 = *(v1 + 1208);
          v287 = *(v1 + 1200);
          v810 = *(v1 + 1168);
          v288 = *(v1 + 1160);
          v289 = *(v1 + 1008);
          v290 = *(v1 + 936);
          v291 = *(v1 + 824);
          v292 = *(v1 + 640);
          v293 = *(v1 + 616);
          v294 = *(v1 + 488);
          v295 = sub_2541677C8(*(v1 + 1088), *(v1 + 1096) != 0, v284, *(v1 + 1304) & 1);
          v287(v292, v293);
          v288(v289, v290);
          sub_25417C0B0(v291, type metadata accessor for CKQueryAsyncSequence);
          sub_25424E1E8();
          if (v784)
          {
            v296 = *(v1 + 1088);
            v297 = *(v1 + 1072);
            v298 = *(v1 + 1064);
            sub_254132E5C(*(v1 + 1056), &unk_27F5BA1B0, qword_2542544A0);
            (*(v297 + 8))(v296, v298);
            goto LABEL_4;
          }

          v799 = v295;
          v299 = *(v1 + 1192);
          *(v1 + 1120) = v3;
          v300 = *(v1 + 1088);
          v301 = *(v1 + 1024);
          v302 = *(v1 + 944);
          v303 = *(v1 + 936);
          v304 = *(v1 + 488);
          v305 = *(v1 + 1306);
          v306 = *(v1 + 464);
          v307 = type metadata accessor for EventQuery.Configuration(0);
          v2 = *(v302 + 16);
          *(v1 + 1128) = v307;
          v768 = v307;
          v308 = *(v307 + 24);
          *(v1 + 1300) = v308;
          *(v1 + 1136) = v2;
          *(v1 + 1144) = (v302 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v675 = v308;
          v683 = v304;
          (v2)(v301, v304 + v308, v303);
          v309 = sub_25417C454(v301, v300, 0, v305, 0, 0);
          *(v1 + 416) = v309;
          v310 = sub_25417DE78(v301, v306);
          v687 = v299;
          if (!v310)
          {
            goto LABEL_62;
          }

          v0 = v310;
          if (v309 >> 62)
          {
            goto LABEL_143;
          }

          while (1)
          {
            sub_2541D2080(0, 0, v0);

            v311 = *(v1 + 416);
LABEL_62:
            v312 = *(v1 + 1024);
            v313 = *(v1 + 1016);
            v314 = *(v1 + 936);
            v315 = *(v1 + 928);
            sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
            v316 = sub_25424DF88();

            v317 = [objc_opt_self() andPredicateWithSubpredicates_];

            sub_25421ACE8(v315);
            v790 = v2;
            (v2)(v313, v312, v314);
            v318 = v317;
            v319 = sub_25424DA88();
            v320 = sub_25424E418();

            v321 = os_log_type_enabled(v319, v320);
            v322 = *(v1 + 1016);
            v323 = *(v1 + 944);
            v324 = *(v1 + 936);
            v325 = *(v1 + 928);
            v326 = *(v1 + 840);
            v327 = *(v1 + 832);
            if (v321)
            {
              v710 = *(v1 + 832);
              v328 = swift_slowAlloc();
              v696 = swift_slowAlloc();
              v831[0] = v696;
              *v328 = 136315394;
              sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
              v662 = v320;
              v329 = v318;
              v330 = sub_25424EA58();
              v670 = v325;
              v332 = v331;
              v656 = v319;
              v333 = *(v323 + 8);
              v333(v322, v324);
              v334 = sub_2542203C4(v330, v332, v831);

              *(v328 + 4) = v334;
              *(v328 + 12) = 2080;
              v335 = [v329 debugDescription];
              v336 = sub_25424DCB8();
              v338 = v337;

              v339 = sub_2542203C4(v336, v338, v831);

              *(v328 + 14) = v339;
              _os_log_impl(&dword_254124000, v656, v662, "[%s] Final predicate: %s", v328, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C07330](v696, -1, -1);
              MEMORY[0x259C07330](v328, -1, -1);

              v340 = *(v326 + 8);
              v340(v670, v710);
            }

            else
            {

              v333 = *(v323 + 8);
              v333(v322, v324);
              v340 = *(v326 + 8);
              v340(v325, v327);
              v329 = v318;
            }

            *(v1 + 1160) = v333;
            v663 = v340;
            *(v1 + 1152) = v340;
            v697 = *(v1 + 1024);
            v711 = *(v1 + 1008);
            v341 = *(v1 + 936);
            v342 = *(v1 + 944) + 8;
            sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
            v343 = v329;
            v344 = sub_25424E538();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
            v345 = swift_allocObject();
            *(v345 + 16) = xmmword_254254370;
            v346 = objc_allocWithZone(MEMORY[0x277CCAC98]);
            v347 = sub_25424DCA8();
            v348 = [v346 initWithKey:v347 ascending:0];

            *(v345 + 32) = v348;
            sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
            v349 = sub_25424DF88();

            [v344 setSortDescriptors_];

            *(v1 + 1168) = v342 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v350 = v697;
            v698 = v333;
            v333(v350, v341);
            v168 = sub_25424D938();
            if (v3 > 1.0)
            {
              v351 = v3 * v799;
              if (COERCE__INT64(fabs(v351)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_147;
              }

              if (v351 <= -9.22337204e18)
              {
                goto LABEL_148;
              }

              if (v351 >= 9.22337204e18)
              {
                goto LABEL_149;
              }

              v352 = v799 + 1;
              if (__OFADD__(v799, 1))
              {
                goto LABEL_150;
              }

              if (v352 <= v351)
              {
                v352 = v351;
              }

              v799 = v352;
            }

            *(v1 + 1176) = v799;
            v353 = *(v1 + 1008);
            v0 = *(v1 + 936);
            v354 = *(v1 + 824);
            v355 = *(v1 + 816);
            v356 = *(v1 + 488);
            v2 = *(v1 + 440);
            v712 = *(v1 + 448);
            v790(v354 + v355[7], v683 + v675, v0);
            v790(v354 + v355[8], v353, v0);
            v357 = (v356 + *(v768 + 60));
            v358 = *v357;
            LOBYTE(v357) = *(v357 + 8);
            v359 = *(v356 + *(v768 + 64));
            *(v1 + 1184) = v359;
            *v354 = v2;
            v354[1] = 0;
            v354[2] = 0;
            v354[3] = v712;
            v354[4] = v344;
            *(v354 + v355[9]) = &unk_286632EC0;
            v360 = v354 + v355[10];
            *v360 = v799;
            v360[8] = 0;
            v361 = v354 + v355[11];
            *v361 = v358;
            v361[8] = v357;
            *(v354 + v355[12]) = v359;
            v799 = (v687 + 1);
            *(v1 + 1192) = v687 + 1;
            if (!__OFADD__(v687, 1))
            {
              break;
            }

LABEL_142:
            __break(1u);
LABEL_143:
            v168 = sub_25424E868();
            if (v168 < 0)
            {
              __break(1u);
              goto LABEL_145;
            }
          }

          v362 = *(v1 + 1008);
          v363 = *(v1 + 1000);
          v364 = *(v1 + 936);
          v365 = *(v1 + 920);
          v366 = *(v1 + 808);
          v367 = *(v1 + 488);
          v368 = *(v1 + 448);
          v369 = *(v1 + 440);
          swift_unknownObjectRetain();
          v370 = v368;
          sub_25421ACE8(v365);
          sub_25417C110(v367, v366, type metadata accessor for EventQuery);
          v790(v363, v362, v364);
          v371 = sub_25424DA88();
          v372 = sub_25424E408();
          v373 = os_log_type_enabled(v371, v372);
          v374 = *(v1 + 1000);
          v375 = *(v1 + 936);
          v376 = *(v1 + 920);
          v377 = *(v1 + 840);
          v378 = *(v1 + 832);
          v379 = *(v1 + 808);
          if (v373)
          {
            v380 = swift_slowAlloc();
            v726 = swift_slowAlloc();
            v831[0] = v726;
            *v380 = 136446722;
            v381 = *(v768 + 24);
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
            v382 = sub_25424EA58();
            v713 = v376;
            v384 = v383;
            sub_25417C0B0(v379, type metadata accessor for EventQuery);
            v385 = sub_2542203C4(v382, v384, v831);

            *(v380 + 4) = v385;
            *(v380 + 12) = 2082;
            v386 = sub_25424EA58();
            v388 = v387;
            v698(v374, v375);
            v389 = sub_2542203C4(v386, v388, v831);

            *(v380 + 14) = v389;
            *(v380 + 22) = 2048;
            *(v380 + 24) = v799;
            _os_log_impl(&dword_254124000, v371, v372, "[%{public}s] Beginning subquery %{public}s (%ld)", v380, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x259C07330](v726, -1, -1);
            MEMORY[0x259C07330](v380, -1, -1);

            v663(v713, v378);
          }

          else
          {

            v698(v374, v375);
            sub_25417C0B0(v379, type metadata accessor for EventQuery);
            v663(v376, v378);
          }

          v714 = *(v1 + 1296);
          v390 = *(v1 + 744);
          v391 = *(v1 + 736);
          v392 = *(v1 + 728);
          v393 = *(v1 + 696);
          v791 = *(v1 + 720);
          v811 = *(v1 + 688);
          v776 = *(v1 + 680);
          v394 = *(v1 + 672);
          v395 = *(v1 + 624);
          v727 = *(v1 + 616);
          v396 = *(v1 + 608);
          v397 = *(v1 + 600);
          v689 = *(v1 + 824);
          v699 = *(v1 + 592);
          v398 = *(v1 + 480);
          sub_25417C110(*(v1 + 488), *(v1 + 800), type metadata accessor for EventQuery);
          (*(v391 + 16))(v390, v398, v392);
          sub_25424D898();
          v399 = swift_task_alloc();
          *(v399 + 16) = v689;
          *(v399 + 24) = v394;
          sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
          (*(v397 + 104))(v396, v714, v699);
          sub_25424E278();

          v400 = *(v395 + 8);
          *(v1 + 1200) = v400;
          *(v1 + 1208) = (v395 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v400(v394, v727);
          sub_25424E178();
          (*(v811 + 8))(v393, v776);
          swift_beginAccess();
          v70 = 0;
          v270 = 0;
          v269 = 0;
          v268 = 0;
          v273 = v817;
          v2 = v830;
          v272 = v745;
          v271 = v756;
          v76 = v734;
          goto LABEL_90;
        }

        v285 = __OFSUB__(v284, v756);
        v284 -= v756;
        if (!v285)
        {
          v745 = v756;
          goto LABEL_57;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v103 = *(v1 + 1168);
      v104 = *(v1 + 1160);
      v105 = *(v1 + 1152);
      v106 = *(v1 + 968);
      v107 = *(v1 + 936);
      v108 = *(v1 + 880);
      v109 = v46;
      v110 = *(v1 + 840);
      v111 = *(v1 + 832);
      v112 = *(v1 + 768);

      v104(v106, v107);
      sub_25417C0B0(v112, type metadata accessor for EventQuery);
      v105(v108, v111);
      if ((v771 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v113 = *(v1 + 1168);
    v114 = *(v1 + 824);
    (*(v1 + 1160))(*(v1 + 1008), *(v1 + 936));
    v68 = v114;
    goto LABEL_130;
  }

  v36 = v817;
  v30 = v830;
  v35 = v745;
  v31 = v756;
  v32 = v799;
LABEL_115:
  v494 = *(v1 + 408);
  if (!v494[2])
  {
    v813 = v32;
    v817 = v36;
    (*(*(v1 + 736) + 8))(*(v1 + 744), *(v1 + 728));
    goto LABEL_127;
  }

  v495 = *(v1 + 1304);
  v496 = *(v1 + 472);
  if ((v495 & 1) == 0)
  {
    v285 = __OFSUB__(v496, v35);
    v496 -= v35;
    if (v285)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }
  }

  v756 = v31;
  v497 = *(v1 + 1128);
  v2 = *(v1 + 800);
  v498 = *(v1 + 744);
  v499 = *(v2 + *(v497 + 64));
  swift_getObjectType();
  v500 = sub_2541656E4(v494, v496, v495 & 1, v2 + *(v497 + 24), v499, v498);
  v501 = v494[2];
  swift_beginAccess();
  if (v501 <= 0xA)
  {
    if (!v494[2])
    {
      goto LABEL_124;
    }

    v503 = *(v1 + 408);
    swift_isUniquelyReferenced_nonNull_native();
    v831[0] = *(v1 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
    sub_25424E618();
    v502 = v831[0];
  }

  else
  {

    v502 = MEMORY[0x277D84FA0];
  }

  *(v1 + 408) = v502;
LABEL_124:
  v504 = *(v1 + 744);
  v505 = *(v1 + 736);
  v0 = *(v1 + 728);
  swift_endAccess();
  (*(v505 + 8))(v504, v0);
  if (__OFADD__(v756, v500))
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (__OFADD__(v35, v500))
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v813 = v756 + v500;
  v817 = v35 + v500;
LABEL_127:
  v830 = v30;
  v506 = *(v1 + 1144);
  v507 = *(v1 + 1136);
  v508 = *(v1 + 1008);
  v509 = *(v1 + 960);
  v510 = *(v1 + 936);
  v511 = *(v1 + 856);
  v512 = *(v1 + 760);
  v513 = *(v1 + 488);
  sub_25417C0B0(*(v1 + 800), type metadata accessor for EventQuery);
  sub_25421ACE8(v511);
  sub_25417C110(v513, v512, type metadata accessor for EventQuery);
  v507(v509, v508, v510);
  v514 = sub_25424DA88();
  v515 = sub_25424E408();
  if (os_log_type_enabled(v514, v515))
  {
    v704 = *(v1 + 1168);
    v719 = *(v1 + 1192);
    v516 = *(v1 + 1128);
    v766 = *(v1 + 1152);
    v779 = *(v1 + 1008);
    v685 = *(v1 + 960);
    v690 = *(v1 + 1160);
    v517 = *(v1 + 936);
    v743 = *(v1 + 832);
    v754 = *(v1 + 856);
    v795 = *(v1 + 824);
    v732 = *(v1 + 840) + 8;
    v518 = *(v1 + 760);
    v519 = swift_slowAlloc();
    v520 = swift_slowAlloc();
    v831[0] = v520;
    *v519 = 136446978;
    v521 = *(v516 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v522 = sub_25424EA58();
    v524 = v523;
    sub_25417C0B0(v518, type metadata accessor for EventQuery);
    v525 = sub_2542203C4(v522, v524, v831);

    *(v519 + 4) = v525;
    *(v519 + 12) = 2082;
    v526 = sub_25424EA58();
    v528 = v527;
    v690(v685, v517);
    v529 = sub_2542203C4(v526, v528, v831);

    *(v519 + 14) = v529;
    *(v519 + 22) = 2048;
    *(v519 + 24) = v719;
    *(v519 + 32) = 2048;
    *(v519 + 34) = v813;
    _os_log_impl(&dword_254124000, v514, v515, "[%{public}s] Finished subquery %{public}s (%ld), emitted %ld matching event(s)", v519, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v520, -1, -1);
    MEMORY[0x259C07330](v519, -1, -1);

    v766(v754, v743);
    v690(v779, v517);
    v68 = v795;
  }

  else
  {
    v530 = *(v1 + 1168);
    v531 = v514;
    v532 = *(v1 + 1160);
    v533 = *(v1 + 1152);
    v534 = *(v1 + 960);
    v535 = *(v1 + 936);
    v536 = *(v1 + 856);
    v537 = *(v1 + 840);
    v538 = *(v1 + 832);
    v796 = *(v1 + 1008);
    v814 = *(v1 + 824);
    v539 = *(v1 + 760);

    v532(v534, v535);
    sub_25417C0B0(v539, type metadata accessor for EventQuery);
    v533(v536, v538);
    v532(v796, v535);
    v68 = v814;
  }

LABEL_130:
  sub_25417C0B0(v68, type metadata accessor for CKQueryAsyncSequence);
  v540 = *(v1 + 752);
  v541 = *(v1 + 488);
  sub_25421ACE8(*(v1 + 848));
  sub_25417C110(v541, v540, type metadata accessor for EventQuery);
  v542 = sub_25424DA88();
  v543 = sub_25424E408();
  if (os_log_type_enabled(v542, v543))
  {
    v544 = *(v1 + 1192);
    v545 = *(v1 + 1128);
    v546 = *(v1 + 936);
    v797 = *(v1 + 848);
    v815 = *(v1 + 1152);
    v547 = *(v1 + 832);
    v548 = *(v1 + 752);
    v780 = *(v1 + 840) + 8;
    v549 = swift_slowAlloc();
    v550 = swift_slowAlloc();
    v831[0] = v550;
    *v549 = 136446466;
    v551 = *(v545 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v552 = sub_25424EA58();
    v554 = v553;
    sub_25417C0B0(v548, type metadata accessor for EventQuery);
    v555 = sub_2542203C4(v552, v554, v831);

    *(v549 + 4) = v555;
    *(v549 + 12) = 2048;
    *(v549 + 14) = v544;
    _os_log_impl(&dword_254124000, v542, v543, "[%{public}s] Executed %ld subquery(s)", v549, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v550);
    MEMORY[0x259C07330](v550, -1, -1);
    MEMORY[0x259C07330](v549, -1, -1);

    v815(v797, v547);
  }

  else
  {
    v556 = *(v1 + 1152);
    v557 = *(v1 + 848);
    v558 = *(v1 + 840);
    v559 = *(v1 + 832);
    v560 = *(v1 + 752);

    sub_25417C0B0(v560, type metadata accessor for EventQuery);
    v556(v557, v559);
  }

  v561 = *(v1 + 1168);
  v562 = *(v1 + 1160);
  v563 = *(v1 + 1144);
  v564 = *(v1 + 1136);
  v574 = *(v1 + 1300);
  v580 = *(v1 + 1088);
  v581 = *(v1 + 1080);
  v578 = *(v1 + 1072);
  v579 = *(v1 + 1064);
  v576 = *(v1 + 1184);
  v577 = *(v1 + 1056);
  v582 = *(v1 + 1048);
  v583 = *(v1 + 1040);
  v584 = *(v1 + 1032);
  v585 = *(v1 + 1024);
  v586 = *(v1 + 1016);
  v587 = *(v1 + 1008);
  v588 = *(v1 + 1000);
  v590 = *(v1 + 992);
  v592 = *(v1 + 984);
  v594 = *(v1 + 976);
  v596 = *(v1 + 968);
  v598 = *(v1 + 960);
  v565 = *(v1 + 952);
  v566 = *(v1 + 936);
  v600 = *(v1 + 928);
  v602 = *(v1 + 920);
  v604 = *(v1 + 912);
  v606 = *(v1 + 904);
  v608 = *(v1 + 896);
  v610 = *(v1 + 888);
  v612 = *(v1 + 880);
  v614 = *(v1 + 872);
  v616 = *(v1 + 864);
  v618 = *(v1 + 856);
  v620 = *(v1 + 848);
  v622 = *(v1 + 824);
  v624 = *(v1 + 808);
  v626 = *(v1 + 800);
  v628 = *(v1 + 792);
  v631 = *(v1 + 784);
  v634 = *(v1 + 776);
  v637 = *(v1 + 768);
  v640 = *(v1 + 760);
  v643 = *(v1 + 752);
  v646 = *(v1 + 744);
  v650 = *(v1 + 720);
  v654 = *(v1 + 696);
  v659 = *(v1 + 672);
  v667 = *(v1 + 664);
  v674 = *(v1 + 656);
  v682 = *(v1 + 648);
  v686 = *(v1 + 640);
  v691 = *(v1 + 632);
  v705 = *(v1 + 608);
  v720 = *(v1 + 584);
  v733 = *(v1 + 576);
  v744 = *(v1 + 568);
  v755 = *(v1 + 552);
  v767 = *(v1 + 544);
  v781 = *(v1 + 520);
  v798 = *(v1 + 512);
  v816 = *(v1 + 504);
  v575 = *(v1 + 488);
  v564(v565, v575 + v574, v566);
  v567 = type metadata accessor for EventsAsyncSequenceLogEvent();
  v568 = objc_allocWithZone(v567);
  v564(&v568[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v565, v566);
  v568[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 10;
  *&v568[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v568[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = v830;
  *&v568[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v1 + 344) = v568;
  *(v1 + 352) = v567;
  v569 = objc_msgSendSuper2((v1 + 344), sel_init);
  v562(v565, v566);
  [v576 submitLogEvent_];

  v564(v565, v575 + v574, v566);
  v570 = objc_allocWithZone(v567);
  v564(&v570[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v565, v566);
  v570[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 12;
  *&v570[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = v817;
  *&v570[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v570[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v1 + 360) = v570;
  *(v1 + 368) = v567;
  v571 = objc_msgSendSuper2((v1 + 360), sel_init);
  v562(v565, v566);
  [v576 submitLogEvent_];

  sub_254132E5C(v577, &unk_27F5BA1B0, qword_2542544A0);
  (*(v578 + 8))(v580, v579);
  v572 = *(v1 + 408);

  v573 = *(v1 + 8);

  return v573(v817);
}

uint64_t sub_2541607AC()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[136];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[126];
  v8 = v0[117];
  v9 = v0[103];
  (*(v0[89] + 8))(v0[90], v0[88]);
  v2(v7, v8);
  sub_254132E5C(v6, &unk_27F5BA1B0, qword_2542544A0);
  (*(v4 + 8))(v3, v5);
  sub_25417C0B0(v9, type metadata accessor for CKQueryAsyncSequence);
  v10 = v0[51];

  v67 = v0[54];
  v11 = v0[136];
  v12 = v0[135];
  v13 = v0[132];
  v14 = v0[131];
  v15 = v0[130];
  v16 = v0[129];
  v17 = v0[128];
  v18 = v0[127];
  v19 = v0[126];
  v20 = v0[125];
  v23 = v0[124];
  v24 = v0[123];
  v25 = v0[122];
  v26 = v0[121];
  v27 = v0[120];
  v28 = v0[119];
  v29 = v0[116];
  v30 = v0[115];
  v31 = v0[114];
  v32 = v0[113];
  v33 = v0[112];
  v34 = v0[111];
  v35 = v0[110];
  v36 = v0[109];
  v37 = v0[108];
  v38 = v0[107];
  v39 = v0[106];
  v40 = v0[103];
  v41 = v0[101];
  v42 = v0[100];
  v43 = v0[99];
  v44 = v0[98];
  v45 = v0[97];
  v46 = v0[96];
  v47 = v0[95];
  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[90];
  v51 = v0[87];
  v52 = v0[84];
  v53 = v0[83];
  v54 = v0[82];
  v55 = v0[81];
  v56 = v0[80];
  v57 = v0[79];
  v58 = v0[76];
  v59 = v0[73];
  v60 = v0[72];
  v61 = v0[71];
  v62 = v0[69];
  v63 = v0[68];
  v64 = v0[65];
  v65 = v0[64];
  v66 = v0[63];

  v21 = v0[1];

  return v21();
}

uint64_t sub_254160BA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v7 = type metadata accessor for EventQuery(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = sub_25424DAA8();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  if (a2)
  {
    sub_25421ACE8(&v59 - v25);
    sub_25417C110(a3, v16, type metadata accessor for EventQuery);
    v27 = sub_25424DA88();
    v28 = sub_25424E418();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 136315138;
      v31 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v32 = sub_25424EA58();
      v34 = v33;
      sub_25417C0B0(v16, type metadata accessor for EventQuery);
      v35 = sub_2542203C4(v32, v34, &v62);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_254124000, v27, v28, "[%s] Not imposing any subquery result limit because none was requested", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x259C07330](v30, -1, -1);
      MEMORY[0x259C07330](v29, -1, -1);
    }

    else
    {

      sub_25417C0B0(v16, type metadata accessor for EventQuery);
    }

    (*(v60 + 8))(v26, v61);
    return 0;
  }

  v36 = type metadata accessor for EventQuery.Configuration(0);
  if (*(a3 + *(v36 + 36)) && !*(a4 + 16))
  {
    sub_25421ACE8(v24);
    sub_25417C110(a3, v14, type metadata accessor for EventQuery);
    v50 = sub_25424DA88();
    v51 = sub_25424E418();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *v52 = 136315138;
      v54 = *(v36 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v55 = sub_25424EA58();
      v57 = v56;
      sub_25417C0B0(v14, type metadata accessor for EventQuery);
      v58 = sub_2542203C4(v55, v57, &v62);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_254124000, v50, v51, "[%s] Not imposing any subquery result limit because there are no tags to match against", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x259C07330](v53, -1, -1);
      MEMORY[0x259C07330](v52, -1, -1);
    }

    else
    {

      sub_25417C0B0(v14, type metadata accessor for EventQuery);
    }

    (*(v60 + 8))(v24, v61);
    return 0;
  }

  result = sub_25424D208();
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = 4 * (v38 / 3600) + 4;
  v40 = v59 + v39;
  if (!__OFADD__(v59, v39))
  {
    sub_25421ACE8(v21);
    sub_25417C110(a3, v11, type metadata accessor for EventQuery);
    v41 = sub_25424DA88();
    v42 = sub_25424E418();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62 = v44;
      *v43 = 136315650;
      v45 = *(v36 + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v46 = sub_25424EA58();
      v48 = v47;
      sub_25417C0B0(v11, type metadata accessor for EventQuery);
      v49 = sub_2542203C4(v46, v48, &v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v59;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v40;
      _os_log_impl(&dword_254124000, v41, v42, "[%s] Subquery is limiting result count to %ld, setting CKQuery limit to %ld to handle fake events", v43, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x259C07330](v44, -1, -1);
      MEMORY[0x259C07330](v43, -1, -1);
    }

    else
    {

      sub_25417C0B0(v11, type metadata accessor for EventQuery);
    }

    (*(v60 + 8))(v21, v61);
    return v40;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2541612EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v271 = a2;
  v243 = type metadata accessor for EventRecord.DecodedEvent(0);
  v3 = *(*(v243 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v243);
  v245 = &v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v249 = &v235 - v7;
  MEMORY[0x28223BE20](v6);
  v244 = &v235 - v8;
  v9 = type metadata accessor for EventQuery(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v247 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v256 = &v235 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v235 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v263 = &v235 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v259 = &v235 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v240 = &v235 - v23;
  MEMORY[0x28223BE20](v22);
  v248 = &v235 - v24;
  v25 = sub_25424DAA8();
  v26 = *(v25 - 8);
  v269 = v25;
  v270 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v250 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v257 = &v235 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v265 = &v235 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v266 = (&v235 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v261 = &v235 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v242 = &v235 - v39;
  MEMORY[0x28223BE20](v38);
  v252 = &v235 - v40;
  v253 = type metadata accessor for EventRecord(0);
  v41 = *(*(v253 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v253);
  v239 = &v235 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v258 = &v235 - v45;
  MEMORY[0x28223BE20](v44);
  v254 = &v235 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v235 - v49;
  v51 = sub_25424D8B8();
  v52 = *(v51 - 8);
  v267 = v51;
  v268 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v262 = &v235 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v235 - v57;
  v59 = sub_25424D948();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v59);
  v246 = &v235 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v255 = &v235 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v264 = (&v235 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v260 = &v235 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v241 = &v235 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v251 = &v235 - v73;
  MEMORY[0x28223BE20](v72);
  v75 = &v235 - v74;
  v76 = a1;
  v77 = [a1 recordID];
  v78 = [v77 recordName];

  sub_25424DCB8();
  v79 = v59;
  sub_25424D8C8();

  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_254132E5C(v58, &unk_27F5B8E50, &qword_254254390);
    v80 = v265;
    sub_25421ACE8(v265);
    sub_25417C110(v272, v17, type metadata accessor for EventQuery);
    v81 = v76;
    v82 = sub_25424DA88();
    v83 = sub_25424E408();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v274 = v85;
      *v84 = 136446722;
      v86 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v87 = sub_25424EA58();
      v89 = v88;
      sub_25417C0B0(v17, type metadata accessor for EventQuery);
      v90 = sub_2542203C4(v87, v89, &v274);

      *(v84 + 4) = v90;
      *(v84 + 12) = 2160;
      *(v84 + 14) = 1752392040;
      *(v84 + 22) = 2080;
      v91 = [v81 recordID];
      v92 = [v91 recordName];

      v93 = sub_25424DCB8();
      v95 = v94;

      v96 = sub_2542203C4(v93, v95, &v274);

      *(v84 + 24) = v96;
      _os_log_impl(&dword_254124000, v82, v83, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v85, -1, -1);
      MEMORY[0x259C07330](v84, -1, -1);
    }

    else
    {

      sub_25417C0B0(v17, type metadata accessor for EventQuery);
    }

    (*(v270 + 8))(v80, v269);
    sub_254163628(9);
LABEL_16:
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    return (*(*(v152 - 8) + 56))(v271, 1, 1, v152);
  }

  v97 = v60;
  v99 = v60 + 32;
  v98 = *(v60 + 32);
  v98(v75, v58, v59);
  v100 = MEMORY[0x259C06420](1702125924, 0xE400000000000000);
  if (!v100)
  {
    (*(v268 + 56))(v50, 1, 1, v267);
    v106 = v272;
    v107 = v264;
    goto LABEL_12;
  }

  v101 = v76;
  v238 = v98;
  v274 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
  v102 = v267;
  v103 = swift_dynamicCast();
  v104 = v268;
  (*(v268 + 56))(v50, v103 ^ 1u, 1, v102);
  v105 = (*(v104 + 48))(v50, 1, v102);
  v106 = v272;
  v107 = v264;
  if (v105 == 1)
  {
LABEL_12:
    sub_254132E5C(v50, &unk_27F5BA1B0, qword_2542544A0);
    v132 = v266;
    sub_25421ACE8(v266);
    v133 = v263;
    sub_25417C110(v106, v263, type metadata accessor for EventQuery);
    v134 = v97;
    (*(v97 + 16))(v107, v75, v79);
    v135 = sub_25424DA88();
    v136 = sub_25424E408();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = v79;
      v268 = swift_slowAlloc();
      v274 = v268;
      *v137 = 136446466;
      v139 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v265 = v75;
      v140 = sub_25424EA58();
      v141 = v133;
      v143 = v142;
      sub_25417C0B0(v141, type metadata accessor for EventQuery);
      v144 = sub_2542203C4(v140, v143, &v274);

      *(v137 + 4) = v144;
      *(v137 + 12) = 2082;
      v145 = sub_25424EA58();
      v147 = v146;
      v148 = *(v134 + 8);
      v148(v107, v79);
      v149 = sub_2542203C4(v145, v147, &v274);
      v75 = v265;

      *(v137 + 14) = v149;
      _os_log_impl(&dword_254124000, v135, v136, "[%{public}s] Ignoring record with no date: %{public}s", v137, 0x16u);
      v150 = v268;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v150, -1, -1);
      MEMORY[0x259C07330](v137, -1, -1);

      (*(v270 + 8))(v266, v269);
    }

    else
    {

      v151 = v133;
      v148 = *(v97 + 8);
      v138 = v79;
      v148(v107, v79);
      sub_25417C0B0(v151, type metadata accessor for EventQuery);
      (*(v270 + 8))(v132, v269);
    }

    sub_254163628(8);
    v148(v75, v138);
    goto LABEL_16;
  }

  v109 = *(v104 + 32);
  v108 = v104 + 32;
  v110 = v262;
  v266 = v109;
  (v109)(v262, v50, v102);
  v111 = [v101 isExpired];
  v237 = v99;
  if (v111)
  {
    sub_25421ACE8(v261);
    v112 = v259;
    sub_25417C110(v106, v259, type metadata accessor for EventQuery);
    v113 = v260;
    (*(v97 + 16))(v260, v75, v79);
    v114 = sub_25424DA88();
    v115 = sub_25424E408();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = v112;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v268 = v108;
      v119 = v79;
      v120 = v118;
      v274 = v118;
      *v117 = 136446466;
      v121 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v265 = v75;
      v122 = sub_25424EA58();
      v124 = v123;
      sub_25417C0B0(v116, type metadata accessor for EventQuery);
      v125 = sub_2542203C4(v122, v124, &v274);
      v110 = v262;

      *(v117 + 4) = v125;
      *(v117 + 12) = 2082;
      v126 = v260;
      v127 = sub_25424EA58();
      v129 = v128;
      (*(v97 + 8))(v126, v119);
      v130 = sub_2542203C4(v127, v129, &v274);
      v75 = v265;

      *(v117 + 14) = v130;
      _os_log_impl(&dword_254124000, v114, v115, "[%{public}s] Ignoring record that has expired: %{public}s", v117, 0x16u);
      swift_arrayDestroy();
      v131 = v120;
      v79 = v119;
      MEMORY[0x259C07330](v131, -1, -1);
      MEMORY[0x259C07330](v117, -1, -1);
    }

    else
    {

      (*(v97 + 8))(v113, v79);
      sub_25417C0B0(v112, type metadata accessor for EventQuery);
    }

    (*(v270 + 8))(v261, v269);
    sub_254163628(7);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v158 = *(v157 + 48);
    v159 = *(v157 + 64);
    v160 = type metadata accessor for SomeEvent();
    v161 = v271;
    (*(*(v160 - 8) + 56))(v271, 1, 1, v160);
    v162 = v161 + v158;
    v163 = v75;
    v164 = v79;
    goto LABEL_21;
  }

  v154 = v101;
  v155 = v258;
  EventRecord.init(from:)(v154, v258);
  v156 = v97;
  v165 = v79;
  v166 = v254;
  sub_25417C178(v155, v254, type metadata accessor for EventRecord);
  v167 = *(v166 + *(v253 + 28));
  if (v167 == 7)
  {
    v168 = v252;
    sub_25421ACE8(v252);
    v169 = v248;
    sub_25417C110(v272, v248, type metadata accessor for EventQuery);
    v170 = v251;
    (*(v97 + 16))(v251, v75, v165);
    v171 = sub_25424DA88();
    v172 = sub_25424E418();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = v169;
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v265 = v75;
      v176 = v175;
      v274 = v175;
      *v174 = 136315394;
      v177 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v268 = v108;
      v178 = sub_25424EA58();
      LODWORD(v264) = v172;
      v180 = v179;
      sub_25417C0B0(v173, type metadata accessor for EventQuery);
      v181 = sub_2542203C4(v178, v180, &v274);
      v110 = v262;

      *(v174 + 4) = v181;
      *(v174 + 12) = 2080;
      v182 = v251;
      v183 = sub_25424EA58();
      v185 = v184;
      (*(v156 + 8))(v182, v165);
      v186 = sub_2542203C4(v183, v185, &v274);
      v166 = v254;

      *(v174 + 14) = v186;
      _os_log_impl(&dword_254124000, v171, v264, "[%s] Ignoring fake record: %s", v174, 0x16u);
      swift_arrayDestroy();
      v187 = v176;
      v75 = v265;
      MEMORY[0x259C07330](v187, -1, -1);
      MEMORY[0x259C07330](v174, -1, -1);

      (*(v270 + 8))(v252, v269);
    }

    else
    {

      (*(v156 + 8))(v170, v165);
      sub_25417C0B0(v169, type metadata accessor for EventQuery);
      (*(v270 + 8))(v168, v269);
      v110 = v262;
    }

    sub_254163628(16);
    sub_25417C0B0(v166, type metadata accessor for EventRecord);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v195 = *(v157 + 48);
    v159 = *(v157 + 64);
    v196 = type metadata accessor for SomeEvent();
    v161 = v271;
    (*(*(v196 - 8) + 56))(v271, 1, 1, v196);
    goto LABEL_29;
  }

  v188 = v253;
  v263 = type metadata accessor for EventQuery.Configuration(0);
  v189 = (v166 + *(v188 + 32));
  v190 = *v189;
  v191 = v189[1];
  if (*(v272 + *(v263 + 84)) == 1)
  {
    LOBYTE(v274) = v167;
    v275 = v190;
    v276 = v191;
    sub_254140660(v190, v191);
    v192 = v249;
    v193 = v249;
    v194 = 1;
  }

  else
  {
    LOBYTE(v274) = v167;
    v275 = v190;
    v276 = v191;
    sub_254140660(v190, v191);
    v192 = v249;
    v193 = v249;
    v194 = 0;
  }

  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(&v274, v194, v193);
  v264 = 0;
  sub_254134D04(v275, v276);
  v197 = v244;
  sub_25417C178(v192, v244, type metadata accessor for EventRecord.DecodedEvent);
  v198 = v245;
  sub_25417C110(v197, v245, type metadata accessor for EventRecord.DecodedEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = v272;
  v110 = v262;
  if (EnumCaseMultiPayload != 1)
  {
    sub_25417C0B0(v197, type metadata accessor for EventRecord.DecodedEvent);
    sub_25417C0B0(v166, type metadata accessor for EventRecord);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v195 = *(v157 + 48);
    v159 = *(v157 + 64);
    v228 = v198;
    v161 = v271;
    sub_25417C178(v228, v271, type metadata accessor for SomeEvent);
    v229 = type metadata accessor for SomeEvent();
    (*(*(v229 - 8) + 56))(v161, 0, 1, v229);
LABEL_29:
    v162 = v161 + v195;
    v163 = v75;
    v164 = v165;
LABEL_21:
    v238(v162, v163, v164);
    (v266)(v161 + v159, v110, v267);
    return (*(*(v157 - 8) + 56))(v161, 0, 1, v157);
  }

  v201 = v242;
  sub_25421ACE8(v242);
  v202 = v240;
  sub_25417C110(v200, v240, type metadata accessor for EventQuery);
  v203 = v166;
  v204 = v239;
  sub_25417C110(v203, v239, type metadata accessor for EventRecord);
  v205 = *(v97 + 16);
  v206 = v241;
  v236 = v165;
  v205(v241, v75, v165);
  v207 = sub_25424DA88();
  v208 = sub_25424E428();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v265 = v75;
    v268 = v210;
    v274 = v210;
    *v209 = 136446722;
    v264 = v207;
    v211 = *(v263 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v212 = v236;
    v213 = sub_25424EA58();
    v215 = v214;
    sub_25417C0B0(v202, type metadata accessor for EventQuery);
    v216 = sub_2542203C4(v213, v215, &v274);

    *(v209 + 4) = v216;
    *(v209 + 12) = 2080;
    v273 = *(v204 + *(v253 + 28));
    v217 = sub_25424DD08();
    v219 = v218;
    sub_25417C0B0(v204, type metadata accessor for EventRecord);
    v220 = sub_2542203C4(v217, v219, &v274);
    v110 = v262;

    *(v209 + 14) = v220;
    *(v209 + 22) = 2080;
    v221 = v241;
    v222 = sub_25424EA58();
    v224 = v223;
    (*(v97 + 8))(v221, v212);
    v225 = sub_2542203C4(v222, v224, &v274);

    *(v209 + 24) = v225;
    v226 = v264;
    _os_log_impl(&dword_254124000, v264, v208, "[%{public}s] Ignoring fake record that had mismatched dataType (%s): %s", v209, 0x20u);
    v227 = v268;
    swift_arrayDestroy();
    v75 = v265;
    MEMORY[0x259C07330](v227, -1, -1);
    MEMORY[0x259C07330](v209, -1, -1);

    (*(v270 + 8))(v242, v269);
  }

  else
  {

    (*(v97 + 8))(v206, v236);
    sub_25417C0B0(v204, type metadata accessor for EventRecord);
    sub_25417C0B0(v202, type metadata accessor for EventQuery);
    (*(v270 + 8))(v201, v269);
  }

  sub_254163628(16);
  sub_25417C0B0(v244, type metadata accessor for EventRecord.DecodedEvent);
  sub_25417C0B0(v254, type metadata accessor for EventRecord);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
  v231 = *(v230 + 48);
  v232 = *(v230 + 64);
  v233 = type metadata accessor for SomeEvent();
  v234 = v271;
  (*(*(v233 - 8) + 56))(v271, 1, 1, v233);
  v238(v234 + v231, v75, v236);
  (v266)(v234 + v232, v110, v267);
  (*(*(v230 - 8) + 56))(v234, 0, 1, v230);
  return sub_25417C0B0(v245, type metadata accessor for EventRecord.DecodedEvent);
}

void sub_254163628(char a1)
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventQuery.Configuration(0);
  v9 = *(v4 + 16);
  v9(v7, v1 + *(v8 + 24), v3);
  v10 = type metadata accessor for EventsAsyncSequenceLogEvent();
  v11 = objc_allocWithZone(v10);
  v9(&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v7, v3);
  v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = a1;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  v13.receiver = v11;
  v13.super_class = v10;
  v12 = objc_msgSendSuper2(&v13, sel_init);
  (*(v4 + 8))(v7, v3);
  [*(v1 + *(v8 + 64)) submitLogEvent_];
}

uint64_t sub_2541637DC(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v242 = a5;
  v218 = a4;
  v214 = a3;
  v252 = a1;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v7 = *(v261 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v261);
  v212 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v233 = &v207 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v251 = (&v207 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v207 - v15;
  v262 = sub_25424D948();
  v17 = *(v262 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v262);
  v226 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v209 = &v207 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v221 = &v207 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v210 = &v207 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v213 = &v207 - v28;
  MEMORY[0x28223BE20](v27);
  v245 = &v207 - v29;
  v254 = sub_25424DAA8();
  v30 = *(v254 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v254);
  v234 = &v207 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v228 = &v207 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v211 = &v207 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v232 = &v207 - v39;
  MEMORY[0x28223BE20](v38);
  v246 = &v207 - v40;
  v208 = type metadata accessor for SomeEvent();
  v41 = *(*(v208 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v208);
  v227 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v244 = &v207 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v207 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v207 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9218, &qword_254254598);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v55 = &v207 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v57 = &v207 - v56;
  v266[0] = a2;

  sub_25416AC3C(v266);
  v58 = v266[0];
  v59 = type metadata accessor for EventQuery.Configuration(0);
  v229 = 0;
  v239 = 0;
  v60 = 0;
  v219 = v59;
  v61 = *(v59 + 64);
  v222 = v5;
  v220 = *(v5 + v61);
  v259 = (v17 + 16);
  v230 = v58;
  v62 = v58[2];
  v258 = (v17 + 8);
  v253 = (v30 + 8);
  v249 = (v7 + 16);
  v241 = (v7 + 88);
  v247 = (v7 + 8);
  v240 = *MEMORY[0x277D85888];
  v225 = (v7 + 96);
  v224 = *MEMORY[0x277D85880];
  v217 = *MEMORY[0x277D85878];
  *&v63 = 136315394;
  v223 = v63;
  *&v63 = 136446466;
  v215 = v63;
  v243 = v16;
  v248 = v50;
  v256 = v57;
  v64 = v251;
  v65 = v245;
  v250 = v48;
  v238 = v62;
  v66 = v246;
  v236 = v55;
  while (1)
  {
    if (v60 == v62)
    {
      v67 = v16;
      v68 = v66;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
      (*(*(v69 - 8) + 56))(v55, 1, 1, v69);
      v255 = v62;
      goto LABEL_9;
    }

    if ((v60 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v60 >= v230[2])
    {
      goto LABEL_43;
    }

    v67 = v16;
    v68 = v66;
    v70 = v230;
    v71 = v60;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
    v73 = *(v72 - 8);
    sub_254132DF4(v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, v55, &qword_27F5B8DD0, &qword_2542545A0);
    v255 = (v71 + 1);
    (*(v73 + 56))(v55, 0, 1, v72);
    v64 = v251;
LABEL_9:
    v74 = v256;
    sub_25417E6C8(v55, v256, &unk_27F5B9218, &qword_254254598);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
    v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
    if (v76 == 1)
    {

      return v229;
    }

    LODWORD(v237) = v76;
    sub_25417C178(v74 + *(v75 + 48), v50, type metadata accessor for SomeEvent);
    v77 = v68;
    sub_25421ACE8(v68);
    v257 = *v259;
    v257(v65, v252, v262);
    v78 = v250;
    sub_25417C110(v50, v250, type metadata accessor for SomeEvent);
    v79 = sub_25424DA88();
    v80 = sub_25424E418();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v267 = v235;
      *v81 = v223;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v82 = v262;
      v83 = sub_25424EA58();
      v85 = v84;
      v260 = *v258;
      v260(v65, v82);
      v86 = sub_2542203C4(v83, v85, &v267);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      sub_2541DA834(&v263);
      v87 = v264;
      v88 = v265;
      v89 = __swift_project_boxed_opaque_existential_1(&v263, v264);
      v266[3] = v87;
      v266[4] = *(v88 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v266);
      v91 = *(v87 - 1);
      v92 = *(v91 + 16);
      v93 = v91 + 16;
      v92(boxed_opaque_existential_1, v89, v87);
      v94 = __swift_destroy_boxed_opaque_existential_1(&v263);
      v95 = v77;
      v96 = *(v93 + 48);
      MEMORY[0x28223BE20](v94);
      v92((&v207 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0)), boxed_opaque_existential_1, v87);
      v64 = v251;
      v98 = sub_25424DD08();
      v100 = v99;
      v16 = v243;
      sub_25417C0B0(v250, type metadata accessor for SomeEvent);
      __swift_destroy_boxed_opaque_existential_1(v266);
      v101 = sub_2542203C4(v98, v100, &v267);

      *(v81 + 14) = v101;
      v102 = v80;
      v103 = v260;
      _os_log_impl(&dword_254124000, v79, v102, "[%s] Emitting matching event: %s", v81, 0x16u);
      v104 = v235;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v104, -1, -1);
      v105 = v81;
      v50 = v248;
      MEMORY[0x259C07330](v105, -1, -1);

      v106 = *v253;
      (*v253)(v95, v254);
    }

    else
    {

      sub_25417C0B0(v78, type metadata accessor for SomeEvent);
      v103 = *v258;
      (*v258)(v65, v262);
      v106 = *v253;
      (*v253)(v77, v254);
      v16 = v67;
    }

    sub_25417C110(v50, v244, type metadata accessor for SomeEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E228();
    v107 = *v249;
    v108 = v261;
    (*v249)(v64, v16, v261);
    v109 = (*v241)(v64, v108);
    if (v109 == v240)
    {
      (*v225)(v64, v261);
      v110 = *v64;
      v111 = v232;
      if (*v64 > 99)
      {
        (*v247)(v16, v261);
        sub_25417C0B0(v50, type metadata accessor for SomeEvent);
        v66 = v246;
      }

      else
      {
        sub_25421ACE8(v232);
        v112 = v213;
        v257(v213, v252, v262);
        v113 = sub_25424DA88();
        v114 = sub_25424E408();
        v115 = os_log_type_enabled(v113, v114);
        v66 = v246;
        if (v115)
        {
          v116 = swift_slowAlloc();
          v260 = v103;
          v117 = v116;
          v118 = v106;
          v119 = swift_slowAlloc();
          v266[0] = v119;
          *v117 = v215;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v120 = sub_25424EA58();
          v122 = v121;
          v260(v112, v262);
          v123 = sub_2542203C4(v120, v122, v266);

          *(v117 + 4) = v123;
          *(v117 + 12) = 2048;
          *(v117 + 14) = v110;
          _os_log_impl(&dword_254124000, v113, v114, "[%{public}s] Running out of queue space, %ld slots left", v117, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v119);
          MEMORY[0x259C07330](v119, -1, -1);
          v124 = v117;
          v103 = v260;
          MEMORY[0x259C07330](v124, -1, -1);

          v118(v232, v254);
          v66 = v246;
        }

        else
        {

          v103(v112, v262);
          v106(v111, v254);
        }

        v16 = v243;
        (*v247)(v243, v261);
        v50 = v248;
        sub_25417C0B0(v248, type metadata accessor for SomeEvent);
      }

      v65 = v245;
      v62 = v238;
      if (__OFADD__(v239, 1))
      {
        goto LABEL_44;
      }

      if ((v218 & 1) == 0 && v239 + 1 == v214)
      {
        v160 = v256;

        v103(v160, v262);
        v161 = &v245;
        return *(v161 - 32);
      }

      v229 = ++v239;
    }

    else
    {
      v235 = v106;
      v125 = v16;
      v126 = v228;
      v127 = v227;
      v128 = v226;
      v129 = v234;
      v260 = v103;
      if (v109 == v224)
      {

        v163 = v211;
        sub_25421ACE8(v211);
        v164 = v210;
        v257(v210, v252, v262);
        sub_25417C110(v50, v127, type metadata accessor for SomeEvent);
        v165 = sub_25424DA88();
        v166 = sub_25424E428();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v266[0] = v255;
          *v167 = v215;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          LODWORD(v252) = v166;
          v168 = sub_25424EA58();
          v170 = v169;
          v171 = v260;
          v260(v164, v262);
          v172 = sub_2542203C4(v168, v170, v266);

          *(v167 + 4) = v172;
          *(v167 + 12) = 2080;
          sub_25417C110(v127, v244, type metadata accessor for SomeEvent);
          v173 = sub_25424DD08();
          v175 = v174;
          sub_25417C0B0(v127, type metadata accessor for SomeEvent);
          v176 = sub_2542203C4(v173, v175, v266);

          *(v167 + 14) = v176;
          v177 = v171;
          _os_log_impl(&dword_254124000, v165, v252, "[%{public}s] Yield dropped event: %s", v167, 0x16u);
          v178 = v255;
          swift_arrayDestroy();
          v179 = v243;
          MEMORY[0x259C07330](v178, -1, -1);
          MEMORY[0x259C07330](v167, -1, -1);

          v235(v163, v254);
          v180 = v222;
        }

        else
        {

          sub_25417C0B0(v127, type metadata accessor for SomeEvent);
          v177 = v260;
          v260(v164, v262);
          v235(v163, v254);
          v180 = v222;
          v179 = v125;
        }

        v193 = v221;
        v194 = v262;
        v195 = v257;
        v257(v221, v180 + *(v219 + 24), v262);
        v196 = type metadata accessor for EventsAsyncSequenceLogEvent();
        v197 = objc_allocWithZone(v196);
        v195(&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v193, v194);
        v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 4;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v268.receiver = v197;
        v268.super_class = v196;
        v198 = objc_msgSendSuper2(&v268, sel_init);
        v177(v193, v194);
        [v220 submitLogEvent_];

        v199 = *v247;
        v200 = v261;
        (*v247)(v179, v261);
        sub_25417C0B0(v248, type metadata accessor for SomeEvent);
        v199(v251, v200);
        v177(v256, v194);
        goto LABEL_39;
      }

      if (v109 == v217)
      {

        sub_25421ACE8(v126);
        v181 = v209;
        v257(v209, v252, v262);
        v182 = v126;
        v183 = sub_25424DA88();
        v184 = sub_25424E408();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v266[0] = v255;
          *v185 = 136446210;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v186 = sub_25424EA58();
          v188 = v187;
          v189 = v260;
          v260(v181, v262);
          v190 = sub_2542203C4(v186, v188, v266);

          *(v185 + 4) = v190;
          _os_log_impl(&dword_254124000, v183, v184, "[%{public}s] Yield indicated that the stream is terminated", v185, 0xCu);
          v191 = v255;
          __swift_destroy_boxed_opaque_existential_1(v255);
          v192 = v191;
          v125 = v243;
          MEMORY[0x259C07330](v192, -1, -1);
          MEMORY[0x259C07330](v185, -1, -1);
        }

        else
        {

          v189 = v260;
          v260(v181, v262);
        }

        v235(v182, v254);
        v201 = v221;
        v202 = v262;
        v203 = v257;
        v257(v221, v222 + *(v219 + 24), v262);
        v204 = type metadata accessor for EventsAsyncSequenceLogEvent();
        v205 = objc_allocWithZone(v204);
        v203(&v205[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v201, v202);
        v205[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 5;
        *&v205[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v205[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v205[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v269.receiver = v205;
        v269.super_class = v204;
        v206 = objc_msgSendSuper2(&v269, sel_init);
        v189(v201, v202);
        [v220 submitLogEvent_];

        (*v247)(v125, v261);
        sub_25417C0B0(v248, type metadata accessor for SomeEvent);
        v189(v256, v202);
LABEL_39:
        v161 = &v261;
        return *(v161 - 32);
      }

      sub_25421ACE8(v234);
      v257(v128, v252, v262);
      v130 = v233;
      v107(v233, v125, v261);
      v131 = sub_25424DA88();
      v231 = sub_25424E438();
      v132 = os_log_type_enabled(v131, v231);
      v133 = v247;
      v237 = v247 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v132)
      {
        v134 = swift_slowAlloc();
        v135 = v261;
        v136 = v134;
        v216 = swift_slowAlloc();
        v266[0] = v216;
        *v136 = v215;
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v137 = sub_25424EA58();
        v139 = v138;
        v140 = v128;
        v141 = v260;
        v260(v140, v262);
        v142 = sub_2542203C4(v137, v139, v266);

        *(v136 + 4) = v142;
        *(v136 + 12) = 2082;
        v143 = v233;
        v107(v212, v233, v135);
        v144 = sub_25424DD08();
        v146 = v145;
        v147 = *v247;
        (*v247)(v143, v135);
        v148 = sub_2542203C4(v144, v146, v266);

        *(v136 + 14) = v148;
        _os_log_impl(&dword_254124000, v131, v231, "[%{public}s] Yield result not handled: %{public}s", v136, 0x16u);
        v149 = v216;
        swift_arrayDestroy();
        v150 = v149;
        v125 = v243;
        MEMORY[0x259C07330](v150, -1, -1);
        MEMORY[0x259C07330](v136, -1, -1);

        v151 = v234;
      }

      else
      {

        v147 = *v133;
        (*v133)(v130, v261);
        v152 = v128;
        v141 = v260;
        v260(v152, v262);
        v151 = v129;
      }

      v235(v151, v254);
      v153 = v221;
      v154 = v262;
      v155 = v257;
      v257(v221, v222 + *(v219 + 24), v262);
      v156 = type metadata accessor for EventsAsyncSequenceLogEvent();
      v157 = objc_allocWithZone(v156);
      v155(&v157[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v153, v154);
      v157[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 6;
      *&v157[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
      *&v157[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
      *&v157[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
      v270.receiver = v157;
      v270.super_class = v156;
      v158 = objc_msgSendSuper2(&v270, sel_init);
      v141(v153, v154);
      [v220 submitLogEvent_];

      v159 = v261;
      v147(v125, v261);
      v50 = v248;
      sub_25417C0B0(v248, type metadata accessor for SomeEvent);
      v64 = v251;
      v147(v251, v159);
      v103 = v141;
      v65 = v245;
      v16 = v125;
      v66 = v246;
      v62 = v238;
    }

    (v103)();
    v55 = v236;
    v60 = v255;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2541654AC(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v3 = v1 + *(a1 + 20);
  SomeEvent.hash(into:)(v5);
  return sub_25424EC28();
}

uint64_t sub_254165550(uint64_t a1, uint64_t a2)
{
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v5 = v2 + *(a2 + 20);
  return SomeEvent.hash(into:)(a1);
}

uint64_t sub_2541655DC(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v4 = v2 + *(a2 + 20);
  SomeEvent.hash(into:)(v6);
  return sub_25424EC28();
}

uint64_t sub_25416567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_2541656E4(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v226 = a6;
  v219 = a5;
  v250 = a4;
  v209 = a3;
  v204 = a2;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v7 = *(v232 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v232 - 8);
  v212 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v235 = &v201 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v244 = (&v201 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v201 - v15;
  v17 = sub_25424D948();
  v248 = *(v17 - 8);
  v18 = *(v248 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v225 = &v201 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v201 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v218 = &v201 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v207 = &v201 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v201 - v28;
  MEMORY[0x28223BE20](v27);
  v224 = &v201 - v30;
  v247 = sub_25424DAA8();
  v246 = *(v247 - 8);
  v31 = *(v246 + 64);
  v32 = MEMORY[0x28223BE20](v247);
  v34 = &v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v227 = &v201 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v201 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v202 = &v201 - v41;
  MEMORY[0x28223BE20](v40);
  v237 = &v201 - v42;
  v231 = type metadata accessor for SomeEvent();
  v249 = *(v231 - 8);
  v43 = v249[8];
  v44 = MEMORY[0x28223BE20](v231);
  v206 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v228 = &v201 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v223 = &v201 - v49;
  MEMORY[0x28223BE20](v48);
  v238 = &v201 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v230 = &v201 - v53;
  v54 = a1;
  v55 = a1[2];
  v251 = v17;
  v234 = v34;
  v236 = v16;
  v208 = v39;
  v203 = v29;
  if (v55 == 1)
  {
    v201 = 0;
    AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9160, &qword_254254570);
    AssociatedConformanceWitness = sub_25414081C(&qword_27F5B9168, &qword_27F5B9160, &qword_254254570);
    *&v260 = a1;
    *(&v260 + 1) = sub_25417E918;
    v261 = 0;

    v56 = v237;
LABEL_8:
    sub_25412DC4C(&v260, &v264);
    v62 = v265;
    v63 = __swift_project_boxed_opaque_existential_1(&v264, v265);
    v64 = *(*(v62 - 8) + 64);
    MEMORY[0x28223BE20](v63);
    (*(v66 + 16))(&v201 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v260);
    sub_25424DE98();
    v67 = 0;
    v229 = (v249 + 6);
    v249 = (v248 + 16);
    v246 += 8;
    v222 = (v7 + 11);
    v221 = *MEMORY[0x277D85888];
    v217 = *MEMORY[0x277D85880];
    v216 = *MEMORY[0x277D85878];
    v210 = (v7 + 12);
    *&v68 = 136315394;
    v214 = v68;
    *&v68 = 136446466;
    v213 = v68;
    v69 = v238;
    v70 = v230;
    v220 = (v7 + 1);
    v245 = (v248 + 8);
    v243 = v7 + 2;
    while (1)
    {
      v211 = v67;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v260, AssociatedTypeWitness);
        sub_25424E5C8();
        v93 = (*v229)(v70, 1, v231);
        if (v93 == 1)
        {
          v155 = v211;
          goto LABEL_42;
        }

        v94 = v16;
        LODWORD(v240) = v93;
        sub_25417C178(v70, v69, type metadata accessor for SomeEvent);
        sub_25421ACE8(v56);
        v95 = v224;
        v96 = v251;
        v248 = *v249;
        (v248)(v224, v250, v251);
        v97 = v223;
        sub_25417C110(v69, v223, type metadata accessor for SomeEvent);
        v98 = sub_25424DA88();
        v99 = sub_25424E418();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          v256 = v241;
          *v100 = v214;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v101 = sub_25424EA58();
          v103 = v102;
          v242 = *v245;
          v242(v95, v251);
          v104 = sub_2542203C4(v101, v103, &v256);

          *(v100 + 4) = v104;
          *(v100 + 12) = 2080;
          sub_2541DA834(&v252);
          v105 = v253;
          v106 = v254;
          v107 = __swift_project_boxed_opaque_existential_1(&v252, v253);
          v255[3] = v105;
          v255[4] = *(v106 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v255);
          v109 = *(v105 - 8);
          v110 = *(v109 + 16);
          v111 = v109 + 16;
          v110(boxed_opaque_existential_1, v107, v105);
          v112 = __swift_destroy_boxed_opaque_existential_1(&v252);
          v113 = *(v111 + 48);
          MEMORY[0x28223BE20](v112);
          v110((&v201 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0)), boxed_opaque_existential_1, v105);
          v115 = sub_25424DD08();
          v117 = v116;
          v118 = v232;
          sub_25417C0B0(v97, type metadata accessor for SomeEvent);
          __swift_destroy_boxed_opaque_existential_1(v255);
          v119 = sub_2542203C4(v115, v117, &v256);
          v120 = v236;

          *(v100 + 14) = v119;
          _os_log_impl(&dword_254124000, v98, v99, "[%s] Emitting matching event: %s", v100, 0x16u);
          v121 = v241;
          swift_arrayDestroy();
          v96 = v251;
          MEMORY[0x259C07330](v121, -1, -1);
          v122 = v100;
          v69 = v238;
          MEMORY[0x259C07330](v122, -1, -1);

          v241 = *v246;
          v241(v237, v247);
          v123 = v227;
          v124 = v235;
          v125 = v225;
        }

        else
        {

          sub_25417C0B0(v97, type metadata accessor for SomeEvent);
          v242 = *v245;
          v242(v95, v96);
          v241 = *v246;
          v241(v56, v247);
          v123 = v227;
          v124 = v235;
          v125 = v225;
          v120 = v94;
          v118 = v232;
        }

        sub_25417C110(v69, v228, type metadata accessor for SomeEvent);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
        sub_25424E228();
        v126 = *v243;
        v127 = v244;
        (*v243)(v244, v120, v118);
        v128 = (*v222)(v127, v118);
        v16 = v120;
        if (v128 == v221)
        {
          break;
        }

        if (v128 == v217)
        {
          v156 = v208;
          sub_25421ACE8(v208);
          v157 = v207;
          (v248)(v207, v250, v96);
          v158 = v206;
          sub_25417C110(v69, v206, type metadata accessor for SomeEvent);
          v159 = sub_25424DA88();
          v160 = sub_25424E428();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            v255[0] = v243;
            *v161 = v213;
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
            v162 = sub_25424EA58();
            v164 = v163;
            v165 = v157;
            v166 = v242;
            v242(v165, v251);
            v167 = sub_2542203C4(v162, v164, v255);

            *(v161 + 4) = v167;
            *(v161 + 12) = 2080;
            sub_25417C110(v158, v228, type metadata accessor for SomeEvent);
            v168 = sub_25424DD08();
            v170 = v169;
            sub_25417C0B0(v158, type metadata accessor for SomeEvent);
            v171 = sub_2542203C4(v168, v170, v255);
            v96 = v251;

            *(v161 + 14) = v171;
            v172 = v160;
            v173 = v166;
            _os_log_impl(&dword_254124000, v159, v172, "[%{public}s] Yield dropped event: %s", v161, 0x16u);
            v174 = v243;
            swift_arrayDestroy();
            MEMORY[0x259C07330](v174, -1, -1);
            v175 = v161;
            v69 = v238;
            MEMORY[0x259C07330](v175, -1, -1);
          }

          else
          {

            sub_25417C0B0(v158, type metadata accessor for SomeEvent);
            v173 = v242;
            v242(v157, v96);
          }

          v241(v156, v247);
          v188 = v218;
          v189 = v248;
          (v248)(v218, v250, v96);
          v190 = type metadata accessor for EventsAsyncSequenceLogEvent();
          v191 = objc_allocWithZone(v190);
          v189(&v191[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v188, v96);
          v191[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 4;
          *&v191[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
          *&v191[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
          *&v191[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
          v257.receiver = v191;
          v257.super_class = v190;
          v192 = objc_msgSendSuper2(&v257, sel_init);
          v173(v188, v96);
          [v219 submitLogEvent_];

          v193 = *v220;
          v194 = v232;
          (*v220)(v236, v232);
          sub_25417C0B0(v69, type metadata accessor for SomeEvent);
          v193(v244, v194);
          goto LABEL_40;
        }

        if (v128 == v216)
        {
          v176 = v123;
          sub_25421ACE8(v123);
          v177 = v205;
          (v248)(v205, v250, v96);
          v178 = sub_25424DA88();
          v179 = sub_25424E408();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v255[0] = v244;
            *v180 = 136446210;
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
            v181 = sub_25424EA58();
            v183 = v182;
            v184 = v242;
            v242(v177, v251);
            v185 = sub_2542203C4(v181, v183, v255);
            v96 = v251;

            *(v180 + 4) = v185;
            _os_log_impl(&dword_254124000, v178, v179, "[%{public}s] Yield indicated that the stream is terminated", v180, 0xCu);
            v186 = v244;
            __swift_destroy_boxed_opaque_existential_1(v244);
            MEMORY[0x259C07330](v186, -1, -1);
            v187 = v180;
            v69 = v238;
            MEMORY[0x259C07330](v187, -1, -1);
          }

          else
          {

            v184 = v242;
            v242(v177, v96);
          }

          v241(v176, v247);
          v195 = v218;
          v196 = v248;
          (v248)(v218, v250, v96);
          v197 = type metadata accessor for EventsAsyncSequenceLogEvent();
          v198 = objc_allocWithZone(v197);
          v196(&v198[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v195, v96);
          v198[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 5;
          *&v198[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
          *&v198[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
          *&v198[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
          v258.receiver = v198;
          v258.super_class = v197;
          v199 = objc_msgSendSuper2(&v258, sel_init);
          v184(v195, v96);
          [v219 submitLogEvent_];

          (*v220)(v236, v232);
          sub_25417C0B0(v69, type metadata accessor for SomeEvent);
LABEL_40:
          v154 = &v241;
LABEL_41:
          v155 = *(v154 - 32);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1(&v260);
          __swift_destroy_boxed_opaque_existential_1(&v264);
          return v155;
        }

        v129 = v96;
        v130 = v234;
        sub_25421ACE8(v234);
        (v248)(v125, v250, v129);
        v126(v124, v120, v118);
        v131 = v118;
        v132 = sub_25424DA88();
        v233 = sub_25424E438();
        v133 = os_log_type_enabled(v132, v233);
        v239 = v245 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v134 = v220;
        v240 = v220 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v133)
        {
          v71 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v255[0] = v215;
          *v71 = v213;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v72 = v134;
          v73 = sub_25424EA58();
          v75 = v74;
          v76 = v125;
          v77 = v242;
          v242(v76, v251);
          v78 = sub_2542203C4(v73, v75, v255);

          *(v71 + 4) = v78;
          *(v71 + 12) = 2082;
          v79 = v235;
          v126(v212, v235, v131);
          v80 = sub_25424DD08();
          v82 = v81;
          v83 = *v72;
          (*v72)(v79, v131);
          v84 = sub_2542203C4(v80, v82, v255);
          v16 = v236;

          *(v71 + 14) = v84;
          v85 = v77;
          _os_log_impl(&dword_254124000, v132, v233, "[%{public}s] Yield result not handled: %{public}s", v71, 0x16u);
          v86 = v215;
          swift_arrayDestroy();
          v87 = v251;
          MEMORY[0x259C07330](v86, -1, -1);
          MEMORY[0x259C07330](v71, -1, -1);

          v241(v234, v247);
        }

        else
        {

          v83 = *v134;
          (*v134)(v124, v131);
          v85 = v242;
          v242(v125, v129);
          v241(v130, v247);
          v16 = v236;
          v87 = v129;
        }

        v88 = v218;
        v89 = v248;
        (v248)(v218, v250, v87);
        v90 = type metadata accessor for EventsAsyncSequenceLogEvent();
        v91 = objc_allocWithZone(v90);
        v89(&v91[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v88, v87);
        v91[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 6;
        *&v91[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v91[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v91[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v259.receiver = v91;
        v259.super_class = v90;
        v92 = objc_msgSendSuper2(&v259, sel_init);
        v85(v88, v87);
        [v219 submitLogEvent_];

        v83(v16, v131);
        v69 = v238;
        sub_25417C0B0(v238, type metadata accessor for SomeEvent);
        v83(v244, v131);
        v56 = v237;
        v70 = v230;
      }

      v135 = v244;
      (*v210)(v244, v118);
      v136 = *v135;
      if (*v135 > 99)
      {
        (*v220)(v120, v118);
      }

      else
      {
        v137 = v120;
        v138 = v202;
        sub_25421ACE8(v202);
        v139 = v203;
        v140 = v251;
        (v248)(v203, v250, v251);
        v141 = sub_25424DA88();
        v142 = sub_25424E408();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v255[0] = v144;
          *v143 = v213;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v145 = sub_25424EA58();
          v147 = v146;
          v242(v139, v140);
          v148 = sub_2542203C4(v145, v147, v255);
          v149 = v236;

          *(v143 + 4) = v148;
          *(v143 + 12) = 2048;
          *(v143 + 14) = v136;
          _os_log_impl(&dword_254124000, v141, v142, "[%{public}s] Running out of queue space, %ld slots left", v143, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v144);
          MEMORY[0x259C07330](v144, -1, -1);
          v150 = v143;
          v69 = v238;
          MEMORY[0x259C07330](v150, -1, -1);

          v151 = v138;
          v16 = v149;
          v241(v151, v247);
          v152 = *v220;
          v153 = v149;
        }

        else
        {

          v242(v139, v140);
          v241(v138, v247);
          v152 = *v220;
          v16 = v137;
          v153 = v137;
        }

        v152(v153, v232);
      }

      sub_25417C0B0(v69, type metadata accessor for SomeEvent);
      v70 = v230;
      v67 = v211 + 1;
      if (__OFADD__(v211, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      v56 = v237;
      if ((v209 & 1) == 0 && v67 == v204)
      {
        v154 = &v234;
        goto LABEL_41;
      }
    }
  }

  if (!v55)
  {
    v59 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v243 = v7;
  v57 = sub_2541ECFB0(v55, 0);
  v58 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v59 = v57;
  v60 = sub_2541D12E8(&v264, v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v55, v54);
  v245 = v266;

  sub_25417E5CC();
  if (v60 == v55)
  {
    v16 = v236;
    v7 = v243;
LABEL_7:
    v264 = v59;
    sub_25416AB94(&v264);
    v201 = 0;
    v56 = v237;
    v61 = v264;
    AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9150, &qword_254254568);
    AssociatedConformanceWitness = sub_25414081C(&qword_27F5B9158, &qword_27F5B9150, &qword_254254568);
    *&v260 = v61;
    *(&v260 + 1) = sub_25417E918;
    v261 = 0;
    goto LABEL_8;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_254167494(uint64_t a1, uint64_t a2)
{
  v28 = sub_25424D8B8();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v12 = *(v11 + 20);
  v27 = a1;
  sub_2541DA834(v29);
  v14 = v30;
  v13 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v33 = v14;
  v15 = *(v13 + 8);
  v34 = v15;
  __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v14 - 8) + 16))();
  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v15 + 32))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v16 = a2 + *(v11 + 20);
  sub_2541DA834(v29);
  v17 = v30;
  v18 = v31;
  v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v33 = v17;
  v20 = *(v18 + 8);
  v34 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v20 + 32))(v17, v20);
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
  {
    sub_25424D948();
    sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
    v22 = sub_25424DC58();
  }

  else
  {
    v22 = sub_25424D828();
  }

  v23 = v22;
  v24 = *(v4 + 8);
  v25 = v28;
  v24(v8, v28);
  v24(v10, v25);
  return v23 & 1;
}

uint64_t sub_2541677C8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v67 = a3;
  v7 = type metadata accessor for EventQuery(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = sub_25424DAA8();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  if (a4)
  {
    sub_25421ACE8(v21);
    v27 = v4;
    sub_25417C110(v4, v11, type metadata accessor for EventQuery);
    v28 = sub_25424DA88();
    v29 = sub_25424E418();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v70 = v31;
      *v30 = 136315138;
      v32 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v33 = sub_25424EA58();
      v35 = v34;
      sub_25417C0B0(v11, type metadata accessor for EventQuery);
      v36 = sub_2542203C4(v33, v35, &v70);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_254124000, v28, v29, "[%s] No results limit specified, using max results batch limit until all events are returned", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x259C07330](v31, -1, -1);
      MEMORY[0x259C07330](v30, -1, -1);
    }

    else
    {

      sub_25417C0B0(v11, type metadata accessor for EventQuery);
    }

    (*(v68 + 8))(v21, v69);
    return *(v27 + *(type metadata accessor for EventQuery.Configuration(0) + 76));
  }

  v37 = type metadata accessor for EventQuery.Configuration(0);
  v38 = v4;
  if (*(v4 + v37[9]) && (a2 & 1) == 0)
  {
    sub_25421ACE8(v26);
    sub_25417C110(v4, v16, type metadata accessor for EventQuery);
    v39 = sub_25424DA88();
    v40 = sub_25424E418();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70 = v42;
      *v41 = 136315138;
      v43 = v37[6];
      sub_25424D948();
      v44 = v38;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v45 = sub_25424EA58();
      v47 = v46;
      sub_25417C0B0(v16, type metadata accessor for EventQuery);
      v48 = sub_2542203C4(v45, v47, &v70);
      v38 = v44;

      *(v41 + 4) = v48;
      _os_log_impl(&dword_254124000, v39, v40, "[%s] Using max results batch limit because there are no tags to match against", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x259C07330](v42, -1, -1);
      MEMORY[0x259C07330](v41, -1, -1);
    }

    else
    {

      sub_25417C0B0(v16, type metadata accessor for EventQuery);
    }

    (*(v68 + 8))(v26, v69);
    return *(v38 + v37[19]);
  }

  result = sub_25424D208();
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v50 / 3600 + 1;
  v52 = *(v4 + v37[20]);
  v53 = v52 * v51;
  if ((v52 * v51) >> 64 != (v52 * v51) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = v67;
  v55 = __OFADD__(v67, v53);
  v56 = v67 + v53;
  if (v55)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (*(v4 + v37[19]) >= v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = *(v4 + v37[19]);
  }

  sub_25421ACE8(v24);
  sub_25417C110(v4, v14, type metadata accessor for EventQuery);
  v58 = sub_25424DA88();
  v59 = sub_25424E418();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70 = v61;
    *v60 = 136315650;
    v62 = v37[6];
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v63 = sub_25424EA58();
    v65 = v64;
    sub_25417C0B0(v14, type metadata accessor for EventQuery);
    v66 = sub_2542203C4(v63, v65, &v70);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v54;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v57;
    _os_log_impl(&dword_254124000, v58, v59, "[%s] Subquery limited result count to %ld, setting query limit to %ld to handle fake events", v60, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x259C07330](v61, -1, -1);
    MEMORY[0x259C07330](v60, -1, -1);
  }

  else
  {

    sub_25417C0B0(v14, type metadata accessor for EventQuery);
  }

  (*(v68 + 8))(v24, v69);
  return v57;
}

uint64_t sub_254167F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  v35[0] = a1;
  sub_254132DF4(a1, v35 - v12, &qword_27F5B8DD0, &qword_2542545A0);
  v14 = *(v10 + 56);
  sub_2541DA834(v47);
  v16 = v48;
  v15 = v49;
  v17 = __swift_project_boxed_opaque_existential_1(v47, v48);
  v50[3] = v16;
  v39 = *(v15 + 8);
  v50[4] = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v37 = type metadata accessor for SomeEvent;
  sub_25417C0B0(&v13[v14], type metadata accessor for SomeEvent);
  v18 = sub_25424D948();
  v36 = *(*(v18 - 8) + 8);
  v36(v13, v18);
  v35[1] = a2;
  sub_254132DF4(a2, v13, &qword_27F5B8DD0, &qword_2542545A0);
  v19 = *(v10 + 56);
  sub_2541DA834(v44);
  v20 = v45;
  v21 = v46;
  v22 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v48 = v20;
  v49 = *(v21 + 8);
  v23 = v49;
  v24 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(v20 - 8) + 16))(v24, v22, v20);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v25 = &v13[v19];
  v26 = v40;
  sub_25417C0B0(v25, v37);
  v36(v13, v18);
  (*(v39 + 32))(v16);
  v27 = v20;
  v28 = v41;
  (*(v23 + 32))(v27, v23);
  if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
  {
    sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
    v29 = sub_25424DC58();
  }

  else
  {
    v29 = sub_25424D828();
  }

  v30 = v29;
  v31 = *(v42 + 8);
  v32 = v28;
  v33 = v43;
  v31(v32, v43);
  v31(v26, v33);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v30 & 1;
}

uint64_t sub_254168384(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return v9(a1, a2);
}

uint64_t sub_254168488(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  result = sub_25424E638();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_25417C178(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for EventQuery.FetchedRecordInfo);
      v25 = *(v11 + 40);
      sub_25424EBD8();
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      v26 = &v7[*(v39 + 20)];
      SomeEvent.hash(into:)(v40);
      result = sub_25424EC28();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25417C178(v7, *(v11 + 48) + v19 * v24, type metadata accessor for EventQuery.FetchedRecordInfo);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2541687F4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25424D948();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  result = sub_25424E638();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      result = sub_25424DC18();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

void sub_254168B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_254168D1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25424EBD8();
  v7 = qword_2542546A0[a2];
  MEMORY[0x259C06AA0](v7);
  v8 = sub_25424EC28();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (qword_2542546A0[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2541698DC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_254168E3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25412F724;

  return sub_254152C7C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_254168F78()
{
  result = type metadata accessor for EventQuery.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25416900C()
{
  sub_2541691B0();
  if (v0 <= 0x3F)
  {
    sub_25424D948();
    if (v1 <= 0x3F)
    {
      sub_25424D218();
      if (v2 <= 0x3F)
      {
        sub_254141A7C();
        if (v3 <= 0x3F)
        {
          sub_254169214(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
          if (v4 <= 0x3F)
          {
            sub_25414810C();
            if (v5 <= 0x3F)
            {
              sub_254169214(319, &qword_27F5B8D98, type metadata accessor for QualityOfService);
              if (v6 <= 0x3F)
              {
                sub_2541481B4();
                if (v7 <= 0x3F)
                {
                  sub_254169268();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_2541691B0()
{
  result = qword_27F5B9050;
  if (!qword_27F5B9050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B9050);
  }

  return result;
}

void sub_254169214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25424E598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_254169268()
{
  result = qword_27F5B9078;
  if (!qword_27F5B9078)
  {
    sub_25424D948();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5B9080, &unk_254254458);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B9078);
  }

  return result;
}

uint64_t sub_2541692F4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - v10;
  v27 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v29 = v4;
  v13 = *(v4 + 20);
  SomeEvent.hash(into:)(v30);
  v14 = sub_25424EC28();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_25417C110(*(v11 + 48) + v18 * v16, v9, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (sub_25424D8F8())
      {
        v19 = _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(&v9[*(v29 + 20)], a2 + v13);
        sub_25417C0B0(v9, type metadata accessor for EventQuery.FetchedRecordInfo);
        if (v19)
        {
          sub_25417C0B0(a2, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C110(*(v11 + 48) + v18 * v16, v28, type metadata accessor for EventQuery.FetchedRecordInfo);
          return 0;
        }
      }

      else
      {
        sub_25417C0B0(v9, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = v27;
  v22 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v26;
  sub_25417C110(a2, v26, type metadata accessor for EventQuery.FetchedRecordInfo);
  v30[0] = *v21;
  sub_254169A44(v24, v16, isUniquelyReferenced_nonNull_native);
  *v21 = v30[0];
  sub_25417C178(a2, v28, type metadata accessor for EventQuery.FetchedRecordInfo);
  return 1;
}

uint64_t sub_2541695FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_25424DC18();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0]);
      v23 = sub_25424DC98();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_254169D10(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2541698DC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_254126C24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25416A1C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25412724C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_25424EBD8();
  v10 = qword_2542546A0[v4];
  MEMORY[0x259C06AA0](v10);
  result = sub_25424EC28();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_2542546A0[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

uint64_t sub_254169A44(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_254168488(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_254169FB4();
      goto LABEL_15;
    }

    sub_25416A53C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v15 = *(v7 + 20);
  SomeEvent.hash(into:)(v29);
  v16 = sub_25424EC28();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v28 + 72);
    do
    {
      sub_25417C110(*(v13 + 48) + v19 * a2, v10, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (sub_25424D8F8())
      {
        v20 = _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(&v10[*(v7 + 20)], a1 + v15);
        sub_25417C0B0(v10, type metadata accessor for EventQuery.FetchedRecordInfo);
        if (v20)
        {
          sub_25424EB28();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_25417C0B0(v10, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25417C178(a1, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for EventQuery.FetchedRecordInfo);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_254169D10(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2541687F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25416A304();
      goto LABEL_12;
    }

    sub_25416A878(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  v15 = sub_25424DC18();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0]);
      v23 = sub_25424DC98();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

void *sub_254169FB4()
{
  v1 = v0;
  v2 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  v7 = *v0;
  v8 = sub_25424E628();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_25417C110(*(v7 + 48) + v22, v6, type metadata accessor for EventQuery.FetchedRecordInfo);
        result = sub_25417C178(v6, *(v9 + 48) + v22, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_25416A1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  v2 = *v0;
  v3 = sub_25424E628();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25416A304()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  v7 = *v0;
  v8 = sub_25424E628();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_25416A53C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  result = sub_25424E638();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_25417C110(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for EventQuery.FetchedRecordInfo);
      v25 = *(v11 + 40);
      sub_25424EBD8();
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      v26 = &v7[*(v38 + 20)];
      SomeEvent.hash(into:)(v39);
      result = sub_25424EC28();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25417C178(v7, *(v11 + 48) + v19 * v24, type metadata accessor for EventQuery.FetchedRecordInfo);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_25416A878(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25424D948();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  v10 = sub_25424E638();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      result = sub_25424DC18();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}