uint64_t sub_255F47688()
{
  v0 = sub_255F54B60(qword_286806640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A880, &qword_255F581F0);
  result = swift_arrayDestroy();
  qword_27F81A8D8 = v0;
  return result;
}

uint64_t runAnalysisCommand(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v6 = sub_255F576A0();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A6E0, &qword_255F58098);
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v12 = sub_255F57680();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = sub_255F57640();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v18 = swift_task_alloc();
  v3[27] = v18;
  v19 = swift_task_alloc();
  v3[28] = v19;
  *v19 = v3;
  v19[1] = sub_255F4796C;

  return sub_255F48708(v18, a2, a3);
}

uint64_t sub_255F4796C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[29] = v4;
  *v4 = v3;
  v4[1] = sub_255F47AD8;
  v5 = v1[26];
  v6 = v1[8];
  v7 = v1[7];

  return sub_255F4A6A8(v5, v7, v6);
}

uint64_t sub_255F47AD8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255F47BD4, 0, 0);
}

uint64_t sub_255F47BD4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  *(v0 + 320) = *MEMORY[0x277CE1948];
  v9 = *(v7 + 104);
  *(v0 + 240) = v9;
  *(v0 + 248) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  sub_255F575E0();
  sub_255F576B0();
  v10 = *(v0 + 200);
  v11 = sub_255F57630();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v0 + 80);
    v46 = *(v13 + 16);
    v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v45 = *(v13 + 72);
    v44 = (v13 + 8);
    do
    {
      v47 = *(v0 + 200);
      v48 = v12;
      v15 = *(v0 + 128);
      v16 = *(v0 + 96);
      v17 = *(v0 + 72);
      v46(v16, v14, v17);
      *(v0 + 16) = sub_255F57690();
      *(v0 + 24) = v18;
      sub_255F4C00C();
      sub_255F553C4(&qword_27F81A6F0, &qword_27F81A6E0, &qword_255F58098);
      v19 = sub_255F57990();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      sub_255F57690();
      (*v44)(v16, v17);
      MEMORY[0x259C52E10](v19, v21, v23, v25);

      sub_255F575F0();

      v14 += v45;
      v12 = v48 - 1;
    }

    while (v48 != 1);
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v29 = *(v0 + 160);
  v30 = *(v0 + 136);
  v31 = *(v0 + 144);
  v32 = *(v0 + 128);
  v33 = *(v0 + 104);
  v34 = *(v0 + 112);
  v35 = *(v0 + 48);
  v36 = *(v34 + 8);
  *(v0 + 256) = v36;
  *(v0 + 264) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v32, v33);
  v37 = *(v31 + 8);
  *(v0 + 272) = v37;
  *(v0 + 280) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v29, v30);
  v38 = *(v28 + 32);
  *(v0 + 288) = v38;
  *(v0 + 296) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v38(v35, v26, v27);
  v39 = swift_task_alloc();
  *(v0 + 304) = v39;
  *v39 = v0;
  v39[1] = sub_255F47F78;
  v40 = *(v0 + 192);
  v41 = *(v0 + 56);
  v42 = *(v0 + 64);

  return sub_255F4C0A8(v40, v41, v42);
}

uint64_t sub_255F47F78()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_255F48474;
  }

  else
  {
    v3 = sub_255F4808C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255F4808C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 120);
  v7 = *(v0 + 48);
  (*(v0 + 240))(*(v0 + 152), *(v0 + 320), *(v0 + 136));
  sub_255F575E0();
  sub_255F576B0();
  if (v1)
  {

    return MEMORY[0x2821FEBD8](v1, "LighthouseQuartz/Analysis.swift", 31, 1, 153);
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = sub_255F57630();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v0 + 80);
      v51 = *(v11 + 16);
      v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v50 = *(v11 + 72);
      v49 = (v11 + 8);
      do
      {
        v54 = *(v0 + 184);
        v56 = v10;
        v13 = *(v0 + 120);
        v14 = *(v0 + 104);
        v15 = *(v0 + 88);
        v16 = *(v0 + 72);
        v51(v15, v12, v16);
        *(v0 + 32) = sub_255F57690();
        *(v0 + 40) = v17;
        sub_255F4C00C();
        sub_255F553C4(&qword_27F81A6F0, &qword_27F81A6E0, &qword_255F58098);
        v18 = sub_255F57990();
        v20 = v19;
        v22 = v21;
        v24 = v23;

        sub_255F57690();
        (*v49)(v15, v16);
        MEMORY[0x259C52E10](v18, v20, v22, v24);

        sub_255F575F0();

        v12 += v50;
        v10 = v56 - 1;
      }

      while (v56 != 1);
    }

    v55 = *(v0 + 288);
    v57 = *(v0 + 296);
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 264);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v30 = *(v0 + 192);
    v52 = v28;
    v53 = *(v0 + 184);
    v32 = *(v0 + 168);
    v31 = *(v0 + 176);
    v33 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = *(v0 + 48);
    (*(v0 + 256))(*(v0 + 120), *(v0 + 104));
    v26(v33, v34);
    v36 = *(v31 + 8);
    v36(v30, v32);
    v36(v35, v32);
    v36(v29, v32);
    v36(v52, v32);
    v55(v35, v53, v32);
    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v40 = *(v0 + 192);
    v39 = *(v0 + 200);
    v41 = *(v0 + 184);
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v45 = *(v0 + 120);
    v44 = *(v0 + 128);
    v46 = *(v0 + 96);
    v58 = *(v0 + 88);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_255F48474()
{
  if (qword_27F81A6C8 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = sub_255F57970();
  __swift_project_value_buffer(v2, qword_27F81A8E0);
  MEMORY[0x259C532E0](v1);
  v3 = sub_255F57950();
  v4 = sub_255F57AA0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[39];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[21];
  v10 = v0[22];
  if (v5)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    MEMORY[0x259C532E0](v6);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_255F46000, v3, v4, "Encountered error when getting life event metrics: %@", v11, 0xCu);
    sub_255F55620(v12, &qword_27F81A6F8, &qword_255F580B8);
    MEMORY[0x259C533C0](v12, -1, -1);
    MEMORY[0x259C533C0](v11, -1, -1);
  }

  v14 = *(v10 + 8);
  v14(v8, v9);
  v14(v7, v9);
  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v21 = v0[19];
  v20 = v0[20];
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[12];
  v27 = v0[11];

  v25 = v0[1];

  return v25();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F48708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[50] = v5;
  v6 = *(v5 - 8);
  v3[51] = v6;
  v7 = *(v6 + 64) + 15;
  v3[52] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[54] = v9;
  v10 = *(v9 - 8);
  v3[55] = v10;
  v11 = *(v10 + 64) + 15;
  v3[56] = swift_task_alloc();
  v12 = sub_255F57640();
  v3[57] = v12;
  v13 = *(v12 - 8);
  v3[58] = v13;
  v14 = *(v13 + 64) + 15;
  v3[59] = swift_task_alloc();
  v15 = sub_255F575D0();
  v3[60] = v15;
  v16 = *(v15 - 8);
  v3[61] = v16;
  v17 = *(v16 + 64) + 15;
  v3[62] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[63] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[66] = v20;
  v21 = *(v20 - 8);
  v3[67] = v21;
  v22 = *(v21 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v23 = sub_255F57580();
  v3[71] = v23;
  v24 = *(v23 - 8);
  v3[72] = v24;
  v25 = *(v24 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F48AB0, 0, 0);
}

uint64_t sub_255F48AB0()
{
  v1 = v0[47];
  v2 = [objc_opt_self() defaultManager];
  v0[77] = v2;
  v3 = swift_task_alloc();
  v0[78] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[79] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A870, &qword_255F581E8);
  *v5 = v0;
  v5[1] = sub_255F48BE0;

  return MEMORY[0x2822007B8](v0 + 44, 0, 0, 0xD000000000000025, 0x8000000255F58870, sub_255F557C8, v3, v6);
}

uint64_t sub_255F48BE0()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_255F48CF8, 0, 0);
}

uint64_t sub_255F48CF8()
{
  v2 = *(v0 + 352);
  v3 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A818, &qword_255F581A0, &qword_27F81A800, &qword_255F58198);
  v4 = v2;
  v292 = v3;
  v235 = v2;
  if (v2 >> 62)
  {
    goto LABEL_67;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v293 = v0;
  if (!v5)
  {
LABEL_68:
    v291 = 0;
    v287 = 0;
LABEL_69:
    v90 = *(v0 + 376);
    v91 = *(v0 + 384);

    sub_255F57520();
    v93 = v92;
    sub_255F57520();
    v95 = (v93 - v94) / 86400.0;
    if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_176;
    }

    if (v95 <= -9.22337204e18)
    {
LABEL_177:
      __break(1u);
    }

    else if (v95 < 9.22337204e18)
    {
      v96 = *(v0 + 568);
      v98 = *(v0 + 440);
      v97 = *(v0 + 448);
      v100 = *(v0 + 424);
      v99 = *(v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
      v101 = *(sub_255F576A0() - 8);
      v1 = *(v101 + 72);
      v102 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v103 = swift_allocObject();
      v246 = xmmword_255F58050;
      *(v103 + 16) = xmmword_255F58050;
      sub_255F57670();
      sub_255F57660();
      v242 = v103;
      sub_255F57650();
      (*(v98 + 8))(v97, v99);
      if (qword_27F81A6C0 == -1)
      {
LABEL_73:
        v295 = MEMORY[0x277D84F90];
        v271 = qword_27F81A8D8 + 64;
        v104 = -1;
        v105 = -1 << *(qword_27F81A8D8 + 32);
        if (-v105 < 64)
        {
          v104 = ~(-1 << -v105);
        }

        v106 = v104 & *(qword_27F81A8D8 + 64);
        v244 = (63 - v105) >> 6;
        v249 = (*(v0 + 408) + 8);
        v289 = qword_27F81A8D8;
        swift_bridgeObjectRetain_n();
        v107 = 0;
        v258 = v1;
        while (v106)
        {
          v108 = v107;
          v0 = v293;
LABEL_82:
          v109 = *(v0 + 416);
          v112 = v0 + 392;
          v110 = *(v0 + 392);
          v111 = *(v112 + 8);
          v113 = __clz(__rbit64(v106));
          v106 &= v106 - 1;
          v114 = (*(v289 + 56) + ((v108 << 10) | (16 * v113)));
          v115 = v114[1];
          v278 = *v114;
          v283 = swift_allocObject();
          *(v283 + 16) = xmmword_255F58060;
          swift_bridgeObjectRetain_n();
          MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
          sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
          sub_255F57670();
          sub_255F57660();
          sub_255F57650();
          v116 = *v249;
          (*v249)(v109, v111);

          MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);
          sub_255F57670();
          sub_255F57660();
          v1 = v258;
          sub_255F57650();
          v116(v109, v111);

          sub_255F52D18(v283);
        }

        v0 = v293;
        while (1)
        {
          v108 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            goto LABEL_164;
          }

          if (v108 >= v244)
          {
            break;
          }

          v106 = *(v271 + 8 * v108);
          ++v107;
          if (v106)
          {
            v107 = v108;
            goto LABEL_82;
          }
        }

        v117 = *(v293 + 472);
        v1 = *(v293 + 376);
        v118 = *(v293 + 384);

        sub_255F52D18(v295);
        *(v293 + 360) = v242;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
        sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138);
        sub_255F57620();
        v119 = sub_255F4F788(v1, v118);
        v252 = v119[2];
        if (!v252)
        {
LABEL_159:

          v218 = *(v0 + 608);
          v219 = *(v0 + 600);
          v220 = *(v0 + 592);
          v221 = *(v0 + 584);
          v222 = *(v0 + 560);
          v262 = *(v0 + 552);
          v265 = *(v0 + 544);
          v269 = *(v0 + 520);
          v272 = *(v0 + 512);
          v275 = *(v0 + 496);
          v223 = *(v0 + 464);
          v224 = *(v0 + 472);
          v225 = *(v0 + 456);
          v281 = *(v0 + 448);
          v286 = *(v0 + 424);
          v290 = *(v0 + 416);
          v294 = *(v0 + 392);
          v226 = *(v0 + 368);

          (*(v223 + 32))(v226, v224, v225);

          sub_255F553B4(v291);
          sub_255F553B4(v287);

          v227 = *(v0 + 8);

          return v227();
        }

        v120 = 0;
        v121 = *(v293 + 576);
        v254 = v119 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v256 = v121;
        v245 = (v121 + 8);
        v250 = v119;
LABEL_87:
        if (v120 >= v119[2])
        {
          goto LABEL_173;
        }

        v125 = *(v256 + 16);
        v125(*(v0 + 584), &v254[*(v256 + 72) * v120], *(v0 + 568));
        if (v292[2] && (v126 = sub_255F52060(*(v0 + 584)), (v127 & 1) != 0))
        {
          v267 = *(v292[7] + 8 * v126);
        }

        else
        {
          v267 = 0;
        }

        v259 = v120 + 1;
        v128 = *(v0 + 584);
        v129 = *(v0 + 568);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7A8, &qword_255F58140);
        inited = swift_initStackObject();
        *(inited + 16) = v246;
        *(inited + 32) = 1702125924;
        v1 = inited + 32;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 72) = v129;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
        v125(boxed_opaque_existential_0, v128, v129);
        v132 = sub_255F54C74(inited);
        swift_setDeallocating();
        sub_255F55620(inited + 32, &qword_27F81A7B0, &qword_255F58148);
        v133 = -1 << *(v289 + 32);
        if (-v133 < 64)
        {
          v134 = ~(-1 << -v133);
        }

        else
        {
          v134 = -1;
        }

        v135 = v134 & *(v289 + 64);
        v0 = (63 - v133) >> 6;

        v136 = 0;
        v279 = v0;
        v137 = v271;
        if (v135)
        {
          while (1)
          {
            v138 = v136;
LABEL_100:
            v139 = (*(v289 + 56) + ((v138 << 10) | (16 * __clz(__rbit64(v135)))));
            v0 = *v139;
            v140 = v139[1];
            v296 = *v139;
            swift_bridgeObjectRetain_n();
            MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
            v141 = v296;
            v1 = 0x277CCABB0uLL;
            v142 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v284 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
            *(v293 + 120) = v284;
            *(v293 + 96) = v142;
            sub_255F55470((v293 + 96), (v293 + 128));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v297 = v132;
            v144 = sub_255F51FE8(v141, v140);
            v146 = v132[2];
            v147 = (v145 & 1) == 0;
            v10 = __OFADD__(v146, v147);
            v148 = v146 + v147;
            if (v10)
            {
              goto LABEL_165;
            }

            v1 = v145;
            if (v132[3] < v148)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_105;
            }

            v154 = v144;
            sub_255F52E68();
            v144 = v154;
            if (v1)
            {
LABEL_106:
              v150 = v0;
              v151 = v144;

              v152 = v297;
              v153 = (v297[7] + 32 * v151);
              __swift_destroy_boxed_opaque_existential_0(v153);
              v0 = v293;
              sub_255F55470((v293 + 128), v153);
              goto LABEL_110;
            }

LABEL_108:
            v152 = v297;
            v297[(v144 >> 6) + 8] |= 1 << v144;
            v155 = (v297[6] + 16 * v144);
            *v155 = v141;
            v155[1] = v140;
            sub_255F55470((v293 + 128), (v297[7] + 32 * v144));
            v156 = v297[2];
            v10 = __OFADD__(v156, 1);
            v157 = v156 + 1;
            if (v10)
            {
              goto LABEL_169;
            }

            v150 = v0;
            v297[2] = v157;
            v0 = v293;
LABEL_110:

            MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);

            v159 = v150;
            v158 = v140;
            v160 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            *(v0 + 184) = v284;
            *(v0 + 160) = v160;
            sub_255F55470((v0 + 160), (v0 + 192));
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v298 = v152;
            v162 = sub_255F51FE8(v159, v158);
            v164 = v152[2];
            v165 = (v163 & 1) == 0;
            v10 = __OFADD__(v164, v165);
            v166 = v164 + v165;
            if (v10)
            {
              goto LABEL_166;
            }

            v1 = v163;
            if (v152[3] >= v166)
            {
              v0 = v279;
              if ((v161 & 1) == 0)
              {
                v173 = v162;
                sub_255F52E68();
                v162 = v173;
              }
            }

            else
            {
              sub_255F523DC(v166, v161);
              v162 = sub_255F51FE8(v159, v158);
              v0 = v279;
              if ((v1 & 1) != (v167 & 1))
              {
                goto LABEL_155;
              }
            }

            v135 &= v135 - 1;
            if (v1)
            {
              v168 = v162;

              v132 = v298;
              v169 = (v298[7] + 32 * v168);
              __swift_destroy_boxed_opaque_existential_0(v169);
              sub_255F55470((v293 + 192), v169);
              v136 = v138;
              v137 = v271;
              if (!v135)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v132 = v298;
              v298[(v162 >> 6) + 8] |= 1 << v162;
              v170 = (v298[6] + 16 * v162);
              *v170 = v159;
              v170[1] = v158;
              sub_255F55470((v293 + 192), (v298[7] + 32 * v162));
              v171 = v298[2];
              v10 = __OFADD__(v171, 1);
              v172 = v171 + 1;
              if (v10)
              {
                goto LABEL_170;
              }

              v298[2] = v172;
              v136 = v138;
              v137 = v271;
              if (!v135)
              {
                goto LABEL_97;
              }
            }
          }

          sub_255F523DC(v148, isUniquelyReferenced_nonNull_native);
          v144 = sub_255F51FE8(v141, v140);
          if ((v1 & 1) != (v149 & 1))
          {
            goto LABEL_155;
          }

