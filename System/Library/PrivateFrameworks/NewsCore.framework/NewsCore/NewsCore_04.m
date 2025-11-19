uint64_t sub_1B6485AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v10 = *(*(type metadata accessor for SmarterFetchRequest(0) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v11 = sub_1B67D877C();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v13 = *(v12 + 64) + 15;
  v7[12] = swift_task_alloc();
  v14 = sub_1B67D8A9C();
  v7[13] = v14;
  v15 = *(v14 - 8);
  v7[14] = v15;
  v16 = *(v15 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v17 = swift_task_alloc();
  v7[17] = v17;
  *v17 = v7;
  v17[1] = sub_1B6485C80;

  return sub_1B6486344(a5, a6);
}

uint64_t sub_1B6485C80()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1B6486048;
  }

  else
  {
    v3 = sub_1B6485D94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6485D94()
{
  v41 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v9 = v0[5];
  v10 = sub_1B6471844();
  (*(v3 + 16))(v1, v10, v2);
  (*(v5 + 16))(v4, v8, v6);
  sub_1B6489884(v9, v7, type metadata accessor for SmarterFetchRequest);
  v11 = sub_1B67D8A7C();
  v12 = sub_1B67D9C9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  if (v13)
  {
    v39 = v0[13];
    v21 = swift_slowAlloc();
    v37 = v12;
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 134349314;
    v38 = v14;
    v23 = sub_1B644C390();
    v24 = (*(v18 + 8))(v17, v20);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2082;
    v25 = sub_1B650D90C(v24);
    v27 = v26;
    sub_1B6467DA0(v19);
    v28 = sub_1B6456540(v25, v27, &v40);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_1B63EF000, v11, v37, "finished Smarter Fetch request, time=%{public}lldms, id=%{public}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B8C96DF0](v22, -1, -1);
    MEMORY[0x1B8C96DF0](v21, -1, -1);

    (*(v15 + 8))(v38, v39);
  }

  else
  {
    (*(v18 + 8))(v0[12], v0[10]);

    sub_1B6467DA0(v19);
    (*(v15 + 8))(v14, v16);
  }

  v29 = v0[6];
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  sub_1B67D9A7C();
  v31 = v0[15];
  v30 = v0[16];
  v32 = v0[12];
  v34 = v0[8];
  v33 = v0[9];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1B6486048()
{
  v44 = v0;
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  v7 = sub_1B6471844();
  (*(v3 + 16))(v2, v7, v4);
  sub_1B6489884(v6, v5, type metadata accessor for SmarterFetchRequest);
  v8 = v1;
  v9 = sub_1B67D8A7C();
  v10 = sub_1B67D9C8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[14];
    v41 = v0[13];
    v42 = v0[15];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = v16;
    *v14 = 138543618;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v18;
    *v15 = v18;
    *(v14 + 12) = 2082;
    v19 = sub_1B650D90C(v18);
    v21 = v20;
    sub_1B6467DA0(v13);
    v22 = sub_1B6456540(v19, v21, &v43);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1B63EF000, v9, v10, "Smarter Fetch request failed, error=%{public}@, id=%{public}s", v14, 0x16u);
    sub_1B6418AB4(v15, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C96DF0](v16, -1, -1);
    MEMORY[0x1B8C96DF0](v14, -1, -1);

    (*(v12 + 8))(v42, v41);
  }

  else
  {
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    v26 = v0[8];

    sub_1B6467DA0(v26);
    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[18];
  v28 = v0[6];
  v29 = v0[4];
  v30 = sub_1B6503C10();
  v31 = *(v29 + 16);
  v32 = *(v29 + 24);
  v33 = *v30;
  sub_1B6503F04(v27, v31, v32);

  v0[2] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  sub_1B67D9A7C();
  v35 = v0[15];
  v34 = v0[16];
  v36 = v0[12];
  v38 = v0[8];
  v37 = v0[9];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1B6486344(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AAA0, &qword_1B6813110);
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();
  Request = type metadata accessor for SmarterFetchRequest(0);
  v3[35] = Request;
  v8 = *(*(Request - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v9 = sub_1B67D8A9C();
  v3[39] = v9;
  v10 = *(v9 - 8);
  v3[40] = v10;
  v11 = *(v10 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v12 = sub_1B67D877C();
  v3[44] = v12;
  v13 = *(v12 - 8);
  v3[45] = v13;
  v14 = *(v13 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v15 = sub_1B67D837C();
  v3[50] = v15;
  v16 = *(v15 - 8);
  v3[51] = v16;
  v17 = *(v16 + 64) + 15;
  v3[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64865AC, 0, 0);
}

uint64_t sub_1B64865AC()
{
  v1 = v0[31];
  v2 = sub_1B6503C10();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v2;
  sub_1B6503D88(v3, v4);
  v6 = v0[52];
  v7 = v0[31];
  v8 = v0[29];

  sub_1B64884B4(v8);
  v9 = v0[49];
  v10 = [objc_allocWithZone(type metadata accessor for SmarterFetchURLSessionDelegate()) init];
  v0[53] = v10;
  sub_1B67D876C();
  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = sub_1B64867B0;
  v12 = v0[52];
  v13 = v0[31];

  return sub_1B64887BC(v13, v12, v10);
}

uint64_t sub_1B64867B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v8 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v6 = sub_1B6487DB4;
  }

  else
  {
    v6 = sub_1B64868C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64868C8()
{
  v160 = v0;
  v1 = *(v0 + 448);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 448);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    if ([v4 statusCode] >= 200 && objc_msgSend(v4, sel_statusCode) < 300 || objc_msgSend(v4, sel_statusCode) == 304)
    {
      v7 = *(v0 + 384);
      v6 = *(v0 + 392);
      v8 = *(v0 + 352);
      v9 = *(v0 + 360);
      v10 = *(v0 + 344);
      v11 = *(v0 + 312);
      v12 = *(v0 + 320);
      v152 = *(v0 + 304);
      v157 = *(v0 + 448);
      v13 = *(v0 + 232);
      v14 = sub_1B6471844();
      *(v0 + 464) = v14;
      v15 = *(v12 + 16);
      *(v0 + 472) = v15;
      *(v0 + 480) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15(v10, v14, v11);
      v16 = *(v9 + 16);
      *(v0 + 488) = v16;
      *(v0 + 496) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v16(v7, v6, v8);
      sub_1B6489884(v13, v152, type metadata accessor for SmarterFetchRequest);
      v17 = v157;
      v18 = sub_1B67D8A7C();
      LOBYTE(v6) = sub_1B67D9C9C();

      v158 = v6;
      v19 = os_log_type_enabled(v18, v6);
      v20 = *(v0 + 384);
      v21 = *(v0 + 352);
      v22 = *(v0 + 360);
      v23 = *(v0 + 344);
      v24 = *(v0 + 312);
      v25 = *(v0 + 320);
      v26 = *(v0 + 304);
      if (v19)
      {
        v153 = *(v0 + 312);
        v27 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v159[0] = v147;
        *v27 = 134349570;
        v149 = v23;
        v28 = sub_1B644C390();
        loga = v18;
        v29 = *(v22 + 8);
        v30 = v29(v20, v21);
        *(v27 + 4) = v28;
        *(v27 + 12) = 2082;
        v31 = sub_1B650D90C(v30);
        v33 = v32;
        sub_1B6467DA0(v26);
        v34 = sub_1B6456540(v31, v33, v159);

        *(v27 + 14) = v34;
        *(v27 + 22) = 2082;
        v35 = [v4 allHeaderFields];
        sub_1B67D954C();

        v36 = sub_1B67D955C();
        v38 = v37;

        v39 = sub_1B6456540(v36, v38, v159);
        v40 = v29;

        *(v27 + 24) = v39;
        _os_log_impl(&dword_1B63EF000, loga, v158, "received Smarter Fetch response, time=%{public}lldms, id=%{public}s, headers=%{public}s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v147, -1, -1);
        MEMORY[0x1B8C96DF0](v27, -1, -1);

        v43 = *(v25 + 8);
        v42 = v25 + 8;
        v41 = v43;
        v43(v149, v153);
      }

      else
      {
        v40 = *(v22 + 8);
        v40(*(v0 + 384), *(v0 + 352));

        sub_1B6467DA0(v26);
        v109 = *(v25 + 8);
        v42 = v25 + 8;
        v41 = v109;
        v109(v23, v24);
      }

      *(v0 + 520) = v40;
      *(v0 + 504) = v42;
      *(v0 + 512) = v41;
      v110 = *(v0 + 440);
      v111 = *(v0 + 376);
      sub_1B67D876C();
      type metadata accessor for SmarterFetchResponseDecoder();
      sub_1B64B2B4C(v110, (v0 + 56));
      v112 = *(v0 + 80);
      v113 = __swift_project_boxed_opaque_existential_1((v0 + 56), v112);
      v114 = *(v112 - 8);
      v115 = *(v114 + 64) + 15;
      v116 = swift_task_alloc();
      (*(v114 + 16))(v116, v113, v112);
      *(v0 + 40) = swift_getAssociatedTypeWitness();
      *(v0 + 48) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_1B67D9A2C();

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v117 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v118 = *(MEMORY[0x1E69E85B0] + 4);
      v119 = swift_task_alloc();
      *(v0 + 528) = v119;
      *v119 = v0;
      v119[1] = sub_1B64873C4;
      v81 = v0 + 128;
      v82 = 0;
      v83 = 0;

      return MEMORY[0x1EEE6D8D0](v81, v82, v83);
    }

    v71 = *(v0 + 448);
    v72 = *(v0 + 280);
    v73 = *(v0 + 232);
    v74 = objc_opt_self();
    v75 = (v73 + *(v72 + 20));
    v76 = *v75;
    v77 = v75[1];
    v78 = v71;
    v79 = sub_1B67D963C();
    v80 = [v74 fc:v4 HTTPErrorWithURLResponse:v79 requestUUID:?];

    if (!v80)
    {
      __break(1u);
      return MEMORY[0x1EEE6D8D0](v81, v82, v83);
    }

    v84 = *(v0 + 440);
    v85 = *(v0 + 448);
    v86 = *(v0 + 424);
    swift_willThrow();

    v87 = *(v86 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v87 + 24));
    v88 = *(v87 + 16);
    v89 = v88;
    os_unfair_lock_unlock((v87 + 24));

    if (v88)
    {
      v90 = *(v0 + 392);
      v91 = *(v0 + 280);
      v92 = *(v0 + 232);
      v155 = v89;
      sub_1B67D869C();
      v94 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1B68100D0;
      *(v95 + 32) = sub_1B648901C();
      *(v95 + 40) = v96;
      v97 = (v92 + *(v91 + 56));
      v98 = *v97;
      v99 = v97[1];
      v100 = sub_1B67D963C();
      v101 = sub_1B67D97AC();

      if (v99)
      {
        v102 = sub_1B67D963C();
      }

      else
      {
        v102 = 0;
      }

      v65 = *(v0 + 408);
      v148 = *(v0 + 400);
      v150 = *(v0 + 416);
      v66 = *(v0 + 360);
      v144 = *(v0 + 352);
      log = *(v0 + 392);
      v120 = *(v0 + 264);
      v139 = *(v0 + 272);
      v141 = *(v0 + 424);
      v121 = *(v0 + 248);
      v143 = *(v0 + 256);
      v137 = *(v0 + 240);
      v122 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v155 requestUUID:v100 startTime:v101 smarterFetchSources:v102 smarterFetchStrategy:v94];

      [*(v121 + 40) logNetworkEvent_];
      *(v0 + 208) = v122;
      *(v0 + 216) = 2;
      v123 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v120 + 8))(v139, v143);
LABEL_22:
      (*(v66 + 8))(log, v144);
      (*(v65 + 8))(v150, v148);
      goto LABEL_23;
    }
  }

  else
  {
    v44 = *(v0 + 440);
    v45 = *(v0 + 424);
    sub_1B6489830();
    swift_allocError();
    *v46 = 3;
    *(v46 + 8) = 1;
    swift_willThrow();

    v47 = *(v45 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v47 + 24));
    v48 = *(v47 + 16);
    v49 = v48;
    os_unfair_lock_unlock((v47 + 24));

    if (v48)
    {
      v50 = *(v0 + 392);
      v51 = *(v0 + 280);
      v52 = *(v0 + 232);
      v53 = (v52 + *(v51 + 20));
      v54 = *v53;
      v55 = v53[1];
      v154 = v49;
      sub_1B67D869C();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B68100D0;
      *(v58 + 32) = sub_1B648901C();
      *(v58 + 40) = v59;
      v60 = (v52 + *(v51 + 56));
      v61 = *v60;
      v62 = v60[1];
      v63 = sub_1B67D963C();
      v64 = sub_1B67D97AC();

      if (v62)
      {
        v62 = sub_1B67D963C();
      }

      v65 = *(v0 + 408);
      v148 = *(v0 + 400);
      v150 = *(v0 + 416);
      v66 = *(v0 + 360);
      v144 = *(v0 + 352);
      log = *(v0 + 392);
      v67 = *(v0 + 264);
      v138 = *(v0 + 272);
      v140 = *(v0 + 424);
      v68 = *(v0 + 248);
      v142 = *(v0 + 256);
      v136 = *(v0 + 240);
      v69 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v154 requestUUID:v63 startTime:v64 smarterFetchSources:v62 smarterFetchStrategy:v57];

      [*(v68 + 40) logNetworkEvent_];
      *(v0 + 112) = v69;
      *(v0 + 120) = 2;
      v70 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v67 + 8))(v138, v142);
      goto LABEL_22;
    }
  }

  v103 = *(v0 + 416);
  v104 = *(v0 + 400);
  v105 = *(v0 + 408);
  v106 = *(v0 + 392);
  v107 = *(v0 + 352);
  v108 = *(v0 + 360);

  (*(v108 + 8))(v106, v107);
  (*(v105 + 8))(v103, v104);
LABEL_23:
  v124 = *(v0 + 416);
  v125 = *(v0 + 384);
  v126 = *(v0 + 392);
  v128 = *(v0 + 368);
  v127 = *(v0 + 376);
  v130 = *(v0 + 336);
  v129 = *(v0 + 344);
  v131 = *(v0 + 328);
  v133 = *(v0 + 296);
  v132 = *(v0 + 304);
  v151 = *(v0 + 288);
  v156 = *(v0 + 272);

  v134 = *(v0 + 8);

  return v134();
}