LABEL_105:
          if (v1)
          {
            goto LABEL_106;
          }

          goto LABEL_108;
        }

        while (1)
        {
LABEL_97:
          v138 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
            __break(1u);
            goto LABEL_163;
          }

          if (v138 >= v0)
          {
            break;
          }

          v135 = *(v137 + 8 * v138);
          ++v136;
          if (v135)
          {
            goto LABEL_100;
          }
        }

        v174 = v267;
        if (!v267)
        {
          v174 = sub_255F54DA4(MEMORY[0x277D84F90]);
        }

        v0 = v293;
        v175 = 0;
        v176 = v174 + 64;
        v177 = -1 << *(v174 + 32);
        if (-v177 < 64)
        {
          v178 = ~(-1 << -v177);
        }

        else
        {
          v178 = -1;
        }

        v179 = v178 & *(v174 + 64);
        v180 = (63 - v177) >> 6;
        v264 = v174 + 64;
        v261 = v180;
        v268 = v174;
        while (1)
        {
          if (!v179)
          {
            while (1)
            {
              v183 = v175 + 1;
              if (__OFADD__(v175, 1))
              {
                break;
              }

              if (v183 >= v180)
              {
                v122 = *(v0 + 584);
                v123 = *(v0 + 568);
                v124 = *(v0 + 472);

                v1 = sub_255F5035C(v132);

                sub_255F57600();

                (*v245)(v122, v123);
                v119 = v250;
                v120 = v259;
                if (v259 == v252)
                {
                  goto LABEL_159;
                }

                goto LABEL_87;
              }

              v179 = *(v176 + 8 * v183);
              ++v175;
              if (v179)
              {
                goto LABEL_135;
              }
            }

LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v183 = v175;
LABEL_135:
          v184 = __clz(__rbit64(v179)) | (v183 << 6);
          v185 = (*(v174 + 48) + 16 * v184);
          v186 = v185[1];
          v187 = *(*(v174 + 56) + 8 * v184);
          v280 = *v185;
          v299 = *v185;
          swift_bridgeObjectRetain_n();

          MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
          v285 = v187;
          v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v274 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
          *(v0 + 248) = v274;
          *(v0 + 224) = v188;
          v189 = (v0 + 224);
          v190 = (v0 + 256);
          v0 = v299;
          sub_255F55470(v189, v190);
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v1 = sub_255F51FE8(v299, v186);
          v193 = v132[2];
          v194 = (v192 & 1) == 0;
          v195 = v193 + v194;
          if (__OFADD__(v193, v194))
          {
            goto LABEL_167;
          }

          v196 = v192;
          if (v132[3] >= v195)
          {
            if (v191)
            {
              if (v192)
              {
                goto LABEL_143;
              }
            }

            else
            {
              sub_255F52E68();
              if (v196)
              {
                goto LABEL_143;
              }
            }
          }

          else
          {
            sub_255F523DC(v195, v191);
            v197 = sub_255F51FE8(v299, v186);
            if ((v196 & 1) != (v198 & 1))
            {
              goto LABEL_155;
            }

            v1 = v197;
            if (v196)
            {
LABEL_143:

              v202 = (v132[7] + 32 * v1);
              __swift_destroy_boxed_opaque_existential_0(v202);
              v0 = v293;
              sub_255F55470((v293 + 256), v202);
              goto LABEL_144;
            }
          }

          v132[(v1 >> 6) + 8] |= 1 << v1;
          v199 = (v132[6] + 16 * v1);
          *v199 = v299;
          v199[1] = v186;
          v0 = v293;
          sub_255F55470((v293 + 256), (v132[7] + 32 * v1));
          v200 = v132[2];
          v10 = __OFADD__(v200, 1);
          v201 = v200 + 1;
          if (v10)
          {
            goto LABEL_171;
          }

          v132[2] = v201;
LABEL_144:

          MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);

          v1 = v186;
          sub_255F4FAF8(v285);
          v204 = v203;

          v205 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          *(v0 + 312) = v274;
          *(v0 + 288) = v205;
          sub_255F55470((v0 + 288), (v0 + 320));
          v206 = swift_isUniquelyReferenced_nonNull_native();
          v207 = sub_255F51FE8(v280, v186);
          v209 = v132[2];
          v210 = (v208 & 1) == 0;
          v10 = __OFADD__(v209, v210);
          v211 = v209 + v210;
          if (v10)
          {
            goto LABEL_168;
          }

          v212 = v208;
          if (v132[3] >= v211)
          {
            if ((v206 & 1) == 0)
            {
              v217 = v207;
              sub_255F52E68();
              v207 = v217;
            }
          }

          else
          {
            sub_255F523DC(v211, v206);
            v207 = sub_255F51FE8(v280, v1);
            if ((v212 & 1) != (v213 & 1))
            {
              goto LABEL_155;
            }
          }

          v179 &= v179 - 1;
          if (v212)
          {
            v181 = v207;

            v182 = (v132[7] + 32 * v181);
            __swift_destroy_boxed_opaque_existential_0(v182);
            sub_255F55470((v0 + 320), v182);
          }

          else
          {
            v132[(v207 >> 6) + 8] |= 1 << v207;
            v214 = (v132[6] + 16 * v207);
            *v214 = v280;
            v214[1] = v1;
            sub_255F55470((v0 + 320), (v132[7] + 32 * v207));
            v215 = v132[2];
            v10 = __OFADD__(v215, 1);
            v216 = v215 + 1;
            if (v10)
            {
              goto LABEL_172;
            }

            v132[2] = v216;
          }

          v175 = v183;
          v176 = v264;
          v174 = v268;
          v180 = v261;
        }
      }

LABEL_179:
      swift_once();
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_179;
  }

  while (2)
  {
    v291 = 0;
    v287 = 0;
    v1 = 0;
    v6 = *(v0 + 576);
    v273 = *(v0 + 536);
    v7 = v4 & 0xC000000000000001;
    v230 = v4 & 0xFFFFFFFFFFFFFF8;
    v243 = *(v0 + 528);
    v229 = v4 + 32;
    v253 = (v6 + 16);
    v242 = *(v0 + 504);
    v241 = (v6 + 32);
    v248 = v6;
    v282 = (v6 + 8);
    v260 = (*(v0 + 488) + 8);
    v231 = v4 & 0xC000000000000001;
    v232 = v5;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x259C52F10](v1, v4);
      }

      else
      {
        if (v1 >= *(v230 + 16))
        {
          goto LABEL_175;
        }

        v8 = *(v229 + 8 * v1);
      }

      v9 = v8;
      v10 = __OFADD__(v1++, 1);
      if (v10)
      {
        goto LABEL_66;
      }

      if (qword_27F81A6C0 != -1)
      {
        swift_once();
      }

      v11 = qword_27F81A8D8;
      v12 = [v9 type];
      if (*(v11 + 16) && (v13 = sub_255F51F7C(v12), (v14 & 1) != 0))
      {
        v15 = (*(v11 + 56) + 16 * v13);
        v288 = *v15;
        v266 = v15[1];
      }

      else
      {
        v266 = 0xE700000000000000;
        v288 = 0x6E776F6E6B6E75;
      }

      v16 = [v9 visits];
      sub_255F558F4(0, &qword_27F81A878, 0x277D01188);
      v17 = sub_255F57A20();

      if (!(v17 >> 62))
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          break;
        }

        goto LABEL_56;
      }

      v18 = sub_255F57B30();
      if (v18)
      {
        break;
      }

LABEL_56:

      v7 = v231;
      v4 = v235;
      if (v1 == v232)
      {
        goto LABEL_69;
      }
    }

    v19 = 0;
    v20 = v17 & 0xC000000000000001;
    v233 = v17 + 32;
    v234 = v17 & 0xFFFFFFFFFFFFFF8;
    v239 = v9;
    v240 = v1;
    v237 = v18;
    v238 = v17;
    v236 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v24 = MEMORY[0x259C52F10](v19, v17);
        v10 = __OFADD__(v19, 1);
        v25 = v19 + 1;
        if (v10)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v19 >= *(v234 + 16))
        {
          goto LABEL_174;
        }

        v24 = *(v233 + 8 * v19);
        v10 = __OFADD__(v19, 1);
        v25 = v19 + 1;
        if (v10)
        {
          goto LABEL_64;
        }
      }

      v247 = v25;
      v26 = *(v0 + 608);
      v27 = *(v0 + 600);
      v28 = *(v0 + 568);
      v29 = v24;
      v30 = [v24 entryDate];
      sub_255F57560();

      *&v246 = v29;
      v31 = [v29 exitDate];
      sub_255F57560();

      sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
      if ((sub_255F579B0() & 1) == 0)
      {
        goto LABEL_65;
      }

      v32 = *(v0 + 600);
      v33 = *(v0 + 568);
      v34 = *(v0 + 560);
      v35 = *(v0 + 520);
      v36 = *(v0 + 512);
      v37 = *v253;
      (*v253)(v35, *(v0 + 608), v33);
      v251 = v37;
      v37(v35 + *(v242 + 48), v32, v33);
      sub_255F556A8(v35, v36, &qword_27F81A740, &qword_255F580F0);
      v276 = *(v242 + 48);
      v38 = *v241;
      v39 = v34;
      (*v241)(v34, v36, v33);
      v40 = *v282;
      (*v282)(v36 + v276, v33);
      sub_255F55598(v35, v36, &qword_27F81A740, &qword_255F580F0);
      v38(v39 + *(v243 + 36), v36 + *(v242 + 48), v33);
      v277 = v40;
      v40(v36, v33);
      v1 = sub_255F4EE30(v39);
      sub_255F55620(v39, &qword_27F81A748, &qword_255F580F8);
      v270 = *(v1 + 16);
      if (v270)
      {
        break;
      }

LABEL_18:
      v21 = *(v0 + 608);
      v22 = *(v0 + 600);
      v23 = *(v0 + 568);

      v277(v22, v23);
      v277(v21, v23);
      v17 = v238;
      v19 = v247;
      v9 = v239;
      v1 = v240;
      v20 = v236;
      if (v247 == v237)
      {
        goto LABEL_56;
      }
    }

    v41 = 0;
    v255 = (*(v273 + 80) + 32) & ~*(v273 + 80);
    v263 = v1 + v255;
    v257 = v1;