uint64_t sub_1B64873C4()
{
  v2 = *(*v1 + 528);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1B6488110;
  }

  else
  {
    v3 = sub_1B64874D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64874D4()
{
  v130 = v0;
  v1 = *(v0 + 128);
  v2 = v0 + 16;
  v3 = *(v0 + 136);
  if (v3 == 255)
  {
    v119 = *(v0 + 488);
    v124 = *(v0 + 496);
    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v10 = *(v0 + 464);
    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v13 = *(v0 + 352);
    v14 = *(v0 + 328);
    v15 = *(v0 + 312);
    v114 = *(v0 + 288);
    v16 = *(v0 + 232);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9(v14, v10, v15);
    v119(v12, v11, v13);
    sub_1B6489884(v16, v114, type metadata accessor for SmarterFetchRequest);
    v17 = sub_1B67D8A7C();
    v18 = sub_1B67D9C9C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 520);
    v21 = *(v0 + 512);
    v22 = *(v0 + 368);
    v120 = *(v0 + 448);
    v125 = *(v0 + 376);
    v23 = *(v0 + 360);
    v115 = *(v0 + 328);
    v109 = *(v0 + 440);
    v112 = *(v0 + 312);
    v24 = *(v0 + 288);
    if (v19)
    {
      v107 = *(v0 + 352);
      v105 = *(v0 + 504);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v129 = v26;
      *v25 = 134349314;
      v103 = v21;
      v27 = sub_1B644C390();
      v28 = v20(v22, v107);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      v29 = sub_1B650D90C(v28);
      v31 = v30;
      sub_1B6467DA0(v24);
      v32 = sub_1B6456540(v29, v31, &v129);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_1B63EF000, v17, v18, "finished processing records from Smarter Fetch, time=%{public}lldms, id=%{public}s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
      MEMORY[0x1B8C96DF0](v25, -1, -1);

      v103(v115, v112);
      v20(v125, v107);
    }

    else
    {
      v50 = *(v0 + 352);
      v20(*(v0 + 368), v50);

      sub_1B6467DA0(v24);
      v21(v115, v112);
      v20(v125, v50);
    }

    v51 = *(*(v0 + 424) + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v51 + 24));
    v52 = *(v51 + 16);
    v53 = v52;
    os_unfair_lock_unlock((v51 + 24));

    if (v52)
    {
      v54 = *(v0 + 392);
      v55 = *(v0 + 280);
      v56 = *(v0 + 232);
      v57 = (v56 + *(v55 + 20));
      v58 = *v57;
      v59 = v57[1];
      v127 = v53;
      sub_1B67D869C();
      v61 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1B68100D0;
      *(v62 + 32) = sub_1B648901C();
      *(v62 + 40) = v63;
      v64 = (v56 + *(v55 + 56));
      v65 = *v64;
      v66 = v64[1];
      v67 = sub_1B67D963C();
      v68 = sub_1B67D97AC();

      if (v66)
      {
        v66 = sub_1B67D963C();
      }

      v122 = *(v0 + 416);
      v69 = *(v0 + 408);
      v113 = *(v0 + 520);
      v118 = *(v0 + 400);
      v111 = *(v0 + 392);
      v106 = *(v0 + 360);
      v108 = *(v0 + 352);
      v70 = *(v0 + 264);
      v71 = *(v0 + 272);
      v72 = *(v0 + 248);
      v102 = *(v0 + 424);
      v104 = *(v0 + 256);
      v101 = *(v0 + 240);
      v73 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v127 requestUUID:v67 startTime:v68 smarterFetchSources:v66 smarterFetchStrategy:v61];

      [*(v72 + 40) logNetworkEvent_];
      *(v0 + 160) = v73;
      *(v0 + 168) = 2;
      v74 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v70 + 8))(v71, v104);
      v113(v111, v108);
      (*(v69 + 8))(v122, v118);
    }

    else
    {
      v82 = *(v0 + 520);
      v83 = *(v0 + 416);
      v84 = *(v0 + 400);
      v85 = *(v0 + 408);
      v86 = *(v0 + 392);
      v87 = *(v0 + 352);
      v88 = *(v0 + 360);

      v82(v86, v87);
      (*(v85 + 8))(v83, v84);
    }

    v89 = *(v0 + 416);
    v90 = *(v0 + 384);
    v91 = *(v0 + 392);
    v93 = *(v0 + 368);
    v92 = *(v0 + 376);
    v95 = *(v0 + 336);
    v94 = *(v0 + 344);
    v96 = *(v0 + 328);
    v98 = *(v0 + 296);
    v97 = *(v0 + 304);
    v123 = *(v0 + 288);
    v128 = *(v0 + 272);

    v99 = *(v0 + 8);

    return v99();
  }

  else
  {
    if (v3)
    {
      v4 = *(v0 + 264);
      v5 = *(v0 + 272);
      v6 = *(v0 + 256);
      v7 = *(v0 + 240);
      *(v0 + 176) = v1;
      *(v0 + 184) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();
      (*(v4 + 8))(v5, v6);
    }

    else
    {
      v33 = *(v0 + 480);
      v34 = *(v0 + 296);
      v35 = *(v0 + 232);
      (*(v0 + 472))(*(v0 + 336), *(v0 + 464), *(v0 + 312));
      sub_1B6489884(v35, v34, type metadata accessor for SmarterFetchRequest);
      v116 = v1;
      v36 = sub_1B67D8A7C();
      v37 = sub_1B67D9C9C();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 512);
      v40 = *(v0 + 312);
      v121 = v40;
      v126 = *(v0 + 336);
      v41 = *(v0 + 296);
      if (v38)
      {
        v110 = *(v0 + 504);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v129 = v43;
        *v42 = 67240450;
        *(v42 + 4) = [v116 recordCount];
        sub_1B6449D2C(v1, v3);
        *(v42 + 8) = 2082;
        v45 = sub_1B650D90C(v44);
        v117 = v39;
        v47 = v46;
        sub_1B6467DA0(v41);
        v48 = sub_1B6456540(v45, v47, &v129);

        *(v42 + 10) = v48;
        _os_log_impl(&dword_1B63EF000, v36, v37, "will process records from Smarter Fetch, count=%{public}d, id=%{public}s", v42, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v49 = v43;
        v2 = v0 + 16;
        MEMORY[0x1B8C96DF0](v49, -1, -1);
        MEMORY[0x1B8C96DF0](v42, -1, -1);

        v117(v126, v121);
      }

      else
      {

        sub_1B6449D2C(v1, v3);
        sub_1B6467DA0(v41);
        v39(v126, v121);
      }

      v76 = *(v0 + 264);
      v75 = *(v0 + 272);
      v77 = *(v0 + 256);
      v78 = *(v0 + 240);
      *(v0 + 192) = v1;
      *(v0 + 200) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();
      (*(v76 + 8))(v75, v77);
    }

    v79 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v2, *(v0 + 40));
    v80 = *(MEMORY[0x1E69E85B0] + 4);
    v81 = swift_task_alloc();
    *(v0 + 528) = v81;
    *v81 = v0;
    v81[1] = sub_1B64873C4;

    return MEMORY[0x1EEE6D8D0](v0 + 128, 0, 0);
  }
}

uint64_t sub_1B6487DB4()
{
  v1 = *(*(v0 + 424) + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));

  if (v2)
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 280);
    v6 = *(v0 + 232);
    v7 = (v6 + *(v5 + 20));
    v8 = *v7;
    v9 = v7[1];
    v53 = v3;
    sub_1B67D869C();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B68100D0;
    *(v12 + 32) = sub_1B648901C();
    *(v12 + 40) = v13;
    v14 = (v6 + *(v5 + 56));
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1B67D963C();
    v18 = sub_1B67D97AC();

    if (v16)
    {
      v16 = sub_1B67D963C();
    }

    v49 = *(v0 + 400);
    v51 = *(v0 + 416);
    v47 = *(v0 + 392);
    v48 = *(v0 + 408);
    v19 = *(v0 + 360);
    v20 = *(v0 + 264);
    v43 = *(v0 + 272);
    v44 = *(v0 + 424);
    v21 = *(v0 + 248);
    v45 = *(v0 + 256);
    v46 = *(v0 + 352);
    v22 = *(v0 + 240);
    v23 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v53 requestUUID:v17 startTime:v18 smarterFetchSources:v16 smarterFetchStrategy:v11];

    [*(v21 + 40) logNetworkEvent_];
    *(v0 + 96) = v23;
    *(v0 + 104) = 2;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
    sub_1B67D9A6C();

    (*(v20 + 8))(v43, v45);
    (*(v19 + 8))(v47, v46);
    (*(v48 + 8))(v51, v49);
  }

  else
  {
    v25 = *(v0 + 416);
    v26 = *(v0 + 400);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);

    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v25, v26);
  }

  v31 = *(v0 + 416);
  v33 = *(v0 + 384);
  v32 = *(v0 + 392);
  v35 = *(v0 + 368);
  v34 = *(v0 + 376);
  v37 = *(v0 + 336);
  v36 = *(v0 + 344);
  v38 = *(v0 + 328);
  v39 = *(v0 + 296);
  v40 = *(v0 + 304);
  v50 = *(v0 + 288);
  v52 = *(v0 + 272);
  v54 = *(v0 + 456);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1B6488110()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);

  v1(v4, v5);
  v60 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v7 = *(v3 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  v9 = v8;
  os_unfair_lock_unlock((v7 + 24));

  if (v8)
  {
    v10 = *(v0 + 392);
    v11 = *(v0 + 280);
    v12 = *(v0 + 232);
    v13 = (v12 + *(v11 + 20));
    v14 = *v13;
    v15 = v13[1];
    v57 = v9;
    sub_1B67D869C();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B68100D0;
    *(v18 + 32) = sub_1B648901C();
    *(v18 + 40) = v19;
    v20 = (v12 + *(v11 + 56));
    v21 = *v20;
    v22 = v20[1];
    v23 = sub_1B67D963C();
    v24 = sub_1B67D97AC();

    if (v22)
    {
      v22 = sub_1B67D963C();
    }

    v56 = *(v0 + 416);
    v25 = *(v0 + 408);
    v54 = *(v0 + 520);
    v55 = *(v0 + 400);
    v52 = *(v0 + 352);
    v53 = *(v0 + 392);
    v27 = *(v0 + 264);
    v26 = *(v0 + 272);
    v28 = *(v0 + 248);
    v50 = *(v0 + 424);
    v51 = *(v0 + 256);
    v49 = *(v0 + 240);
    v29 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v57 requestUUID:v23 startTime:v24 smarterFetchSources:v22 smarterFetchStrategy:v17];

    [*(v28 + 40) logNetworkEvent_];
    *(v0 + 144) = v29;
    *(v0 + 152) = 2;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
    sub_1B67D9A6C();

    (*(v27 + 8))(v26, v51);
    v54(v53, v52);
    (*(v25 + 8))(v56, v55);
  }

  else
  {
    v31 = *(v0 + 520);
    v32 = *(v0 + 416);
    v33 = *(v0 + 400);
    v34 = *(v0 + 408);
    v35 = *(v0 + 392);
    v36 = *(v0 + 352);

    v31(v35, v36);
    (*(v34 + 8))(v32, v33);
  }

  v37 = *(v0 + 416);
  v38 = *(v0 + 384);
  v39 = *(v0 + 392);
  v41 = *(v0 + 368);
  v40 = *(v0 + 376);
  v43 = *(v0 + 336);
  v42 = *(v0 + 344);
  v44 = *(v0 + 328);
  v46 = *(v0 + 296);
  v45 = *(v0 + 304);
  v58 = *(v0 + 288);
  v59 = *(v0 + 272);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1B64884B4(uint64_t a1)
{
  v3 = sub_1B67D85FC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  result = sub_1B6484FB8(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v1)
  {
    sub_1B67D834C();
    sub_1B64898EC(a1);
    sub_1B67D835C();
    sub_1B67D833C();
    sub_1B67D836C();
    sub_1B67D836C();
    v7 = [objc_opt_self() sharedAccount];
    v8 = [v7 endpointConnectionClientID];

    if (v8)
    {
      sub_1B67D964C();
    }

    sub_1B67D836C();

    v9 = (a1 + *(type metadata accessor for SmarterFetchRequest(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    sub_1B67D964C();
    sub_1B67D836C();

    v12 = FCClientInfoHeaderValue();
    sub_1B67D964C();

    sub_1B67D964C();
    sub_1B67D836C();

    v13 = FCUserAgentHeaderValue();
    sub_1B67D964C();

    sub_1B67D964C();
    sub_1B67D836C();
  }

  return result;
}

uint64_t sub_1B64887BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_1B67D85FC();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648888C, 0, 0);
}

uint64_t sub_1B648888C()
{
  v1 = v0[6];
  v2 = v0[4];
  IsMemoryConstrained = FCProcessIsMemoryConstrained();
  v4 = *(v2 + 48);
  if (IsMemoryConstrained)
  {
    sub_1B67D89CC();
    v0[11] = v0[3];
    v5 = *(MEMORY[0x1E6969ED8] + 4);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1B64889D4;
    v7 = v0[10];
    v8 = v0[5];

    return MEMORY[0x1EEDC6278](v7, v8, v1);
  }

  else
  {
    sub_1B67D89CC();
    v0[15] = v0[2];
    v9 = *(MEMORY[0x1E6969EC0] + 4);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1B6488C54;
    v11 = v0[5];

    return MEMORY[0x1EEDC6260](v11, v1);
  }
}

uint64_t sub_1B64889D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_1B6488E3C;
  }

  else
  {

    v5 = sub_1B6488AF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6488AF0()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  type metadata accessor for URLResponsePayload(0);
  (*(v5 + 16))(v2, v3, v4);
  v6 = URLResponsePayload.__allocating_init(_:)(v2);
  if (v1)
  {
    v7 = v0[13];
    (*(v0[8] + 8))(v0[10], v0[7]);

    v9 = v0[9];
    v8 = v0[10];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v6;
    (*(v0[8] + 8))(v0[10], v0[7]);
    v13 = v0[13];
    v15 = v0[9];
    v14 = v0[10];

    v16 = v0[1];

    return v16(v12, v13);
  }
}

uint64_t sub_1B6488C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 128);
  v10 = *v4;
  *(*v4 + 136) = v3;

  if (v3)
  {
    v11 = sub_1B6488EB0;
  }

  else
  {

    *(v8 + 144) = a3;
    *(v8 + 152) = a2;
    *(v8 + 160) = a1;
    v11 = sub_1B6488D98;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B6488D98()
{
  v1 = v0[19];
  v2 = v0[20];
  type metadata accessor for URLResponsePayload(0);
  v3 = URLResponsePayload.__allocating_init(_:)(v2, v1);
  v4 = v0[18];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7(v3, v4);
}

uint64_t sub_1B6488E3C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B6488EB0()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B6488F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B67DA3DC();
  sub_1B67D967C();
  v7 = sub_1B67DA41C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B67DA2DC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B648901C()
{
  v1 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6489884(v0, v4, type metadata accessor for SmarterFetchRequest.DataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
        sub_1B6418AB4(&v4[*(v7 + 48)], &unk_1EB94A100, &qword_1B680FD50);
        v8 = sub_1B67D877C();
        (*(*(v8 - 8) + 8))(v4, v8);
        return 0xD000000000000011;
      }

      else
      {
        return 5002053;
      }
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
      sub_1B6418AB4(&v4[*(v9 + 48)], &unk_1EB94A100, &qword_1B680FD50);
      v10 = sub_1B67D877C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return 0x54534554414CLL;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x505055535F4C5345;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x455F4C41424F4C47;
  }

  else
  {
    return 0x5F4741545F524550;
  }
}

uint64_t sub_1B6489278()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

id sub_1B6489414()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B648945C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1B64895E4(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_1B6489628(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for SmarterFetchRequest(0);
  (*(*(Request - 8) + 32))(a2, a1, Request);
  return a2;
}

uint64_t sub_1B648968C()
{
  v2 = *(type metadata accessor for SmarterFetchRequest(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1B67D877C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 32);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B642694C;

  return sub_1B6485AD0(v11, v12, v13, v10, v0 + v3, v0 + v6, v0 + v9);
}

unint64_t sub_1B6489830()
{
  result = qword_1EB9532E0[0];
  if (!qword_1EB9532E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9532E0);
  }

  return result;
}

uint64_t sub_1B6489884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1B64898EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v70 - v7;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v9 = (a1 + Request[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + Request[7]);
  v13 = *(a1 + Request[8]);
  if (v13 > 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = dword_1B6813010[v13];
  }

  v15 = objc_allocWithZone(MEMORY[0x1E69B7050]);
  v16 = sub_1B67D963C();
  v17 = sub_1B67D97AC();
  v77 = [v15 initWithStorefrontID:v16 preferredLanguages:v17 subscriberType:v14];

  v18 = (a1 + Request[15]);
  if (v18[1] >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = sub_1B67D864C();
  }

  v76 = [objc_allocWithZone(MEMORY[0x1E69B6F08]) initWithUserInterestVector:v19 uivModelID:0];

  v21 = *(a1 + Request[9]);
  MEMORY[0x1EEE9AC00](v22);
  v69 = a1;
  v75 = sub_1B644F358(sub_1B6489FC0, &v67, v23);
  v73 = v1;
  v24 = *(a1 + Request[11]);
  v25 = *(v24 + 16);
  if (v25)
  {
    v74 = sub_1B646682C(*(v24 + 16), 0);
    v26 = sub_1B648945C(&v79, (v74 + 32), v25, v24);

    sub_1B6449D40();
    if (v26 == v25)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B68100E0;
  v28 = [objc_opt_self() fc_articleRecordType];
  v29 = v28;
  v30 = *(a1 + Request[13]);
  v31 = *(v30 + 16);
  if (v31)
  {
    v71 = v28;
    v72 = v27;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v32 = (v30 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v35 = objc_allocWithZone(MEMORY[0x1E69B6D80]);

      v36 = sub_1B67D963C();

      [v35 initWithName_];

      sub_1B67D9F7C();
      v37 = *(v79 + 16);
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v32 += 2;
      --v31;
    }

    while (v31);
    v29 = v71;
    v27 = v72;
  }

  v38 = objc_allocWithZone(MEMORY[0x1E69B6E40]);
  sub_1B63F3DA0(0, &qword_1EB94AAC0, 0x1E69B6D80);
  v39 = sub_1B67D97AC();

  v40 = [v38 initWithRecordType:v29 desiredFields:v39 linkedFields:0];

  *(v27 + 32) = v40;
  sub_1B648901C();
  v41 = (a1 + Request[14]);
  v42 = v41[1];
  v72 = *v41;
  sub_1B650CA94(v78);
  sub_1B650CC38(v80);
  sub_1B63F3DA0(0, &qword_1EB94AAA8, 0x1E69B6FE8);
  v43 = v76;
  v44 = v77;
  v76 = sub_1B67D97AC();

  v75 = sub_1B67D97AC();

  sub_1B63F3DA0(0, &unk_1EB94AAB0, 0x1E69B6E40);
  v74 = sub_1B67D97AC();

  v45 = sub_1B67D963C();

  v77 = v44;
  v46 = v43;
  if (v42)
  {
    v72 = sub_1B67D963C();
  }

  else
  {
    v72 = 0;
  }

  v47 = sub_1B67D877C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v50 = v78;
  v51 = 0;
  if (v49(v78, 1, v47) != 1)
  {
    v51 = sub_1B67D86DC();
    (*(v48 + 8))(v50, v47);
  }

  v52 = v80;
  v53 = v45;
  if (v49(v80, 1, v47) == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = sub_1B67D86DC();
    (*(v48 + 8))(v52, v47);
  }

  v55 = v46;
  v56 = v77;
  v57 = objc_allocWithZone(MEMORY[0x1E69B6FD0]);
  v68 = v51;
  v80 = v51;
  v58 = v72;
  v59 = v46;
  v61 = v75;
  v60 = v76;
  v62 = v74;
  v63 = [v57 initWithUserInfo:v56 personalizationParams:v59 tagsFollowed:v76 mutedTagIDs:v75 fetchRecordSpecs:v74 fetchSource:v53 fetchStrategy:v72 fromDate:v68 toDate:v54];

  result = [v63 data];
  if (result)
  {
    v65 = result;
    v66 = sub_1B67D866C();

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6489FC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  Request = type metadata accessor for SmarterFetchRequest(0);
  v8 = sub_1B6488F24(v5, v6, *(v4 + *(Request + 40)));
  LOBYTE(Request) = sub_1B6488F24(v5, v6, *(v4 + *(Request + 48)));
  v9 = objc_allocWithZone(MEMORY[0x1E69B6FE8]);
  v10 = sub_1B67D963C();
  v11 = [v9 initWithTagID:v10 followMode:v8 & 1 isALaCarteSubscribed:Request & 1];

  *a2 = v11;
}

uint64_t sub_1B648A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmarterFetchService.Errors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SmarterFetchService.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_1B648A160(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B648A17C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t static FCCKResponseDecoder.processResponse(payload:operationHandler:recordHandler:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_1B67D993C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a1;
  v19[9] = a6;
  v19[10] = a7;

  v20 = a1;

  sub_1B644BCA8(0, 0, v17, &unk_1B68131B0, v19);
}

uint64_t sub_1B648A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[84] = v23;
  v8[83] = v22;
  v8[82] = a8;
  v8[81] = a7;
  v8[80] = a6;
  v8[79] = a5;
  v8[78] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB40, &qword_1B6813200);
  v8[85] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v11 = sub_1B67D9C5C();
  v8[88] = v11;
  v12 = *(v11 - 8);
  v8[89] = v12;
  v13 = *(v12 + 64) + 15;
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v14 = sub_1B67D9C3C();
  v8[92] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[93] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB48, &qword_1B6813208);
  v8[94] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[95] = swift_task_alloc();
  v8[96] = swift_task_alloc();
  v18 = type metadata accessor for URLResponsePayload.Kind(0);
  v8[97] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648A4E4, 0, 0);
}