LABEL_28:
    if (v41 >= *(v1 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v5 = sub_255F57B30();
      v4 = v235;
      v293 = v0;
      if (!v5)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  v42 = *(v0 + 592);
  v43 = *(v0 + 552);
  v44 = *(v0 + 544);
  v45 = *(v0 + 496);
  v46 = *(v0 + 480);
  v47 = *(v273 + 72);
  sub_255F556A8(v263 + v47 * v41, v43, &qword_27F81A748, &qword_255F580F8);
  sub_255F575B0();
  sub_255F57590();
  (*v260)(v45, v46);
  v48 = v292;
  sub_255F55598(v43, v44, &qword_27F81A748, &qword_255F580F8);
  sub_255F553B4(v291);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v1 = sub_255F52060(v42);
  v51 = v292[2];
  v52 = (v50 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    goto LABEL_60;
  }

  v54 = v50;
  if (v292[3] >= v53)
  {
    v0 = v293;
    if (v49)
    {
      if (v50)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_255F5317C(&qword_27F81A800, &qword_255F58198);
      v48 = v292;
      if (v54)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_36;
  }

  v0 = v293;
  v55 = *(v293 + 592);
  sub_255F5293C(v53, v49, &qword_27F81A800, &qword_255F58198);
  v48 = v292;
  v56 = sub_255F52060(v55);
  if ((v54 & 1) != (v57 & 1))
  {
    v89 = *(v293 + 568);
    goto LABEL_156;
  }

  v1 = v56;
  if ((v54 & 1) == 0)
  {
LABEL_36:
    v58 = *(v0 + 592);
    v59 = *(v0 + 568);
    v60 = sub_255F54DA4(MEMORY[0x277D84F90]);
    v48[(v1 >> 6) + 8] |= 1 << v1;
    v251(v48[6] + *(v248 + 72) * v1, v58, v59);
    *(v48[7] + 8 * v1) = v60;
    v61 = v48[2];
    v10 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v10)
    {
      goto LABEL_62;
    }

    v48[2] = v62;
  }

LABEL_38:
  v63 = v48;
  v64 = v48[7];
  sub_255F553B4(v287);
  v65 = *(v64 + 8 * v1);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v64 + 8 * v1);
  *(v64 + 8 * v1) = 0x8000000000000000;
  v0 = v266;
  v69 = sub_255F51FE8(v288, v266);
  v70 = *(v67 + 16);
  v71 = (v68 & 1) == 0;
  v72 = v70 + v71;
  if (__OFADD__(v70, v71))
  {
    goto LABEL_61;
  }

  v73 = v68;
  if (*(v67 + 24) >= v72)
  {
    if ((v66 & 1) == 0)
    {
      sub_255F5300C();
    }

LABEL_44:
    v76 = *(v64 + 8 * v1);
    *(v64 + 8 * v1) = v67;

    v77 = *(v64 + 8 * v1);
    if ((v73 & 1) == 0)
    {
      v77[(v69 >> 6) + 8] |= 1 << v69;
      v78 = (v77[6] + 16 * v69);
      *v78 = v288;
      v78[1] = v266;
      *(v77[7] + 8 * v69) = MEMORY[0x277D84F90];
      v79 = v77[2];
      v10 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v10)
      {
        goto LABEL_63;
      }

      v77[2] = v80;
    }

    v81 = v77[7];
    v82 = *(v81 + 8 * v69);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *(v81 + 8 * v69) = v82;
    v292 = v63;
    if ((v83 & 1) == 0)
    {
      v82 = sub_255F51504(0, v82[2] + 1, 1, v82);
      *(v81 + 8 * v69) = v82;
    }

    v0 = v293;
    v85 = v82[2];
    v84 = v82[3];
    if (v85 >= v84 >> 1)
    {
      v82 = sub_255F51504(v84 > 1, v85 + 1, 1, v82);
      *(v81 + 8 * v69) = v82;
    }

    ++v41;
    v86 = *(v293 + 592);
    v87 = *(v293 + 568);
    v88 = *(v293 + 544);
    v82[2] = v85 + 1;
    sub_255F55598(v88, v82 + v255 + v85 * v47, &qword_27F81A748, &qword_255F580F8);
    v277(v86, v87);
    v287 = sub_255F55A20;
    v291 = sub_255F55A24;
    v1 = v257;
    if (v270 == v41)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  sub_255F52694(v72, v66);
  v74 = sub_255F51FE8(v288, v266);
  if ((v73 & 1) == (v75 & 1))
  {
    v69 = v74;
    goto LABEL_44;
  }

LABEL_155:
  v89 = MEMORY[0x277D837D0];
LABEL_156:

  return MEMORY[0x2821FE290](v89);
}

uint64_t sub_255F4A6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v17 = sub_255F57640();
  v3[20] = v17;
  v18 = *(v17 - 8);
  v3[21] = v18;
  v19 = *(v18 + 64) + 15;
  v3[22] = swift_task_alloc();
  v20 = sub_255F575D0();
  v3[23] = v20;
  v21 = *(v20 - 8);
  v3[24] = v21;
  v22 = *(v21 + 64) + 15;
  v3[25] = swift_task_alloc();
  v23 = sub_255F57580();
  v3[26] = v23;
  v24 = *(v23 - 8);
  v3[27] = v24;
  v25 = *(v24 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F4AA50, 0, 0);
}

uint64_t sub_255F4AA50()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_255F4AB60;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_255F4AB60()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_255F4AC78, 0, 0);
}

uint64_t sub_255F4AC78()
{
  v207 = v0;
  v1 = v0[34];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_255F57530();
  v5 = sub_255F57530();
  v6 = [v1 predicateForEventsWithStartDate:v4 endDate:v5 calendars:0];

  v7 = [v1 eventsMatchingPredicate_];
  v8 = sub_255F558F4(0, &qword_27F81A840, 0x277CC5A28);
  v9 = sub_255F57A20();

  if (qword_27F81A6C8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v10 = sub_255F57970();
    __swift_project_value_buffer(v10, qword_27F81A8E0);

    v11 = sub_255F57950();
    v12 = sub_255F57A90();

    v158 = v6;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v206[0] = v14;
      *v13 = 136315138;
      v15 = MEMORY[0x259C52E70](v9, v8);
      v8 = v16;
      v17 = sub_255F519D4(v15, v16, v206);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_255F46000, v11, v12, "ekEvents: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x259C533C0](v14, -1, -1);
      MEMORY[0x259C533C0](v13, -1, -1);
    }

    v6 = v194;
    v18 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A860, &qword_255F581D8, &qword_27F81A858, &qword_255F581D0);
    if (!(v9 >> 62))
    {
      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        break;
      }

      goto LABEL_6;
    }

    v19 = sub_255F57B30();
    if (!v19)
    {
      break;
    }

LABEL_6:
    v20 = 0;
    v195 = v9 & 0xC000000000000001;
    v201 = (v194[13].i64[1] + 8);
    v186 = (v194[12].i64[0] + 8);
    v190 = v9 & 0xFFFFFFFFFFFFFF8;
    v174 = v194[13].i64[1];
    v177 = v19;
    v181 = v9;
    while (1)
    {
      if (v195)
      {
        v23 = MEMORY[0x259C52F10](v20, v9);
      }

      else
      {
        if (v20 >= *(v190 + 16))
        {
          goto LABEL_35;
        }

        v23 = *(v9 + 8 * v20 + 32);
      }

      v24 = v23;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v198 = v20 + 1;
      v25 = *(v6 + 200);
      sub_255F575B0();
      v26 = [v24 startDate];
      if (!v26)
      {
        goto LABEL_148;
      }

      v27 = v26;
      v9 = *(v6 + 256);
      v28 = *(v6 + 264);
      v29 = *(v6 + 200);
      v30 = *(v6 + 208);
      v31 = *(v6 + 184);
      sub_255F57560();

      sub_255F57590();
      v32 = v30;
      v33 = *v201;
      (*v201)(v9, v32);
      (*v186)(v29, v31);
      if (v18[2] && (v34 = sub_255F52060(*(v6 + 264)), (v35 & 1) != 0))
      {
        v36 = *(v18[7] + 8 * v34);
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

      v205 = v37;
      v38 = v24;
      MEMORY[0x259C52E50]();
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_255F57A40();
      }

      v39 = *(v6 + 264);
      sub_255F57A60();
      v8 = v205;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v206[0] = v18;
      v41 = sub_255F52060(v39);
      v43 = v18[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_36;
      }

      v9 = v42;
      if (v18[3] < v46)
      {
        v47 = v194[16].i64[1];
        sub_255F5293C(v46, isUniquelyReferenced_nonNull_native, &qword_27F81A858, &qword_255F581D0);
        v18 = v206[0];
        v41 = sub_255F52060(v47);
        if ((v9 & 1) != (v48 & 1))
        {
          v26 = v194[13].i64[0];

          return MEMORY[0x2821FE290](v26);
        }

LABEL_25:
        if (v9)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v54 = v41;
      sub_255F5317C(&qword_27F81A858, &qword_255F581D0);
      v41 = v54;
      v18 = v206[0];
      if (v9)
      {
LABEL_7:
        v21 = v18[7];
        v22 = *(v21 + 8 * v41);
        *(v21 + 8 * v41) = v205;

        goto LABEL_8;
      }

LABEL_26:
      v49 = v194[16].i64[1];
      v50 = v194[13].i64[0];
      v18[(v41 >> 6) + 8] |= 1 << v41;
      v6 = v41;
      (*(v174 + 16))(v18[6] + *(v174 + 72) * v41, v49, v50);
      *(v18[7] + 8 * v6) = v205;
      v51 = v18[2];
      v45 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v45)
      {
        goto LABEL_37;
      }

      v18[2] = v52;
LABEL_8:

      v6 = v194;
      v33(v194[16].u64[1], v194[13].i64[0]);
      ++v20;
      v9 = v181;
      if (v198 == v177)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_40:
  v163 = v18;
  v55 = *(v6 + 32);
  v56 = *(v6 + 40);

  sub_255F57520();
  v58 = v57;
  v26 = sub_255F57520();
  v60 = (v58 - v59) / 86400.0;
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_143;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    return MEMORY[0x2821FE290](v26);
  }

  v61 = *(v6 + 208);
  v199 = *(v6 + 176);
  v63 = *(v6 + 144);
  v62 = *(v6 + 152);
  v64 = *(v6 + 128);
  v65 = *(v6 + 120);
  v178 = *(v6 + 136);
  v182 = *(v6 + 112);
  v66 = *(v6 + 96);
  v67 = *(v6 + 104);
  v196 = *(v6 + 40);
  v191 = *(v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
  v68 = *(sub_255F576A0() - 8);
  v202 = *(v68 + 72);
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_255F58070;
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  (*(v63 + 8))(v62, v178);
  v70 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  v183 = *(v182 + 8);
  v183(v65, v67);
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  v183(v65, v67);
  sub_255F57670();
  v160 = v70;
  sub_255F57660();
  sub_255F57650();
  v183(v65, v67);
  v194[1].i64[0] = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
  sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138);
  sub_255F57620();
  v26 = sub_255F4F788(v191, v196);
  v164 = v26;
  v159 = v26[2];
  if (v159)
  {
    v71 = 0;
    v72 = v194[13].i64[1];
    v161 = v26 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v162 = v72;
    v175 = (v72 + 32);
    v192 = (v72 + 8);
    v170 = v194[4].i64[1];
    v172 = v194[5].i64[0];
    v169 = v194[3].i64[0];
    do
    {
      if (v71 >= v164[2])
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v88 = v194[15].i64[0];
      v167 = *(v162 + 16);
      v167(v194[15].i64[1], &v161[*(v162 + 72) * v71], v194[13].i64[0]);
      sub_255F57570();
      v168 = v71;
      if (v163[2])
      {
        v89 = sub_255F52060(v194[15].i64[1]);
        v90 = MEMORY[0x277D84F90];
        if (v91)
        {
          v92 = *(v163[7] + 8 * v89);

          goto LABEL_52;
        }
      }

      else
      {
        v90 = MEMORY[0x277D84F90];
      }

      v92 = v90;
LABEL_52:
      v93 = swift_task_alloc();
      v93[1] = vextq_s8(v194[15], v194[15], 8uLL);
      v94 = sub_255F50EFC(sub_255F55688, v93, v92);

      v206[0] = v90;
      if (v94 >> 62)
      {
        v26 = sub_255F57B30();
        v95 = v26;
      }

      else
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v96 = 0x279817000uLL;
      if (v95)
      {
        v97 = 0;
        while (1)
        {
          if ((v94 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x259C52F10](v97, v94);
          }

          else
          {
            if (v97 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_133;
            }

            v26 = *(v94 + 8 * v97 + 32);
          }

          v98 = v26;
          v99 = (v97 + 1);
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if ([v26 *(v96 + 1176)] == 3 || (v100 = objc_msgSend(v98, sel_organizer)) == 0)
          {
          }

          else
          {

            sub_255F57AF0();
            v101 = *(v206[0] + 16);
            sub_255F57B10();
            sub_255F57B20();
            v26 = sub_255F57B00();
            v96 = 0x279817000;
          }

          ++v97;
          if (v99 == v95)
          {
            v102 = v206[0];
            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v102 = MEMORY[0x277D84F90];
LABEL_68:

      v103 = v102 < 0 || (v102 & 0x4000000000000000) != 0;
      if (v103)
      {
        v104 = sub_255F57B30();
      }

      else
      {
        v104 = *(v102 + 16);
      }

      v105 = MEMORY[0x277D84F90];
      v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v206[0] = v105;
      v166 = v26;
      if (v103)
      {
        v26 = sub_255F57B30();
        v106 = v26;
        v107 = 0x279817000uLL;
        if (v26)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v106 = *(v102 + 16);
        v107 = 0x279817000;
        if (v106)
        {
LABEL_75:
          v108 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x259C52F10](v108, v102);
            }

            else
            {
              if (v108 >= *(v102 + 16))
              {
                goto LABEL_135;
              }

              v26 = *(v102 + 8 * v108 + 32);
            }

            v109 = v26;
            v110 = (v108 + 1);
            if (__OFADD__(v108, 1))
            {
              goto LABEL_134;
            }

            v111 = [v26 *(v107 + 1184)];
            if (v111 && (v112 = v111, v113 = [v111 isCurrentUser], v112, (v113 & 1) != 0))
            {
              sub_255F57AF0();
              v114 = *(v206[0] + 16);
              sub_255F57B10();
              sub_255F57B20();
              v26 = sub_255F57B00();
            }

            else
            {
            }

            ++v108;
            if (v110 == v106)
            {
              v115 = v206[0];
              v116 = MEMORY[0x277D84F90];
              if ((v206[0] & 0x8000000000000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_126;
            }
          }
        }
      }

      v116 = MEMORY[0x277D84F90];
      v115 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_90:
        if ((v115 & 0x4000000000000000) == 0)
        {
          v117 = *(v115 + 16);
          goto LABEL_92;
        }
      }

LABEL_126:
      v117 = sub_255F57B30();
LABEL_92:

      v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v206[0] = v116;
      v165 = v26;
      if (v103)
      {
        v26 = sub_255F57B30();
        v118 = v26;
        if (v26)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v118 = *(v102 + 16);
        if (v118)
        {
LABEL_94:
          v119 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x259C52F10](v119, v102);
            }

            else
            {
              if (v119 >= *(v102 + 16))
              {
                goto LABEL_137;
              }

              v26 = *(v102 + 8 * v119 + 32);
            }

            v121 = v26;
            v122 = (v119 + 1);
            if (__OFADD__(v119, 1))
            {
              goto LABEL_136;
            }

            if ([v26 isAllDay])
            {
            }

            else
            {
              sub_255F57AF0();
              v120 = *(v206[0] + 16);
              sub_255F57B10();
              sub_255F57B20();
              v26 = sub_255F57B00();
            }

            ++v119;
            if (v122 == v118)
            {
              v123 = v206[0];
              v124 = MEMORY[0x277D84F90];
              goto LABEL_107;
            }
          }
        }
      }

      v124 = MEMORY[0x277D84F90];
      v123 = MEMORY[0x277D84F90];