uint64_t sub_1B648A4E4()
{
  v1 = *(v0 + 776);
  sub_1B648CE30(*(v0 + 656) + OBJC_IVAR___FCURLResponsePayload_kind, *(v0 + 784));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(v0 + 784);
      v4 = *(v0 + 768);
      v5 = *(v0 + 760);
      v6 = *(v0 + 752);
      v7 = *(v0 + 744);
      v8 = *(v0 + 736);
      *(v0 + 840) = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48));
      sub_1B67D9C4C();
      sub_1B648CEF4(&qword_1EB94AB80, MEMORY[0x1E6969E90]);
      sub_1B648D654(v7, v8, v4);
      sub_1B648FCB4(v6, v5);
      v9 = sub_1B6413CCC(&qword_1EB94AB88, &qword_1EB94AB48, &qword_1B6813208);
      v10 = *(MEMORY[0x1E69E85A8] + 4);
      v11 = swift_task_alloc();
      *(v0 + 848) = v11;
      *v11 = v0;
      v11[1] = sub_1B648B198;
      v12 = *(v0 + 760);
      v13 = *(v0 + 752);
      v14 = v0 + 552;
    }

    else
    {
      v21 = *(v0 + 784);
      v22 = *(v0 + 728);
      v23 = *(v0 + 720);
      v24 = *(v0 + 712);
      v25 = *(v0 + 704);
      v26 = *(v0 + 696);
      v27 = *(v0 + 688);
      v28 = *(v0 + 680);

      (*(v24 + 32))(v22, v21, v25);
      (*(v24 + 16))(v23, v22, v25);
      sub_1B648CEF4(&qword_1EB94AB58, MEMORY[0x1E6969EA0]);
      sub_1B648D654(v23, v25, v26);
      sub_1B648FCB4(v28, v27);
      v9 = sub_1B6413CCC(&qword_1EB94AB60, &qword_1EB94AB40, &qword_1B6813200);
      v29 = *(MEMORY[0x1E69E85A8] + 4);
      v30 = swift_task_alloc();
      *(v0 + 872) = v30;
      *v30 = v0;
      v30[1] = sub_1B648BA30;
      v31 = *(v0 + 688);
      v13 = *(v0 + 680);
      v14 = v0 + 536;
    }
  }

  else
  {
    v15 = *(v0 + 784);
    v16 = *v15;
    *(v0 + 792) = *v15;
    v17 = v15[1];
    *(v0 + 800) = v17;
    sub_1B646B894(v16, v17);
    sub_1B648FFD4(v16, v17, v0 + 16);
    v35 = *(v0 + 48);
    v36 = *(v0 + 64);
    v37 = *(v0 + 80);
    v38 = *(v0 + 96);
    v33 = *(v0 + 16);
    v34 = *(v0 + 32);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB90, &unk_1B6813238);
    *(v0 + 808) = v18;
    sub_1B6490A0C(v18, v0 + 104);
    v9 = sub_1B6413CCC(qword_1EDB20370, &qword_1EB94AB90, &unk_1B6813238);
    v19 = *(MEMORY[0x1E69E85A8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 816) = v20;
    *v20 = v0;
    v20[1] = sub_1B648A93C;
    v13 = *(v0 + 808);
    v14 = v0 + 568;
  }

  return MEMORY[0x1EEE6D8C8](v14, v13, v9);
}

uint64_t sub_1B648A93C()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_1B648AEA8;
  }

  else
  {
    v3 = sub_1B648AA50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B648AA50()
{
  *(v0 + 832) = *(v0 + 568);
  *(v0 + 545) = *(v0 + 576);
  return MEMORY[0x1EEE6DFA0](sub_1B648AA7C, 0, 0);
}

uint64_t sub_1B648AA7C()
{
  v1 = *(v0 + 545);
  if (v1 == 255)
  {
    v5 = *(v0 + 800);
    v6 = *(v0 + 792);
    v7 = *(v0 + 152);
    *(v0 + 312) = *(v0 + 136);
    *(v0 + 328) = v7;
    *(v0 + 344) = *(v0 + 168);
    *(v0 + 360) = *(v0 + 184);
    v8 = *(v0 + 120);
    *(v0 + 280) = *(v0 + 104);
    *(v0 + 296) = v8;
    sub_1B6418AB4(v0 + 280, &qword_1EB94AB90, &unk_1B6813238);
    sub_1B645745C(v6, v5);
    sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
    v9 = *(v0 + 672);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 832);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      v4 = *(v0 + 632);
      (*(v0 + 624))(v2);
LABEL_10:
      v37 = *(v0 + 832);
      v38 = *(v0 + 545);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v37, v38);
      v39 = sub_1B6413CCC(qword_1EDB20370, &qword_1EB94AB90, &unk_1B6813238);
      v40 = *(MEMORY[0x1E69E85A8] + 4);
      v41 = swift_task_alloc();
      *(v0 + 816) = v41;
      *v41 = v0;
      v41[1] = sub_1B648A93C;
      v42 = *(v0 + 808);

      return MEMORY[0x1EEE6D8C8](v0 + 568, v42, v39);
    }

    v10 = *(v0 + 648);
    v11 = (*(v0 + 640))(v2);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *(v0 + 832);
    v13 = *(v0 + 800);
    v14 = *(v0 + 792);
    v15 = *(v0 + 545);
    v16 = v11;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);
    sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
    sub_1B6449D2C(v12, v15);
    sub_1B645745C(v14, v13);
    v17 = *(v0 + 152);
    *(v0 + 400) = *(v0 + 136);
    *(v0 + 416) = v17;
    *(v0 + 432) = *(v0 + 168);
    *(v0 + 448) = *(v0 + 184);
    v18 = *(v0 + 120);
    *(v0 + 368) = *(v0 + 104);
    *(v0 + 384) = v18;
    sub_1B6418AB4(v0 + 368, &qword_1EB94AB90, &unk_1B6813238);
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    v22 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v23;
    v24 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v24;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
    sub_1B67D853C();
    v25 = *(v0 + 592);
    v26 = v25;
    v20(v25);
  }

  v27 = *(v0 + 784);
  v28 = *(v0 + 768);
  v29 = *(v0 + 760);
  v30 = *(v0 + 744);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  v33 = *(v0 + 696);
  v34 = *(v0 + 688);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1B648AEA8()
{
  *(v0 + 616) = *(v0 + 824);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648AF38, 0, 0);
}

uint64_t sub_1B648AF38()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
  sub_1B645745C(v2, v1);
  v3 = *(v0 + 152);
  *(v0 + 224) = *(v0 + 136);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 168);
  *(v0 + 272) = *(v0 + 184);
  v4 = *(v0 + 120);
  *(v0 + 192) = *(v0 + 104);
  *(v0 + 208) = v4;
  sub_1B6418AB4(v0 + 192, &qword_1EB94AB90, &unk_1B6813238);
  v5 = *(v0 + 824);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  type metadata accessor for CKUnderlyingError(0);
  *(v0 + 600) = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  v9 = *MEMORY[0x1E696AA08];
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v10;
  v11 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v11;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
  sub_1B67D853C();
  v12 = *(v0 + 592);
  v13 = v12;
  v7(v12);

  v14 = *(v0 + 784);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v17 = *(v0 + 744);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  v20 = *(v0 + 696);
  v21 = *(v0 + 688);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B648B198()
{
  v2 = *(*v1 + 848);
  v5 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = sub_1B648B730;
  }

  else
  {
    v3 = sub_1B648B2AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B648B2AC()
{
  *(v0 + 864) = *(v0 + 552);
  *(v0 + 546) = *(v0 + 560);
  return MEMORY[0x1EEE6DFA0](sub_1B648B2D8, 0, 0);
}

uint64_t sub_1B648B2D8()
{
  v1 = *(v0 + 546);
  if (v1 == 255)
  {
    v5 = *(v0 + 784);
    v6 = *(v0 + 768);
    v7 = *(v0 + 760);

    sub_1B6418AB4(v7, &qword_1EB94AB48, &qword_1B6813208);
    sub_1B6418AB4(v6, &qword_1EB94AB48, &qword_1B6813208);
    v8 = sub_1B67D85FC();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = *(v0 + 672);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 864);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      v4 = *(v0 + 632);
      (*(v0 + 624))(v2);
LABEL_10:
      v38 = *(v0 + 864);
      v39 = *(v0 + 546);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v38, v39);
      v40 = sub_1B6413CCC(&qword_1EB94AB88, &qword_1EB94AB48, &qword_1B6813208);
      v41 = *(MEMORY[0x1E69E85A8] + 4);
      v42 = swift_task_alloc();
      *(v0 + 848) = v42;
      *v42 = v0;
      v42[1] = sub_1B648B198;
      v43 = *(v0 + 760);
      v44 = *(v0 + 752);

      return MEMORY[0x1EEE6D8C8](v0 + 552, v44, v40);
    }

    v10 = *(v0 + 648);
    v11 = (*(v0 + 640))(v2);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *(v0 + 864);
    v13 = *(v0 + 840);
    v14 = *(v0 + 784);
    v15 = *(v0 + 768);
    v16 = *(v0 + 760);
    v17 = *(v0 + 546);
    v18 = v11;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);

    sub_1B6449D2C(v12, v17);
    sub_1B6418AB4(v16, &qword_1EB94AB48, &qword_1B6813208);
    sub_1B6418AB4(v15, &qword_1EB94AB48, &qword_1B6813208);
    v19 = sub_1B67D85FC();
    (*(*(v19 - 8) + 8))(v14, v19);
    v20 = *(v0 + 672);
    v21 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    v23 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v24;
    v25 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v25;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
    sub_1B67D853C();
    v26 = *(v0 + 592);
    v27 = v26;
    v21(v26);
  }

  v28 = *(v0 + 784);
  v29 = *(v0 + 768);
  v30 = *(v0 + 760);
  v31 = *(v0 + 744);
  v32 = *(v0 + 728);
  v33 = *(v0 + 720);
  v34 = *(v0 + 696);
  v35 = *(v0 + 688);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1B648B730()
{
  *(v0 + 608) = *(v0 + 856);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648B7C0, 0, 0);
}

uint64_t sub_1B648B7C0()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);

  sub_1B6418AB4(v3, &qword_1EB94AB48, &qword_1B6813208);
  sub_1B6418AB4(v2, &qword_1EB94AB48, &qword_1B6813208);
  v4 = sub_1B67D85FC();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = *(v0 + 856);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  type metadata accessor for CKUnderlyingError(0);
  *(v0 + 600) = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  v9 = *MEMORY[0x1E696AA08];
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v10;
  v11 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v11;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
  sub_1B67D853C();
  v12 = *(v0 + 592);
  v13 = v12;
  v7(v12);

  v14 = *(v0 + 784);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v17 = *(v0 + 744);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  v20 = *(v0 + 696);
  v21 = *(v0 + 688);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B648BA30()
{
  v2 = *(*v1 + 872);
  v5 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = sub_1B648BF88;
  }

  else
  {
    v3 = sub_1B648BB44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B648BB44()
{
  *(v0 + 888) = *(v0 + 536);
  *(v0 + 547) = *(v0 + 544);
  return MEMORY[0x1EEE6DFA0](sub_1B648BB70, 0, 0);
}

uint64_t sub_1B648BB70()
{
  v1 = *(v0 + 547);
  if (v1 == 255)
  {
    v5 = *(v0 + 728);
    v6 = *(v0 + 712);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    sub_1B6418AB4(*(v0 + 688), &qword_1EB94AB40, &qword_1B6813200);
    sub_1B6418AB4(v8, &qword_1EB94AB40, &qword_1B6813200);
    (*(v6 + 8))(v5, v7);
    v9 = *(v0 + 672);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 888);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      v4 = *(v0 + 632);
      (*(v0 + 624))(v2);
LABEL_10:
      v37 = *(v0 + 888);
      v38 = *(v0 + 547);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v37, v38);
      v39 = sub_1B6413CCC(&qword_1EB94AB60, &qword_1EB94AB40, &qword_1B6813200);
      v40 = *(MEMORY[0x1E69E85A8] + 4);
      v41 = swift_task_alloc();
      *(v0 + 872) = v41;
      *v41 = v0;
      v41[1] = sub_1B648BA30;
      v42 = *(v0 + 688);
      v43 = *(v0 + 680);

      return MEMORY[0x1EEE6D8C8](v0 + 536, v43, v39);
    }

    v10 = *(v0 + 648);
    v11 = (*(v0 + 640))(v2);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *(v0 + 888);
    v13 = *(v0 + 728);
    v14 = *(v0 + 712);
    v15 = *(v0 + 704);
    v16 = *(v0 + 696);
    v17 = *(v0 + 688);
    v18 = *(v0 + 547);
    v44 = v11;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);
    sub_1B6449D2C(v12, v18);
    sub_1B6418AB4(v17, &qword_1EB94AB40, &qword_1B6813200);
    sub_1B6418AB4(v16, &qword_1EB94AB40, &qword_1B6813200);
    (*(v14 + 8))(v13, v15);
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    v22 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v23;
    v24 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v24;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
    sub_1B67D853C();
    v25 = *(v0 + 592);
    v26 = v25;
    v20(v25);
  }

  v27 = *(v0 + 784);
  v28 = *(v0 + 768);
  v29 = *(v0 + 760);
  v30 = *(v0 + 744);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  v33 = *(v0 + 696);
  v34 = *(v0 + 688);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1B648BF88()
{
  *(v0 + 584) = *(v0 + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648C018, 0, 0);
}

uint64_t sub_1B648C018()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  sub_1B6418AB4(v0[86], &qword_1EB94AB40, &qword_1B6813200);
  sub_1B6418AB4(v4, &qword_1EB94AB40, &qword_1B6813200);
  (*(v2 + 8))(v1, v3);
  v5 = v0[110];
  v6 = v0[84];
  v7 = v0[83];
  type metadata accessor for CKUnderlyingError(0);
  v0[75] = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  v9 = *MEMORY[0x1E696AA08];
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v10;
  v11 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v11;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
  sub_1B67D853C();
  v12 = v0[74];
  v13 = v12;
  v7(v12);

  v14 = v0[98];
  v15 = v0[96];
  v16 = v0[95];
  v17 = v0[93];
  v18 = v0[91];
  v19 = v0[90];
  v20 = v0[87];
  v21 = v0[86];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1B648C264()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B6422E9C;

  return sub_1B648A308(v9, v10, v11, v2, v3, v4, v5, v6);
}