LABEL_107:

      if (v123 < 0 || (v123 & 0x4000000000000000) != 0)
      {
        v125 = sub_255F57B30();
        v126 = v194;
        if (v125)
        {
LABEL_110:
          v206[0] = v124;
          v26 = sub_255F533F4(0, v125 & ~(v125 >> 63), 0);
          if (v125 < 0)
          {
            goto LABEL_142;
          }

          v127 = 0;
          v124 = v206[0];
          v188 = v123 & 0xC000000000000001;
          v179 = v125;
          v184 = v123;
          while (!__OFADD__(v127, 1))
          {
            if (v188)
            {
              v128 = MEMORY[0x259C52F10](v127, v123);
            }

            else
            {
              if (v127 >= *(v123 + 16))
              {
                goto LABEL_140;
              }

              v128 = *(v123 + 8 * v127 + 32);
            }

            v129 = v128;
            v26 = [v128 startDate];
            if (!v26)
            {
              goto LABEL_147;
            }

            v130 = v26;
            v203 = v127 + 1;
            v131 = v126[29];
            sub_255F57560();

            v26 = [v129 endDate];
            if (!v26)
            {
              goto LABEL_146;
            }

            v132 = v26;
            v134 = v126[28];
            v133 = v126[29];
            v135 = v126[26];
            sub_255F57560();

            sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
            LOBYTE(v132) = sub_255F579B0();

            if ((v132 & 1) == 0)
            {
              goto LABEL_139;
            }

            v136 = v126[28];
            v137 = v126[26];
            v138 = v126[11];
            v140 = v126[7];
            v139 = v126[8];
            v141 = *v175;
            (*v175)(v139, v126[29], v137);
            v141(v139 + *(v169 + 48), v136, v137);
            sub_255F556A8(v139, v140, &qword_27F81A740, &qword_255F580F0);
            v142 = *(v169 + 48);
            v141(v138, v140, v137);
            v143 = *v192;
            (*v192)(v140 + v142, v137);
            sub_255F55598(v139, v140, &qword_27F81A740, &qword_255F580F0);
            v141(v138 + *(v170 + 36), v140 + *(v169 + 48), v137);
            v143(v140, v137);
            v206[0] = v124;
            v145 = v124[2];
            v144 = v124[3];
            if (v145 >= v144 >> 1)
            {
              sub_255F533F4(v144 > 1, v145 + 1, 1);
              v124 = v206[0];
            }

            v126 = v194;
            v146 = v194[5].i64[1];
            v124[2] = v145 + 1;
            v26 = sub_255F55598(v146, v124 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v145, &qword_27F81A748, &qword_255F580F8);
            ++v127;
            v123 = v184;
            if (v203 == v179)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_138;
        }
      }

      else
      {
        v125 = *(v123 + 16);
        v126 = v194;
        if (v125)
        {
          goto LABEL_110;
        }
      }

LABEL_45:

      v73 = v126;
      v74 = v126[31];
      v75 = v73[30];
      v76 = v73[26];
      v77 = v73[22];
      sub_255F4FAF8(v124);
      v79 = v78;

      v80 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A848, &qword_255F581C0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_255F58070;
      *(v81 + 56) = v76;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v81 + 32));
      v167(boxed_opaque_existential_0, v74, v76);
      *(v81 + 64) = v166;
      *(v81 + 88) = v160;
      *(v81 + 96) = v165;
      *(v81 + 152) = v160;
      *(v81 + 120) = v160;
      *(v81 + 128) = v80;
      v83 = v166;
      v84 = v165;
      v85 = v80;
      sub_255F57610();

      v86 = *v192;
      (*v192)(v75, v76);
      v87 = v74;
      v71 = v168 + 1;
      v26 = (v86)(v87, v76);
    }

    while (v168 + 1 != v159);
  }

  v147 = v194[16].i64[1];
  v148 = v194[17].i64[0];
  v150 = v194[15].i64[1];
  v149 = v194[16].i64[0];
  v151 = v194[15].i64[0];
  v171 = v194[14].i64[1];
  v173 = v194[14].i64[0];
  v152 = v194[10].i64[1];
  v153 = v194[11].i64[0];
  v154 = v194[10].i64[0];
  v176 = v194[12].i64[1];
  v180 = v194[9].i64[1];
  v185 = v194[8].i64[0];
  v189 = v194[7].i64[1];
  v193 = v194[6].i64[0];
  v197 = v194[5].i64[1];
  v200 = v194[4].i64[0];
  v204 = v194[3].i64[1];
  v155 = v194[1].i64[1];

  (*(v152 + 32))(v155, v153, v154);

  v156 = v194->i64[1];

  return v156();
}

unint64_t sub_255F4C00C()
{
  result = qword_27F81A6E8;
  if (!qword_27F81A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A6E8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F4C0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[50] = v5;
  v6 = *(v5 - 8);
  v3[51] = v6;
  v7 = *(v6 + 64) + 15;
  v3[52] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[54] = v9;
  v10 = *(v9 - 8);
  v3[55] = v10;
  v11 = *(v10 + 64) + 15;
  v3[56] = swift_task_alloc();
  v12 = sub_255F57640();
  v3[57] = v12;
  v13 = *(v12 - 8);
  v3[58] = v13;
  v14 = *(v13 + 64) + 15;
  v3[59] = swift_task_alloc();
  v15 = sub_255F575D0();
  v3[60] = v15;
  v16 = *(v15 - 8);
  v3[61] = v16;
  v17 = *(v16 + 64) + 15;
  v3[62] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[63] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[66] = v20;
  v21 = *(v20 - 8);
  v3[67] = v21;
  v22 = *(v21 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A750, &qword_255F58100) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v24 = sub_255F57580();
  v3[73] = v24;
  v25 = *(v24 - 8);
  v3[74] = v25;
  v26 = *(v25 + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A758, &qword_255F58108) - 8) + 64) + 15;
  v3[79] = swift_task_alloc();
  v28 = sub_255F57940();
  v3[80] = v28;
  v29 = *(v28 - 8);
  v3[81] = v29;
  v30 = *(v29 + 64) + 15;
  v3[82] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A760, &qword_255F58110) - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v32 = sub_255F578A0();
  v3[84] = v32;
  v33 = *(v32 - 8);
  v3[85] = v33;
  v34 = *(v33 + 64) + 15;
  v3[86] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A768, &qword_255F58118);
  v3[87] = v35;
  v36 = *(v35 - 8);
  v3[88] = v36;
  v37 = *(v36 + 64) + 15;
  v3[89] = swift_task_alloc();
  v38 = sub_255F57910();
  v3[90] = v38;
  v39 = *(v38 - 8);
  v3[91] = v39;
  v40 = *(v39 + 64) + 15;
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F4C680, 0, 0);
}

uint64_t sub_255F4C680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A770, &qword_255F58120);
  v1 = sub_255F578E0();
  *(v0 + 744) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 752) = v3;
  v4 = *(v0 + 376);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 760) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A778, &qword_255F58128);
  *v6 = v0;
  v6[1] = sub_255F4C944;

  return MEMORY[0x2822008A0](v0 + 352, 0, 0, 0xD000000000000028, 0x8000000255F58790, sub_255F553A8, v3, v7);
}

uint64_t sub_255F4C944()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v7 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = sub_255F4E5EC;
  }

  else
  {
    v5 = *(v2 + 752);

    v4 = sub_255F4CA60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_255F4CA60()
{
  v349 = v0;
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[85];
  v4 = v0[81];
  v5 = v0[74];
  v289 = v0[67];
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[61];
  v9 = v0[44];
  v286 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A818, &qword_255F581A0, &qword_27F81A800, &qword_255F58198);
  v10 = v9;
  v11 = *(v9 + 16);
  v287 = (v5 + 8);
  v284 = (v5 + 16);
  v281 = v5;
  if (v11)
  {
    v271 = v7;
    v272 = v6;
    v12 = 0;
    v282 = 0;
    v283 = 0;
    v330 = (v2 + 8);
    v324 = (v4 + 48);
    v310 = (v4 + 32);
    v13 = (v5 + 48);
    v305 = (v5 + 32);
    v308 = (v4 + 8);
    v340 = v1;
    v317 = (v1 + 8);
    v280 = (v8 + 8);
    v270 = v11 - 1;
    v314 = v11;
    v320 = v10;
    while (1)
    {
      v14 = v12;
      v15 = v343;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_142;
        }

        v19 = v13;
        v20 = v15[89];
        v21 = v15[87];
        v22 = v15[86];
        v23 = v15[84];
        v24 = v15[83];
        v25 = (*(v340 + 16))(v15[92], v10 + ((*(v340 + 80) + 32) & ~*(v340 + 80)) + *(v340 + 72) * v14, v15[90]);
        MEMORY[0x259C52D40](v25);
        sub_255F578C0();
        (*v330)(v20, v21);
        sub_255F57890();
        (*(v3 + 8))(v22, v23);
        v26 = sub_255F57880();
        v10 = (*(*(v26 - 8) + 48))(v24, 1, v26);
        if (v10 == 1)
        {
          goto LABEL_162;
        }

        v10 = ActivityType.init(entityClass:)(v15[83], &v347);
        if (v347 == 34)
        {
          goto LABEL_163;
        }

        v13 = v19;
        v27 = v15[92];
        v28 = v15[80];
        v29 = v15[79];
        sub_255F578F0();
        v30 = (*v324)(v29, 1, v28);
        v31 = v15[79];
        if (v30 != 1)
        {
          break;
        }

        (*v317)(v15[92], v15[90]);
        v16 = v31;
        v17 = &unk_27F81A758;
        v18 = &unk_255F58108;
LABEL_5:
        sub_255F55620(v16, v17, v18);
LABEL_6:
        ++v14;
        v10 = v320;
        if (v314 == v14)
        {
          goto LABEL_50;
        }
      }

      v32 = v15[73];
      v33 = v15[72];
      (*v310)(v15[82], v15[79], v15[80]);
      sub_255F57930();
      v34 = *v19;
      if ((*v19)(v33, 1, v32) == 1)
      {
        v35 = v15[92];
        v36 = v15[90];
        v37 = v15[72];
        (*v308)(v15[82], v15[80]);
        (*v317)(v35, v36);
        v16 = v37;
        v17 = &qword_27F81A750;
        v18 = &qword_255F58100;
        goto LABEL_5;
      }

      v38 = v15[82];
      v39 = v15[78];
      v40 = v15[73];
      v41 = v15[72];
      v42 = v15[71];
      v43 = v15;
      v44 = *v305;
      (*v305)(v39, v41, v40);
      sub_255F57920();
      if (v34(v42, 1, v40) == 1)
      {
        v45 = v43[92];
        v46 = v43[90];
        v47 = v43[82];
        v48 = v43[80];
        v49 = v43[71];
        (*v287)(v43[78], v43[73]);
        (*v308)(v47, v48);
        (*v317)(v45, v46);
        sub_255F55620(v49, &qword_27F81A750, &qword_255F58100);
        v15 = v43;
        v13 = v19;
        goto LABEL_6;
      }

      v50 = v43[78];
      v44(v43[77], v43[71], v43[73]);
      sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
      v10 = sub_255F579B0();
      if ((v10 & 1) == 0)
      {
        goto LABEL_161;
      }

      v51 = v43[77];
      v52 = v43[73];
      v294 = v51;
      v300 = v43[70];
      v53 = v43[65];
      v54 = v43[64];
      v55 = *v284;
      (*v284)(v53, v43[78], v52);
      v273 = v55;
      v55(v53 + *(v271 + 48), v294, v52);
      sub_255F556A8(v53, v54, &qword_27F81A740, &qword_255F580F0);
      v295 = *(v271 + 48);
      v44(v300, v54, v52);
      v56 = *v287;
      (*v287)(v54 + v295, v52);
      sub_255F55598(v53, v54, &qword_27F81A740, &qword_255F580F0);
      v44(v300 + *(v272 + 36), v54 + *(v271 + 48), v52);
      v278 = v56;
      v56(v54, v52);
      v10 = sub_255F4EE30(v300);
      v277 = *(v10 + 16);
      if (v277)
      {
        break;
      }

      v58 = v343;
LABEL_47:
      v109 = v58;
      v12 = v14 + 1;
      v297 = v109[90];
      v302 = v109[92];
      v110 = v109[82];
      v111 = v109[80];
      v112 = v109[78];
      v113 = v109[77];
      v114 = v109[73];
      v115 = v109[70];

      sub_255F55620(v115, &qword_27F81A748, &qword_255F580F8);
      v278(v113, v114);
      v278(v112, v114);
      (*v308)(v110, v111);
      (*v317)(v302, v297);
      v10 = v320;
      v13 = v19;
      if (v270 == v14)
      {
        goto LABEL_50;
      }
    }

    v57 = 0;
    v274 = (*(v289 + 80) + 32) & ~*(v289 + 80);
    v276 = v10 + v274;
    v58 = v343;
    v275 = v10;
    while (1)
    {
      if (v57 >= *(v10 + 16))
      {
        goto LABEL_152;
      }

      v59 = v58[76];
      v60 = v58[69];
      v61 = v58[68];
      v62 = v58[62];
      v63 = v58[60];
      v291 = *(v289 + 72);
      v296 = v57;
      sub_255F556A8(v276 + v291 * v57, v60, &qword_27F81A748, &qword_255F580F8);
      sub_255F575B0();
      sub_255F57590();
      (*v280)(v62, v63);
      v301 = ActivityType.rawValue.getter();
      v65 = v64;
      sub_255F55598(v60, v61, &qword_27F81A748, &qword_255F580F8);
      sub_255F553B4(v283);
      v66 = v286;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v347 = v286;
      v69 = sub_255F52060(v59);
      v70 = v286[2];
      v71 = (v68 & 1) == 0;
      v10 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_153;
      }

      v72 = v68;
      if (v286[3] >= v10)
      {
        break;
      }

      v73 = v58[76];
      sub_255F5293C(v10, isUniquelyReferenced_nonNull_native, &qword_27F81A800, &qword_255F58198);
      v74 = v347;
      v75 = sub_255F52060(v73);
      if ((v72 & 1) != (v76 & 1))
      {
        v10 = v58[73];
        goto LABEL_131;
      }

      v69 = v75;
      v66 = v74;
      if ((v72 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_28:
      v286 = v66;
      v85 = v66[7];
      sub_255F553B4(v282);
      v86 = *(v85 + 8 * v69);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v347 = *(v85 + 8 * v69);
      v88 = v347;
      *(v85 + 8 * v69) = 0x8000000000000000;
      v90 = sub_255F51FE8(v301, v65);
      v91 = v88[2];
      v92 = (v89 & 1) == 0;
      v10 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_154;
      }

      v93 = v89;
      if (v88[3] >= v10)
      {
        if ((v87 & 1) == 0)
        {
          sub_255F5300C();
          v88 = v347;
        }
      }

      else
      {
        sub_255F52694(v10, v87);
        v88 = v347;
        v94 = sub_255F51FE8(v301, v65);
        if ((v93 & 1) != (v95 & 1))
        {
LABEL_130:
          v10 = MEMORY[0x277D837D0];
LABEL_131:

          return MEMORY[0x2821FE290](v10);
        }

        v90 = v94;
      }

      v96 = *(v85 + 8 * v69);
      *(v85 + 8 * v69) = v88;

      v97 = *(v85 + 8 * v69);
      if (v93)
      {
      }

      else
      {
        v97[(v90 >> 6) + 8] |= 1 << v90;
        v98 = (v97[6] + 16 * v90);
        *v98 = v301;
        v98[1] = v65;
        *(v97[7] + 8 * v90) = MEMORY[0x277D84F90];
        v99 = v97[2];
        v83 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v83)
        {
          goto LABEL_160;
        }

        v97[2] = v100;
      }

      v101 = v97[7];
      v102 = *(v101 + 8 * v90);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *(v101 + 8 * v90) = v102;
      if ((v103 & 1) == 0)
      {
        v102 = sub_255F51504(0, v102[2] + 1, 1, v102);
        *(v101 + 8 * v90) = v102;
      }

      v105 = v102[2];
      v104 = v102[3];
      if (v105 >= v104 >> 1)
      {
        v102 = sub_255F51504(v104 > 1, v105 + 1, 1, v102);
        *(v101 + 8 * v90) = v102;
      }

      v57 = v296 + 1;
      v58 = v343;
      v106 = *(v343 + 608);
      v107 = *(v343 + 584);
      v108 = *(v343 + 544);
      v102[2] = v105 + 1;
      sub_255F55598(v108, v102 + v274 + v105 * v291, &qword_27F81A748, &qword_255F580F8);
      v278(v106, v107);
      v282 = sub_255F55A20;
      v283 = sub_255F55A24;
      v10 = v275;
      if (v277 == v296 + 1)
      {
        goto LABEL_47;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v68)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_255F5317C(&qword_27F81A800, &qword_255F58198);
      v66 = v347;
      if (v72)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    v77 = v66;
    v78 = v58[76];
    v79 = v58[73];
    v80 = sub_255F54DA4(MEMORY[0x277D84F90]);
    v77[(v69 >> 6) + 8] |= 1 << v69;
    v81 = v78;
    v66 = v77;
    v10 = v273(v77[6] + *(v281 + 72) * v69, v81, v79);
    *(v77[7] + 8 * v69) = v80;
    v82 = v77[2];
    v83 = __OFADD__(v82, 1);
    v84 = v82 + 1;
    if (v83)
    {
      goto LABEL_159;
    }

    v77[2] = v84;
    goto LABEL_28;
  }

  v282 = 0;
  v283 = 0;
LABEL_50:

  v347 = MEMORY[0x277D84F90];
  sub_255F53414(0, 34, 0);
  v116 = 0;
  v117 = v347;
  do
  {
    v345 = byte_286806700[v116 + 32];
    v118 = ActivityType.rawValue.getter();
    v347 = v117;
    v121 = v117[2];
    v120 = v117[3];
    if (v121 >= v120 >> 1)
    {
      v123 = v118;
      v124 = v119;
      sub_255F53414((v120 > 1), v121 + 1, 1);
      v119 = v124;
      v118 = v123;
      v117 = v347;
    }

    ++v116;
    v117[2] = v121 + 1;
    v122 = &v117[2 * v121];
    v122[4] = v118;
    v122[5] = v119;
  }

  while (v116 != 34);
  v125 = *(v343 + 376);
  v126 = *(v343 + 384);
  sub_255F57520();
  v128 = v127;
  v10 = sub_255F57520();
  v130 = (v128 - v129) / 86400.0;
  if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_156;
  }

  if (v130 <= -9.22337204e18)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (v130 >= 9.22337204e18)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    return MEMORY[0x2821FE290](v10);
  }

  v131 = *(v343 + 584);
  v133 = *(v343 + 440);
  v132 = *(v343 + 448);
  v134 = *(v343 + 424);
  v335 = *(v343 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
  v135 = *(sub_255F576A0() - 8);
  v136 = *(v135 + 72);
  v137 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_255F58050;
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  (*(v133 + 8))(v132, v335);
  v10 = MEMORY[0x277D84F90];
  v346 = MEMORY[0x277D84F90];
  v318 = v117[2];
  if (!v318)
  {
    goto LABEL_62;
  }

  v279 = v138;
  v139 = 0;
  v292 = (*(v343 + 408) + 8);
  v140 = v117 + 5;
  do
  {
    if (v139 >= v117[2])
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v141 = *(v343 + 416);
    v142 = *(v343 + 392);
    ++v139;
    v143 = *(v140 - 1);
    v144 = *v140;
    v331 = *(v343 + 400);
    v336 = swift_allocObject();
    *(v336 + 16) = xmmword_255F58060;
    v347 = v143;
    v348 = v144;
    swift_bridgeObjectRetain_n();
    MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
    sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
    sub_255F57670();
    sub_255F57660();
    sub_255F57650();
    v321 = *v292;
    (*v292)(v141, v331);
    v347 = v143;
    v348 = v144;

    MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);
    sub_255F57670();
    sub_255F57660();
    sub_255F57650();
    v321(v141, v331);

    v10 = sub_255F52D18(v336);
    v140 += 2;
  }

  while (v318 != v139);
  v10 = v346;
  v138 = v279;
LABEL_62:
  v145 = v343;
  v146 = *(v343 + 472);
  v148 = *(v343 + 376);
  v147 = *(v343 + 384);
  v347 = v138;
  sub_255F52D18(v10);
  *(v343 + 360) = v347;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
  sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138);
  sub_255F57620();
  v10 = sub_255F4F788(v148, v147);
  v309 = v10;
  v303 = *(v10 + 16);
  if (!v303)
  {
    v255 = *(v343 + 744);
    goto LABEL_135;
  }

  v149 = 0;
  v150 = *(*(v343 + 592) + 80);
  v306 = v10 + ((v150 + 32) & ~v150);
  v151 = v117;
  v298 = v117 + 5;
  v341 = v117;
  while (2)
  {
    if (v149 >= *(v10 + 16))
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v155 = *(v145 + 600);
    v156 = *(v145 + 584);
    v157 = v145;
    v158 = *(v281 + 16);
    v158(v155, v306 + *(v281 + 72) * v149, v156);
    v311 = v149;
    if (v286[2] && (v159 = sub_255F52060(*(v157 + 600)), (v160 & 1) != 0))
    {
      v327 = *(v286[7] + 8 * v159);
    }

    else
    {
      v327 = 0;
    }

    v161 = *(v343 + 600);
    v162 = *(v343 + 584);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7A8, &qword_255F58140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255F58050;
    *(inited + 32) = 1702125924;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = v162;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    v158(boxed_opaque_existential_0, v161, v162);
    v165 = sub_255F54C74(inited);
    swift_setDeallocating();
    v10 = sub_255F55620(inited + 32, &qword_27F81A7B0, &qword_255F58148);
    if (v318)
    {
      v166 = 0;
      v167 = v298;
      v145 = v343;
      while (1)
      {
        if (v166 >= v151[2])
        {
          goto LABEL_143;
        }

        v332 = v167;
        v337 = v166;
        v170 = v145;
        v172 = *(v167 - 1);
        v171 = *v167;
        v347 = v172;
        v348 = v171;
        swift_bridgeObjectRetain_n();
        MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
        v174 = v347;
        v173 = v348;
        v175 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v176 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
        *(v170 + 120) = v176;
        *(v170 + 96) = v175;
        sub_255F55470((v170 + 96), (v170 + 128));
        v177 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v165;
        v10 = sub_255F51FE8(v174, v173);
        v179 = v165[2];
        v180 = (v178 & 1) == 0;
        v83 = __OFADD__(v179, v180);
        v181 = v179 + v180;
        if (v83)
        {
          goto LABEL_144;
        }

        v182 = v178;
        if (v165[3] < v181)
        {
          break;
        }

        if (v177)
        {
          goto LABEL_80;
        }

        v188 = v10;
        sub_255F52E68();
        v10 = v188;
        if (v182)
        {
LABEL_81:
          v184 = v10;

          v185 = v347;
          v186 = (v347[7] + 32 * v184);
          __swift_destroy_boxed_opaque_existential_0(v186);
          v187 = v343;
          sub_255F55470((v343 + 128), v186);
          goto LABEL_85;
        }

LABEL_83:
        v185 = v347;
        v347[(v10 >> 6) + 8] |= 1 << v10;
        v189 = (v185[6] + 16 * v10);
        *v189 = v174;
        v189[1] = v173;
        v10 = sub_255F55470((v343 + 128), (v185[7] + 32 * v10));
        v190 = v185[2];
        v83 = __OFADD__(v190, 1);
        v191 = v190 + 1;
        if (v83)
        {
          goto LABEL_146;
        }

        v185[2] = v191;
        v187 = v343;
LABEL_85:
        v347 = v172;
        v348 = v171;

        MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);

        v193 = v347;
        v192 = v348;
        v194 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v187 + 184) = v176;
        *(v187 + 160) = v194;
        sub_255F55470((v187 + 160), (v187 + 192));
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v185;
        v10 = sub_255F51FE8(v193, v192);
        v197 = v185[2];
        v198 = (v196 & 1) == 0;
        v83 = __OFADD__(v197, v198);
        v199 = v197 + v198;
        if (v83)
        {
          goto LABEL_145;
        }

        v200 = v196;
        v145 = v187;
        if (v185[3] < v199)
        {
          sub_255F523DC(v199, v195);
          v10 = sub_255F51FE8(v193, v192);
          if ((v200 & 1) != (v201 & 1))
          {
            goto LABEL_130;
          }

LABEL_90:
          if (v200)
          {
            goto LABEL_72;
          }

          goto LABEL_91;
        }

        if (v195)
        {
          goto LABEL_90;
        }

        v205 = v10;
        sub_255F52E68();
        v10 = v205;
        v145 = v343;
        if (v200)
        {
LABEL_72:
          v168 = v10;

          v165 = v347;
          v169 = (v347[7] + 32 * v168);
          __swift_destroy_boxed_opaque_existential_0(v169);
          v10 = sub_255F55470((v145 + 192), v169);
          goto LABEL_73;
        }

LABEL_91:
        v165 = v347;
        v347[(v10 >> 6) + 8] |= 1 << v10;
        v202 = (v165[6] + 16 * v10);
        *v202 = v193;
        v202[1] = v192;
        v10 = sub_255F55470((v145 + 192), (v165[7] + 32 * v10));
        v203 = v165[2];
        v83 = __OFADD__(v203, 1);
        v204 = v203 + 1;
        if (v83)
        {
          goto LABEL_147;
        }

        v165[2] = v204;
LABEL_73:
        v166 = v337 + 1;
        v167 = v332 + 2;
        if (v318 == v337 + 1)
        {
          goto LABEL_96;
        }
      }

      sub_255F523DC(v181, v177);
      v10 = sub_255F51FE8(v174, v173);
      if ((v182 & 1) != (v183 & 1))
      {
        goto LABEL_130;
      }

LABEL_80:
      if (v182)
      {
        goto LABEL_81;
      }

      goto LABEL_83;
    }

    v145 = v343;