void sub_1B648C504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B67D854C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id FCCKResponseDecoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FCCKResponseDecoder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FCCKResponseDecoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B648C670()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B648C70C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B642694C;

  return sub_1B648A308(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_1B648C7DC()
{
  result = sub_1B6490C88();
  byte_1EDB26DC8 = result & 1;
  qword_1EDB26DD0 = v1;
  return result;
}

uint64_t sub_1B648C810()
{
  result = sub_1B6490C88();
  byte_1EDB26E10 = result & 1;
  qword_1EDB26E18 = v1;
  return result;
}

uint64_t sub_1B648C844()
{
  result = sub_1B6490C88();
  byte_1EDB26DE8 = result & 1;
  qword_1EDB26DF0 = v1;
  return result;
}

uint64_t sub_1B648C878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABE8, &qword_1B68134F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B6813190;
  if (qword_1EDB26DC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB26DD0;
  *(v0 + 32) = byte_1EDB26DC8;
  *(v0 + 40) = v1;
  v2 = qword_1EDB26E08;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB26E18;
  *(v0 + 48) = byte_1EDB26E10;
  *(v0 + 56) = v3;
  v4 = qword_1EDB26DE0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB26DF0;
  *(v0 + 64) = byte_1EDB26DE8;
  *(v0 + 72) = v5;

  return v0;
}

uint64_t sub_1B648C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1B648D240(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8 & 1;
  }

  return result;
}

uint64_t sub_1B648C9E0(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94ABB0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B648CA4C(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94ABB0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B648CAB8(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B648CB44(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B648CBB0(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B648CC1C(void *a1, uint64_t a2)
{
  v4 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B648CCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B648CD4C()
{
  v2 = *v0;
  sub_1B67DA3DC();
  sub_1B67D95DC();
  return sub_1B67DA41C();
}

uint64_t sub_1B648CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B648CE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResponsePayload.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B648CEA8()
{
  result = qword_1EB94AB68;
  if (!qword_1EB94AB68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94AB68);
  }

  return result;
}

uint64_t sub_1B648CEF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B648D15C()
{
  result = qword_1EB94ABD8;
  if (!qword_1EB94ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ABD8);
  }

  return result;
}

uint64_t sub_1B648D240(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EDB26DC0 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  LOBYTE(v16) = byte_1EDB26DC8;
  v17 = qword_1EDB26DD0;
  v5 = a3 & 1;
  LOBYTE(v14) = a3 & 1;
  v15 = a4;
  sub_1B648D48C();
  if (sub_1B67D962C())
  {
    v6 = MEMORY[0x1E69B6DD0];
  }

  else
  {
    if (qword_1EDB26E08 != -1)
    {
      swift_once();
    }

    LOBYTE(v16) = byte_1EDB26E10;
    v17 = qword_1EDB26E18;
    LOBYTE(v14) = v5;
    v15 = a4;
    if ((sub_1B67D962C() & 1) == 0)
    {
      if (qword_1EDB26DE0 != -1)
      {
        swift_once();
      }

      LOBYTE(v16) = byte_1EDB26DE8;
      v17 = qword_1EDB26DF0;
      LOBYTE(v14) = v5;
      v15 = a4;
      if ((sub_1B67D962C() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_16;
      }
    }

    v6 = MEMORY[0x1E69B6D78];
  }

  v7 = objc_allocWithZone(v6);
  v8 = sub_1B67D864C();
  v9 = [v7 initWithData_];

  if (v9)
  {
    return v9;
  }

  v11 = 1;
LABEL_16:
  sub_1B648D4E0();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

unint64_t sub_1B648D48C()
{
  result = qword_1EDB20430;
  if (!qword_1EDB20430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20430);
  }

  return result;
}

unint64_t sub_1B648D4E0()
{
  result = qword_1EB9537F0;
  if (!qword_1EB9537F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9537F0);
  }

  return result;
}

uint64_t sub_1B648D550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B648D598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B648D5FC()
{
  result = qword_1EB9537F8[0];
  if (!qword_1EB9537F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9537F8);
  }

  return result;
}

uint64_t sub_1B648D654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v14 = type metadata accessor for FCPBMessageStream();
  v15 = &a3[v14[13]];
  *v15 = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = MEMORY[0x1E69E7CC0];
  v17 = &a3[v14[14]];
  *v17 = 0;
  *(v17 + 1) = v16;
  v18 = v14[15];
  type metadata accessor for FCPBStreamAsync.Mark();
  *&a3[v18] = sub_1B67D950C();
  (*(v6 + 16))(v9, a1, a2);
  sub_1B6491C5C(v9, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

uint64_t sub_1B648D7CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1B648D878;

  return sub_1B648DAF0(a1, a2);
}

uint64_t sub_1B648D878()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648D9AC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B648D9AC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  if (swift_dynamicCast() && (*(v0 + 57) == 1 ? (v3 = *(v0 + 56) >= 2u) : (v3 = 0), v3))
  {
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);

    v9 = *(v7 + 40);
    v10 = *(v7 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);

    v5 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 48);

    swift_willThrow();
    v5 = *(v0 + 8);
    v6 = *(v0 + 48);
  }

  return v5();
}

uint64_t sub_1B648DAF0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *(a2 + 40);
  v3[9] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_1B67D9DFC();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648DC70, 0, 0);
}

uint64_t sub_1B648DC70()
{
  v1 = *(v0 + 48);
  *(v0 + 160) = *(v1 + 16);
  for (*(v0 + 168) = *(v1 + 32); ; v3 = *(v0 + 168))
  {
    v4 = *(v0 + 56);
    v5 = type metadata accessor for FCPBStreamAsync();
    *(v0 + 176) = v5;
    if (sub_1B6491DD0(v5))
    {
      v6 = *(v0 + 160);
      v7 = *(v0 + 168);
      *(v0 + 32) = *(*(v0 + 56) + *(*(v0 + 48) + 60));
      type metadata accessor for FCPBStreamAsync.Mark();
      sub_1B67D988C();
      swift_getWitnessTable();
      if (sub_1B67D9B6C())
      {
        v65 = 1;
        goto LABEL_27;
      }
    }

    v8 = *(v0 + 56);
    if (!sub_1B6491DD0(v5))
    {
      goto LABEL_16;
    }

    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 56);
    v12 = *(*(v0 + 48) + 60);
    type metadata accessor for FCPBStreamAsync.Mark();
    v13 = sub_1B67D988C();
    WitnessTable = swift_getWitnessTable();
    v15 = swift_getWitnessTable();
    MEMORY[0x1B8C94DE0](v13, WitnessTable, v15);
    if (*(v0 + 244) != 1)
    {
      break;
    }

LABEL_2:
    v2 = *(v0 + 160);
  }

  v16 = *(v0 + 240);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 136);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = swift_task_alloc();
  v24 = *(v0 + 56);
  *(v23 + 16) = v19;
  *(v23 + 24) = v22;
  *(v23 + 32) = v17;
  *(v23 + 40) = vextq_s8(v24, v24, 8uLL);
  sub_1B649244C(sub_1B6491ACC, v18, v21, v20);
  v25 = *(v0 + 176);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);

  sub_1B64923AC(v16, v25);
  v28 = v26 + *(v27 + 52);
  v29 = *(v28 + 8);
  if (!*(v29 + 2))
  {
    *v28 = 1;
    goto LABEL_12;
  }

  v30 = *(v28 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v31 = *(v29 + 2);
    if (!v31)
    {
      goto LABEL_15;
    }

LABEL_10:
    *(v29 + 2) = v31 - 1;
    *(v28 + 8) = v29;
LABEL_12:
    v32 = *(v0 + 128);
    v33 = *(v0 + 80);
    v34 = *(v0 + 88);
    (*(*(v0 + 120) + 32))(v32, *(v0 + 136), *(v0 + 112));
    v35 = (*(v34 + 48))(v32, 1, v33);
    v36 = *(v0 + 128);
    if (v35 == 1)
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      goto LABEL_2;
    }

    v69 = *(v0 + 96);
    v70 = *(v0 + 80);
    v71 = *(v0 + 40);
    v72 = *(*(v0 + 88) + 32);
    v72(v69, *(v0 + 128), v70);
    v72(v71, v69, v70);
    v65 = 0;
LABEL_27:
    v73 = *(v0 + 144);
    v74 = *(v0 + 152);
    v76 = *(v0 + 128);
    v75 = *(v0 + 136);
    v78 = *(v0 + 96);
    v77 = *(v0 + 104);
    (*(*(v0 + 88) + 56))(*(v0 + 40), v65, 1, *(v0 + 80));

    v79 = *(v0 + 8);

    return v79();
  }

  v29 = sub_1B6490F28(v29);
  v31 = *(v29 + 2);
  if (v31)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v37 = *(v0 + 56);
  v38 = *(*(v0 + 48) + 52);
  *(v0 + 252) = v38;
  if (*(v37 + v38) == 1)
  {
    *(v37 + v38) = 0;
    v39 = *(v0 + 72);
    v40 = *(v0 + 56) + *(v0 + 252);
    v41 = *(*(v0 + 64) + 16);
    v42 = v41();
    v43 = *(v40 + 8);
    *(v0 + 16) = *v40;
    *(v0 + 24) = v43;
    v44 = swift_task_alloc();
    *(v44 + 16) = v0 + 16;
    v45 = sub_1B648FB90(sub_1B6491AE4, v44, v42);
    *(v0 + 246) = v45 & 1;

    if (v45)
    {
      goto LABEL_19;
    }

    v47 = *(v0 + 160);
    v46 = *(v0 + 168);
    v48 = *(v0 + 64);
    v49 = *(v0 + 72);
    v50 = *(v0 + 56);
    v51 = (v41)(v49, v48);
    v52 = swift_task_alloc();
    v52[2] = v47;
    v52[3] = v49;
    v52[4] = v46;
    v52[5] = v48;
    v52[6] = v50;
    LOBYTE(v49) = sub_1B648FB90(sub_1B64918F8, v52, v51);

    if (v49)
    {
LABEL_19:
      v53 = *(v0 + 168);
      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v56 = *(v0 + 160);
      v58 = *(v0 + 72);
      v57 = *(v0 + 80);
      v59 = swift_task_alloc();
      v60 = *(v0 + 56);
      *(v59 + 16) = v56;
      *(v59 + 24) = v58;
      *(v59 + 32) = v53;
      *(v59 + 40) = vextq_s8(v60, v60, 8uLL);
      sub_1B649244C(sub_1B64919BC, v54, v57, v55);

      v61 = swift_task_alloc();
      *(v0 + 208) = v61;
      *v61 = v0;
      v61[1] = sub_1B648E8A8;
      v62 = *(v0 + 176);
      v63 = *(v0 + 56);

      return sub_1B6491DE8(v62);
    }

    else
    {
      v80 = swift_task_alloc();
      *(v0 + 224) = v80;
      *v80 = v0;
      v80[1] = sub_1B648F1E0;
      v81 = *(v0 + 176);
      v82 = *(v0 + 56);

      return sub_1B6492A4C(2u, v81);
    }
  }

  else
  {
    v66 = swift_task_alloc();
    *(v0 + 184) = v66;
    *v66 = v0;
    v66[1] = sub_1B648E364;
    v67 = *(v0 + 176);
    v68 = *(v0 + 56);

    return sub_1B6492788(v67);
  }
}

uint64_t sub_1B648E364(char a1, uint64_t a2)
{
  v4 = *(*v3 + 184);
  v5 = *v3;
  *(v5 + 245) = a1;
  *(v5 + 192) = a2;
  *(v5 + 200) = v2;

  if (v2)
  {
    v7 = *(v5 + 144);
    v6 = *(v5 + 152);
    v9 = *(v5 + 128);
    v8 = *(v5 + 136);
    v10 = *(v5 + 96);
    v11 = *(v5 + 104);

    v12 = *(v5 + 8);

    return v12();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648E4EC, 0, 0);
  }
}

uint64_t sub_1B648E4EC()
{
  v1 = *(*(v0 + 56) + *(v0 + 252) + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B6490D20(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1B6490D20((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 56) + *(v0 + 252);
  *(v1 + 2) = v3 + 1;
  *&v1[8 * v3 + 32] = v4;
  *(v5 + 8) = v1;
  v6 = *(v0 + 200);
  v7 = *(v0 + 245);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56) + *(v0 + 252);
  v10 = *(*(v0 + 64) + 16);
  v11 = v10();
  v12 = *(v9 + 8);
  *(v0 + 16) = *v9;
  *(v0 + 24) = v12;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 16;
  v14 = sub_1B648FB90(sub_1B6491AE4, v13, v11);
  *(v0 + 246) = v14 & 1;

  if (v14)
  {
    goto LABEL_7;
  }

  v44 = v7;
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v19 = *(v0 + 56);
  v20 = (v10)(v17, v18);
  v21 = swift_task_alloc();
  v21[2] = v16;
  v21[3] = v17;
  v21[4] = v15;
  v21[5] = v18;
  v21[6] = v19;
  LOBYTE(v17) = sub_1B648FB90(sub_1B64918F8, v21, v20);

  if (v17)
  {
LABEL_7:
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 152);
    v25 = *(v0 + 160);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = swift_task_alloc();
    v29 = *(v0 + 56);
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = vextq_s8(v29, v29, 8uLL);
    sub_1B649244C(sub_1B64919BC, v23, v26, v24);

    if (v6)
    {
      v31 = *(v0 + 144);
      v30 = *(v0 + 152);
      v33 = *(v0 + 128);
      v32 = *(v0 + 136);
      v35 = *(v0 + 96);
      v34 = *(v0 + 104);

      v36 = *(v0 + 8);

      return v36();
    }

    else
    {
      v38 = swift_task_alloc();
      *(v0 + 208) = v38;
      *v38 = v0;
      v38[1] = sub_1B648E8A8;
      v39 = *(v0 + 176);
      v40 = *(v0 + 56);

      return sub_1B6491DE8(v39);
    }
  }

  else
  {
    v41 = swift_task_alloc();
    *(v0 + 224) = v41;
    *v41 = v0;
    v41[1] = sub_1B648F1E0;
    v42 = *(v0 + 176);
    v43 = *(v0 + 56);

    return sub_1B6492A4C(v44, v42);
  }
}

uint64_t sub_1B648E8A8(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_1B648FAD4;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_1B648E9D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B648E9D0()
{
  *(v0 + 248) = *(v0 + 256);
  v1 = v0 + 248;
  v2 = *(v0 + 246);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 56);
  v6 = *(*(v0 + 48) + 60);
  type metadata accessor for FCPBStreamAsync.Mark();
  sub_1B67D988C();
  sub_1B67D985C();
  if (v2)
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = (v7 + *(v0 + 252));
    sub_1B64923B8(*(v0 + 176));
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = v7 + *(v8 + 56);
    v13 = *(v12 + 8);

    *v12 = v10;
    *(v12 + 8) = v11;
  }

  v14 = *(v0 + 144);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v108 = (v0 + 144);
  (*(*(v0 + 120) + 32))(v14, *(v0 + 152), *(v0 + 112));
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
LABEL_21:
    v53 = 104;
LABEL_22:
    v54 = *(v0 + v53);
    v55 = *(v0 + 80);
    v56 = *(v0 + 40);
    v57 = *(*(v0 + 88) + 32);
    v57(v54, *v108, v55);
    v57(v56, v54, v55);
    v104 = 0;
LABEL_23:
    v58 = *(v0 + 144);
    v59 = *(v0 + 152);
    v61 = *(v0 + 128);
    v60 = *(v0 + 136);
    v63 = *(v0 + 96);
    v62 = *(v0 + 104);
    (*(*(v0 + 88) + 56))(*(v0 + 40), v104, 1, *(v0 + 80));

    v64 = *(v0 + 8);
    goto LABEL_24;
  }

  (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
  v17 = *(v0 + 216);
  v18 = *(v0 + 56);
  if (sub_1B6491DD0(*(v0 + 176)))
  {
    v108 = (v0 + 128);
    while (1)
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 168);
      v22 = *(v0 + 56);
      v23 = *(*(v0 + 48) + 60);
      type metadata accessor for FCPBStreamAsync.Mark();
      v24 = sub_1B67D988C();
      WitnessTable = swift_getWitnessTable();
      v26 = swift_getWitnessTable();
      MEMORY[0x1B8C94DE0](v24, WitnessTable, v26);
      if ((*(v0 + 244) & 1) == 0)
      {
        v27 = *(v0 + 240);
        v28 = *(v0 + 168);
        v29 = *(v0 + 176);
        v30 = v17;
        v31 = *(v0 + 160);
        v32 = *(v0 + 136);
        v33 = *(v0 + 72);
        v34 = *(v0 + 80);
        v35 = swift_task_alloc();
        v36 = *(v0 + 56);
        *(v35 + 16) = v31;
        *(v35 + 24) = v33;
        *(v35 + 32) = v28;
        *(v35 + 40) = vextq_s8(v36, v36, 8uLL);
        sub_1B649244C(sub_1B6491ACC, v29, v34, v32);
        if (v30)
        {

          goto LABEL_40;
        }

        v37 = *(v0 + 176);
        v38 = *(v0 + 48);
        v39 = *(v0 + 56);

        sub_1B64923AC(v27, v37);
        v40 = v39 + *(v38 + 52);
        v41 = *(v40 + 8);
        if (*(v41 + 2))
        {
          v42 = *(v40 + 8);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v43 = *(v41 + 2);
            if (!v43)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v41 = sub_1B6490F28(v41);
            v43 = *(v41 + 2);
            if (!v43)
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          *(v41 + 2) = v43 - 1;
          *(v40 + 8) = v41;
        }

        else
        {
          *v40 = 1;
        }

        v44 = *(v0 + 128);
        v46 = *(v0 + 80);
        v45 = *(v0 + 88);
        (*(*(v0 + 120) + 32))(v44, *(v0 + 136), *(v0 + 112));
        if ((*(v45 + 48))(v44, 1, v46) != 1)
        {
          v53 = 96;
          goto LABEL_22;
        }

        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
        v17 = 0;
      }

      v47 = *(v0 + 160);
      v48 = *(v0 + 168);
      v49 = *(v0 + 56);
      v50 = type metadata accessor for FCPBStreamAsync();
      *(v0 + 176) = v50;
      if (sub_1B6491DD0(v50))
      {
        v51 = *(v0 + 160);
        v52 = *(v0 + 168);
        *(v0 + 32) = *(*(v0 + 56) + *(*(v0 + 48) + 60));
        type metadata accessor for FCPBStreamAsync.Mark();
        sub_1B67D988C();
        swift_getWitnessTable();
        if (sub_1B67D9B6C())
        {
          v104 = 1;
          goto LABEL_23;
        }
      }

      v19 = *(v0 + 56);
      if (!sub_1B6491DD0(v50))
      {
        v66 = *(*(v0 + 48) + 52);
        *(v0 + 252) = v66;
        v1 = v0 + 248;
        goto LABEL_29;
      }
    }
  }

  v66 = *(v0 + 252);