LABEL_96:
    if (v327)
    {
      v206 = v327;
    }

    else
    {
      v206 = sub_255F54DA4(MEMORY[0x277D84F90]);
    }

    v207 = 0;
    v312 = v311 + 1;
    v328 = v206;
    v209 = *(v206 + 64);
    v10 = v206 + 64;
    v208 = v209;
    v210 = -1 << *(v10 - 32);
    if (-v210 < 64)
    {
      v211 = ~(-1 << -v210);
    }

    else
    {
      v211 = -1;
    }

    v212 = v211 & v208;
    v213 = (63 - v210) >> 6;
    v322 = v10;
    v315 = v213;
    while (2)
    {
      if (v212)
      {
        v216 = v207;
LABEL_110:
        v217 = __clz(__rbit64(v212)) | (v216 << 6);
        v218 = (*(v328 + 48) + 16 * v217);
        v219 = v218[1];
        v220 = *(*(v328 + 56) + 8 * v217);
        v325 = *v218;
        v347 = *v218;
        v348 = v219;
        swift_bridgeObjectRetain_n();

        MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
        v221 = v347;
        v222 = v348;
        v338 = v220;
        v223 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v333 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
        *(v343 + 248) = v333;
        *(v343 + 224) = v223;
        sub_255F55470((v343 + 224), (v343 + 256));
        v224 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v165;
        v225 = v221;
        v227 = sub_255F51FE8(v221, v222);
        v228 = v165[2];
        v229 = (v226 & 1) == 0;
        v10 = v228 + v229;
        if (__OFADD__(v228, v229))
        {
          goto LABEL_148;
        }

        v230 = v226;
        if (v165[3] >= v10)
        {
          if (v224)
          {
            if ((v226 & 1) == 0)
            {
              goto LABEL_114;
            }
          }

          else
          {
            sub_255F52E68();
            if ((v230 & 1) == 0)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          sub_255F523DC(v10, v224);
          v231 = sub_255F51FE8(v225, v222);
          if ((v230 & 1) != (v232 & 1))
          {
            goto LABEL_130;
          }

          v227 = v231;
          if ((v230 & 1) == 0)
          {
LABEL_114:
            v233 = v347;
            v347[(v227 >> 6) + 8] |= 1 << v227;
            v234 = (v233[6] + 16 * v227);
            *v234 = v225;
            v234[1] = v222;
            v10 = sub_255F55470((v343 + 256), (v233[7] + 32 * v227));
            v235 = v233[2];
            v83 = __OFADD__(v235, 1);
            v236 = v235 + 1;
            if (v83)
            {
              goto LABEL_150;
            }

            v233[2] = v236;
            v237 = v343;
            goto LABEL_119;
          }
        }

        v233 = v347;
        v238 = (v347[7] + 32 * v227);
        __swift_destroy_boxed_opaque_existential_0(v238);
        v237 = v343;
        sub_255F55470((v343 + 256), v238);
LABEL_119:
        v347 = v325;
        v348 = v219;

        MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);

        v240 = v347;
        v239 = v348;
        sub_255F4FAF8(v338);
        v242 = v241;

        v243 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v237 + 312) = v333;
        *(v237 + 288) = v243;
        sub_255F55470((v237 + 288), (v237 + 320));
        v244 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v233;
        v10 = sub_255F51FE8(v240, v239);
        v246 = v233[2];
        v247 = (v245 & 1) == 0;
        v83 = __OFADD__(v246, v247);
        v248 = v246 + v247;
        if (v83)
        {
          goto LABEL_149;
        }

        v249 = v245;
        v145 = v237;
        if (v233[3] >= v248)
        {
          if ((v244 & 1) == 0)
          {
            v254 = v10;
            sub_255F52E68();
            v10 = v254;
            v145 = v343;
          }
        }

        else
        {
          sub_255F523DC(v248, v244);
          v10 = sub_255F51FE8(v240, v239);
          if ((v249 & 1) != (v250 & 1))
          {
            goto LABEL_130;
          }
        }

        v212 &= v212 - 1;
        if (v249)
        {
          v214 = v10;

          v165 = v347;
          v215 = (v347[7] + 32 * v214);
          __swift_destroy_boxed_opaque_existential_0(v215);
          sub_255F55470((v145 + 320), v215);
        }

        else
        {
          v165 = v347;
          v347[(v10 >> 6) + 8] |= 1 << v10;
          v251 = (v165[6] + 16 * v10);
          *v251 = v240;
          v251[1] = v239;
          v10 = sub_255F55470((v145 + 320), (v165[7] + 32 * v10));
          v252 = v165[2];
          v83 = __OFADD__(v252, 1);
          v253 = v252 + 1;
          if (v83)
          {
            goto LABEL_151;
          }

          v165[2] = v253;
        }

        v207 = v216;
        v10 = v322;
        v213 = v315;
        continue;
      }

      break;
    }

    while (1)
    {
      v216 = v207 + 1;
      if (__OFADD__(v207, 1))
      {
        __break(1u);
        goto LABEL_141;
      }

      if (v216 >= v213)
      {
        break;
      }

      v212 = *(v10 + 8 * v216);
      ++v207;
      if (v212)
      {
        goto LABEL_110;
      }
    }

    v152 = *(v145 + 600);
    v153 = *(v145 + 584);
    v154 = *(v145 + 472);

    sub_255F5035C(v165);

    sub_255F57600();

    (*v287)(v152, v153);
    v149 = v312;
    v151 = v341;
    v10 = v309;
    if (v312 != v303)
    {
      continue;
    }

    break;
  }

  v269 = *(v145 + 744);
LABEL_135:

  v256 = *(v145 + 736);
  v257 = *(v145 + 712);
  v258 = *(v145 + 688);
  v259 = *(v145 + 664);
  v260 = *(v145 + 656);
  v285 = *(v145 + 632);
  v288 = *(v145 + 624);
  v290 = *(v145 + 616);
  v293 = *(v145 + 608);
  v299 = *(v145 + 600);
  v304 = *(v145 + 576);
  v307 = *(v145 + 568);
  v313 = *(v145 + 560);
  v316 = *(v145 + 552);
  v319 = *(v145 + 544);
  v323 = *(v145 + 520);
  v326 = *(v145 + 512);
  v329 = *(v145 + 496);
  v261 = v145;
  v264 = v145 + 464;
  v262 = *(v145 + 464);
  v263 = *(v264 + 8);
  v265 = v261[57];
  v334 = v261[56];
  v339 = v261[53];
  v342 = v261[52];
  v344 = v261[49];
  v266 = v261[46];

  (*(v262 + 32))(v266, v263, v265);

  sub_255F553B4(v283);
  sub_255F553B4(v282);

  v267 = v261[1];

  return v267();
}

uint64_t sub_255F4E5EC()
{
  v1 = v0[94];
  v2 = v0[93];

  v28 = v0[96];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[65];
  v21 = v0[64];
  v22 = v0[62];
  v23 = v0[59];
  v24 = v0[56];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[49];

  v13 = v0[1];

  return v13();
}

uint64_t sub_255F4E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v6 = *(*(v37 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A820, &qword_255F581A8);
  v11 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v33 - v12;
  v14 = sub_255F578B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277D84F90];
  (*(v15 + 104))(v18, *MEMORY[0x277D1F338], v14);
  v19 = sub_255F57580();
  sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
  v20 = a3;
  result = sub_255F579B0();
  if (result)
  {
    v34 = v15;
    v35 = v14;
    v22 = *(v19 - 8);
    v41 = v13;
    v33 = v18;
    v23 = v22;
    v24 = v36;
    v25 = *(v22 + 16);
    v25(v10, v20, v19);
    v26 = v37;
    v25(&v10[*(v37 + 48)], a4, v19);
    sub_255F556A8(v10, v24, &qword_27F81A740, &qword_255F580F0);
    v27 = *(v26 + 48);
    v28 = *(v23 + 32);
    v28(v41, v24, v19);
    v29 = *(v23 + 8);
    v29(v24 + v27, v19);
    sub_255F55598(v10, v24, &qword_27F81A740, &qword_255F580F0);
    v28(&v41[*(v38 + 36)], v24 + *(v26 + 48), v19);
    v30 = (v29)(v24, v19);
    v31 = v33;
    v32 = v41;
    MEMORY[0x28223BE20](v30);
    *(&v33 - 2) = &v43;
    sub_255F559D4(&qword_27F81A828, MEMORY[0x277D1F308]);
    sub_255F578D0();
    sub_255F55620(v32, &qword_27F81A820, &qword_255F581A8);
    (*(v34 + 8))(v31, v35);
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A830, &qword_255F581B0);
    return sub_255F57A80();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255F4EC68(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = sub_255F57910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_255F517F8(0, v10[2] + 1, 1, v10, &qword_27F81A838, &qword_255F581B8, MEMORY[0x277D1F3B8]);
    *a3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_255F517F8(v12 > 1, v13 + 1, 1, v10, &qword_27F81A838, &qword_255F581B8, MEMORY[0x277D1F3B8]);
    *a3 = v10;
  }

  v10[2] = v13 + 1;
  return (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9, v5);
}