LABEL_29:
  v67 = *(v0 + 56);
  if (*(v67 + v66) == 1)
  {
    v68 = v1 - 232;
    *(v67 + v66) = 0;
    v69 = *(v0 + 72);
    v70 = *(v0 + 56) + *(v0 + 252);
    v71 = *(*(v0 + 64) + 16);
    v72 = v71();
    v73 = *(v70 + 8);
    *(v0 + 16) = *v70;
    *(v0 + 24) = v73;
    v74 = swift_task_alloc();
    *(v74 + 16) = v68;
    v75 = v17;
    v76 = sub_1B648FB90(sub_1B6491AE4, v74, v72);
    *(v0 + 246) = v76 & 1;

    if (v76)
    {
      goto LABEL_32;
    }

    v78 = *(v0 + 160);
    v77 = *(v0 + 168);
    v79 = *(v0 + 64);
    v80 = *(v0 + 72);
    v81 = *(v0 + 56);
    v82 = (v71)(v80, v79);
    v83 = swift_task_alloc();
    v83[2] = v78;
    v83[3] = v80;
    v83[4] = v77;
    v83[5] = v79;
    v83[6] = v81;
    LOBYTE(v80) = sub_1B648FB90(sub_1B64918F8, v83, v82);

    if (v80)
    {
LABEL_32:
      v84 = *(v0 + 168);
      v85 = *(v0 + 176);
      v86 = *(v0 + 152);
      v87 = *(v0 + 160);
      v89 = *(v0 + 72);
      v88 = *(v0 + 80);
      v90 = swift_task_alloc();
      v91 = *(v0 + 56);
      *(v90 + 16) = v87;
      *(v90 + 24) = v89;
      *(v90 + 32) = v84;
      *(v90 + 40) = vextq_s8(v91, v91, 8uLL);
      sub_1B649244C(sub_1B64919BC, v85, v88, v86);

      if (!v75)
      {
        v92 = swift_task_alloc();
        *(v0 + 208) = v92;
        *v92 = v0;
        v92[1] = sub_1B648E8A8;
        v93 = *(v0 + 176);
        v94 = *(v0 + 56);

        return sub_1B6491DE8(v93);
      }

LABEL_40:
      v99 = *(v0 + 144);
      v98 = *(v0 + 152);
      v101 = *(v0 + 128);
      v100 = *(v0 + 136);
      v103 = *(v0 + 96);
      v102 = *(v0 + 104);

      v64 = *(v0 + 8);
LABEL_24:

      return v64();
    }

    v105 = swift_task_alloc();
    *(v0 + 224) = v105;
    *v105 = v0;
    v105[1] = sub_1B648F1E0;
    v106 = *(v0 + 176);
    v107 = *(v0 + 56);

    return sub_1B6492A4C(2u, v106);
  }

  else
  {
    v95 = swift_task_alloc();
    *(v0 + 184) = v95;
    *v95 = v0;
    v95[1] = sub_1B648E364;
    v96 = *(v0 + 176);
    v97 = *(v0 + 56);

    return sub_1B6492788(v96);
  }
}

uint64_t sub_1B648F1E0()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    v5 = v3[18];
    v4 = v3[19];
    v7 = v3[16];
    v6 = v3[17];
    v8 = v3[12];
    v9 = v3[13];

    v10 = v3[1];

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648F364, 0, 0);
  }
}

uint64_t sub_1B648F364()
{
  v1 = *(v0 + 56) + *(v0 + 252);
  sub_1B6492410(*(v0 + 176));
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v5 = *(v2 + 16);
      if (v5)
      {
LABEL_4:
        v6 = *(v0 + 56) + *(v0 + 252);
        *(v2 + 16) = v5 - 1;
        *(v6 + 8) = v2;
        goto LABEL_6;
      }
    }

    else
    {
      result = sub_1B6490F28(v2);
      v2 = result;
      v5 = *(result + 16);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

  *(*(v0 + 56) + *(v0 + 252)) = 1;
LABEL_6:
  v7 = *(v0 + 232);
  v8 = *(v0 + 56);
  if (sub_1B6491DD0(*(v0 + 176)))
  {
    while (1)
    {
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      v12 = *(v0 + 56);
      v13 = *(*(v0 + 48) + 60);
      type metadata accessor for FCPBStreamAsync.Mark();
      v14 = sub_1B67D988C();
      WitnessTable = swift_getWitnessTable();
      v16 = swift_getWitnessTable();
      MEMORY[0x1B8C94DE0](v14, WitnessTable, v16);
      if ((*(v0 + 244) & 1) == 0)
      {
        v17 = *(v0 + 240);
        v18 = *(v0 + 168);
        v19 = *(v0 + 176);
        v20 = *(v0 + 160);
        v21 = *(v0 + 136);
        v23 = *(v0 + 72);
        v22 = *(v0 + 80);
        v24 = swift_task_alloc();
        v25 = *(v0 + 56);
        *(v24 + 16) = v20;
        *(v24 + 24) = v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = vextq_s8(v25, v25, 8uLL);
        sub_1B649244C(sub_1B6491ACC, v19, v22, v21);
        if (v7)
        {

          goto LABEL_36;
        }

        v26 = *(v0 + 176);
        v28 = *(v0 + 48);
        v27 = *(v0 + 56);

        sub_1B64923AC(v17, v26);
        v7 = v27 + *(v28 + 52);
        v29 = *(v7 + 8);
        if (*(v29 + 2))
        {
          v30 = *(v7 + 8);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v31 = *(v29 + 2);
            if (!v31)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v29 = sub_1B6490F28(v29);
            v31 = *(v29 + 2);
            if (!v31)
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          *(v29 + 2) = v31 - 1;
          *(v7 + 8) = v29;
        }

        else
        {
          *v7 = 1;
        }

        v32 = *(v0 + 128);
        v33 = *(v0 + 80);
        v34 = *(v0 + 88);
        (*(*(v0 + 120) + 32))(v32, *(v0 + 136), *(v0 + 112));
        v35 = (*(v34 + 48))(v32, 1, v33);
        v36 = *(v0 + 128);
        if (v35 != 1)
        {
          v82 = *(v0 + 96);
          v83 = *(v0 + 80);
          v84 = *(v0 + 40);
          v85 = *(*(v0 + 88) + 32);
          v85(v82, *(v0 + 128), v83);
          v85(v84, v82, v83);
          v81 = 0;
LABEL_38:
          v86 = *(v0 + 144);
          v87 = *(v0 + 152);
          v89 = *(v0 + 128);
          v88 = *(v0 + 136);
          v91 = *(v0 + 96);
          v90 = *(v0 + 104);
          (*(*(v0 + 88) + 56))(*(v0 + 40), v81, 1, *(v0 + 80));

          v80 = *(v0 + 8);
LABEL_39:

          return v80();
        }

        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
        v7 = 0;
      }

      v37 = *(v0 + 160);
      v38 = *(v0 + 168);
      v39 = *(v0 + 56);
      v40 = type metadata accessor for FCPBStreamAsync();
      *(v0 + 176) = v40;
      if (sub_1B6491DD0(v40))
      {
        v41 = *(v0 + 160);
        v42 = *(v0 + 168);
        *(v0 + 32) = *(*(v0 + 56) + *(*(v0 + 48) + 60));
        type metadata accessor for FCPBStreamAsync.Mark();
        sub_1B67D988C();
        swift_getWitnessTable();
        if (sub_1B67D9B6C())
        {
          v81 = 1;
          goto LABEL_38;
        }
      }

      v9 = *(v0 + 56);
      if (!sub_1B6491DD0(v40))
      {
        v43 = *(*(v0 + 48) + 52);
        *(v0 + 252) = v43;
        goto LABEL_25;
      }
    }
  }

  v43 = *(v0 + 252);
LABEL_25:
  v44 = *(v0 + 56);
  if (*(v44 + v43) == 1)
  {
    *(v44 + v43) = 0;
    v45 = *(v0 + 72);
    v46 = *(v0 + 56) + *(v0 + 252);
    v47 = *(*(v0 + 64) + 16);
    v48 = v47();
    v49 = *(v46 + 8);
    *(v0 + 16) = *v46;
    *(v0 + 24) = v49;
    v50 = swift_task_alloc();
    *(v50 + 16) = v0 + 16;
    v51 = v7;
    v52 = sub_1B648FB90(sub_1B6491AE4, v50, v48);
    *(v0 + 246) = v52 & 1;

    if (v52)
    {
      goto LABEL_28;
    }

    v54 = *(v0 + 160);
    v53 = *(v0 + 168);
    v55 = *(v0 + 64);
    v56 = *(v0 + 72);
    v57 = *(v0 + 56);
    v58 = (v47)(v56, v55);
    v59 = swift_task_alloc();
    v59[2] = v54;
    v59[3] = v56;
    v59[4] = v53;
    v59[5] = v55;
    v59[6] = v57;
    LOBYTE(v56) = sub_1B648FB90(sub_1B64918F8, v59, v58);

    if (v56)
    {
LABEL_28:
      v60 = *(v0 + 168);
      v61 = *(v0 + 176);
      v62 = *(v0 + 152);
      v63 = *(v0 + 160);
      v65 = *(v0 + 72);
      v64 = *(v0 + 80);
      v66 = swift_task_alloc();
      v67 = *(v0 + 56);
      *(v66 + 16) = v63;
      *(v66 + 24) = v65;
      *(v66 + 32) = v60;
      *(v66 + 40) = vextq_s8(v67, v67, 8uLL);
      sub_1B649244C(sub_1B64919BC, v61, v64, v62);

      if (v51)
      {
LABEL_36:
        v75 = *(v0 + 144);
        v74 = *(v0 + 152);
        v77 = *(v0 + 128);
        v76 = *(v0 + 136);
        v79 = *(v0 + 96);
        v78 = *(v0 + 104);

        v80 = *(v0 + 8);
        goto LABEL_39;
      }

      v68 = swift_task_alloc();
      *(v0 + 208) = v68;
      *v68 = v0;
      v68[1] = sub_1B648E8A8;
      v69 = *(v0 + 176);
      v70 = *(v0 + 56);

      return sub_1B6491DE8(v69);
    }

    else
    {
      v92 = swift_task_alloc();
      *(v0 + 224) = v92;
      *v92 = v0;
      v92[1] = sub_1B648F1E0;
      v93 = *(v0 + 176);
      v94 = *(v0 + 56);

      return sub_1B6492A4C(2u, v93);
    }
  }

  else
  {
    v71 = swift_task_alloc();
    *(v0 + 184) = v71;
    *v71 = v0;
    v71[1] = sub_1B648E364;
    v72 = *(v0 + 176);
    v73 = *(v0 + 56);

    return sub_1B6492788(v72);
  }
}