void (*sub_255F4EE30(uint64_t a1))(char *, uint64_t)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v2 = *(*(v92 - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v91 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v90 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v82 - v10;
  v11 = sub_255F575D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255F57580();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v100 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v82 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v94 = &v82 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v82 - v30;
  v89 = v6;
  v32 = *(v17 + 16);
  v17 += 16;
  v32(&v82 - v30, a1 + *(v6 + 36), v16);
  v104 = v16;
  v86 = v32;
  v32(v29, a1, v16);
  v33 = (v12 + 8);
  v34 = (v17 - 8);
  v87 = v17;
  v101 = (v17 + 16);
  v35 = v15;
  v102 = MEMORY[0x277D84F90];
  v96 = v31;
  v88 = v29;
  v84 = v15;
  v85 = v11;
  for (i = v33; ; v33 = i)
  {
    sub_255F575B0();
    v36 = v94;
    sub_255F57590();
    v37 = *v33;
    (*v33)(v35, v11);
    sub_255F575B0();
    v38 = v95;
    sub_255F57590();
    v37(v35, v11);
    v39 = sub_255F57550();
    v40 = *v34;
    v41 = v38;
    v42 = v104;
    (*v34)(v41, v104);
    v103 = v40;
    v40(v36, v42);
    if ((v39 & 1) == 0)
    {
      break;
    }

    sub_255F575B0();
    sub_255F57590();
    v37(v35, v11);
    v37 = v100;
    sub_255F57570();
    sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
    v43 = sub_255F579B0();
    v44 = v102;
    if ((v43 & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v45 = v90;
    v46 = v104;
    v47 = v86;
    v86(v90, v29, v104);
    v48 = v92;
    v47(v45 + *(v92 + 48), v37, v46);
    v49 = v44;
    v50 = v34;
    v51 = v91;
    sub_255F556A8(v45, v91, &qword_27F81A740, &qword_255F580F0);
    v52 = *(v48 + 48);
    v53 = *v101;
    v54 = v98;
    (*v101)(v98, v51, v46);
    v55 = (v51 + v52);
    v56 = v103;
    v103(v55, v46);
    sub_255F55598(v45, v51, &qword_27F81A740, &qword_255F580F0);
    v57 = v54 + *(v89 + 36);
    v58 = v51 + *(v48 + 48);
    v97 = v53;
    v53(v57, v58, v46);
    v59 = v51;
    v34 = v50;
    v60 = v49;
    v56(v59, v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_255F51504(0, v49[2] + 1, 1, v49);
    }

    v62 = v60[2];
    v61 = v60[3];
    v29 = v88;
    v35 = v84;
    v11 = v85;
    v63 = v100;
    if (v62 >= v61 >> 1)
    {
      v60 = sub_255F51504(v61 > 1, v62 + 1, 1, v60);
    }

    v64 = v103;
    v65 = v104;
    v103(v99, v104);
    v64(v29, v65);
    v60[2] = v62 + 1;
    v66 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v102 = v60;
    sub_255F55598(v98, v60 + v66 + *(v93 + 72) * v62, &qword_27F81A748, &qword_255F580F8);
    v97(v29, v63, v65);
  }

  sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
  if ((sub_255F579B0() & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v67 = v90;
  v68 = v104;
  v69 = v86;
  v86(v90, v29, v104);
  v70 = v92;
  v69(v67 + *(v92 + 48), v96, v68);
  v71 = v91;
  sub_255F556A8(v67, v91, &qword_27F81A740, &qword_255F580F0);
  v72 = *(v70 + 48);
  v73 = *v101;
  v74 = v82;
  (*v101)(v82, v71, v68);
  v75 = v103;
  v103((v71 + v72), v68);
  sub_255F55598(v67, v71, &qword_27F81A740, &qword_255F580F0);
  v73(v74 + *(v89 + 36), v71 + *(v70 + 48), v68);
  v37 = v102;
  v75(v71, v68);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v37 = sub_255F51504(0, *(v37 + 2) + 1, 1, v37);
LABEL_11:
  v77 = *(v37 + 2);
  v76 = *(v37 + 3);
  v78 = v96;
  if (v77 >= v76 >> 1)
  {
    v37 = sub_255F51504(v76 > 1, v77 + 1, 1, v37);
  }

  v80 = v103;
  v79 = v104;
  (v103)();
  v80(v78, v79);
  *(v37 + 2) = v77 + 1;
  sub_255F55598(v82, v37 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v77, &qword_27F81A748, &qword_255F580F8);
  return v37;
}

unint64_t sub_255F4F748@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255F54DA4(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void *sub_255F4F788(uint64_t a1, uint64_t a2)
{
  v3 = sub_255F575D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255F57580();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  sub_255F575B0();
  sub_255F57590();
  (*(v4 + 8))(v7, v3);
  v28 = a2;
  if (sub_255F57550())
  {
    v27 = *(v9 + 16);
    v19 = MEMORY[0x277D84F90];
    v26[1] = v9 + 8;
    v26[0] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v27(v16, v18, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_255F517F8(0, v19[2] + 1, 1, v19, &qword_27F81A7F0, &qword_255F58188, MEMORY[0x277CC9578]);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_255F517F8(v20 > 1, v21 + 1, 1, v19, &qword_27F81A7F0, &qword_255F58188, MEMORY[0x277CC9578]);
      }

      v19[2] = v21 + 1;
      v22 = v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21;
      v23 = *(v9 + 32);
      v23(v22, v16, v8);
      sub_255F57570();
      v24 = *(v9 + 8);
      v24(v18, v8);
      v23(v18, v13, v8);
    }

    while ((sub_255F57550() & 1) != 0);
  }

  else
  {
    v24 = *(v9 + 8);
    v19 = MEMORY[0x277D84F90];
  }

  v24(v18, v8);
  return v19;
}

uint64_t sub_255F4FAF8(void *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v2 = *(*(v65 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v65);
  v61 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = v57 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v58 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = v57 - v11;
  MEMORY[0x28223BE20](v10);
  v73 = v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7D0, &qword_255F58168);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v59 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = v57 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v71 = v57 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v57 - v21;
  v75 = a1;

  sub_255F53730(&v75);
  v23 = v75;
  v24 = v75[2];
  if (!v24)
  {
  }

  v26 = *(v6 + 56);
  v25 = v6 + 56;
  v68 = v26;
  v26(v22, 1, 1, v74);
  v27 = (*(v25 + 24) + 32) & ~*(v25 + 24);
  v57[1] = v23;
  v28 = v23 + v27;
  v29 = (v25 - 8);
  v69 = v25;
  v30 = *(v25 + 16);
  v31 = 0.0;
  v63 = (v25 - 8);
  v67 = v30;
  do
  {
    sub_255F556A8(v28, v73, &qword_27F81A748, &qword_255F580F8);
    v32 = v71;
    sub_255F556A8(v22, v71, &qword_27F81A7D0, &qword_255F58168);
    v70 = *v29;
    if (v70(v32, 1, v74) == 1)
    {
      sub_255F55620(v22, &qword_27F81A7D0, &qword_255F58168);
      sub_255F55620(v32, &qword_27F81A7D0, &qword_255F58168);
      sub_255F55598(v73, v22, &qword_27F81A748, &qword_255F580F8);
      v68(v22, 0, 1, v74);
    }

    else
    {
      sub_255F55598(v32, v72, &qword_27F81A748, &qword_255F580F8);
      v33 = *(v74 + 36);
      if (sub_255F57540())
      {
        v34 = v72;
        sub_255F57520();
        v36 = v35;
        sub_255F57520();
        v38 = v37;
        sub_255F55620(v34, &qword_27F81A748, &qword_255F580F8);
        sub_255F55620(v22, &qword_27F81A7D0, &qword_255F58168);
        v31 = v31 + v36 - v38;
        sub_255F55598(v73, v22, &qword_27F81A748, &qword_255F580F8);
        v68(v22, 0, 1, v74);
        v30 = v67;
      }

      else
      {
        v39 = *(v74 + 36);
        if (sub_255F57540())
        {
          v40 = sub_255F57580();
          sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
          v41 = v73;
          v42 = sub_255F579B0();
          sub_255F55620(v22, &qword_27F81A7D0, &qword_255F58168);
          if ((v42 & 1) == 0)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v66 = *(v40 - 8);
          v43 = *(v66 + 16);
          v44 = v39;
          v45 = v41;
          v46 = v64;
          v43(v64, v72, v40);
          sub_255F55620(v72, &qword_27F81A748, &qword_255F580F8);
          v47 = v65;
          v43(v46 + *(v65 + 48), v45 + v44, v40);
          sub_255F55620(v45, &qword_27F81A748, &qword_255F580F8);
          v48 = v61;
          sub_255F556A8(v46, v61, &qword_27F81A740, &qword_255F580F0);
          v62 = *(v47 + 48);
          v49 = v66;
          v50 = *(v66 + 32);
          v51 = v60;
          v50(v60, v48, v40);
          v52 = *(v49 + 8);
          v66 = v49 + 8;
          v52(v48 + v62, v40);
          sub_255F55598(v64, v48, &qword_27F81A740, &qword_255F580F0);
          v50((v51 + *(v74 + 36)), v48 + *(v65 + 48), v40);
          v52(v48, v40);
          v68(v51, 0, 1, v74);
          sub_255F55598(v51, v22, &qword_27F81A7D0, &qword_255F58168);
          v29 = v63;
          v30 = v67;
        }

        else
        {
          sub_255F55620(v72, &qword_27F81A748, &qword_255F580F8);
          sub_255F55620(v73, &qword_27F81A748, &qword_255F580F8);
          v29 = v63;
          v30 = v67;
        }
      }
    }

    v28 += v30;
    --v24;
  }

  while (v24);

  v53 = v59;
  sub_255F556A8(v22, v59, &qword_27F81A7D0, &qword_255F58168);
  if (v70(v53, 1, v74) == 1)
  {
    sub_255F55620(v22, &qword_27F81A7D0, &qword_255F58168);
    return sub_255F55620(v53, &qword_27F81A7D0, &qword_255F58168);
  }

  else
  {
    v55 = v58;
    sub_255F55598(v53, v58, &qword_27F81A748, &qword_255F580F8);
    v56 = v55 + *(v74 + 36);
    sub_255F57520();
    sub_255F57520();
    sub_255F55620(v55, &qword_27F81A748, &qword_255F580F8);
    return sub_255F55620(v22, &qword_27F81A7D0, &qword_255F58168);
  }
}

unint64_t sub_255F5035C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7B8, &qword_255F58150);
    v2 = sub_255F57B60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_255F554CC(*(a1 + 56) + 32 * v14, v34);
        *&v33 = v16;
        *(&v33 + 1) = v17;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v18 = v33;
        sub_255F55470(v32, &v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C0, &qword_255F58158);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_255F51FE8(v18, *(&v18 + 1));
        if (v19)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v18;
          v11 = result;

          result = sub_255F55528(&v26, v2[7] + 32 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 32 * result);
          v21 = v27;
          *v20 = v26;
          v20[1] = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_255F505D0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_255F57530();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_255F55868;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255F50830;
  aBlock[3] = &block_descriptor_16;
  v12 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestVisitedSinceDate:v9 withHandler:v12];
  _Block_release(v12);
}

unint64_t sub_255F50794(unint64_t result)
{
  if (result)
  {
    if (result >> 62)
    {
      if (sub_255F57B30() < 1)
      {
        goto LABEL_6;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200);
      return sub_255F57A80();
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_255F50830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_255F558F4(0, &qword_27F81A898, 0x277D01170);
    v4 = sub_255F57A20();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_255F508D4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_255F55724;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255F50C90;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [a2 requestFullAccessToEventsWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_255F50A84(char a1, void *a2)
{
  if (qword_27F81A6C8 != -1)
  {
    swift_once();
  }

  v4 = sub_255F57970();
  __swift_project_value_buffer(v4, qword_27F81A8E0);
  v5 = sub_255F57950();
  v6 = sub_255F57A90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_255F46000, v5, v6, "EKStore request succeeded: %{BOOL}d", v7, 8u);
    MEMORY[0x259C533C0](v7, -1, -1);
  }

  MEMORY[0x259C532E0](a2);
  v8 = sub_255F57950();
  v9 = sub_255F57A90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a2)
    {
      MEMORY[0x259C532E0](a2);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&dword_255F46000, v8, v9, "EKStore request error: %@", v10, 0xCu);
    sub_255F55620(v11, &qword_27F81A6F8, &qword_255F580B8);
    MEMORY[0x259C533C0](v11, -1, -1);
    MEMORY[0x259C533C0](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0);
  return sub_255F57A80();
}

void sub_255F50C90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_255F50D08(void **a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = sub_255F57580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *a1;
  result = [v12 startDate];
  if (result)
  {
    v14 = result;
    sub_255F57560();

    sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578]);
    v15 = sub_255F579A0();
    v16 = *(v5 + 8);
    v16(v11, v4);
    if (v15)
    {
      v17 = 0;
      return (v17 & 1);
    }

    result = [v12 endDate];
    if (result)
    {
      v18 = result;
      sub_255F57560();

      v17 = sub_255F579A0() ^ 1;
      v16(v9, v4);
      return (v17 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255F50EFC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255F57B30())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x259C52F10](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_255F57AF0();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_255F57B10();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_255F57B20();
        sub_255F57B00();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t convertDateIntoNumericRepresentation(date:)(uint64_t a1)
{
  v27 = a1;
  v28 = sub_255F575D0();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F57510();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F575B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A700, &qword_255F580C0);
  v9 = sub_255F575C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_255F58080;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9968], v9);
  v15(v14 + v11, *MEMORY[0x277CC9998], v9);
  v15(v14 + 2 * v11, *MEMORY[0x277CC9988], v9);
  sub_255F55088(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_255F575A0();

  (*(v1 + 8))(v4, v28);
  result = sub_255F574F0();
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = 10000 * result;
  if ((result * 10000) >> 64 != (10000 * result) >> 63)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_255F57500();
  if (v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    goto LABEL_10;
  }

  v21 = __OFADD__(v18, v20);
  v22 = v18 + v20;
  if (v21)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_255F574E0();
  if (v23)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v24 = result;
  (*(v25 + 8))(v8, v26);
  result = v22 + v24;
  if (__OFADD__(v22, v24))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255F5141C()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F51490()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

void *sub_255F514E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

size_t sub_255F51504(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E0, &qword_255F58178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_255F516F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7D8, &qword_255F58170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_255F517F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_255F519D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255F51AA0(v11, 0, 0, 1, a1, a2);
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
    sub_255F554CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255F51AA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255F51BAC(a5, a6);
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
    result = sub_255F57AE0();
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

uint64_t sub_255F51BAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_255F51BF8(a1, a2);
  sub_255F51D28(&unk_2868066D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255F51BF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_255F51E14(v5, 0);
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

  result = sub_255F57AE0();
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
        v10 = sub_255F57A00();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255F51E14(v10, 0);
        result = sub_255F57AC0();
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

uint64_t sub_255F51D28(uint64_t result)
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

  result = sub_255F51E88(result, v12, 1, v3);
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

void *sub_255F51E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A850, &qword_255F581C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255F51E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A850, &qword_255F581C8);
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

unint64_t sub_255F51F7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_255F57BD0();
  MEMORY[0x259C53020](a1);
  v4 = sub_255F57BF0();

  return sub_255F520F8(a1, v4);
}

unint64_t sub_255F51FE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255F57BD0();
  sub_255F579E0();
  v6 = sub_255F57BF0();

  return sub_255F52164(a1, a2, v6);
}

unint64_t sub_255F52060(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_255F57580();
  sub_255F559D4(&qword_27F81A808, MEMORY[0x277CC9578]);
  v5 = sub_255F57980();

  return sub_255F5221C(a1, v5);
}

unint64_t sub_255F520F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_255F52164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255F57B90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255F5221C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_255F57580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_255F559D4(&qword_27F81A810, MEMORY[0x277CC9578]);
      v16 = sub_255F579C0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_255F523DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
  v36 = a2;
  result = sub_255F57B50();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_255F55470(v25, v37);
      }

      else
      {
        sub_255F554CC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_255F57BD0();
      sub_255F579E0();
      result = sub_255F57BF0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_255F55470(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_255F52694(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
  v38 = a2;
  result = sub_255F57B50();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_255F57BD0();
      sub_255F579E0();
      result = sub_255F57BF0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255F5293C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_255F57580();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_255F57B50();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_255F559D4(&qword_27F81A808, MEMORY[0x277CC9578]);
      result = sub_255F57980();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_255F52D18(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_255F517F8(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27F81A788, &qword_255F58130, MEMORY[0x277CE1950]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_255F576A0();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255F52E68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
  v2 = *v0;
  v3 = sub_255F57B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_255F554CC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_255F55470(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_255F5300C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
  v2 = *v0;
  v3 = sub_255F57B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_255F5317C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_255F57580();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_255F57B40();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

size_t sub_255F533F4(size_t a1, int64_t a2, char a3)
{
  result = sub_255F53434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F53414(char *a1, int64_t a2, char a3)
{
  result = sub_255F53624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_255F53434(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E0, &qword_255F58178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_255F53624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7F8, &qword_255F58190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_255F53730(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_255F54B4C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_255F537E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_255F537E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_255F57B70();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
        v6 = sub_255F57A50();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_255F53B78(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_255F53928(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_255F53928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_255F556A8(v23, v17, &qword_27F81A748, &qword_255F580F8);
      sub_255F556A8(v20, v13, &qword_27F81A748, &qword_255F580F8);
      v24 = sub_255F57550();
      sub_255F55620(v13, &qword_27F81A748, &qword_255F580F8);
      result = sub_255F55620(v17, &qword_27F81A748, &qword_255F580F8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_255F55598(v23, v35, &qword_27F81A748, &qword_255F580F8);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_255F55598(v25, v20, &qword_27F81A748, &qword_255F580F8);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_255F53B78(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v114 = *(v117 - 8);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x28223BE20](v117);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v119 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v118 = &v100 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_255F54A48(v4);
    }

    v95 = v6;
    v120 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v97 = result;
        v98 = *(result + 16 * (v4 - 1) + 40);
        sub_255F544B8(v96 + *(v114 + 72) * a3, v96 + *(v114 + 72) * *(result + 16 * (v4 - 1) + 32), v96 + *(v114 + 72) * v98, a4);
        if (v95)
        {
        }

        if (v98 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_255F54A48(v97);
        }

        if (v4 - 2 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v97[16 * v4];
        *v99 = a3;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_255F549BC(v4 - 1);
        result = v120;
        v4 = *(v120 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v105 = a3;
  while (1)
  {
    v21 = v19;
    v109 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v103 = v6;
      v22 = v19;
      v23 = *a3;
      v24 = *(v114 + 72);
      a4 = *a3 + v24 * (v19 + 1);
      v25 = v118;
      sub_255F556A8(a4, v118, &qword_27F81A748, &qword_255F580F8);
      v26 = v119;
      sub_255F556A8(v23 + v24 * v22, v119, &qword_27F81A748, &qword_255F580F8);
      LODWORD(v113) = sub_255F57550();
      sub_255F55620(v26, &qword_27F81A748, &qword_255F580F8);
      result = sub_255F55620(v25, &qword_27F81A748, &qword_255F580F8);
      v102 = v22;
      v4 = v22 + 2;
      v115 = v24;
      v27 = v23 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v28 = v118;
        sub_255F556A8(v27, v118, &qword_27F81A748, &qword_255F580F8);
        v29 = v119;
        sub_255F556A8(a4, v119, &qword_27F81A748, &qword_255F580F8);
        v30 = v18;
        v31 = sub_255F57550() & 1;
        sub_255F55620(v29, &qword_27F81A748, &qword_255F580F8);
        result = sub_255F55620(v28, &qword_27F81A748, &qword_255F580F8);
        ++v4;
        v27 += v115;
        a4 += v115;
        v32 = (v113 & 1) == v31;
        v18 = v30;
        if (!v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      a3 = v105;
      v21 = v102;
      v6 = v103;
      if (v113)
      {
        if (v18 < v102)
        {
          goto LABEL_127;
        }

        if (v102 < v18)
        {
          v4 = v115 * (v18 - 1);
          v33 = v18 * v115;
          v34 = v18;
          v35 = v18;
          v36 = v102;
          a4 = v102 * v115;
          do
          {
            if (v36 != --v35)
            {
              v37 = *v105;
              if (!*v105)
              {
                goto LABEL_133;
              }

              sub_255F55598(v37 + a4, v108, &qword_27F81A748, &qword_255F580F8);
              if (a4 < v4 || v37 + a4 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_255F55598(v108, v37 + v4, &qword_27F81A748, &qword_255F580F8);
            }

            ++v36;
            v4 -= v115;
            v33 -= v115;
            a4 += v115;
          }

          while (v36 < v35);
          v21 = v102;
          v6 = v103;
          a3 = v105;
          v18 = v34;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v101)
      {
        if (__OFADD__(v21, v101))
        {
          goto LABEL_128;
        }

        if (v21 + v101 >= v38)
        {
          v39 = *(a3 + 8);
        }

        else
        {
          v39 = v21 + v101;
        }

        if (v39 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v109;
    }

    else
    {
      result = sub_255F516F4(0, *(v109 + 2) + 1, 1, v109);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v40 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v40 >> 1)
    {
      result = sub_255F516F4((v40 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v41 = &v20[16 * v4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v20 + 4);
          v45 = *(v20 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_117;
          }

          v66 = &v20[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_121;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v20[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_116;
        }

        v73 = &v20[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_119;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v43 - 1;
        if (v43 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v81 = v20;
        a4 = *&v20[16 * v4 + 32];
        v82 = *&v20[16 * v43 + 40];
        sub_255F544B8(*a3 + *(v114 + 72) * a4, *a3 + *(v114 + 72) * *&v20[16 * v43 + 32], *a3 + *(v114 + 72) * v82, v42);
        if (v6)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = v81;
        }

        else
        {
          v83 = sub_255F54A48(v81);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_111;
        }

        v84 = &v83[16 * v4];
        *(v84 + 4) = a4;
        *(v84 + 5) = v82;
        v120 = v83;
        v4 = &v120;
        result = sub_255F549BC(v43);
        v20 = v120;
        a4 = *(v120 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v20[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_112;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_113;
      }

      v55 = &v20[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_115;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_118;
      }

      if (v59 >= v51)
      {
        v77 = &v20[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = *(a3 + 8);
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v102 = v21;
  v103 = v6;
  v85 = *a3;
  v86 = *(v114 + 72);
  v87 = *a3 + v86 * (v18 - 1);
  v88 = -v86;
  v89 = v21 - v18;
  v106 = v86;
  v107 = v39;
  v115 = v85;
  a4 = v85 + v18 * v86;
LABEL_86:
  v112 = v87;
  v113 = v18;
  v110 = a4;
  v111 = v89;
  v90 = v87;
  while (1)
  {
    v4 = v118;
    sub_255F556A8(a4, v118, &qword_27F81A748, &qword_255F580F8);
    v91 = v119;
    sub_255F556A8(v90, v119, &qword_27F81A748, &qword_255F580F8);
    v92 = sub_255F57550();
    sub_255F55620(v91, &qword_27F81A748, &qword_255F580F8);
    result = sub_255F55620(v4, &qword_27F81A748, &qword_255F580F8);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v18 = v113 + 1;
      v19 = v107;
      v87 = v112 + v106;
      v89 = v111 - 1;
      a4 = v110 + v106;
      if (v113 + 1 != v107)
      {
        goto LABEL_86;
      }

      v21 = v102;
      v6 = v103;
      a3 = v105;
      if (v107 < v102)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v115)
    {
      break;
    }

    v93 = v116;
    sub_255F55598(a4, v116, &qword_27F81A748, &qword_255F580F8);
    swift_arrayInitWithTakeFrontToBack();
    sub_255F55598(v93, v90, &qword_27F81A748, &qword_255F580F8);
    v90 += v88;
    a4 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_255F544B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_255F556A8(v31, v45, &qword_27F81A748, &qword_255F580F8);
          v33 = v28;
          v34 = v46;
          sub_255F556A8(v33, v46, &qword_27F81A748, &qword_255F580F8);
          v35 = sub_255F57550();
          sub_255F55620(v34, &qword_27F81A748, &qword_255F580F8);
          sub_255F55620(v32, &qword_27F81A748, &qword_255F580F8);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_255F556A8(a2, v45, &qword_27F81A748, &qword_255F580F8);
        v22 = v46;
        sub_255F556A8(a4, v46, &qword_27F81A748, &qword_255F580F8);
        v23 = sub_255F57550();
        sub_255F55620(v22, &qword_27F81A748, &qword_255F580F8);
        sub_255F55620(v21, &qword_27F81A748, &qword_255F580F8);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_255F54A5C(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_255F549BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255F54A48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_255F54A5C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_255F54B60(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A888, &qword_255F581F8);
  v3 = sub_255F57B60();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_255F51F7C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_255F51F7C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255F54C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
    v3 = sub_255F57B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_255F556A8(v4, &v13, &qword_27F81A7B0, &qword_255F58148);
      v5 = v13;
      v6 = v14;
      result = sub_255F51FE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255F55470(&v15, (v3[7] + 32 * result));
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

unint64_t sub_255F54DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
    v3 = sub_255F57B60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255F51FE8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_255F54EA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_255F57B60();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_255F556A8(v17, v13, a2, v28);
      result = sub_255F52060(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_255F57580();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

uint64_t sub_255F55088(uint64_t a1)
{
  v2 = sub_255F575C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A708, &qword_255F580C8);
    v10 = sub_255F57AB0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_255F559D4(&qword_27F81A710, MEMORY[0x277CC99D0]);
      v18 = sub_255F57980();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_255F559D4(&qword_27F81A718, MEMORY[0x277CC99D0]);
          v25 = sub_255F579C0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_255F553B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255F553C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_255F55470(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_255F554CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255F55528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C0, &qword_255F58158);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255F55598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F55620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255F556A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F55724(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0) - 8) + 80);

  return sub_255F50A84(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_255F55868(unint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200) - 8) + 80);

  return sub_255F50794(a1);
}

uint64_t sub_255F558F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for RTLocationOfInterestType()
{
  if (!qword_27F81A8A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F81A8A0);
    }
  }
}

uint64_t sub_255F559D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255F55A30()
{
  v0 = sub_255F57970();
  __swift_allocate_value_buffer(v0, qword_27F81A8E0);
  __swift_project_value_buffer(v0, qword_27F81A8E0);
  return sub_255F57960();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t DeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F55BB0()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F55C24()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

LighthouseQuartz::DeviceLockState __swiftcall getDeviceLockState()()
{
  v1 = v0;
  v2 = MKBGetDeviceLockState();
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 5;
      goto LABEL_13;
    }

    if (v2 == 2)
    {
      v3 = 4;
      goto LABEL_13;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    v3 = 3;
    goto LABEL_13;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

LABEL_13:
  *v1 = v3;
  return v2;
}

id sub_255F55D00(SEL *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255F55D64()
{
  result = qword_27F81A8B0;
  if (!qword_27F81A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceLockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceLockState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ActivityType.init(entityClass:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_255F57880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  (*(v5 + 16))(&v49 - v10, a1, v4);
  sub_255F577F0();
  sub_255F56A4C();
  v12 = sub_255F579C0();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    v14 = 0;
LABEL_51:
    v13(a1, v4);
    result = (v13)(v11, v4);
    goto LABEL_52;
  }

  sub_255F57710();
  v15 = sub_255F579C0();
  v13(v9, v4);
  if (v15)
  {
    v14 = 1;
    goto LABEL_51;
  }

  sub_255F57770();
  v16 = sub_255F579C0();
  v13(v9, v4);
  if (v16)
  {
    v14 = 2;
    goto LABEL_51;
  }

  sub_255F57770();
  v17 = sub_255F579C0();
  v13(v9, v4);
  if (v17)
  {
    v14 = 3;
    goto LABEL_51;
  }

  sub_255F577F0();
  v18 = sub_255F579C0();
  v13(v9, v4);
  if (v18)
  {
    v14 = 4;
    goto LABEL_51;
  }

  sub_255F57770();
  v19 = sub_255F579C0();
  v13(v9, v4);
  if (v19)
  {
    v14 = 5;
    goto LABEL_51;
  }

  sub_255F57740();
  v20 = sub_255F579C0();
  v13(v9, v4);
  if (v20)
  {
    v14 = 6;
    goto LABEL_51;
  }

  sub_255F57730();
  v21 = sub_255F579C0();
  v13(v9, v4);
  if (v21)
  {
    v14 = 7;
    goto LABEL_51;
  }

  sub_255F577B0();
  v22 = sub_255F579C0();
  v13(v9, v4);
  if (v22)
  {
    v14 = 8;
    goto LABEL_51;
  }

  sub_255F576F0();
  v23 = sub_255F579C0();
  v13(v9, v4);
  if (v23)
  {
    v14 = 9;
    goto LABEL_51;
  }

  sub_255F577D0();
  v24 = sub_255F579C0();
  v13(v9, v4);
  if (v24)
  {
    v14 = 10;
    goto LABEL_51;
  }

  sub_255F57860();
  v25 = sub_255F579C0();
  v13(v9, v4);
  if (v25)
  {
    v14 = 11;
    goto LABEL_51;
  }

  sub_255F57760();
  v26 = sub_255F579C0();
  v13(v9, v4);
  if (v26)
  {
    v14 = 12;
    goto LABEL_51;
  }

  sub_255F57750();
  v27 = sub_255F579C0();
  v13(v9, v4);
  if (v27)
  {
    v14 = 13;
    goto LABEL_51;
  }

  sub_255F57710();
  v28 = sub_255F579C0();
  v13(v9, v4);
  if (v28)
  {
    v14 = 14;
    goto LABEL_51;
  }

  sub_255F576D0();
  v29 = sub_255F579C0();
  v13(v9, v4);
  if (v29)
  {
    v14 = 15;
    goto LABEL_51;
  }

  sub_255F57810();
  v30 = sub_255F579C0();
  v13(v9, v4);
  if (v30)
  {
    v14 = 16;
    goto LABEL_51;
  }

  sub_255F57780();
  v31 = sub_255F579C0();
  v13(v9, v4);
  if (v31)
  {
    v14 = 17;
    goto LABEL_51;
  }

  sub_255F57820();
  v32 = sub_255F579C0();
  v13(v9, v4);
  if (v32)
  {
    v14 = 18;
    goto LABEL_51;
  }

  sub_255F57790();
  v33 = sub_255F579C0();
  v13(v9, v4);
  if (v33)
  {
    v14 = 19;
    goto LABEL_51;
  }

  sub_255F577C0();
  v34 = sub_255F579C0();
  v13(v9, v4);
  if (v34)
  {
    v14 = 20;
    goto LABEL_51;
  }

  sub_255F57720();
  v35 = sub_255F579C0();
  v13(v9, v4);
  if (v35)
  {
    v14 = 21;
    goto LABEL_51;
  }

  sub_255F57840();
  v36 = sub_255F579C0();
  v13(v9, v4);
  if (v36)
  {
    v14 = 22;
    goto LABEL_51;
  }

  sub_255F576E0();
  v37 = sub_255F579C0();
  v13(v9, v4);
  if (v37)
  {
    v14 = 23;
    goto LABEL_51;
  }

  sub_255F57830();
  v38 = sub_255F579C0();
  v13(v9, v4);
  if (v38)
  {
    v14 = 24;
    goto LABEL_51;
  }

  sub_255F577A0();
  v40 = sub_255F579C0();
  v13(v9, v4);
  if (v40)
  {
    v13(a1, v4);
    result = (v13)(v11, v4);
    v14 = 25;
  }

  else
  {
    sub_255F577E0();
    v41 = sub_255F579C0();
    v13(v9, v4);
    if (v41)
    {
      v13(a1, v4);
      result = (v13)(v11, v4);
      v14 = 26;
    }

    else
    {
      sub_255F57800();
      v42 = sub_255F579C0();
      v13(v9, v4);
      if (v42)
      {
        v13(a1, v4);
        result = (v13)(v11, v4);
        v14 = 27;
      }

      else
      {
        sub_255F57860();
        v43 = sub_255F579C0();
        v13(v9, v4);
        if (v43)
        {
          v13(a1, v4);
          result = (v13)(v11, v4);
          v14 = 28;
        }

        else
        {
          sub_255F577C0();
          v44 = sub_255F579C0();
          v13(v9, v4);
          if (v44)
          {
            v13(a1, v4);
            result = (v13)(v11, v4);
            v14 = 29;
          }

          else
          {
            sub_255F57700();
            v45 = sub_255F579C0();
            v13(v9, v4);
            if (v45)
            {
              v13(a1, v4);
              result = (v13)(v11, v4);
              v14 = 30;
            }

            else
            {
              sub_255F57870();
              v46 = sub_255F579C0();
              v13(v9, v4);
              if (v46)
              {
                v13(a1, v4);
                result = (v13)(v11, v4);
                v14 = 31;
              }

              else
              {
                sub_255F576C0();
                v47 = sub_255F579C0();
                v13(v9, v4);
                if (v47)
                {
                  v13(a1, v4);
                  result = (v13)(v11, v4);
                  v14 = 32;
                }

                else
                {
                  sub_255F57850();
                  v48 = sub_255F579C0();
                  v13(a1, v4);
                  v13(v9, v4);
                  result = (v13)(v11, v4);
                  if (v48)
                  {
                    v14 = 33;
                  }

                  else
                  {
                    v14 = 34;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  *a2 = v14;
  return result;
}

unint64_t sub_255F56A4C()
{
  result = qword_27F81A8B8;
  if (!qword_27F81A8B8)
  {
    sub_255F57880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8B8);
  }

  return result;
}

uint64_t ActivityType.rawValue.getter()
{
  result = 0x676E696B726F77;
  switch(*v0)
  {
    case 1:
    case 0xB:
      return 0xD00000000000001DLL;
    case 2:
      return 0xD000000000000015;
    case 3:
    case 5:
      return 0xD00000000000001ALL;
    case 4:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 0xA:
      return 0xD000000000000011;
    case 0xC:
      return 0xD00000000000001FLL;
    case 0xD:
      return result;
    case 0xE:
      v2 = 1952802157;
      return v2 | 0x676E6900000000;
    case 0xF:
      return 0x676E69746165;
    case 0x10:
      return 0x676E696863746177;
    case 0x11:
      v3 = 1886349427;
      return v3 | 0x676E697000000000;
    case 0x12:
      return 0x6E6C7566646E696DLL;
    case 0x13:
      v3 = 1701145715;
      return v3 | 0x676E697000000000;
    case 0x14:
      v4 = 0x6C6576617274;
      goto LABEL_28;
    case 0x15:
      v2 = 1684104562;
      return v2 | 0x676E6900000000;
    case 0x16:
      return 0x6E6F697461636176;
    case 0x17:
      return 0x676E696D6167;
    case 0x18:
      return 0x7A696C6169636F73;
    case 0x19:
      return 0x7055676E696B6177;
    case 0x1A:
      return 0x656D6974646562;
    case 0x1B:
      return 0x616E6F6974617473;
    case 0x1C:
      return 0x746867696C66;
    case 0x1D:
      return 1885958772;
    case 0x1E:
      v4 = 0x74756D6D6F63;
LABEL_28:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 0x1F:
      result = 0x6E69646E65747461;
      break;
    case 0x20:
      result = 0x754F676E696E6964;
      break;
    case 0x21:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

LighthouseQuartz::ActivityType_optional __swiftcall ActivityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F57BA0();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_255F570C0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ActivityType.rawValue.getter();
  v4 = v3;
  if (v2 == ActivityType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255F57B90();
  }

  return v7 & 1;
}

unint64_t sub_255F57160()
{
  result = qword_27F81A8C0;
  if (!qword_27F81A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8C0);
  }

  return result;
}

uint64_t sub_255F571B4()
{
  v1 = *v0;
  sub_255F57BD0();
  ActivityType.rawValue.getter();
  sub_255F579E0();

  return sub_255F57BF0();
}

uint64_t sub_255F5721C()
{
  v2 = *v0;
  ActivityType.rawValue.getter();
  sub_255F579E0();
}

uint64_t sub_255F57280()
{
  v1 = *v0;
  sub_255F57BD0();
  ActivityType.rawValue.getter();
  sub_255F579E0();

  return sub_255F57BF0();
}

uint64_t sub_255F572F0@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_255F5731C()
{
  result = qword_27F81A8C8;
  if (!qword_27F81A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81A8D0, &qword_255F58420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}