uint64_t sub_1B648FAD4()
{
  (*(v0[15] + 8))(v0[19], v0[14]);
  v1 = v0[27];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B648FB90(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 8);
      v13 = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B648FC44()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
LABEL_4:
      v5 = v4 - 1;
      result = *(v1 + 8 * v5 + 32);
      *(v1 + 16) = v5;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1B6491744(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B648FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B648FCB4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1B648FD48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return sub_1B648D7CC(a1, a2);
}

uint64_t sub_1B648FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1B648FEC4;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B648FEC4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

double sub_1B648FFD4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = MEMORY[0x1E69E7CC0];
  *(a3 + 64) = 0;
  *(a3 + 72) = v4;
  *(a3 + 80) = v4;
  sub_1B649492C(a1, a2, v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_1B6490030(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6490054, 0, 0);
}

uint64_t sub_1B6490054()
{
  v1 = *(v0 + 40);
  sub_1B64901A8(*(v0 + 32), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1B64901A8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v77 = a2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v72 - v13;
  v93 = v14;
  v83 = sub_1B67D9DFC();
  v15 = *(*(v83 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v83);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v72 - v22;
  v85 = v6;
  v86 = v6 + 16;
  v76 = v9;
  v80 = (v9 + 48);
  v81 = (v23 + 32);
  v82 = (v23 + 8);
  v84 = v7;
  while (2)
  {
    while (2)
    {
      v24 = *(v5 + 40);
      v89 = *v5;
      v25 = *(v5 + 24);
      v90 = *(v5 + 8);
      v91 = v25;
      v92 = v24;
      sub_1B646B894(v89, v90);
      v26 = sub_1B64949A4();
      sub_1B645745C(v89, v90);
      if (v26 && !*(*(v5 + 80) + 16))
      {
        v68 = 1;
        v70 = v76;
        v69 = v77;
        v71 = v93;
LABEL_46:
        (*(v70 + 56))(v69, v68, 1, v71);
        return;
      }

      while (1)
      {
        v27 = *(v5 + 40);
        v89 = *v5;
        v28 = *(v5 + 24);
        v90 = *(v5 + 8);
        v91 = v28;
        v92 = v27;
        sub_1B646B894(v89, v90);
        v29 = sub_1B64949A4();
        sub_1B645745C(v89, v90);
        if (v29)
        {
          break;
        }

        if (*(v5 + 48) == 1)
        {
          *(v5 + 48) = 0;
          v87 = 2;
        }

        else
        {
          v30 = sub_1B6494DFC();
          if (v4)
          {
            return;
          }

          v32 = v31;
          v87 = v30;
          v4 = 0;
          v33 = *(v5 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1B6490D20(0, *(v33 + 2) + 1, 1, v33);
          }

          v35 = *(v33 + 2);
          v34 = *(v33 + 3);
          if (v35 >= v34 >> 1)
          {
            v33 = sub_1B6490D20((v34 > 1), v35 + 1, 1, v33);
          }

          *(v33 + 2) = v35 + 1;
          *&v33[8 * v35 + 32] = v32;
          *(v5 + 56) = v33;
        }

        v7 = v84;
        v6 = v85;
        v36 = *(v85 + 16);
        v37 = v36(v84, v85);
        v38 = *(v5 + 56);
        LOBYTE(v89) = *(v5 + 48);
        *&v90 = v38;
        MEMORY[0x1EEE9AC00](v37);
        *(&v72 - 2) = &v89;
        v39 = sub_1B648FB90(sub_1B6491758, (&v72 - 4), v37);

        if (v39 & 1) != 0 || (v41 = v36(v7, v6), MEMORY[0x1EEE9AC00](v41), *(&v72 - 4) = v7, *(&v72 - 3) = v6, *(&v72 - 2) = v5, v42 = sub_1B648FB90(sub_1B6491774, (&v72 - 6), v41), v40 = , (v42))
        {
          MEMORY[0x1EEE9AC00](v40);
          *(&v72 - 4) = v7;
          *(&v72 - 3) = v6;
          *(&v72 - 2) = v5;
          sub_1B6494B78(sub_1B64917EC, v93, v88);
          if (v4)
          {
            return;
          }

          sub_1B64949C8();
          v44 = v43;
          v45 = *(v5 + 80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1B6490E24(0, *(v45 + 2) + 1, 1, v45);
          }

          v47 = *(v45 + 2);
          v46 = *(v45 + 3);
          if (v47 >= v46 >> 1)
          {
            v45 = sub_1B6490E24((v46 > 1), v47 + 1, 1, v45);
          }

          *(v45 + 2) = v47 + 1;
          *&v45[8 * v47 + 32] = v44;
          *(v5 + 80) = v45;
          if (v39)
          {
            sub_1B6494B60();
            v48 = *(v5 + 48);
            v49 = *(v5 + 56);
            v50 = *(v5 + 72);

            *(v5 + 64) = v48;
            *(v5 + 72) = v49;
          }

          v51 = v79;
          v52 = v83;
          (*v81)(v79, v88, v83);
          if ((*v80)(v51, 1, v93) != 1)
          {
            v64 = v75;
            v70 = v76;
            v65 = *(v76 + 32);
            v66 = v75;
            v67 = v51;
            goto LABEL_45;
          }

          (*v82)(v51, v52);
        }

        else
        {
          sub_1B6494E8C(v87);
          if (v4)
          {
            return;
          }

          v4 = 0;
          sub_1B6494B6C();
          v53 = *(v5 + 56);
          if (*(v53 + 2))
          {
            v54 = *(v5 + 56);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v55 = *(v53 + 2);
              if (!v55)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v53 = sub_1B6490F28(v53);
              v55 = *(v53 + 2);
              if (!v55)
              {
LABEL_50:
                __break(1u);
                return;
              }
            }

            *(v53 + 2) = v55 - 1;
            *(v5 + 56) = v53;
          }

          else
          {
            *(v5 + 48) = 1;
          }
        }
      }

      v56 = sub_1B648FC44();
      if (!v56)
      {
        continue;
      }

      break;
    }

    v57 = v56;
    MEMORY[0x1EEE9AC00](v56);
    *(&v72 - 4) = v7;
    *(&v72 - 3) = v6;
    *(&v72 - 2) = v5;
    sub_1B6494B78(sub_1B6491AB4, v93, v78);
    if (!v4)
    {
      v4 = 0;
      sub_1B6494B58(v57);
      v58 = *(v5 + 56);
      if (!*(v58 + 2))
      {
        *(v5 + 48) = 1;
        v61 = v74;
LABEL_40:
        v63 = v83;
        (*v81)(v61, v78, v83);
        if ((*v80)(v61, 1, v93) == 1)
        {
          (*v82)(v61, v63);
          continue;
        }

        v70 = v76;
        v67 = v61;
        v65 = *(v76 + 32);
        v64 = v73;
        v66 = v73;
LABEL_45:
        v71 = v93;
        v65(v66, v67, v93);
        v69 = v77;
        v65(v77, v64, v71);
        v68 = 0;
        goto LABEL_46;
      }

      v59 = *(v5 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v74;
      if (isUniquelyReferenced_nonNull_native)
      {
        v62 = *(v58 + 2);
        if (v62)
        {
LABEL_38:
          *(v58 + 2) = v62 - 1;
          *(v5 + 56) = v58;
          goto LABEL_40;
        }
      }

      else
      {
        v58 = sub_1B6490F28(v58);
        v62 = *(v58 + 2);
        if (v62)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      (*v82)(v88, v83);
    }

    break;
  }
}

uint64_t sub_1B6490A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v5 = *(v2 + 64);
  v11 = *(v2 + 48);
  v4 = v11;
  v12 = v5;
  v13 = *(v2 + 80);
  v7 = *(v2 + 16);
  v10[0] = *v2;
  v6 = v10[0];
  v10[1] = v7;
  v10[2] = v3;
  *(a2 + 80) = v13;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *a2 = v6;
  *(a2 + 16) = v7;
  return (*(*(a1 - 8) + 16))(v9, v10, a1);
}

uint64_t sub_1B6490A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6490A0C(a1, a2);
  v4 = *(v2 + 48);
  v7[2] = *(v2 + 32);
  v7[3] = v4;
  v7[4] = *(v2 + 64);
  v8 = *(v2 + 80);
  v5 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v5;
  return (*(*(a1 - 8) + 8))(v7, a1);
}

uint64_t sub_1B6490B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return sub_1B6490030(a1, a2);
}

uint64_t sub_1B6490BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1B6491AB0;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B6490C94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6490CF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B6490C94(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6490D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

char *sub_1B6490D20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC00, &unk_1B6813970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B6490E24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABF8, "ڕ");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B6490F88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  result = type metadata accessor for FCPBStreamAsync();
  if (v4 <= 0x3F)
  {
    type metadata accessor for FCPBStreamAsync.Mark();
    result = sub_1B67D988C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6491048(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  v15 = *(*(AssociatedTypeWitness - 8) + 64) + 3;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v16 = ((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  else
  {
    v26 = (a1 + v14) & ~v12;
    if (v11 == v13)
    {
      v27 = *(v10 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *((((((v15 + v26) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_1B6491300(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 32);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v13;
  v16 = *(v11 + 64) + 3;
  v17 = ((((((((((((((((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((((((((((v16 + (v15 & ~v13)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v24 = *(v28 + 56);

        v24(a1, a2, v9, v7);
      }

      else
      {
        v25 = (a1 + v15) & ~v13;
        if (v12 == v14)
        {
          v26 = *(v11 + 56);

          v26(v25, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = (a2 - 1);
          }

          *((((((v16 + v25) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) = v27;
        }
      }

      return;
    }
  }

  if (((((((((((((((((v16 + (v15 & ~v13)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((((((((((((((((v16 + (v15 & ~v13)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v14 + a2;
    bzero(a1, ((((((((((((((((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t sub_1B6491604()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B6491680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B64916C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1B6491774(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v1 + 32) + 56);
  v4 = v3[2];
  if (v4 >= v2[2])
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  if (v2[4] != v3[4])
  {
    return 0;
  }

  v5 = v2 + 5;
  v6 = v4 - 1;
  v7 = v3 + 5;
  do
  {
    result = v6 == 0;
    if (!v6)
    {
      break;
    }

    v10 = *v5++;
    v9 = v10;
    v11 = *v7++;
    --v6;
  }

  while (v9 == v11);
  return result;
}

uint64_t sub_1B6491804(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v10 = *(v6 + 24);

  v10(a1, a2, v8, v9, v5, v6);
}

uint64_t sub_1B64918A8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2)
  {
    return sub_1B6490C94(*(a1 + 1), *(v2 + 1)) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B64918F8(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(a1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 32);
  v4 = *(v2 + *(type metadata accessor for FCPBMessageStream() + 52) + 8);
  v5 = v4[2];
  if (v5 >= v3[2])
  {
    return 0;
  }

  if (!v5 || v3 == v4)
  {
    return 1;
  }

  if (v3[4] != v4[4])
  {
    return 0;
  }

  v6 = v3 + 5;
  v7 = v5 - 1;
  v8 = v4 + 5;
  do
  {
    result = v7 == 0;
    if (!v7)
    {
      break;
    }

    v11 = *v6++;
    v10 = v11;
    v12 = *v8++;
    --v7;
  }

  while (v10 == v12);
  return result;
}

uint64_t sub_1B64919D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v7 = (v6 + *(type metadata accessor for FCPBMessageStream() + 56));
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v5 + 24);

  v10(a1, a2, v8, v9);
}

uint64_t sub_1B6491B34()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  return sub_1B67DA41C();
}

uint64_t sub_1B6491BC4()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  return sub_1B67DA41C();
}

uint64_t sub_1B6491C14@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6495054(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B6491C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FCPBStreamAsync();
  *&a3[v10[10]] = 0;
  *&a3[v10[11]] = -1;
  v11 = v10[12];
  *&a3[v11] = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  *&a3[v10[13]] = 0;
  *&a3[v10[14]] = 0;
  v12 = *(v6 + 16);
  v12(a3, a1, a2);
  v12(v9, a1, a2);
  v13 = &a3[v10[9]];
  sub_1B67D9A2C();
  return (*(v6 + 8))(a1, a2);
}

uint64_t sub_1B6491DE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B6491E08, 0, 0);
}

uint64_t sub_1B6491E08()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 44);
  *(v0 + 48) = v2;
  *(v0 + 52) = *(v1 + v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1B6491EB0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1B6492030(v4);
}

uint64_t sub_1B6491EB0(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6491FE4, 0, 0);
  }
}

uint64_t sub_1B6491FE4()
{
  v1 = *(v0 + 40);
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + *(*(v0 + 16) + 40));
    v4 = __CFADD__(v3, v1);
    v5 = v3 + v1;
    if (!v4)
    {
      *(v2 + *(v0 + 48)) = v5;
      return (*(v0 + 8))(*(v0 + 52));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6492030(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = 0;
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_1B64920CC;
  v4 = v2[2];
  v5 = v2[3];

  return sub_1B6494530(v4);
}

uint64_t sub_1B64920CC(__int16 a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6492200, 0, 0);
  }
}

uint64_t sub_1B6492200()
{
  v1 = *(v0 + 56);
  if ((v1 & 0x100) != 0)
  {
    v6 = *(v0 + 32);
    sub_1B6495098();
    swift_allocError();
    v8 = v7;
    v9 = v7 + 1;
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *v8 = v10;
    goto LABEL_12;
  }

  v2 = *(v0 + 32);
  v3 = ((v1 & 0x7F) << v2) | *(v0 + 40);
  if ((v1 & 0x80) == 0)
  {
    v4 = *(v0 + 8);

    return v4(v3);
  }

  if (v2 >= 0x1D)
  {
    sub_1B6495098();
    swift_allocError();
    *v11 = 0;
    v9 = v11 + 1;
LABEL_12:
    *v9 = 1;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 32) = v2 + 7;
  *(v0 + 40) = v3;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_1B64920CC;
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_1B6494530(v14);
}

void sub_1B64923B8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48));
  [v3 setLength_];
  v4 = *(a1 + 52);
  v5 = *(v1 + v4);
  v6 = v3;

  *(v1 + v4) = v3;
}

id sub_1B6492410(uint64_t a1)
{
  result = [*(v1 + *(a1 + 48)) length];
  *(v1 + *(a1 + 56)) = result;
  return result;
}

void sub_1B649244C(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(a2 + 52));
  if (v9)
  {
    v11 = *(v4 + *(a2 + 56));
    v12 = v9;
    [v12 setLength_];
    v13 = objc_autoreleasePoolPush();
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    sub_1B64925BC(v12, v4, a1, a3, &v22, a4);
    if (v5)
    {
      objc_autoreleasePoolPop(v13);

      v16 = *(type metadata accessor for FCPBStreamAsync() + 52);
      v17 = *(v4 + v16);
      *(v4 + v16) = 0;

      return;
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
  }

  v20 = *(type metadata accessor for FCPBStreamAsync() + 52);
  v21 = *(v4 + v20);
  *(v4 + v20) = 0;
}

uint64_t sub_1B64925BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X5>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a3;
  v9 = sub_1B67D862C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 bytes];
  v15 = *(a2 + *(type metadata accessor for FCPBStreamAsync() + 56));
  (*(v10 + 104))(v13, *MEMORY[0x1E6969010], v9);
  v16 = sub_1B6495D98(v14, v15, v13);
  v18 = v17;
  v19 = v25;
  v24();
  if (v19)
  {
    result = sub_1B645745C(v16, v18);
    *v23 = v19;
  }

  else
  {
    (*(*(v22 - 8) + 56))(a6, 0, 1);
    return sub_1B645745C(v16, v18);
  }

  return result;
}

uint64_t sub_1B6492788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B649281C;

  return sub_1B6492030(a1);
}

uint64_t sub_1B649281C(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6492950, 0, 0);
  }
}

uint64_t sub_1B6492950()
{
  v1 = *(v0 + 24);
  v2 = v1 & 7;
  if (v1 & 7) <= 5 && ((0x27u >> v2))
  {
    v3 = *(v0 + 8);

    return v3(0x30000020100uLL >> (8 * v2), v1 >> 3);
  }

  else
  {
    sub_1B6495098();
    swift_allocError();
    *v5 = v2;
    v5[1] = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B6492A4C(unsigned __int8 a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = swift_task_alloc();
      v3[12] = v5;
      *v5 = v3;
      v6 = sub_1B6492F88;
      goto LABEL_6;
    }

    v3[4] = 4;
    v8 = (v3 + 4);
    v9 = swift_task_alloc();
    v3[8] = v9;
    v10 = sub_1B648D15C();
    *v9 = v3;
    v11 = sub_1B6492D20;
  }

  else
  {
    if (!a1)
    {
      v5 = swift_task_alloc();
      v3[7] = v5;
      *v5 = v3;
      v6 = sub_1B6492C2C;
LABEL_6:
      v5[1] = v6;

      return sub_1B6492030(a2);
    }

    v3[3] = 8;
    v8 = (v3 + 3);
    v9 = swift_task_alloc();
    v3[10] = v9;
    v10 = sub_1B648D15C();
    *v9 = v3;
    v11 = sub_1B6492E54;
  }

  v9[1] = v11;
  v12 = MEMORY[0x1E69E6530];

  return sub_1B6493290(v8, a2, v12, v10);
}

uint64_t sub_1B6492C2C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B6492D20()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493248, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B6492E54()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493260, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B6492F88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 16) = a1;
    v9 = (v4 + 16);
    v10 = swift_task_alloc();
    v9[11] = v10;
    v11 = sub_1B64950EC();
    *v10 = v6;
    v10[1] = sub_1B6493114;
    v12 = v9[3];
    v13 = v9[4];
    v14 = MEMORY[0x1E69E76D8];

    return sub_1B6493290(v9, v12, v14, v11);
  }
}

uint64_t sub_1B6493114()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493278, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B6493290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v7 = *(a4 + 8);
  v5[8] = v7;
  v8 = *(v7 + 32);
  v5[9] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  v12 = swift_getAssociatedTypeWitness();
  v5[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = sub_1B67D9DFC();
  v5[16] = v14;
  v15 = *(v14 - 8);
  v5[17] = v15;
  v16 = *(v15 + 64) + 15;
  v5[18] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[19] = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 - 8);
  v5[20] = v18;
  v19 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v20 = *(a3 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = *(*(v7 + 24) + 16);
  v22 = swift_getAssociatedTypeWitness();
  v5[28] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = *(v8 + 8);
  v24 = sub_1B67D9B9C();
  v5[31] = v24;
  v25 = *(v24 - 8);
  v5[32] = v25;
  v26 = *(v25 + 64) + 15;
  v5[33] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[34] = AssociatedConformanceWitness;
  v5[2] = v8;
  v5[3] = AssociatedConformanceWitness;
  v5[35] = swift_getWitnessTable();
  v28 = sub_1B67DA02C();
  v5[36] = v28;
  v29 = *(v28 - 8);
  v5[37] = v29;
  v30 = *(v29 + 64) + 15;
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64936D8, 0, 0);
}

uint64_t sub_1B64936D8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  swift_getAssociatedConformanceWitness();
  sub_1B67DA32C();
  sub_1B67DA2CC();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v93 = *(v0 + 304);
  v97 = *(v0 + 288);
  v101 = *(v0 + 272);
  v84 = *(v0 + 264);
  v86 = *(v0 + 248);
  v88 = *(v0 + 256);
  v9 = *(v0 + 208);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  v90 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 32);
  v17 = v10[4];
  *(v0 + 312) = v17;
  *(v0 + 320) = (v10 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v11, v9, v15);
  v83 = v17;
  v18 = *(v14 + 48);
  v19 = v10[2];
  *(v0 + 328) = v19;
  *(v0 + 336) = (v10 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v11 + v18, v16, v15);
  v20 = *(v12 + 16);
  *(v0 + 344) = v20;
  *(v0 + 352) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v13, v11, v14);
  v81 = *(v14 + 48);
  v17(v84, v13, v15);
  v21 = v10[1];
  *(v0 + 360) = v21;
  *(v0 + 368) = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v13 + v81, v15);
  v22 = *(v12 + 32);
  *(v0 + 376) = v22;
  *(v0 + 384) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v13, v11, v14);
  v83(v84 + *(v86 + 36), v13 + *(v14 + 48), v15);
  v21(v13, v15);
  (*(v88 + 16))(v93, v84, v86);
  *(v0 + 424) = *(v97 + 36);
  sub_1B67D9BAC();
  v23 = *(v88 + 8);
  *(v0 + 392) = v23;
  *(v0 + 400) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v84, v86);
  v24 = *(v0 + 424);
  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  v27 = *(v0 + 304);
  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 208);
  v32 = *(v0 + 64);
  v31 = *(v0 + 72);
  v33 = *(v0 + 48);
  sub_1B67D9BBC();
  v34 = *(*(v32 + 16) + 8);
  LOBYTE(v24) = sub_1B67D962C();
  v26(v30, v33);
  if (v24)
  {
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);
    v38 = *(v0 + 200);
    v37 = *(v0 + 208);
    v39 = *(v0 + 184);
    v40 = *(v0 + 192);
    v91 = *(v0 + 176);
    v94 = *(v0 + 168);
    v98 = *(v0 + 120);
    v102 = *(v0 + 96);
    v41 = *(v0 + 48);
    v42 = *(v0 + 144);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v39 + 56))(v42, 1, 1, v41);

    v43 = *(v0 + 8);

    return v43();
  }

  v44 = *(v0 + 424);
  v45 = *(v0 + 336);
  v95 = *(v0 + 312);
  v99 = *(v0 + 320);
  v46 = *(v0 + 304);
  v47 = *(v0 + 272);
  v48 = *(v0 + 248);
  v103 = *(v0 + 240);
  v50 = *(v0 + 200);
  v49 = *(v0 + 208);
  v51 = *(v0 + 192);
  v52 = *(v0 + 72);
  v53 = *(v0 + 48);
  (*(v0 + 328))(*(v0 + 144), v46 + v44, v53);
  v95(v49, v46 + v44, v53);
  sub_1B67D9BAC();
  sub_1B67D9BBC();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v80 = *(v0 + 392);
  v82 = *(v0 + 400);
  v89 = *(v0 + 424);
  v73 = *(v0 + 376);
  v74 = *(v0 + 384);
  v54 = *(v0 + 368);
  v70 = *(v0 + 352);
  v71 = *(v0 + 360);
  v69 = *(v0 + 344);
  v56 = *(v0 + 312);
  v55 = *(v0 + 320);
  v87 = *(v0 + 304);
  v78 = *(v0 + 280);
  v57 = *(v0 + 264);
  v72 = *(v0 + 248);
  v76 = *(v0 + 208);
  v58 = *(v0 + 192);
  v60 = *(v0 + 168);
  v59 = *(v0 + 176);
  v61 = *(v0 + 152);
  v92 = *(v0 + 144);
  v96 = *(v0 + 184);
  v100 = *(v0 + 136);
  v104 = *(v0 + 128);
  v62 = *(v0 + 104);
  v77 = *(v0 + 112);
  v79 = *(v0 + 96);
  v75 = *(v0 + 80);
  v63 = *(v0 + 72);
  v85 = *(v0 + 88);
  v64 = *(v0 + 48);
  v56(v59, *(v0 + 200), v64);
  v56(v59 + *(v61 + 48), v58, v64);
  v69(v60, v59, v61);
  v65 = *(v61 + 48);
  v56(v57, v60, v64);
  v71(v60 + v65, v64);
  v73(v60, v59, v61);
  v56(v57 + *(v72 + 36), v60 + *(v61 + 48), v64);
  v71(v60, v64);
  sub_1B6495FD0();
  v80(v57, v72);
  swift_getAssociatedConformanceWitness();
  sub_1B67DA32C();
  sub_1B67DA2CC();
  sub_1B67D9E1C();
  (*(v85 + 8))(v79, v75);
  v71(v76, v64);
  (*(v96 + 56))(v92, 0, 1, v64);
  (*(v100 + 8))(v92, v104);
  v66 = swift_task_alloc();
  *(v0 + 408) = v66;
  *v66 = v0;
  v66[1] = sub_1B6493E28;
  v67 = *(v0 + 56);
  v68 = *(v0 + 40);

  return sub_1B6494530(v68);
}

uint64_t sub_1B6493E28()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1B649441C;
  }

  else
  {
    v3 = sub_1B6493F3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6493F3C()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 208);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 48);
  sub_1B67D9BBC();
  v11 = *(*(v9 + 16) + 8);
  LOBYTE(v4) = sub_1B67D962C();
  v3(v7, v10);
  if (v4)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v63 = *(v0 + 176);
    v65 = *(v0 + 168);
    v18 = *(v0 + 144);
    v68 = *(v0 + 120);
    v71 = *(v0 + 96);
    v19 = *(v0 + 48);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v17 + 56))(v18, 1, 1, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 424);
    v23 = *(v0 + 336);
    v66 = *(v0 + 312);
    v69 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v26 = *(v0 + 248);
    v72 = *(v0 + 240);
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 192);
    v30 = *(v0 + 72);
    v31 = *(v0 + 48);
    (*(v0 + 328))(*(v0 + 144), v24 + v22, v31);
    v66(v27, v24 + v22, v31);
    sub_1B67D9BAC();
    sub_1B67D9BBC();
    result = sub_1B67D961C();
    if (result)
    {
      v58 = *(v0 + 392);
      v59 = *(v0 + 400);
      v62 = *(v0 + 424);
      v51 = *(v0 + 376);
      v52 = *(v0 + 384);
      v32 = *(v0 + 368);
      v48 = *(v0 + 352);
      v49 = *(v0 + 360);
      v47 = *(v0 + 344);
      v34 = *(v0 + 312);
      v33 = *(v0 + 320);
      v61 = *(v0 + 304);
      v56 = *(v0 + 280);
      v35 = *(v0 + 264);
      v50 = *(v0 + 248);
      v54 = *(v0 + 208);
      v36 = *(v0 + 192);
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v39 = *(v0 + 152);
      v64 = *(v0 + 144);
      v67 = *(v0 + 184);
      v70 = *(v0 + 136);
      v73 = *(v0 + 128);
      v40 = *(v0 + 104);
      v55 = *(v0 + 112);
      v57 = *(v0 + 96);
      v53 = *(v0 + 80);
      v41 = *(v0 + 72);
      v60 = *(v0 + 88);
      v42 = *(v0 + 48);
      v34(v37, *(v0 + 200), v42);
      v34(v37 + *(v39 + 48), v36, v42);
      v47(v38, v37, v39);
      v43 = *(v39 + 48);
      v34(v35, v38, v42);
      v49(v38 + v43, v42);
      v51(v38, v37, v39);
      v34(v35 + *(v50 + 36), v38 + *(v39 + 48), v42);
      v49(v38, v42);
      sub_1B6495FD0();
      v58(v35, v50);
      swift_getAssociatedConformanceWitness();
      sub_1B67DA32C();
      sub_1B67DA2CC();
      sub_1B67D9E1C();
      (*(v60 + 8))(v57, v53);
      v49(v54, v42);
      (*(v67 + 56))(v64, 0, 1, v42);
      (*(v70 + 8))(v64, v73);
      v44 = swift_task_alloc();
      *(v0 + 408) = v44;
      *v44 = v0;
      v44[1] = sub_1B6493E28;
      v45 = *(v0 + 56);
      v46 = *(v0 + 40);

      return sub_1B6494530(v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B649441C()
{
  v1 = v0[33];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[18];
  v9 = v0[15];
  v13 = v0[12];
  (*(v0[37] + 8))(v0[38], v0[36]);

  v10 = v0[1];
  v11 = v0[52];

  return v10();
}

uint64_t sub_1B6494530(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(a1 + 36);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v2[4] = v9;
  *v9 = v2;
  v9[1] = sub_1B649466C;
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6D8C8](v2 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1B649466C()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B64948A4;
  }

  else
  {
    v3 = sub_1B64947AC;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64947AC()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v2)
  {
    *(v3 + v4[11]) = *(v3 + v4[10]);
  }

  else
  {
    *(v0 + 50) = v1;
    v5 = v4[10];
    v6 = *(v3 + v5);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    *(v3 + v5) = v8;
    v9 = *(v3 + v4[13]);
    if (v9)
    {
      [v9 appendBytes:v0 + 50 length:1];
      v1 = *(v0 + 50);
    }
  }

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10(v1 | (v2 << 8));
}

uint64_t sub_1B64948A4()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x1E69E9840];

  return v1();
}

double sub_1B649492C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v9 = 0u;
  v10 = 0u;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1B646B894(a1, a2);
  sub_1B6494F18(a1, a2, &v8);
  sub_1B645745C(a1, a2);
  v6 = v9;
  *a3 = v8;
  a3[1] = v6;
  result = *&v10;
  a3[2] = v10;
  return result;
}

BOOL sub_1B64949A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      return v1 >= v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B64949C8()
{
  if (!*(v0 + 24))
  {
    goto LABEL_8;
  }

  sub_1B6494A18();
  if (v1)
  {
    return;
  }

  v3 = *(v0 + 16);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 24) = v3 + v2;
}

void sub_1B6494A18()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = *(v0 + 24);
  if (!v2)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v1 >= v2)
  {
    v9 = 2;
  }

  else
  {
    v3 = *v1;
    *(v0 + 16) = v1 + 1;
    if ((v3 & 0x80) == 0)
    {
      return;
    }

    if (v2 <= (v1 + 1))
    {
      goto LABEL_19;
    }

    v4 = v1[1];
    *(v0 + 16) = v1 + 2;
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

    if (v2 <= (v1 + 2))
    {
      goto LABEL_19;
    }

    v5 = v1[2];
    *(v0 + 16) = v1 + 3;
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    if (v2 <= (v1 + 3))
    {
      goto LABEL_19;
    }

    v6 = v1[3];
    *(v0 + 16) = v1 + 4;
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    if (v2 <= (v1 + 4))
    {
      goto LABEL_19;
    }

    v7 = v1[4];
    *(v0 + 16) = v1 + 5;
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

    if (v2 <= (v1 + 5))
    {
LABEL_19:
      v9 = 1;
    }

    else
    {
      v8 = v1[5];
      *(v0 + 16) = v1 + 6;
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

      v9 = 0;
    }
  }

  sub_1B6495098();
  swift_allocError();
  *v10 = v9;
  v10[1] = 1;
  swift_willThrow();
}

void sub_1B6494B78(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 32);
  if (v5 && (v6 = *(v3 + 40)) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    sub_1B6494C64(v5, v6, v3, a1, a2, &v10, a3);
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }
}

uint64_t sub_1B6494C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v24 = a6;
  v14 = sub_1B67D862C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v17, *MEMORY[0x1E6969010]);
  v19 = sub_1B6495D98(a1, a2 - a1, v17);
  v21 = v20;
  *(a3 + 32) = 0;
  a4();
  if (v7)
  {
    result = sub_1B645745C(v19, v21);
    *v24 = v7;
  }

  else
  {
    (*(*(a5 - 8) + 56))(a7, 0, 1, a5);
    return sub_1B645745C(v19, v21);
  }

  return result;
}

unint64_t sub_1B6494DFC()
{
  sub_1B6494A18();
  if (!v0)
  {
    v3 = v1 & 7;
    if (v1 & 7u) < 6 && ((0x27u >> v3))
    {
      return 0x30000020100uLL >> (8 * v3);
    }

    else
    {
      sub_1B6495098();
      swift_allocError();
      *v4 = v3;
      v4[1] = 0;
      swift_willThrow();
    }
  }

  return v2;
}

void sub_1B6494E8C(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      sub_1B6494A18();
      return;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v4 + 8;
LABEL_14:
      *(v1 + 16) = v5;
      return;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (a1 != 2)
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v5 = v6 + 4;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_1B6494A18();
  if (!v2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = *(v1 + 16);
      if (v7)
      {
        v5 = v7 + v3;
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1B6494F18(uint64_t result, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      *(a3 + 16) = v7;
      *(a3 + 24) = v7;
      goto LABEL_9;
    }

    v4 = *(result + 16);
    v5 = *(result + 24);
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = result;
    v5 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

LABEL_7:
    result = sub_1B6494FC8(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    goto LABEL_9;
  }

  *(a3 + 16) = v7;
  *(a3 + 24) = &v7[BYTE6(a2)];
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6494FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B67D845C();
  v8 = result;
  if (result)
  {
    result = sub_1B67D847C();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B67D846C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  *(a4 + 16) = v8;
  *(a4 + 24) = v11 + v8;
  return result;
}

uint64_t sub_1B6495054(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return 4;
  }

  else
  {
    return (0x30404020100uLL >> (8 * a1));
  }
}

unint64_t sub_1B6495098()
{
  result = qword_1EB94AC08;
  if (!qword_1EB94AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC08);
  }

  return result;
}

unint64_t sub_1B64950EC()
{
  result = qword_1EB94AC10;
  if (!qword_1EB94AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC10);
  }

  return result;
}

unint64_t sub_1B6495144()
{
  result = qword_1EB94AC18;
  if (!qword_1EB94AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FCPBStreamErrors(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for FCPBStreamErrors(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1B64952C8(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B64952E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1B649532C(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1B64959A8();
      if (v7 <= 0x3F)
      {
        sub_1B64959F4();
        AssociatedTypeWitness = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1B6495424(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 3;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((((((v14 + v25) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1B64956C0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 3;
  v16 = ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((((((v15 + v24) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

unint64_t sub_1B64959A8()
{
  result = qword_1EDB20360;
  if (!qword_1EDB20360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB20360);
  }

  return result;
}

void sub_1B64959F4()
{
  if (!qword_1EDB20358)
  {
    sub_1B64959A8();
    v0 = sub_1B67D9DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB20358);
    }
  }
}

uint64_t sub_1B6495A4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6495AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6495AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FCPBStreamSync.Mark(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for FCPBStreamSync.Mark(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B6495BFC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6495CB4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1B67D863C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1B67D845C();
  if (v3)
  {
    result = sub_1B67D847C();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1B67D846C();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B6495BFC(v3, v7);

  return v8;
}

uint64_t sub_1B6495D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D862C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B67D861C();
  if (a2)
  {
    v11 = sub_1B67D849C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_1B67D844C();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = sub_1B67D848C();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1B6495CB4(v14, a2);
  }

  else
  {
    v17 = sub_1B67D861C();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1B6495FD0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1B67D9B9C() + 36);
  result = sub_1B67D95FC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64960B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B67DA2DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B649613C(uint64_t a1)
{
  v2 = sub_1B6496468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6496178(uint64_t a1)
{
  v2 = sub_1B6496468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64961B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC20, &qword_1B6813BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA46C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1B67DA1BC();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

unint64_t sub_1B6496468()
{
  result = qword_1EB953D80[0];
  if (!qword_1EB953D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB953D80);
  }

  return result;
}

uint64_t sub_1B64964BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC28, &qword_1B6813BE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA47C();
  sub_1B67DA22C();
  return (*(v4 + 8))(v7, v3);
}

void type metadata accessor for FCFeedPersonalizationConfigurationSet()
{
  if (!qword_1EB94AC30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB94AC30);
    }
  }
}

unint64_t sub_1B6496788()
{
  result = qword_1EB953F90[0];
  if (!qword_1EB953F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB953F90);
  }

  return result;
}

unint64_t sub_1B64967E0()
{
  result = qword_1EB9540A0;
  if (!qword_1EB9540A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9540A0);
  }

  return result;
}

unint64_t sub_1B6496838()
{
  result = qword_1EB9540A8[0];
  if (!qword_1EB9540A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9540A8);
  }

  return result;
}

void sub_1B64969A8()
{
  v1 = *(v0 + 48);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v5 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B67D864C();
    sub_1B6457448(v4, v5);
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69B6E30]) initWithData_];

  if (!v3)
  {
    __break(1u);
  }
}

uint64_t sub_1B6496A7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];

  sub_1B67D8B5C();
}

uint64_t sub_1B6496B74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v153 = a1;
  v148 = a2;
  v147 = sub_1B67D877C();
  v145 = *(v147 - 8);
  v2 = v145[8];
  MEMORY[0x1EEE9AC00](v147);
  v133 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v144 = &v133 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v133 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v133 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v133 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v133 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v133 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v43 = *(*(v42 - 8) + 56);
  v43(v41, 1, 1, v42);
  v43(v39, 1, 1, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v152 = sub_1B67D8B3C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v51 = *(*(v50 - 8) + 56);
  v51(v34, 1, 1, v50);
  v51(v32, 1, 1, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v151 = sub_1B67D8B3C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v136 = v58;
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v137 = v60;
  v138 = v59 + 56;
  v134 = v27;
  v60(v27, 1, 1, v58);
  v135 = v25;
  v60(v25, 1, 1, v58);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v150 = sub_1B67D8B3C();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v68 = *(*(v67 - 8) + 56);
  v69 = v139;
  v68(v139, 1, 1, v67);
  v70 = v140;
  v68(v140, 1, 1, v67);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v141 = sub_1B67D8B3C();
  v68(v69, 1, 1, v67);
  v68(v70, 1, 1, v67);
  v77 = *(v71 + 48);
  v78 = *(v71 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v79 = *(v74 + 48);
  v80 = *(v74 + 52);
  swift_allocObject();
  v81 = sub_1B67D8B3C();
  v82 = v136;
  v83 = v137;
  v137(v134, 1, 1, v136);
  v83(v135, 1, 1, v82);
  v84 = *(v61 + 48);
  v85 = *(v61 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v86 = *(v64 + 48);
  v87 = *(v64 + 52);
  swift_allocObject();
  v88 = sub_1B67D8B3C();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v90 = *(*(v89 - 8) + 56);
  v90(v142, 1, 1, v89);
  v90(v143, 1, 1, v89);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  v97 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v98 = [v153 articleID];
  if (v98)
  {
    v99 = v98;
    v100 = sub_1B67D964C();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  v154 = v100;
  v155 = v102;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v103 = [v153 feedID];
  v104 = v147;
  if (v103)
  {
    v105 = v103;
    v106 = sub_1B67D964C();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  v154 = v106;
  v155 = v108;
  sub_1B67D8DDC();

  v143 = sub_1B67D8B4C();
  v109 = [v153 publishDate];
  if (v109)
  {
    v110 = v133;
    v111 = v109;
    sub_1B67D874C();

    v112 = v145;
    v113 = v145[4];
    v114 = v97;
    v115 = v88;
    v116 = v81;
    v117 = v144;
    v113(v144, v110, v104);
    v118 = v112[7];
    v118(v117, 0, 1, v104);
    v119 = v149;
    v120 = v117;
    v81 = v116;
    v88 = v115;
    v97 = v114;
    v113(v149, v120, v104);
  }

  else
  {
    v122 = v144;
    v121 = v145;
    v118 = v145[7];
    v118(v144, 1, 1, v104);
    sub_1B67D876C();
    if ((v121[6])(v122, 1, v104) != 1)
    {
      sub_1B646FA50(v122);
    }

    v119 = v149;
  }

  v118(v119, 0, 1, v104);
  sub_1B67D8DDC();

  v123 = v141;
  sub_1B67D8B4C();
  v154 = 0;
  LOBYTE(v155) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v154 = 0;
  LOBYTE(v155) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v124 = v146;
  sub_1B67D876C();
  v118(v124, 0, 1, v104);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v125 = [v153 data];
  if (v125)
  {
    v126 = v125;
    v127 = sub_1B67D866C();
    v129 = v128;
  }

  else
  {
    v127 = 0;
    v129 = 0xF000000000000000;
  }

  v154 = v127;
  v155 = v129;
  sub_1B67D8DDC();

  v131 = v148;
  v132 = v151;
  *v148 = v152;
  v131[1] = v132;
  v131[2] = v150;
  v131[3] = v123;
  v131[4] = v81;
  v131[5] = v88;
  v131[6] = v97;
  return result;
}

uint64_t FeedItemEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v86 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  v34(v30, 1, 1, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v42 = *(*(v41 - 8) + 56);
  v42(v25, 1, 1, v41);
  v42(v23, 1, 1, v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a1[1] = sub_1B67D8B3C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v89 = v49;
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v90 = v51;
  v91 = v50 + 56;
  v88 = v18;
  v51(v18, 1, 1, v49);
  v51(v95, 1, 1, v49);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v52 = *(v87 + 48);
  v53 = *(v87 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  a1[2] = sub_1B67D8B3C();
  v57 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v59 = *(*(v58 - 8) + 56);
  v59(v12, 1, 1, v58);
  v60 = v92;
  v59(v92, 1, 1, v58);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v57[3] = sub_1B67D8B3C();
  v59(v12, 1, 1, v58);
  v59(v60, 1, 1, v58);
  v67 = *(v61 + 48);
  v68 = *(v61 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v69 = *(v64 + 48);
  v70 = *(v64 + 52);
  swift_allocObject();
  v57[4] = sub_1B67D8B3C();
  v71 = v89;
  v72 = v90;
  v90(v88, 1, 1, v89);
  v72(v95, 1, 1, v71);
  v73 = *(v87 + 48);
  v74 = *(v87 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v75 = *(v54 + 48);
  v76 = *(v54 + 52);
  swift_allocObject();
  v57[5] = sub_1B67D8B3C();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v78 = *(*(v77 - 8) + 56);
  v78(v93, 1, 1, v77);
  v78(v94, 1, 1, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v57[6] = result;
  return result;
}

uint64_t FeedItemEntity.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v8 = sub_1B67D8B8C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1B67D8BAC();
}

uint64_t sub_1B6498210()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x44656761726F7473;
  if (v1 != 5)
  {
    v3 = 0x617461446270;
  }

  v4 = 0x53746C7561666564;
  if (v1 != 3)
  {
    v4 = 0x6353756F59726F66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x444964656566;
  if (v1 != 1)
  {
    v5 = 0x446873696C627570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B64982F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B649A57C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6498324(uint64_t a1)
{
  v2 = sub_1B6498830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6498360(uint64_t a1)
{
  v2 = sub_1B6498830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC78, &qword_1B6813E28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v25 = v1[2];
  v26 = v9;
  v12 = v1[5];
  v23 = v1[4];
  v24 = v11;
  v21 = v1[6];
  v22 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6498830();

  v14 = v4;
  sub_1B67DA47C();
  v28 = v10;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (v2)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v24;
    v16 = v25;

    v28 = v26;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B6413CCC(&qword_1EB94AC80, &qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B67DA24C();
    v28 = v16;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
    v18 = v5;
    v28 = v15;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
    sub_1B6413CCC(&qword_1EB94AC88, &qword_1EB94AC58, &qword_1B6813E00);
    v26 = v14;
    sub_1B67DA24C();
    v28 = v23;
    v27 = 4;
    sub_1B67DA24C();
    v28 = v22;
    v27 = 5;
    v19 = v26;
    sub_1B67DA24C();
    v28 = v21;
    v27 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA24C();
    return (*(v18 + 8))(v8, v19);
  }
}

unint64_t sub_1B6498830()
{
  result = qword_1EB954130[0];
  if (!qword_1EB954130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB954130);
  }

  return result;
}

uint64_t FeedItemEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v125 = a1;
  v103 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC98, &qword_1B6813E30);
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v124 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v118 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v102 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v102 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v102 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v102 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 1, 1, v36);
  v37(v33, 1, 1, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v106 = v41;
  swift_allocObject();
  v123 = sub_1B67D8B3C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v45 = *(*(v44 - 8) + 56);
  v45(v28, 1, 1, v44);
  v45(v26, 1, 1, v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v105 = v49;
  swift_allocObject();
  v122 = sub_1B67D8B3C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v112 = v52;
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v113 = v54;
  v114 = v53 + 56;
  v109 = v21;
  v54(v21, 1, 1, v52);
  v110 = v19;
  v54(v19, 1, 1, v52);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v55 = *(v111 + 48);
  v56 = *(v111 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v121 = sub_1B67D8B3C();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v61 = *(*(v60 - 8) + 56);
  v62 = v115;
  v61(v115, 1, 1, v60);
  v63 = v116;
  v61(v116, 1, 1, v60);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v120 = sub_1B67D8B3C();
  v61(v62, 1, 1, v60);
  v61(v63, 1, 1, v60);
  v70 = *(v64 + 48);
  v71 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v72 = *(v67 + 48);
  v73 = *(v67 + 52);
  v104 = v67;
  swift_allocObject();
  sub_1B67D8B3C();
  v74 = v112;
  v75 = v113;
  v113(v109, 1, 1, v112);
  v75(v110, 1, 1, v74);
  v76 = v125;
  v77 = *(v111 + 48);
  v78 = *(v111 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v79 = *(v57 + 48);
  v80 = *(v57 + 52);
  v115 = v57;
  swift_allocObject();
  v116 = sub_1B67D8B3C();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v82 = *(*(v81 - 8) + 56);
  v82(v117, 1, 1, v81);
  v82(v118, 1, 1, v81);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = sub_1B67D8B3C();
  v90 = v76[4];
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  sub_1B6498830();
  v91 = v119;
  sub_1B67DA46C();
  if (!v91)
  {
    v119 = v89;
    v92 = v107;
    v126 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();

    v123 = v127;
    v126 = 1;
    sub_1B6413CCC(&qword_1EB94ACA0, &qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B67DA1CC();

    v122 = v127;
    v126 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();

    v121 = v127;
    v126 = 3;
    sub_1B6413CCC(&qword_1EB94ACA8, &qword_1EB94AC58, &qword_1B6813E00);
    sub_1B67DA1CC();

    v120 = v127;
    v126 = 4;
    sub_1B67DA1CC();

    v118 = v127;
    v126 = 5;
    v94 = v108;
    sub_1B67DA1CC();

    v95 = v127;
    v126 = 6;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470);
    v96 = v124;
    sub_1B67DA1CC();
    (*(v92 + 8))(v96, v94);

    v97 = v127;
    v98 = v95;
    v99 = v103;
    v100 = v122;
    *v103 = v123;
    v99[1] = v100;
    v101 = v120;
    v99[2] = v121;
    v99[3] = v101;
    v99[4] = v118;
    v99[5] = v98;
    v99[6] = v97;
  }

  __swift_destroy_boxed_opaque_existential_1(v125);
}

uint64_t sub_1B64996B0(uint64_t a1)
{
  v2 = sub_1B649B558();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64996FC(uint64_t a1)
{
  v2 = sub_1B649B558();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6499748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B649B558();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64997E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B649B558();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B649982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B649B558();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6499880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B649B558();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64998E4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v8 = sub_1B67D8B8C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1B67D8BAC();
}

uint64_t sub_1B64999B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v6, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

uint64_t sub_1B6499B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B649A7C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void FeedItemAndScoreEntity.feedItem.getter()
{
  v1 = *(v0 + 24);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v5 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B67D864C();
    sub_1B6457448(v4, v5);
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69B6E30]) initWithData_];

  if (!v3)
  {
    __break(1u);
  }
}

uint64_t sub_1B6499C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];

  sub_1B67D8B5C();
}

uint64_t sub_1B6499D68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];

  sub_1B67D8B5C();
}

uint64_t sub_1B6499E44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B6499E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];

  sub_1B67D8B5C();
}

uint64_t FeedItemAndScoreEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 1, 1, v22);
  v23(v19, 1, 1, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v31 = *(*(v30 - 8) + 56);
  v31(v14, 1, 1, v30);
  v31(v12, 1, 1, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  a1[1] = sub_1B67D8B3C();
  v31(v14, 1, 1, v30);
  v31(v12, 1, 1, v30);
  v38 = *(v32 + 48);
  v39 = *(v32 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v40 = *(v35 + 48);
  v41 = *(v35 + 52);
  swift_allocObject();
  a1[2] = sub_1B67D8B3C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v43 = *(*(v42 - 8) + 56);
  v43(v7, 1, 1, v42);
  v43(v52, 1, 1, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  a1[3] = result;
  return result;
}

uint64_t FeedItemAndScoreEntity.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v5 = sub_1B67D8B8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B649A4E8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v5 = sub_1B67D8B8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B649A57C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065726F63 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6353756F59726F66 && a2 == 0xEB0000000065726FLL || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446270 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B649A7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1B67D8B3C();
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v15;
}

unint64_t sub_1B649AA00()
{
  result = qword_1EB94ACB8;
  if (!qword_1EB94ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACB8);
  }

  return result;
}

unint64_t sub_1B649AA58()
{
  result = qword_1EB94ACC0;
  if (!qword_1EB94ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACC0);
  }

  return result;
}

unint64_t sub_1B649AAD8()
{
  result = qword_1EB94ACC8;
  if (!qword_1EB94ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACC8);
  }

  return result;
}

unint64_t sub_1B649AB2C()
{
  result = qword_1EB94ACD0;
  if (!qword_1EB94ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACD0);
  }

  return result;
}

unint64_t sub_1B649AB80()
{
  result = qword_1EB94ACD8;
  if (!qword_1EB94ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACD8);
  }

  return result;
}

unint64_t sub_1B649ABD4()
{
  result = qword_1EB94ACE0;
  if (!qword_1EB94ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACE0);
  }

  return result;
}

unint64_t sub_1B649AC28()
{
  result = qword_1EB94ACE8;
  if (!qword_1EB94ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACE8);
  }

  return result;
}

unint64_t sub_1B649AC88()
{
  result = qword_1EB94ACF0;
  if (!qword_1EB94ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACF0);
  }

  return result;
}

unint64_t sub_1B649ACE4()
{
  result = qword_1EB94ACF8;
  if (!qword_1EB94ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACF8);
  }

  return result;
}

unint64_t sub_1B649AD64()
{
  result = qword_1EB94AD00;
  if (!qword_1EB94AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD00);
  }

  return result;
}

unint64_t sub_1B649ADB8()
{
  result = qword_1EB94AD08;
  if (!qword_1EB94AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD08);
  }

  return result;
}

unint64_t sub_1B649AE10()
{
  result = qword_1EB94AD10;
  if (!qword_1EB94AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD10);
  }

  return result;
}

unint64_t sub_1B649AE68()
{
  result = qword_1EB94AD18;
  if (!qword_1EB94AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD18);
  }

  return result;
}

unint64_t sub_1B649AEE8()
{
  result = qword_1EB94AD20;
  if (!qword_1EB94AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD20);
  }

  return result;
}

unint64_t sub_1B649AF3C()
{
  result = qword_1EB94AD28;
  if (!qword_1EB94AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD28);
  }

  return result;
}

unint64_t sub_1B649AF94()
{
  result = qword_1EB94AD30;
  if (!qword_1EB94AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD30);
  }

  return result;
}

unint64_t sub_1B649AFEC()
{
  result = qword_1EB94AD38;
  if (!qword_1EB94AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD38);
  }

  return result;
}

uint64_t sub_1B649B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B649B0A8()
{
  result = qword_1EB94AD40;
  if (!qword_1EB94AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD40);
  }

  return result;
}

unint64_t sub_1B649B0FC()
{
  result = qword_1EB94AD48;
  if (!qword_1EB94AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD48);
  }

  return result;
}

unint64_t sub_1B649B154()
{
  result = qword_1EB94AD50;
  if (!qword_1EB94AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD50);
  }

  return result;
}

unint64_t sub_1B649B1AC()
{
  result = qword_1EB94AD58;
  if (!qword_1EB94AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD58);
  }

  return result;
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

uint64_t sub_1B649B21C(uint64_t *a1, int a2)
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

uint64_t sub_1B649B264(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FeedItemEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedItemEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B649B454()
{
  result = qword_1EB954F40[0];
  if (!qword_1EB954F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB954F40);
  }

  return result;
}

unint64_t sub_1B649B4AC()
{
  result = qword_1EB955050;
  if (!qword_1EB955050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955050);
  }

  return result;
}

unint64_t sub_1B649B504()
{
  result = qword_1EB955058[0];
  if (!qword_1EB955058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955058);
  }

  return result;
}

unint64_t sub_1B649B558()
{
  result = qword_1EB94AD60;
  if (!qword_1EB94AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD60);
  }

  return result;
}

uint64_t RecipeBoxType.cachedRecipeIDs.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v3, 0);
    v4 = v16;
    v5 = (v2 + 48);
    do
    {
      v14 = *(v5 - 1);
      v15 = *v5;
      v6 = RecipeBoxItem.recipeID.getter();
      v17 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1B6456B24((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v17;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1B649B6DC(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1B649ED88(0, v5, 0);
  v6 = v22;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v19[0] = *(i - 1);
    v19[1] = v10;

    a1(&v20, v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v20;
    v12 = v21;
    v22 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_1B649ED88((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v18;
      v6 = v22;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 32 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall RecipeBoxType.add(recipeIDs:)(Swift::OpaquePointer recipeIDs)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D875C();
  (*(v3 + 32))(recipeIDs._rawValue, v10, v4, v3);
  (*(v7 + 8))(v10, v6);
}

uint64_t RecipeBoxType.add(recipeID:dateAdded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B68100D0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = *(a5 + 32);

  v11(v10, a3, a4, a5);
}

Swift::Void __swiftcall RecipeBoxType.add(recipeID:)(Swift::String recipeID)
{
  object = recipeID._object;
  countAndFlagsBits = recipeID._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;

  RecipeBoxType.add(recipeIDs:)(v3);
}

uint64_t sub_1B649BA68()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  v6 = sub_1B64189EC();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v1;
  v8 = sub_1B67D8A7C();
  v9 = sub_1B67D9C8C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1B63EF000, v8, v9, "Recipe box cache initialization failed; error=%@", v12, 0xCu);
    sub_1B6418AB4(v13, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B649BC28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = *(v3 + 40);
  v21 = a1;
  v22 = a2;
  os_unfair_lock_lock((v13 + 24));
  sub_1B649F0C0((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  v14 = sub_1B67D993C();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = v20;
  *(v16 + 4) = v3;
  *(v16 + 5) = v17;
  (*(v7 + 32))(&v16[v15], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1B6461304(0, 0, v12, &unk_1B68145A8, v16);
}

uint64_t sub_1B649BE54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v24 = a2;
    v25 = v3;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v8, 0);
    v9 = v28;
    v10 = (v7 + 48);
    do
    {
      v11 = *v10;
      v26 = *(v10 - 1);
      v27 = v11;
      v12 = RecipeBoxItem.identifier.getter();
      v28 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        v23 = v12;
        v17 = v13;
        sub_1B6456B24((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v23;
        v9 = v28;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v10 += 2;
      --v8;
    }

    while (v8);
    v5 = v24;
  }

  v18 = sub_1B646A4DC(v9);

  MEMORY[0x1EEE9AC00](v19);
  v22[2] = v18;
  v22[3] = a3;
  v20 = sub_1B649C108(sub_1B64A0138, v22, v5);

  *&v26 = v20;
  result = sub_1B649EEB4(v7);
  *a1 = v26;
  return result;
}